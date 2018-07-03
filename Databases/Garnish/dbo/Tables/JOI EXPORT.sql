CREATE TABLE [dbo].[JOI EXPORT] (
    [ID]                                        INT            IDENTITY (1, 1) NOT NULL,
    [System:]                                   NVARCHAR (255) NULL,
    [DETAILED TRIAL BALANCE BY PERIOD FOR 2014] NVARCHAR (255) NULL,
    [5/22/2014]                                 NVARCHAR (255) NULL,
    [10:01:50 AM]                               NVARCHAR (255) NULL,
    [Page:]                                     NVARCHAR (255) NULL,
    [1]                                         NVARCHAR (255) NULL,
    [User Date:]                                NVARCHAR (255) NULL,
    [4/30/2014]                                 NVARCHAR (255) NULL,
    [User ID:]                                  NVARCHAR (255) NULL,
    [CharH]                                     NVARCHAR (255) NULL,
    CONSTRAINT [JOI EXPORT$ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[System:]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'System:';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[DETAILED TRIAL BALANCE BY PERIOD FOR 2014]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'DETAILED TRIAL BALANCE BY PERIOD FOR 2014';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[5/22/2014]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'5/22/2014';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[10:01:50 AM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'10:01:50 AM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[Page:]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'Page:';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[User Date:]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'User Date:';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[4/30/2014]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'4/30/2014';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[User ID:]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'User ID:';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[CharH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'COLUMN', @level2name = N'CharH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOI EXPORT].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOI EXPORT', @level2type = N'CONSTRAINT', @level2name = N'JOI EXPORT$ID';

