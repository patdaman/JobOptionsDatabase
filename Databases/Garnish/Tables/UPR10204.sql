CREATE TABLE [dbo].[UPR10204] (
    [DEPRTMNT]       NVARCHAR (7)  NOT NULL,
    [JOBTITLE]       NVARCHAR (7)  NOT NULL,
    [USERID]         NVARCHAR (15) NOT NULL,
    [PYRNTYPE]       SMALLINT      NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [TRXNUMBER]      INT           NOT NULL,
    [DEDUCTON]       NVARCHAR (7)  NOT NULL,
    [TXSHANTY]       TINYINT       NOT NULL,
    [DEDNSQNC]       SMALLINT      NOT NULL,
    [VARDEDTN]       TINYINT       NOT NULL,
    [VARDBAMT]       FLOAT (53)    NOT NULL,
    [VARDBPCT]       INT           NOT NULL,
    [DEDNFREQ]       SMALLINT      NOT NULL,
    [TTLDEDTN]       FLOAT (53)    NOT NULL,
    [BCHSOURC]       NVARCHAR (15) NOT NULL,
    [PRTRXSRC]       INT           NOT NULL,
    [LASTUSER]       NVARCHAR (15) NOT NULL,
    [LSTDTEDT]       DATETIME2 (0) NOT NULL,
    [TRXBEGDT]       DATETIME2 (0) NOT NULL,
    [TRXENDDT]       DATETIME2 (0) NOT NULL,
    [BLDCHWRG]       VARBINARY (4) NOT NULL,
    [BLDCHERR]       VARBINARY (4) NOT NULL,
    [DEDNMTHD]       SMALLINT      NOT NULL,
    [PRCSSQNC]       SMALLINT      NOT NULL,
    [SEQCOUNT]       INT           NOT NULL,
    [SEQUENCESUM]    FLOAT (53)    NOT NULL,
    [CALCCHKWRN]     VARBINARY (4) NOT NULL,
    [ATTEMPTEDAMT]   FLOAT (53)    NOT NULL,
    [SPLITMTHD]      SMALLINT      NOT NULL,
    [MAXAMOUNT]      FLOAT (53)    NOT NULL,
    [BASEDONWAGES]   FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR10204$AK1UPR10204] PRIMARY KEY CLUSTERED ([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [DEDUCTON] ASC, [PRCSSQNC] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10204$AK2UPR10204]
    ON [dbo].[UPR10204]([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [TXSHANTY] ASC, [DEDNSQNC] ASC, [DEDUCTON] ASC, [PRCSSQNC] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10204$AK3UPR10204]
    ON [dbo].[UPR10204]([EMPLOYID] ASC, [DEDUCTON] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10204$PKUPR10204]
    ON [dbo].[UPR10204]([USERID] ASC, [EMPLOYID] ASC, [PYRNTYPE] ASC, [TRXNUMBER] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[AK2UPR10204]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'INDEX', @level2name = N'UPR10204$AK2UPR10204';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[AK3UPR10204]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'INDEX', @level2name = N'UPR10204$AK3UPR10204';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[PKUPR10204]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'INDEX', @level2name = N'UPR10204$PKUPR10204';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[USERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[PYRNTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'PYRNTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[TRXNUMBER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'TRXNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[DEDUCTON]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'DEDUCTON';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[TXSHANTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'TXSHANTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[DEDNSQNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'DEDNSQNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[VARDEDTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'VARDEDTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[VARDBAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'VARDBAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[VARDBPCT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'VARDBPCT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[DEDNFREQ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'DEDNFREQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[TTLDEDTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'TTLDEDTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[BCHSOURC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'BCHSOURC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[PRTRXSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'PRTRXSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[LASTUSER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'LASTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[LSTDTEDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'LSTDTEDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[TRXBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'TRXBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[TRXENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'TRXENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[BLDCHWRG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'BLDCHWRG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[BLDCHERR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'BLDCHERR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[DEDNMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'DEDNMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[PRCSSQNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'PRCSSQNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[SEQCOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'SEQCOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[SEQUENCESUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'SEQUENCESUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[CALCCHKWRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'CALCCHKWRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[ATTEMPTEDAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'ATTEMPTEDAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[SPLITMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'SPLITMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[MAXAMOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'MAXAMOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[BASEDONWAGES]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'BASEDONWAGES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10204].[AK1UPR10204]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10204', @level2type = N'CONSTRAINT', @level2name = N'UPR10204$AK1UPR10204';

