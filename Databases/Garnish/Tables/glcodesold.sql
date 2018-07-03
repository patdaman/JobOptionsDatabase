CREATE TABLE [dbo].[glcodesold] (
    [Dept] NVARCHAR (50) NOT NULL,
    [gl]   INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [glcodesold$PrimaryKey] PRIMARY KEY CLUSTERED ([Dept] ASC, [gl] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [glcodesold$Dept]
    ON [dbo].[glcodesold]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [glcodesold$gl]
    ON [dbo].[glcodesold]([gl] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodesold].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodesold', @level2type = N'INDEX', @level2name = N'glcodesold$Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodesold].[gl]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodesold', @level2type = N'INDEX', @level2name = N'glcodesold$gl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodesold]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodesold';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodesold].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodesold', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodesold].[gl]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodesold', @level2type = N'COLUMN', @level2name = N'gl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodesold].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodesold', @level2type = N'CONSTRAINT', @level2name = N'glcodesold$PrimaryKey';

