CREATE TABLE [dbo].[site] (
    [Site]   NVARCHAR (50) NULL,
    [code]   NVARCHAR (50) NOT NULL,
    [wcCODE] INT           DEFAULT ((0)) NULL,
    CONSTRAINT [site$PrimaryKey] PRIMARY KEY CLUSTERED ([code] ASC),
    CONSTRAINT [SSMA_CC$site$code$disallow_zero_length] CHECK (len([code])>(0)),
    CONSTRAINT [SSMA_CC$site$Site$disallow_zero_length] CHECK (len([Site])>(0))
);


GO
CREATE NONCLUSTERED INDEX [site$code]
    ON [dbo].[site]([code] ASC);


GO
CREATE NONCLUSTERED INDEX [site$wcCODE]
    ON [dbo].[site]([wcCODE] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site].[code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site', @level2type = N'INDEX', @level2name = N'site$code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site].[wcCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site', @level2type = N'INDEX', @level2name = N'site$wcCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site', @level2type = N'COLUMN', @level2name = N'Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site].[code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site', @level2type = N'COLUMN', @level2name = N'code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site].[wcCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site', @level2type = N'COLUMN', @level2name = N'wcCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[site].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'site', @level2type = N'CONSTRAINT', @level2name = N'site$PrimaryKey';

