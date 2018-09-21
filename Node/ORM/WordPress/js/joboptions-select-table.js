/* ************************************************************************ */
/* *****  DataTable Grid for Admin Page - Applicant Search Accordion  ***** */
/* ************************************************************************ */
function initApplicantSearch(data) {
  if (jQuery.fn.DataTable.isDataTable('#applicant-search')) {
    jQuery('#applicant-search').DataTable().destroy();
  };
  var table = jQuery('#applicant-search').DataTable({
    data: data,
    dom: '<lBf <t>ipS>',
    buttons: [
      {
        extend: 'excel',
        text: 'Export Excel',
        exportOptions: {
          columns: '.export',
          modifier: {
            page: 'current',
            title: 'Applicants',
            createEmptyCells: 'true'
          }
        },
        filename: function () {
          return "Applicants_" + getFormattedDate(new Date(Date.now()), true);
        },
      },
      {
        extend: 'pdf',
        text: 'Export PDF',
        exportOptions: {
          columns: '.export',
          modifier: {
            page: 'current',
            orientation: 'landscape',
            pageSize: 'LETTER',
            title: 'Applicants'
          }
        },
        filename: function () {
          return "Applicants_" + getFormattedDate(new Date(Date.now()), true);
        },
      },
      {
        extend: 'copy',
        text: 'Copy',
        title: 'Applicants',
        // fieldSeparator: '\t',
        exportOptions: {
          columns: '.export',
        },
      },
      {
        extend: 'print',
        text: 'Print',
        exportOptions: {
          columns: '.export',
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
    responsive: {
      details: {
        display: jQuery.fn.dataTable.Responsive.display.modal({
          header: function (row) {
            var data = row.data();
            return `${data.ApplicantId} - ${getFullName(data.FirstName, data.MiddleName, data.LastName)}`;
          }
        }),
        renderer: function (api, rowIdx, columns) {
          var data = jQuery.map(columns, function (col, i) {
            var columnNodes = api.columns(i).nodes()[0];
            var className = columnNodes[0].classList;
            return className.contains('export') ?
              '<tr data-dt-row="' + col.rowIndex + '" data-dt-column="' + col.columnIndex + '">' +
              '<td>' + col.title + ':' + '</td> ' +
              '<td>' + col.data + '</td>' +
              '</tr>' :
              '';
          }).join('');
          return data ?
            jQuery('<table/>').append(data) :
            false;
        }
      }
    },
    paging: true,
    pageLength: 10,
    lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
    // orderMulti: true,
    ordering: true,
    stateSave: true,
    scrollX: true,
    colReorder: {
      fixedColumnsLeft: 2
    },
    select: { style: 'single', selector: 'tr>td:nth-child(2)' },
    rowReorder: {
      dataSrc: 'seq',
      // update: false,
      selector: 'td:nth-child(3), :nth-child(4)'
    },
    autoWidth: true,
    filter: true,
    info: true,
    columns: [
      { title: "seq", data: "seq", searchable: false, visible: false },
      { title: "#", data: "ApplicantId", responsivePriority: 1, className: "export" },
      { data: null, "defaultContent": "<button>Edit</button>", orderable: false, responsivePriority: 2, searchable: false, width: "1em" },
      {
        title: "Name",
        name: "Name",
        render: function (data, type, row, meta) {
          return getFullName(row["FirstName"], row["MiddleName"], row["LastName"]);
        },
        className: "nameField export reorder",
        responsivePriority: 3
      },
      { title: "Application #", data: "ApplicationId", visible: false, searchable: false, className: "export" },
      { title: "Phone Number", type: "phoneNumber", data: "PhoneNumbers", orderable: false, className: "phoneField export" },
      { title: "Email", data: "Email", orderable: false, className: "export" },
      { title: "Disabled", data: "Disabled", searchable: false, orderable: false, className: "export", responsivePriority: 4 },
      {
        title: "Application Date",
        data: "ApplicationDate",
        type: "date",
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
        className: "export",
        responsivePriority: 5
      },
      {
        title: "Date Available",
        data: "AvailableDate",
        type: "date",
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
        className: "export"
      },
      { title: "Consideration", data: "Consideration", orderable: false, className: "export" },
      { title: "Status", data: "CurrentStatus", orderable: false, className: "export" },
      { title: "Positions", data: "Positions", orderable: false, className: "export" },
      { title: "Locations", data: "Locations", orderable: false, className: "export" },
      { title: "Hired", data: "Hired", searchable: false, orderable: false, className: "export" },
      { title: "Previously Applied", data: "PreviousApplication", searchable: false, orderable: false, className: "export" },
      { title: "Previously Employed", data: "PreviousEmployment", searchable: false, orderable: false, className: "export" },
      { title: "Previously Terminated", data: "PreviouslyTerminated", searchable: false, orderable: false, className: "export" },
      { title: "Can Work", data: "CanWork", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Is 18", data: "is18", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Rehab", data: "Rehabilitation", searchable: false, orderable: false, className: "export" },
      { title: "Public Assistance", data: "IsPublicAssistance", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Driver's License", data: "HasDriversLicense", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "State Licensed", data: "DriversLicenseState", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "On Call", data: "OnCall", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Temporary", data: "Temporary", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Weekends", data: "Weekends", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Evenings", data: "Evenings", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Nights", data: "Nights", searchable: false, orderable: false, visible: false, className: "export" },
      { title: "Referral", data: "Referral", searchable: false, orderable: false, className: "export" },
      { title: "ApplicantId", data: "ApplicantId", visible: false, searchable: false },
      { title: "Object", data: "Object", visible: false, searchable: false },
    ],
    // order: (['ApplicationDate', 'asc'], ['AvailableDate','asc'], ['ApplicantId', 'asc']),
    initComplete: function () {
      console.log(this.api().columns());
      this.api().columns([7, 9, 10, 11, 12, 13]).every(function () {
        var column = this;
        var select = jQuery('<select><option value="">All</option></select>')
          .appendTo(jQuery(column.header()))
          .on('change', function () {
            var val = jQuery.fn.dataTable.util.escapeRegex(
              jQuery(this).val()
            );
            column
              .search(val ? '^' + val + 'jQuery' : '', true, false)
              .draw();
          });
        column.data().unique().sort().each(function (d, j) {
          select.append('<option value="' + d + '">' + d + '</option>')
        });
      });
    },
  });
  addSelectTableListener(table);
  return table;
};
function addSelectTableListener(selectTable) {
  selectTable.on('select', function (e, dt, type, indexes) {
    var applicantId = selectTable.rows(indexes).data().pluck('ApplicantId')[0];
    var applicationId = selectTable.rows(indexes).data().pluck('ApplicationId')[0];
    var body = {};
    body['action'] = 'set_applicant_data';
    body['applicant-id'] = applicantId;
    body['application-id'] = applicationId;
    body['element-id'] = 'applicant-search';
    var args = getDefaultAjaxBody();
    args['element'] = jQuery("#applicant-search_wrapper")[0];
    args['body'] = body;
    ajaxRequest(args);
  });
};