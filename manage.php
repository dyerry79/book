<?php
namespace MRBS;

use MRBS\Form\ElementInputSubmit;
use MRBS\Form\Form;

require "defaultincludes.inc";

function display_buttons($row, $is_series, $status)
{
  $target_id = ($is_series) ? $row['repeat_id'] : $row['id'];
  $returl = multisite(this_page());

  // Determine if buttons should be disabled
  $is_disabled = strtolower($status) === 'completed';

  echo "<div style='display: flex; gap: 5px; justify-content: center;'>\n";

  // Start button
  $form = new Form(Form::METHOD_POST);
  $form->setAttributes(['action' => multisite('manage_entry_handler.php')]);
  $form->addHiddenInputs([
      'action' => 'start',
      'id'     => $target_id,
      'returl' => $returl
  ]);
  $start_button = new ElementInputSubmit();
  $start_button->setAttribute('value', 'Start');
  if ($is_disabled) {
      $start_button->setAttribute('disabled', 'disabled');  // Disable button if status is completed
  }
  $form->addElement($start_button);
  $form->render();

  // End button
  $form = new Form(Form::METHOD_POST);
  $form->setAttributes(['action' => multisite('manage_entry_handler.php')]);
  $form->addHiddenInputs([
      'action' => 'end',
      'id'     => $target_id,
      'returl' => $returl
  ]);
  $end_button = new ElementInputSubmit();
  $end_button->setAttribute('value', 'End');
  if ($is_disabled) {
      $end_button->setAttribute('disabled', 'disabled');  // Disable button if status is completed
  }
  $form->addElement($end_button);
  $form->render();
}

function display_table_head()
{
  echo "<thead>\n";
  echo "<tr>\n";
  // Columns with data type attributes for sorting
  echo "<th class=\"control\">&nbsp;</th>\n";
  echo "<th class=\"header_name\">" . get_vocab("entry") . "</th>\n";
  echo "<th class=\"header_create\">" . get_vocab("createdby") . "</th>\n";
  echo "<th class=\"header_area\">" . get_vocab("area") . "</th>\n";
  echo "<th class=\"header_room\">" . get_vocab("room") . "</th>\n";
  echo "<th class=\"header_start_time\"><span class=\"normal\" data-type=\"title-numeric\">" . get_vocab("start_date") . "</span></th>\n";
  echo "<th class=\"header_actual_start\">" . get_vocab("actual_start") . "</th>\n";
  echo "<th class=\"header_actual_end\">" . get_vocab("actual_end") . "</th>\n";
  echo "<th class=\"header_status\">" . get_vocab("status") . "</th>\n";
  echo "<th class=\"header_action\">" . get_vocab("action") . "</th>\n";
  echo "</tr>\n";
  echo "</thead>\n";
}

function display_entry_row(array $row)
{
  global $view;

  echo "<tr>\n";
  echo "<td>&nbsp;</td>\n";
  echo "<td>" . htmlspecialchars($row['name']) . "</td>\n";
  echo "<td>" . htmlspecialchars(auth()->getDisplayName($row['create_by'])) . "</td>\n";
  echo "<td>" . htmlspecialchars($row['area_name']) . "</td>\n";
  echo "<td>" . htmlspecialchars($row['room_name']) . "</td>\n";

  // Start time with a link to the calendar view
  $link = getdate($row['start_time']);
  echo "<td>";
  echo "<span title=\"" . $row['start_time'] . "\"></span>";

  $query = http_build_query([
    'view' => $view,
    'year' => $link['year'],
    'month' => $link['mon'],
    'day' => $link['mday'],
    'area' => $row['area_id'],
    'room' => $row['room_id']
  ]);

  echo '<a href="' . htmlspecialchars(multisite("index.php?$query")) . '">';
  echo htmlspecialchars(empty($row['enable_periods']) ? time_date_string($row['start_time']) : period_date_string($row['start_time'], $row['area_id'])[1]);
  echo "</a></td>";

  // Format for actual_start and actual_end similar to start time
  echo "<td>" . ($row['actual_start'] ? time_date_string(strtotime($row['actual_start'])) : "-") . "</td>\n";
  echo "<td>" . ($row['actual_end'] ? time_date_string(strtotime($row['actual_end'])) : "-") . "</td>\n";

  // Conditional styling for actual_status
  $status = $row['actual_status'] ?? "WAITING";

  $status_class = '';
  switch (strtolower($status)) {
    case 'completed':
      $status_class = 'green';
      break;
    case 'waiting':
      $status_class = 'red';
      break;
    case 'ongoing':
      $status_class = 'orange';
      break;
  }

  echo "<td><strong class=\"$status_class\">" . htmlspecialchars($status) . "</strong></td>\n";

  // Action buttons
  echo "<td>\n";
  //display_buttons($row, false);
  display_buttons($row, false, $row['actual_status']);
  echo "</td>\n";

  echo "</tr>\n";
}

checkAuthorised(this_page());

$mrbs_user = session()->getCurrentUser();
$mrbs_username = $mrbs_user->username ?? null;

$context = [
    'view' => $view,
    'view_all' => $view_all,
    'year' => $year,
    'month' => $month,
    'day' => $day,
    'area' => $area,
    'room' => $room ?? null
];

print_header($context);
?>
<!--
<script src="jquery/datatables/datatables.min.js"></script>
<script src="jquery/datatables/plugins.js"></script>
<script src="js/datatables.js.php?area=1"></script>
<script src="js/manage.js.php?area=1"></script> -->

<?php
echo "<h1>" . get_vocab("manage_bookings") . "</h1>\n";

$sql_approval_enabled = some_area_predicate('approval_enabled');

// Convert timestamp to Unix timestamp
$timestamp_unix = db()->syntax_timestamp_to_unix("E.timestamp");

$sql = "SELECT E.id, E.name, E.room_id, E.start_time, E.create_by, " .
       db()->syntax_timestamp_to_unix("E.timestamp") . " AS last_updated,
       E.reminded, E.repeat_id,
       M.room_name, M.area_id, A.area_name, A.enable_periods,
       E.actual_start, E.actual_end, E.actual_status
    FROM " . _tbl('room') . " AS M, " . _tbl('area') . " AS A, " . _tbl('entry') . " AS E
    LEFT JOIN " . _tbl('repeat') . " AS T ON E.repeat_id=T.id
    WHERE E.room_id = M.id
      AND M.area_id = A.id
      AND M.disabled = 0
      AND A.disabled = 0
      AND $sql_approval_enabled
	  AND (E.status = 1)
    ORDER BY repeat_id, start_time";

$res = db()->query($sql);
$rows = [];

while (false !== ($row = $res->next_row_keyed())) {
  if ((strcasecmp_locale($row['create_by'], $mrbs_username) === 0) || is_book_admin($row['room_id'])) {
    $rows[] = $row;
  }
}

if (count($rows) == 0) {
  echo "<p>" . get_vocab("none_outstanding") . "</p>\n";
} else {
  echo "<div id=\"manage_list\" class=\"datatable_container\">\n";
  echo "<table id=\"manage_table\" class=\"admin_table display\">\n";
  display_table_head();

  echo "<tbody>\n";
  $last_repeat_id = null;
  $is_series = false;
  foreach ($rows as $row) {
    if ($row['repeat_id'] != $last_repeat_id) {
      $last_repeat_id = $row['repeat_id'];
      if ($is_series) {
        $is_series = false;
        echo "</tbody></table></div></td></tr>\n";
      }

      if (!empty($row['repeat_id'])) {
        $is_series = true;
        display_series_title_row($row);
        echo "<tr class=\"sub_table\">\n";
        echo "<td class=\"sub_table\" colspan=\"10\">";
        $table_id = "subtable_" . $row['repeat_id'];
        echo "<div class=\"details\">\n";
        echo "<table id=\"$table_id\" class=\"admin_table display sub\">\n";
        display_subtable_head($row);
        echo "<tbody>\n";
      }
    }
    display_entry_row($row);
  }
  if ($is_series) {
    echo "</tbody></table></div></td></tr>\n";
  }
  echo "</tbody>\n";
  echo "</table>\n";
  echo "</div>\n";
}

print_footer();
