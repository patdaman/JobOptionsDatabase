CREATE TABLE [dbo].[RM00101] (
    [CUSTNMBR]               NVARCHAR (15) NOT NULL,
    [CUSTNAME]               NVARCHAR (65) NOT NULL,
    [CUSTCLAS]               NVARCHAR (15) NOT NULL,
    [CPRCSTNM]               NVARCHAR (15) NOT NULL,
    [CNTCPRSN]               NVARCHAR (61) NOT NULL,
    [STMTNAME]               NVARCHAR (65) NOT NULL,
    [SHRTNAME]               NVARCHAR (15) NOT NULL,
    [ADRSCODE]               NVARCHAR (15) NOT NULL,
    [UPSZONE]                NVARCHAR (3)  NOT NULL,
    [SHIPMTHD]               NVARCHAR (15) NOT NULL,
    [TAXSCHID]               NVARCHAR (15) NOT NULL,
    [ADDRESS1]               NVARCHAR (61) NOT NULL,
    [ADDRESS2]               NVARCHAR (61) NOT NULL,
    [ADDRESS3]               NVARCHAR (61) NOT NULL,
    [COUNTRY]                NVARCHAR (61) NOT NULL,
    [CITY]                   NVARCHAR (35) NOT NULL,
    [STATE]                  NVARCHAR (29) NOT NULL,
    [ZIP]                    NVARCHAR (11) NOT NULL,
    [PHONE1]                 NVARCHAR (21) NOT NULL,
    [PHONE2]                 NVARCHAR (21) NOT NULL,
    [PHONE3]                 NVARCHAR (21) NOT NULL,
    [FAX]                    NVARCHAR (21) NOT NULL,
    [PRBTADCD]               NVARCHAR (15) NOT NULL,
    [PRSTADCD]               NVARCHAR (15) NOT NULL,
    [STADDRCD]               NVARCHAR (15) NOT NULL,
    [SLPRSNID]               NVARCHAR (15) NOT NULL,
    [CHEKBKID]               NVARCHAR (15) NOT NULL,
    [PYMTRMID]               NVARCHAR (21) NOT NULL,
    [CRLMTTYP]               SMALLINT      NOT NULL,
    [CRLMTAMT]               FLOAT (53)    NOT NULL,
    [CRLMTPER]               SMALLINT      NOT NULL,
    [CRLMTPAM]               FLOAT (53)    NOT NULL,
    [CURNCYID]               NVARCHAR (15) NOT NULL,
    [RATETPID]               NVARCHAR (15) NOT NULL,
    [CUSTDISC]               SMALLINT      NOT NULL,
    [PRCLEVEL]               NVARCHAR (11) NOT NULL,
    [MINPYTYP]               SMALLINT      NOT NULL,
    [MINPYDLR]               FLOAT (53)    NOT NULL,
    [MINPYPCT]               SMALLINT      NOT NULL,
    [FNCHATYP]               SMALLINT      NOT NULL,
    [FNCHPCNT]               SMALLINT      NOT NULL,
    [FINCHDLR]               FLOAT (53)    NOT NULL,
    [MXWOFTYP]               SMALLINT      NOT NULL,
    [MXWROFAM]               FLOAT (53)    NOT NULL,
    [COMMENT1]               NVARCHAR (31) NOT NULL,
    [COMMENT2]               NVARCHAR (31) NOT NULL,
    [USERDEF1]               NVARCHAR (21) NOT NULL,
    [USERDEF2]               NVARCHAR (21) NOT NULL,
    [TAXEXMT1]               NVARCHAR (25) NOT NULL,
    [TAXEXMT2]               NVARCHAR (25) NOT NULL,
    [TXRGNNUM]               NVARCHAR (25) NOT NULL,
    [BALNCTYP]               SMALLINT      NOT NULL,
    [STMTCYCL]               SMALLINT      NOT NULL,
    [BANKNAME]               NVARCHAR (31) NOT NULL,
    [BNKBRNCH]               NVARCHAR (21) NOT NULL,
    [SALSTERR]               NVARCHAR (15) NOT NULL,
    [DEFCACTY]               SMALLINT      NOT NULL,
    [RMCSHACC]               INT           NOT NULL,
    [RMARACC]                INT           NOT NULL,
    [RMSLSACC]               INT           NOT NULL,
    [RMIVACC]                INT           NOT NULL,
    [RMCOSACC]               INT           NOT NULL,
    [RMTAKACC]               INT           NOT NULL,
    [RMAVACC]                INT           NOT NULL,
    [RMFCGACC]               INT           NOT NULL,
    [RMWRACC]                INT           NOT NULL,
    [RMSORACC]               INT           NOT NULL,
    [FRSTINDT]               DATETIME2 (0) NOT NULL,
    [INACTIVE]               TINYINT       NOT NULL,
    [HOLD]                   TINYINT       NOT NULL,
    [CRCARDID]               NVARCHAR (15) NOT NULL,
    [CRCRDNUM]               NVARCHAR (21) NOT NULL,
    [CCRDXPDT]               DATETIME2 (0) NOT NULL,
    [KPDSTHST]               TINYINT       NOT NULL,
    [KPCALHST]               TINYINT       NOT NULL,
    [KPERHIST]               TINYINT       NOT NULL,
    [KPTRXHST]               TINYINT       NOT NULL,
    [NOTEINDX]               FLOAT (53)    NOT NULL,
    [CREATDDT]               DATETIME2 (0) NOT NULL,
    [MODIFDT]                DATETIME2 (0) NOT NULL,
    [Revalue_Customer]       TINYINT       NOT NULL,
    [Post_Results_To]        SMALLINT      NOT NULL,
    [FINCHID]                NVARCHAR (15) NOT NULL,
    [GOVCRPID]               NVARCHAR (31) NOT NULL,
    [GOVINDID]               NVARCHAR (31) NOT NULL,
    [DISGRPER]               SMALLINT      NOT NULL,
    [DUEGRPER]               SMALLINT      NOT NULL,
    [DOCFMTID]               NVARCHAR (15) NOT NULL,
    [Send_Email_Statements]  TINYINT       NOT NULL,
    [USERLANG]               SMALLINT      NOT NULL,
    [GPSFOINTEGRATIONID]     NVARCHAR (31) NOT NULL,
    [INTEGRATIONSOURCE]      SMALLINT      NOT NULL,
    [INTEGRATIONID]          NVARCHAR (31) NOT NULL,
    [ORDERFULFILLDEFAULT]    SMALLINT      NOT NULL,
    [CUSTPRIORITY]           SMALLINT      NOT NULL,
    [CCode]                  NVARCHAR (7)  NOT NULL,
    [DECLID]                 NVARCHAR (15) NOT NULL,
    [RMOvrpymtWrtoffAcctIdx] INT           NOT NULL,
    [SHIPCOMPLETE]           TINYINT       NOT NULL,
    [CBVAT]                  TINYINT       NOT NULL,
    [INCLUDEINDP]            TINYINT       NOT NULL,
    [DEX_ROW_TS]             DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]             INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]         ROWVERSION    NOT NULL,
    CONSTRAINT [RM00101$AK2RM00101] PRIMARY KEY CLUSTERED ([CUSTNAME] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$AK3RM00101]
    ON [dbo].[RM00101]([CUSTCLAS] ASC, [CUSTNMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$AK4RM00101]
    ON [dbo].[RM00101]([USERDEF1] ASC, [CUSTNMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$AK5RM00101]
    ON [dbo].[RM00101]([SLPRSNID] ASC, [CUSTNMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$AK6RM00101]
    ON [dbo].[RM00101]([SALSTERR] ASC, [CUSTNMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$AK7RM00101]
    ON [dbo].[RM00101]([CPRCSTNM] ASC, [CUSTNMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$AK8RM00101]
    ON [dbo].[RM00101]([TXRGNNUM] ASC, [CUSTNMBR] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00101$PKRM00101]
    ON [dbo].[RM00101]([CUSTNMBR] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK3RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$AK3RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK4RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$AK4RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK5RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$AK5RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK6RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$AK6RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK7RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$AK7RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK8RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$AK8RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PKRM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'INDEX', @level2name = N'RM00101$PKRM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CUSTNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CUSTNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CUSTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CUSTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CUSTCLAS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CUSTCLAS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CPRCSTNM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CPRCSTNM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CNTCPRSN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CNTCPRSN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[STMTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'STMTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[SHRTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'SHRTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[ADRSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'ADRSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[UPSZONE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'UPSZONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[SHIPMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'SHIPMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[TAXSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'TAXSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[ADDRESS1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'ADDRESS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[ADDRESS2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'ADDRESS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[ADDRESS3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'ADDRESS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[COUNTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'COUNTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CITY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[STATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[ZIP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'ZIP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PHONE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PHONE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PHONE2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PHONE2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PHONE3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PHONE3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[FAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'FAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PRBTADCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PRBTADCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PRSTADCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PRSTADCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[STADDRCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'STADDRCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[SLPRSNID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'SLPRSNID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CHEKBKID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CHEKBKID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PYMTRMID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PYMTRMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CRLMTTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CRLMTTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CRLMTAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CRLMTAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CRLMTPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CRLMTPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CRLMTPAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CRLMTPAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CURNCYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CURNCYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RATETPID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RATETPID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CUSTDISC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CUSTDISC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[PRCLEVEL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'PRCLEVEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[MINPYTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'MINPYTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[MINPYDLR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'MINPYDLR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[MINPYPCT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'MINPYPCT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[FNCHATYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'FNCHATYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[FNCHPCNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'FNCHPCNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[FINCHDLR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'FINCHDLR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[MXWOFTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'MXWOFTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[MXWROFAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'MXWROFAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[COMMENT1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'COMMENT1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[COMMENT2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'COMMENT2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[USERDEF1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'USERDEF1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[USERDEF2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'USERDEF2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[TAXEXMT1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'TAXEXMT1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[TAXEXMT2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'TAXEXMT2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[TXRGNNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'TXRGNNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[BALNCTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'BALNCTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[STMTCYCL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'STMTCYCL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[BANKNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'BANKNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[BNKBRNCH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'BNKBRNCH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[SALSTERR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'SALSTERR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DEFCACTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DEFCACTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMCSHACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMCSHACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMARACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMARACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMSLSACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMSLSACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMIVACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMIVACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMCOSACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMCOSACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMTAKACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMTAKACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMAVACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMAVACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMFCGACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMFCGACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMWRACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMWRACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMSORACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMSORACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[FRSTINDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'FRSTINDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[HOLD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'HOLD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CRCARDID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CRCARDID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CRCRDNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CRCRDNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CCRDXPDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CCRDXPDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[KPDSTHST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'KPDSTHST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[KPCALHST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'KPCALHST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[KPERHIST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'KPERHIST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[KPTRXHST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'KPTRXHST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CREATDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CREATDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[MODIFDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'MODIFDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[Revalue_Customer]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'Revalue_Customer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[Post_Results_To]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'Post_Results_To';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[FINCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'FINCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[GOVCRPID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'GOVCRPID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[GOVINDID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'GOVINDID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DISGRPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DISGRPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DUEGRPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DUEGRPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DOCFMTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DOCFMTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[Send_Email_Statements]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'Send_Email_Statements';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[USERLANG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'USERLANG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[GPSFOINTEGRATIONID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'GPSFOINTEGRATIONID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[INTEGRATIONSOURCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'INTEGRATIONSOURCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[INTEGRATIONID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'INTEGRATIONID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[ORDERFULFILLDEFAULT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'ORDERFULFILLDEFAULT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CUSTPRIORITY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CUSTPRIORITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DECLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DECLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[RMOvrpymtWrtoffAcctIdx]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'RMOvrpymtWrtoffAcctIdx';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[SHIPCOMPLETE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'SHIPCOMPLETE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[CBVAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'CBVAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[INCLUDEINDP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'INCLUDEINDP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00101].[AK2RM00101]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00101', @level2type = N'CONSTRAINT', @level2name = N'RM00101$AK2RM00101';

