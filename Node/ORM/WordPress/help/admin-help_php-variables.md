# Site Administrator Help - Global Variables

## **PHP Variables**
Access the Global variables in the Wordpress admin site *(https://{url}/wp-admin)*

Click on ***Snippets***, then search for ***Global User Variables***

![Global Variables](/Wordpress/help/media/Global_Variables.jpg "Global Variables")

### **Debugging**
```php
/* ******************************* */
/* Verbose output to console
/*  and error log via PHP
/*  *as well* as JavaScript
/* ******************************* */
$GLOBALS['debug'] = true;
// extreme 	= 4
// detail 	= 3
// medium 	= 2
// logging 	= 1
// none 	= 0
$GLOBALS['debug_level'] = '2';
```
### **API Settings**
```php
/* ******************************* */
/* Base URL to API server
/*  - usually https:{domain}/api/
/* ******************************* */
$GLOBALS['api_base_url'] = "http://apply.joboptionsinc.org:3000/api/";

/* ******************************* */
/* Tables which are not altered to
/*  plural for API calls
/*  described on: $GLOBALS['api_base_url']
/*  but switch '/explore/' for '/api/' in the path
/*  eg. http://192.168.1.212:3000/explore/
/*   ** must be lowercase!
/* ******************************* */
$GLOBALS['api_plural_exceptions'] = array(
  'education'
  );

/* ******************************* */
/* Basic Auth user login
/*  for access to API
/* ******************************* */
$GLOBALS['basic_auth'] = 'pdelosreyes:xxxxxx';

/* ******************************* */
/* Verify SSL 
/*  only allows HTTP communication
/*  if SSL certificate is verified
/*  - does NOT work with self-signed
/* ******************************* */
$GLOBALS['verify_ssl'] = false;

/* ******************************* */
/* API URL for uploading documents
/*  - Wordpress code will replace 
/*    FILE_TYPE
/*    with subfolder
/*    eg: 'Disability' or 'Resume'
/*
/* The variable here checks for 
/*  trailing '/' on the base url.
/* ******************************* */
$GLOBALS['document_upload_url'] = mb_substr($GLOBALS['api_base_url'], -1) === '/' 
    ? $GLOBALS['api_base_url'].'Docs/FILE_TYPE/upload' 
    : $GLOBALS['api_base_url'].'/Docs/FILE_TYPE/upload';
```
### **API Values**
*Checkbox / radio values send their text (label) value, so these alter the value sent to the API.*

*This has been corrected for in PHP code, but the issue can still bubble up*
```php
/* ******************************* */
/* Will adjust the values sent
/*  to API { form_value => api_value }
/* ******************************* */
$GLOBALS['value_modifiers'] = array(
  "Have you previously been employed by Job Options Inc?" => "true",
  "Have you previously applied to Job Options Inc?" => "true",
  "Do you have any relatives or friends who currently work for Job Options Inc?" => "true",
  "Are you at least 18 years of age?" => "true",
  "Did you graduate?" => "true",
  "Approved" => "true",
  "Yes" => "true",
  "No" => "false",
  "yes" => "true",
  "no" => "false",
  "Disabled" => "true",
  "Not Disabled" => "false",
  "Active" => "true"
);
```
### **Whitelist for enforcing login**
```php
/**
 * Filter Force Login to allow exceptions for specific URLs.
 *
 * @param array $whitelist An array of URLs. Must be absolute.
 * @return array
 */
function my_forcelogin_whitelist( $whitelist ) {
  $whitelist[] = home_url( '/application/' );
  $whitelist[] = home_url();
  return $whitelist;
}
add_filter( 'v_forcelogin_whitelist', 'my_forcelogin_whitelist' );
```
### **Form Loading**
Fills in forms designated by the target class defined in HTML **&lt;div class="contact-form" /&gt;**
```html
<div id="personal-admin-form" class="contact-form">
    <p class="description">Please confirm search information</p>
</div>
```
**Next development shall target the form location, this will fill the forms in the order specified here __regardless__ of target placement in the page*
```php
/* ******************************* */
/* If the key of this array matches 
/*  the id sent from jQuery AJAX call,
/* Each shortcode in the value field
/*  is executed in the order given
/* And replaces the element where
/*  the ajax call originated
/* ******************************* */
$GLOBALS['next-shortcode'] = array(
  // From the 'Applicant Select' accordion down to 'Applicant Data' accordion with multiple tabs
  'applicant-search' => array('[contact-form-7 id="'.editForms::$applicant.'"]',
                           '[contact-form-7 id="'.editForms::$application.'"]',
                           '[contact-form-7 id="'.editForms::$serviceRecord.'"]',
                          ),
  // From the 'Main Application' accordion down to 'Application Detail' accordion with multiple tabs
  'wpcf7-f14' => array('[contact-form-7 id="'.applicationForms::$document.'"]',
                       '[contact-form-7 id="'.applicationForms::$personal.'"]',
                       '[contact-form-7 id="'.applicationForms::$address.'"]',
                       '[contact-form-7 id="'.applicationForms::$JobOptions.'"]',
                       '[contact-form-7 id="'.applicationForms::$workPreferences.'"]',
                       '[contact-form-7 id="'.applicationForms::$positions.'"]',
                       
                       '[contact-form-7 id="'.applicationForms::$education.'"]',
                       '[contact-form-7 id="'.applicationForms::$previousEmployer.'"]',
                       '[contact-form-7 id="'.applicationForms::$serviceRecord.'"]',
                       '[contact-form-7 id="'.applicationForms::$alternateName.'"]'
                ));
```
### **Front End JavaScript Variables**
```php
/* ********************************************************* */
/* ****** Variables for use in front end JavaScript  ******* */
/* ********************************************************* */
class userVars {
  // Add here as required.
  //  these are global accross the entire page in JavaScript
  // Use static if value will not change
  public static $myVar = 'my value';
  //  accessible in javascript as -> userVars['myVar']
  public $collapsedGroups;
}
// Wordpress post ID of the modal defined in Wordpress
class modals {
  public static $detail = '2495';
    ...
}
// Wordpress Post ID of the contact form defined in Wordpress
class applicationForms {
  public static $mainApplication = '14';
    ...
}
// Wordpress Post ID of the contact form defined in Wordpress
class adminEditForms {
  public static $status = '2640';
    ...
}

```