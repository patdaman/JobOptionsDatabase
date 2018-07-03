CREATE TABLE [dbo].[UPR006001] (
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [BENEFIT]        NVARCHAR (7)  NOT NULL,
    [INACTIVE]       TINYINT       NOT NULL,
    [BNFBEGDT]       DATETIME2 (0) NOT NULL,
    [BNFENDDT]       DATETIME2 (0) NOT NULL,
    [VARBENFT]       TINYINT       NOT NULL,
    [BNFTFREQ]       SMALLINT      NOT NULL,
    [TAXABLE]        TINYINT       NOT NULL,
    [SBJTFDTX]       TINYINT       NOT NULL,
    [SBJTSSEC]       TINYINT       NOT NULL,
    [SBJTMCAR]       TINYINT       NOT NULL,
    [SBJTSTTX]       TINYINT       NOT NULL,
    [SBJTLTAX]       TINYINT       NOT NULL,
    [SBJTFUTA]       TINYINT       NOT NULL,
    [SBJTSUTA]       TINYINT       NOT NULL,
    [FFEDTXRT]       SMALLINT      NOT NULL,
    [FLSTTXRT]       SMALLINT      NOT NULL,
    [BORCDTYP]       SMALLINT      NOT NULL,
    [BSDORCDS]       SMALLINT      NOT NULL,
    [BNFTMTHD]       SMALLINT      NOT NULL,
    [BNFFRMLA]       SMALLINT      NOT NULL,
    [BNFPRCNT_1]     FLOAT (53)    NOT NULL,
    [BNFPRCNT_2]     FLOAT (53)    NOT NULL,
    [BNFPRCNT_3]     FLOAT (53)    NOT NULL,
    [BNFPRCNT_4]     FLOAT (53)    NOT NULL,
    [BNFPRCNT_5]     FLOAT (53)    NOT NULL,
    [BNFITAMT_1]     FLOAT (53)    NOT NULL,
    [BNFITAMT_2]     FLOAT (53)    NOT NULL,
    [BNFITAMT_3]     FLOAT (53)    NOT NULL,
    [BNFITAMT_4]     FLOAT (53)    NOT NULL,
    [BNFITAMT_5]     FLOAT (53)    NOT NULL,
    [BNFTRMAX_1]     FLOAT (53)    NOT NULL,
    [BNFTRMAX_2]     FLOAT (53)    NOT NULL,
    [BNFTRMAX_3]     FLOAT (53)    NOT NULL,
    [BNFTRMAX_4]     FLOAT (53)    NOT NULL,
    [BNFTRMAX_5]     FLOAT (53)    NOT NULL,
    [BNTRMXUN_1]     INT           NOT NULL,
    [BNTRMXUN_2]     INT           NOT NULL,
    [BNTRMXUN_3]     INT           NOT NULL,
    [BNTRMXUN_4]     INT           NOT NULL,
    [BNTRMXUN_5]     INT           NOT NULL,
    [BNPAYPMX]       FLOAT (53)    NOT NULL,
    [BNFYRMAX]       FLOAT (53)    NOT NULL,
    [BNFLFMAX]       FLOAT (53)    NOT NULL,
    [W2BXNMBR]       SMALLINT      NOT NULL,
    [W2BXLABL]       NVARCHAR (7)  NOT NULL,
    [NOTEINDX]       FLOAT (53)    NOT NULL,
    [LTDBNFIT]       FLOAT (53)    NOT NULL,
    [DATAENTDFLT]    TINYINT       NOT NULL,
    [EMPLRMAXMAT]    FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR006001$AK2UPR00600] PRIMARY KEY CLUSTERED ([BENEFIT] ASC, [EMPLOYID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR006001$AK3UPR00600]
    ON [dbo].[UPR006001]([BENEFIT] ASC, [VARBENFT] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR006001$AK4UPR00600]
    ON [dbo].[UPR006001]([EMPLOYID] ASC, [W2BXNMBR] ASC, [W2BXLABL] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR006001$PKUPR00600]
    ON [dbo].[UPR006001]([EMPLOYID] ASC, [BENEFIT] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[AK3UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'INDEX', @level2name = N'UPR006001$AK3UPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[AK4UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'INDEX', @level2name = N'UPR006001$AK4UPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[PKUPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'INDEX', @level2name = N'UPR006001$PKUPR00600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BENEFIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BENEFIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFBEGDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFBEGDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFENDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFENDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[VARBENFT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'VARBENFT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTFREQ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTFREQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[TAXABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'TAXABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTFDTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTFDTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTSSEC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTSSEC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTMCAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTMCAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTSTTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTSTTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTLTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTLTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTFUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTFUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[SBJTSUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'SBJTSUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[FFEDTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'FFEDTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[FLSTTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'FLSTTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BORCDTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BORCDTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BSDORCDS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BSDORCDS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFFRMLA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFFRMLA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFPRCNT_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFPRCNT_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFPRCNT_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFPRCNT_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFPRCNT_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFPRCNT_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFITAMT_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFITAMT_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFITAMT_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFITAMT_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFITAMT_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFITAMT_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFITAMT_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFITAMT_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFITAMT_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFITAMT_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTRMAX_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTRMAX_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTRMAX_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTRMAX_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFTRMAX_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFTRMAX_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNTRMXUN_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNTRMXUN_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNTRMXUN_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNTRMXUN_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNTRMXUN_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNTRMXUN_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNPAYPMX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNPAYPMX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFYRMAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFYRMAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[BNFLFMAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'BNFLFMAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[W2BXNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'W2BXNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[W2BXLABL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'W2BXLABL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[LTDBNFIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'LTDBNFIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[DATAENTDFLT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'DATAENTDFLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[EMPLRMAXMAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'EMPLRMAXMAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR006001].[AK2UPR00600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR006001', @level2type = N'CONSTRAINT', @level2name = N'UPR006001$AK2UPR00600';

