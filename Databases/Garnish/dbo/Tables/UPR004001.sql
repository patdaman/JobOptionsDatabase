CREATE TABLE [dbo].[UPR004001] (
    [EMPLOYID]               NVARCHAR (15) NOT NULL,
    [PAYRCORD]               NVARCHAR (7)  NOT NULL,
    [INACTIVE]               TINYINT       NOT NULL,
    [PAYTYPE]                SMALLINT      NOT NULL,
    [BSPAYRCD]               NVARCHAR (7)  NOT NULL,
    [PAYRTAMT]               FLOAT (53)    NOT NULL,
    [PAYUNIT]                NVARCHAR (25) NOT NULL,
    [PAYUNPER]               SMALLINT      NOT NULL,
    [RPTASWGS]               TINYINT       NOT NULL,
    [TAXABLE]                TINYINT       NOT NULL,
    [SBJTFDTX]               TINYINT       NOT NULL,
    [SBJTSSEC]               TINYINT       NOT NULL,
    [SBJTMCAR]               TINYINT       NOT NULL,
    [SBJTSTTX]               TINYINT       NOT NULL,
    [SBJTLTAX]               TINYINT       NOT NULL,
    [SBJTFUTA]               TINYINT       NOT NULL,
    [SBJTSUTA]               TINYINT       NOT NULL,
    [SUTASTAT]               NVARCHAR (3)  NOT NULL,
    [FFEDTXRT]               SMALLINT      NOT NULL,
    [FLSTTXRT]               SMALLINT      NOT NULL,
    [PAYPEROD]               SMALLINT      NOT NULL,
    [PAYPRPRD]               FLOAT (53)    NOT NULL,
    [MXPYPPER]               FLOAT (53)    NOT NULL,
    [TipType]                SMALLINT      NOT NULL,
    [PAYADVNC]               FLOAT (53)    NOT NULL,
    [ACRUVACN]               TINYINT       NOT NULL,
    [ACRUSTIM]               TINYINT       NOT NULL,
    [WRKRCOMP]               NVARCHAR (7)  NOT NULL,
    [W2BXNMBR]               SMALLINT      NOT NULL,
    [W2BXLABL]               NVARCHAR (7)  NOT NULL,
    [PYADVTKN]               FLOAT (53)    NOT NULL,
    [NOTEINDX]               FLOAT (53)    NOT NULL,
    [DATAENTDFLT]            TINYINT       NOT NULL,
    [SHFTCODE]               NVARCHAR (7)  NOT NULL,
    [PAYFACTR]               FLOAT (53)    NOT NULL,
    [BSDONRTE]               FLOAT (53)    NOT NULL,
    [PYSTPTBLID]             NVARCHAR (15) NOT NULL,
    [Base_Step_Increased_On] SMALLINT      NOT NULL,
    [Step]                   SMALLINT      NOT NULL,
    [Step_Effective_Date]    DATETIME2 (0) NOT NULL,
    [Step_FTE]               FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]             INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]         ROWVERSION    NOT NULL,
    CONSTRAINT [UPR004001$AK2UPR00400] PRIMARY KEY CLUSTERED ([PAYRCORD] ASC, [EMPLOYID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR004001$AK3UPR00400]
    ON [dbo].[UPR004001]([EMPLOYID] ASC, [BSPAYRCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR004001$AK4UPR00400]
    ON [dbo].[UPR004001]([PAYTYPE] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR004001$AK5UPR00400]
    ON [dbo].[UPR004001]([EMPLOYID] ASC, [W2BXNMBR] ASC, [W2BXLABL] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR004001$AK6UPR00400]
    ON [dbo].[UPR004001]([EMPLOYID] ASC, [PAYTYPE] ASC, [BSPAYRCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR004001$PKUPR00400]
    ON [dbo].[UPR004001]([EMPLOYID] ASC, [PAYRCORD] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[AK3UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'INDEX', @level2name = N'UPR004001$AK3UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[AK4UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'INDEX', @level2name = N'UPR004001$AK4UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[AK5UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'INDEX', @level2name = N'UPR004001$AK5UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[AK6UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'INDEX', @level2name = N'UPR004001$AK6UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PKUPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'INDEX', @level2name = N'UPR004001$PKUPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYRCORD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYRCORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[BSPAYRCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'BSPAYRCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYRTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYRTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYUNIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYUNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYUNPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYUNPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[RPTASWGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'RPTASWGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[TAXABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'TAXABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTFDTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTFDTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTSSEC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTSSEC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTMCAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTMCAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTSTTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTSTTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTLTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTLTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTFUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTFUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SBJTSUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SBJTSUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SUTASTAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SUTASTAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[FFEDTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'FFEDTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[FLSTTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'FLSTTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYPEROD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYPEROD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYPRPRD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYPRPRD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[MXPYPPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'MXPYPPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYADVNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYADVNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[ACRUVACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'ACRUVACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[ACRUSTIM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'ACRUSTIM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[W2BXNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'W2BXNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[W2BXLABL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'W2BXLABL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PYADVTKN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PYADVTKN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[DATAENTDFLT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'DATAENTDFLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[SHFTCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'SHFTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PAYFACTR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PAYFACTR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[BSDONRTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'BSDONRTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[PYSTPTBLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'PYSTPTBLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[Base_Step_Increased_On]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'Base_Step_Increased_On';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[Step]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'Step';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[Step_Effective_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'Step_Effective_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[Step_FTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'Step_FTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR004001].[AK2UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR004001', @level2type = N'CONSTRAINT', @level2name = N'UPR004001$AK2UPR00400';

