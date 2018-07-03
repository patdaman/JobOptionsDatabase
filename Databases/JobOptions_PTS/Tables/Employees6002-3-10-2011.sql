CREATE TABLE [dbo].[Employees6002-3-10-2011] (
    [Emp#]                    FLOAT (53)     NOT NULL,
    [Episode]                 INT            NULL,
    [SS]                      NVARCHAR (12)  NOT NULL,
    [First]                   NVARCHAR (20)  NULL,
    [Middle]                  NVARCHAR (20)  NULL,
    [Last]                    NVARCHAR (20)  NULL,
    [Dept]                    NVARCHAR (3)   NULL,
    [Job_Title]               NVARCHAR (20)  NULL,
    [MultiTitle]              NVARCHAR (2)   NULL,
    [Status]                  NVARCHAR (1)   NULL,
    [ReferringAgency]         NVARCHAR (40)  NULL,
    [Sex]                     NVARCHAR (1)   NOT NULL,
    [Birthdate]               DATETIME2 (0)  NULL,
    [Ethnicity]               NVARCHAR (20)  NOT NULL,
    [EEO_Code]                NVARCHAR (15)  NOT NULL,
    [EEO_DIVX]                NVARCHAR (6)   DEFAULT ('VS') NULL,
    [Vets_100]                NVARCHAR (6)   NULL,
    [Hire_Date]               DATETIME2 (0)  NULL,
    [BaseWage]                FLOAT (53)     NULL,
    [SalariedExempt]          NVARCHAR (1)   DEFAULT ('N') NOT NULL,
    [DIS]                     NVARCHAR (1)   NULL,
    [DisType]                 NVARCHAR (20)  NULL,
    [DisForJob]               NVARCHAR (1)   NOT NULL,
    [SpecialProductivity]     FLOAT (53)     NULL,
    [SpecialProductivityDate] DATETIME2 (0)  NULL,
    [Ins_Carrie]              NVARCHAR (20)  NULL,
    [Term_Date]               DATETIME2 (0)  NULL,
    [Term_Reason]             NVARCHAR (50)  NULL,
    [DayNight]                NVARCHAR (1)   DEFAULT ('N') NULL,
    [#]                       INT            DEFAULT (CONVERT([int],CONVERT([varbinary](4000),newid()))) NOT NULL,
    [DataEntryDateAndTime]    DATETIME2 (0)  NULL,
    [LastDayWorked]           DATETIME2 (0)  NULL,
    [IdProvided]              NVARCHAR (10)  NULL,
    [IDNumber]                NVARCHAR (15)  NULL,
    [FedTaxStatus]            NVARCHAR (10)  NULL,
    [FedTaxExemptions]        INT            DEFAULT ((0)) NULL,
    [StateTaxStatus]          NVARCHAR (50)  NULL,
    [StateTaxExemptions]      INT            DEFAULT ((0)) NULL,
    [EmergencyContact]        NVARCHAR (30)  NULL,
    [EmergencyAddy1]          NVARCHAR (31)  NULL,
    [EmergencyAddy2]          NVARCHAR (31)  NULL,
    [EmergencyCity]           NVARCHAR (15)  NULL,
    [EmergencyState]          NVARCHAR (2)   NULL,
    [EmergencyZip]            INT            DEFAULT ((0)) NULL,
    [Marrital Status]         NVARCHAR (50)  NULL,
    [Memo]                    NVARCHAR (MAX) NULL,
    [I9Status]                SMALLINT       DEFAULT ((0)) NULL,
    [RenewDate]               DATETIME2 (0)  NULL,
    [EvaluationRenewalDate]   DATETIME2 (0)  NULL,
    [ResetERD]                BIT            DEFAULT ((0)) NULL,
    [30DayEvaluation]         BIT            DEFAULT ((0)) NULL,
    [ProductivityRenewalDate] DATETIME2 (0)  NULL,
    [30DayProductivity]       BIT            DEFAULT ((0)) NULL,
    [ResetProductivity]       BIT            DEFAULT ((0)) NULL,
    [JoppEmp]                 BIT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]          ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$DayNight$disallow_zero_length] CHECK (len([DayNight])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$DIS$disallow_zero_length] CHECK (len([DIS])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$DisForJob$disallow_zero_length] CHECK (len([DisForJob])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$DisType$disallow_zero_length] CHECK (len([DisType])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$EEO_Code$disallow_zero_length] CHECK (len([EEO_Code])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$EEO_DIVX$disallow_zero_length] CHECK (len([EEO_DIVX])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Ethnicity$disallow_zero_length] CHECK (len([Ethnicity])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$First$disallow_zero_length] CHECK (len([First])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Ins_Carrie$disallow_zero_length] CHECK (len([Ins_Carrie])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Job_Title$disallow_zero_length] CHECK (len([Job_Title])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Last$disallow_zero_length] CHECK (len([Last])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Middle$disallow_zero_length] CHECK (len([Middle])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$MultiTitle$disallow_zero_length] CHECK (len([MultiTitle])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$ReferringAgency$disallow_zero_length] CHECK (len([ReferringAgency])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$SalariedExempt$disallow_zero_length] CHECK (len([SalariedExempt])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$SalariedExempt$validation_rule] CHECK ([SalariedExempt]='Y' OR [SalariedExempt]='N'),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Sex$disallow_zero_length] CHECK (len([Sex])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$SS$disallow_zero_length] CHECK (len([SS])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Status$disallow_zero_length] CHECK (len([Status])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Term_Reason$disallow_zero_length] CHECK (len([Term_Reason])>(0)),
    CONSTRAINT [SSMA_CC$Employees6002-3-10-2011$Vets_100$disallow_zero_length] CHECK (len([Vets_100])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Employees6002-3-10-2011$#]
    ON [dbo].[Employees6002-3-10-2011]([#] ASC);


GO
CREATE NONCLUSTERED INDEX [Employees6002-3-10-2011$EEO_Code]
    ON [dbo].[Employees6002-3-10-2011]([EEO_Code] ASC);


GO
CREATE NONCLUSTERED INDEX [Employees6002-3-10-2011$Employees1Emp#]
    ON [dbo].[Employees6002-3-10-2011]([Emp#] ASC);


GO
CREATE NONCLUSTERED INDEX [Employees6002-3-10-2011$First]
    ON [dbo].[Employees6002-3-10-2011]([First] ASC);


GO
CREATE NONCLUSTERED INDEX [Employees6002-3-10-2011$IDNumber]
    ON [dbo].[Employees6002-3-10-2011]([IDNumber] ASC);


GO
CREATE NONCLUSTERED INDEX [Employees6002-3-10-2011$IdProvided]
    ON [dbo].[Employees6002-3-10-2011]([IdProvided] ASC);


GO
CREATE NONCLUSTERED INDEX [Employees6002-3-10-2011$Last]
    ON [dbo].[Employees6002-3-10-2011]([Last] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EEO_Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$EEO_Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Employees1Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$Employees1Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[First]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[IDNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$IDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[IdProvided]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$IdProvided';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Last]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'INDEX', @level2name = N'Employees6002-3-10-2011$Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[SS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'SS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[First]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Middle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Middle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Last]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Job_Title]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Job_Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[MultiTitle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'MultiTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[ReferringAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'ReferringAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Sex]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Sex';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Birthdate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Ethnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EEO_Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EEO_Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EEO_DIVX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EEO_DIVX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Vets_100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Vets_100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Hire_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Hire_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[BaseWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'BaseWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[SalariedExempt]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'SalariedExempt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[DIS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'DIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[DisType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'DisType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[DisForJob]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'DisForJob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[SpecialProductivity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'SpecialProductivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[SpecialProductivityDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'SpecialProductivityDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Ins_Carrie]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Ins_Carrie';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Term_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Term_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Term_Reason]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Term_Reason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[DayNight]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'DayNight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[DataEntryDateAndTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'DataEntryDateAndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[LastDayWorked]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'LastDayWorked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[IdProvided]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'IdProvided';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[IDNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'IDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[FedTaxStatus]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'FedTaxStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[FedTaxExemptions]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'FedTaxExemptions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[StateTaxStatus]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'StateTaxStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[StateTaxExemptions]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'StateTaxExemptions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EmergencyContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EmergencyContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EmergencyAddy1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EmergencyAddy1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EmergencyAddy2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EmergencyAddy2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EmergencyCity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EmergencyCity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EmergencyState]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EmergencyState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EmergencyZip]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EmergencyZip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Marrital Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Marrital Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[Memo]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'Memo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[I9Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'I9Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[RenewDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'RenewDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[EvaluationRenewalDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'EvaluationRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[ResetERD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'ResetERD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[30DayEvaluation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'30DayEvaluation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[ProductivityRenewalDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'ProductivityRenewalDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[30DayProductivity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'30DayProductivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[ResetProductivity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'ResetProductivity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Employees6002-3-10-2011].[JoppEmp]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Employees6002-3-10-2011', @level2type = N'COLUMN', @level2name = N'JoppEmp';

