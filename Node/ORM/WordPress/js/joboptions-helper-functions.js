


function getFormattedDate(dateString, time) {
  var date = new Date(dateString);
  var year = date.getFullYear();
  var month = (1 + date.getMonth()).toString();
  month = month.length > 1 ? month : '0' + month;
  var day = date.getDate().toString();
  day = day.length > 1 ? day : '0' + day;
  var dateString;
  if (time === true) {
    var hours = date.getHours();
    hours = hours.length > 1 ? hours : '0' + hours;
    var minutes = date.getMinutes();
    dateString = `${year}-${month}-${day}_${hours}-${minutes}`;
  } else {
    dateString = `${month}-${day}-${year}`;
  }
  return dateString;
};

function getFullName( firstName, middleName, lastName ) {
  if (typeof(middleName) !== 'undefined' && middleName.length > 0)
    middleName = ` ${middleName} `;
  else
    middleName = ` `;
  return `${firstName}${middleName}${lastName}`;
};

// ***************************************
// TODO: Cookies
// Keep current active accordion item open
// ***************************************
jQuery(document).ready(function($) {
//  var active = $(".et_pb_accordion_item .et_pb_toggle_open");
//  var accordion = findAncestor(active, 'et_pb_accordion');
//  var accordionClasses = Object.values(active.classList);
//  var accordionClass = findSubStringInArray(accordionClasses, 'et_pb_accordion_item_');

//  accordionClass = accordionClasses[3];

  	var $activeId = $('.et_pb_accordion_item .et_pb_toggle_open').attr('id');
//    console.log('ActiveId: ' + $activeId + ' Active: ' + $active);
//    Cookies.set('activeAccordionGroup', $active, { path: '' });

  $('.et_pb_toggle_title').click(function() {
    $this = $(this);
  //    console.log($this);
    //Cookies.remove('activeAccordionGroup');
    //Cookies.set('activeAccordionGroup', $this, {path: ''});
  });

	// var last = $.cookie('activeAccordionGroup');
  	var $last = Cookies.get('activeAccordionGroup');
	// console.log($last);
//	if ($last != null && $active != $last) {
//		$active.removeClass('.et_pb_toggle_open').addClass(".et_pb_toggle_closed");
		// $last.addClass(".et_pb_toggle_open");
//	}
});
// ***********************************************************************
// Function to search for next DIVI accordion module and clicks to open it
// ***********************************************************************
function nextAccordion(activeAccordion) {
  try {
    var skipNumber = 1;
    var toggleParent = findAncestor(activeAccordion, 'et_pb_toggle');
    var accordion = findAncestor(toggleParent, 'et_pb_accordion');
    var accordionClasses = Object.values(toggleParent.classList);

    // *************************
    // TODO:
    // Why is this returning the first value in the array??
    var accordionClass = findSubStringInArray(accordionClasses, 'et_pb_accordion_item_');
    // console.log(accordionClass);
	//  hard coded:
    accordionClass = accordionClasses[3];
    // *************************
    var accordionNumber = Number(accordionClass.slice(-1));
    var nextAccordionNumber = accordionNumber + skipNumber;
    var nextAccordionItem = 'et_pb_accordion_item_' + nextAccordionNumber;
    var nextAccordion = findChildByClassName(accordion, nextAccordionItem);
    var nextAccordionTitle = findChildByClassName(nextAccordion, 'et_pb_toggle_title');
    nextAccordionTitle.click();
    return nextAccordion;
  } catch (err) {
    console.log(err.message);
  }
}
// ***********************************************************************
// Function to search for the form's ancestor DIVI Toggle Module
//  and clicks the header (closes it)
// ***********************************************************************
function closeToggle(button) {
  try {
    var toggleArea = findAncestor(button, 'et_pb_module');
    var toggleTitle = findChildByClassName(nextAccordion, 'et_pb_toggle_title');
    toggleTitle.click();
  } catch (err) {
    console.log(err.message);
  }
}
// ***********************************************************************
// Function to search for and click on the next tab 
//  in the current DIVI Tab Module
// ***********************************************************************
function nextTab(button) {
  try {
    var skipNumber = 1;
    var tabValueArea = findAncestor(button, 'et_pb_tab');
    var tabModule = findAncestor(tabValueArea, 'et_pb_module');
    var tabClasses = Object.values(tabValueArea.classList);
    var tabClass = findSubStringInArray(tabClasses, 'et_pb_tab_');
    var tabNumber = Number(tabClass.slice(-1));
    var nextTabNumber = tabNumber + skipNumber;
    var newTab = 'et_pb_tab_' + nextTabNumber;
    var tabControls = tabModule.getElementsByClassName('et_pb_tabs_controls')[0];
    var tab = findChildByClassName(tabControls, newTab);
    tab.click();
  } catch (err) {
    console.log(err.message);
  }
};
// ***********************************************************************
// Find and return the key of an array value that contains 'str'
// ***********************************************************************
function findSubStringInArray(myArray, str) {
  return myArray.find(function(elem) {
    return str.indexOf(elem);
  });
}
// ***********************************************************************
// Find the first ancestor matching class 'className' 
//  starting at element 'el'
// ***********************************************************************
function findAncestor(el, className) {
  while ((el = el.parentNode) && !el.classList.contains(className));
  return el;
}
// ************************************************************************
// Find the first child matching class 'className' starting at element 'el'
// ************************************************************************
function findChildByClassName(el, className) {
  for (var i = 0; i < el.childNodes.length; i++) {
    if (el.childNodes[i].classList) {
      if (el.childNodes[i].classList.contains(className))
        return el.childNodes[i];
    }
  }
}
// ***********************************************************************
// Reload a script that is attached by src to the page
//  -- Not the script *contains* @src, be as detailed as possible
// ***********************************************************************
function reloadScript(src) {
    src = jQuery('script[src*="' + src + '"]').attr("src");
    jQuery('script[src*="' + src + '"]').remove();
    jQuery('<script/>').attr('src', src).appendTo('body');
}
// ***********************************************************************
// dash-string to camelCaseString
// ***********************************************************************
function dashToCamelCase (myString) {
  return myString.replace(/-([a-z])/g, function (g) { return g[1].toUpperCase(); });
};
// ***********************************************************************
// camelCaseString to dash-string
// ***********************************************************************
function camelCaseToDash (myString) {
  return myString.replace(/([a-z][A-Z])/g, function (g) { return g[0] + '-' + g[1].toLowerCase() });
};
// ***********************************************************************
// Refresh entire page
// ***********************************************************************
function refreshPage() {
  var body = {};
  body['action'] = 'refresh_session';
  var args = getDefaultAjaxBody();
  args['body'] = body;
  ajaxRequest(args);
  window.location.reload();
}
// ***********************************************************************
// Generate object with default body for WordPress AJAX requests
// ***********************************************************************
function getDefaultAjaxBody(args) {
  if (!args)
    args = {};
  if (!args['body'])
    args['body'] = {};
  if (!args['dataType'])
    args['dataType'] = 'json';
  if (!args['type'])
    args['type'] = 'POST';
  if (!args['params'])
  	args['params'] = '';
  return args;
}

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
