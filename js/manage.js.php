<?php
declare(strict_types=1);
namespace MRBS;

require "../defaultincludes.inc";

http_headers(["Content-type: application/x-javascript"], 60 * 30);
?>

'use strict';

$(document).on('page_ready', function() {
  // Define the main table
  var maintable = $('#manage_table'),
      subtables,
      startTimeCol = maintable.find('thead tr:first th.header_start_time').index(),
      tableOptions,
      manageDataTable,
      i,
      colVisIncludeCols;

  // Add '-' control to subtables to close them on click
  maintable.find('table.sub th.control').text('-');

  $(document).on('click', 'table.sub th.control', function () {
      var nTr = $(this).closest('.table_container').parent().prev(),
          serial = $(this).parent().parent().parent().attr('id').replace('subtable_', '');

      $('#subtable_' + serial + '_wrapper').slideUp(function () {
          manageDataTable.row(nTr).child.hide();
          nTr.show();
      });
  });

  // Detach all subtables initially
  subtables = maintable.find('tr.sub_table').detach();

  // Open a row on click and insert subtable
  maintable.find('td.control').text('+');

  $(document).on('click', 'td.control', function () {
      var nTr = $(this).parent(),
          serial = nTr.attr('id').replace('row_', ''),
          subtableId = 'subtable_' + serial,
          subtable = subtables.find('#' + subtableId).parent().clone(),
          columnDefs = [],
          subDataTable;

      // Align columns in the main and sub tables
      maintable.find('tr').eq(0).find('th').each(function(i) {
          columnDefs.push({
              width: ($(this).outerWidth()) + "px",
              targets: i
          });
      });

      columnDefs.push({ orderable: false, targets: 0 });
      columnDefs = columnDefs.concat(getTypes(subtable));

      nTr.hide();
      manageDataTable.row(nTr).child(subtable.get(0)).show();
      subtable.closest('td').addClass('table_container');

      subDataTable = $('#' + subtableId).DataTable({
          autoWidth: false,
          paging: false,
          dom: 't',
          order: [[startTimeCol, 'asc']],
          columnDefs: columnDefs
      });

      $('#subtable_' + serial + '_wrapper').hide().slideDown();
  });

  // Define DataTable options for the main table
  tableOptions = {
      order: [[startTimeCol, 'asc']],
      paging: true,
      pageLength: 25,
      lengthMenu: [10, 25, 50, 100, -1],
      stateSave: false,
      dom: 'lfrtip',  // Show length menu, filter, and pagination only
      columnDefs: [{ orderable: false, targets: 0 }]
  };

  tableOptions.columnDefs = tableOptions.columnDefs.concat(getTypes(maintable));

  // Initialize the DataTable
  manageDataTable = makeDataTable('#manage_table', tableOptions);
});
