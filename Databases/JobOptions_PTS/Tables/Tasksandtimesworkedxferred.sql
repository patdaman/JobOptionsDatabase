CREATE TABLE [dbo].[Tasksandtimesworkedxferred] (
    [Date]           DATETIME2 (0) NOT NULL,
    [Emp#]           FLOAT (53)    NOT NULL,
    [Episode]        INT           NOT NULL,
    [Start]          DATETIME2 (0) NOT NULL,
    [Dept]           NVARCHAR (3)  NOT NULL,
    [Section]        NVARCHAR (6)  NULL,
    [Cases]          NVARCHAR (6)  NOT NULL,
    [Stop]           DATETIME2 (0) NOT NULL,
    [EntryDate&Time] DATETIME2 (0) NULL,
    [#]              FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [Tasksandtimesworkedxferred$PrimaryKey] PRIMARY KEY CLUSTERED ([Date] ASC, [Emp#] ASC, [Episode] ASC, [Start] ASC),
    CONSTRAINT [SSMA_CC$Tasksandtimesworkedxferred$Cases$disallow_zero_length] CHECK (len([Cases])>(0)),
    CONSTRAINT [SSMA_CC$Tasksandtimesworkedxferred$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$Tasksandtimesworkedxferred$Section$disallow_zero_length] CHECK (len([Section])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Tasksandtimesworkedxferred$#]
    ON [dbo].[Tasksandtimesworkedxferred]([#] ASC);


GO
CREATE NONCLUSTERED INDEX [Tasksandtimesworkedxferred$Full]
    ON [dbo].[Tasksandtimesworkedxferred]([Date] ASC, [Emp#] ASC, [Start] ASC, [Dept] ASC, [Section] ASC, [Cases] ASC, [Stop] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Tasksandtimesworkedxferred$StartAndStop]
    ON [dbo].[Tasksandtimesworkedxferred]([Date] ASC, [Emp#] ASC, [Start] ASC, [Stop] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Tasksandtimesworkedxferred$Stop]
    ON [dbo].[Tasksandtimesworkedxferred]([Date] ASC, [Emp#] ASC, [Stop] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'INDEX', @level2name = N'Tasksandtimesworkedxferred$#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Full]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'INDEX', @level2name = N'Tasksandtimesworkedxferred$Full';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[StartAndStop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'INDEX', @level2name = N'Tasksandtimesworkedxferred$StartAndStop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Stop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'INDEX', @level2name = N'Tasksandtimesworkedxferred$Stop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Start]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Start';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Section]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Section';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Cases]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Cases';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[Stop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'Stop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[EntryDate&Time]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'EntryDate&Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Tasksandtimesworkedxferred].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasksandtimesworkedxferred', @level2type = N'CONSTRAINT', @level2name = N'Tasksandtimesworkedxferred$PrimaryKey';

