CREATE TABLE [dbo].[UPR40600] (
    [PAYRCORD]       NVARCHAR (7)  NOT NULL,
    [DSCRIPTN]       NVARCHAR (31) NOT NULL,
    [INACTIVE]       TINYINT       NOT NULL,
    [PAYTYPE]        SMALLINT      NOT NULL,
    [BSPAYRCD]       NVARCHAR (7)  NOT NULL,
    [PAYRTAMT]       FLOAT (53)    NOT NULL,
    [PAYUNIT]        NVARCHAR (25) NOT NULL,
    [PAYUNPER]       SMALLINT      NOT NULL,
    [PAYPEROD]       SMALLINT      NOT NULL,
    [PAYPRPRD]       FLOAT (53)    NOT NULL,
    [MXPYPPER]       FLOAT (53)    NOT NULL,
    [TipType]        SMALLINT      NOT NULL,
    [PAYADVNC]       FLOAT (53)    NOT NULL,
    [RPTASWGS]       TINYINT       NOT NULL,
    [W2BXNMBR]       SMALLINT      NOT NULL,
    [W2BXLABL]       NVARCHAR (7)  NOT NULL,
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
    [ACRUVACN]       TINYINT       NOT NULL,
    [ACRUSTIM]       TINYINT       NOT NULL,
    [NOTEINDX]       FLOAT (53)    NOT NULL,
    [DATAENTDFLT]    TINYINT       NOT NULL,
    [SHFTCODE]       NVARCHAR (7)  NOT NULL,
    [PAYFACTR]       FLOAT (53)    NOT NULL,
    [BSDONRTE]       FLOAT (53)    NOT NULL,
    [W2BXNMBR2]      SMALLINT      NOT NULL,
    [W2BXLABL2]      NVARCHAR (7)  NOT NULL,
    [W2BXNMBR3]      SMALLINT      NOT NULL,
    [W2BXLABL3]      NVARCHAR (7)  NOT NULL,
    [W2BXNMBR4]      SMALLINT      NOT NULL,
    [W2BXLABL4]      NVARCHAR (7)  NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR40600$AK2UPR40600] PRIMARY KEY CLUSTERED ([DSCRIPTN] ASC, [PAYRCORD] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR40600$AK3UPR40600]
    ON [dbo].[UPR40600]([PAYTYPE] ASC, [PAYRCORD] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR40600$AK4UPR40600]
    ON [dbo].[UPR40600]([BSPAYRCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR40600$PKUPR40600]
    ON [dbo].[UPR40600]([PAYRCORD] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[AK3UPR40600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'INDEX', @level2name = N'UPR40600$AK3UPR40600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[AK4UPR40600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'INDEX', @level2name = N'UPR40600$AK4UPR40600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PKUPR40600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'INDEX', @level2name = N'UPR40600$PKUPR40600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYRCORD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYRCORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[DSCRIPTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'DSCRIPTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[BSPAYRCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'BSPAYRCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYRTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYRTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYUNIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYUNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYUNPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYUNPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYPEROD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYPEROD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYPRPRD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYPRPRD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[MXPYPPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'MXPYPPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYADVNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYADVNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[RPTASWGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'RPTASWGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXLABL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXLABL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[TAXABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'TAXABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTFDTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTFDTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTSSEC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTSSEC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTMCAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTMCAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTSTTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTSTTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTLTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTLTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTFUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTFUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SBJTSUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SBJTSUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[FFEDTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'FFEDTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[FLSTTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'FLSTTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[ACRUVACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'ACRUVACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[ACRUSTIM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'ACRUSTIM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[DATAENTDFLT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'DATAENTDFLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[SHFTCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'SHFTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[PAYFACTR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'PAYFACTR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[BSDONRTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'BSDONRTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXNMBR2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXLABL2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXLABL2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXNMBR3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXLABL3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXLABL3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXNMBR4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXNMBR4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[W2BXLABL4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'W2BXLABL4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40600].[AK2UPR40600]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40600', @level2type = N'CONSTRAINT', @level2name = N'UPR40600$AK2UPR40600';

