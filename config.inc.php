<?php // -*-mode: PHP; coding:utf-8;-*-
namespace MRBS;

use IntlDateFormatter;

require_once 'lib/autoload.inc';

/**********
 * Timezone
 **********/
$timezone = "Asia/Manila";

/*******************
 * Database settings
 ******************/
$dbsys = "mysql";
$db_host = "localhost";
// $db_port = 1234;
$db_database = "mrbs";
$db_login = "root";
$db_password = 'root123456';
$db_tbl_prefix = "mrbs_";
$db_persist = false;

/*********************************
 * Site identification information
 *********************************/
$multisite = false;
$default_site = '';

$mrbs_admin = "System Administrator";
$mrbs_admin_email = "exploringdora@gmail.com";
//$mrbs_admin_email = '"Bloggs, Joe" <admin_email@your.org>';

$mrbs_company = "Provincial Government of La Union";   // This line must always be uncommented ($mrbs_company is used in various places)
$mrbs_company_logo = "images/logo.png";    // name of your logo file.   This example assumes it is in the MRBS directory
//$mrbs_company_more_info = "You can put additional information here";  // e.g. "XYZ Department"


/*******************
 * Themes
 *******************/
$theme = "default";
$custom_css_url = 'css/custom.css';
$custom_js_url = 'js/custom.js';

/******************
 * Display settings
 ******************/
$weekstarts = 0;
$default_view = "month";
$default_view_all = false;
$default_room = 1;

$clipped = false;
 
/******************
 * Email settings
 ******************/
 
// Set the email address of the From field. Default is 'admin_email@your.org'
$mail_settings['from'] = 'exploringdora@gmail.com';
$mail_settings['use_from_for_all_mail'] = false;
$mail_settings['use_reply_to'] = false;
$mail_settings['recipients'] = 'exploringdora@gmail.com';

// WHO TO EMAIL
$mail_settings['admin_on_bookings']      = true;  // the addresses defined by $mail_settings['recipients'] below
$mail_settings['area_admin_on_bookings'] = true;  // the area administrator
$mail_settings['room_admin_on_bookings'] = true;  // the room administrator
$mail_settings['booker']                 = true;  // the person making the booking
$mail_settings['book_admin_on_approval'] = true;  // the booking administrator when booking approval is enabled
                                                   // (which is the MRBS admin, but this setting allows MRBS
                                                   // to be extended to have separate booking approvers)
$mail_settings['anonymous_booker'] = true;

// WHEN TO EMAIL
$mail_settings['on_new']    = true;   // when an entry is created
$mail_settings['on_change'] = true;  // when an entry is changed
$mail_settings['on_delete'] = true;  // when an entry is deleted

// WHAT TO EMAIL
// -------------
$mail_settings['details']   = true; // Set to true if you want full booking details;
                                     // otherwise you just get a link to the entry
$mail_settings['html']      = true; // Set to true if you want HTML mail
$mail_settings['icalendar'] = false;

// HOW TO EMAIL - BACKEND
// ----------------------
// 'mail','smtp', 'sendmail' or 'qmail'. Default is 'mail'.
$mail_settings['admin_backend'] = 'smtp';

/*******************
 * SMTP settings
 ******************/
// These settings are only used with the "smtp" backend
$smtp_settings['host'] = 'smtp.gmail.com';  // SMTP server
$smtp_settings['port'] = 465;           // SMTP port number
$smtp_settings['auth'] = TRUE;        // Whether to use SMTP authentication
$smtp_settings['secure'] = 'ssl';         // Encryption method: '', 'tls' or 'ssl' - note that 'tls' means TLS is used even if the SMTP
                                       // server doesn't advertise it. Conversely if you specify '' and the server advertises TLS, TLS
                                       // will be used, unless the 'disable_opportunistic_tls' configuration parameter shown below is
                                       // set to true.
$smtp_settings['username'] = 'exploringdora@gmail.com';       // Username (if using authentication)
$smtp_settings['password'] = 'ytvf kbzv rbgm mwhi';		  // Password (if using authentication)

// The filename to be used for iCalendar attachments.   Will always have the
// extension '.ics'
$mail_settings['ics_filename'] = "booking";

$mail_settings['debug'] = false;
// Where to send the debug output.  Can be 'browser' or 'log' (for the error_log)
$mail_settings['debug_output'] = 'browser';


/*******************
 * Calendar settings
 *******************/
$approved_bookings_cannot_be_changed = TRUE;
$enable_periods = TRUE;  // Default value for new areas

// TIMES SETTINGS
// --------------
$resolution = (60 * 60);  // DEFAULT VALUE FOR NEW AREAS
$force_resolution = TRUE;
$enable_registration = false;

// The beginning of the first slot of the day (DEFAULT VALUES FOR NEW AREAS)
$morningstarts         = 0;   // must be integer in range 0-23
$morningstarts_minutes = 59;   // must be integer in range 0-59

// The beginning of the last slot of the day (DEFAULT VALUES FOR NEW AREAS)
$eveningends           = 23;  // must be integer in range 0-23
$eveningends_minutes   = 59;   // must be integer in range 0-59	

/*******************
// General settings
 ******************/
$auth['only_admin_can_book_repeat'] = true;
//$auth['allow_anonymous_booking'] = true;

/*************
 * Entry Types
 *************/
unset($booking_types);
  
/*$booking_types[] = "E";
$booking_types[] = "I";
$vocab_override["en"]["type.E"] = "For Approval";
$vocab_override["en"]["type.I"] = "Confirmed";*/

/*************
 * Bookings
 *************/

// SETTINGS FOR APPROVING BOOKINGS - PER-AREA
$approval_enabled = TRUE;  // Set to TRUE to enable booking approval

// Set to FALSE if you don't want users to be able to send reminders
// to admins when bookings are still awaiting approval.
$reminders_enabled = TRUE;

// SETTINGS FOR BOOKING CONFIRMATION
$confirmation_enabled = FALSE; // Allows bookings to be marked as "tentative"
$confirmed_default = TRUE; // Default status. (TRUE: confirmed, FALSE: tentative)
//$select_options['entry.name'] = array('Physics', 'Chemistry', 'Biology');
//$select_options['entry.name'] = array('c' => 'Coffee',
//                                          's' => 'Sandwiches',
//                                          'h' => 'Hot Lunch');



/*************
 * Added Columns 
 *************/
$is_mandatory_field['entry.description'] = true;
 
 //mrbs_entry and mbrs_repeat tables
$vocab_override['en']['entry.contact_name'] = "Contact Person";
$is_mandatory_field['entry.contact_name'] = true;
//$vocab_override['en']['entry.contact_name.placeholder'] = "Name of contact person";

$vocab_override['en']['entry.contact_office'] = "Requesting Office/Agency";
$is_mandatory_field['entry.contact_office'] = true;
//$vocab_override['en']['entry.contact_office.placeholder'] = "Requesting office/agency";

$vocab_override['en']['entry.contact_number'] = "Contact Number";
$is_mandatory_field['entry.contact_number'] = true;
//$vocab_override['en']['entry.contact_number.placeholder'] = "Contact #";

$vocab_override['en']['entry.contact_email'] = "Email Address";
$is_mandatory_field['entry.contact_email'] = true;
$vocab_override['en']['entry.contact_email.placeholder'] = "Active email address";

$vocab_override['en']['entry.contact_requirements'] = "Detailed Requirements";
$is_mandatory_field['entry.contact_requirements'] = true;
$vocab_override['en']['entry.contact_requirements.placeholder'] = "List your logistical requirements here.";
$vocab_override['en']['entry.terms_and_conditions'] = "";

														
/******************************
 * Form Arrangement
 *****************************/
/*
$edit_entry_field_order = array('create_by', 'name', 'description',
						'start_time', 'end_time', 'room_id','type', 
						'confirmation_status', 'privacy_status','contact_name',
						'contact_office','contact_number','contact_email','contact_requirements');*/

//Hide other users from non-admin users
$auth['only_admin_can_see_other_users'] = true;

//prevent users from deleting and editing approved booking
$approved_bookings_cannot_be_changed = true;

//ALL entries are treated as private
$private_override = "private"; 

$is_private_field['entry.name'] = false;
$is_private_field['entry.description'] = true;
$is_private_field['entry.create_by'] = true;
$is_private_field['entry.modified_by'] = true;
$is_private_field['entry.contact_name'] = true;
$is_private_field['entry.contact_number'] = true;
$is_private_field['entry.contact_email'] = true;


/*************
 * MISC
 *************/
$is_mandatory_field['entry.terms_and_conditions'] = true;












