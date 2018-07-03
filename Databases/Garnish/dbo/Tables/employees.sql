CREATE TABLE [dbo].[employees] (
    [Emp#]                    FLOAT (53)       NULL,
    [Episode]                 INT              NULL,
    [SS]                      NVARCHAR (12)    NULL,
    [First]                   NVARCHAR (20)    NULL,
    [Middle]                  NVARCHAR (1)     NULL,
    [Last]                    NVARCHAR (20)    NULL,
    [Dept]                    NVARCHAR (3)     NULL,
    [Job_Title]               NVARCHAR (20)    NULL,
    [MultiTitle]              NVARCHAR (2)     NULL,
    [Status]                  NVARCHAR (1)     NULL,
    [ReferringAgency]         NVARCHAR (40)    NULL,
    [Sex]                     NVARCHAR (1)     NULL,
    [Birthdate]               DATETIME2 (0)    NULL,
    [Ethnicity]               NVARCHAR (20)    NULL,
    [EEO_Code]                NVARCHAR (15)    NULL,
    [EEO_DIVX]                NVARCHAR (6)     NULL,
    [Vets_100]                NVARCHAR (6)     NULL,
    [Hire_Date]               DATETIME2 (0)    NULL,
    [BaseWage]                FLOAT (53)       NULL,
    [SalariedExempt]          NVARCHAR (1)     NULL,
    [DIS]                     NVARCHAR (1)     NULL,
    [DisType]                 NVARCHAR (20)    NULL,
    [DisForJob]               NVARCHAR (1)     NULL,
    [SpecialProductivity]     FLOAT (53)       NULL,
    [SpecialProductivityDate] DATETIME2 (0)    NULL,
    [Ins_Carrie]              NVARCHAR (20)    NULL,
    [Term_Date]               DATETIME2 (0)    NULL,
    [Term_Reason]             NVARCHAR (50)    NULL,
    [DayNight]                NVARCHAR (1)     NULL,
    [#]                       INT              NULL,
    [DataEntryDateAndTime]    DATETIME2 (0)    NULL,
    [LastDayWorked]           DATETIME2 (0)    NULL,
    [ID]                      UNIQUEIDENTIFIER NULL,
    [s_ColLineage]            VARBINARY (MAX)  NULL,
    [s_Generation]            INT              NULL,
    [s_Lineage]               VARBINARY (MAX)  NULL,
    [upsize_ts]               VARBINARY (8)    NULL,
    [SSMA_TimeStamp]          ROWVERSION       NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[SS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'SS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[First]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Middle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Middle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Last]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Job_Title]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Job_Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[MultiTitle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'MultiTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[ReferringAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'ReferringAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Sex]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Sex';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Birthdate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Ethnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[EEO_Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'EEO_Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[EEO_DIVX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'EEO_DIVX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Vets_100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Vets_100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Hire_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Hire_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[BaseWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'BaseWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[SalariedExempt]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'SalariedExempt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[DIS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'DIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[DisType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'DisType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[DisForJob]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'DisForJob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[SpecialProductivity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'SpecialProductivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[SpecialProductivityDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'SpecialProductivityDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Ins_Carrie]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Ins_Carrie';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Term_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Term_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[Term_Reason]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'Term_Reason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[DayNight]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'DayNight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[DataEntryDateAndTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'DataEntryDateAndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[LastDayWorked]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'LastDayWorked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[s_ColLineage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N's_ColLineage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[s_Generation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N's_Generation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[s_Lineage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N's_Lineage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[employees].[upsize_ts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'employees', @level2type = N'COLUMN', @level2name = N'upsize_ts';

