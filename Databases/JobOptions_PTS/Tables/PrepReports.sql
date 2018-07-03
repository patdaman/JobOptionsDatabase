CREATE TABLE [dbo].[PrepReports] (
    [User] NVARCHAR (50) NULL,
    [time] DATETIME2 (0) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PrepReports]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PrepReports';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PrepReports].[User]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PrepReports', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PrepReports].[time]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PrepReports', @level2type = N'COLUMN', @level2name = N'time';

