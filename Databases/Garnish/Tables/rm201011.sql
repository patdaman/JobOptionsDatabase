CREATE TABLE [dbo].[rm201011] (
    [CUSTNMBR]         NVARCHAR (15) NOT NULL,
    [CPRCSTNM]         NVARCHAR (15) NOT NULL,
    [DOCNUMBR]         NVARCHAR (21) NOT NULL,
    [CHEKNMBR]         NVARCHAR (21) NOT NULL,
    [BACHNUMB]         NVARCHAR (15) NOT NULL,
    [BCHSOURC]         NVARCHAR (15) NOT NULL,
    [TRXSORCE]         NVARCHAR (13) NOT NULL,
    [RMDTYPAL]         SMALLINT      NOT NULL,
    [CSHRCTYP]         SMALLINT      NOT NULL,
    [CBKIDCRD]         NVARCHAR (15) NOT NULL,
    [CBKIDCSH]         NVARCHAR (15) NOT NULL,
    [CBKIDCHK]         NVARCHAR (15) NOT NULL,
    [DUEDATE]          DATETIME2 (0) NOT NULL,
    [DOCDATE]          DATETIME2 (0) NOT NULL,
    [POSTDATE]         DATETIME2 (0) NOT NULL,
    [PSTUSRID]         NVARCHAR (15) NOT NULL,
    [GLPOSTDT]         DATETIME2 (0) NOT NULL,
    [LSTEDTDT]         DATETIME2 (0) NOT NULL,
    [LSTUSRED]         NVARCHAR (15) NOT NULL,
    [ORTRXAMT]         FLOAT (53)    NOT NULL,
    [CURTRXAM]         FLOAT (53)    NOT NULL,
    [SLSAMNT]          FLOAT (53)    NOT NULL,
    [COSTAMNT]         FLOAT (53)    NOT NULL,
    [FRTAMNT]          FLOAT (53)    NOT NULL,
    [MISCAMNT]         FLOAT (53)    NOT NULL,
    [TAXAMNT]          FLOAT (53)    NOT NULL,
    [COMDLRAM]         FLOAT (53)    NOT NULL,
    [CASHAMNT]         FLOAT (53)    NOT NULL,
    [DISTKNAM]         FLOAT (53)    NOT NULL,
    [DISAVAMT]         FLOAT (53)    NOT NULL,
    [DISAVTKN]         FLOAT (53)    NOT NULL,
    [DISCRTND]         FLOAT (53)    NOT NULL,
    [DISCDATE]         DATETIME2 (0) NOT NULL,
    [DSCDLRAM]         FLOAT (53)    NOT NULL,
    [DSCPCTAM]         SMALLINT      NOT NULL,
    [WROFAMNT]         FLOAT (53)    NOT NULL,
    [TRXDSCRN]         NVARCHAR (31) NOT NULL,
    [CSPORNBR]         NVARCHAR (21) NOT NULL,
    [SLPRSNID]         NVARCHAR (15) NOT NULL,
    [SLSTERCD]         NVARCHAR (15) NOT NULL,
    [DINVPDOF]         DATETIME2 (0) NOT NULL,
    [PPSAMDED]         FLOAT (53)    NOT NULL,
    [GSTDSAMT]         FLOAT (53)    NOT NULL,
    [DELETE1]          TINYINT       NOT NULL,
    [AGNGBUKT]         SMALLINT      NOT NULL,
    [VOIDSTTS]         SMALLINT      NOT NULL,
    [VOIDDATE]         DATETIME2 (0) NOT NULL,
    [TAXSCHID]         NVARCHAR (15) NOT NULL,
    [CURNCYID]         NVARCHAR (15) NOT NULL,
    [PYMTRMID]         NVARCHAR (21) NOT NULL,
    [SHIPMTHD]         NVARCHAR (15) NOT NULL,
    [TRDISAMT]         FLOAT (53)    NOT NULL,
    [SLSCHDID]         NVARCHAR (15) NOT NULL,
    [FRTSCHID]         NVARCHAR (15) NOT NULL,
    [MSCSCHID]         NVARCHAR (15) NOT NULL,
    [NOTEINDX]         FLOAT (53)    NOT NULL,
    [Tax_Date]         DATETIME2 (0) NOT NULL,
    [APLYWITH]         TINYINT       NOT NULL,
    [SALEDATE]         DATETIME2 (0) NOT NULL,
    [CORRCTN]          TINYINT       NOT NULL,
    [SIMPLIFD]         TINYINT       NOT NULL,
    [Electronic]       TINYINT       NOT NULL,
    [ECTRX]            TINYINT       NOT NULL,
    [BKTSLSAM]         FLOAT (53)    NOT NULL,
    [BKTFRTAM]         FLOAT (53)    NOT NULL,
    [BKTMSCAM]         FLOAT (53)    NOT NULL,
    [BackoutTradeDisc] FLOAT (53)    NOT NULL,
    [Factoring]        TINYINT       NOT NULL,
    [DIRECTDEBIT]      TINYINT       NOT NULL,
    [DEX_ROW_ID]       INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]   ROWVERSION    NOT NULL,
    CONSTRAINT [rm201011$AK2RM20101] PRIMARY KEY CLUSTERED ([CUSTNMBR] ASC, [RMDTYPAL] ASC, [DUEDATE] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm201011$AK3RM20101]
    ON [dbo].[rm201011]([CPRCSTNM] ASC, [RMDTYPAL] ASC, [DUEDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm201011$AK4RM20101]
    ON [dbo].[rm201011]([RMDTYPAL] ASC, [DOCNUMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm201011$AK5RM20101]
    ON [dbo].[rm201011]([TRXSORCE] ASC, [RMDTYPAL] ASC, [DOCNUMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm201011$AK6RM20101]
    ON [dbo].[rm201011]([CPRCSTNM] ASC, [RMDTYPAL] ASC, [DOCNUMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm201011$AK7RM20101]
    ON [dbo].[rm201011]([CUSTNMBR] ASC, [DOCDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm201011$PKRM20101]
    ON [dbo].[rm201011]([CUSTNMBR] ASC, [RMDTYPAL] ASC, [DOCNUMBR] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AK3RM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'INDEX', @level2name = N'rm201011$AK3RM20101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AK4RM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'INDEX', @level2name = N'rm201011$AK4RM20101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AK5RM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'INDEX', @level2name = N'rm201011$AK5RM20101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AK6RM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'INDEX', @level2name = N'rm201011$AK6RM20101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AK7RM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'INDEX', @level2name = N'rm201011$AK7RM20101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[PKRM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'INDEX', @level2name = N'rm201011$PKRM20101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CUSTNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CUSTNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CPRCSTNM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CPRCSTNM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DOCNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DOCNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CHEKNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CHEKNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[BACHNUMB]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'BACHNUMB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[BCHSOURC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'BCHSOURC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[TRXSORCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'TRXSORCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[RMDTYPAL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'RMDTYPAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CSHRCTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CSHRCTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CBKIDCRD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CBKIDCRD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CBKIDCSH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CBKIDCSH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CBKIDCHK]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CBKIDCHK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DUEDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DUEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DOCDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DOCDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[POSTDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'POSTDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[PSTUSRID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'PSTUSRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[GLPOSTDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'GLPOSTDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[LSTEDTDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'LSTEDTDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[LSTUSRED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'LSTUSRED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[ORTRXAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'ORTRXAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CURTRXAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CURTRXAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SLSAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SLSAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[COSTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'COSTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[FRTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'FRTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[MISCAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'MISCAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[TAXAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'TAXAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[COMDLRAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'COMDLRAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CASHAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CASHAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DISTKNAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DISTKNAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DISAVAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DISAVAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DISAVTKN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DISAVTKN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DISCRTND]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DISCRTND';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DISCDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DISCDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DSCDLRAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DSCDLRAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DSCPCTAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DSCPCTAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[WROFAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'WROFAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[TRXDSCRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'TRXDSCRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CSPORNBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CSPORNBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SLPRSNID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SLPRSNID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SLSTERCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SLSTERCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DINVPDOF]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DINVPDOF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[PPSAMDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'PPSAMDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[GSTDSAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'GSTDSAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DELETE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DELETE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AGNGBUKT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'AGNGBUKT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[VOIDSTTS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'VOIDSTTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[VOIDDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'VOIDDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[TAXSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'TAXSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CURNCYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CURNCYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[PYMTRMID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'PYMTRMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SHIPMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SHIPMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[TRDISAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'TRDISAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SLSCHDID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SLSCHDID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[FRTSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'FRTSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[MSCSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'MSCSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[Tax_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'Tax_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[APLYWITH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'APLYWITH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SALEDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SALEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[CORRCTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'CORRCTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[SIMPLIFD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'SIMPLIFD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[Electronic]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'Electronic';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[ECTRX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'ECTRX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[BKTSLSAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'BKTSLSAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[BKTFRTAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'BKTFRTAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[BKTMSCAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'BKTMSCAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[BackoutTradeDisc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'BackoutTradeDisc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[Factoring]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'Factoring';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DIRECTDEBIT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DIRECTDEBIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm201011].[AK2RM20101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm201011', @level2type = N'CONSTRAINT', @level2name = N'rm201011$AK2RM20101';

