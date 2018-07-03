CREATE TABLE [dbo].[Sheet1] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [3/1/14 0:00:00] NVARCHAR (255) NULL,
    CONSTRAINT [Sheet1$ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Sheet1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sheet1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Sheet1].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sheet1', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Sheet1].[3/1/14 0:00:00]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sheet1', @level2type = N'COLUMN', @level2name = N'3/1/14 0:00:00';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Sheet1].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sheet1', @level2type = N'CONSTRAINT', @level2name = N'Sheet1$ID';

