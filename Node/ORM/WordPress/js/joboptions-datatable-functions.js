function populateDataTable(tableName, objectName, params) {
  if (typeof (params) === 'undefined')
    params = '';
  if (debug) {
    console.log('Ajax URL: ' + ajaxurl);
    console.log('Table Name: ' + tableName);
  }
  if (jQuery.fn.DataTable.isDataTable(`#${tableName}`)) {
    let tableParent = jQuery(`#${tableName}_wrapper`).parent();
    jQuery(`#${tableName}`).DataTable().destroy(true);
    let tableElement = `<table id="${tableName}" class="display" style="width:100%; display: none;"></table>`;
    jQuery(tableParent).append(tableElement);
  };
  jQuery.ajax({
    url: ajaxurl,
    type: "POST",
    dataType: 'json',
    data: { 'Object': objectName.replace(/[^a-zA-Z0-9-_]/g, ''), 'action': 'get_table_data', 'params': params },
    success: function (data) {
      if (typeof (data) === 'string') {
        data = JSON.parse(data);
      };
      jQuery(`#${tableName}`).css('display', '');
      let tableInit = `init${dashToCamelCase(tableName).replace(/^\w/, c => c.toUpperCase())}`;
      if (debug) { console.log(`Table Init Function: ${tableInit}`) };
      if (debug) { console.log(`${tableInit} received ${JSON.stringify(data).substring(0, 100)}`) };
      if (typeof window[tableInit] === "function") {
        table = window[tableInit](data);
      } else {
        console.log(`${tableInit} is not a function.`);
        alert(`${tableInit} is not a function.`);
        console.log(`${tableInit} is a(n) ${typeof (window[tableInit])}.`);
      };
    },
    error: function (err) {
      console.log(err.responseText);
    }
  });
};
function detailModalListener(table) {
  table.on('select', function (e, dt, type, indexes) {
    displayRowDetailModal(dt, indexes);
  });
};
function tableSelectListener(table, editFunctionName, hasChildren) {
  table.on('select', function (e, dt, type, indexes) {
    let row = table.row(indexes[0].row);
    let columnNumber = indexes[0].column;
    table.cell(indexes).deselect();
    if (debug)
      console.log(`Column Number Selected: ${columnNumber}`);
    if (columnNumber < 2) {
      if (hasChildren && hasChildren === true) {
        displayRowChildren(dt, indexes);
      } else {
        displayRowDetailModal(dt, indexes);
      }
    } else if (editFunctionName && window[editFunctionName] && typeof window[editFunctionName] === "function") {
      window[editFunctionName](row);
    } else {
      displayRowDetailModal(dt, indexes);
    };
  });
};
function displayEditModal(title, formId, objectName, objectId) {
  jQuery(`#pum-${modals['edit']} .pum-title`).empty().append(title);
  loadEditObjectForm(jQuery(`#pum-${modals['edit']} .pum-content div[name='edit-modal']`)[0], formId, objectName, objectId);
};
function displayAddModal(title, formId, applicantId, applicationId) {
  jQuery(`#pum-${modals['add']} .pum-title`).empty().append(title);
  loadAddObjectForm(jQuery(`#pum-${modals['add']} .pum-content div[name='add-modal']`)[0], formId, applicantId, applicationId);
};
function displayRowChildren(table, indexes) {
  let row = table.row(indexes[0].row);
  if (row.child.isShown()) {
    row.child.hide();
    // row.removeClass('shown');
    jQuery(row).removeClass('shown');
  } else {
    let args = getChildRequestArgs(row.data());
    row.child(format(args));
    // row.addClass('shown');
    jQuery(row).addClass('shown');
  }
};
function getChildRequestArgs(data) {
  let body = {};
  body['action'] = 'get_table_children';
  body['applicant-id'] = data['ApplicantId'] ? data['ApplicantId'] : adminVars['applicantId'];
  if (data['Object'])
    body['object'] = data['Object'];
  if (data['id'])
    body['id'] = data['id'];
  // if (data['id'])
    body['child-object'] = 'ApplicantDisabilityCode';
  if (debug)
    console.log(`Table Load Children of Object Name: ${body['object']}, id: ${body['id']}`);
  let args = getDefaultAjaxBody();
  args['type'] = 'json';
  args['body'] = body;
  return args;
}
// function format(callback, args) {
function format(args) {
  let div = jQuery('<div/>').addClass('loading').text('Loading...');
  jQuery.ajax({
    // serverSide: true,
    url: ajaxurl,
    type: args['type'],
    cache: false,
    data: args['body'],
    success: function (data) {
      let data = JSON.parse(response.responseText);
      if (debug)
        console.log(data);
      let tbody = "";
      $.each(data.data, function (index, value) {
        tbody += "<tr><td>" + value.Code + " testingtesting " + value.Description + "this is data" + data + " and function( " + index + " ," + value + ")</td></tr>";
      });
      if (debug === true)
        console.log("<table>" + tbody + "</table>");
      callback($("<table>" + tbody + "</table>")).show();
    },
    error: function (err) {
      console.log('Error returned from AJAX.: \n' + JSON.stringify(args['body']));
    },
  });
  return div;
};
function displayRowDetailModal(table, indexes) {
  let rowRenderedData = table.cells(indexes[0].row, '').render('display'),
    columnSettings = table.settings().init().columns,
    applicantId = `#`,
    applicantName,
    objectName,
    rowId = -1,
    objectRowId = 0,
    rowObject = {};
  let body = jQuery.map(columnSettings, function (col, i) {
    if (col.title) {
      rowObject[col.title] = rowRenderedData[objectRowId];
      if (col.title.match(/^name+$/i) || col.data.match(/^name+$/i))
        applicantName = rowObject[col.title] ? rowObject[col.title] : rowObject[col.data];
      else if (col.title.match(/^applicantid+$/i) || col.data.match(/^applicantid+$/i))
        applicantId = rowObject[col.title] ? rowObject[col.title] : rowObject[col.data];
      else if (col.title.match(/^objecttitle+$/i) || col.data.match(/^objecttitle+$/i))
        objectName = rowObject[col.title] ? rowObject[col.title] : rowObject[col.data];
    };
    objectRowId++;
    if (col.className && col.className.includes('export')
      && ((typeof (applicantName) !== 'undefined' && col.title.match(/^[a-z0-9 ]+$/i))
        || typeof (applicantName) === 'undefined')) {
      let colData = col.title;
      let value = rowObject[colData];
      rowId++;
      return col.className.includes('export') && (col.title || value) ?
        '<tr data-dt-row="' + indexes[0].row + '" data-dt-column="' + i + '">' +
        '<td>' + rowId + '</td> ' +
        '<td><button>Hide</button></td> ' +
        '<td class="export reorder">' + (col.title ? col.title : '') + ':</td> ' +
        '<td class="export">' + (value ? value : '') + '</td>' +
        '</tr>' :
        '';
    };
  }).join('');
  let applicantValue = applicantName ? applicantName : objectName;
  let header = `${applicantId} - ${applicantValue}`;
  body = body ? `<table id="detail-modal-table" class="display" style="width:100%">
                  <thead><th>rowId</th><th></th><th>#${applicantId}</th><th>${applicantValue}</th></thead>
                  <tbody>${body}</tbody></table>`
    : false;
  displayRowDetailModalTable(header, body);
};
function displayRowDetailModalTable(header, body) {
  if (!body) {
    header = header ? header : 'Null Error';
    body = '<div>No Row Details to Display</div>';
    jQuery(`#pum-${modals['alert']} .pum-title`).empty().append(header);
    jQuery(`#pum-${modals['alert']} .pum-content div[name='alert']`).empty().append(body);
    jQuery(`#pum-${modals['alert']}`).popmake('open');
    return;
  };
  jQuery(`#pum-${modals['detail']} .pum-title`).empty().append(header);
  jQuery(`#pum-${modals['detail']} .pum-content div[name='detail-table']`).empty().append(body);
  jQuery(`#detail-modal-table`).DataTable({
    dom: '<B <t>>',
    pageLength: -1,
    rowReorder: {
      selector: 'tr>td:nth-child(2)'
    },
    select: {
      style: 'single',
      selector: 'tr>td:nth-child(1)',
      items: 'row',
    },
    buttons: [],
    columns: [
      { visible: false },
      { width: "1em" },
      { className: 'export reorder' },
      { className: 'export' }
    ],
    initComplete: function () {
      addRowHideOnSelect(this.DataTable());
      addRowDetailButtons(this.DataTable(), header);
      jQuery(`#detail-modal-table_wrapper`).append(`<button class="close-modal pum-close popmake-close">Close</button>`);
      jQuery(`#pum-${modals['detail']}`).popmake('open');
    }
  });
};
function addRowHideOnSelect(table, columnIndex) {
  table.on('select', function (e, dt, type, indexes) {
    let rowIndex;
    if (Array.isArray(indexes[0])) {
      if (columnIndex && indexes[0].column && columnIndex !== indexes[0].column)
        return;
      rowIndex = indexes[0].row;
    } else {
      rowIndex = indexes[0];
    };
    if (rowIndex)
      dt.row(rowIndex).remove().draw();
  });
};
function addRowDetailButtons(table, header = 'Applicant Data', buttons = []) {
  let buttonIndex = 0;
  let buttonString = buttons.toString().toLocaleLowerCase();
  if (buttons.length === 0 || buttonString.match(/excel/i)) {
    table.button().add(buttonIndex, {
      extend: 'excel',
      text: 'Excel',
      exportOptions: {
        columns: '.export',
        modifier: {
          createEmptyCells: 'true',
          fieldSeparator: exportVars['fieldSeparator']
        }
      },
      filename: function () {
        return `Applicant_${getFormattedDate(new Date(Date.now()), true)}`;
      },
    });
    buttonIndex++;
  };
  if (buttons.length === 0 || buttonString.match(/pdf/i)) {
    table.button().add(buttonIndex, {
      extend: 'pdf',
      text: 'PDF',
      exportOptions: {
        columns: '.export',
        modifier: {
          orientation: 'portrait',
          pageSize: 'LETTER',
          // title: 'Applicant Data'
          title: header
        }
      },
      filename: function () {
        return `Applicant_${getFormattedDate(new Date(Date.now()), true)}`;
      },
    });
    buttonIndex++;
  };
  if (buttons.length === 0 || buttonString.match(/copy/i)) {
    table.button().add(buttonIndex, {
      extend: 'copy',
      text: 'Copy',
      fieldSeparator: exportVars['fieldSeparator'],
      title: null,
      exportOptions: {
        columns: '.export'
      }
    });
    buttonIndex++;
  };
  if (buttons.length === 0 || buttonString.match(/print/i)) {
    table.button().add(buttonIndex, {
      extend: 'print',
      text: 'Print',
      exportOptions: {
        columns: '.export',
        modifier: {
          orientation: 'portrait',
          pageSize: 'LETTER',
          // title: 'Applicant Data'
          title: header
        }
      },
      // customize: function ( win ) {
      //     jQuery(win.document.body)
      //         // .css( 'font-size', '10pt' )
      //         .prepend(
      //             '<img src="http://216.70.228.100/joboptionsinc/wp-content/uploads/2018/07/job-options-inc_724px.png" style="position:absolute; top:0; left:0; width="75" height="50" />'
      //         );
      //     jQuery(win.document.body).find( 'table' )
      //         .addClass( 'compact' )
      //         .css( 'font-size', 'inherit' );
      // }
    });
  };
  buttonIndex++;
};
function addButtons(table, addObjectTitle, formPostId) {
  table.button().add(0, {
    text: 'Add',
    action: function (e, dt, button, config) {
      let firstRowData = dt.row(0).data();
      if (firstRowData) {

      };
      if (firstRowData && !addObjectTitle) {
        addObjectTitle = firstRowData ? firstRowData.Object : null;
        addObjectTitle = addObjectTitle ? addObjectTitle : 'Add';
      };
      displayAddModal(addObjectTitle, formPostId, adminVars['applicantId'], adminVars['applicationId']);
    },
  });
  table.button().add(1, {
    extend: 'copy',
    text: 'Copy',
    title: null,
    fieldSeparator: exportVars['fieldSeparator'],
    exportOptions: {
      columns: '.export',
    },
  });
  table.button().add(2, {
    extend: 'colvis',
    text: 'Display Column',
    columns: ':gt(0)'
  });
};
/* ************************************************************************ */
/* ********  Hide all DataTable Grids before selecting applicant  ********* */
/* *****************  and initializing the tables  ************************ */
/* ************************************************************************ */
jQuery(document).ready(function ($) {
  // jQuery('table').css('display', 'none');
  jQuery('table .datatable').css('display', 'none');
});
