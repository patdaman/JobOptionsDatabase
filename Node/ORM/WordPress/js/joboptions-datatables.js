/* ************************************************************************** */
/* ******************  Applicant Alternate Name Table  ********************** */
/* ************************************************************************** */
function initApplicantAlternateNameTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "AlternateName",
        obj.ObjectTitle ="Alternate Name Detail";
      };
    });
  jQuery('#applicant-alternate-name-table').DataTable({
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
    columns: [
      { data: null, defaultContent: '<button>+</button>', searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, orderable: false, visible: true },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "First Name", data: "FirstName", className: 'export', orderable: false },
      { title: "Middle Name", data: "MiddleName", className: 'export', orderable: false },
      { title: "Last Name", data: "LastName", className: 'export', orderable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Notes", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date Created", data: "CreateDate", type: "date", order: 'asc', orderable: true, className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      {
        title: "Date Modified", data: "ModifyDate", type: "date", order: 'desc', orderable: true, className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "User Modified", data: "ModifyUser", className: 'export' },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Name', adminAddForms['alternateName']);
      tableSelectListener(this.DataTable(), 'editAlternateName');
    }
  });
};
function editAlternateName(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit ${data.FirstName + data.MiddleName + data.LastName ? getFullName(data.FirstName, data.MiddleName, data.LastName) : 'Name'}`;
  displayEditModal(title, editForms['alternateName'], 'AlternateName', id);
};
/* ************************************************************************** */
/* ******************  Applicant Contact Phone Table  *********************** */
/* ************************************************************************** */
function initApplicantPhoneTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Phone",
        obj.ObjectTitle ="Contact Phone Detail";
      };
    });
  jQuery('#applicant-phone-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, orderable: false, visible: false },
      { title: "Type", data: "PhoneType", className: 'export', orderable: false, width: "1em" },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Active", data: "Active", class: "export", orderable: true, searchable: false },
      { title: "Phone Number", data: "PhoneNumber", className: 'export', orderable: false },
      { title: "Extension", data: "Extension", className: 'export', orderable: false },
      { title: "OwnerType", data: "OwnerType", orderable: false, searchable: false, visible: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Notes", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date Last Modified", data: "ModifyDate", type: "date", order: 'desc', className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Contact Phone', adminAddForms['phone']);
      tableSelectListener(this.DataTable(), 'editPhone');
    }
  });
};
function editPhone(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit ${data.PhoneType ? data.PhoneType + ' ' : ''}Phone`;
  displayEditModal(title, editForms['phone'], 'Phone', id);
};
/* ************************************************************************** */
/* *********************  Applicant Address Table  ************************** */
/* ************************************************************************** */
function initApplicantAddressTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Address",
        obj.ObjectTitle ="Address Detail";
      };
    });
  jQuery('#applicant-address-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', visible: false },
      { title: "Type", data: "AddressType", className: 'export', orderable: false, searchable: true, width: "1em" },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Valid", data: "Active", className: 'export', orderable: true },
      { title: "Address", data: "Address1", className: 'export', searchable: true, orderable: false },
      { title: "Address 2", data: "Address2", className: 'export', searchable: true, orderable: false, visible: false },
      { title: "Address 3", data: "Address3", className: 'export', searchable: true, orderable: false, visible: false },
      { title: "City", data: "City", className: 'export', searchable: true },
      { title: "State", data: "State", className: 'export', searchable: true },
      { title: "Zip", data: "PostalCode", className: 'export', searchable: true },
      {
        title: "Date Last Modified", data: "ModifyDate", type: "date", order: "desc", className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Address', adminAddForms['address']);
      tableSelectListener(this.DataTable(), 'editAddress');
    }
  });
};
function editAddress(row) {
  let data = row.data();
  let title = `Edit ${data.AddressType ? data.AddressType + ' ' : ''}Address`;
  displayEditModal(title, editForms['address']);
};
/* ************************************************************************** */
/* ********************  Applicant Education Table  ************************* */
/* ************************************************************************** */
function initApplicantEducationTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Education",
        obj.ObjectTitle = "Education Detail";
      };
    });
  jQuery('#applicant-education-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, visible: false },
      { title: "Level", data: "Level", className: 'export', orderable: false, searchable: false },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },

      { title: "Graduated", data: "Graduate", orderable: false, searchable: true, className: "export" },
      { title: "Address", data: "Address", searchable: false, className: "export", visible: false },
      { title: "City", data: "City", searchable: true, className: "export", visible: false },
      { title: "State", data: "State", orderable: false, searchable: true, className: "export" },
      { title: "Zip", data: "PostalCode", searchable: true, className: "export", visible: false },
      { title: "Years Attended", data: "YearsAttended", searchable: false, className: "export", visible: false },
      { title: "Subjects", data: "Subjects", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Major", data: "Major", orderable: false, searchable: true, className: "export", visible: false },
      { title: "GPA", data: "GPA", orderable: false, searchable: false, className: "export", visible: false },
      { title: "Degree", data: "DegreeType", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date Last Modified", data: "ModifyDate", type: "date", className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add School', adminAddForms['education']);
      tableSelectListener(this.DataTable(), 'editEducation');
    }
  });
};
function editEducation(row) {
  let data = row.data();
  let title = `Edit ${data.Level ? data.Level : 'School'}`;
  displayEditModal(title, editForms['education']);
};
/* ************************************************************************** */
/* *****************  Applicant Previous Employer Table  ******************** */
/* ************************************************************************** */
function initApplicantPreviousEmployerTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "PreviousEmployer",
        obj.ObjectTitle = "Previous Employer Detail";
      };
    });
  jQuery('#applicant-previous-employer-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, visible: false },
      { title: "Company Name", data: "CompanyName", className: 'export', orderable: true, searchable: true },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },

      {
        title: "Start Date", data: "StartDate", type: "date", order: 'asc', orderable: true, className: 'export', visible: true,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      {
        title: "End Date", data: "EndDate", type: "date", orderable: true, className: 'export', visible: true,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Address", data: "Address", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Address", data: "Address", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Duties", data: "Duties", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Duties", data: "Duties", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Supervisor", data: "SupervisorName", orderable: false, searchable: true, className: "export" },
      { title: "SupervisorTitle", data: "SupervisorTitle", orderable: false, searchable: true, className: "export", visible: false },
      { title: "SupervisorDepartment", data: "SupervisorDepartment", orderable: false, searchable: true, className: "export", visible: false },
      { title: "SupervisorPhone", data: "SupervisorPhone", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Can Contact", data: "CanContact", orderable: false, searchable: true, className: "export" },
      {
        title: "Date Last Modified", data: "ModifyDate", type: "date", className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Previous Employer', adminAddForms['previousEmployer']);
      tableSelectListener(this.DataTable(), 'editPreviousEmployer');
    }
  });
};
function editPreviousEmployer(row) {
  let data = row.data();
  let title = `Edit Employer ${data.CompanyName ? data.CompanyName : ''}`;
  displayEditModal(title, editForms['previousEmployer']);
};

/* ************************************************************************** */
/* ********************  Applicant References Table  ************************ */
/* ************************************************************************** */
function initApplicantReferenceTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Reference",
        obj.ObjectTitle = "Reference Detail";
      };
    });
  jQuery('#applicant-reference-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, visible: false },
      {
        title: "Name", className: "nameField export", searchable: true, orderable: true,
        render: function (data, type, row, meta) {
          return getFullName(row["FirstName"], "", row["LastName"]);
        },
      },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Phone", type: "phoneNumber", data: "PhoneNumber", orderable: false, searchable: true, className: "phoneField export" },
      { title: "Extension", data: "Extension", orderable: false, searchable: false, className: "export", visible: false },
      { title: "Email", data: "Email", className: 'export', searchable: true, visible: true },
      // { title: "Address", data: "Address", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Address", data: "Address", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Business", data: "Business", orderable: false, searchable: true, className: "export", visible: true },
      { title: "Years Acquainted", data: "YearsAcquainted", orderable: false, searchable: false, className: "export", visible: false },
      { title: "Active", data: "Active", orderable: true, searchable: false, className: "export", visible: true },
      // { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date Last Modified", data: "ModifyDate", type: "date", order: 'desc', className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      // { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New', adminAddForms['reference']);
      tableSelectListener(this.DataTable(), 'editReference');
    }
  });
};
function editReference(row) {
  let data = row.data();
  let title = `Edit Reference ${data.Name ? '- ' + data.Name : ''}`;
  displayEditModal(title, editForms['reference']);
};
/* ************************************************************************** */
/* *****************  Applicant Emergency Contact Table  ******************** */
/* ************************************************************************** */
function initApplicantEmergencyContactTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "EmergencyContact",
        obj.ObjectTitle = "Emergency Contact Detail";
      };
    });
  jQuery('#applicant-emergency-contact-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, visible: false },
      {
        title: "Name", className: "nameField export", searchable: true, orderable: true,
        render: function (data, type, row, meta) {
          return getFullName(row["FirstName"], "", row["LastName"]);
        },
      },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Conservator", data: "isConservator", orderable: true, searchable: false, className: "export" },
      { title: "Phone", type: "phoneNumber", data: "PhoneNumber", orderable: false, className: "phoneField export" },
      { title: "Address", data: "Address", orderable: false, searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Address", data: "Address", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Relationship", data: "Relationship", orderable: false, searchable: true, className: "export" },
      { title: "Email", data: "Email", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date Last Modified", data: "ModifyDate", type: "date", order: 'desc', className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New', adminAddForms['emergencyContact']);
      tableSelectListener(this.DataTable(), 'editEmergencyContact');
    }
  });
};
function editEmergencyContact(row) {
  let data = row.data();
  let title = `Edit Emergency Contact ${data.FirstName + data.LastName ? '- ' + getFullName(data.FirstName, '', data.LastName) : ''}`;
  displayEditModal(title, editForms['emergencyContact']);;
};
/* ************************************************************************** */
/* ******************  Applicant Status Admin Table  ************************ */
/* ************************************************************************** */
function initApplicantStatusTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "ApplicantStatus",
        obj.ObjectTitle = "Status Detail";
      };
    });
  jQuery('#applicant-status-table').DataTable({
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
    filter: true,
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", visible: false },
      {
        title: "Current", data: "Status", className: "export", orderable: false, searchable: false,
        render: function (data, type, row, meta) {
          return meta.row === 0 ? '&#10004;' : '';
        }
      },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Status", data: "Status", className: 'export', orderable: false },
      {
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'desc',
        orderable: false,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      {
        title: "Until",
        data: "EndDate",
        type: "date",
        orderable: false,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      //{ title: "Consideration", data: "Consideration" },
      { title: "Note", data: "Note", orderable: false, render: jQuery.fn.dataTable.render.ellipsis(50) },
      { title: "Notes", data: "Note", className: 'export', orderable: false, searchable: true, visible: false },
      //{ title: "Position", data: "Positions" },
      //{ title: "Location", data: "Locations" },
      //{ title: "Hired", data: "Hired", searchable: false, orderable: false },
      { title: "Added By", data: "CreateUser", className: 'export', orderable: false, searchable: false, visible: false },
      { title: "ApplicationId", data: "ApplicationId", className: 'export', visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Update Status', adminAddForms['status']);
      tableSelectListener(this.DataTable(), 'editStatus');
    }
  });
};
function editStatus(row) {
  let data = row.data();
  let title = `Edit Status ${data.StatusType ? data.StatusType + ' ' : ''}Detail`;
  displayEditModal(title, adminEditForms['status']);
};
/* ************************************************************************** */
/* ******************  Applicant Document Admin Table  ********************** */
/* ************************************************************************** */
function initApplicantDocumentTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Document",
        obj.ObjectTitle = "Documents";
      };
    });
  jQuery('#applicant-document-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>View</button>", searchable: false, orderable: false },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, visible: false },
      { title: "Type", data: "DocumentType", width: "1em", className: 'export' },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      {
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Title", data: "FileName" },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "Added By", data: "CreateUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
      { title: "Object", defaultContent: "Document", visible: false, searchable: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New Document', adminAddForms['document']);
      // viewDocumentListener(this.DataTable());
      documentTableSelectListener(this.DataTable());
    }
  });
};
function viewDocumentListener(documentTable) {
  jQuery('#applicant-document-table tbody').on('click', 'button', function () {
    var cell = documentTable.cell( { selected: true } );
    console.log(cell);
    // var idx = table.cell('.selected', 0).index();
    let row = documentTable.row(jQuery(this).parents('tr'));
    if (idx[0].column < 2)
      return editDocument(row);
    let data = row.data();
    let fileName = data.FileName;
    let documentId = data.id;
    let popUpWindow = window.open("", "", "height=500,width=720,menubar=no");
    let test1 = apiUrl + "Docs/disability/download/" + fileName;
    popUpWindow.document.write('<iframe allowTransparency="true" frameborder="0" scrolling="yes" style="width:100%;height:100%" src="' + test1 + '" type= "text/javascript"></iframe>');
  });
};
function documentTableSelectListener(table) {
  table.on('select', function (e, dt, type, indexes) {
    let row = table.row(indexes[0].row);
    let columnNumber = indexes[0].column;
    table.cell(indexes).deselect();
    if (debug)
      console.log(`Column Number Selected: ${columnNumber}`);
    if (columnNumber < 2) {
      let data = row.data();
      let fileName = data.FileName;
      let documentId = data.id;
      let popUpWindow = window.open("", "", "height=500,width=720,menubar=no");
      let test1 = apiUrl + "Docs/disability/download/" + fileName;
      popUpWindow.document.write('<iframe allowTransparency="true" frameborder="0" scrolling="yes" style="width:100%;height:100%" src="' + test1 + '" type= "text/javascript"></iframe>');
    } else {
      editDocument(row);
    };
  });
};
function editDocument(row) {
  let data = row.data();
  let documentType = data.DocumentType ? data.DocumentType : '';
  jQuery('#pum-2079 .pum-title').empty().append(`Edit ${documentType} Document`);
  loadForm('edit-object-popup', '[contact-form-7 id="266"]');
  jQuery('#pum-2079').popmake('open');
};
/* ************************************************************************** */
/* ******************  Applicant Interview Admin Table  ********************* */
/* ************************************************************************** */
function initApplicantInterviewTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "ApplicantInterview",
        obj.ObjectTitle = "Interview Details";
      };
    });
  jQuery('#applicant-interview-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: "export", visible: false, searchable: false },
      {
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Question", data: "QuestionType", searchable: true, orderable: true, className: "export" },
      { title: "Interviewer", data: "Interviewer", className: "export", orderable: true, searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, className: "export" },
      { title: "Added By", data: "CreateUser", className: 'export', searchable: false, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New Interview', adminAddForms['interview']);
      tableSelectListener(this.DataTable(), 'editInterview');
    }
  });
};
function editInterview(row) {
  let data = row.data();
  let title = `Edit Interview ${data.QuestionType ? data.QuestionType + ' ' : ''}Detail`;
  displayEditModal(title, adminEditForms['interview']);
};
/* ************************************************************************ */
/* ******************  Applicant Notes Admin Table  *********************** */
/* ************************************************************************ */
function initApplicantNoteTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Note",
        obj.ObjectTitle = "Note Detail";
      };
    });
  jQuery('#applicant-note-table').DataTable({
    data: data,
    dom: '<Bf<t>>',
    buttons: [],
    scrollX: true,
    pageLength: -1,
    select: {
      style: 'single',
      selector: 'tr>td:nth-child(1)',
      items: 'cell',
    },
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: "export", visible: false, searchable: false },
      {
        title: "Date",
        data: "CreateDate",
        type: "date",
        order: 'asc',
        orderable: true,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Type", data: "NoteType", className: "export", searchable: false },
      { title: "Added By", data: "CreateUser", className: "export", searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, className: "export" },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New Note', adminAddForms['note']);
      tableSelectListener(this.DataTable());
    }
  });
};
/* ************************************************************************ */
/* **************  Applicant Disabilities Admin Table  ******************** */
/* ************************************************************************ */
function initApplicantDisabilityTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) { {}
        obj.Object = "ApplicantDisability",
        obj.ObjectTitle = "ApplicantDisability";
      };
    });
  jQuery('#applicant-disability-table').DataTable({
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
    columns: [
      { data: null, defaultContent: "<button>+</button>", searchable: false, orderable: false, width: "1em", className: "detail-control" /* className: "detail-button" */ },
      { title: "ApplicantId", data: "ApplicantId", className: "export", visible: false, orderable: false, searchable: false },
      { title: "Type", data: "DisabilityType", className: "export", orderable: true, searchable: true },
      // { title: "Code", data: "DisabilityCode", className: "export", orderable: true, searchable: true },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em", className: "edit-button" },
      {
        title: "Approved", data: "Approved", className: "export", orderable: false, searchable: false,
        render: function (data, type, row, meta) {
          // return data === 1 ? '&#10004;' : '';
          return data === true ? '&#10004;' : '';
        }
      },
      {
        title: "Date Modified",
        data: "ModifyDate",
        type: "date",
        orderable: true,
        className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Modified By", data: "ModifyUser", className: "export", orderable: false, searchable: false },
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
      { title: "Added By", data: "CreateUser", className: "export", orderable: false, searchable: false, visible: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, className: "export" },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Disability Code', adminAddForms['disabilityCode']);
      // tableSelectListener(this.DataTable());
      tableSelectListener(this.DataTable(), 'editDisabilityRow', true);
    }
  });
};
function editDisabilityRow(row) {
  let data = row.data();
  let title = `Edit Disability ${data.DisabilityCode ? data.DisabilityCode + ' ' : ''} ${data.DisabilityType ? '- ' + data.DisabilityType : ''} `;
  displayEditModal(title, adminEditForms['disability']);
};
