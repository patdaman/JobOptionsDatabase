CREATE TABLE [dbo].[AF40100] (
    [RPRTNAME]       NVARCHAR (31) NOT NULL,
    [REPORTID]       SMALLINT      NOT NULL,
    [RPRTTYPE]       SMALLINT      NOT NULL,
    [CLCFRPRT]       SMALLINT      NOT NULL,
    [LSTMODIF]       SMALLINT      NOT NULL,
    [NOTEINDX]       FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [AF40100$AK2AF40100] PRIMARY KEY CLUSTERED ([REPORTID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AF40100$AK3AF40100]
    ON [dbo].[AF40100]([RPRTTYPE] ASC, [RPRTNAME] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AF40100$PKAF40100]
    ON [dbo].[AF40100]([RPRTNAME] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[AK3AF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'INDEX', @level2name = N'AF40100$AK3AF40100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[PKAF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'INDEX', @level2name = N'AF40100$PKAF40100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[RPRTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'RPRTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[REPORTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'REPORTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[RPRTTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'RPRTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[CLCFRPRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'CLCFRPRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[LSTMODIF]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'LSTMODIF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF40100].[AK2AF40100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF40100', @level2type = N'CONSTRAINT', @level2name = N'AF40100$AK2AF40100';

