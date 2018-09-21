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
function addRowDetailModal (dataTable, headerTitle) {
  new jQuery.fn.dataTable.Responsive( dataTable, {
    details: {
      display: jQuery.fn.dataTable.Responsive.display.modal({
        header: function (row) {
          var data = row.data();
          var applicantId = '';
          if (data.ApplicantId)
            applicantId = `Applicant #${data.ApplicantId} - `;
          if (!headerTitle)
            if (data.object)
              headerTitle = data.object;
          	else
              headerTitle = '';
          return `${applicantId}${headerTitle}`;
        }
      }),
      renderer: function (api, rowIdx, columns) {
        var data = jQuery.map(columns, function (col, i) {
          var columnNodes = api.columns(i).nodes()[0];
          var className = columnNodes[0].classList;
          return className.contains('export') ?
            '<tr data-dt-row="'+col.rowIndex+'" data-dt-column="'+col.columnIndex+'">'+
            '<td>'+col.title+':'+'</td> '+
            '<td>'+col.data+'</td>'+
            '</tr>' :
          	'';
        }).join('');
        return data ?
          jQuery('<table/>').append(data):false;
      }
    }
  });
  addDetailButtonToTables();
};

function addDetailButtonToTables() {
  jQuery(".dataTable").addClass("collapsed");
};

function addButtons(dataTable, formShortcode) {
  dataTable.button().add( 0, {
    text: 'Add',
    action: function ( e, dt, button, config ) {
	  loadForm('add-object-popup', formShortcode);
      jQuery('#pum-2105').popmake('open');
  	},
  });
  dataTable.button().add( 1, {
    extend: 'copy',
    text: 'Copy',
    // title: '???????',
    // fieldSeparator: '\t',
    exportOptions: {
      columns: '.export',
    },
  });
};
/* ************************************************************************ */
/* ********  Hide all DataTable Grids before selecting applicant  ********* */
/* *****************  and initializing the tables  ************************ */
/* ************************************************************************ */
jQuery(document).ready(function($) {
  $('#applicant-search').css('display','none');
  $('#applicant-status').css('display','none');
  $('#applicant-document').css('display','none');
  $('#applicant-interview').css('display','none');
  $('#applicant-note').css('display','none');
});
/* ************************************************************************** */
/* ******************  Applicant Alternate Name Table  ********************** */
/* ************************************************************************** */
function initApplicantAlternateName(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-alternate-name')) {
    jQuery('#applicant-alternate-name').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "ApplicantId":"", "ApplicationId":"" };
  var alternateNameTable = jQuery('#applicant-alternate-name').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollCollapse: true,
    select: { style: 'single', selector: 'tr>td:nth-child(1)' },
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: 'export', visible: false },
      { "targets": -1, "data": null, "defaultContent": "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "First Name", data: "FirstName", class: 'export', orderable: false },
      { title: "Middle Name", data: "MiddleName", class: 'export', orderable: false },
      { title: "Last Name", data: "LastName", class: 'export', orderable: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', orderable: true, class: 'export',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Date Modified", data: "ModifyDate", type: "date", order: 'asc', orderable: true, class: 'export',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "User Modified", data: "ModifyUser", class: 'export' },
      { title: "Object", defaultContent: "AlternateName", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(alternateNameTable, '[contact-form-7 id="1165" title="Application 11 - Names"]');
  editApplicantAlternateNameListener(alternateNameTable);
};
function editApplicantAlternateNameListener(alternateNameTable) {
  jQuery('#alternate-name tbody').on( 'click', 'button', function () {
    var data = phoneTable.row( jQuery(this).parents('tr') ).data();
    loadForm('edit-object','[contact-form-7 id="1165" title="Application 11 - Names"]');
    jQuery('#pum-2079').popmake('open');
  });
};
/* ************************************************************************** */
/* ******************  Applicant Contact Phone Table  *********************** */
/* ************************************************************************** */
function initApplicantPhone(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-phone')) {
    jQuery('#applicant-phone').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var phoneTable = jQuery('#applicant-phone').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollCollapse: true,
    select: { style: 'single', selector: 'tr>td:nth-child(2)' },
    filter: true,
    columns: [
	  { title: "Type", data: "PhoneType", class: 'export', orderable: false, width: "1em" },
      { "targets": -1, "data": null, "defaultContent": "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "ApplicantId", data: "ApplicantId", class: 'export not-selectable', visible: false },
      { title: "Phone Number", data: "PhoneNumber", class: 'export', orderable: false },
      { title: "Extension", data: "Extension", class: 'export', orderable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Notes", data: "Note", orderable: false, searchable: true, class: "export", visible: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', class: 'export', visible: false,
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Object", defaultContent: "Phone", visible: false },
      // { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(phoneTable, '[contact-form-7 id="2103" title="Application 99 - Add Phone"]');
  editPhoneListener(phoneTable);
  addRowDetailModal(phoneTable, 'Contact Phone');
};
function editPhoneListener(phoneTable) {
  jQuery('#applicant-phone tbody').on( 'click', 'button', function () {
    var data = phoneTable.row( jQuery(this).parents('tr') ).data();
    console.log(data);
    var phoneType = data.PhoneType ? data.PhoneType : '';
    jQuery('#pum-2079 .pum-title').empty().append(`Edit ${phoneType} Phone`);
    loadForm('edit-object-popup','[contact-form-7 id="266" title="Applicant View / Edit 03 - Contact Phone"]');
    jQuery('#pum-2079').popmake('open');
  });
};
/* ************************************************************************** */
/* ******************  Applicant Status Admin Table  ************************ */
/* ************************************************************************** */
function initApplicantStatus(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-status')) {
    jQuery('#applicant-status').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var statusTable = jQuery('#applicant-status').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollCollapse: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", visible: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'export',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      //{ title: "Consideration", data: "Consideration" },
      { title: "Status", data: "Status", class: 'export', orderable: false },
      { title: "Note", data: "Note", orderable: false, render: jQuery.fn.dataTable.render.ellipsis(50) },
      { title: "Notes", data: "Note", class: 'export', orderable: false, searchable: true, visible: false },
      //{ title: "Position", data: "Positions" },
      //{ title: "Location", data: "Locations" },
      //{ title: "Hired", data: "Hired", searchable: false, orderable: false },
      { title: "ApplicationId", data: "ApplicationId", class: 'export', visible: false },
      { title: "Object", defaultContent: "ApplicantStatus", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(statusTable, '[contact-form-7 id="1655" title="Applicant Manage 01 - Status"]');
  addRowDetailModal(statusTable, 'Applicant Status');
};
/* ************************************************************************** */
/* ******************  Applicant Document Admin Table  ********************** */
/* ************************************************************************** */
function initApplicantDocument(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-document')) {
    jQuery('#applicant-document').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
    data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "OwnerType":"Applicant", "CreateDate":"", "CreateUser":"" };
  var documentTable = jQuery('#applicant-document').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    select: { style: 'single', selector: 'tr>td:nth-child(3)' },
    autoWidth: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: 'export', searchable: false, visible: false },
	  { title: "Type", data: "DocumentType", width: "1em" },
      { "targets": -1, "data": null, "defaultContent": "<button>View</button>", searchabe: false, orderable: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'export',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Title", data: "FileName" },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false, searchable: false },
      { title: "Object", defaultContent: "Document", visible: false, searchable: false },
    ],
  });
  addButtons(documentTable, '[contact-form-7 id="20" title="Application 02 - Documents"]');
  viewDocumentListener(documentTable);
};
function viewDocumentListener(documentTable) {
  jQuery('#applicant-document tbody').on( 'click', 'button', function () {
    var data = documentTable.row( jQuery(this).parents('tr') ).data();
    var fileName = data.FileName;
    var documentId = data.id;
    var popUpWindow = window.open("","", "height=500,width=720,menubar=no");
    var test1 = apiUrl + "Docs/disability/download/" + fileName; 
    popUpWindow.document.write('<iframe allowTransparency="true" frameborder="0" scrolling="yes" style="width:100%;height:100%" src="'+test1+'" type= "text/javascript"></iframe>');
  });
};
/* ************************************************************************** */
/* ******************  Applicant Interview Admin Table  ********************* */
/* ************************************************************************** */
function initApplicantInterview(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-interview')) {
    jQuery('#applicant-interview').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
    data = { "id":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "NoteType":"Interview", "CreateDate":"", "CreateUser":"" };
  var interviewTable = jQuery('#applicant-interview').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    autoWidth: true,
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: "export", visible: false, searchable: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'export',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Interviewer", data: "CreateUser", class: "export", searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, class: "export" },
      { title: "Type", data: "NoteType", visible: false, searchable: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(interviewTable, '[contact-form-7 id="1656" title="Applicant Manage 03 - Interview"]');
  addRowDetailModal(interviewTable, 'Interview Notes');
};
/* ************************************************************************ */
/* ******************  Applicant Notes Admin Table  *********************** */
/* ************************************************************************ */
function initApplicantNote(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-note')) {
    jQuery('#applicant-note').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "NoteType":"Applicant", "CreateDate":"", "CreateUser":"" };
  var noteTable = jQuery('#applicant-note').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    select: { items: 'row', style: 'multiple' },
    filter: true,
    columns: [
      { title: "ApplicantId", data: "ApplicantId", class: "export", visible: false, searchable: false },
      { 
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        class: 'export',
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Type", data: "NoteType", class: "export", searchable: false },
      { title: "Creator", data: "CreateUser", class: "export", searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, class: "export" },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(noteTable, '[contact-form-7 id="1681" title="Applicant Manage 04 - Notes"]');
  addRowDetailModal(noteTable, 'Applicant Notes');
};
/* ************************************************************************** */
/* ****************  Applicant Contact Education Table  ********************* */
/* ************************************************************************** */
function initApplicantEducation(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-education')) {
    jQuery('#applicant-education').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var phoneTable = jQuery('#applicant-education').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollCollapse: true,
    select: { style: 'single', selector: 'tr>td:nth-child(2)' },
    filter: true,
    columns: [
	  { title: "Type", data: "EducationType", class: 'export', orderable: false, width: "1em" },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "ApplicantId", data: "ApplicantId", class: 'export not-selectable', visible: false },

      //{ title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      //{ title: "Notes", data: "Note", orderable: false, searchable: true, class: "export", visible: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', class: 'export', visible: false,
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Object", defaultContent: "Education", visible: false },
      // { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(educationTable, '[contact-form-7 id="203"]');
  editEducationListener(educationTable);
  addRowDetailModal(educationTable, 'Education');
};
function editEducationListener(educationTable) {
  jQuery('#applicant-education tbody').on( 'click', 'button', function () {
    var data = educationTable.row( jQuery(this).parents('tr') ).data();
    console.log(data);
    var educationType = data.EducationType ? data.EducationType : '';
    jQuery('#pum-2079 .pum-title').empty().append(`Edit ${educationType}`);
    loadForm('edit-object-popup','[contact-form-7 id="1650"]');
    jQuery('#pum-2079').popmake('open');
  });
};

/* ************************************************************************** */
/* ****************  Applicant Contact Education Table  ********************* */
/* ************************************************************************** */
function initApplicantEducation(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-education')) {
    jQuery('#applicant-education').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var phoneTable = jQuery('#applicant-education').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollCollapse: true,
    select: { style: 'single', selector: 'tr>td:nth-child(2)' },
    filter: true,
    columns: [
	  { title: "Type", data: "EducationType", class: 'export', orderable: false, width: "1em" },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "ApplicantId", data: "ApplicantId", class: 'export not-selectable', visible: false },

      //{ title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      //{ title: "Notes", data: "Note", orderable: false, searchable: true, class: "export", visible: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', class: 'export', visible: false,
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Object", defaultContent: "Education", visible: false },
      // { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(educationTable, '[contact-form-7 id="203"]');
  editEducationListener(educationTable);
  addRowDetailModal(educationTable, 'Education');
};
function editEducationListener(educationTable) {
  jQuery('#applicant-education tbody').on( 'click', 'button', function () {
    var data = educationTable.row( jQuery(this).parents('tr') ).data();
    console.log(data);
    var educationType = data.EducationType ? data.EducationType : '';
    jQuery('#pum-2079 .pum-title').empty().append(`Edit ${educationType}`);
    loadForm('edit-object-popup','[contact-form-7 id="1650"]');
    jQuery('#pum-2079').popmake('open');
  });
};

/* ************************************************************************** */
/* *************  Applicant Contact Previous Employer Table  **************** */
/* ************************************************************************** */
function initApplicantPreviousEmployer(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-previous-employer')) {
    jQuery('#applicant-previous-employer').DataTable().destroy();
  };
  if (typeof(data) === 'undefined' || data.length === 0 || data === "[]")
  	data = { "id":"", "Status":"", "Note":"", "ApplicantId":"", "ApplicationId":"", "CreateDate":"", "CreateUser":"" };
  var phoneTable = jQuery('#applicant-previous-employer').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollCollapse: true,
    select: { style: 'single', selector: 'tr>td:nth-child(2)' },
    filter: true,
    columns: [
	  { title: "Type", data: "PreviousEmployerType", class: 'export', orderable: false, width: "1em" },
      { "targets": -1, "data": null, "defaultContent": "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "ApplicantId", data: "ApplicantId", class: 'export not-selectable', visible: false },

 	  { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Notes", data: "Note", orderable: false, searchable: true, class: "export", visible: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', class: 'export', visible: false,
        render: function (data, type, row, meta) { 
          return getFormattedDate(data); 
        },
      },
      { title: "Object", defaultContent: "PreviousEmployer", visible: false },
      // { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
  });
  addButtons(previousEmployerTable, '[contact-form-7 id="203"]');
  editPreviousEmployerListener(previousEmployerTable);
  addRowDetailModal(previousEmployerTable, 'PreviousEmployer');
};
function editPreviousEmployerListener(previousEmployerTable) {
  jQuery('#applicant-previous-employer tbody').on( 'click', 'button', function () {
    var data = previousEmployerTable.row( jQuery(this).parents('tr') ).data();
    console.log(data);
    var previousEmployerType = data.PreviousEmployerType ? data.PreviousEmployerType : '';
    jQuery('#pum-2079 .pum-title').empty().append(`Edit ${previous-employerType}`);
    loadForm('edit-object-popup','[contact-form-7 id="1650"]');
    jQuery('#pum-2079').popmake('open');
  });
};
