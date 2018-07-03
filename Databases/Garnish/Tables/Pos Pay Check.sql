CREATE TABLE [dbo].[Pos Pay Check] (
    [ID]       INT IDENTITY (1, 1) NOT NULL,
    [Check No] INT DEFAULT ((0)) NULL,
    CONSTRAINT [Pos Pay Check$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Pos Pay Check]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Pos Pay Check';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Pos Pay Check].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Pos Pay Check', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Pos Pay Check].[Check No]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Pos Pay Check', @level2type = N'COLUMN', @level2name = N'Check No';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Pos Pay Check].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Pos Pay Check', @level2type = N'CONSTRAINT', @level2name = N'Pos Pay Check$PrimaryKey';

