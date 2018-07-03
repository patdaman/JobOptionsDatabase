CREATE TABLE [dbo].[Positive Pay] (
    [PPLine] NVARCHAR (50) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Positive Pay]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Positive Pay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Positive Pay].[PPLine]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Positive Pay', @level2type = N'COLUMN', @level2name = N'PPLine';

