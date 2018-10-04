// ***********************************************************************
// Adds 'focus' class (referenced in Custom CSS) to element 
//  in a Contact 7 Form that is clicked on
// ***********************************************************************
jQuery(document).ready(function ($) {
  highlightActiveInputFields($);
});
function highlightActiveInputFields($) {
  jQuery('.wpcf7-form input, select, radio, checkbox').not('.wpcf7-submit').focus(function () {
    jQuery(this).addClass('focused');
  })
    .blur(function () {
      jQuery(this).removeClass('focused');
    });
};

jQuery(document).ready(function ($) {
  postDocumentWatcher($);
});
function postDocumentWatcher($) {
  jQuery('input[type="file"]').change(function () {
    let elementId = this.getAttribute('id');
    postDocument(elementId);
  });
};
// ***********************************************************************
// Formatting US phone numbers
// ***********************************************************************
jQuery(document).ready(function ($) {
  formatTelephoneFields($);
});
function formatTelephoneFields($) {
  jQuery("input[type='tel'], input[type='tel*'], .wpcf7-validates-as-tel, input.phone-number").attr('maxlength', '14').keyup(function () {
    let curchr = this.value.length;
    let curval = jQuery(this).val();
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
jQuery(document).ready(function ($) {
  formatSocialSecurityFields($);
});
function formatSocialSecurityFields($) {
  jQuery(".social-security, input[name*='social-security']").attr('maxlength', '11').keyup(function () {
    if (this.value) {
      let curchr = this.value.length;
      let curval = jQuery(this).val();
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
jQuery(document).ready(function ($) {
  formatPostalCodes($);
});
function formatPostalCodes($) {
  jQuery("input[type='zip'], input[type='zip*'], input[name*='zip'], input[name*='postal-code'], input[name='zip'], input[name*='zip'").keyup(function () {
    let curchr = this.value.length;
    let curval = jQuery(this).val();
    if (curchr == 5) {
      jQuery(this).val(curval.substring(0, 5) + '-');
    }
  });
};
// ************************************************************************
// Set all <span> elements containing dynamic hidden fields to display:none
// ************************************************************************
jQuery(document).ready(function ($) {
  hideDynamicObjects($);
});
function hideDynamicObjects($) {
  jQuery(".wpcf7-dynamichidden").parent().css('display', 'none');
};
// ************************************************************************
// Change file input to drop zones
// ************************************************************************
jQuery(document).ready(function ($) {
  addDocumentDropZones();
});
function addDocumentDropZones() {
  addFileDropZone('disability');
  addFileDropZone('resume');
};
function addFileDropZone(fileType) {
  let dropHtml = '<form class="upload-document-form">.pdf .doc .docx .txt .png .jpg .gif';
  dropHtml += '<input type="file" id="FILETYPE-doc-element" class="file-input" multiple accept=".pdf,.doc,.docx,.png,.jpg,.gif,.txt" onchange="handleFiles(this.files)">';
  dropHtml += '<label class="upload-button" for="FILETYPE-doc-element">FILETYPE File(s)</label>';
  dropHtml += '</form>';
  dropHtml += '<div class="progress-bar center-block"><progress id="FILETYPE-progress-bar" max=100 value=0></progress></div>';
  dropHtml += '<div id="FILETYPE-gallery" class="gallery" /></div>'
  dropHtml = dropHtml.replace(/FILETYPE/g, fileType).valueOf();
  jQuery(`#${fileType}-drop-area`).empty().append(dropHtml).find(`.file-input`).css('display', 'none');
  initFileDrop(fileType);
};
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function ($) {
  addMultiSelectWidget($);
});
// function addMultiSelectWidget ($) {
//   jQuery("select.bs-multiselect").css('style', 'display: none');
//   jQuery("select.bs-multiselect").attr('multiple', 'multiple');
//   jQuery("select.bs-multiselect").bsMultiSelect({
//     useCss: true,
//     containerClass: 'dropdown-multiselect',
//     dropDownMenuClass: 'dropdown-menu',
//     dropDownItemClass:  'px-2',
//     dropDownItemHoverClass: 'text-primary bg-light',
//     selectedPanelClass: 'multiselect-form-control',
//     selectedItemClass: 'badge',
//     removeSelectedItemButtonClass: 'close',
//     filterInputItemClass: '',
//     filterInputClass: '',
//     selectedPanelFocusClass : 'focus',
//     selectedPanelDisabledClass: 'disabled',
//     selectedItemContentDisabledClass: 'disabled'
//   });
// };
function addMultiSelectWidget($) {
//   jQuery("select.bs-multiselect").css('style', 'display: none');
//   jQuery("select.bs-multiselect").attr('multiple', 'multiple');
   jQuery(".multiselect").selectize();

}
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function ($) {
  changeModifyInputSize($);
});
function changeModifyInputSize($) {
  jQuery("input[name*='date']").each(function (i, obj) {
    if (obj.getAttribute('value')) {
      let dateTime = new Date(obj.getAttribute('value'));
      // obj.setAttribute('value',getFormattedDate(dateTime, true));
      obj.setAttribute('value', getFormattedDate(dateTime));
    }
  });
  if (jQuery("input[type*='text']").attr('size') === '40') {
    jQuery("input[type='text']").removeAttr('size');
  };
  jQuery(".resize").removeAttr('size');
  jQuery(".resize").width(function () { return (this.value.length - 3) + "ch" });
};
// ************************************************************************
// Change boolean text values to checkbox on edit
// ************************************************************************
jQuery(document).ready(function ($) {
  changeBooleanToCheckbox($);
});
function changeBooleanToCheckbox() {
  jQuery(".boolean").each(function (i, obj) {
    let elementClassArray = obj.className.split(" ");
    let elementClassList = elementClassArray.filter(function (item) {
      return item.indexOf("dynamic") === -1;
    }).join(' ');
    obj.setAttribute('type', 'checkbox');
    obj.className = elementClassList;
    obj.getAttribute('value') === "1" ? obj.setAttribute('value', true) : obj.setAttribute('value', false);
    obj.getAttribute('value') === "true" ? obj.checked = true : obj.checked = false;
    obj.onclick = function () { this.value === "true" ? this.value = "false" : this.value = "true"; };
    obj.setAttribute('disabled', '');
  });
};
// ************************************************************************
// Change text values to textarea with class="textarea"
// ************************************************************************
jQuery(document).ready(function ($) {
  changeTextToTextArea($);
});
function changeTextToTextArea() {
  let nodeNameArray = ['type', 'value', 'max-size', 'size'];
  jQuery('input.wpcf7-form-control.textarea').each(function (i, obj) {
    let textValue = obj.getAttribute('value');
    // obj.setAttribute('form', jQuery(obj).closest('[role=form]').attr('id'));
    obj.classList.remove('textarea');
    let new_element = document.createElement('textarea'),
      old_attributes = obj.attributes,
      new_attributes = new_element.attributes;
    for (let i = 0, len = old_attributes.length; i < len; i++) {
      if (!nodeNameArray.includes(old_attributes.item(i).nodeName))
        new_attributes.setNamedItem(old_attributes.item(i).cloneNode(true));
    }
    if (obj.firstChild)
      do {
        new_element.appendChild(obj.firstChild);
      }
      while (obj.firstChild);
    new_element.className = new_element.className.replace(/\b[\w-]+dynamic[\w-]+\b /g, '')//.replace(/\b[\w-]+wpcf7[\w-]+\b /g, '');
    new_element.innerHTML = textValue;
    new_element.setAttribute('name', `${obj.getAttribute('name')}-textarea`);
    new_element.setAttribute('style', '"min-height: 1em" rows="1"');
    let new_span = document.createElement('span');
    new_span.classList.add('wpc7-form-control-wrap');
    new_span.classList.add(`${obj.getAttribute('name')}-textarea`);
    new_span.appendChild(new_element);
    obj.setAttribute('type', 'hidden');
    jQuery(obj.parentElement).attr('style','visibility: hidden');
    jQuery(new_span).insertAfter(obj.parentElement);
    jQuery(new_element).change(function() {
      jQuery(obj).val(jQuery(this).val());
    });
    let events = jQuery(obj).data('events');
    console.log(obj.getAttribute('name'));
    console.log(events);
  });
  let autogrowOptions = {
    // context: jQuery(document),
    fixMinHeight: true,
    animate: false,
    // speed: 10,
    // cloneClass: 'autogrowclone', // Helper CSS for the clone used to match another textbox nearby
    onInitialize: true
  };
  jQuery('textarea').autogrow(autogrowOptions);
};

function copyEvents(source, destination) {
  var events = source.data('events');
  console.log(events);
  // Iterate through all event types
  jQuery.each(events, function(eventType, eventArray) {
      // Iterate through every bound handler
      jQuery.each(eventArray, function(index, event) {
          // Take event namespaces into account
          var eventToBind = event.namespace.length > 0
              ? (event.type + '.' + event.namespace)
              : (event.type);
          // Bind event
          destination.bind(eventToBind, event.data, event.handler);
      });
  });
};
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function ($) {
  loadDynamicSelect($);
});
function loadDynamicSelect($) {
  jQuery(".wpcf7-select").each(function (i, obj) {
    if (obj.classList.contains('editable') || obj.classList.contains('not-editable'))
      obj.setAttribute('disabled', '');
  });
}
// ************************************************************************
// 
// ************************************************************************
function toggleEdit(element) {
  let formElement = findAncestor(element, 'wpcf7-form');
  jQuery(formElement).find('.edit-button-group').each(function () {
    this.hasAttribute('style') ? this.removeAttribute('style') : this.setAttribute('style', 'display:none');
  });
  jQuery(formElement).find('textarea').each(function () {
    this.hasAttribute('readonly') ? this.removeAttribute('readonly') : this.setAttribute('readonly', '');
  });
  jQuery(jQuery(formElement).prop('elements')).each(function () {
    let field = this;
    if (field.classList) {
      if (field.classList.contains("editable")) {
        field.classList.toggle("applicant");
        if (field.classList.contains("date")) {
          if (field.getAttribute('type') === 'text') {
            field.removeAttribute('readonly');
            field.setAttribute('value', new Date(field.getAttribute('value')));
            field.setAttribute('type', 'date');
          } else {
            field.setAttribute('value', getFormattedDate(field.getAttribute('value')));
            field.setAttribute('type', 'text');
            field.setAttribute('readonly', '');
          }
        // } else if (field.getAttribute('type') === 'text' || field.tagName.toLowerCase() === 'textarea' || field.getAttribute('type') === 'hidden') {
        } else if (field.getAttribute('type') === 'text' || field.getAttribute('type') === 'hidden') {
          field.hasAttribute('readonly') ? field.removeAttribute('readonly') : field.setAttribute('readonly', '');
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
document.addEventListener('wpcf7mailsent', function (event) {
  let formId = event.detail.contactFormId;
  console.log(`Form Id: ${formId}`);
  let formElement = event.target;
  let formElementId = formElement.id;
  let submitButton = formElement.getElementsByClassName('wpcf7-submit')[0];
  let formClasses = submitButton.classList;
  if (formClasses) {
    let objectName,
      objectId,
      nextElement;
    try {
      objectName = jQuery(formElement).find(`input[name="object"]`).val().replace(`%5C`, ``);
    } catch (e) {
      if (debug) console.log(`No Object found in form \n${e.toString().substring(0, 200)}...`);
    };
    if (objectName) {
      try {
        objectId = jQuery(formElement).find(`input[name="${objectName}Id"]`).val().replace(`%5C`, ``);
        console.log('object Id: ');
        console.log(objectId);
      } catch (e) {
        if (debug) console.log(`No Object ID found in form \n${e.toString().substring(0, 200)}...`);
      };
    };
    if (formClasses.contains('next-accordion'))
      nextElement = nextAccordion(formElement);
    else if (formClasses.contains('next-tab'))
      nextElement = nextTab(formElement);
    else if (formClasses.contains('close-toggle'))
      nextElement = closeToggle(formElement);
    else
      nextElement = formElement;
    if (formClasses.contains('load-select-table'))
      populateDataTable('applicant-search', 'vi_ApplicantSearch', '');
    if (formClasses.contains('load-next-form'))
      if (formClasses.contains('load-children')) {
        nextForm(formElementId, nextElement, true);

      } else {
        nextForm(formElementId, nextElement);
      };
    if (formClasses.contains('refresh-table')) {
      if (objectName) {
        let classArray = Array.from(formClasses);
        let dataTable = classArray.filter(function (v) { return /table-/.test(v) });
        if (dataTable && dataTable.length > 0)
          populateDataTable(`${dataTable[0].replace('table-', '')}-table`, objectName);
      };
    } else if (formClasses.contains('save')) {
      let postId = formElementId.replace(/(.*wpcf7-f)(.*)(-.*)/, "$2");
      loadEditObjectForm(formElement.parentElement, postId, objectName, objectId)
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
  let body = {};
  body['action'] = 'load_next';
  body['current_id'] = formElementId;
  if (loadChildren === true)
    body['load_children'] = 'true';
  let nextFormElement = element.getElementsByClassName('contact-form')[0];
  let args = getDefaultAjaxBody();
  if (nextFormElement)
    args['element'] = nextFormElement;
  else
    args['element'] = element;
  args['body'] = body;
  ajaxRequest(args);
}
function loadForm(elementId, shortcode, objectId) {
  let body = {};
  body['action'] = 'return_shortcode';
  body['shortcode'] = shortcode;
  if (objectId)
    body['id'] = objectId;
  let targetElement = document.getElementById(elementId);
  let args = getDefaultAjaxBody();
  args['element'] = targetElement;
  args['body'] = body;
  ajaxRequest(args);
}
function loadAddObjectForm(element, formId, applicantId, applicationId) {
  let body = {};
  body['action'] = 'return_edit_object_form';
  body['form_id'] = formId;
  if (applicantId)
    body['applicant-id'] = applicantId;
  if (applicationId)
    body['application-id'] = applicationId;
  if (debug)
    console.log(`LoadAddObjectForm - ApplicantId: ${applicantId}, ApplicationId: ${applicationId}`);
  let args = getDefaultAjaxBody();
  args['element'] = element;
  args['body'] = body;
  ajaxRequest(args);
}
// function loadAddObjectForm(element, formId) {
//   loadEditObjectForm(element, formId);
// };
function loadEditObjectForm(element, formId, objectName, objectId) {
  let body = {};
  body['action'] = 'return_edit_object_form';
  body['form_id'] = formId;
  if (objectName)
    body['object'] = objectName;
  if (objectId)
    body['id'] = objectId;
  if (debug)
    console.log(`LoadEditObjectForm - Object Name: ${objectName}, id: ${objectId}`);
  let args = getDefaultAjaxBody();
  args['element'] = element;
  args['body'] = body;
  ajaxRequest(args);
}

// ***********************************************************************
// Function to request AJAX data
// ***********************************************************************
function ajaxRequest(args) {
  let body = JSON.parse(JSON.stringify(args['body']));
  let element;
  if (typeof (args['element']) !== 'undefined') {
    element = args['element'];
  }
  // jQuery(element).empty();
  jQuery.ajax({
    url: ajaxurl,
    type: args['type'],
    data: body,
    success: function (data) {
      if (body['action'] === 'set_applicant_data') {
        let nextAccordionElement = nextAccordion(element);
        nextForm(body['element-id'], nextAccordionElement, true);
        handleAdminEditApplicantResponse(element);
      } else if (typeof handleAjaxFormResponse === 'function') {
        handleAjaxFormResponse(element, data);
      } else {
        return data;
      };
      // } else if (typeof handleAjaxFormResponse === 'function' && (body['action'] === 'load_next' || body['action'] === 'return_shortcode')) {
      //   handleAjaxFormResponse(element, data);
      // } else {
      //   console.log('Ajax data returned \n' + data);
      // }
    },
    error: function (err) {
      console.log('Error returned from AJAX.: \n' + JSON.stringify(body));
    },
  });
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
  let currentPath = window.location.pathname;
  console.log(currentPath);
  // TODO:
  data = data.replace('/joboptionsinc/', '');
  data = data.replace('wp-admin/admin-ajax.php', 'wp-admin/admin-ajax.php' + currentPath);
  // data = data.replace(ajaxurl, '');
  // console.log(data);
  if (placeholder && data && typeof (placeholder) !== 'undefined' && typeof (data) !== 'undefined' && data != '0' && placeholder != '0') {
    let el = document.createElement('html');
    el.innerHTML = data;
    let forms = el.querySelectorAll('[role="form"]');
    let nextFormElements = document.querySelectorAll('[class="contact-form"]');
    forms.forEach(function (item, index) {
      if (index === 0) {
        jQuery(placeholder).empty();
        jQuery(placeholder).append(item);
      } else {
        if (typeof (nextFormElements[index]) !== 'undefined') {
          jQuery(nextFormElements[index]).empty();
          jQuery(nextFormElements[index]).append(item);
        }
      };
    });
    let modalContent = jQuery(placeholder).closest('.pum-content')[0];
    if (typeof (modalContent) !== 'undefined') {
      let modalId = jQuery(modalContent).closest('.pum').attr('id');
      jQuery(`#${modalId}`).popmake('open');
    };
  }
  initForms();
}
// ***********************************************************************
// Function required to initialize forms not supplied on additional page
// ***********************************************************************
function initForms() {
  jQuery('div.wpcf7 > form').each(function () {
    let form = this;
    wpcf7.initForm(form);
    if (wpcf7.cached) {
      wpcf7.refill(form);
    };
  });
  changeBooleanToCheckbox();
  hideDynamicObjects();
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
  changeModifyInputSize();
  addMultiSelectWidget ();
};
