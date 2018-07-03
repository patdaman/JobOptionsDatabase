CREATE TABLE [dbo].[gl200001] (
    [OPENYEAR]            SMALLINT      NOT NULL,
    [JRNENTRY]            INT           NOT NULL,
    [RCTRXSEQ]            FLOAT (53)    NOT NULL,
    [SOURCDOC]            NVARCHAR (11) NOT NULL,
    [REFRENCE]            NVARCHAR (31) NOT NULL,
    [DSCRIPTN]            NVARCHAR (31) NOT NULL,
    [TRXDATE]             DATETIME2 (0) NOT NULL,
    [TRXSORCE]            NVARCHAR (13) NOT NULL,
    [ACTINDX]             INT           NOT NULL,
    [POLLDTRX]            TINYINT       NOT NULL,
    [LASTUSER]            NVARCHAR (15) NOT NULL,
    [LSTDTEDT]            DATETIME2 (0) NOT NULL,
    [USWHPSTD]            NVARCHAR (15) NOT NULL,
    [ORGNTSRC]            NVARCHAR (15) NOT NULL,
    [ORGNATYP]            SMALLINT      NOT NULL,
    [QKOFSET]             SMALLINT      NOT NULL,
    [SERIES]              SMALLINT      NOT NULL,
    [ORTRXTYP]            SMALLINT      NOT NULL,
    [ORCTRNUM]            NVARCHAR (21) NOT NULL,
    [ORMSTRID]            NVARCHAR (31) NOT NULL,
    [ORMSTRNM]            NVARCHAR (65) NOT NULL,
    [ORDOCNUM]            NVARCHAR (21) NOT NULL,
    [ORPSTDDT]            DATETIME2 (0) NOT NULL,
    [ORTRXSRC]            NVARCHAR (13) NOT NULL,
    [OrigDTASeries]       SMALLINT      NOT NULL,
    [OrigSeqNum]          INT           NOT NULL,
    [SEQNUMBR]            INT           NOT NULL,
    [DTA_GL_Status]       SMALLINT      NOT NULL,
    [DTA_Index]           FLOAT (53)    NOT NULL,
    [CURNCYID]            NVARCHAR (15) NOT NULL,
    [CURRNIDX]            SMALLINT      NOT NULL,
    [RATETPID]            NVARCHAR (15) NOT NULL,
    [EXGTBLID]            NVARCHAR (15) NOT NULL,
    [XCHGRATE]            FLOAT (53)    NOT NULL,
    [EXCHDATE]            DATETIME2 (0) NOT NULL,
    [TIME1]               DATETIME2 (0) NOT NULL,
    [RTCLCMTD]            SMALLINT      NOT NULL,
    [NOTEINDX]            FLOAT (53)    NOT NULL,
    [ICTRX]               TINYINT       NOT NULL,
    [ORCOMID]             NVARCHAR (5)  NOT NULL,
    [ORIGINJE]            INT           NOT NULL,
    [PERIODID]            SMALLINT      NOT NULL,
    [CRDTAMNT]            FLOAT (53)    NOT NULL,
    [DEBITAMT]            FLOAT (53)    NOT NULL,
    [ORCRDAMT]            FLOAT (53)    NOT NULL,
    [ORDBTAMT]            FLOAT (53)    NOT NULL,
    [DOCDATE]             DATETIME2 (0) NOT NULL,
    [PSTGNMBR]            INT           NOT NULL,
    [PPSGNMBR]            INT           NOT NULL,
    [DENXRATE]            FLOAT (53)    NOT NULL,
    [MCTRXSTT]            SMALLINT      NOT NULL,
    [CorrespondingUnit]   NVARCHAR (5)  NOT NULL,
    [VOIDED]              TINYINT       NOT NULL,
    [Back_Out_JE]         INT           NOT NULL,
    [Back_Out_JE_Year]    SMALLINT      NOT NULL,
    [Correcting_JE]       INT           NOT NULL,
    [Correcting_JE_Year]  SMALLINT      NOT NULL,
    [Original_JE]         INT           NOT NULL,
    [Original_JE_Seq_Num] FLOAT (53)    NOT NULL,
    [Original_JE_Year]    SMALLINT      NOT NULL,
    [DEX_ROW_TS]          DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]          INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]      ROWVERSION    NOT NULL,
    CONSTRAINT [gl200001$AK1GL20000] PRIMARY KEY CLUSTERED ([JRNENTRY] ASC, [RCTRXSEQ] ASC, [ACTINDX] ASC, [TRXDATE] ASC, [PERIODID] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK2GL20000]
    ON [dbo].[gl200001]([ACTINDX] ASC, [OPENYEAR] ASC, [SOURCDOC] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK3GL20000]
    ON [dbo].[gl200001]([OPENYEAR] ASC, [TRXDATE] ASC, [ACTINDX] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK4GL20000]
    ON [dbo].[gl200001]([JRNENTRY] ASC, [QKOFSET] ASC, [ACTINDX] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK5GL20000]
    ON [dbo].[gl200001]([OPENYEAR] ASC, [ACTINDX] ASC, [TRXDATE] ASC, [PERIODID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK6GL20000]
    ON [dbo].[gl200001]([OPENYEAR] ASC, [ACTINDX] ASC, [CURNCYID] ASC, [TRXDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK7GL20000]
    ON [dbo].[gl200001]([ACTINDX] ASC, [TRXDATE] ASC, [OPENYEAR] ASC, [DEBITAMT] ASC, [CRDTAMNT] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$AK8GL20000]
    ON [dbo].[gl200001]([JRNENTRY] ASC, [DEX_ROW_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [gl200001$CL8GL20000]
    ON [dbo].[gl200001]([JRNENTRY] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl200001$PKGL20000]
    ON [dbo].[gl200001]([DEX_ROW_ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK2GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK2GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK3GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK3GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK4GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK4GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK5GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK5GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK6GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK6GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK7GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK7GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK8GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$AK8GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[CL8GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$CL8GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[PKGL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'INDEX', @level2name = N'gl200001$PKGL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[OPENYEAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'OPENYEAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[JRNENTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'JRNENTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[RCTRXSEQ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'RCTRXSEQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[SOURCDOC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'SOURCDOC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[REFRENCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'REFRENCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DSCRIPTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DSCRIPTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[TRXDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'TRXDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[TRXSORCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'TRXSORCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[POLLDTRX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'POLLDTRX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[LASTUSER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'LASTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[LSTDTEDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'LSTDTEDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[USWHPSTD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'USWHPSTD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORGNTSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORGNTSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORGNATYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORGNATYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[QKOFSET]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'QKOFSET';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[SERIES]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'SERIES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORTRXTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORTRXTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORCTRNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORCTRNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORMSTRID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORMSTRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORMSTRNM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORMSTRNM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORDOCNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORDOCNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORPSTDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORPSTDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORTRXSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORTRXSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[OrigDTASeries]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'OrigDTASeries';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[OrigSeqNum]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'OrigSeqNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[SEQNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'SEQNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DTA_GL_Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DTA_GL_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DTA_Index]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DTA_Index';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[CURNCYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'CURNCYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[CURRNIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'CURRNIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[RATETPID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'RATETPID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[EXGTBLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'EXGTBLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[XCHGRATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'XCHGRATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[EXCHDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'EXCHDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[TIME1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[RTCLCMTD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'RTCLCMTD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ICTRX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ICTRX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORCOMID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORCOMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORIGINJE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORIGINJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[PERIODID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'PERIODID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[CRDTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'CRDTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DEBITAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DEBITAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORCRDAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORCRDAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[ORDBTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'ORDBTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DOCDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DOCDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[PSTGNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'PSTGNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[PPSGNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'PPSGNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DENXRATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DENXRATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[MCTRXSTT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'MCTRXSTT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[CorrespondingUnit]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'CorrespondingUnit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[VOIDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'VOIDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Back_Out_JE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Back_Out_JE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Back_Out_JE_Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Back_Out_JE_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Correcting_JE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Correcting_JE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Correcting_JE_Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Correcting_JE_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Original_JE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Original_JE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Original_JE_Seq_Num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Original_JE_Seq_Num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[Original_JE_Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'Original_JE_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl200001].[AK1GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl200001', @level2type = N'CONSTRAINT', @level2name = N'gl200001$AK1GL20000';

