// ******************************************************** //
// ************************ Drag and drop ***************** //
// ******************************************************** //
function initFileDrop(fileType) {
  if (!fileType)
    fileType = 'disability';
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
      e.preventDefault()
      e.stopPropagation()
    };
    function highlight(e) {
      dropArea.classList.add('highlight')
    };
    function unhighlight(e) {
      dropArea.classList.remove('active')
    };
    function handleDrop(e) {
      var dt = e.dataTransfer;
      var files = dt.files;
      handleFiles(files);
    };
    let uploadProgress = [];
    let progressBar = document.getElementById(`${fileType}-progress-bar`);
    function initializeProgress(numFiles) {
      progressBar.value = 0;
      uploadProgress = [];
      for (let i = numFiles; i > 0; i--) {
        uploadProgress.push(0);
      };
    };
    function updateProgress(fileNumber, percent) {
      uploadProgress[fileNumber] = percent;
      let total = uploadProgress.reduce((tot, curr) => tot + curr, 0) / uploadProgress.length;
      console.debug('update', fileNumber, percent, total);
      progressBar.value = total;
    };
    function handleFiles(files) {
      files = [...files];
      initializeProgress(files.length);
      // files.forEach(uploadFile);
      files.forEach(postDocument);
      // files.forEach(previewFile);
    };
    function previewFile(file) {
      let previewElement = createPreviewElement(file.name);
      console.log('file type: ' + file.type);
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
      document.getElementById(`${fileType}-gallery`).appendChild(previewElement);
    };
    function createPreviewElement(fileName) {
      let previewElement = document.createElement('div');
      previewElement.setAttribute('class', 'preview');
      if (!fileName) {
        fileName = 'File Uploaded';
      };
      console.log('create preview element: ' + fileName);
      var fileText = document.createTextNode(fileName);
      previewElement.appendChild(fileText);
      return previewElement;
    }
    //Stolen from: https://developer.mozilla.org/en-US/docs/Using_files_from_web_applications
    function sendFile(file, documentUrl, i) {
      return new Promise(function (resolve, reject) {
        var xhr = new XMLHttpRequest();
        var fd = new FormData();
        xhr.open("POST", documentUrl, true);
        xhr.upload.addEventListener("progress", function (e) {
          updateProgress(i, (e.loaded * 100.0 / e.total) || 100);
        });
        xhr.onreadystatechange = function () {
          if (xhr.readyState == 4 && xhr.status == 200) {
            updateProgress(i, 100);
            console.log(file.name);
            previewFile(file);
            resolve(JSON.parse(xhr.responseText));
            if (debug)
              console.log(xhr.responseText);
          } else if (xhr.readyState == 4 && xhr.status != 200) {
            console.log(`Error uploading file \nCode: ${xhr.status}\n`);
          };
        };
        fd.append('file', file);
        xhr.send(fd);
      });
    };
    function postDocument(file, i) {
      var promises = [];
      // docType represents a subfolder in the file storage directory
      //  ie - "disabled" or "resume"
      if (file) {
        promises.push(sendFile(file, `${apiUrl}docs/${fileType}/upload`, i));
        Promise.all(promises).then(function (results) {
          if (promises.length >= 1) {
            results.forEach(function (resultOb) {
              previewFile;
              if (resultOb.result.files && resultOb.result.files.file[0].container) {
                // cat[resultOb.result.files.file[0].container] = resultOb.result.files.file[0].name;
                // console.log('File Name: ' + resultOb.result.files.file[0].name);
              }
            });
          }
        });
      };
    };
  };
};