CREATE TABLE [dbo].[glcodes] (
    [Dept]  NVARCHAR (50)  NOT NULL,
    [gl]    INT            DEFAULT ((0)) NOT NULL,
    [glsub] NVARCHAR (255) NULL,
    CONSTRAINT [glcodes$PrimaryKey] PRIMARY KEY CLUSTERED ([Dept] ASC, [gl] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [glcodes$Dept]
    ON [dbo].[glcodes]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [glcodes$gl]
    ON [dbo].[glcodes]([gl] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes', @level2type = N'INDEX', @level2name = N'glcodes$Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes].[gl]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes', @level2type = N'INDEX', @level2name = N'glcodes$gl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes].[gl]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes', @level2type = N'COLUMN', @level2name = N'gl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes].[glsub]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes', @level2type = N'COLUMN', @level2name = N'glsub';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[glcodes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'glcodes', @level2type = N'CONSTRAINT', @level2name = N'glcodes$PrimaryKey';

