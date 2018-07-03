CREATE TABLE [dbo].[Sites] (
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
    [Price]                FLOAT (53)    DEFAULT ((0)) NULL,
    [SSDailyMgtExpense]    FLOAT (53)    DEFAULT ((0)) NULL,
    [StartTime]            DATETIME2 (0) NULL,
    [DataEntryDateAndTime] DATETIME2 (0) NULL,
    [OTCode]               INT           NULL,
    [Active]               BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]       ROWVERSION    NOT NULL,
    CONSTRAINT [Sites$PrimaryKey] PRIMARY KEY CLUSTERED ([Dept] ASC),
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
    CONSTRAINT [Sites${956BAD58-6F8B-4878-8965-14A6146A6145}] FOREIGN KEY ([DivisionCode]) REFERENCES [dbo].[SpecialtyCodes] ([Code])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Sites$#]
    ON [dbo].[Sites]([#] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites${956BAD58-6F8B-4878-8965-14A6146A6145}]
    ON [dbo].[Sites]([DivisionCode] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites$Code]
    ON [dbo].[Sites]([Code] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Sites$Dept]
    ON [dbo].[Sites]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites$DivisionCode]
    ON [dbo].[Sites]([DivisionCode] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites$Num]
    ON [dbo].[Sites]([Num] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites$OTCode]
    ON [dbo].[Sites]([OTCode] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites$SiteName]
    ON [dbo].[Sites]([SiteName] ASC);


GO
CREATE NONCLUSTERED INDEX [Sites$StartTime]
    ON [dbo].[Sites]([StartTime] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[{956BAD58-6F8B-4878-8965-14A6146A6145}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites${956BAD58-6F8B-4878-8965-14A6146A6145}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[DivisionCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$DivisionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$Num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[OTCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$OTCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[SiteName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$SiteName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[StartTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'INDEX', @level2name = N'Sites$StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[SiteName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'SiteName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[DivisionCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'DivisionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Services]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Services';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Contract#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Contract#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[ContractingOfficer]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'ContractingOfficer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[SiteAddress]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'SiteAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Address 2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Address 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Address 3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Address 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[ST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'ST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Zip]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Phone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[SiteInspector]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'SiteInspector';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[SitePoint of Contact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'SitePoint of Contact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[ProjectManager]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'ProjectManager';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[H&&W]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'H&&W';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[BaseWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'BaseWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[RevenueBasis]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'RevenueBasis';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Price]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[SSDailyMgtExpense]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'SSDailyMgtExpense';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[StartTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[DataEntryDateAndTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'DataEntryDateAndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[OTCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'OTCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[Active]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[{956BAD58-6F8B-4878-8965-14A6146A6145}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'CONSTRAINT', @level2name = N'Sites${956BAD58-6F8B-4878-8965-14A6146A6145}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Sites].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sites', @level2type = N'CONSTRAINT', @level2name = N'Sites$PrimaryKey';

