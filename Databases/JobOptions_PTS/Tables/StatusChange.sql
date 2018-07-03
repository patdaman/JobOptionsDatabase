CREATE TABLE [dbo].[StatusChange] (
    [Emp#]               FLOAT (53)     NOT NULL,
    [Episode]            INT            NOT NULL,
    [Date]               DATETIME2 (0)  NOT NULL,
    [TypeOfChange]       INT            NOT NULL,
    [From]               NVARCHAR (150) NOT NULL,
    [To]                 NVARCHAR (150) NOT NULL,
    [Memo]               NVARCHAR (MAX) NULL,
    [Entry Time]         DATETIME2 (0)  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(14)),(14))) NULL,
    [User]               NVARCHAR (50)  NOT NULL,
    [ImplementationDate] DATETIME2 (0)  NULL,
    [CheckDate]          DATETIME2 (0)  NULL,
    [PCode]              NVARCHAR (50)  NULL,
    [SSMA_TimeStamp]     ROWVERSION     NOT NULL,
    CONSTRAINT [StatusChange$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [Date] ASC, [TypeOfChange] ASC),
    CONSTRAINT [SSMA_CC$StatusChange$User$disallow_zero_length] CHECK (len([User])>(0)),
    CONSTRAINT [StatusChange${D41043FF-D152-4BB6-B1DF-A3F4E6EA4C06}] FOREIGN KEY ([TypeOfChange]) REFERENCES [dbo].[SpecialtyCodes] ([Code]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [StatusChange${D41043FF-D152-4BB6-B1DF-A3F4E6EA4C06}]
    ON [dbo].[StatusChange]([TypeOfChange] ASC);


GO
CREATE NONCLUSTERED INDEX [StatusChange$PCode]
    ON [dbo].[StatusChange]([PCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[{D41043FF-D152-4BB6-B1DF-A3F4E6EA4C06}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'INDEX', @level2name = N'StatusChange${D41043FF-D152-4BB6-B1DF-A3F4E6EA4C06}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[PCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'INDEX', @level2name = N'StatusChange$PCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[TypeOfChange]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'TypeOfChange';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[From]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'From';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[To]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'To';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[Memo]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'Memo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[Entry Time]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'Entry Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[User]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[ImplementationDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'ImplementationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[CheckDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'CheckDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[PCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'COLUMN', @level2name = N'PCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[{D41043FF-D152-4BB6-B1DF-A3F4E6EA4C06}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'CONSTRAINT', @level2name = N'StatusChange${D41043FF-D152-4BB6-B1DF-A3F4E6EA4C06}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[StatusChange].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'StatusChange', @level2type = N'CONSTRAINT', @level2name = N'StatusChange$PrimaryKey';

