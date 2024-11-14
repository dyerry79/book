<?php
declare(strict_types=1);
namespace MRBS;

use MRBS\Form\ElementButton;
use MRBS\Form\ElementFieldset;
use MRBS\Form\ElementImg;
use MRBS\Form\ElementInputImage;
use MRBS\Form\ElementInputSubmit;
use MRBS\Form\FieldInputText;
use MRBS\Form\FieldInputSubmit;
use MRBS\Form\Form;

require "defaultincludes.inc";

// Ensure only admin users can access
checkAuthorised(this_page());
if (!is_admin()) {
    showAccessDenied();
}

// CSRF token check
Form::checkToken(true);

// Define success and error messages
$success_message = '';
$error_message = '';

if (isset($_GET['success'])) {
    switch ($_GET['success']) {
        case 'added':
            $success_message = "Holiday successfully added.";
            break;
        case 'updated':
            $success_message = "Holiday successfully updated.";
            break;
        case 'deleted':
            $success_message = "Holiday successfully deleted.";
            break;
    }
}

// Form for adding or editing holidays
function generate_holiday_form(?string $edit_date = null, ?string $edit_description = null, ?int $edit_id = null) : void
{
    $form = new Form(Form::METHOD_POST);

    $attributes = array('id' => 'add_holiday', 'class' => 'form_admin standard', 'action' => multisite('holiday.php'));
    $form->setAttributes($attributes);

    $fieldset = new ElementFieldset();
    
    // Dynamic legend based on add or edit mode
    $legend_text = ($edit_id !== null) ? get_vocab('update_holiday') : get_vocab('add_holiday');
    $fieldset->addLegend($legend_text);

    // Hidden field to pass edit_holiday_id if we are editing
    if ($edit_id !== null) {
        $form->addHiddenInput('edit_holiday_id', $edit_id);
    }

    // Holiday date field with type="date"
    $field = new FieldInputText();
    $field->setLabel(get_vocab('holiday_date'))
          ->setControlAttributes(array(
              'id' => 'holiday_date',
              'name' => 'holiday_date',
              'type' => 'date',
              'value' => $edit_date ?? '',  // Set value if editing
              'required' => true
          ));
    $fieldset->addElement($field);

    // Description field
    $field = new FieldInputText();
    $field->setLabel(get_vocab('description'))
          ->setControlAttributes(array(
              'id' => 'description',
              'name' => 'description',
              'maxlength' => 255,
              'value' => $edit_description ?? ''  // Set value if editing
          ));
    $fieldset->addElement($field);

    // Submit button label changes based on whether we are adding or editing
    $submit_label = ($edit_id !== null) ? get_vocab('update_holiday') : get_vocab('add_holiday');
    $field = new FieldInputSubmit();
    $field->setControlAttributes(array('value' => $submit_label, 'class' => 'submit'));
    $fieldset->addElement($field);

    $form->addElement($fieldset);
    $form->render();
}

// Form for deleting holidays with confirmation prompt
function generate_holiday_delete_form(int $holiday_id) : void
{
    $form = new Form(Form::METHOD_POST);

    // Unique form ID for the deletion form
    $attributes = array('id' => 'delete_form_' . $holiday_id, 'action' => multisite('holiday.php'), 'class' => 'inline-form');
    $form->setAttributes($attributes);

    // Hidden input for holiday ID
    $form->addHiddenInput('delete_holiday_id', $holiday_id);

    // Delete button with onclick confirmation
    $element = new ElementInputImage();
    $element->setAttributes(array(
        'class'  => 'button',
        'src'    => 'images/delete.png',
        'width'  => '16',
        'height' => '16',
        'title'  => get_vocab('delete_holiday'),
        'alt'    => get_vocab('delete_holiday'),
        'onclick' => "event.preventDefault(); confirmDeletion($holiday_id);"
    ));
    $form->addElement($element);

    $form->render();
}

// Form for editing holidays
function generate_holiday_edit_form(int $holiday_id) : void
{
    $form = new Form(Form::METHOD_POST);

    $attributes = array('action' => multisite('holiday.php'), 'class' => 'inline-form');
    $form->setAttributes($attributes);

    // Hidden input for holiday ID
    $form->addHiddenInput('edit_holiday_id', $holiday_id);

    // Edit button
    $element = new ElementInputImage();
    $element->setAttributes(array('class'  => 'button',
                                  'src'    => 'images/edit.png',
                                  'width'  => '16',
                                  'height' => '16',
                                  'title'  => get_vocab('edit_holiday'),
                                  'alt'    => get_vocab('edit_holiday')));
    $form->addElement($element);

    $form->render();
}

// Handle form submissions for adding, editing, or deleting holidays
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	
    if (isset($_POST['edit_holiday_id']) && !isset($_POST['holiday_date'])) {
        // Handle editing holiday (loading data into the form)
        $holiday_id = (int)$_POST['edit_holiday_id'];
        // Fetch holiday data to populate the form
        $holiday = db()->query("SELECT holiday_date, description FROM mrbs_holidays WHERE id = ?", [$holiday_id])->next_row_keyed();
        
        // Set the values for the form
        $edit_date = $holiday['holiday_date'];
        $edit_description = $holiday['description'];
        $edit_id = $holiday_id;  // Pass the id to the form to enable update functionality
    }
    elseif (isset($_POST['holiday_date']) && isset($_POST['description'])) {
        // If an edit ID is provided, update the holiday instead of adding
        $date = $_POST['holiday_date'];
        $description = $_POST['description'];

        // Validate that the holiday date is not empty
        if (empty($date)) {
            $error_message = "Please provide a valid date for the holiday.";
        }
        else {
            if (isset($_POST['edit_holiday_id'])) {
                $holiday_id = (int)$_POST['edit_holiday_id'];

                // Update the holiday entry in the database
                $query = "UPDATE mrbs_holidays SET holiday_date = ?, description = ? WHERE id = ?";
                db()->query($query, array($date, $description, $holiday_id));

                // Redirect with success message
                header("Location: holiday.php?success=updated");
                exit;
            }
            else {
                // Adding a new holiday
                $query = "INSERT INTO mrbs_holidays (holiday_date, description) VALUES (?, ?)";
                db()->query($query, array($date, $description));

                // Redirect with success message
                header("Location: holiday.php?success=added");
                exit;
            }
        }
    }
    elseif (isset($_POST['delete_holiday_id'])) {
        // Deleting a holiday
        $holiday_id = (int)$_POST['delete_holiday_id'];
        db()->query("DELETE FROM mrbs_holidays WHERE id = ?", array($holiday_id));
        
        header("Location: holiday.php?success=deleted");
        exit;
    }
}

// Page context for header and footer
$context = array();
print_header($context);

echo '<div id="popupMessage" class="popup-message"></div>';

// Display success or error message if any
/*if ($success_message || $error_message) {
    $message_class = $success_message ? "success-message" : "error-message";
    $message_text = $success_message ?: $error_message;
    echo "<div class=\"$message_class\">$message_text</div>";
}*/

if ($success_message || $error_message) {
    $message_class = $success_message ? "success-message" : "error-message";
    $message_text = $success_message ?: $error_message;
    echo "<script>document.addEventListener('DOMContentLoaded', function() {
              showPopupMessage('$message_text', '$message_class');
          });</script>";
}

echo "<h2>" . get_vocab("holiday_management") . "</h2>\n";

// Holiday form section
echo "<div id=\"holiday_form\">\n";
generate_holiday_form($edit_date ?? null, $edit_description ?? null, $edit_id ?? null); // Pass edit values if set
echo "</div>\n";

echo "<h2>" . get_vocab("existing_holidays") . "</h2>\n";
// Display the existing holidays in a table
echo "<div id=\"holiday_table\">\n";
echo "<table class=\"admin_table display\">\n";
echo "<thead>\n<tr>\n";
echo "<th>" . get_vocab("holiday_date") . "</th>\n";
echo "<th>" . get_vocab("description") . "</th>\n";
echo "<th>&nbsp;</th>\n";  // For edit and delete buttons
echo "</tr>\n</thead>\n<tbody>\n";

// Fetch and display holidays from the database
$holidays = db()->query("SELECT id, holiday_date, description FROM mrbs_holidays ORDER BY holiday_date");
while ($row = $holidays->next_row_keyed()) {
    echo "<tr>\n";
    echo "<td>" . htmlspecialchars($row['holiday_date']) . "</td>\n";
    echo "<td>" . htmlspecialchars($row['description']) . "</td>\n";
    echo "<td>\n<div class=\"button-container\">\n";
    
    // Generate edit button
    generate_holiday_edit_form($row['id']);
    
    // Generate delete button
    generate_holiday_delete_form($row['id']);
    
    echo "</div>\n</td>\n";
    echo "</tr>\n";
}

echo "</tbody>\n</table>\n";
echo "</div>\n";

print_footer();

