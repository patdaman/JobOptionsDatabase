CREATE TABLE [dbo].[gl00100] (
    [ACTINDX]        INT           NOT NULL,
    [ACTNUMBR_1]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_2]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_3]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_4]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_5]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_6]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_7]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_8]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_9]     NVARCHAR (7)  NOT NULL,
    [ACTNUMBR_10]    NVARCHAR (7)  NOT NULL,
    [ACTALIAS]       NVARCHAR (21) NOT NULL,
    [MNACSGMT]       NVARCHAR (67) NOT NULL,
    [ACCTTYPE]       SMALLINT      NOT NULL,
    [ACTDESCR]       NVARCHAR (51) NOT NULL,
    [PSTNGTYP]       SMALLINT      NOT NULL,
    [ACCATNUM]       SMALLINT      NOT NULL,
    [ACTIVE]         TINYINT       NOT NULL,
    [TPCLBLNC]       SMALLINT      NOT NULL,
    [DECPLACS]       SMALLINT      NOT NULL,
    [FXDORVAR]       SMALLINT      NOT NULL,
    [BALFRCLC]       SMALLINT      NOT NULL,
    [DSPLKUPS]       VARBINARY (4) NOT NULL,
    [CNVRMTHD]       SMALLINT      NOT NULL,
    [HSTRCLRT]       FLOAT (53)    NOT NULL,
    [NOTEINDX]       FLOAT (53)    NOT NULL,
    [CREATDDT]       DATETIME2 (0) NOT NULL,
    [MODIFDT]        DATETIME2 (0) NOT NULL,
    [USERDEF1]       NVARCHAR (21) NOT NULL,
    [USERDEF2]       NVARCHAR (21) NOT NULL,
    [PostSlsIn]      SMALLINT      NOT NULL,
    [PostIvIn]       SMALLINT      NOT NULL,
    [PostPurchIn]    SMALLINT      NOT NULL,
    [PostPRIn]       SMALLINT      NOT NULL,
    [ADJINFL]        TINYINT       NOT NULL,
    [INFLAREV]       INT           NOT NULL,
    [INFLAEQU]       INT           NOT NULL,
    [ACCTENTR]       TINYINT       NOT NULL,
    [USRDEFS1]       NVARCHAR (31) NOT NULL,
    [USRDEFS2]       NVARCHAR (31) NOT NULL,
    [Clear_Balance]  TINYINT       NOT NULL,
    [DEX_ROW_TS]     DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [GL00100$AK2GL00100] PRIMARY KEY CLUSTERED ([ACTALIAS] ASC, [ACTINDX] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [GL00100$AK6GL00100]
    ON [dbo].[gl00100]([ACTNUMBR_1] ASC, [ACTNUMBR_2] ASC, [ACTNUMBR_3] ASC, [ACTNUMBR_4] ASC, [ACTNUMBR_5] ASC, [ACTNUMBR_6] ASC, [ACTNUMBR_7] ASC, [ACTNUMBR_8] ASC, [ACTNUMBR_9] ASC, [ACTNUMBR_10] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [GL00100$PKGL00100]
    ON [dbo].[gl00100]([ACTINDX] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[AK6GL00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'INDEX', @level2name = N'GL00100$AK6GL00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[PKGL00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'INDEX', @level2name = N'GL00100$PKGL00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_6]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_7]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_8]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_9]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_9';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTNUMBR_10]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTNUMBR_10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTALIAS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTALIAS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[MNACSGMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'MNACSGMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACCTTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACCTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTDESCR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTDESCR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[PSTNGTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'PSTNGTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACCATNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACCATNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[TPCLBLNC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'TPCLBLNC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[DECPLACS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'DECPLACS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[FXDORVAR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'FXDORVAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[BALFRCLC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'BALFRCLC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[DSPLKUPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'DSPLKUPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[CNVRMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'CNVRMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[HSTRCLRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'HSTRCLRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[CREATDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'CREATDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[MODIFDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'MODIFDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[USERDEF1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'USERDEF1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[USERDEF2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'USERDEF2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[PostSlsIn]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'PostSlsIn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[PostIvIn]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'PostIvIn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[PostPurchIn]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'PostPurchIn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[PostPRIn]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'PostPRIn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ADJINFL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ADJINFL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[INFLAREV]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'INFLAREV';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[INFLAEQU]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'INFLAEQU';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[ACCTENTR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'ACCTENTR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[USRDEFS1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'USRDEFS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[USRDEFS2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'USRDEFS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[Clear_Balance]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'Clear_Balance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[GL00100].[AK2GL00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gl00100', @level2type = N'CONSTRAINT', @level2name = N'GL00100$AK2GL00100';

