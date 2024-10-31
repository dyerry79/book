<?php
declare(strict_types=1);
namespace MRBS;

require "defaultincludes.inc";
require_once "version.inc";

// Check the user is authorised for this page
checkAuthorised(this_page());

$context = array(
    'view'      => $view,
    'view_all'  => $view_all,
    'year'      => $year,
    'month'     => $month,
    'day'       => $day,
    'area'      => $area,
    'room'      => $room ?? null
  );

print_header($context);

echo "<h3>" . get_vocab("about_mrbs") . "</h3>\n";

echo "<table class=\"details list\">\n";
echo "<tr><td>". get_vocab("mrbs") . "</td><td>" . get_mrbs_version() . "</td></tr>\n";
echo "</table>\n";

echo "<p>\n" . get_vocab("browserlang") .":\n";

if (isset($server['HTTP_ACCEPT_LANGUAGE']))
{
  echo htmlspecialchars(implode(', ', get_browser_langs($server['HTTP_ACCEPT_LANGUAGE'])));
}

echo "\n</p>\n";

echo "<h3>" . get_vocab("help") . "</h3>\n";
echo "<p>\n";
// Obfuscate the email address
$html = '<a href="mailto:' . rawurlencode($mrbs_admin_email) . '">' . htmlspecialchars($mrbs_admin) . '</a>';
$contact = '<span class="contact" data-html="' . base64_encode($html) . '">' . htmlspecialchars($mrbs_admin) . '</span>';
echo get_vocab("please_contact", $contact) . "\n";
echo "</p>\n";

$faqfile = $faqfilelang ?? '';

// Older versions of MRBS required an underscore in front of the language
// in the config setting.  In order to maintain backwards compatibility we
// cater for both old (eg "_fr") and new (eg "fr") styles.
if (($faqfile !== '') && !str_starts_with($faqfile, '_'))
{
  $faqfile = '_' . $faqfile;
}

require_once "site_faq/site_faq" . $faqfile . ".html";

print_footer();
