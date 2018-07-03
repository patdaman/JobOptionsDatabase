CREATE TABLE [dbo].[SpecialtyCodes] (
    [Code]           INT           NOT NULL,
    [Category]       NVARCHAR (50) NOT NULL,
    [Description]    NVARCHAR (50) NOT NULL,
    [table]          NVARCHAR (3)  NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [SpecialtyCodes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC)
);


GO
CREATE NONCLUSTERED INDEX [SpecialtyCodes$Category]
    ON [dbo].[SpecialtyCodes]([Category] ASC);


GO
CREATE NONCLUSTERED INDEX [SpecialtyCodes$Code]
    ON [dbo].[SpecialtyCodes]([Code] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SpecialtyCodes$Description]
    ON [dbo].[SpecialtyCodes]([Description] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[Category]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'INDEX', @level2name = N'SpecialtyCodes$Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'INDEX', @level2name = N'SpecialtyCodes$Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'INDEX', @level2name = N'SpecialtyCodes$Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[Category]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'COLUMN', @level2name = N'Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[table]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'COLUMN', @level2name = N'table';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SpecialtyCodes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SpecialtyCodes', @level2type = N'CONSTRAINT', @level2name = N'SpecialtyCodes$PrimaryKey';

