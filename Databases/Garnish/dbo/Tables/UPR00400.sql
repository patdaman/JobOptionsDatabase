CREATE TABLE [dbo].[UPR00400] (
    [EMPLOYID]                 NVARCHAR (15) NOT NULL,
    [PAYRCORD]                 NVARCHAR (7)  NOT NULL,
    [INACTIVE]                 TINYINT       NOT NULL,
    [PAYTYPE]                  SMALLINT      NOT NULL,
    [BSPAYRCD]                 NVARCHAR (7)  NOT NULL,
    [PAYRTAMT]                 FLOAT (53)    NOT NULL,
    [PAYUNIT]                  NVARCHAR (25) NOT NULL,
    [PAYUNPER]                 SMALLINT      NOT NULL,
    [RPTASWGS]                 TINYINT       NOT NULL,
    [TAXABLE]                  TINYINT       NOT NULL,
    [SBJTFDTX]                 TINYINT       NOT NULL,
    [SBJTSSEC]                 TINYINT       NOT NULL,
    [SBJTMCAR]                 TINYINT       NOT NULL,
    [SBJTSTTX]                 TINYINT       NOT NULL,
    [SBJTLTAX]                 TINYINT       NOT NULL,
    [SBJTFUTA]                 TINYINT       NOT NULL,
    [SBJTSUTA]                 TINYINT       NOT NULL,
    [SUTASTAT]                 NVARCHAR (3)  NOT NULL,
    [FFEDTXRT]                 SMALLINT      NOT NULL,
    [FLSTTXRT]                 SMALLINT      NOT NULL,
    [PAYPEROD]                 SMALLINT      NOT NULL,
    [PAYPRPRD]                 FLOAT (53)    NOT NULL,
    [MXPYPPER]                 FLOAT (53)    NOT NULL,
    [TipType]                  SMALLINT      NOT NULL,
    [PAYADVNC]                 FLOAT (53)    NOT NULL,
    [ACRUVACN]                 TINYINT       NOT NULL,
    [ACRUSTIM]                 TINYINT       NOT NULL,
    [WRKRCOMP]                 NVARCHAR (7)  NOT NULL,
    [W2BXNMBR]                 SMALLINT      NOT NULL,
    [W2BXLABL]                 NVARCHAR (7)  NOT NULL,
    [PYADVTKN]                 FLOAT (53)    NOT NULL,
    [NOTEINDX]                 FLOAT (53)    NOT NULL,
    [DATAENTDFLT]              TINYINT       NOT NULL,
    [SHFTCODE]                 NVARCHAR (7)  NOT NULL,
    [PAYFACTR]                 FLOAT (53)    NOT NULL,
    [BSDONRTE]                 FLOAT (53)    NOT NULL,
    [PYSTPTBLID]               NVARCHAR (15) NOT NULL,
    [Base_Step_Increased_On]   SMALLINT      NOT NULL,
    [Step]                     SMALLINT      NOT NULL,
    [Step_Effective_Date]      DATETIME2 (0) NOT NULL,
    [Step_FTE]                 FLOAT (53)    NOT NULL,
    [W2BXNMBR2]                SMALLINT      NOT NULL,
    [W2BXLABL2]                NVARCHAR (7)  NOT NULL,
    [W2BXNMBR3]                SMALLINT      NOT NULL,
    [W2BXLABL3]                NVARCHAR (7)  NOT NULL,
    [W2BXNMBR4]                SMALLINT      NOT NULL,
    [W2BXLABL4]                NVARCHAR (7)  NOT NULL,
    [Workflow_Approval_Status] SMALLINT      NOT NULL,
    [Workflow_Priority]        SMALLINT      NOT NULL,
    [Workflow_Status]          SMALLINT      NOT NULL,
    [DEX_ROW_ID]               INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]           ROWVERSION    NOT NULL,
    CONSTRAINT [UPR00400$AK2UPR00400] PRIMARY KEY CLUSTERED ([PAYRCORD] ASC, [EMPLOYID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00400$AK3UPR00400]
    ON [dbo].[UPR00400]([EMPLOYID] ASC, [BSPAYRCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00400$AK4UPR00400]
    ON [dbo].[UPR00400]([PAYTYPE] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00400$AK5UPR00400]
    ON [dbo].[UPR00400]([EMPLOYID] ASC, [W2BXNMBR] ASC, [W2BXLABL] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00400$AK6UPR00400]
    ON [dbo].[UPR00400]([EMPLOYID] ASC, [PAYTYPE] ASC, [BSPAYRCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00400$PKUPR00400]
    ON [dbo].[UPR00400]([EMPLOYID] ASC, [PAYRCORD] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[AK3UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'INDEX', @level2name = N'UPR00400$AK3UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[AK4UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'INDEX', @level2name = N'UPR00400$AK4UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[AK5UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'INDEX', @level2name = N'UPR00400$AK5UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[AK6UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'INDEX', @level2name = N'UPR00400$AK6UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PKUPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'INDEX', @level2name = N'UPR00400$PKUPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYRCORD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYRCORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[BSPAYRCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'BSPAYRCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYRTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYRTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYUNIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYUNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYUNPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYUNPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[RPTASWGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'RPTASWGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[TAXABLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'TAXABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTFDTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTFDTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTSSEC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTSSEC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTMCAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTMCAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTSTTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTSTTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTLTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTLTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTFUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTFUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SBJTSUTA]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SBJTSUTA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SUTASTAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SUTASTAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[FFEDTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'FFEDTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[FLSTTXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'FLSTTXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYPEROD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYPEROD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYPRPRD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYPRPRD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[MXPYPPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'MXPYPPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYADVNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYADVNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[ACRUVACN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'ACRUVACN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[ACRUSTIM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'ACRUSTIM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXLABL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXLABL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PYADVTKN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PYADVTKN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[DATAENTDFLT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'DATAENTDFLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[SHFTCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'SHFTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PAYFACTR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PAYFACTR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[BSDONRTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'BSDONRTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[PYSTPTBLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'PYSTPTBLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Base_Step_Increased_On]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Base_Step_Increased_On';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Step]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Step';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Step_Effective_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Step_Effective_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Step_FTE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Step_FTE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXNMBR2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXNMBR2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXLABL2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXLABL2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXNMBR3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXNMBR3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXLABL3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXLABL3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXNMBR4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXNMBR4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[W2BXLABL4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'W2BXLABL4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Workflow_Approval_Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Workflow_Approval_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Workflow_Priority]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Workflow_Priority';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[Workflow_Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'Workflow_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00400].[AK2UPR00400]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00400', @level2type = N'CONSTRAINT', @level2name = N'UPR00400$AK2UPR00400';

