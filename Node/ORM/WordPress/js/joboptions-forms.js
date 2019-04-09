// ***********************************************************************
// Adds 'focus' class (referenced in Custom CSS) to element 
//  in a Contact 7 Form that is clicked on
// ***********************************************************************
jQuery(document).ready(function ($) {
  highlightActiveInputFields($);
});
function highlightActiveInputFields($) {
  jQuery('.wpcf7-form input, select, radio, checkbox').not('.wpcf7-submit').not('bound-focused').focus(function () {
    jQuery(this).addClass('focused');
  })
    .blur(function () {
      jQuery(this).removeClass('focused');
    })
    .addClass('bound-focused');
};
// ***********************************************************************
// Formatting US phone numbers
// ***********************************************************************
jQuery(document).ready(function ($) {
  formatTelephoneFields();
});
function formatTelephoneFields($) {
  jQuery("input[type='tel'], input[type='tel*'], .wpcf7-validates-as-tel, input.phone-number").not('.bound-phone').attr('maxlength', '14').keyup(function () {
    let curchr = this.value.length;
    let curval = jQuery(this).val();
    if (curchr == 3) {
      jQuery(this).val('(' + curval + ') ');
    } else if (curchr == 9) {
      jQuery(this).val(curval + '-');
    }
  })
    .addClass('bound-phone');
};
// ***********************************************************************
// Formatting for Social Security Numbers
// ***********************************************************************
jQuery(document).ready(function ($) {
  formatSocialSecurityFields();
});
function formatSocialSecurityFields($) {
  jQuery(".social-security, input[name*='social-security']").not('.bound').attr('maxlength', '11').not('bound-social-security').keyup(function () {
    if (this.value) {
      let curchr = this.value.length;
      let curval = jQuery(this).val();
      if (curchr == 3) {
        jQuery(this).val(curval + '-');
      } else if (curchr == 6) {
        jQuery(this).val(curval + '-');
      }
    }
  })
    .addClass('bound-social-security');
};
// ***********************************************************************
// Formatting for US Zip Codes
// ***********************************************************************
jQuery(document).ready(function ($) {
  formatPostalCodes($);
});
function formatPostalCodes($) {
  jQuery("input[type='zip'], input[type='zip*'], input[name*='zip'], input[name*='postal-code'], input[name='zip'], input[name*='zip'").not('.bound-postal-code').keyup(function () {
    let curchr = this.value.length;
    let curval = jQuery(this).val();
    if (curchr == 5) {
      jQuery(this).val(curval.substring(0, 5) + '-');
    }
  })
    .addClass('bound-postal-code');;
};
// ************************************************************************
// Set all <span> elements containing dynamic hidden fields to display:none
// ************************************************************************
jQuery(document).ready(function ($) {
  hideDynamicObjects();
});
function hideDynamicObjects() {
  jQuery(".wpcf7-dynamichidden").parent().css('display', 'none');
};
// ************************************************************************
// Change file input to drop zones
// ************************************************************************
jQuery(document).ready(function () {
  addDocumentDropZones();
});
function addDocumentDropZones() {
  addFileDropZone('disability');
  addFileDropZone('resume');
  addFileDropZone('veteran');
};
function addFileDropZone(documentType) {
  let dropHtml = '<form class="upload-document-form">.pdf .doc .docx .txt .png .jpg .gif';
  dropHtml += '<input type="file" id="DOCUMENTTYPE-doc-element" class="file-input" multiple accept=".pdf,.doc,.docx,.png,.jpg,.gif,.txt" onchange="handleFiles(this.files, this.parentElement.parentElement)">';
  dropHtml += '<label class="upload-button" for="DOCUMENTTYPE-doc-element">DOCUMENTTYPE file(s)</label>';
  dropHtml += '</form>';
  dropHtml += '<div class="progress-bar center-block"><progress id="DOCUMENTTYPE-progress-bar" class="progress-bar-image" max=100 value=0></progress></div>';
  dropHtml += '<div id="DOCUMENTTYPE-gallery" class="gallery" /></div>'
  dropHtml = dropHtml.replace(/DOCUMENTTYPE/g, documentType).valueOf();
  jQuery(`#${documentType}-drop-area`).find('*').not('label').remove();
  jQuery(`#${documentType}-drop-area`).append(dropHtml).find(`.file-input`).css('display', 'none');
  initFileDrop(documentType);
};
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function ($) {
  addMultiSelectWidget();
});
function addMultiSelectWidget($) {
  // let options = {
  //   selectOnTab: true,
  //   create: true,
  //   createOnBlur: false, // <-- selects user entered item when clicked outside of dropdown
  //   createFilter: '', // <-- regex for user entered item
  //   persist: true, // <-- true leaves user submitted in drop down list if deselected
  //   items: [], // <-- option items
  //   delimiter: ',', // <-- item delimiter
  //   maxOptions: 1000, 
  //   maxItems: null, // <-- Max items selected
  //   hideSelected: null, // <removes from dropdown when already selected
  //                       //   Single defaults to false, multiple to true
  //   closeAfterSelect: false,
  //   allowEmptyOptions: true, // <-- first item value = "" as a placeholder
  //   loadThrottle: 300, // <-- ms to wait for requesting values
  //   loadingClass: 'loading', 
  //   preload: false, 
  //   dropdownParent: null, // <-- 'body' will append to select element, 'null' as child of Selectize controll
  //   addPrecedence: false, // <-- if true, the "Add..." option is the default selection in the dropdown
  //   diacritics: true, // <-- allow international character support
  //   optgroups: [],	// <-- Option groups that options will be bucketed into. If your element is a <select> with <optgroup>s this property gets populated automatically. Make sure each object in the array has a property named whatever optgroupValueField is set to.
  //   dataAttr: 'data-data',	// <-- The <option> attribute from which to read JSON data about the option.
  //   valueField: 'value',	// <-- The name of the property to use as the value when an item is selected.
  //   optgroupValueField: 'value',	// <-- The name of the option group property that serves as its unique identifier.
  //   labelField: 'text',	// <-- The name of the property to render as an option / item label (not needed when custom rendering functions are defined).
  //   optgroupLabelField: 'label',	// <-- The name of the property to render as an option group label (not needed when custom rendering functions are defined).
  //   optgroupField: 'optgroup',	// <-- The name of the property to group items by.
  //   disabledField: 'disabled',	// <-- The name of the property to disabled option and optgroup.
  //   sortField: 'optgroup',	// <-- A single field or an array of fields to sort by. Each item in the array should be an object containing at least a field property. Optionally, direction can be set to 'asc' or 'desc'. The order of the array defines the sort precedence. Unless present, a special `$score` field will be automatically added to the beginning of the sort list. This will make results sorted primarily by match quality (descending).
  //   $score: 'order' - or - ['order'], // <-- You can override the `$score` function. For more information, see the sifter documentation.
  //   searchField: ['text'],	// <-- 	An array of property names to analyze when filtering options.
  //   searchConjunction: '(and/or)',	// <-- When searching for multiple terms (separated by space), this is the operator used. Can be 'and' or 'or' .
  //   lockOptgroupOrder: 'true/false',	// <-- If truthy, Selectize will make all optgroups be in the same order as they were added (by the `$order` property). Otherwise, it will order based on the score of the results in each.
  //   copyClassesToDropdown: 'true/false',	// <-- Copy the original input classes to the dropdown element.
  //   openOnFocus: false,
  // };
  jQuery(".selectize").not('.selectized').not('[multiple]').not('[multiple="multiple"]').each(function () {
    let createCustom = false;
    if (jQuery(this).hasClass('allow-custom'))
      createCustom = true;
    let thisSelect = jQuery(this).selectize({
      selectOnTab: true,
      create: createCustom,
      createOnBlur: true,
      loadThrottle: 300,
      addPrecedence: false,
      allowEmptyOptions: false,
      openOnFocus: false,
      onInitialize: function () {
        var that = this;
        this.$control.on("click", function () {
          that.ignoreFocusOpen = true;
          setTimeout(function () {
            that.ignoreFocusOpen = false;
          }, 50);
        });
      },
      onFocus: function () {
        if (!this.ignoreFocusOpen) {
          this.open();
        };
      },
    });
    let newSelect = jQuery(thisSelect)[0].selectize;
    if (jQuery(this).hasClass('editable'))
      newSelect.disable();
  });
  jQuery('select.selectize[multiple="multiple"]').not('.selectized').each(function () {
    let createCustom = false,
      dropDownHeaderMessage = 'Select all that apply';
    if (jQuery(this).hasClass('allow-custom')) {
      createCustom = true;
      dropDownHeaderMessage = dropDownHeaderMessage + ' or Type your own';
    }
    let thisSelect = jQuery(this).selectize({
      plugins: { 'remove_button': true, 'dropdown_header': { title: dropDownHeaderMessage } },
      selectOnTab: true,
      create: createCustom,
      createOnBlur: true,
      loadThrottle: 300,
      addPrecedence: false,
      allowEmptyOptions: false,
      closeAfterSelect: false,
      openOnFocus: false,
      //Close dropdown on clicking on control in focus
      onInitialize: function () {
        var that = this;
        this.$control.on('mousedown', function () {
          if (that.isOpen)
            that.close();
          else
            that.open();
        });
      },
    });
    let newSelect = jQuery(thisSelect)[0].selectize;
    if (jQuery(this).hasClass('editable'))
      newSelect.disable();
  });
  jQuery('.selectize-input input').not('bound-spacebar').on('keydown', function (e) {
    var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;
    if (key == 32) {
      e.stopPropagation();
    };
  })
    .addClass('bound-spacebar');
  jQuery('select.selectized[name$="code[]"').each(function () {
    let codeSelect = this.selectize;
    codeSelect.updateOption('create', false);
  });
}
// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function ($) {
  changeModifyInputSize($);
});
function changeModifyInputSize() {
  jQuery('input[name*="date"]').each(function (i, obj) {
    if (obj.getAttribute('value')) {
      let dateTime = new Date(obj.getAttribute('value'));
      obj.setAttribute('value', getFormattedDate(dateTime));
    };
  });
  jQuery('input[name="date"]').each(function (i, obj) {
    if (obj.getAttribute('value')) {
      let dateTime = new Date(obj.getAttribute('value'));
      obj.setAttribute('value', getFormattedDate(dateTime));
    };
  });
  jQuery('input').not('.bound-carriage-return').each(function () {
    jQuery(this).on('keydown', function (e) {
      var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : e.which ? e.which : 0;
      switch (key) {
        case 13: {
          if (!jQuery(e.target).is('textarea'))
            e.preventDefault();
          break;
        }
      };
    });
    jQuery(this).addClass('bound-carriage-return');
  });
  jQuery('input[type="text"],textarea').not('.bound-spaces').each(function () {
    jQuery(this).on('keydown', function (e) {
      var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : e.which ? e.which : 0;
      switch (key) {
        case 32: {
          e.stopPropagation();
          break;
        }
      };
    });
    jQuery(this).addClass('bound-spaces');
  });
  // jQuery('input[type="text"]').each(function () {
  //   if (this.getAttribute('size') === '40')
  //     this.removeAttribute('size');
  // });
  jQuery(".resize").removeAttr('size');
  jQuery(".resize").width(function () { return (this.value.length - 3) + "ch" });
  jQuery(".form-group .selectize-control").closest("span").css("display", "block");
};
// ************************************************************************
// Change boolean text values to checkbox on edit
// ************************************************************************
jQuery(document).ready(function ($) {
  changeBooleanToCheckbox();
});
function changeBooleanToCheckbox() {
  jQuery(".boolean").not('.bound').each(function (i, obj) {
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
  })
    .addClass('bound');
};
// ************************************************************************
// Change text values to textarea with class="textarea"
// ************************************************************************
jQuery(document).ready(function ($) {
  changeTextToTextArea();
});
function changeTextToTextArea() {
  let nodeNameArray = ['type', 'value', 'max-size', 'size'];
  jQuery('input.wpcf7-form-control.textarea').not('.bound').each(function (i, obj) {
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
    jQuery(obj.parentElement).attr('style', 'visibility: hidden');
    jQuery(new_span).insertAfter(obj.parentElement);
    jQuery(new_element).change(function () {
      jQuery(obj).val(jQuery(this).val());
    });
  });
  let autogrowOptions = {
    // context: jQuery(document),
    fixMinHeight: true,
    animate: false,
    // speed: 10,
    // cloneClass: 'autogrowclone', // Helper CSS for the clone used to match another textbox nearby
    onInitialize: true
  };
  jQuery('textarea').not('.bound').autogrow(autogrowOptions).addClass('bound');
};

// ************************************************************************
// 
// ************************************************************************
jQuery(document).ready(function ($) {
  loadDynamicSelect($);
});
function loadDynamicSelect($) {
  jQuery(".wpcf7-select").not('.selectize').each(function (i, obj) {
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
        if (field.classList.contains("boolean"))
          field.hasAttribute('disabled') ? field.removeAttribute('disabled') : field.setAttribute('disabled', '');
        if (field.classList.contains("wpcf7-select")) {
          if (field.classList.contains("selectize")) {
            let editSelect = field.selectize;
            if (editSelect.isDisabled)
              editSelect.enable()
            else
              editSelect.disable();
          } else {
            field.hasAttribute('disabled') ? field.removeAttribute('disabled') : field.setAttribute('disabled', '');
          };
        };
      };
    };
  });
};
jQuery.expr[':'].nameCaseInsensitive = function (node, stackIndex, properties) {
  return node.name.toLowerCase().indexOf(properties[3]) > -1;
};
function deleteObject(element) {
  let formElement = jQuery(element).closest('form.wpcf7-form');
  let object = formElement.find("[name='object']").attr('value');
  object = object ? object
    : formElement.find("[name='Object']").attr('value');
  let parentObject = formElement.find("[name='parent-object']").attr('value');
  parentObject = parentObject ? parentObject
    : formElement.find("[name='ParentObject']").attr('value');
  console.log(object);
  // let objectId = jQuery(`formElement input:nameCaseInsensitive("${object.toLowerCase()}id")`).attr('value');
  // let objectId = formElement.find(`input:nameCaseInsensitive("${object.toLowerCase()}-id")`).attr('value');
  let objectId = formElement.find(`[name="${dashToPascalCase(object)}Id"]`).attr('value');
  let id = objectId ? objectId
    : formElement.find(`[name*='${pascalCaseToDash(object)}-id']`).attr('value');
  if (!id && parentObject) {
    let parentObjectId = formElement.find(`[name="${dashToPascalCase(parentObject)}Id"]`).attr('value');
    id = parentObjectId ? parentObjectId
      : formElement.find(`[name*='${pascalCaseToDash(parentObject)}-id']`).attr('value');
    object = (id && parentObject) ? parentObject : object;
  }

  let message = `Delete ${object}: ${id}\nAre you sure?`;
  let tableName = `${pascalCaseToDash(object)}-table`//.replace('applicant-applicant', 'applicant');
  if (confirm(message)) {
    if (id && object) {
      let body = {};
      body['action'] = 'delete_object';
      body['id'] = id;
      body['object'] = object;
      body['table'] = tableName;
      body['popup'] = true;
      let args = getDefaultAjaxBody();
      args['element'] = element;
      args['body'] = body;
      ajaxRequest(args);
    } else {
      console.log('No ID found for deleting this object');
    };
  };
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
  let form = jQuery(submitButton).closest('form.wpcf7-form');
  let formClasses = submitButton.classList;
  if (formClasses) {
    let objectName,
      objectId,
      nextElement;
    // try {
    //   objectName = jQuery(formElement).find(`:nameCaseInsensitive(input"object")`).val().replace(`%5C`, ``);
    // } catch (e) {
    //   if (debug) console.log(`No Object found in form \n${e.toString().substring(0, 200)}...`);
    // };
    // if (objectName && objectName.length > 0) {
    //   try {
    //     objectId = jQuery(formElement).find(`input:nameCaseInsensitive("${objectName}Id")`).val().replace(`%5C`, ``);
    //     if (!objectId || objectId.length < 1)
    //       objectId = jQuery(formElement).find(`input:nameCaseInsensitive("${objectName}-id")`).val().replace(`%5C`, ``);
    //     if (!objectId || objectId.length < 1)
    //       objectId = jQuery(formElement).find(`input:nameCaseInsensitive("${objectName}_id")`).val().replace(`%5C`, ``);
    //     if (!objectId || objectId.length < 1)
    //       throw `Could not find an Object ID in form #${formId}`;
    //   } catch (e) {
    //     if (debug) console.log(`No Object ID found in form \n${e.toString().substring(0, 200)}...`);
    //   };
    // };
    objectName = form.find("[name='object']").attr('value');
    objectName = objectName ? objectName
      : form.find("[name='Object']").attr('value');;
    objectId = form.find(`[name="${dashToPascalCase(objectName)}Id"]`).attr('value');
    objectId = objectId ? objectId
      : form.find(`[name*='${pascalCaseToDash(objectName)}-id']`).attr('value');
    if (formClasses.contains('next-accordion'))
      nextElement = nextAccordion(formElement);
    else if (formClasses.contains('next-tab'))
      nextElement = nextTab(formElement);
    else if (formClasses.contains('close-toggle'))
      nextElement = closeToggle(formElement);
    else
      nextElement = formElement;
    if (formClasses.contains('load-select-table'))
      populateDataTable('applicant-search', 'vi_ApplicantSearch');
    if (formClasses.contains('load-next-form'))
      nextForm(formElementId, nextElement, formClasses.contains('load-children'));
    let popup = jQuery(formElement).closest('.pum');
    if (popup.length > 0) {
      if (objectName) {
        populateDataTable(`${objectName}-table`, objectName);
      };
      popup.popmake('close');
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
  args = getDefaultAjaxBody(args);
  let body = args['body'];
  let element;
  if (typeof (args['element']) !== 'undefined') {
    element = args['element'];
  };
  body['element'] = '';
  // jQuery(element).empty();
  jQuery.ajax({
    url: ajaxurl,
    type: args['type'],
    data: args['body'],
    success: function (data) {
      if (body['action'] === 'set_applicant_data') {
        handleAdminEditApplicantResponse(body);
        let nextAccordionElement = nextAccordion(element);
        nextForm(body['element-id'], nextAccordionElement, true);
      } else if (body['action'] === 'delete_object') {
        if (body['popup']) {
          let popup = jQuery(element).closest('.pum');
          if (popup)
            popup.popmake('close');
        };
        if (body['table'] && body['object'])
          populateDataTable(body['table'], body['object']);
      } else if (typeof args['element'] !== 'undefined' && typeof handleAjaxFormResponse === 'function') {
        handleAjaxFormResponse(element, data);
      } else {
        return data;
      };
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
  changeTextToTextArea();
  reloadScript('/wp-content/plugins/cf7-conditional-fields/js/scripts.js');
  addDocumentDropZones();
  addMultiSelectWidget();
  changeModifyInputSize();
};
function openDocumentWindow(fileName, container) {
  if (!container)
    container = 'disability';
  let popUpWindow = window.open("", "", "height=720,width=1024,menubar=no");
  let fileUrl = encodeURI(`${apiUrl}Docs/${container}/download/${fileName}`);
  popUpWindow.document.write(`<iframe allowTransparency="true" frameborder="0" scrolling="yes" style="width:100%;height:100%" src="${fileUrl}" type= "text/javascript"></iframe>`);
}
