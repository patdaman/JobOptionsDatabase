CREATE TABLE [dbo].[RunMonitor] (
    [ReportRunDate]  DATETIME2 (0) NULL,
    [ArchiveRunDate] DATETIME2 (0) NULL,
    [#]              INT           DEFAULT (CONVERT([int],CONVERT([varbinary](4000),newid()))) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [RunMonitor$PrimaryKey] PRIMARY KEY CLUSTERED ([#] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[RunMonitor]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RunMonitor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[RunMonitor].[ReportRunDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RunMonitor', @level2type = N'COLUMN', @level2name = N'ReportRunDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[RunMonitor].[ArchiveRunDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RunMonitor', @level2type = N'COLUMN', @level2name = N'ArchiveRunDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[RunMonitor].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RunMonitor', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[RunMonitor].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RunMonitor', @level2type = N'CONSTRAINT', @level2name = N'RunMonitor$PrimaryKey';

