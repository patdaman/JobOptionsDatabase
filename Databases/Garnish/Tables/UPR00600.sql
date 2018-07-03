CREATE TABLE [dbo].[UPR00600] (
    [EMPLOYID]           NVARCHAR (15) NOT NULL,
    [BENEFIT]            NVARCHAR (7)  NOT NULL,
    [INACTIVE]           TINYINT       NOT NULL,
    [BNFBEGDT]           DATETIME2 (0) NOT NULL,
    [BNFENDDT]           DATETIME2 (0) NOT NULL,
    [VARBENFT]           TINYINT       NOT NULL,
    [BNFTFREQ]           SMALLINT      NOT NULL,
    [TAXABLE]            TINYINT       NOT NULL,
    [SBJTFDTX]           TINYINT       NOT NULL,
    [SBJTSSEC]           TINYINT       NOT NULL,
    [SBJTMCAR]           TINYINT       NOT NULL,
    [SBJTSTTX]           TINYINT       NOT NULL,
    [SBJTLTAX]           TINYINT       NOT NULL,
    [SBJTFUTA]           TINYINT       NOT NULL,
    [SBJTSUTA]           TINYINT       NOT NULL,
    [FFEDTXRT]           SMALLINT      NOT NULL,
    [FLSTTXRT]           SMALLINT      NOT NULL,
    [BORCDTYP]           SMALLINT      NOT NULL,
    [BSDORCDS]           SMALLINT      NOT NULL,
    [BNFTMTHD]           SMALLINT      NOT NULL,
    [BNFFRMLA]           SMALLINT      NOT NULL,
    [BNFPRCNT_1]         FLOAT (53)    NOT NULL,
    [BNFPRCNT_2]         FLOAT (53)    NOT NULL,
    [BNFPRCNT_3]         FLOAT (53)    NOT NULL,
    [BNFPRCNT_4]         FLOAT (53)    NOT NULL,
    [BNFPRCNT_5]         FLOAT (53)    NOT NULL,
    [BNFITAMT_1]         FLOAT (53)    NOT NULL,
    [BNFITAMT_2]         FLOAT (53)    NOT NULL,
    [BNFITAMT_3]         FLOAT (53)    NOT NULL,
    [BNFITAMT_4]         FLOAT (53)    NOT NULL,
    [BNFITAMT_5]         FLOAT (53)    NOT NULL,
    [BNFTRMAX_1]         FLOAT (53)    NOT NULL,
    [BNFTRMAX_2]         FLOAT (53)    NOT NULL,
    [BNFTRMAX_3]         FLOAT (53)    NOT NULL,
    [BNFTRMAX_4]         FLOAT (53)    NOT NULL,
    [BNFTRMAX_5]         FLOAT (53)    NOT NULL,
    [BNTRMXUN_1]         INT           NOT NULL,
    [BNTRMXUN_2]         INT           NOT NULL,
    [BNTRMXUN_3]         INT           NOT NULL,
    [BNTRMXUN_4]         INT           NOT NULL,
    [BNTRMXUN_5]         INT           NOT NULL,
    [BNPAYPMX]           FLOAT (53)    NOT NULL,
    [BNFYRMAX]           FLOAT (53)    NOT NULL,
    [BNFLFMAX]           FLOAT (53)    NOT NULL,
    [W2BXNMBR]           SMALLINT      NOT NULL,
    [W2BXLABL]           NVARCHAR (7)  NOT NULL,
    [NOTEINDX]           FLOAT (53)    NOT NULL,
    [LTDBNFIT]           FLOAT (53)    NOT NULL,
    [DATAENTDFLT]        TINYINT       NOT NULL,
    [EMPLRMAXMAT]        FLOAT (53)    NOT NULL,
    [W2BXNMBR2]          SMALLINT      NOT NULL,
    [W2BXLABL2]          NVARCHAR (7)  NOT NULL,
    [W2BXNMBR3]          SMALLINT      NOT NULL,
    [W2BXLABL3]          NVARCHAR (7)  NOT NULL,
    [W2BXNMBR4]          SMALLINT      NOT NULL,
    [W2BXLABL4]          NVARCHAR (7)  NOT NULL,
    [Benefit_Fiscal_Max] FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]         INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]     ROWVERSION    NOT NULL,
    CONSTRAINT [UPR00600$AK2UPR00600] PRIMARY KEY CLUSTERED ([BENEFIT] ASC, [EMPLOYID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00600$AK3UPR00600]
    ON [dbo].[UPR00600]([BENEFIT] ASC, [VARBENFT] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00600$AK4UPR00600]
    ON [dbo].[UPR00600]([EMPLOYID] ASC, [W2BXNMBR] ASC, [W2BXLABL] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00600$PKUPR00600]
    ON [dbo].[UPR00600]([EMPLOYID] ASC, [BENEFIT] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[AK3UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'INDEX', @level2name = N'UPR00600$AK3UPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[AK4UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'INDEX', @level2name = N'UPR00600$AK4UPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[PKUPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'INDEX', @level2name = N'UPR00600$PKUPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BENEFIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BENEFIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[VARBENFT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'VARBENFT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTFREQ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTFREQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[TAXABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'TAXABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTFDTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTFDTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTSSEC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTSSEC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTMCAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTMCAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTSTTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTSTTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTLTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTLTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTFUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTFUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[SBJTSUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'SBJTSUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[FFEDTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'FFEDTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[FLSTTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'FLSTTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BORCDTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BORCDTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BSDORCDS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BSDORCDS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFFRMLA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFFRMLA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFPRCNT_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFPRCNT_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFPRCNT_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFPRCNT_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFPRCNT_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFITAMT_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFITAMT_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFITAMT_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFITAMT_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFITAMT_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFITAMT_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFITAMT_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFITAMT_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFITAMT_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFITAMT_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTRMAX_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTRMAX_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTRMAX_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTRMAX_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFTRMAX_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNTRMXUN_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNTRMXUN_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNTRMXUN_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNTRMXUN_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNTRMXUN_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNPAYPMX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNPAYPMX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFYRMAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFYRMAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[BNFLFMAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'BNFLFMAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXLABL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXLABL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[LTDBNFIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'LTDBNFIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[DATAENTDFLT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'DATAENTDFLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[EMPLRMAXMAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'EMPLRMAXMAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXNMBR2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXLABL2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXLABL2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXNMBR3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXLABL3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXLABL3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXNMBR4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[W2BXLABL4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'W2BXLABL4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[Benefit_Fiscal_Max]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'Benefit_Fiscal_Max';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00600].[AK2UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00600', @level2type = N'CONSTRAINT', @level2name = N'UPR00600$AK2UPR00600';

