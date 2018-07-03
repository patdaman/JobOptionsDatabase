CREATE TABLE [dbo].[UPR10203] (
    [USERID]         NVARCHAR (15) NOT NULL,
    [PYRNTYPE]       SMALLINT      NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [TRXNUMBER]      INT           NOT NULL,
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
    CONSTRAINT [UPR10203$AK1UPR10203] PRIMARY KEY CLUSTERED ([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [PAYRCORD] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10203$AK2UPR10203]
    ON [dbo].[UPR10203]([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [PRCSSQNC] ASC, [PAYRCORD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10203$AK3UPR10203]
    ON [dbo].[UPR10203]([EMPLOYID] ASC, [PAYRCORD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10203$AK4UPR10203]
    ON [dbo].[UPR10203]([SHFTCODE] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10203$PKUPR10203]
    ON [dbo].[UPR10203]([USERID] ASC, [EMPLOYID] ASC, [PYRNTYPE] ASC, [TRXNUMBER] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[AK2UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'INDEX', @level2name = N'UPR10203$AK2UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[AK3UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'INDEX', @level2name = N'UPR10203$AK3UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[AK4UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'INDEX', @level2name = N'UPR10203$AK4UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PKUPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'INDEX', @level2name = N'UPR10203$PKUPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[USERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PYRNTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PYRNTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TRXNUMBER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TRXNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYRCORD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYRCORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PRCSSQNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PRCSSQNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[BSPAYRCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'BSPAYRCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[BSPAYTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'BSPAYTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[BSDONRTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'BSDONRTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYRTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYRTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYUNIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYUNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYUNPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYUNPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYPEROD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYPEROD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYPRPRD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYPRPRD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PAYADVNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PAYADVNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TIMETYPE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TIMETYPE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TIMEAVAILABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TIMEAVAILABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[ACRUVACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'ACRUVACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[ACRUSTIM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'ACRUSTIM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[RPTASWGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'RPTASWGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[DAYSWRDK]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'DAYSWRDK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[WKSWRKD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'WKSWRKD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[RECEIPTS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'RECEIPTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[STATECD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'STATECD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[LOCALTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'LOCALTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[SUTASTAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'SUTASTAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[UNTSTOPY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'UNTSTOPY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[ADJUNITS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'ADJUNITS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TOTALPAY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TOTALPAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[BCHSOURC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'BCHSOURC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[PRTRXSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'PRTRXSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[LASTUSER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'LASTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[LSTDTEDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'LSTDTEDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TRXBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TRXBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[TRXENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'TRXENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[BLDCHWRG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'BLDCHWRG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[BLDCHERR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'BLDCHERR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[SHFTCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'SHFTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[SHFTPREM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'SHFTPREM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10203].[AK1UPR10203]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10203', @level2type = N'CONSTRAINT', @level2name = N'UPR10203$AK1UPR10203';

