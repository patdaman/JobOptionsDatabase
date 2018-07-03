CREATE TABLE [dbo].[UPR102031] (
    [USERID]         NVARCHAR (15) NOT NULL,
    [PYRNTYPE]       SMALLINT      NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [PAYRCORD]       NVARCHAR (7)  NOT NULL,
    [PRCSSQNC]       SMALLINT      NOT NULL,
    [PAYTYPE]        SMALLINT      NOT NULL,
    [BSPAYRCD]       NVARCHAR (7)  NOT NULL,
    [BSPAYTYP]       SMALLINT      NOT NULL,
    [BSDONRTE]       FLOAT (53)    NOT NULL,
    [PAYRTAMT]       FLOAT (53)    NOT NULL,
    [PAYUNIT]        NVARCHAR (25) NOT NULL,
    [PAYUNPER]       SMALLINT      NOT NULL,
    [PAYPEROD]       SMALLINT      NOT NULL,
    [PAYPRPRD]       FLOAT (53)    NOT NULL,
    [PAYADVNC]       FLOAT (53)    NOT NULL,
    [TIMETYPE_I]     SMALLINT      NOT NULL,
    [TIMEAVAILABLE]  FLOAT (53)    NOT NULL,
    [ACRUVACN]       TINYINT       NOT NULL,
    [ACRUSTIM]       TINYINT       NOT NULL,
    [RPTASWGS]       TINYINT       NOT NULL,
    [DAYSWRDK]       INT           NOT NULL,
    [WKSWRKD]        INT           NOT NULL,
    [RECEIPTS]       FLOAT (53)    NOT NULL,
    [TipType]        SMALLINT      NOT NULL,
    [DEPRTMNT]       NVARCHAR (7)  NOT NULL,
    [JOBTITLE]       NVARCHAR (7)  NOT NULL,
    [STATECD]        NVARCHAR (3)  NOT NULL,
    [LOCALTAX]       NVARCHAR (7)  NOT NULL,
    [SUTASTAT]       NVARCHAR (3)  NOT NULL,
    [WRKRCOMP]       NVARCHAR (7)  NOT NULL,
    [UNTSTOPY]       FLOAT (53)    NOT NULL,
    [ADJUNITS]       FLOAT (53)    NOT NULL,
    [TOTALPAY]       FLOAT (53)    NOT NULL,
    [BCHSOURC]       NVARCHAR (15) NOT NULL,
    [PRTRXSRC]       INT           NOT NULL,
    [LASTUSER]       NVARCHAR (15) NOT NULL,
    [LSTDTEDT]       DATETIME2 (0) NOT NULL,
    [TRXBEGDT]       DATETIME2 (0) NOT NULL,
    [TRXENDDT]       DATETIME2 (0) NOT NULL,
    [BLDCHWRG]       VARBINARY (4) NOT NULL,
    [BLDCHERR]       VARBINARY (4) NOT NULL,
    [SHFTCODE]       NVARCHAR (7)  NOT NULL,
    [SHFTPREM]       FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR102031$AK1UPR10203] PRIMARY KEY CLUSTERED ([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [PAYRCORD] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR102031$AK2UPR10203]
    ON [dbo].[UPR102031]([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [PRCSSQNC] ASC, [PAYRCORD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR102031$AK3UPR10203]
    ON [dbo].[UPR102031]([EMPLOYID] ASC, [PAYRCORD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR102031$AK4UPR10203]
    ON [dbo].[UPR102031]([SHFTCODE] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR102031$PKUPR10203]
    ON [dbo].[UPR102031]([DEX_ROW_ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[AK2UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'INDEX', @level2name = N'UPR102031$AK2UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[AK3UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'INDEX', @level2name = N'UPR102031$AK3UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[AK4UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'INDEX', @level2name = N'UPR102031$AK4UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PKUPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'INDEX', @level2name = N'UPR102031$PKUPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[USERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PYRNTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PYRNTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYRCORD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYRCORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PRCSSQNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PRCSSQNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[BSPAYRCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'BSPAYRCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[BSPAYTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'BSPAYTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[BSDONRTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'BSDONRTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYRTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYRTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYUNIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYUNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYUNPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYUNPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYPEROD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYPEROD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYPRPRD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYPRPRD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PAYADVNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PAYADVNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[TIMETYPE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'TIMETYPE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[TIMEAVAILABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'TIMEAVAILABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[ACRUVACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'ACRUVACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[ACRUSTIM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'ACRUSTIM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[RPTASWGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'RPTASWGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[DAYSWRDK]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'DAYSWRDK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[WKSWRKD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'WKSWRKD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[RECEIPTS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'RECEIPTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[STATECD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'STATECD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[LOCALTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'LOCALTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[SUTASTAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'SUTASTAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[UNTSTOPY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'UNTSTOPY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[ADJUNITS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'ADJUNITS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[TOTALPAY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'TOTALPAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[BCHSOURC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'BCHSOURC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[PRTRXSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'PRTRXSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[LASTUSER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'LASTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[LSTDTEDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'LSTDTEDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[TRXBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'TRXBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[TRXENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'TRXENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[BLDCHWRG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'BLDCHWRG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[BLDCHERR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'BLDCHERR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[SHFTCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'SHFTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[SHFTPREM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'SHFTPREM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR102031].[AK1UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR102031', @level2type = N'CONSTRAINT', @level2name = N'UPR102031$AK1UPR10203';

