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
      function preventDefaults (e) {
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
        var dt = e.dataTransfer
        var files = dt.files
        handleFiles(files)
      };
      let uploadProgress = [];
      let progressBar = document.getElementById(`${fileType}-progress-bar`);
      function initializeProgress(numFiles) {
        progressBar.value = 0
        uploadProgress = []
        for(let i = numFiles; i > 0; i--) {
          uploadProgress.push(0)
        }
      };
      function updateProgress(fileNumber, percent) {
        uploadProgress[fileNumber] = percent
        let total = uploadProgress.reduce((tot, curr) => tot + curr, 0) / uploadProgress.length
        console.debug('update', fileNumber, percent, total)
        progressBar.value = total
      };
      function handleFiles(files) {
        files = [...files];
        initializeProgress(files.length);
        files.forEach(uploadFile);
        files.forEach(previewFile);
      };
      function previewFile(file) {
        let reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onloadend = function() {
          let img = document.createElement('img');
          img.src = reader.result;
          document.getElementById(`${fileType}-gallery`).appendChild(img);
        };
      };
      function uploadFile(file, i) {
        var url = apiUrl.slice(-1) === '/' ? apiUrl : apiUrl + '/';
        url = `${url}docs/${fileType}/upload`;
        var xhr = new XMLHttpRequest();
        var formData = new FormData();
        xhr.open('POST', url, true);
        xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
        // Update progress (can be used to show progress indicator)
        xhr.upload.addEventListener("progress", function(e) {
          updateProgress(i, (e.loaded * 100.0 / e.total) || 100);
        })
        xhr.addEventListener('readystatechange', function(e) {
          if (xhr.readyState == 4 && xhr.status == 200) {
            updateProgress(i, 100); // <- Add this
            // var uploadResponse = JSON.parse(xhr.responseText);
            var uploadResponse = xhr.responseText;
            console.log(`Upload Response: ${uploadResponse}`);
          } else if (xhr.readyState == 4 && xhr.status != 200) {
            console.log(`Error uploading file \nCode: ${xhr.status}\n`);
          };
        });
        formData.append('upload_preset', 'YOU');
        formData.append('file', file);
        console.log(`Form Data: ${JSON.stringify(formData)}`);
        xhr.send(formData);
      };
    };
  };
  //Stolen from: https://developer.mozilla.org/en-US/docs/Using_files_from_web_applications
function sendFile(file, documentUrl) {
    return new Promise(function(resolve, reject) {
      var xhr = new XMLHttpRequest();
      var fd = new FormData();
      // document url provided from PHP
      xhr.open("POST", documentUrl, true);
      xhr.onreadystatechange = function() {
        if(xhr.readyState == 4 && xhr.status == 200) {
          resolve(JSON.parse(xhr.responseText));
        }
      };
      fd.append('file', file);
      xhr.send(fd);
    });
  };
function postDocument(fileInputId) {
    var promises = [];
    var element = document.getElementById(fileInputId);
    // docType represents a subfolder in the file storage directory
    //  ie - "disabled" or "resume"
    var docType = element.getAttribute('name');
    if (element && element.files[0]) {
      promises.push(sendFile(element.files[0], `${apiUrl}docs/${docType}/upload`));
      Promise.all(promises).then(function(results) {
        console.log('back from all promises', results);
        if(promises.length >= 1) {
          results.forEach(function(resultOb) {
            if(resultOb.result.files && resultOb.result.files.file[0].container) {
              // cat[resultOb.result.files.file[0].container] = resultOb.result.files.file[0].name;
              console.log('File Name: ' + resultOb.result.files.file[0].name);
            }
          });
        }
      });
    };
};
