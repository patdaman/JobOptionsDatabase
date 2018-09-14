
var outputColumns = ['applicantid', 'createdate', 'interviewer', 'type', 'status', 'detailednote', 'detail' ];

jQuery(document).ready(function($) {
  addDetailButtonToTables($);
});
function addDetailButtonToTables($) {
  jQuery(".dataTable").addClass("collapsed");
};
// ***********************************************************************
// DataTable Grid for Admin Page - Applicant Search Accordion
// ***********************************************************************
jQuery(document).ready(function($) {
  $('#applicant-search').css('display','none');
  $('#applicant-status').css('display','none');
  $('#applicant-document').css('display','none');
  $('#applicant-interview').css('display','none');
  $('#applicant-note').css('display','none');
});

function initApplicantSearch(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-search')) {
    jQuery('#applicant-search').DataTable().destroy();
  };
  var table = jQuery('#applicant-search').DataTable({
    data: data,
    dom: '<lBf <t>ip>',
    buttons: [ 
      {
      	extend: 'excel',
        text: 'Export Excel',
        exportOptions: {
          modifier: {
            page: 'current',
            title: 'Applicants',
            createEmptyCells: 'true'
          } 
        },
        filename: function() {
          return "Applicants_" + getFormattedDate(new Date(Date.now()), true);
        },
      },
      {
        extend: 'pdf',
        text: 'Export PDF',
        exportOptions: {
          modifier: {
            page: 'current',
            orientation: 'landscape',
            pageSize: 'LETTER',
            title: 'Applicants'
          }
        },
        filename: function() {
          return "Applicants_" + getFormattedDate(new Date(Date.now()), true);
        },
      },
      'copy',
      {
        extend: 'print',
        text: 'Print',
        exportOptions: {
          modifier: {
            page: 'current',
            orientation: 'landscape',
            pageSize: 'LETTER',
            title: 'Applicants',
          }
        }
      },          
      //{
      //  extend: 'columnToggle',
      //  columns: '.contact-only',
      //},
    ],
    rowReorder: true,
    paging: true,
    pageLength: 10,
    lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
    rowId: 'id',
    scrollX: true,
    orderMulti: true,
    scrollY: true,
  	ordering: true,
    select: {
    		  items: 'row',
    		  style: 'single'
  			},
  	autoWidth: true,
    scrollCollapse: true,
  	sortable: true,
  	filter: true,
    info: true,
    columns: [
	  { title: "#", name: "id", data: "id" },
      { 
        title: "Name",
        name: "Name",
        render: function (data, type, row, meta) { 
          return getFullName(row["FirstName"], row["MiddleName"], row["LastName"]); 
        },
        className: "nameField",
      },
      { 
        title: "Phone Number", 
        type: "phoneNumber", 
        data: "PhoneNumbers", 
        orderable: false,
        className: "phoneField",
      },
      { title: "Email", data: "Email", orderable: false },
      { title: "Disabled", data: "Disabled", searchable: false, orderable: false },
      { 
        title: "Application Date",
        data: "ApplicationDate",
      	type: "date",
      	render: function(data, type, row, meta) {
      		return getFormattedDate(data);
      	},
      },
      { title: "Consideration", data: "Consideration", orderable: false },
      { title: "Status", data: "CurrentStatus", orderable: false },
      { title: "Position", data: "Positions", orderable: false },
      { title: "Location", data: "Locations", orderable: false },
      { title: "Hired", data: "Hired", searchable: false, orderable: false },
      { 
        title: "Date Available",
        data: "AvailableDate",
        type: "date",
        render: function(data, type, row, meta) {
			return getFormattedDate(data);
        },
      },
      { title: "ApplicantId", data: "ApplicantId", visible: false, searchable: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "Object", data: "Object", visible: false, searchable: false },
    ],
    // order: (['ApplicationDate', 'asc'], ['AvailableDate','asc'], ['ApplicantId', 'asc']),
    initComplete: function () {
      this.api().columns([4, 6, 7, 8, 9, 10]).every( function () {
        var column = this;
        var select = jQuery('<select><option value="">All</option></select>')
        .appendTo(jQuery(column.header()))
        .on( 'change', function () {
          var val = jQuery.fn.dataTable.util.escapeRegex(
            jQuery(this).val()
          );
          column
            .search( val ? '^'+val+'jQuery' : '', true, false )
            .draw();
        });
        column.data().unique().sort().each( function ( d, j ) {
          select.append( '<option value="'+d+'">'+d+'</option>' )
        });
      });
    },
  });
  addSelectTableListener(table);
  return table;
};
function addSelectTableListener(selectTable) {
  selectTable.on( 'select', function ( e, dt, type, indexes ) {
    if ( type === 'row' ) {
      var applicantId = selectTable.rows( indexes ).data().pluck( 'ApplicantId' )[0];
      var applicationId = selectTable.rows( indexes ).data().pluck( 'ApplicationId' )[0];
      var body = {};
      body['action'] = 'set_applicant_data';
      body['applicant-id'] = applicantId;
      body['application-id'] = applicationId;
      body['element-id'] = 'applicant-search';
      // console.log(body['element']);
      var args = getDefaultAjaxBody();
      args['element'] = jQuery("#applicant-search_wrapper")[0];
      args['body'] = body;
      ajaxRequest(args);
	}      
  });
};

function populateDataTable (tableName, objectName, params) {
  if (typeof(params) === 'undefined')
    params = '';
  if (debug) {
  	console.log('Ajax URL: ' + ajaxurl);
  	console.log('Table Name: ' + tableName);
  }
  jQuery.ajax({
    url: ajaxurl,
    type: "POST",
    dataType: 'json',
    data: { 'Object': objectName, 'action': 'get_table_data', 'params': params },
    success: function (data) {
      if (typeof(data) === 'string')
      	data = JSON.parse(data);
	  jQuery(`#${tableName}`).css('display','');
      var table,
          tableInit = `init${dashToCamelCase(tableName).replace(/^\w/, c => c.toUpperCase())}`;
      if (debug) { console.log(`Table Init Function: ${tableInit}`) };
      if (debug) { console.log(`${tableInit} received ${JSON.stringify(data).substring(0, 100)}`) };
      if (typeof window[tableInit] === "function") {
      	table = window[tableInit](data);
      } else {
        console.log(`${tableInit} is not a function.`);
        console.log(`${tableInit} is a(n) ${typeof(window[tableInit])}.`);
      };
    },
    error: function(err) {
      console.log(err.responseText);
    }
  });
};

// ***********************************************************************
// Function to request AJAX data
// ***********************************************************************
function ajaxRequest(args) {
  var body = JSON.parse(JSON.stringify(args['body']));
  if (typeof(args['element']) !== 'undefined')
  	var element = args['element'];
  console.log('Body: ' + JSON.stringify(body));
  jQuery.ajax({
    url: ajaxurl,
    type: args['type'],
    // dataType: args['dataType'],
    // data: args['body'],
    data: body,
    success: function(data) {
	  if (true)
        data = JSON.parse(JSON.stringify(data));
      if (typeof handleAjaxFormResponse === 'function' && body['action'] === 'load_next')
	    handleAjaxFormResponse(element, data);
      else if (body['action'] === 'set_applicant_data') {
        handleAjaxApplicantSelectResponse(element);
        var nextAccordionElement = nextAccordion(element);
        nextForm(body['element-id'], nextAccordionElement, true);
        populateDataTable ('applicant-status','ApplicantStatus','');
        populateDataTable ('applicant-document','Document','');
        populateDataTable ('applicant-interview','Note','');
        populateDataTable ('applicant-note','Note','');
        populateDataTable ('applicant-phone','Phone','');
        addDetailButtonToTables();
      }        
	  else
		console.log('Ajax data returned \n' + data);
    },
    error: function(err) {
      if (typeof handleAjaxFormResponse === 'function' && body['action'] === 'load_next')
      	handleAjaxFormResponse(element, err.responseText);
      else if (body['action'] === 'set_applicant_data') {
        // handleAjaxApplicantSelectResponse(element);
        var nextAccordionElement = nextAccordion(element);
        nextForm(body['element-id'], nextAccordionElement, true);
        populateDataTable ('applicant-status','ApplicantStatus','');
        populateDataTable ('applicant-document','Document','');
        populateDataTable ('applicant-interview','Note','');
        populateDataTable ('applicant-note','Note','');
        populateDataTable ('applicant-phone','Phone','');
        addDetailButtonToTables();
      }  
      else
        // console.log('this is an error: \n' + err.responseText);
        console.log('this is an error: \n'+JSON.stringify(body));
        // console.log('this is an error: \n');
    },
  });
}

function initApplicantPhone(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-phone')) {
    jQuery('#applicant-phone').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var phoneTable = jQuery('#applicant-phone').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [ 
      {
        text: 'Add Phone',
        action: function ( e, dt, node, config ) {
          jQuery('#pum-2082').popmake('open');
          // jQuery('#add-status').popmake('open');
        },
      },
      {
        extend: 'copy',
        text: 'Copy',
        title: 'Applicant Contact Phone Details',
        // fieldSeparator: '\t',
        exportOptions: {
          columns: '.output',
        },
      },
    ],
    responsive: {
      details: {
        display: jQuery.fn.dataTable.Responsive.display.modal( {
          header: function ( row ) {
            var data = row.data();
            return `Contact ${data.PhoneType} Phone Detail`;
          }
        } ),
        renderer: function (api, rowIdx, columns) {
          var data = jQuery.map(columns, function (col, i) {
            return outputColumns.includes(col.title.toLowerCase()) ?
              '<tr data-dt-row="'+col.rowIndex+'" data-dt-column="'+col.columnIndex+'">'+
              '<td>'+col.title+':'+'</td> '+
              '<td>'+col.data+'</td>'+
              '</tr><tr />' :
            '';
          }).join('');
          return data ?
            jQuery('<table/>').append(data):false;
        }
      }
    },
    select: { items: 'row', style: 'single' },
    scrollCollapse: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: 'output', visible: false },
      { title: "Phone Number", data: "PhoneNumber", class: 'output', orderable: false },
      { title: "Extension", data: "Extension", class: 'output', orderable: false },
      { title: "Note", data: "Note", orderable: false, render: jQuery.fn.dataTable.render.ellipsis(50) },
      { title: "Detail", data: "Note", class: 'output', orderable: false, searchable: true, visible: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', orderable: true, class: 'output',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
      // { title: "Object", render: "ApplicantStatus", searchable: false, visible: false },
    ],
  });
  addEditPhoneTableListener(phoneTable);
};
function addEditPhoneTableListener(phoneTable) {
  phoneTable.on( 'select', function ( e, dt, type, indexes ) {
    if ( type === 'row' ) {
      var applicantId = statusTable.rows( indexes ).data().pluck( 'ApplicantId' )[0];
      var status = statusTable.rows( indexes ).data().pluck( 'Status' )[0];
      var note = statusTable.rows( indexes ).data().pluck( 'Note' )[0];
      console.log("I'm here!!");
	  addForm('edit-object','[contact-form-7 id="266" title="Applicant View / Edit 03 - Contact Phone"]');
      jQuery('#pum-2079').popmake('open');
    };
  });
};

function initApplicantStatus(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-status')) {
    jQuery('#applicant-status').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var statusTable = jQuery('#applicant-status').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [ 
      {
        text: 'Update Status',
        action: function ( e, dt, node, config ) {
          jQuery('#pum-1893').popmake('open');
          // jQuery('#add-status').popmake('open');
        },
      },
      {
        extend: 'copy',
        text: 'Copy',
        title: 'Applicant Status History',
        // fieldSeparator: '\t',
        exportOptions: {
          columns: '.output',
        },
      },
    ],
    responsive: {
      details: {
        display: jQuery.fn.dataTable.Responsive.display.modal( {
          header: function ( row ) {
            var data = row.data();
            return 'Status Detail';
          }
        } ),
        renderer: function (api, rowIdx, columns) {
          var data = jQuery.map(columns, function (col, i) {
            return outputColumns.includes(col.title.toLowerCase()) ?
              '<tr data-dt-row="'+col.rowIndex+'" data-dt-column="'+col.columnIndex+'">'+
              '<td>'+col.title+':'+'</td> '+
              '<td>'+col.data+'</td>'+
              '</tr><tr />' :
            '';
          }).join('');
          return data ?
            jQuery('<table/>').append(data):false;
        }
      }
    },
    select: { items: 'row', style: 'single' },
    scrollCollapse: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: 'output', visible: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'output',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      //{ title: "Consideration", data: "Consideration" },
      { title: "Status", data: "Status", class: 'output', orderable: false },
      { title: "Note", data: "Note", orderable: false, render: jQuery.fn.dataTable.render.ellipsis(50) },
      { title: "Detail", data: "Note", class: 'output', orderable: false, searchable: true, visible: false },
      //{ title: "Position", data: "Positions" },
      //{ title: "Location", data: "Locations" },
      //{ title: "Hired", data: "Hired", searchable: false, orderable: false },
      { title: "Detail", data: "Note", searchable: true, class: 'output', orderable: false, visible: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
      // { title: "Object", render: "ApplicantStatus", searchable: false, visible: false },
    ],
  });
};
function addDetailbuttonToTables() {
  jQuery(".dataTable").addClass("collapsed");
};
      
function initApplicantDocument(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-document')) {
    jQuery('#applicant-document').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
    data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "OwnerType":"Applicant", "CreateDate":"", "CreateUser":"" };
  var documentTable = jQuery('#applicant-document').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [ 
      {
        text: 'View / Add Document',
        action: function ( e, dt, node, config ) {
          jQuery('#pum-2029').popmake('open');
          // jQuery('#add-document').popmake('open');
        },
      },
      {
        extend: 'copy',
        text: 'Copy',
        title: 'Applicant Documents',
        // fieldSeparator: '\t',
        exportOptions: {
          columns: '.output',
        },
      },
    ],
    select: {
      items: 'row',
      style: 'single'
    },
    autoWidth: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: 'output', searchable: false, visible: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'output',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Type", data: "DocumentType" },
      { title: "Title", data: "FileName" },
      // { title: "Text", data: "DocumentText" },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
      // { title: "Object", data: "Object", visible: false, searchable: false },
    ],
  });
  addDocumentTableListener(documentTable);
};
function addDocumentTableListener(statusTable) {
  statusTable.on( 'select', function ( e, dt, type, indexes ) {
    if ( type === 'row' ) {
      var fileName = statusTable.rows( indexes ).data().pluck( 'FileName' )[0];
      var documentId = statusTable.rows( indexes ).data().pluck( 'id' )[0];
      var popUpWindow = window.open("","", "height=500,width=720,menubar=no");
      var test1 = apiUrl + "Docs/disability/download/" + fileName; 
      popUpWindow.document.write('<iframe allowTransparency="true" frameborder="0" scrolling="yes" style="width:100%;height:100%" src="'+test1+'" type= "text/javascript"></iframe>');
    };
  });
};
    
function initApplicantInterview(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-interview')) {
    jQuery('#applicant-interview').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
    data = { "id":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "NoteType":"Interview", "CreateDate":"", "CreateUser":"" };
  var interviewTable = jQuery('#applicant-interview').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [ 
      {
        text: 'Add Interview',
        action: function ( e, dt, node, config ) {
          jQuery('#pum-1900').popmake('open');
          // jQuery('#popmake-add-interview').popmake('open');
        },
      },
      {
        extend: 'copy',
        text: 'Copy',
        title: 'Applicant Status History',
        // fieldSeparator: '\t',
        exportOptions: {
          columns: '.output',
        },
      },
    ],
    responsive: {
      details: {
        display: jQuery.fn.dataTable.Responsive.display.modal( {
          header: function ( row ) {
            var data = row.data();
            return 'Status Detail';
          }
        } ),
        renderer: function (api, rowIdx, columns) {
          var data = jQuery.map(columns, function (col, i) {
            return outputColumns.includes(col.title.toLowerCase()) ?
              '<tr data-dt-row="'+col.rowIndex+'" data-dt-column="'+col.columnIndex+'">'+
              '<td>'+col.title+':'+'</td> '+
              '<td>'+col.data+'</td>'+
              '</tr><tr />' :
            '';
          }).join('');
          return data ?
            jQuery('<table/>').append(data):false;
        }
      }
    },
    select: {
      items: 'row',
      style: 'single'
    },
    autoWidth: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: "output", visible: false, searchable: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'output',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Interviewer", data: "CreateUser", class: "output", searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, class: "output" },
      { title: "Type", data: "NoteType", visible: false, searchable: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  //addTableDetailListener(interviewTable);
};

function initApplicantNote(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-note')) {
    jQuery('#applicant-note').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "NoteType":"Applicant", "CreateDate":"", "CreateUser":"" };
  var noteTable = jQuery('#applicant-note').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [ 
      {
        text: 'Add Note',
        action: function ( e, dt, node, config ) {
          jQuery('#pum-1903').popmake('open');
          // jQuery('#popmake-add-note').popmake('open');
        },
      },
      {
        extend: 'copy',
        text: 'Copy',
        title: 'Applicant Status History',
        // fieldSeparator: '\t',
        exportOptions: {
          columns: '.output',
        },
      },
    ],
    responsive: {
      details: {
        display: jQuery.fn.dataTable.Responsive.display.modal( {
          header: function ( row ) {
            var data = row.data();
            return 'Status Detail';
          }
        } ),
        renderer: function (api, rowIdx, columns) {
          var data = jQuery.map(columns, function (col, i) {
            return outputColumns.includes(col.title.toLowerCase()) ?
              '<tr data-dt-row="'+col.rowIndex+'" data-dt-column="'+col.columnIndex+'">'+
              '<td>'+col.title+':'+'</td> '+
              '<td>'+col.data+'</td>'+
              '</tr><tr />' :
            '';
          }).join('');
          return data ?
            jQuery('<table/>').append(data):false;
        }
      }
    },
    select: {
      items: 'row',
      style: 'single'
    },
    autoWidth: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: "output", visible: false, searchable: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'output',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Type", data: "NoteType", class: "output", searchable: false },
      { title: "Creator", data: "CreateUser", class: "output", searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, class: "output" },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  //addTableDetailListener(noteTable);
};
