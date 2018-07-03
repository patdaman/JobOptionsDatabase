CREATE TABLE [dbo].[UPR00500] (
    [EMPLOYID]                NVARCHAR (15) NOT NULL,
    [DEDUCTON]                NVARCHAR (7)  NOT NULL,
    [INACTIVE]                TINYINT       NOT NULL,
    [DEDBEGDT]                DATETIME2 (0) NOT NULL,
    [DEDENDDT]                DATETIME2 (0) NOT NULL,
    [VARDEDTN]                TINYINT       NOT NULL,
    [DEDNFREQ]                SMALLINT      NOT NULL,
    [TXSHANTY]                TINYINT       NOT NULL,
    [SFRFEDTX]                TINYINT       NOT NULL,
    [SHFRFICA]                TINYINT       NOT NULL,
    [SHFRSTTX]                TINYINT       NOT NULL,
    [SFRLCLTX]                TINYINT       NOT NULL,
    [BSDORCDS]                SMALLINT      NOT NULL,
    [DEDNMTHD]                SMALLINT      NOT NULL,
    [DEDFRMLA]                SMALLINT      NOT NULL,
    [DEDNPRCT_1]              FLOAT (53)    NOT NULL,
    [DEDNPRCT_2]              FLOAT (53)    NOT NULL,
    [DEDNPRCT_3]              FLOAT (53)    NOT NULL,
    [DEDNPRCT_4]              FLOAT (53)    NOT NULL,
    [DEDNPRCT_5]              FLOAT (53)    NOT NULL,
    [DEDCAMNT_1]              FLOAT (53)    NOT NULL,
    [DEDCAMNT_2]              FLOAT (53)    NOT NULL,
    [DEDCAMNT_3]              FLOAT (53)    NOT NULL,
    [DEDCAMNT_4]              FLOAT (53)    NOT NULL,
    [DEDCAMNT_5]              FLOAT (53)    NOT NULL,
    [DEDTRMAX_1]              FLOAT (53)    NOT NULL,
    [DEDTRMAX_2]              FLOAT (53)    NOT NULL,
    [DEDTRMAX_3]              FLOAT (53)    NOT NULL,
    [DEDTRMAX_4]              FLOAT (53)    NOT NULL,
    [DEDTRMAX_5]              FLOAT (53)    NOT NULL,
    [DETRMXUN_1]              INT           NOT NULL,
    [DETRMXUN_2]              INT           NOT NULL,
    [DETRMXUN_3]              INT           NOT NULL,
    [DETRMXUN_4]              INT           NOT NULL,
    [DETRMXUN_5]              INT           NOT NULL,
    [DEPYPRMX]                FLOAT (53)    NOT NULL,
    [DEDYRMAX]                FLOAT (53)    NOT NULL,
    [DEDLTMAX]                FLOAT (53)    NOT NULL,
    [W2BXNMBR]                SMALLINT      NOT NULL,
    [W2BXLABL]                NVARCHAR (7)  NOT NULL,
    [LTDDEDTN]                FLOAT (53)    NOT NULL,
    [NOTEINDX]                FLOAT (53)    NOT NULL,
    [NOTEINDX2]               FLOAT (53)    NOT NULL,
    [DATAENTDFLT]             TINYINT       NOT NULL,
    [EARNINGSCODE]            NVARCHAR (15) NOT NULL,
    [COURTDATE]               DATETIME2 (0) NOT NULL,
    [COURTNAME]               NVARCHAR (31) NOT NULL,
    [DOCDESCR]                NVARCHAR (31) NOT NULL,
    [ORIGINALAMOUNT]          FLOAT (53)    NOT NULL,
    [AMNTTAKEN]               FLOAT (53)    NOT NULL,
    [VENDORID]                NVARCHAR (15) NOT NULL,
    [FEDMAXDED]               NVARCHAR (15) NOT NULL,
    [STATEMAXDED]             NVARCHAR (15) NOT NULL,
    [W2BXNMBR2]               SMALLINT      NOT NULL,
    [W2BXLABL2]               NVARCHAR (7)  NOT NULL,
    [W2BXNMBR3]               SMALLINT      NOT NULL,
    [W2BXLABL3]               NVARCHAR (7)  NOT NULL,
    [W2BXNMBR4]               SMALLINT      NOT NULL,
    [W2BXLABL4]               NVARCHAR (7)  NOT NULL,
    [Deduction_Fiscal_Yr_Max] FLOAT (53)    NOT NULL,
    [SHFRFICAMED]             TINYINT       NOT NULL,
    [DEX_ROW_ID]              INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]          ROWVERSION    NOT NULL,
    CONSTRAINT [UPR00500$AK2UPR00500] PRIMARY KEY CLUSTERED ([DEDUCTON] ASC, [EMPLOYID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00500$AK3UPR00500]
    ON [dbo].[UPR00500]([EMPLOYID] ASC, [VARDEDTN] ASC, [DEDUCTON] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00500$AK4UPR00500]
    ON [dbo].[UPR00500]([EMPLOYID] ASC, [W2BXNMBR] ASC, [W2BXLABL] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00500$PKUPR00500]
    ON [dbo].[UPR00500]([EMPLOYID] ASC, [DEDUCTON] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[AK3UPR00500]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'INDEX', @level2name = N'UPR00500$AK3UPR00500';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[AK4UPR00500]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'INDEX', @level2name = N'UPR00500$AK4UPR00500';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[PKUPR00500]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'INDEX', @level2name = N'UPR00500$PKUPR00500';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDUCTON]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDUCTON';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[VARDEDTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'VARDEDTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNFREQ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNFREQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[TXSHANTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'TXSHANTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[SFRFEDTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'SFRFEDTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[SHFRFICA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'SHFRFICA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[SHFRSTTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'SHFRSTTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[SFRLCLTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'SFRLCLTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[BSDORCDS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'BSDORCDS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDFRMLA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDFRMLA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNPRCT_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNPRCT_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNPRCT_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNPRCT_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNPRCT_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNPRCT_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNPRCT_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNPRCT_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDNPRCT_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDNPRCT_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDCAMNT_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDCAMNT_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDCAMNT_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDCAMNT_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDCAMNT_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDCAMNT_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDCAMNT_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDCAMNT_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDCAMNT_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDCAMNT_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDTRMAX_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDTRMAX_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDTRMAX_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDTRMAX_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDTRMAX_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDTRMAX_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDTRMAX_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDTRMAX_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDTRMAX_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDTRMAX_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DETRMXUN_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DETRMXUN_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DETRMXUN_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DETRMXUN_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DETRMXUN_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DETRMXUN_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DETRMXUN_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DETRMXUN_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DETRMXUN_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DETRMXUN_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEPYPRMX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEPYPRMX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDYRMAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDYRMAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEDLTMAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEDLTMAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXLABL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXLABL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[LTDDEDTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'LTDDEDTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[NOTEINDX2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'NOTEINDX2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DATAENTDFLT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DATAENTDFLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[EARNINGSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'EARNINGSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[COURTDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'COURTDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[COURTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'COURTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DOCDESCR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DOCDESCR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[ORIGINALAMOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'ORIGINALAMOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[AMNTTAKEN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'AMNTTAKEN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[VENDORID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'VENDORID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[FEDMAXDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'FEDMAXDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[STATEMAXDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'STATEMAXDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXNMBR2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXNMBR2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXLABL2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXLABL2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXNMBR3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXNMBR3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXLABL3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXLABL3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXNMBR4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXNMBR4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[W2BXLABL4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'W2BXLABL4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[Deduction_Fiscal_Yr_Max]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'Deduction_Fiscal_Yr_Max';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[SHFRFICAMED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'SHFRFICAMED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00500].[AK2UPR00500]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00500', @level2type = N'CONSTRAINT', @level2name = N'UPR00500$AK2UPR00500';

