/* ************************************************************************** */
/* ******************  Applicant Alternate Name Table  ********************** */
/* ************************************************************************** */
function initApplicantAlternateName(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Alternate Name Detail";
    });
  var alternateNameTable = jQuery('#applicant-alternate-name').DataTable({
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
      { data: null, defaultContent: '+', searchable: false, orderable: false, width: "5", className: "detail-button" },
      { title: "ApplicantId", data: "ApplicantId", className: 'export', visible: false },
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
        title: "Date Modified", data: "ModifyDate", type: "date", order: 'asc', orderable: true, className: 'export',
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "User Modified", data: "ModifyUser", className: 'export' },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Name', '1165');
      tableSelectListener(this.DataTable(), 'editAlternateName');
    }
  });
};
function editAlternateName(row) {
  var data = row.data();
  var title = `Edit ${data.FirstName+data.MiddleName+data.LastName ? getFullName(data.FirstName, data.MiddleName, data.LastName) : 'Name'}`;
  displayEditModal(title, '');
};
/* ************************************************************************** */
/* ******************  Applicant Contact Phone Table  *********************** */
/* ************************************************************************** */
function initApplicantPhone(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Contact Phone Detail";
    });
  var phoneTable = jQuery('#applicant-phone').DataTable({
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
      { title: "Type", data: "PhoneType", className: 'export', orderable: false, width: "1em" },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Active", data: "Active", class: "export", orderable: true, searchable: false },
      { title: "Phone Number", data: "PhoneNumber", className: 'export', orderable: false },
      { title: "Extension", data: "Extension", className: 'export', orderable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Notes", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date", data: "ModifyDate", type: "date", order: 'desc', className: 'export', visible: true,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Contact Phone', '2103');
      tableSelectListener(this.DataTable(), 'editPhone');
    }
  });
};
function editPhone(row) {
  var data = row.data();
  var title = `Edit ${data.PhoneType ? data.PhoneType + ' ' : ''}Phone`;
  displayEditModal(title, '266');
};
/* ************************************************************************** */
/* *********************  Applicant Address Table  ************************** */
/* ************************************************************************** */
function initApplicantAddress(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Address Detail";
    });
  var addressTable = jQuery('#applicant-address').DataTable({
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
        title: "Date", data: "CreateDate", type: "date", className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Address', '2103');
      tableSelectListener(this.DataTable(), 'editAddress');
    }
  });
};
function editAddress(row) {
  var data = row.data();
  var title = `Edit ${data.AddressType ? data.AddressType + ' ' : ''}Address`;
  displayEditModal(title, '266');
};
/* ************************************************************************** */
/* ********************  Applicant Education Table  ************************* */
/* ************************************************************************** */
function initApplicantEducation(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Education Detail";
    });
  var educationTable = jQuery('#applicant-education').DataTable({
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
      { title: "Date Created", data: "CreateDate", type: "date", className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add School', '203');
      tableSelectListener(this.DataTable(), 'editEducation');
    }
  });
};
function editEducation(row) {
  var data = row.data();
  var title = `Edit ${data.Level ? data.Level : 'School'}`;
  displayEditModal(title, '1650');
};
/* ************************************************************************** */
/* *****************  Applicant Previous Employer Table  ******************** */
/* ************************************************************************** */
function initApplicantPreviousEmployer(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Previous Employer Detail";
    });
  var previousEmployerTable = jQuery('#applicant-previous-employer').DataTable({
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

      { title: "Start Date", data: "StartDate", type: "date", order: 'asc', orderable: true, className: 'export', visible: true,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "End Date", data: "EndDate", type: "date", orderable: true, className: 'export', visible: true,
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
      { title: "Can Contact", data: "SupervisorContact", orderable: false, searchable: true, className: "export" },
      { title: "Date Created", data: "CreateDate", type: "date", className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Add Previous Employer', '203');
      tableSelectListener(this.DataTable(), 'editPreviousEmployer');
    }
  });
};
function editPreviousEmployer(row) {
  var data = row.data();
  var title = `Edit Employer ${data.CompanyName ? data.CompanyName : ''}`;
  displayEditModal(title, '');
};

/* ************************************************************************** */
/* ********************  Applicant References Table  ************************ */
/* ************************************************************************** */
function initApplicantReference(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Reference Detail";
    });
  var referenceTable = jQuery('#applicant-reference').DataTable({
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
      { title: "Name", data: "Name", className: 'export', orderable: true, searchable: true },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Address", data: "Address", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Address", data: "Address", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Business", data: "Business", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Years Acquainted", data: "YearsAcquainted", orderable: false, searchable: false, className: "export", visible: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      {
        title: "Date Created", data: "CreateDate", type: "date", order: 'asc', className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Object", data: "Object", searchable: false, visible: false },
      // { title: "ApplicationId", data: "ApplicationId", visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New', '203');
      tableSelectListener(this.DataTable(), 'editReference');
    }
  });
};
function editReference(row) {
  var data = row.data();
  var title = `Edit Reference ${data.Name ? '- ' + data.Name : ''}`;
  displayEditModal(title, '266');
};
/* ************************************************************************** */
/* *****************  Applicant Emergency Contact Table  ******************** */
/* ************************************************************************** */
function initApplicantEmergencyContact(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Emergency Contact Detail";
    });
  jQuery('#applicant-emergency-contact').DataTable({
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
      { title: "Name", className: "nameField export", searchable: true, orderable: true,
        render: function (data, type, row, meta) {
          return getFullName(row["FirstName"], "", row["LastName"]);
        },
      },
      { data: null, defaultContent: "<button>Edit</button>", orderable: false, searchable: false, width: "1em" },
      { title: "Conservator", data: "isConservator", orderable: true, searchable: false, className: "export" },
      { title: "Address", data: "Address", orderable: false, searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Address", data: "Address", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Relationship", data: "Relationship", orderable: false, searchable: true, className: "export" },
      { title: "Email", data: "Email", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Phone", data: "PhoneNumber", orderable: false, searchable: true, className: "export" },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", orderable: false, searchable: true, className: "export", visible: false },
      { title: "Date Created", data: "CreateDate", type: "date", order: 'asc', className: 'export', visible: false,
        render: function (data, type, row, meta) {
          return getFormattedDate(data);
        },
      },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New', '203');
      tableSelectListener(this.DataTable(), 'editEmergencyContact');
    }
  });
};
function editEmergencyContact(row) {
  var data = row.data();
  var title = `Edit Emergency Contact ${data.FirstName+data.LastName ? '- ' + getFullName(data.FirstName,'',data.LastName) : ''}`;
  displayEditModal(title, '');
};
/* ************************************************************************** */
/* ******************  Applicant Status Admin Table  ************************ */
/* ************************************************************************** */
function initApplicantStatus(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Status Detail";
    });
  var statusTable = jQuery('#applicant-status').DataTable({
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
      { title: "Status", data: "Status", className: 'export', orderable: false },
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
      //{ title: "Consideration", data: "Consideration" },
      { title: "Note", data: "Note", orderable: false, render: jQuery.fn.dataTable.render.ellipsis(50) },
      { title: "Notes", data: "Note", className: 'export', orderable: false, searchable: true, visible: false },
      //{ title: "Position", data: "Positions" },
      //{ title: "Location", data: "Locations" },
      //{ title: "Hired", data: "Hired", searchable: false, orderable: false },
      { title: "ApplicationId", data: "ApplicationId", className: 'export', visible: false },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'Update Status', '1655');
      tableSelectListener(this.DataTable(), 'editStatus');
    }
  });
};
function editStatus(row) {
  var data = row.data();
  var title = `Edit Status ${data.StatusType ? data.StatusType + ' ' : ''}Detail`;
  displayEditModal(title, '2640');
};
/* ************************************************************************** */
/* ******************  Applicant Document Admin Table  ********************** */
/* ************************************************************************** */
function initApplicantDocument(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Documents";
    });
  var documentTable = jQuery('#applicant-document').DataTable({
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
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false, searchable: false },
      { title: "Object", defaultContent: "Document", visible: false, searchable: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), '[contact-form-7 id="20" title="Application 02 - Documents"]');
      viewDocumentListener(this.DataTable());
    }
  });
};
function viewDocumentListener(documentTable) {
  jQuery('#applicant-document tbody').on('click', 'button', function () {
    var data = documentTable.row(jQuery(this).parents('tr')).data();
    var fileName = data.FileName;
    var documentId = data.id;
    var popUpWindow = window.open("", "", "height=500,width=720,menubar=no");
    var test1 = apiUrl + "Docs/disability/download/" + fileName;
    popUpWindow.document.write('<iframe allowTransparency="true" frameborder="0" scrolling="yes" style="width:100%;height:100%" src="' + test1 + '" type= "text/javascript"></iframe>');
  });
};
function editDocument(row) {
  var data = row.data();
  var documentType = data.DocumentType ? data.DocumentType : '';
  jQuery('#pum-2079 .pum-title').empty().append(`Edit ${documentType} Document`);
  loadForm('edit-object-popup', '[contact-form-7 id="266"]');
  jQuery('#pum-2079').popmake('open');
};
/* ************************************************************************** */
/* ******************  Applicant Interview Admin Table  ********************* */
/* ************************************************************************** */
function initApplicantInterview(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Interview Details";
    });
  var interviewTable = jQuery('#applicant-interview').DataTable({
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
      { title: "Interviewer", data: "CreateUser", className: "export", orderable: true, searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, className: "export" },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New Interview', '1656');
      tableSelectListener(this.DataTable(), 'editInterview');
    }
  });
};
function editInterview(row) {
  var data = row.data();
  var title = `Edit Interview ${data.QuestionType ? data.QuestionType + ' ' : ''}Detail`;
  displayEditModal(title, '2640');
};
/* ************************************************************************ */
/* ******************  Applicant Notes Admin Table  *********************** */
/* ************************************************************************ */
function initApplicantNote(data) {
  if (data)
    data.forEach(function (obj) {
      if (!obj.Object)
        obj.Object = "Note Detail";
    });
  var noteTable = jQuery('#applicant-note').DataTable({
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
      { title: "Date",
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
      { title: "Creator", data: "CreateUser", className: "export", searchable: false },
      { title: "Note", data: "Note", searchable: false, render: jQuery.fn.dataTable.render.ellipsis(20) },
      { title: "Note", data: "Note", searchable: true, visible: false, className: "export" },
      { title: "Object", data: "Object", searchable: false, visible: false },
      { title: "ApplicationId", data: "ApplicationId", visible: false, searchable: false },
      { title: "#", name: "id", data: "id", order: 'asc', visible: false },
    ],
    initComplete: function () {
      addButtons(this.DataTable(), 'New Note', '1681');
      tableSelectListener(this.DataTable());
    }
  });
};
