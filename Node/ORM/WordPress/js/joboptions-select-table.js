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
      responsive: {
        details: {
          display: jQuery.fn.dataTable.Responsive.display.modal({
            header: function ( row ) {
              var data = row.data();
               return `${data.ApplicantId} - ${getFullName(data.FirstName, data.MiddleName, data.LastName)}`;
            }
          }),
          // renderer: jQuery.fn.dataTable.Responsive.renderer.tableAll(),
          renderer: function ( api, rowIdx, columns ) {
            var data = jQuery.map( columns, function ( col, i ) {
              return (/[0-9a-zA-Z]/.test(col.title)) ?
              '<tr data-dt-row="'+col.rowIndex+'" data-dt-column="'+col.columnIndex+'">'+
                '<td>'+col.title+':'+'</td> '+
                '<td>'+col.data+'</td>'+
                '</tr>' :
                '';
            } ).join('');
            return data ?
              jQuery('<table/>').append( data ) :
            false;
          }
        }
      },
      paging: true,
      pageLength: 10,
      lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
      scrollX: true,
      orderMulti: true,
      scrollY: true,
        ordering: true,
      select: { style: 'single', selector: 'tr>td:nth-child(2)' },
        autoWidth: true,
      scrollCollapse: true,
        sortable: true,
        filter: true,
      info: true,
      columns: [
        { title: "#", name: "id", data: "id", className: "all detail" },
        { "targets": -1, "data": null, "defaultContent": "<button>Edit</button>", orderable: false, searchable: false, width: "1em", className: "all" },
        { 
          title: "Name",
          name: "Name",
          render: function (data, type, row, meta) { 
            return getFullName(row["FirstName"], row["MiddleName"], row["LastName"]); 
          },
          className: "nameField all detail",
        },
        { title: "Application #", data: "ApplicationId", visible: false, searchable: false, className: "detail" },
        { title: "Phone Number", type: "phoneNumber", data: "PhoneNumbers", orderable: false, className: "phoneField detail" },
        { title: "Email", data: "Email", orderable: false, className: "detail" },
        { title: "Disabled", data: "Disabled", searchable: false, orderable: false, className: "detail" },
        { 
          title: "Application Date",
          data: "ApplicationDate",
            type: "date",
            render: function(data, type, row, meta) {
                return getFormattedDate(data);
            },
          className: "detail"
        },
        { 
          title: "Date Available",
          data: "AvailableDate",
          type: "date",
          render: function(data, type, row, meta) {
              return getFormattedDate(data);
          }, 
          className: "detail"
        },
        { title: "Consideration", data: "Consideration", orderable: false, className: "detail" },
        { title: "Status", data: "CurrentStatus", orderable: false, className: "detail" },
        { title: "Positions", data: "Positions", orderable: false, className: "detail" },
        { title: "Locations", data: "Locations", orderable: false, className: "detail" },
        { title: "Hired", data: "Hired", searchable: false, orderable: false, className: "detail" },
        { title: "Previously Applied", data: "PreviousApplication", searchable: false, orderable: false, className: "detail" },
        { title: "Previously Employed", data: "PreviousEmployment", searchable: false, orderable: false, className: "detail" },
        { title: "Previously Terminated", data: "PreviouslyTerminated", searchable: false, orderable: false, className: "detail" },
        { title: "Can Work", data: "CanWork", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Is 18", data: "is18", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Rehab", data: "Rehabilitation", searchable: false, orderable: false, className: "detail" },
        { title: "Public Assistance", data: "IsPublicAssistance", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Driver's License", data: "HasDriversLicense", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "State Licensed", data: "DriversLicenseState", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "On Call", data: "OnCall", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Temporary", data: "Temporary", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Weekends", data: "Weekends", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Evenings", data: "Evenings", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Nights", data: "Nights", searchable: false, orderable: false, visible: false, className: "detail" },
        { title: "Referral", data: "Referral", searchable: false, orderable: false, className: "detail" },
        { title: "ApplicantId", data: "ApplicantId", visible: false, searchable: false },
        { title: "Object", data: "Object", visible: false, searchable: false },
      ],
      // order: (['ApplicationDate', 'asc'], ['AvailableDate','asc'], ['ApplicantId', 'asc']),
      initComplete: function () {
        this.api().columns([6, 8, 9, 10, 11, 12]).every( function () {
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