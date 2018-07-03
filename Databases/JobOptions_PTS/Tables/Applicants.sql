CREATE TABLE [dbo].[Applicants] (
    [idref]           INT              IDENTITY (1, 1) NOT NULL,
    [IDRef3]          INT              DEFAULT ((0)) NULL,
    [FirstName]       NVARCHAR (20)    NULL,
    [MiddleName]      NVARCHAR (1)     NULL,
    [LastName]        NVARCHAR (20)    NULL,
    [DateOfContact]   DATETIME2 (0)    NULL,
    [ContactType]     INT              NULL,
    [ReferringAgency] NVARCHAR (50)    NULL,
    [DFJDocRecd]      DATETIME2 (0)    NULL,
    [DFJDocRevd]      DATETIME2 (0)    NULL,
    [ApptDate]        DATETIME2 (0)    NULL,
    [Gender]          NVARCHAR (1)     NULL,
    [Ethnicity]       NVARCHAR (50)    NOT NULL,
    [Outcome]         INT              NULL,
    [DET]             DATETIME2 (0)    NULL,
    [ID]              UNIQUEIDENTIFIER DEFAULT (newid()) NULL,
    [Resume]          VARBINARY (MAX)  NULL,
    [LinkingID]       NVARCHAR (50)    NULL,
    [Notes]           NVARCHAR (250)   NULL,
    [SSMA_TimeStamp]  ROWVERSION       NOT NULL,
    CONSTRAINT [Applicants$PrimaryKey] PRIMARY KEY CLUSTERED ([idref] ASC),
    CONSTRAINT [SSMA_CC$Applicants$FirstName$disallow_zero_length] CHECK (len([FirstName])>(0)),
    CONSTRAINT [SSMA_CC$Applicants$Gender$disallow_zero_length] CHECK (len([Gender])>(0)),
    CONSTRAINT [SSMA_CC$Applicants$LastName$disallow_zero_length] CHECK (len([LastName])>(0)),
    CONSTRAINT [SSMA_CC$Applicants$MiddleName$disallow_zero_length] CHECK (len([MiddleName])>(0)),
    CONSTRAINT [Applicants${A007DE8C-2E41-427A-AB42-BF7C1D753F7F}] FOREIGN KEY ([Outcome]) REFERENCES [dbo].[SpecialtyCodes] ([Code]),
    CONSTRAINT [Applicants${DE6FFA77-AF4A-4FCC-BBA9-E4E3444C93C6}] FOREIGN KEY ([ContactType]) REFERENCES [dbo].[SpecialtyCodes] ([Code])
);


GO
CREATE NONCLUSTERED INDEX [Applicants${A007DE8C-2E41-427A-AB42-BF7C1D753F7F}]
    ON [dbo].[Applicants]([Outcome] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicants${DE6FFA77-AF4A-4FCC-BBA9-E4E3444C93C6}]
    ON [dbo].[Applicants]([ContactType] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicants$First]
    ON [dbo].[Applicants]([FirstName] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicants$IDRef]
    ON [dbo].[Applicants]([IDRef3] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicants$idref2]
    ON [dbo].[Applicants]([idref] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicants$Last]
    ON [dbo].[Applicants]([LastName] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Applicants$LinkingID]
    ON [dbo].[Applicants]([LinkingID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Applicants$s_GUID]
    ON [dbo].[Applicants]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[{A007DE8C-2E41-427A-AB42-BF7C1D753F7F}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants${A007DE8C-2E41-427A-AB42-BF7C1D753F7F}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[{DE6FFA77-AF4A-4FCC-BBA9-E4E3444C93C6}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants${DE6FFA77-AF4A-4FCC-BBA9-E4E3444C93C6}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[First]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants$First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[IDRef]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants$IDRef';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[idref2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants$idref2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[Last]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants$Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[LinkingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants$LinkingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[s_GUID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'INDEX', @level2name = N'Applicants$s_GUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[idref]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'idref';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[IDRef3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'IDRef3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[MiddleName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'MiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[LastName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[DateOfContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'DateOfContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[ContactType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'ContactType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[ReferringAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'ReferringAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[DFJDocRecd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'DFJDocRecd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[DFJDocRevd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'DFJDocRevd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[ApptDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'ApptDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[Gender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'Ethnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[Outcome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[DET]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'DET';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[Resume]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'Resume';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[LinkingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'LinkingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[Notes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[{A007DE8C-2E41-427A-AB42-BF7C1D753F7F}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'CONSTRAINT', @level2name = N'Applicants${A007DE8C-2E41-427A-AB42-BF7C1D753F7F}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[{DE6FFA77-AF4A-4FCC-BBA9-E4E3444C93C6}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'CONSTRAINT', @level2name = N'Applicants${DE6FFA77-AF4A-4FCC-BBA9-E4E3444C93C6}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicants].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicants', @level2type = N'CONSTRAINT', @level2name = N'Applicants$PrimaryKey';

