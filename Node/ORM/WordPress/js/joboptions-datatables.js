/* ************************************************************************** */
/* ******************  Applicant Alternate Name Table  ********************** */
/* ************************************************************************** */
function initAlternateNameTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "AlternateName",
          obj.ObjectTitle = "Alternate Name Detail";
      };
    });
  jQuery('#alternate-name-table').DataTable({
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
      this.DataTable().columns.adjust();
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
function initPhoneTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Phone",
          obj.ObjectTitle = "Contact Phone Detail";
      };
    });
  jQuery('#phone-table').DataTable({
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
  jQuery('#phone-table').DataTable().columns.adjust();
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
function initAddressTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Address",
          obj.ObjectTitle = "Address Detail";
      };
    });
  jQuery('#address-table').DataTable({
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
  let id = data.id ? data.id : '';
  let title = `Edit ${data.AddressType ? data.AddressType + ' ' : ''}Address`;
  displayEditModal(title, editForms['address'], 'Address', id);
};
/* ************************************************************************** */
/* ********************  Applicant Education Table  ************************* */
/* ************************************************************************** */
function initEducationTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Education",
          obj.ObjectTitle = "Education Detail";
      };
    });
  jQuery('#education-table').DataTable({
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

      { title: "Graduated", data: "Graduated", orderable: false, searchable: true, className: "export" },
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
  let id = data.id ? data.id : '';
  let title = `Edit ${data.Level ? data.Level : 'School'}`;
  displayEditModal(title, editForms['education'], 'Education', id);
};
/* ************************************************************************** */
/* *****************  Applicant Previous Employer Table  ******************** */
/* ************************************************************************** */
function initPreviousEmployerTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "PreviousEmployer",
          obj.ObjectTitle = "Previous Employer Detail";
      };
    });
  jQuery('#previous-employer-table').DataTable({
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
  let id = data.id ? data.id : '';
  let title = `Edit Employer ${data.CompanyName ? data.CompanyName : ''}`;
  displayEditModal(title, editForms['previousEmployer'], 'PreviousEmployer', id);
};

/* ************************************************************************** */
/* ********************  Applicant References Table  ************************ */
/* ************************************************************************** */
function initReferenceTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Reference",
          obj.ObjectTitle = "Reference Detail";
      };
    });
  jQuery('#reference-table').DataTable({
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
      addButtons(this.DataTable(), 'Add New Reference', adminAddForms['reference']);
      tableSelectListener(this.DataTable(), 'editReference');
    }
  });
};
function editReference(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit Reference ${data.Name ? '- ' + data.Name : ''}`;
  displayEditModal(title, editForms['reference'], 'Reference', id);
};
/* ************************************************************************** */
/* *****************  Applicant Emergency Contact Table  ******************** */
/* ************************************************************************** */
function initEmergencyContactTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "EmergencyContact",
          obj.ObjectTitle = "Emergency Contact Detail";
      };
    });
  jQuery('#emergency-contact-table').DataTable({
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
      { title: "Conservator", data: "Conservator", orderable: true, searchable: false, className: "export" },
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
      addButtons(this.DataTable(), 'Add Emergency Contact', adminAddForms['emergencyContact']);
      tableSelectListener(this.DataTable(), 'editEmergencyContact');
    }
  });
};
function editEmergencyContact(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit Emergency Contact ${data.FirstName + data.LastName ? '- ' + getFullName(data.FirstName, '', data.LastName) : ''}`;
  displayEditModal(title, editForms['emergencyContact'], 'EmergencyContact', id);;
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
  let id = data.id ? data.id : '';
  let title = `Edit Status ${data.StatusType ? data.StatusType + ' ' : ''}Detail`;
  displayEditModal(title, adminEditForms['status'], 'ApplicantStatus', id);
};
/* ************************************************************************** */
/* ******************  Applicant Document Admin Table  ********************** */
/* ************************************************************************** */
function initDocumentTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Document";
        obj.ObjectTitle = "Documents";
      };
      obj.Container = obj.Container ? obj.Container : 'disability';
      obj.DocumentType = obj.DocumentType ? obj.DocumentType : obj.Container;
    });
  jQuery('#document-table').DataTable({
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
      dataSrc: 'Container',
      startRender: rowGroupRender(),
    },
    columns: [
      { data: null, defaultContent: "<button>View</button>", searchable: false, orderable: false },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', searchable: false, visible: false },
      { title: "Category", data: "Container", width: "1em", className: 'export' },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Type", data: "DocumentType", width: "1em", className: 'export' },
      { title: "Title", data: "FileName", className: 'export', searchable: true, orderable: true },
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
function documentTableSelectListener(table) {
  table.on('select', function (e, dt, type, indexes) {
    let row = table.row(indexes[0].row);
    let columnNumber = indexes[0].column;
    table.cell(indexes).deselect();
    if (debug)
      console.log(`Column Number Selected: ${columnNumber}`);
    if (columnNumber < 2) {
      let data = row.data();
      openDocumentWindow(data.FileName, data.Container);
    } else {
      editDocument(row);
    };
  });
};
function editDocument(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit ${data.DocumentType ? data.DocumentType : data.FileName}`;
  displayEditModal(title, adminEditForms['document'], 'Document', id);
};
/* ************************************************************************** */
/* ******************  Applicant Interview Admin Table  ********************* */
/* ************************************************************************** */
function initInterviewTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "ApplicantInterview",
          obj.ObjectTitle = "Interview Details";
      };
    });
  jQuery('#interview-table').DataTable({
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
  let id = data.id ? data.id : '';
  let title = `Edit Interview ${data.QuestionType ? data.QuestionType + ' ' : ''}Detail`;
  displayEditModal(title, adminEditForms['interview'], 'Interview', id);
};
/* ************************************************************************ */
/* ******************  Applicant Notes Admin Table  *********************** */
/* ************************************************************************ */
function initNoteTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) {
        obj.Object = "Note",
          obj.ObjectTitle = "Note Detail";
      };
    });
  jQuery('#note-table').DataTable({
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
collapsedGroups = {};
function initApplicantDisabilityCodeTable(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object) obj.Object = "ApplicantDisabilityCode";
      if (!obj.ObjectTitle) obj.ObjectTitle = "Applicant Disability";
      if (!obj.ChildObject) obj.ChildObject = "ApplicantDisabilityCode";
      if (!obj.SpecialtyCode) obj.SpecialtyCode = "";
      if (!obj.Approved) obj.Approved = false;
      if (!obj.codeCategory) obj.codeCategory = "";
      if (!obj.Code) obj.Code = "";
      if (!obj.Note) obj.Note = "";
      if (!obj.typeDescription) obj.typeDescription = "";
      if (!obj.codeDescription) obj.codeDescription = "";
      obj.typeName = (obj.typeName !== '') ? obj.typeName : obj.codeDescription;
      obj.codeDescription = (obj.codeDescription !== '') ? obj.codeDescription : obj.typeDescription;
      if (!obj.Description) obj.Description = obj.codeDescription;
      if (!obj.Description) obj.Description = obj.typeDescription;
      if (!obj.id) {
        obj.id = obj.ApplicantDisabilityId;
        obj.Object = "ApplicantDisability";
      };
    });
  jQuery('#applicant-disability-code-table').DataTable({
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
      { title: "Disability Type", data: "typeDescription", className: "export", orderable: true, searchable: true, visible: false },
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
      { title: "Code", data: "SpecialtyCode", className: "export", orderable: true, searchable: true, visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", orderable: false, searchable: false, visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Disability Code', adminAddForms['disabilityCode']);
      tableSelectListener(this.DataTable(), 'editDisabilityRow');
      initRowGroupExpand(this.DataTable());
    }
  });
};
function editDisabilityRow(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit Disability ${data.DisabilityCode ? data.DisabilityCode + ' ' : ''} ${data.DisabilityType ? '- ' + data.DisabilityType : ''} `;
  displayEditModal(title, adminEditForms['disability'], 'ApplicantDisabilityCode', id);
};

/* ************************************************************************ */
/* ****************  Applicant Employment Admin Table  ******************** */
/* ************************************************************************ */
collapsedGroups = {};
function initApplicantEmploymentCodeTable(data = []) {
  // data = null;
  if (Array.isArray(data)) 
    data.forEach(function (obj) {
      if (!obj.Object) obj.Object = "ApplicantEmploymentCode";
      if (!obj.ObjectTitle) obj.ObjectTitle = "Applicant Employment";
      if (!obj.ChildObject) obj.ChildObject = "ApplicantEmploymentCode";
      if (!obj.SpecialtyCode) obj.SpecialtyCode = "";
      if (!obj.Approved) obj.Approved = false;
      if (!obj.Category) obj.Category = "";
      if (!obj.Code) obj.Code = "";
      if (!obj.Note) obj.Note = "";
      if (!obj.typeDescription) obj.typeDescription = "";
      if (!obj.codeDescription) obj.codeDescription = "";
      obj.typeName = (obj.typeName !== '') ? obj.typeName : obj.codeDescription;
      obj.codeDescription = (obj.codeDescription !== '') ? obj.codeDescription : obj.typeDescription;
      if (!obj.Description) obj.Description = obj.codeDescription;
      if (!obj.Description) obj.Description = obj.typeDescription;
      if (!obj.id) {
        obj.id = obj.ApplicantDisabilityId;
        obj.Object = "ApplicantEmploymentCode";
      };
    });
  jQuery('#applicant-employment-code-table').DataTable({
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
      addButtons(this.DataTable(), 'Add Employment Code', adminAddForms['employmentCode']);
      tableSelectListener(this.DataTable(), 'editEmploymentRow');
      initRowGroupExpand(this.DataTable());
    }
  });
};
function editEmploymentRow(row) {
  let data = row.data();
  let id = data.id ? data.id : '';
  let title = `Edit Employment ${data.typeName ? data.typeName : data.typeName} ${data.codeDescription ? ' - ' + data.codeDescription : ''} `;
  displayEditModal(title, adminEditForms['employment'], 'ApplicantEmploymentCode', id);
};