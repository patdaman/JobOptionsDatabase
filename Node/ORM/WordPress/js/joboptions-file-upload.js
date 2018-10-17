// ******************************************************** //
// ************************ Drag and drop ***************** //
// ******************************************************** //
function initFileDrop(fileType) {
  if (document.getElementById(`${fileType}-drop-area`)) {
    let dropArea = document.getElementById(`${fileType}-drop-area`);
    // Prevent default drag behaviors
    ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
      dropArea.addEventListener(eventName, preventDefaults, false)
      document.body.addEventListener(eventName, preventDefaults, false)
    });
    // Highlight drop area when item is dragged over it
    ['dragenter', 'dragover'].forEach(eventName => {
      dropArea.addEventListener(eventName, highlight, false)
    });
    ['dragleave', 'drop'].forEach(eventName => {
      dropArea.addEventListener(eventName, unhighlight, false)
    });
    // Handle dropped files
    dropArea.addEventListener('drop', handleDrop, false);
    function preventDefaults(e) {
      e.preventDefault();
      e.stopPropagation();
    };
    function highlight(e) {
      dropArea.classList.add('highlight');
    };
    function unhighlight(e) {
      dropArea.classList.remove('active');
    };
    function handleDrop(event) {
      let dt = event.dataTransfer;
      let files = dt.files;
      handleFiles(files, this);
    };
  };
};
var uploadProgress = [];
var progressBarId;
var progressBar;
var documentType;
var container;

function initializeProgress(numFiles) {
  progressBar = document.getElementById(progressBarId);
  progressBar.value = 0;
  uploadProgress = [];
  for (let i = numFiles; i > 0; i--) {
    uploadProgress.push(0);
  };
};
function updateProgress(fileNumber, percent) {
  uploadProgress[fileNumber] = percent;
  let total = uploadProgress.reduce((tot, curr) => tot + curr, 0) / uploadProgress.length;
  progressBar.value = total;
};
function handleFiles(files, element) {
  files = [...files];
  let inputAreaId = element.getAttribute('id');
  documentType = null;
  container = inputAreaId.replace('-drop-area', '');
  let typeSelect = jQuery(element).closest("form").find("[name='document-type']");
  if (typeSelect[0] && typeSelect[0].value)
    documentType = typeSelect[0].value;
  else
    documentType = container;
  progressBarId = inputAreaId.replace('drop-area', 'progress-bar');
  initializeProgress(files.length);
  files.forEach(postDocument, container);
};
function previewFile(file) {
  let previewElement = createPreviewElement(file.name);
  if (file.type) {
    if (file.type.startsWith('image/')) {
      let reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onloadend = function () {
        let img = document.createElement('img');
        img.src = reader.result;
        previewElement.appendChild(img);
      };
    };
  };
  document.getElementById(`${container}-gallery`).appendChild(previewElement);
};
function createPreviewElement(fileName) {
  let previewElement = document.createElement('div');
  previewElement.setAttribute('class', 'preview');
  if (!fileName) {
    fileName = 'File Uploaded';
  };
  var fileText = document.createTextNode(fileName);
  previewElement.appendChild(fileText);
  return previewElement;
}
function ajaxSendFile(file, i) {
  return new Promise(function (resolve, reject) {
    var data = new FormData();
    data.append("action", "file_upload");
    data.append("container", container);
    data.append("document_type", documentType);
    data.append("applicant_id", adminVars['applicantId']);
    data.append("application_id", adminVars['applicationId']);
    data.append("file_upload", file);
    jQuery.ajax({
      url: ajaxurl,
      type: 'POST',
      data: data,
      cache: false,
      dataType: 'json',
      processData: false,
      contentType: false,
      success: function (data, textStatus, jqXHR) {
        updateProgress(i, 100);
        previewFile(file);
        resolve(JSON.parse(jqXHR.responseText));
        if (debug) {
          console.log(`Text Status: ${textStatus}`);
        };
      },
      error: function (jqXHR, textStatus, errorThrown) {
        console.log(`Error uploading file \nCode: ${textStatus}\n`);
        console.log(`  ${errorThrown}\n`);
      },
      xhr: function () {
        var xhr = jQuery.ajaxSettings.xhr();
        xhr.upload.onprogress = function (e) { updateProgress(i, (e.loaded * 100.0 / e.total) || 100); };
        // xhr.upload.onload = function () { resolve(JSON.parse(xhr.responseText)); if (debug) console.log(`XHR response: ${xhr.responseText}`); };
        return xhr;
      }
    });
  });
}
function postDocument(file, i) {
  var promises = [];
  if (file) {
    promises.push(ajaxSendFile(file, i));
    Promise.all(promises).then(function (results) {
      if (promises.length >= 1) {
        results.forEach(function (resultOb) {
          previewFile;
          console.log(resultOb);
        });
      }
    });
  };
};
function ajaxRetrieveFile(fileName, container, id) {
  // return new Promise(function (resolve, reject) {
  var data = new FormData();
  data.append("action", "file_download");
  data.append("id", id);
  data.append("file_name", fileName);
  data.append("container", container);
  data.append("applicant_id", adminVars['applicantId']);
  data.append("application_id", adminVars['applicationId']);
  jQuery.ajax({
    url: ajaxurl,
    type: 'GET',
    data: data,
    dataType: 'json',
    success: function (data, textStatus, jqXHR) {
      if (debug) {
        console.log(`Text Status: ${textStatus}`);
      };
    },
    error: function (jqXHR, textStatus, errorThrown) {
      console.log(`Error uploading file \nCode: ${textStatus}\n`);
      console.log(`  ${errorThrown}\n`);
    },
    xhr: function () {
      var xhr = jQuery.ajaxSettings.xhr();
      return xhr;
    }
  });
  // };
};
