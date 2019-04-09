
# Site Administrator Help - SQL Server

## **Entities**
All fields are tied to tables in SQL Server represented as entities:

![Entity](file:///C:/Users/pdelosreyes/source/repos/JobOptions/Node/ORM/Wordpress/help/media/Entity.jpg "Applicant Entity")
![Entity](/Wordpress/help/media/Entity.jpg "Applicant Entity")

* Code can be executed to create tables (sample below)
* Alternately they can be created graphically in SQL Server Management Studio
* Views are also Entities but are a special case
    * Read only
    * Good for reporting
    * views **must** begin with the prefix '**vi_**' *(not including quotes)* to be handled properly
    * vi_ApplicantSearch for example
* **All** entities have Create and Modify Fields that are required (ie - not null).
    * Default values are set up as Constraints, but the values are still required coming from Wordpress since the API model will recognize them as being required. 
    * Manually adding rows to the tables is simplified without requiring values for those fields

### **Type / Enum entities**
Special tables representing 'enum' object.
These are simply name / value pairs, although the detail is generally the same as the name.

![Entity](file:///C:/Users/pdelosreyes/source/repos/JobOptions/Node/ORM/Wordpress/help/media/Type_Entity.jpg "Applicant Entity")
![Entity](/Wordpress/help/media/Type_Entity.jpg "Applicant Entity")
### *Sample code for **Types**:*
```sql
CREATE TABLE [dbo].[EthnicityTypes](
	[Name] [varchar](128) NOT NULL,
	[Description] [varchar](256) NULL,
	[Active] [bit] NOT NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[CreateUser] [varchar](128) NOT NULL,
	[ModifyDate] [datetime2](0) NOT NULL,
	[ModifyUser] [varchar](128) NOT NULL,
 CONSTRAINT [PK_EthnicityTypes] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EthnicityTypes] ADD  CONSTRAINT [DF_EthnicityTypes_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[EthnicityTypes] ADD  CONSTRAINT [DF_EthnicityTypes_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[EthnicityTypes] ADD  CONSTRAINT [DF_EthnicityTypes_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [dbo].[EthnicityTypes] ADD  CONSTRAINT [DF_EthnicityTypes_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[EthnicityTypes] ADD  CONSTRAINT [DF_EthnicityTypes_ModifyUser]  DEFAULT (suser_sname()) FOR [ModifyUser]
GO
```
* Note that the **Name** field is the primary key as a varchar(128) (ie - string or text).
    * *All other tables utilize the identity field of **id***

### **Code entities**
Special tables representing Legacy Code objects.
These are name / value pairs with additional category information.
They are also dynamically tied to a 'Type' object as their parent.
There are no special key relationships in the database, these relationships are handled in PHP executed within Wordpress.

![Entity](file:///C:/Users/pdelosreyes/source/repos/JobOptions/Node/ORM/Wordpress/help/media/Code_Entity.jpg "Code Entity")
![Entity](/Wordpress/help/media/Code_Entity.jpg "Code Entity")
#### *Sample code for **Codes**:*
```sql
CREATE TABLE [dbo].[ApplicantDisabilityCode](
	[id] [int] IDENTITY(10000,1) NOT NULL,
	[ApplicantId] [int] NOT NULL,
	[ApplicantDisabilityId] [int] NULL,
	[SpecialtyCode] [int] NOT NULL,
	[CreateDate] [datetime2](0) NOT NULL,
	[CreateUser] [varchar](128) NOT NULL,
	[ModifyDate] [datetime2](0) NOT NULL,
	[ModifyUser] [varchar](128) NOT NULL,
 CONSTRAINT [PK_ApplicantDisabilityCode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicantDisabilityCode] ADD  CONSTRAINT [DF_ApplicantDisabilityCode_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ApplicantDisabilityCode] ADD  CONSTRAINT [DF_ApplicantDisabilityCode_CreateUser]  DEFAULT (suser_name()) FOR [CreateUser]
GO
ALTER TABLE [dbo].[ApplicantDisabilityCode] ADD  CONSTRAINT [DF_ApplicantDisabilityCode_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[ApplicantDisabilityCode] ADD  CONSTRAINT [DF_ApplicantDisabilityCode_ModifyUser]  DEFAULT (suser_name()) FOR [ModifyUser]
GO
```
* Note the use of **id** as the primary key.  It is an index, meaning that it auto increments for each new row, starting at 10000


