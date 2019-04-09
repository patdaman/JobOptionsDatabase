
/* ************************************************************************ */
/* ****************  Applicant Employment Admin Table  ******************** */
/* ************************************************************************ */
collapsedGroups = {};
function initSiteTable(data = []) {
  // data = null;
  if (data && Array.isArray(data)) 
    data.forEach(function (obj) {
      if (!obj.Object) obj.Object = "Site";
      if (!obj.ObjectTitle) obj.ObjectTitle = "Work Site";
    //   if (!obj.ChildObject) obj.ChildObject = "ApplicantEmploymentCode";
    //   if (!obj.SpecialtyCode) obj.SpecialtyCode = "";
    //   if (!obj.Approved) obj.Approved = false;
    //   if (!obj.Category) obj.Category = "";
    //   if (!obj.Code) obj.Code = "";
    //   if (!obj.Note) obj.Note = "";
    //   if (!obj.typeDescription) obj.typeDescription = "";
    //   if (!obj.codeDescription) obj.codeDescription = "";
    //   obj.typeName = (obj.typeName !== '') ? obj.typeName : obj.codeDescription;
    //   obj.codeDescription = (obj.codeDescription !== '') ? obj.codeDescription : obj.typeDescription;
    //   if (!obj.Description) obj.Description = obj.codeDescription;
    //   if (!obj.Description) obj.Description = obj.typeDescription;
    //   if (!obj.id) {
    //     obj.id = obj.ApplicantDisabilityId;
    //     obj.Object = "ApplicantEmploymentCode";
    //   };
    });
  jQuery('#site-table').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollX: true,
    pageLength: -1,
    select: {
      style: 'single',
      selector: 'tr>td:nth-child(1), tr>td:nth-child(3)',
      items: 'cell',
    },
    rowGroup: {
      dataSrc: 'typeName',
      startRender: rowGroupRender(),
    },
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-control" /* className: "detail-button" */ },
      { title: "ApplicantId", data: "ApplicantId", className: "export", visible: false, orderable: false, searchable: false },
      { title: "Description", data: "Description", className: "export", orderable: true, searchable: true },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em", className: "edit-button" },
      {
        title: "Approved", data: "Approved", className: "export", orderable: false, searchable: false,
        render: function (data, type, row, meta) {
          return data === true ? '&#10004;' : '';
        }
      },
      { title: "Employment Type", data: "typeDescription", className: "export", orderable: true, searchable: true, visible: false },
      { title: "Type", data: "typeName", orderable: true, searchable: true, visible: false },
      { title: "Category", data: "codeCategory", className: "export", orderable: true, searchable: true },
      {
        title: "Last Modified",
        data: "ModifyDate",
        type: "date",
        orderable: true,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: "export", orderable: false, searchable: false, visible: false },
      {
        title: "Date Created",
        data: "CreateDate",
        type: "date",
        orderable: true,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
        visible: false,
      },
      { title: "Created By", data: "CreateUser", className: "export", orderable: false, searchable: false, visible: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(40) },
      { title: "Note", data: "Note", searchable: true, visible: false, className: "export" },
      { title: "Code", data: "codeCode", className: "export", orderable: true, searchable: true, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Site', adminAddForms['site']);
      tableSelectListener(this.DataTable(), 'editSite');
      initRowGroupExpand(this.DataTable());
    }
  });
};
function editSite(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `${data.name ? data.name : 'Edit Site'}`;
  displayEditModal(title, adminEditForms['site'], 'Site', id);
};