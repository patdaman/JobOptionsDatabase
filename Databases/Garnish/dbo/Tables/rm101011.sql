﻿CREATE TABLE [dbo].[rm101011] (
    [TRXSORCE]       NVARCHAR (13) NOT NULL,
    [POSTED]         TINYINT       NOT NULL,
    [POSTEDDT]       DATETIME2 (0) NOT NULL,
    [PSTGSTUS]       SMALLINT      NOT NULL,
    [CHANGED]        TINYINT       NOT NULL,
    [DOCNUMBR]       NVARCHAR (21) NOT NULL,
    [DCSTATUS]       SMALLINT      NOT NULL,
    [DISTTYPE]       SMALLINT      NOT NULL,
    [RMDTYPAL]       SMALLINT      NOT NULL,
    [SEQNUMBR]       INT           NOT NULL,
    [CUSTNMBR]       NVARCHAR (15) NOT NULL,
    [DSTINDX]        INT           NOT NULL,
    [DEBITAMT]       FLOAT (53)    NOT NULL,
    [CRDTAMNT]       FLOAT (53)    NOT NULL,
    [PROJCTID]       NVARCHAR (15) NOT NULL,
    [USERID]         NVARCHAR (15) NOT NULL,
    [CATEGUSD]       SMALLINT      NOT NULL,
    [CURNCYID]       NVARCHAR (15) NOT NULL,
    [CURRNIDX]       SMALLINT      NOT NULL,
    [ORCRDAMT]       FLOAT (53)    NOT NULL,
    [ORDBTAMT]       FLOAT (53)    NOT NULL,
    [DistRef]        NVARCHAR (31) NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [rm101011$AK2RM10101] PRIMARY KEY CLUSTERED ([USERID] ASC, [PSTGSTUS] ASC, [RMDTYPAL] ASC, [DOCNUMBR] ASC, [DSTINDX] ASC, [DISTTYPE] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm101011$AK3RM10101]
    ON [dbo].[rm101011]([TRXSORCE] ASC, [DSTINDX] ASC, [RMDTYPAL] ASC, [DOCNUMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm101011$AK4RM10101]
    ON [dbo].[rm101011]([RMDTYPAL] ASC, [DOCNUMBR] ASC, [DISTTYPE] ASC, [SEQNUMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [rm101011$CLRM10101]
    ON [dbo].[rm101011]([DOCNUMBR] ASC, [SEQNUMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm101011$PKRM10101]
    ON [dbo].[rm101011]([USERID] ASC, [PSTGSTUS] ASC, [RMDTYPAL] ASC, [DOCNUMBR] ASC, [SEQNUMBR] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[AK3RM10101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'INDEX', @level2name = N'rm101011$AK3RM10101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[AK4RM10101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'INDEX', @level2name = N'rm101011$AK4RM10101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CLRM10101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'INDEX', @level2name = N'rm101011$CLRM10101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[PKRM10101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'INDEX', @level2name = N'rm101011$PKRM10101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[TRXSORCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'TRXSORCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[POSTED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'POSTED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[POSTEDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'POSTEDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[PSTGSTUS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'PSTGSTUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CHANGED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'CHANGED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DOCNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DOCNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DCSTATUS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DCSTATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DISTTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DISTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[RMDTYPAL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'RMDTYPAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[SEQNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'SEQNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CUSTNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'CUSTNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DSTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DSTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DEBITAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DEBITAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CRDTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'CRDTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[PROJCTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'PROJCTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[USERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CATEGUSD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'CATEGUSD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CURNCYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'CURNCYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[CURRNIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'CURRNIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[ORCRDAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'ORCRDAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[ORDBTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'ORDBTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DistRef]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DistRef';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[rm101011].[AK2RM10101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm101011', @level2type = N'CONSTRAINT', @level2name = N'rm101011$AK2RM10101';

