<?php
declare(strict_types=1);
namespace MRBS;

require "defaultincludes.inc";

// Check if the user is authorized
checkAuthorised(this_page());
if (!is_admin()) {
    showAccessDenied();
}

// Helper function to update booking status
/**
 * Update fields for a booking entry in the database
 *
 * @param int $entry_id - The booking entry ID
 * @param array $fields - Associative array of fields and values to update
 */
function update_booking_status(int $entry_id, array $fields): void
{
    $set_clause = [];
    $params = ['entry_id' => $entry_id];

    foreach ($fields as $column => $value) {
        $set_clause[] = "$column = :$column";
        $params[$column] = $value;
    }

    $query = "UPDATE " . _tbl('entry') . " SET " . implode(', ', $set_clause) . " WHERE id = :entry_id";
    db()->query($query, $params);
}

// Retrieve and sanitize parameters
$action = $_POST['action'] ?? '';
$entry_id = isset($_POST['id']) ? (int) $_POST['id'] : 0;

// Redirect back if invalid action or entry ID
if (empty($action) || empty($entry_id)) {
    header("Location: " . multisite("manage.php"));
    exit;
}

try {
    // Get the current datetime
    $current_datetime = date('Y-m-d H:i:s');
    switch ($action) {
        case 'start':
            // Update actual_start and actual_status to 'ongoing'
            update_booking_status($entry_id, [
                'actual_start' => $current_datetime,
                'actual_status' => 'ONGOING'
            ]);
            $status_message = "Booking $entry_id has been started.";
            break;

        case 'end':
            // Update actual_end and actual_status to 'completed'
            update_booking_status($entry_id, [
                'actual_end' => $current_datetime,
                'actual_status' => 'COMPLETED'
            ]);
            $status_message = "Booking $entry_id has been completed.";
            break;

        default:
            throw new \Exception("Unknown action: $action");
    }

    // Set a success message to display after redirection
    $_SESSION['success_message'] = $status_message;

} catch (\Exception $e) {
    // Handle any exceptions or errors
    $_SESSION['error_message'] = "Error processing booking $entry_id: " . $e->getMessage();
}

// Redirect back to manage page
header("Location: " . multisite("manage.php"));
exit;
 