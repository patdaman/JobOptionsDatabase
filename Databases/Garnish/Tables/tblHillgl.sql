CREATE TABLE [dbo].[tblHillgl] (
    [hwdept] NVARCHAR (50) NULL,
    [gl]     NVARCHAR (50) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblHillgl]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblHillgl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblHillgl].[hwdept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblHillgl', @level2type = N'COLUMN', @level2name = N'hwdept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblHillgl].[gl]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblHillgl', @level2type = N'COLUMN', @level2name = N'gl';

