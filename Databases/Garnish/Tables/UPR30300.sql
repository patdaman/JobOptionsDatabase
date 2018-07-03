CREATE TABLE [dbo].[UPR30300] (
    [CMRECNUM]       FLOAT (53)    NOT NULL,
    [AUCTRLCD]       NVARCHAR (13) NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [CHEKNMBR]       NVARCHAR (21) NOT NULL,
    [PYADNMBR]       INT           NOT NULL,
    [TRXNUMBER]      INT           NOT NULL,
    [YEAR1]          SMALLINT      NOT NULL,
    [CHEKDATE]       DATETIME2 (0) NOT NULL,
    [DEPRTMNT]       NVARCHAR (7)  NOT NULL,
    [PYRLRTYP]       SMALLINT      NOT NULL,
    [PAYROLCD]       NVARCHAR (7)  NOT NULL,
    [TRXSORCE]       NVARCHAR (13) NOT NULL,
    [DOCTYPE]        SMALLINT      NOT NULL,
    [JOBTITLE]       NVARCHAR (7)  NOT NULL,
    [TRXBEGDT]       DATETIME2 (0) NOT NULL,
    [TRXENDDT]       DATETIME2 (0) NOT NULL,
    [UNTSTOPY]       FLOAT (53)    NOT NULL,
    [PAYRATE]        FLOAT (53)    NOT NULL,
    [UPRTRXAM]       FLOAT (53)    NOT NULL,
    [TIMETYPE_I]     SMALLINT      NOT NULL,
    [TIMEAVAILABLE]  FLOAT (53)    NOT NULL,
    [TipType]        SMALLINT      NOT NULL,
    [RECEIPTS]       FLOAT (53)    NOT NULL,
    [PAYADVNC]       FLOAT (53)    NOT NULL,
    [STATECD]        NVARCHAR (3)  NOT NULL,
    [LOCALTAX]       NVARCHAR (7)  NOT NULL,
    [WRKRCOMP]       NVARCHAR (7)  NOT NULL,
    [USWHPSTD]       NVARCHAR (15) NOT NULL,
    [LSTDTEDT]       DATETIME2 (0) NOT NULL,
    [LASTUSER]       NVARCHAR (15) NOT NULL,
    [SHFTCODE]       NVARCHAR (7)  NOT NULL,
    [SHFTPREM]       FLOAT (53)    NOT NULL,
    [TXBLWAGS]       FLOAT (53)    NOT NULL,
    [DAYSWRDK]       INT           NOT NULL,
    [WKSWRKD]        INT           NOT NULL,
    [SUTASTAT]       NVARCHAR (3)  NOT NULL,
    [SBJTFUTA]       TINYINT       NOT NULL,
    [BSDONRTE]       FLOAT (53)    NOT NULL,
    [EMPLCLAS]       NVARCHAR (15) NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR30300$AK10UPR30300] PRIMARY KEY CLUSTERED ([AUCTRLCD] ASC, [PYADNMBR] ASC, [PYRLRTYP] ASC, [TRXNUMBER] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK11UPR30300]
    ON [dbo].[UPR30300]([EMPLOYID] ASC, [CHEKDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK1UPR30300]
    ON [dbo].[UPR30300]([AUCTRLCD] ASC, [PYRLRTYP] ASC, [PAYROLCD] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK2UPR30300]
    ON [dbo].[UPR30300]([PYRLRTYP] ASC, [DEPRTMNT] ASC, [EMPLOYID] ASC, [YEAR1] ASC, [CHEKDATE] ASC, [PAYROLCD] ASC, [AUCTRLCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK3UPR30300]
    ON [dbo].[UPR30300]([EMPLOYID] ASC, [YEAR1] ASC, [CHEKDATE] ASC, [PYRLRTYP] ASC, [PAYROLCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK4UPR30300]
    ON [dbo].[UPR30300]([EMPLOYID] ASC, [PYADNMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK5UPR30300]
    ON [dbo].[UPR30300]([EMPLOYID] ASC, [CHEKNMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK6UPR30300]
    ON [dbo].[UPR30300]([EMPLOYID] ASC, [CHEKDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$AK7UPR30300]
    ON [dbo].[UPR30300]([EMPLOYID] ASC, [AUCTRLCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30300$PKUPR30300]
    ON [dbo].[UPR30300]([CMRECNUM] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK11UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK11UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK1UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK1UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK2UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK2UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK3UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK3UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK4UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK4UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK5UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK5UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK6UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK6UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK7UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$AK7UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[PKUPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'INDEX', @level2name = N'UPR30300$PKUPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[CMRECNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'CMRECNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AUCTRLCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'AUCTRLCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[CHEKNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'CHEKNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[PYADNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'PYADNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TRXNUMBER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TRXNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[YEAR1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'YEAR1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[CHEKDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'CHEKDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[PYRLRTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'PYRLRTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[PAYROLCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'PAYROLCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TRXSORCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TRXSORCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[DOCTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'DOCTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TRXBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TRXBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TRXENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TRXENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[UNTSTOPY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'UNTSTOPY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[PAYRATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'PAYRATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[UPRTRXAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'UPRTRXAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TIMETYPE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TIMETYPE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TIMEAVAILABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TIMEAVAILABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[RECEIPTS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'RECEIPTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[PAYADVNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'PAYADVNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[STATECD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'STATECD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[LOCALTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'LOCALTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[USWHPSTD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'USWHPSTD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[LSTDTEDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'LSTDTEDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[LASTUSER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'LASTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[SHFTCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'SHFTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[SHFTPREM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'SHFTPREM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[TXBLWAGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'TXBLWAGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[DAYSWRDK]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'DAYSWRDK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[WKSWRKD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'WKSWRKD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[SUTASTAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'SUTASTAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[SBJTFUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'SBJTFUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[BSDONRTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'BSDONRTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[EMPLCLAS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'EMPLCLAS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30300].[AK10UPR30300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30300', @level2type = N'CONSTRAINT', @level2name = N'UPR30300$AK10UPR30300';

