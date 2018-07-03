CREATE TABLE [dbo].[InternetExp] (
    [WebAddyImport] NVARCHAR (50) NULL,
    [WebAddyExport] NVARCHAR (50) NULL,
    [PPStart]       DATETIME2 (0) NULL,
    [PPStop]        DATETIME2 (0) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[InternetExp]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Location of cache database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp', @level2type = N'COLUMN', @level2name = N'WebAddyImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[InternetExp].[WebAddyImport]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp', @level2type = N'COLUMN', @level2name = N'WebAddyImport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Location of Cache Database', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp', @level2type = N'COLUMN', @level2name = N'WebAddyExport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[InternetExp].[WebAddyExport]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp', @level2type = N'COLUMN', @level2name = N'WebAddyExport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[InternetExp].[PPStart]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp', @level2type = N'COLUMN', @level2name = N'PPStart';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[InternetExp].[PPStop]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'InternetExp', @level2type = N'COLUMN', @level2name = N'PPStop';

