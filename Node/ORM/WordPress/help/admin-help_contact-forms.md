# Site Administrator Help - Forms

## **All Contact Form**
 Add a blank line to the form
 ```html
 <div class="spacer"></div>
 ```
## **View / Edit Forms**

### Using Dynamic fields will retrieve data
* [dynamichidden] - not visible and does not take up space
* [dynamictext] - just like a text input
* Use any shortcode as last field in quotes
* Shortcode to retrieve data
    * "get_var '{Table}.{Column}'" - retrieve data
    * Must match Table / Column names 
* Values can be in PascalType, dash-type, or underscore_type format 
    * (eg - ApplicantDisability.CreateDate => applicant-disability.create-date)
* Special variables do NOT include a period
    * (eg - applicant-id) <- tracks which applicant being viewed
* Current single object (if 1 row) saved / retrieved will have a corresponding variable that stores it's id in dash-case
    * (eg - phone-id)
* Can retrieve {object}.id, but do name the variable  'id'
```
 [dynamichidden {name} class:{class1} class:{class2} "get_var '{Table}.{Column}']
 [dynamictext {name} class:{class1} class:{class2} "get_var '{Table}.{Column}']
```
### Classes to transform dynamic input types

### **Following example added to the top of the form**
```html
<!-- *************************************************-->
[hidden object "Phone"]
[dynamichidden applicant-id "get_var 'applicant-id'"]
[dynamichidden create-date "get_var 'Phone.CreateDate'"]
[dynamichidden create-user "get_var 'Phone.CreateUser'"]
[dynamichidden owner-type "get_var 'Phone.OwnerType'"]
[dynamichidden PhoneId "get_var 'Phone.id'"]
<!-- ************************************************* -->
```
## POST (save) Object
To save Objects (table rows), you must match the form name to the table column name (case sensitive).
The 'Base url' is not really the entire URL, it has been modified to be the table name
* PascalCase or dash-case
* Actual table name, not the plural
Match form names to table columns 

![Entity](file:///C:/Users/pdelosreyes/source/repos/JobOptions/Node/ORM/Wordpress/help/media/Form_Api.jpg "Code Entity")
![Entity](/Wordpress/help/media/Form_Api.jpg "Code Entity")


