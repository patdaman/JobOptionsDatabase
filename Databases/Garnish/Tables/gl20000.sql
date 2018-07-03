CREATE TABLE [dbo].[gl20000] (
    [OPENYEAR]               SMALLINT      NOT NULL,
    [JRNENTRY]               INT           NOT NULL,
    [RCTRXSEQ]               FLOAT (53)    NOT NULL,
    [SOURCDOC]               NVARCHAR (11) NOT NULL,
    [REFRENCE]               NVARCHAR (31) NOT NULL,
    [DSCRIPTN]               NVARCHAR (31) NOT NULL,
    [TRXDATE]                DATETIME2 (0) NOT NULL,
    [TRXSORCE]               NVARCHAR (13) NOT NULL,
    [ACTINDX]                INT           NOT NULL,
    [POLLDTRX]               TINYINT       NOT NULL,
    [LASTUSER]               NVARCHAR (15) NOT NULL,
    [LSTDTEDT]               DATETIME2 (0) NOT NULL,
    [USWHPSTD]               NVARCHAR (15) NOT NULL,
    [ORGNTSRC]               NVARCHAR (15) NOT NULL,
    [ORGNATYP]               SMALLINT      NOT NULL,
    [QKOFSET]                SMALLINT      NOT NULL,
    [SERIES]                 SMALLINT      NOT NULL,
    [ORTRXTYP]               SMALLINT      NOT NULL,
    [ORCTRNUM]               NVARCHAR (21) NOT NULL,
    [ORMSTRID]               NVARCHAR (31) NOT NULL,
    [ORMSTRNM]               NVARCHAR (65) NOT NULL,
    [ORDOCNUM]               NVARCHAR (21) NOT NULL,
    [ORPSTDDT]               DATETIME2 (0) NOT NULL,
    [ORTRXSRC]               NVARCHAR (13) NOT NULL,
    [OrigDTASeries]          SMALLINT      NOT NULL,
    [OrigSeqNum]             INT           NOT NULL,
    [SEQNUMBR]               INT           NOT NULL,
    [DTA_GL_Status]          SMALLINT      NOT NULL,
    [DTA_Index]              FLOAT (53)    NOT NULL,
    [CURNCYID]               NVARCHAR (15) NOT NULL,
    [CURRNIDX]               SMALLINT      NOT NULL,
    [RATETPID]               NVARCHAR (15) NOT NULL,
    [EXGTBLID]               NVARCHAR (15) NOT NULL,
    [XCHGRATE]               FLOAT (53)    NOT NULL,
    [EXCHDATE]               DATETIME2 (0) NOT NULL,
    [TIME1]                  DATETIME2 (0) NOT NULL,
    [RTCLCMTD]               SMALLINT      NOT NULL,
    [NOTEINDX]               FLOAT (53)    NOT NULL,
    [ICTRX]                  TINYINT       NOT NULL,
    [ORCOMID]                NVARCHAR (5)  NOT NULL,
    [ORIGINJE]               INT           NOT NULL,
    [PERIODID]               SMALLINT      NOT NULL,
    [DEBITAMT]               FLOAT (53)    NOT NULL,
    [CRDTAMNT]               FLOAT (53)    NOT NULL,
    [ORDBTAMT]               FLOAT (53)    NOT NULL,
    [ORCRDAMT]               FLOAT (53)    NOT NULL,
    [DOCDATE]                DATETIME2 (0) NOT NULL,
    [PSTGNMBR]               INT           NOT NULL,
    [PPSGNMBR]               INT           NOT NULL,
    [DENXRATE]               FLOAT (53)    NOT NULL,
    [MCTRXSTT]               SMALLINT      NOT NULL,
    [CorrespondingUnit]      NVARCHAR (5)  NOT NULL,
    [VOIDED]                 TINYINT       NOT NULL,
    [Back_Out_JE]            INT           NOT NULL,
    [Back_Out_JE_Year]       SMALLINT      NOT NULL,
    [Correcting_JE]          INT           NOT NULL,
    [Correcting_JE_Year]     SMALLINT      NOT NULL,
    [Original_JE]            INT           NOT NULL,
    [Original_JE_Seq_Num]    FLOAT (53)    NOT NULL,
    [Original_JE_Year]       SMALLINT      NOT NULL,
    [Ledger_ID]              SMALLINT      NOT NULL,
    [Adjustment_Transaction] TINYINT       NOT NULL,
    [APRVLUSERID]            NVARCHAR (15) NOT NULL,
    [APPRVLDT]               DATETIME2 (0) NOT NULL,
    [DEX_ROW_TS]             DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]             INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]         ROWVERSION    NOT NULL,
    CONSTRAINT [gl20000$AK10GL20000] PRIMARY KEY CLUSTERED ([JRNENTRY] ASC, [OPENYEAR] ASC, [TRXDATE] ASC, [RCTRXSEQ] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK1GL20000]
    ON [dbo].[gl20000]([JRNENTRY] ASC, [RCTRXSEQ] ASC, [ACTINDX] ASC, [TRXDATE] ASC, [PERIODID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK2GL20000]
    ON [dbo].[gl20000]([ACTINDX] ASC, [OPENYEAR] ASC, [SOURCDOC] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK3GL20000]
    ON [dbo].[gl20000]([OPENYEAR] ASC, [TRXDATE] ASC, [ACTINDX] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK4GL20000]
    ON [dbo].[gl20000]([JRNENTRY] ASC, [QKOFSET] ASC, [ACTINDX] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK5GL20000]
    ON [dbo].[gl20000]([OPENYEAR] ASC, [ACTINDX] ASC, [TRXDATE] ASC, [PERIODID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK6GL20000]
    ON [dbo].[gl20000]([OPENYEAR] ASC, [ACTINDX] ASC, [CURNCYID] ASC, [TRXDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK7GL20000]
    ON [dbo].[gl20000]([ACTINDX] ASC, [TRXDATE] ASC, [OPENYEAR] ASC, [Ledger_ID] ASC, [DEBITAMT] ASC, [CRDTAMNT] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK8GL20000]
    ON [dbo].[gl20000]([JRNENTRY] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$AK9GL20000]
    ON [dbo].[gl20000]([Back_Out_JE] ASC, [OPENYEAR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [gl20000$CL8GL20000]
    ON [dbo].[gl20000]([JRNENTRY] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [gl20000$PKGL20000]
    ON [dbo].[gl20000]([DEX_ROW_ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK1GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK1GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK2GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK2GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK3GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK3GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK4GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK4GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK5GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK5GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK6GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK6GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK7GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK7GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK8GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK8GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK9GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$AK9GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[CL8GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$CL8GL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[PKGL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'INDEX', @level2name = N'gl20000$PKGL20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[OPENYEAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'OPENYEAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[JRNENTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'JRNENTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[RCTRXSEQ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'RCTRXSEQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[SOURCDOC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'SOURCDOC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[REFRENCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'REFRENCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DSCRIPTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DSCRIPTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[TRXDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'TRXDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[TRXSORCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'TRXSORCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[POLLDTRX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'POLLDTRX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[LASTUSER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'LASTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[LSTDTEDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'LSTDTEDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[USWHPSTD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'USWHPSTD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORGNTSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORGNTSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORGNATYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORGNATYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[QKOFSET]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'QKOFSET';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[SERIES]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'SERIES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORTRXTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORTRXTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORCTRNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORCTRNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORMSTRID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORMSTRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORMSTRNM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORMSTRNM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORDOCNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORDOCNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORPSTDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORPSTDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORTRXSRC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORTRXSRC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[OrigDTASeries]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'OrigDTASeries';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[OrigSeqNum]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'OrigSeqNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[SEQNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'SEQNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DTA_GL_Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DTA_GL_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DTA_Index]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DTA_Index';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[CURNCYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'CURNCYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[CURRNIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'CURRNIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[RATETPID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'RATETPID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[EXGTBLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'EXGTBLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[XCHGRATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'XCHGRATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[EXCHDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'EXCHDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[TIME1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[RTCLCMTD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'RTCLCMTD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ICTRX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ICTRX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORCOMID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORCOMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORIGINJE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORIGINJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[PERIODID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'PERIODID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DEBITAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DEBITAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[CRDTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'CRDTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORDBTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORDBTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[ORCRDAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'ORCRDAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DOCDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DOCDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[PSTGNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'PSTGNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[PPSGNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'PPSGNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DENXRATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DENXRATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[MCTRXSTT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'MCTRXSTT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[CorrespondingUnit]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'CorrespondingUnit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[VOIDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'VOIDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Back_Out_JE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Back_Out_JE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Back_Out_JE_Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Back_Out_JE_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Correcting_JE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Correcting_JE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Correcting_JE_Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Correcting_JE_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Original_JE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Original_JE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Original_JE_Seq_Num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Original_JE_Seq_Num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Original_JE_Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Original_JE_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Ledger_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Ledger_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[Adjustment_Transaction]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'Adjustment_Transaction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[APRVLUSERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'APRVLUSERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[APPRVLDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'APPRVLDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[gl20000].[AK10GL20000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl20000', @level2type = N'CONSTRAINT', @level2name = N'gl20000$AK10GL20000';

