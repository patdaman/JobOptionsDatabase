CREATE TABLE [dbo].[UPR30401] (
    [AUCTRLCD]       NVARCHAR (13) NOT NULL,
    [PYADNMBR]       INT           NOT NULL,
    [PYRLRTYP]       SMALLINT      NOT NULL,
    [TRXNUMBER]      INT           NOT NULL,
    [SEQNUMBR]       INT           NOT NULL,
    [SRCECODE]       NVARCHAR (7)  NOT NULL,
    [DEPRTMNT]       NVARCHAR (7)  NOT NULL,
    [JOBTITLE]       NVARCHAR (7)  NOT NULL,
    [STATECD]        NVARCHAR (3)  NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [DEBITAMT]       FLOAT (53)    NOT NULL,
    [CRDTAMNT]       FLOAT (53)    NOT NULL,
    [ACTINDX]        INT           NOT NULL,
    [POSTEDDT]       DATETIME2 (0) NOT NULL,
    [PAYROLCD]       NVARCHAR (7)  NOT NULL,
    [UPRACTYP]       SMALLINT      NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR30401$AK1UPR30401] PRIMARY KEY CLUSTERED ([AUCTRLCD] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30401$AK2UPR30401]
    ON [dbo].[UPR30401]([AUCTRLCD] ASC, [STATECD] ASC, [DEPRTMNT] ASC, [JOBTITLE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30401$AK3UPR30401]
    ON [dbo].[UPR30401]([AUCTRLCD] ASC, [PYADNMBR] ASC, [PYRLRTYP] ASC, [TRXNUMBER] ASC, [SEQNUMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30401$PKUPR30401]
    ON [dbo].[UPR30401]([DEX_ROW_ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[AK2UPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'INDEX', @level2name = N'UPR30401$AK2UPR30401';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[AK3UPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'INDEX', @level2name = N'UPR30401$AK3UPR30401';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[PKUPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'INDEX', @level2name = N'UPR30401$PKUPR30401';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[AUCTRLCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'AUCTRLCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[PYADNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'PYADNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[PYRLRTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'PYRLRTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[TRXNUMBER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'TRXNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[SEQNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'SEQNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[SRCECODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'SRCECODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[STATECD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'STATECD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[DEBITAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'DEBITAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[CRDTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'CRDTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[POSTEDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'POSTEDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[PAYROLCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'PAYROLCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[UPRACTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'UPRACTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30401].[AK1UPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30401', @level2type = N'CONSTRAINT', @level2name = N'UPR30401$AK1UPR30401';

