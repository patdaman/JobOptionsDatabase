CREATE TABLE [dbo].[Site] (
    [id]                   INT           IDENTITY (10000, 1) NOT NULL,
    [#]                    FLOAT (53)    NOT NULL,
    [SiteName]             NVARCHAR (40) NULL,
    [Site]                 NVARCHAR (50) NULL,
    [Code]                 NVARCHAR (6)  NULL,
    [Num]                  FLOAT (53)    NULL,
    [DivisionCode]         INT           NULL,
    [Dept]                 NVARCHAR (3)  NOT NULL,
    [Services]             NVARCHAR (40) NULL,
    [Contract#]            NVARCHAR (20) NULL,
    [ContractingOfficer]   NVARCHAR (40) NULL,
    [SiteAddress]          NVARCHAR (40) NULL,
    [Address 2]            NVARCHAR (40) NULL,
    [Address 3]            NVARCHAR (40) NULL,
    [City]                 NVARCHAR (20) NULL,
    [ST]                   NVARCHAR (2)  NULL,
    [Zip]                  NVARCHAR (50) NULL,
    [Phone]                NVARCHAR (50) NULL,
    [SiteInspector]        NVARCHAR (40) NULL,
    [SitePoint of Contact] NVARCHAR (40) NULL,
    [ProjectManager]       NVARCHAR (40) NULL,
    [H&&W]                 FLOAT (53)    NULL,
    [BaseWage]             FLOAT (53)    NULL,
    [RevenueBasis]         NVARCHAR (20) NULL,
    [Price]                FLOAT (53)    CONSTRAINT [DF__Site__Price__39987BE6] DEFAULT ((0)) NULL,
    [SSDailyMgtExpense]    FLOAT (53)    CONSTRAINT [DF__Site__SSDailyMgt__3A8CA01F] DEFAULT ((0)) NULL,
    [StartTime]            DATETIME2 (0) NULL,
    [DataEntryDateAndTime] DATETIME2 (0) NULL,
    [OTCode]               INT           NULL,
    [Active]               BIT           CONSTRAINT [DF__Site__Active__3B80C458] DEFAULT ((1)) NOT NULL,
    [CreateDate]           DATETIME2 (0) CONSTRAINT [DF_Site_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]           VARCHAR (128) CONSTRAINT [DF_Site_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]           DATETIME2 (0) CONSTRAINT [DF_Site_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]           VARCHAR (128) CONSTRAINT [DF_Site_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [SSMA_CC$Site$Address 2$disallow_zero_length] CHECK (len([Address 2])>(0)),
    CONSTRAINT [SSMA_CC$Site$Address 3$disallow_zero_length] CHECK (len([Address 3])>(0)),
    CONSTRAINT [SSMA_CC$Site$City$disallow_zero_length] CHECK (len([City])>(0)),
    CONSTRAINT [SSMA_CC$Site$Code$disallow_zero_length] CHECK (len([Code])>(0)),
    CONSTRAINT [SSMA_CC$Site$Contract#$disallow_zero_length] CHECK (len([Contract#])>(0)),
    CONSTRAINT [SSMA_CC$Site$ContractingOfficer$disallow_zero_length] CHECK (len([ContractingOfficer])>(0)),
    CONSTRAINT [SSMA_CC$Site$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$Site$Phone$disallow_zero_length] CHECK (len([Phone])>(0)),
    CONSTRAINT [SSMA_CC$Site$ProjectManager$disallow_zero_length] CHECK (len([ProjectManager])>(0)),
    CONSTRAINT [SSMA_CC$Site$RevenueBasis$disallow_zero_length] CHECK (len([RevenueBasis])>(0)),
    CONSTRAINT [SSMA_CC$Site$Services$disallow_zero_length] CHECK (len([Services])>(0)),
    CONSTRAINT [SSMA_CC$Site$SiteAddress$disallow_zero_length] CHECK (len([SiteAddress])>(0)),
    CONSTRAINT [SSMA_CC$Site$SiteInspector$disallow_zero_length] CHECK (len([SiteInspector])>(0)),
    CONSTRAINT [SSMA_CC$Site$SiteName$disallow_zero_length] CHECK (len([SiteName])>(0)),
    CONSTRAINT [SSMA_CC$Site$SitePoint of Contact$disallow_zero_length] CHECK (len([SitePoint of Contact])>(0)),
    CONSTRAINT [SSMA_CC$Site$ST$disallow_zero_length] CHECK (len([ST])>(0)),
    CONSTRAINT [SSMA_CC$Site$Zip$disallow_zero_length] CHECK (len([Zip])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Address 2$disallow_zero_length] CHECK (len([Address 2])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Address 3$disallow_zero_length] CHECK (len([Address 3])>(0)),
    CONSTRAINT [SSMA_CC$Sites$City$disallow_zero_length] CHECK (len([City])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Code$disallow_zero_length] CHECK (len([Code])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Contract#$disallow_zero_length] CHECK (len([Contract#])>(0)),
    CONSTRAINT [SSMA_CC$Sites$ContractingOfficer$disallow_zero_length] CHECK (len([ContractingOfficer])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Phone$disallow_zero_length] CHECK (len([Phone])>(0)),
    CONSTRAINT [SSMA_CC$Sites$ProjectManager$disallow_zero_length] CHECK (len([ProjectManager])>(0)),
    CONSTRAINT [SSMA_CC$Sites$RevenueBasis$disallow_zero_length] CHECK (len([RevenueBasis])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Services$disallow_zero_length] CHECK (len([Services])>(0)),
    CONSTRAINT [SSMA_CC$Sites$SiteAddress$disallow_zero_length] CHECK (len([SiteAddress])>(0)),
    CONSTRAINT [SSMA_CC$Sites$SiteInspector$disallow_zero_length] CHECK (len([SiteInspector])>(0)),
    CONSTRAINT [SSMA_CC$Sites$SiteName$disallow_zero_length] CHECK (len([SiteName])>(0)),
    CONSTRAINT [SSMA_CC$Sites$SitePoint of Contact$disallow_zero_length] CHECK (len([SitePoint of Contact])>(0)),
    CONSTRAINT [SSMA_CC$Sites$ST$disallow_zero_length] CHECK (len([ST])>(0)),
    CONSTRAINT [SSMA_CC$Sites$Zip$disallow_zero_length] CHECK (len([Zip])>(0)),
    CONSTRAINT [Site${956BAD58-6F8B-4878-8965-14A6146A6145}] FOREIGN KEY ([DivisionCode]) REFERENCES [dbo].[SpecialtyCodeTypes] ([Code])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Active]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[OTCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'OTCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[DataEntryDateAndTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'DataEntryDateAndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[StartTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[SSDailyMgtExpense]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'SSDailyMgtExpense';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Price]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[RevenueBasis]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'RevenueBasis';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[BaseWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'BaseWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[H&&W]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'H&&W';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[ProjectManager]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'ProjectManager';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[SitePoint of Contact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'SitePoint of Contact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[SiteInspector]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'SiteInspector';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Phone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Zip]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[ST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'ST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Address 3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Address 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Address 2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Address 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[SiteAddress]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'SiteAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[ContractingOfficer]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'ContractingOfficer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Contract#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Contract#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Services]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Services';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[DivisionCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'DivisionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[SiteName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'SiteName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Site';

