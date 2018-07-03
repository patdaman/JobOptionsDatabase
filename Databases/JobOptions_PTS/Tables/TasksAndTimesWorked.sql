CREATE TABLE [dbo].[TasksAndTimesWorked] (
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
    CONSTRAINT [TasksAndTimesWorked$PrimaryKey] PRIMARY KEY CLUSTERED ([Date] ASC, [Emp#] ASC, [Episode] ASC, [Start] ASC),
    CONSTRAINT [SSMA_CC$TasksAndTimesWorked$Cases$disallow_zero_length] CHECK (len([Cases])>(0)),
    CONSTRAINT [SSMA_CC$TasksAndTimesWorked$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$TasksAndTimesWorked$Section$disallow_zero_length] CHECK (len([Section])>(0)),
    CONSTRAINT [TasksAndTimesWorked${CB02D9E6-CB22-4503-BCA7-C51C4430BDC6}] FOREIGN KEY ([Dept]) REFERENCES [dbo].[Sites] ([Dept]) ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [TasksAndTimesWorked$#]
    ON [dbo].[TasksAndTimesWorked]([#] ASC);


GO
CREATE NONCLUSTERED INDEX [TasksAndTimesWorked${CB02D9E6-CB22-4503-BCA7-C51C4430BDC6}]
    ON [dbo].[TasksAndTimesWorked]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [TasksAndTimesWorked$Full]
    ON [dbo].[TasksAndTimesWorked]([Date] ASC, [Emp#] ASC, [Start] ASC, [Dept] ASC, [Section] ASC, [Cases] ASC, [Stop] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [TasksAndTimesWorked$StartAndStop]
    ON [dbo].[TasksAndTimesWorked]([Date] ASC, [Emp#] ASC, [Start] ASC, [Stop] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [TasksAndTimesWorked$Stop]
    ON [dbo].[TasksAndTimesWorked]([Date] ASC, [Emp#] ASC, [Stop] ASC);


GO
CREATE NONCLUSTERED INDEX [TasksAndTimesWorked$TasksAndTimesWorkedEmp#]
    ON [dbo].[TasksAndTimesWorked]([Emp#] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'INDEX', @level2name = N'TasksAndTimesWorked$#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[{CB02D9E6-CB22-4503-BCA7-C51C4430BDC6}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'INDEX', @level2name = N'TasksAndTimesWorked${CB02D9E6-CB22-4503-BCA7-C51C4430BDC6}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Full]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'INDEX', @level2name = N'TasksAndTimesWorked$Full';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[StartAndStop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'INDEX', @level2name = N'TasksAndTimesWorked$StartAndStop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Stop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'INDEX', @level2name = N'TasksAndTimesWorked$Stop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[TasksAndTimesWorkedEmp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'INDEX', @level2name = N'TasksAndTimesWorked$TasksAndTimesWorkedEmp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Start]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Start';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Section]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Section';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Cases]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Cases';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[Stop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'Stop';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[EntryDate&Time]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'EntryDate&Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[{CB02D9E6-CB22-4503-BCA7-C51C4430BDC6}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'CONSTRAINT', @level2name = N'TasksAndTimesWorked${CB02D9E6-CB22-4503-BCA7-C51C4430BDC6}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TasksAndTimesWorked].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TasksAndTimesWorked', @level2type = N'CONSTRAINT', @level2name = N'TasksAndTimesWorked$PrimaryKey';

