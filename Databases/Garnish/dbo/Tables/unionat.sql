CREATE TABLE [dbo].[unionat] (
    [fsunion]  INT DEFAULT ((0)) NULL,
    [nmcunion] INT DEFAULT ((0)) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[unionat]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'unionat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[unionat].[fsunion]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'unionat', @level2type = N'COLUMN', @level2name = N'fsunion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[unionat].[nmcunion]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'unionat', @level2type = N'COLUMN', @level2name = N'nmcunion';

