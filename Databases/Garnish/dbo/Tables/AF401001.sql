CREATE TABLE [dbo].[AF401001] (
    [RPRTNAME]       NVARCHAR (31) NOT NULL,
    [REPORTID]       SMALLINT      NOT NULL,
    [RPRTTYPE]       SMALLINT      NOT NULL,
    [CLCFRPRT]       SMALLINT      NOT NULL,
    [LSTMODIF]       SMALLINT      NOT NULL,
    [NOTEINDX]       FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [AF401001$AK2AF40100] PRIMARY KEY CLUSTERED ([REPORTID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AF401001$AK3AF40100]
    ON [dbo].[AF401001]([RPRTTYPE] ASC, [RPRTNAME] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AF401001$PKAF40100]
    ON [dbo].[AF401001]([RPRTNAME] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[AK3AF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'INDEX', @level2name = N'AF401001$AK3AF40100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[PKAF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'INDEX', @level2name = N'AF401001$PKAF40100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[RPRTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'RPRTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[REPORTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'REPORTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[RPRTTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'RPRTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[CLCFRPRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'CLCFRPRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[LSTMODIF]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'LSTMODIF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401001].[AK2AF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401001', @level2type = N'CONSTRAINT', @level2name = N'AF401001$AK2AF40100';

