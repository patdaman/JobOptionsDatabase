CREATE TABLE [dbo].[hwHillNmcDept] (
    [hwdept] NVARCHAR (50) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwHillNmcDept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwHillNmcDept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwHillNmcDept].[hwdept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwHillNmcDept', @level2type = N'COLUMN', @level2name = N'hwdept';

