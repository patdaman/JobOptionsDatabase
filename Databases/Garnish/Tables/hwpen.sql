CREATE TABLE [dbo].[hwpen] (
    [nmchw]           MONEY DEFAULT ((0)) NULL,
    [FYE]             INT   DEFAULT ((0)) NULL,
    [fspen]           MONEY DEFAULT ((0)) NULL,
    [fshw]            MONEY DEFAULT ((0)) NULL,
    [JOIMH]           MONEY DEFAULT ((0)) NULL,
    [NMCUNIONLASTACN] INT   DEFAULT ((0)) NULL,
    [FSUNIONLASTACN]  INT   DEFAULT ((0)) NULL,
    [HILLHW]          MONEY DEFAULT ((0)) NULL,
    [hfbpen]          MONEY DEFAULT ((0)) NULL,
    [hfbhw]           MONEY DEFAULT ((0)) NULL,
    [hfupen]          MONEY DEFAULT ((0)) NULL,
    [hfuhw]           MONEY DEFAULT ((0)) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[nmchw]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'nmchw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[FYE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'FYE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[fspen]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'fspen';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[fshw]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'fshw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[JOIMH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'JOIMH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[NMCUNIONLASTACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'NMCUNIONLASTACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[FSUNIONLASTACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'FSUNIONLASTACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[HILLHW]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'HILLHW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[hfbpen]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'hfbpen';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[hfbhw]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'hfbhw';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[hfupen]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'hfupen';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[hwpen].[hfuhw]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hwpen', @level2type = N'COLUMN', @level2name = N'hfuhw';

