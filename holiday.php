<?php
declare(strict_types=1);
namespace MRBS;

use MRBS\Form\ElementButton;
use MRBS\Form\ElementFieldset;
use MRBS\Form\ElementImg;
use MRBS\Form\ElementInputImage;
use MRBS\Form\ElementInputSubmit;
use MRBS\Form\FieldInputEmail;
use MRBS\Form\FieldInputNumber;
use MRBS\Form\FieldInputText;
use MRBS\Form\FieldInputSubmit;
use MRBS\Form\FieldSelect;
use MRBS\FieldInputDate;
use MRBS\Form\Form;

require "defaultincludes.inc";

// Ensure only admin users can access
checkAuthorised(this_page());
if (!is_admin()) {
    showAccessDenied();
}

// CSRF token check
Form::checkToken(true);

// Form for adding new holidays
function generate_holiday_form() : void
{
    $form = new Form(Form::METHOD_POST);

    $attributes = array('id' => 'add_holiday', 'class' => 'form_admin standard', 'action' => multisite('holiday.php'));
    $form->setAttributes($attributes);

    $fieldset = new ElementFieldset();
    $fieldset->addLegend(get_vocab('add_holiday'));

    // Holiday date field with type="date"
    $field = new FieldInputText();
    $field->setLabel(get_vocab('holiday_date'))
          ->setControlAttributes(array('id' => 'holiday_date', 'name' => 'holiday_date', 'type' => 'date', 'required' => true));
    $fieldset->addElement($field);

    // Description field
    $field = new FieldInputText();
    $field->setLabel(get_vocab('description'))
          ->setControlAttributes(array('id' => 'description', 'name' => 'description', 'maxlength' => 255));
    $fieldset->addElement($field);

    // Submit button
    $field = new FieldInputSubmit();
    $field->setControlAttributes(array('value' => get_vocab('add_holiday'), 'class' => 'submit'));
    $fieldset->addElement($field);

    $form->addElement($fieldset);
    $form->render();

}

// Form for deleting holidays
function generate_holiday_delete_form(int $holiday_id) : void
{
    $form = new Form(Form::METHOD_POST);

    $attributes = array('action' => multisite('holiday.php'));
    $form->setAttributes($attributes);

    // Hidden input for holiday ID
    $form->addHiddenInput('delete_holiday_id', $holiday_id);

    // Delete button
    $element = new ElementInputImage();
	$element->setAttributes(array('class'  => 'button',
								  'src'    => 'images/delete.png',
								  'width'  => '16',
								  'height' => '16',
								  'title'  => get_vocab('delete_holiday'),
								  'alt'    => get_vocab('delete_holiday')));
    $form->addElement($element);

    $form->render();
}

// Handle form submissions for adding or deleting holidays
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['holiday_date']) && isset($_POST['description'])) {
        $date = $_POST['holiday_date'];
        $description = $_POST['description'];

		$query = "INSERT INTO mrbs_holidays (holiday_date, description) VALUES (?, ?)";
		db()->query($query, array($date, $description));
    }
    elseif (isset($_POST['delete_holiday_id'])) {
        $holiday_id = (int)$_POST['delete_holiday_id'];
        db()->query("DELETE FROM mrbs_holidays WHERE id = ?", array($holiday_id));
    }
}

// Page context for header and footer
$context = array();
print_header($context);

echo "<h2>" . get_vocab("holiday_management") . "</h2>\n";

// Holiday form section
echo "<div id=\"holiday_form\">\n"; //orig = holiday_form
generate_holiday_form();
echo "</div>\n";

echo "<h2>" . get_vocab("existing_holidays") . "</h2>\n";
// Display the existing holidays in a table
echo "<div id=\"holiday_table\">\n";
echo "<table class=\"admin_table display\">\n";
echo "<thead>\n<tr>\n";
echo "<th>" . get_vocab("holiday_date") . "</th>\n";
echo "<th>" . get_vocab("description") . "</th>\n";
echo "<th>&nbsp;</th>\n";  // For delete button
echo "</tr>\n</thead>\n<tbody>\n";

// Fetch and display holidays from the database
$holidays = db()->query("SELECT id, holiday_date, description FROM mrbs_holidays ORDER BY holiday_date");
while ($row = $holidays->next_row_keyed()) {
    echo "<tr>\n";
    echo "<td>" . htmlspecialchars($row['holiday_date']) . "</td>\n";
    echo "<td>" . htmlspecialchars($row['description']) . "</td>\n";
    echo "<td>\n<div>\n";
    generate_holiday_delete_form($row['id']);  // Delete button for each holiday
    echo "</div>\n</td>\n";
    echo "</tr>\n";
}

echo "</tbody>\n</table>\n";
echo "</div>\n";

print_footer();
