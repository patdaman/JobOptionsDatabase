// ***********************************************************************
// Adds 'focus' class (referenced in Custom CSS) to element 
//  in a Contact 7 Form that is clicked on
// ***********************************************************************
jQuery(document).ready(function($) {
  highlightActiveInputFields($); 
});
function highlightActiveInputFields($) {                       
  jQuery('.wpcf7-form input, select, radio, checkbox').not('.wpcf7-submit').focus(function() {
    jQuery(this).addClass('focused');
  })
  .blur(function() {
    jQuery(this).removeClass('focused');
  });
};

jQuery(document).ready(function($) {
  postDocumentWatcher($); 
});
function postDocumentWatcher($) {                       
  jQuery('input[type="file"]').change(function() {
    var elementId = this.getAttribute('id');
    postDocument(elementId);
  });
};
// ***********************************************************************
// Formatting US phone numbers
// ***********************************************************************
jQuery(document).ready(function($) {
  formatTelephoneFields($);
});
function formatTelephoneFields($) {                       
  jQuery("input[type='tel'], input[type='tel*']").attr('maxlength','14').keyup(function() {
    var curchr = this.value.length;
    var curval = jQuery(this).val();
    	if (curchr == 3) {
          	jQuery(this).val('(' + curval + ') ');
    } else if (curchr == 9) {
          	jQuery(this).val(curval + '-');
    }
  });
};
// ***********************************************************************
// Formatting for Social Security Numbers
// ***********************************************************************
jQuery(document).ready(function($) {
  formatSocialSecurityFields($);
});
function formatSocialSecurityFields($) {                       
  jQuery(".social-security, input[name*='social-security']").attr('maxlength','11').keyup(function() {
	  if (this.value) {
    var curchr = this.value.length;
    var curval = jQuery(this).val();
    	if (curchr == 3) {
          	jQuery(this).val(curval + '-');
    } else if (curchr == 6) {
          	jQuery(this).val(curval + '-');
    }
  }
  });
};
// ***********************************************************************
// Formatting for US Zip Codes
// ***********************************************************************
jQuery(document).ready(function($) {
  formatPostalCodes($);
});
function formatPostalCodes($) {                       
  jQuery("input[type='zip'], input[type='zip*'], input[name*='zip'], input[name*='postal-code']").keyup(function() {
      	var curchr = this.value.length;
    var curval = jQuery(this).val();
    	if (curchr == 5) {
          	jQuery(this).val(curval.substring(0, 5) + '-');
    }
  });
};
// ************************************************************************
// Set all <span> elements containing dynamic hidden fields to display:none
// ************************************************************************
jQuery(document).ready(function($) {
  hideDynamicObjects($);
});
function hideDynamicObjects($) {
  jQuery(".wpcf7-dynamichidden").parent().css('display','none');
};
// ************************************************************************
// Change file input to drop zones
// ************************************************************************
jQuery(document).ready(function($) {
  addDocumentDropZones();
});
function addDocumentDropZones() {
  addFileDropZone('disability');
  addFileDropZone('resume');
};
function addFileDropZone(fileType) {
  var dropHtml = `<form class="upload-document-form">*.pdf .doc .docx .txt .png .jpg .gif
      <input type="file" id="FILETYPE-doc-element" class="file-input" multiple accept=".pdf,.doc,.docx,.png,.jpg,.gif,.txt" onchange="handleFiles(this.files)">
      <label class="upload-button" for="FILETYPE-doc-element">Select file(s)</label>
    </form>
    <progress id="FILETYPE-progress-bar" max=100 value=0></progress>
    <div id="FILETYPE-gallery" class="gallery" /></div>`.replace(/FILETYPE/g,fileType).valueOf();
  jQuery(`#${fileType}-drop-area`).empty().append(dropHtml).find(`.file-input`).css('display','none');
  initFileDrop(fileType);
};
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function($) {
  changeModifyInputSize($);
});
function changeModifyInputSize($) {
  jQuery("input[name*='date']").each(function(i, obj) {
    if (obj.getAttribute('value')) {
      var dateTime = new Date(obj.getAttribute('value'));
      // obj.setAttribute('value',getFormattedDate(dateTime, true));
      obj.setAttribute('value',getFormattedDate(dateTime));
    }
  });
  jQuery("input[name='create-date'],input[name='modify-date']").attr('size','7');
  jQuery("input[name='create-user'],input[name='modify-user']").attr('size','25');
  jQuery("input[type*='text']").attr('max-size','40');
};
// ************************************************************************
// Change boolean text values to checkbox on edit
// ************************************************************************
jQuery(document).ready(function($) {
  changeBooleanToCheckbox($);
});
function changeBooleanToCheckbox() {
  jQuery(".boolean").each(function(i, obj) {
    var elementClassArray = obj.className.split(" ");
    var elementClassList = elementClassArray.filter(function(item) {
      return item.indexOf("dynamic") === -1;
    }).join(' ');
    obj.setAttribute('type','checkbox');
	  obj.className = elementClassList;
    obj.getAttribute('value') === "1" ? obj.setAttribute('value',true) : obj.setAttribute('value',false);
    obj.getAttribute('value') === "true" ? obj.checked = true : obj.checked = false;
    obj.onclick = function() {this.value === "true" ? this.value = "false" : this.value = "true";};
    obj.setAttribute('disabled','');
  });
};
// ************************************************************************
// Change text values to textarea with class="textarea"
// ************************************************************************
jQuery(document).ready(function($) {
  changeTextToTextArea($);
});
function changeTextToTextArea($) {
  jQuery(".textarea").each(function(i, obj) {
    obj.removeAttribute('max-size');
    obj.removeAttribute('size');
    obj.removeAttribute('type');
    var textValue = obj.getAttribute('value');
    obj.setAttribute('form', jQuery(obj).closest('[role=form]').attr('id'));
    var new_element = document.createElement('textarea'),
      old_attributes = obj.attributes,
      new_attributes = new_element.attributes;
    for(var i = 0, len = old_attributes.length; i < len; i++) {
        new_attributes.setNamedItem(old_attributes.item(i).cloneNode());
    }
    if (obj.firstChild)
    do {
        new_element.appendChild(obj.firstChild);
    } 
    while(obj.firstChild);
    new_element.value = textValue;
    new_element.setAttribute('cols', '50');
    new_element.setAttribute('rows', '10');    
    new_element.removeAttribute('value');
    obj.parentNode.replaceChild(new_element, obj);
  });
};
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function($) {
  loadDynamicSelect($);
});
function loadDynamicSelect($) {
  jQuery(".wpcf7-select").each(function(i, obj) {
    if (obj.classList.contains('editable'))
      obj.setAttribute('disabled','');
  });
}
// ************************************************************************
// 
// ************************************************************************
function toggleEdit(element) {
  var formElement = findAncestor(element, 'wpcf7-form');
  jQuery(formElement).find('.edit-button-group').each(function() {
    this.hasAttribute('style') ? this.removeAttribute('style') : this.setAttribute('style','display:none');
  });
  jQuery(formElement).find('textarea').each(function() {
    this.hasAttribute('readonly') ? this.removeAttribute('readonly') : this.setAttribute('readonly','');
  });
  jQuery( jQuery( formElement ).prop('elements')).each(function(){
    var field = this;
    if (field.classList) {
      if (field.classList.contains("editable")) {
        field.classList.toggle("applicant");
        if (field.classList.contains("date")) {
          if (field.getAttribute('type') === 'text') {
			      field.removeAttribute('readonly');
            field.setAttribute('value',new Date(field.getAttribute('value')));
            field.setAttribute('type','date');
          } else {
            field.setAttribute('value', getFormattedDate(field.getAttribute('value')));
            field.setAttribute('type','text');
            field.setAttribute('readonly','');
          }
        } else if (field.getAttribute('type') === 'text' || field.tagName === 'TEXTAREA') {
          field.hasAttribute('readonly') ? field.removeAttribute('readonly') : field.setAttribute('readonly','');
      	}
        if (field.classList.contains("boolean") || field.classList.contains("wpcf7-select")) {
          field.hasAttribute('disabled') ? field.removeAttribute('disabled') : field.setAttribute('disabled', '');
        }
      }
    }
  });
};

// ***********************************************************************
// Function to listen for WordPress mail-sent event and process
// ***********************************************************************
// wpcf7invalid — Fires when an Ajax form submission has completed successfully, but mail hasn’t been sent because there are fields with invalid input.
// wpcf7spam — Fires when an Ajax form submission has completed successfully, but mail hasn’t been sent because a possible spam activity has been detected.
// wpcf7mailsent — Fires when an Ajax form submission has completed successfully, and mail has been sent.
// wpcf7mailfailed — Fires when an Ajax form submission has completed successfully, but it has failed in sending mail.
// wpcf7submit — Fires when an Ajax form submission has completed successfully, regardless of other incidents.
// ***********************************************************************
document.addEventListener('wpcf7mailsent', function(event) {
  const formId = event.detail.contactFormId;
  const formElement = event.target;
  const formElementId = formElement.id;
  const submitButton = formElement.getElementsByClassName('wpcf7-submit')[0];
  const formClasses = submitButton.classList;
  if (formClasses) {
    var nextElement;
    if (formClasses.contains('next-accordion'))
      nextElement = nextAccordion(formElement);
    else if (formClasses.contains('next-tab'))
      nextElement = nextTab(formElement);
    else if (formClasses.contains('close-toggle'))
      nextElement = closeToggle(formElement);
    else
      nextElement = formElement;
    if (formClasses.contains('load-select-table'))
      populateDataTable ('applicant-search','vi_ApplicantSearch','');
    if (formClasses.contains('load-next-form'))
      if (formClasses.contains('load-children')) {
        nextForm(formElementId, nextElement, true);

      } else {
        nextForm(formElementId, nextElement);
      };
    if (formClasses.contains('save')) 
      toggleEdit(submitButton);
    if (formClasses.contains('refresh-table')) {
      var object = jQuery(formElement).find("input[name='object']").val();
      if (object) {
        var classArray = Array.from(formClasses);
        var dataTable = classArray.filter(function (v) {return /table-/.test(v)});
        console.log(`Data Table Name: ${dataTable}`);
        if (dataTable && dataTable.length > 0)
          populateDataTable(dataTable[0].replace('table-',''), object); 
      };
    };
  }
});

// ***********************************************************************
// Function to retrieve next Contact Form 7 form
// "action": "{shortcode}"
// "shortcode": "{shortcode returned}"
// "type": "{post|get|put}",
// "url": "{}",
// "post_id": "{}",
// "current_id": "{}",
// "dataType": "{json}",
// ***********************************************************************
function nextForm(formElementId, element, loadChildren) {
  var body = {};
  body['action'] = 'load_next';
  body['current_id'] = formElementId;
  if (loadChildren === true)
    body['load_children'] = 'true';
  var nextFormElement = element.getElementsByClassName('contact-form')[0];
  var args = getDefaultAjaxBody();
  if (nextFormElement)
    args['element'] = nextFormElement;
  else
    args['element'] = element;
  args['body'] = body;
  ajaxRequest(args);
}

function loadForm(elementId, shortcode, popupId) {
  var body = {};
  body['action'] = 'return_shortcode';
  body['shortcode'] = shortcode;
  var targetElement = document.getElementById(elementId);
  var args = getDefaultAjaxBody();
  args['element'] = targetElement;
  args['body'] = body;
  // args['async'] = false;
  ajaxRequest(args);
}

// ***********************************************************************
// Function to request AJAX data
// ***********************************************************************
function ajaxRequest(args) {
  var body = JSON.parse(JSON.stringify(args['body']));
  var useAsync = true;
  if (typeof(args['async']) !== 'undefined' && args['async'] === false)
    useAsync = false;
  if (typeof(args['element']) !== 'undefined') {
    var element = args['element'];
  }
  jQuery.ajax({
    url: ajaxurl,
    type: args['type'],
    data: body,
    async: useAsync,
    success: function(data) {
      if (typeof handleAjaxFormResponse === 'function' && ( body['action'] === 'load_next' || body['action'] === 'return_shortcode')) {
	      handleAjaxFormResponse(element, data);
      } else if (body['action'] === 'set_applicant_data') {
        var nextAccordionElement = nextAccordion(element);
        nextForm(body['element-id'], nextAccordionElement, true);
        handleAjaxApplicantSelectResponse(element);
      } else {
        console.log('Ajax data returned \n' + data);
      }
    },
    error: function(err) {
      console.log('Error returned from AJAX.: \n'+JSON.stringify(body));
    },
  });
}
function handleAjaxApplicantSelectResponse(element) {
  populateDataTable ('applicant-status','ApplicantStatus','');
  populateDataTable ('applicant-document','Document','');
  populateDataTable ('applicant-interview','Note','');
  populateDataTable ('applicant-note','Note','');
  populateDataTable ('applicant-alternate-name','AlternateName','');
  populateDataTable ('applicant-phone','Phone','');
  //populateDataTable ('applicant-education','Education','');
  //populateDataTable ('applicant-previous-employer','PreviousEmployer','');
  //populateDataTable ('applicant-reference','Reference','');
  //populateDataTable ('applicant-emergency-contact','EmergencyContact','');
}
// ***********************************************************************
// Take form HTML data that was returned via AJAX
//  and replace the next blank element(s) with class='contact-form'
// ***********************************************************************
// FAQ: If replacing one form, it can be anywhere on the page
//  HOWEVER, multiple forms must be in order on the page,
//   starting with the first one being wherever, 
//   then the second returned form in the second placeholder,
//   third returned in third placeholder, etc.
// ***********************************************************************
function handleAjaxFormResponse(placeholder, data) {
  if (debug)
  	console.log('Function handleAjaxFormResponse');
  var currentPath = window.location.pathname;
  console.log(currentPath);
  // TODO:
  data = data.replace('/joboptionsinc/', '');
  data = data.replace('wp-admin/admin-ajax.php', 'wp-admin/admin-ajax.php' + currentPath);
  // data = data.replace(ajaxurl, '');
  // console.log(data);
  if (placeholder && data && typeof(placeholder) !== 'undefined' && typeof(data) !== 'undefined' && data != '0' && placeholder != '0') {
    var el = document.createElement( 'html' );
    el.innerHTML = data;
    var forms = el.querySelectorAll('[role="form"]');
    var nextFormElements = document.querySelectorAll('[class="contact-form"]');
    // console.log('First Next Form Elements: ' + nextFormElements);
    forms.forEach(function (item, index) {
      if (index === 0) {
        jQuery(placeholder).empty();
        jQuery(placeholder).append(item);
      } else {
        if (typeof(nextFormElements[index]) !== 'undefined') {
          jQuery(nextFormElements[index]).empty();
          jQuery(nextFormElements[index]).append(item);
        }
      }
    });
  }
  initForms();
}
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
// ***********************************************************************
// Function required to initialize forms not supplied on additional page
// ***********************************************************************
function initForms() {
  jQuery('div.wpcf7 > form').each(function() {
    var form = this;
    wpcf7.initForm(form);
    if (wpcf7.cached) {
      wpcf7.refill(form);
    };
  });
  changeBooleanToCheckbox();
  hideDynamicObjects();
  changeModifyInputSize();
  highlightActiveInputFields();
  formatTelephoneFields();
  formatSocialSecurityFields();
  formatPostalCodes();
  loadDynamicSelect();
  postDocumentWatcher();
  changeTextToTextArea();
  reloadScript('/wp-content/plugins/cf7-conditional-fields/js/scripts.js');
  reloadScript('/wp-content/plugins/cf7-repeatable-fields/assets/js/');
  addDocumentDropZones();
}
