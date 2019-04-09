


function getFormattedDate(dateString, time) {
  if (!dateString)
    return '';
  let date = new Date(dateString);
  let year = date.getFullYear();
  let month = (1 + date.getMonth()).toString();
  month = month.length > 1 ? month : '0' + month;
  let day = date.getDate().toString();
  day = day.length > 1 ? day : '0' + day;
  let newDateString;
  if (time === true) {
    let hours = date.getHours();
    hours = hours.length > 1 ? hours : '0' + hours;
    let minutes = date.getMinutes();
    newDateString = `${year}-${month}-${day}_${hours}-${minutes}`;
  } else {
    newDateString = `${month}-${day}-${year}`;
  }
  return newDateString;
};

function getFullName(firstName, middleName, lastName) {
  if (typeof (middleName) !== 'undefined' && middleName.length > 0)
    middleName = ` ${middleName} `;
  else
    middleName = ` `;
  return `${firstName}${middleName}${lastName}`;
};

// ***************************************
// TODO: Cookies
// Keep current active accordion item open
// ***************************************
// jQuery(document).ready(function ($) {
//   //  let active = $(".et_pb_accordion_item .et_pb_toggle_open");
//   //  let accordion = findAncestor(active, 'et_pb_accordion');
//   //  let accordionClasses = Object.values(active.classList);
//   //  let accordionClass = findSubStringInArray(accordionClasses, 'et_pb_accordion_item_');

//   //  accordionClass = accordionClasses[3];

//   let activeId = jQuery('.et_pb_accordion_item .et_pb_toggle_open').attr('id');
//   //    console.log('ActiveId: ' + $activeId + ' Active: ' + $active);
//   //    Cookies.set('activeAccordionGroup', $active, { path: '' });

//   jQuery('.et_pb_toggle_title').click(function () {
//     this = jQuery(this);
//     //    console.log($this);
//     //Cookies.remove('activeAccordionGroup');
//     //Cookies.set('activeAccordionGroup', $this, {path: ''});
//   });

//   // let last = $.cookie('activeAccordionGroup');
//   let last = Cookies.get('activeAccordionGroup');
//   // console.log($last);
//   //	if ($last != null && $active != $last) {
//   //		$active.removeClass('.et_pb_toggle_open').addClass(".et_pb_toggle_closed");
//   // $last.addClass(".et_pb_toggle_open");
//   //	}
// });
// ***********************************************************************
// Function to search for next DIVI accordion module and clicks to open it
// ***********************************************************************
function nextAccordion(activeAccordion) {
  try {
    let skipNumber = 1;
    let toggleParent = findAncestor(activeAccordion, 'et_pb_toggle');
    let accordion = findAncestor(toggleParent, 'et_pb_accordion');
    let accordionClasses = Object.values(toggleParent.classList);

    // *************************
    // TODO:
    // Why is this returning the first value in the array??
    let accordionClass = findSubStringInArray(accordionClasses, 'et_pb_accordion_item_');
    // console.log(accordionClass);
    //  hard coded:
    accordionClass = accordionClasses[3];
    // *************************
    let accordionNumber = Number(accordionClass.slice(-1));
    let nextAccordionNumber = accordionNumber + skipNumber;
    let nextAccordionItem = 'et_pb_accordion_item_' + nextAccordionNumber;
    let nextAccordion = findChildByClassName(accordion, nextAccordionItem);
    let nextAccordionTitle = findChildByClassName(nextAccordion, 'et_pb_toggle_title');
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
    let toggleArea = findAncestor(button, 'et_pb_module');
    let toggleTitle = findChildByClassName(nextAccordion, 'et_pb_toggle_title');
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
    let skipNumber = 1;
    let tabValueArea = findAncestor(button, 'et_pb_tab');
    let tabModule = findAncestor(tabValueArea, 'et_pb_module');
    let tabClasses = Object.values(tabValueArea.classList);
    let tabClass = findSubStringInArray(tabClasses, 'et_pb_tab_');
    let tabNumber = Number(tabClass.slice(-1));
    let nextTabNumber = tabNumber + skipNumber;
    let newTab = 'et_pb_tab_' + nextTabNumber;
    let tabControls = tabModule.getElementsByClassName('et_pb_tabs_controls')[0];
    let tab = findChildByClassName(tabControls, newTab);
    tab.click();
  } catch (err) {
    console.log(err.message);
  }
};
// ***********************************************************************
// Find and return the key of an array value that contains 'str'
// ***********************************************************************
function findSubStringInArray(myArray, str) {
  return myArray.find(function (elem) {
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
  for (let i = 0; i < el.childNodes.length; i++) {
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
function dashToCamelCase(myString) {
  return myString.replace(/-([a-z])/gi, function (g) { return g[1].toUpperCase(); });
};
// ***********************************************************************
// camelCaseString to dash-string
// ***********************************************************************
function camelCaseToDash(myString) {
  return myString.replace(/([a-z][A-Z])/g, function (g) { return g[0] + '-' + g[1].toLowerCase() });
};
// ***********************************************************************
// PascalCaseString to dash-string
// ***********************************************************************
function pascalCaseToDash(myString) {
  return myString.replace(/([a-z][A-Z])/g, function (g) { return g[0] + '-' + g[1].toLowerCase() }).replace(/^\w/, c => c.toLowerCase());
};
// ***********************************************************************
// dash-string to PascalCaseString
// ***********************************************************************
function dashToPascalCase(myString) {
  // return myString.replace(/-([a-z])/gi, function (g) { return g[1].toUpperCase(); }).replace(/^\w/, c => c.toUpperCase());
  myString = myString.replace(/-([a-z])/gi, function (g) { return g[1].toUpperCase(); });
  return myString.replace(/_([a-z])/gi, function (g) { return g[1].toUpperCase(); }).replace(/^\w/, c => c.toUpperCase());
};
// ***********************************************************************
// Refresh entire page
// ***********************************************************************
function refreshPage() {
  let body = {};
  body['action'] = 'refresh_session';
  let args = getDefaultAjaxBody();
  args['body'] = body;
  ajaxRequest(args);
  window.location.reload();
}
// ***********************************************************************
// Generate object with default body for WordPress AJAX requests
// ***********************************************************************
function getDefaultAjaxBody(args) {
  let ajaxArgs = {};
  if (!args)
    args = {};
  for (var k in args) { if (k !== 'body') ajaxArgs[k] = args[k]; };
  let body = args['body'] ? args['body'] : {};
  if (security_tokens && typeof(security_tokens.ajax_nonce) !== 'undefined')
    body['security'] = security_tokens.ajax_nonce;
  ajaxArgs['dataType'] = args['dataType'] ? args['dataType'] : 'json';
  ajaxArgs['type'] = args['type'] ? args['type'] : 'POST';
  // ajaxArgs['params'] = args['params'] ? args['params'] : '';
  if (args['params'])
    ajaxArgs['params'] = args['params'];
  ajaxArgs['async'] = args['async'] ? args['async'] : true;
  ajaxArgs['url'] = args['url'] ? args['url'] : ajaxurl;
  ajaxArgs['body'] = (Array.isArray(body)) ? JSON.parse(JSON.stringify(body)) : body;
  // args['body'] = JSON.parse(JSON.stringify(body));
  return ajaxArgs;
}
function getEvents(element) {
  var elemEvents = jQuery._data(element, "events");
  var allDocEvnts = jQuery._data(document, "events");
  for(var evntType in allDocEvnts) {
      if(allDocEvnts.hasOwnProperty(evntType)) {
          var evts = allDocEvnts[evntType];
          for(var i = 0; i < evts.length; i++) {
              if(jQuery(element).is(evts[i].selector)) {
                  if(elemEvents == null) {
                      elemEvents = {};
                  }
                  if(!elemEvents.hasOwnProperty(evntType)) {
                      elemEvents[evntType] = [];
                  }
                  elemEvents[evntType].push(evts[i]);
              }
          }
      }
  }
  return elemEvents;
}
jQuery.fn.isBound = function(type, fn) {
  var data = jQuery._data(this[0], 'events')[type];
  if (data === undefined || data.length === 0) {
      return false;
  };
  return (-1 !== jQuery.inArray(fn, data));
};