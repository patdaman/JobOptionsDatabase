/* ************************************************************************ */
/* *****  DataTable Grid for Admin Page - Applicant Search Accordion  ***** */
/* ************************************************************************ */
function initApplicantSearch(data) {
    jQuery('#manage-employee').DataTable({
      data: data,
      dom: '<lf <t>ipS>',
      paging: true,
      pageLength: 10,
      lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
      orderMulti: true,
      stateSave: true,
      scrollX: true,
      colReorder: {
        fixedColumnsLeft: 3
      },
      select: {
        style: 'single',
        selector: 'tr>td:nth-child(1), tr>td:nth-child(3)',
        items: 'cell',
      },
      rowReorder: {
        dataSrc: 'seq',
        selector: 'tr>td:nth-child(2)'
      },
      autoWidth: true,
      filter: true,
      info: true,
      columns: [
        { title: "seq", data: "seq", searchable: false, visible: false },
        { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
        { title: "#", data: "ApplicantId", className: "export reorder" },
        { data: null, "defaultContent": "<button>Edit</button>", orderable: false, searchable: false, width: "1em", className: "edit-button" },
        {
          title: "Name", className: "nameField export", searchable: true, orderable: true,
          render: function (data, type, row, meta) {
            return getFullName(row["FirstName"], row["MiddleName"], row["LastName"]);
          },
        },
        { title: "Application #", data: "ApplicationId", visible: false, searchable: false, className: "export" },
        { title: "Phone Number", type: "phoneNumber", data: "PhoneNumbers", searchable: false, className: "phoneField", render: jQuery.fn.dataTable.render.ellipsis(20) },
        { title: "Phone Number", type: "phoneNumber", data: "PhoneNumbers", orderable: false, searchable: true, className: "phoneField export", visible: false },
        { title: "Email", data: "Email", orderable: false, className: "export" },
        { title: "Disabled", data: "Disabled", searchable: false, orderable: false, className: "export" },
        {
          title: "Application Date",
          data: "ApplicationDate",
          type: "date",
          render: function (data, type, row, meta) {
            return getFormattedDate(data);
          },
          className: "export"
        },
        { title: "Disability", data: "DisabilityTypes", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
        { title: "Disability", data: "DisabilityTypes", searchable: true, orderable: false, className: "export", visible: false },
        { title: "Codes", data: "DisabilityCodes", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
        { title: "Codes", data: "DisabilityCodes", searchable: true, orderable: false, className: "export", visible: false },
        {
          title: "Date Available", data: "AvailableDate", type: "date",
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
      // order: (['ApplicationDate', 'asc'], ['AvailableDate', 'asc'], ['ApplicantId', 'asc']),
      initComplete: function () {
        addFiltersToColumns(this.api());
        tableSelectListener(this.DataTable(), 'editApplicant');
        addSelectTableButtons(this.DataTable());
        this.DataTable().columns.adjust();
      },
    });
  };
  function addFiltersToColumns(tableApi) {
    tableApi.columns([9, 17, 20]).every(function () {
      let column = this;
      let select = jQuery('<select><option value="">All</option></select>')
        .appendTo(jQuery(column.header()))
        .on('change', function () {
          let val = jQuery.fn.dataTable.util.escapeRegex(
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
  };
  function handleAdminEditApplicantResponse(args = []) {
    jQuery("table[id$='-table']").each(function () {
      let tableId = jQuery(this).attr('id');
      let tableObject = dashToPascalCase(tableId.replace('-table', ''));
      populateDataTable(tableId, tableObject);
    });
  };
  function addSelectTableButtons(selectTable) {
    new jQuery.fn.dataTable.Buttons(selectTable, {
      buttons: [
        {
          text: 'Display Column',
          extend: 'colvis',
          columns: ':gt(0)'
        },
        {
          text: 'Clear Sorting',
          action: function (e, dt, node, config) {
            dt.order([0, 'asc']).draw();
          }
        },
        {
          text: 'Reset Table',
          action: function (e, dt, node, config) {
            dt.state.clear();
            populateDataTable('applicant-search', 'vi_ApplicantSearch');
          }
        },
        {
          text: 'Export',
          extend: 'collection',
          autoClose: true,
          buttons: [
            {
              extend: 'excel',
              text: 'Excel',
              exportOptions: {
                columns: '.export',
                modifier: {
                  title: 'Applicants',
                  createEmptyCells: 'true',
                  fieldSeparator: exportVars['fieldSeparator']
                }
              },
              filename: function () {
                return "Applicants_" + getFormattedDate(new Date(Date.now()), true);
              },
            },
            {
              extend: 'pdf',
              text: 'PDF',
              exportOptions: {
                columns: '.export',
                modifier: {
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
              title: null,
              fieldSeparator: exportVars['fieldSeparator'],
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
          ],
        }
      ]
    });
    selectTable.buttons().container()
      .appendTo(jQuery('.dataTables_length'), selectTable.table().container());
  };
  function editApplicant(row) {
    adminVars['applicantId'] = row.data()['ApplicantId'];
    adminVars['applicationId'] = row.data()['ApplicationId'];
    let body = {};
    body['action'] = 'set_applicant_data';
    body['applicant-id'] = row.data()['ApplicantId'];
    body['application-id'] = row.data()['ApplicationId'];
    body['element-id'] = 'applicant-search';
    let args = getDefaultAjaxBody();
    args['element'] = jQuery("#applicant-search_wrapper")[0];
    args['body'] = body;
    ajaxRequest(args);
  };
  