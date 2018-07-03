CREATE TABLE [dbo].[PM00200] (
    [VENDORID]                 NVARCHAR (15) NOT NULL,
    [VENDNAME]                 NVARCHAR (65) NOT NULL,
    [VNDCHKNM]                 NVARCHAR (65) NOT NULL,
    [VENDSHNM]                 NVARCHAR (15) NOT NULL,
    [VADDCDPR]                 NVARCHAR (15) NOT NULL,
    [VADCDPAD]                 NVARCHAR (15) NOT NULL,
    [VADCDSFR]                 NVARCHAR (15) NOT NULL,
    [VADCDTRO]                 NVARCHAR (15) NOT NULL,
    [VNDCLSID]                 NVARCHAR (11) NOT NULL,
    [VNDCNTCT]                 NVARCHAR (61) NOT NULL,
    [ADDRESS1]                 NVARCHAR (61) NOT NULL,
    [ADDRESS2]                 NVARCHAR (61) NOT NULL,
    [ADDRESS3]                 NVARCHAR (61) NOT NULL,
    [CITY]                     NVARCHAR (35) NOT NULL,
    [STATE]                    NVARCHAR (29) NOT NULL,
    [ZIPCODE]                  NVARCHAR (11) NOT NULL,
    [COUNTRY]                  NVARCHAR (61) NOT NULL,
    [PHNUMBR1]                 NVARCHAR (21) NOT NULL,
    [PHNUMBR2]                 NVARCHAR (21) NOT NULL,
    [PHONE3]                   NVARCHAR (21) NOT NULL,
    [FAXNUMBR]                 NVARCHAR (21) NOT NULL,
    [UPSZONE]                  NVARCHAR (3)  NOT NULL,
    [SHIPMTHD]                 NVARCHAR (15) NOT NULL,
    [TAXSCHID]                 NVARCHAR (15) NOT NULL,
    [ACNMVNDR]                 NVARCHAR (21) NOT NULL,
    [TXIDNMBR]                 NVARCHAR (11) NOT NULL,
    [VENDSTTS]                 SMALLINT      NOT NULL,
    [CURNCYID]                 NVARCHAR (15) NOT NULL,
    [TXRGNNUM]                 NVARCHAR (25) NOT NULL,
    [PARVENID]                 NVARCHAR (15) NOT NULL,
    [TRDDISCT]                 SMALLINT      NOT NULL,
    [TEN99TYPE]                SMALLINT      NOT NULL,
    [TEN99BOXNUMBER]           SMALLINT      NOT NULL,
    [MINORDER]                 FLOAT (53)    NOT NULL,
    [PYMTRMID]                 NVARCHAR (21) NOT NULL,
    [MINPYTYP]                 SMALLINT      NOT NULL,
    [MINPYPCT]                 SMALLINT      NOT NULL,
    [MINPYDLR]                 FLOAT (53)    NOT NULL,
    [MXIAFVND]                 SMALLINT      NOT NULL,
    [MAXINDLR]                 FLOAT (53)    NOT NULL,
    [COMMENT1]                 NVARCHAR (31) NOT NULL,
    [COMMENT2]                 NVARCHAR (31) NOT NULL,
    [USERDEF1]                 NVARCHAR (21) NOT NULL,
    [USERDEF2]                 NVARCHAR (21) NOT NULL,
    [CRLMTDLR]                 FLOAT (53)    NOT NULL,
    [PYMNTPRI]                 NVARCHAR (3)  NOT NULL,
    [KPCALHST]                 TINYINT       NOT NULL,
    [KGLDSTHS]                 TINYINT       NOT NULL,
    [KPERHIST]                 TINYINT       NOT NULL,
    [KPTRXHST]                 TINYINT       NOT NULL,
    [HOLD]                     TINYINT       NOT NULL,
    [PTCSHACF]                 SMALLINT      NOT NULL,
    [CREDTLMT]                 SMALLINT      NOT NULL,
    [WRITEOFF]                 SMALLINT      NOT NULL,
    [MXWOFAMT]                 FLOAT (53)    NOT NULL,
    [SBPPSDED]                 TINYINT       NOT NULL,
    [PPSTAXRT]                 SMALLINT      NOT NULL,
    [DXVARNUM]                 NVARCHAR (25) NOT NULL,
    [CRTCOMDT]                 DATETIME2 (0) NOT NULL,
    [CRTEXPDT]                 DATETIME2 (0) NOT NULL,
    [RTOBUTKN]                 TINYINT       NOT NULL,
    [XPDTOBLG]                 TINYINT       NOT NULL,
    [PRSPAYEE]                 TINYINT       NOT NULL,
    [PMAPINDX]                 INT           NOT NULL,
    [PMCSHIDX]                 INT           NOT NULL,
    [PMDAVIDX]                 INT           NOT NULL,
    [PMDTKIDX]                 INT           NOT NULL,
    [PMFINIDX]                 INT           NOT NULL,
    [PMMSCHIX]                 INT           NOT NULL,
    [PMFRTIDX]                 INT           NOT NULL,
    [PMTAXIDX]                 INT           NOT NULL,
    [PMWRTIDX]                 INT           NOT NULL,
    [PMPRCHIX]                 INT           NOT NULL,
    [PMRTNGIX]                 INT           NOT NULL,
    [PMTDSCIX]                 INT           NOT NULL,
    [ACPURIDX]                 INT           NOT NULL,
    [PURPVIDX]                 INT           NOT NULL,
    [NOTEINDX]                 FLOAT (53)    NOT NULL,
    [CHEKBKID]                 NVARCHAR (15) NOT NULL,
    [MODIFDT]                  DATETIME2 (0) NOT NULL,
    [CREATDDT]                 DATETIME2 (0) NOT NULL,
    [RATETPID]                 NVARCHAR (15) NOT NULL,
    [Revalue_Vendor]           TINYINT       NOT NULL,
    [Post_Results_To]          SMALLINT      NOT NULL,
    [FREEONBOARD]              SMALLINT      NOT NULL,
    [GOVCRPID]                 NVARCHAR (31) NOT NULL,
    [GOVINDID]                 NVARCHAR (31) NOT NULL,
    [DISGRPER]                 SMALLINT      NOT NULL,
    [DUEGRPER]                 SMALLINT      NOT NULL,
    [DOCFMTID]                 NVARCHAR (15) NOT NULL,
    [TaxInvRecvd]              TINYINT       NOT NULL,
    [USERLANG]                 SMALLINT      NOT NULL,
    [WithholdingType]          SMALLINT      NOT NULL,
    [WithholdingFormType]      SMALLINT      NOT NULL,
    [WithholdingEntityType]    SMALLINT      NOT NULL,
    [TaxFileNumMode]           SMALLINT      NOT NULL,
    [BRTHDATE]                 DATETIME2 (0) NOT NULL,
    [LaborPmtType]             SMALLINT      NOT NULL,
    [CCode]                    NVARCHAR (7)  NOT NULL,
    [DECLID]                   NVARCHAR (15) NOT NULL,
    [CBVAT]                    TINYINT       NOT NULL,
    [Workflow_Approval_Status] SMALLINT      NOT NULL,
    [Workflow_Priority]        SMALLINT      NOT NULL,
    [Workflow_Status]          SMALLINT      NOT NULL,
    [VADCD1099]                NVARCHAR (15) NOT NULL,
    [DEX_ROW_TS]               DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]               INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]           ROWVERSION    NOT NULL,
    CONSTRAINT [PM00200$AK2PM00200] PRIMARY KEY CLUSTERED ([VENDNAME] ASC, [VENDORID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PM00200$AK3PM00200]
    ON [dbo].[PM00200]([VNDCLSID] ASC, [VENDORID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PM00200$AK4PM00200]
    ON [dbo].[PM00200]([USERDEF1] ASC, [VENDORID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PM00200$AK5PM00200]
    ON [dbo].[PM00200]([PYMNTPRI] ASC, [VENDORID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PM00200$AK6PM00200]
    ON [dbo].[PM00200]([TXRGNNUM] ASC, [VENDORID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PM00200$PKPM00200]
    ON [dbo].[PM00200]([VENDORID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[AK3PM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'INDEX', @level2name = N'PM00200$AK3PM00200';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[AK4PM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'INDEX', @level2name = N'PM00200$AK4PM00200';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[AK5PM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'INDEX', @level2name = N'PM00200$AK5PM00200';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[AK6PM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'INDEX', @level2name = N'PM00200$AK6PM00200';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PKPM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'INDEX', @level2name = N'PM00200$PKPM00200';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VENDORID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VENDORID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VENDNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VENDNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VNDCHKNM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VNDCHKNM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VENDSHNM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VENDSHNM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VADDCDPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VADDCDPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VADCDPAD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VADCDPAD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VADCDSFR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VADCDSFR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VADCDTRO]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VADCDTRO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VNDCLSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VNDCLSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VNDCNTCT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VNDCNTCT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[ADDRESS1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'ADDRESS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[ADDRESS2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'ADDRESS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[ADDRESS3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'ADDRESS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CITY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[STATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[ZIPCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'ZIPCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[COUNTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'COUNTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PHNUMBR1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PHNUMBR1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PHNUMBR2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PHNUMBR2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PHONE3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PHONE3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[FAXNUMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'FAXNUMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[UPSZONE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'UPSZONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[SHIPMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'SHIPMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TAXSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TAXSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[ACNMVNDR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'ACNMVNDR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TXIDNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TXIDNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VENDSTTS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VENDSTTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CURNCYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CURNCYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TXRGNNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TXRGNNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PARVENID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PARVENID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TRDDISCT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TRDDISCT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TEN99TYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TEN99TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TEN99BOXNUMBER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TEN99BOXNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MINORDER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MINORDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PYMTRMID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PYMTRMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MINPYTYP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MINPYTYP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MINPYPCT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MINPYPCT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MINPYDLR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MINPYDLR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MXIAFVND]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MXIAFVND';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MAXINDLR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MAXINDLR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[COMMENT1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'COMMENT1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[COMMENT2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'COMMENT2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[USERDEF1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'USERDEF1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[USERDEF2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'USERDEF2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CRLMTDLR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CRLMTDLR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PYMNTPRI]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PYMNTPRI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[KPCALHST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'KPCALHST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[KGLDSTHS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'KGLDSTHS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[KPERHIST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'KPERHIST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[KPTRXHST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'KPTRXHST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[HOLD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'HOLD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PTCSHACF]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PTCSHACF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CREDTLMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CREDTLMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[WRITEOFF]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'WRITEOFF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MXWOFAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MXWOFAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[SBPPSDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'SBPPSDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PPSTAXRT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PPSTAXRT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DXVARNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DXVARNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CRTCOMDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CRTCOMDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CRTEXPDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CRTEXPDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[RTOBUTKN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'RTOBUTKN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[XPDTOBLG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'XPDTOBLG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PRSPAYEE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PRSPAYEE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMAPINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMAPINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMCSHIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMCSHIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMDAVIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMDAVIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMDTKIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMDTKIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMFINIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMFINIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMMSCHIX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMMSCHIX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMFRTIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMFRTIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMTAXIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMTAXIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMWRTIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMWRTIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMPRCHIX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMPRCHIX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMRTNGIX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMRTNGIX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PMTDSCIX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PMTDSCIX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[ACPURIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'ACPURIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[PURPVIDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'PURPVIDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CHEKBKID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CHEKBKID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[MODIFDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'MODIFDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CREATDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CREATDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[RATETPID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'RATETPID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[Revalue_Vendor]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'Revalue_Vendor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[Post_Results_To]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'Post_Results_To';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[FREEONBOARD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'FREEONBOARD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[GOVCRPID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'GOVCRPID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[GOVINDID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'GOVINDID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DISGRPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DISGRPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DUEGRPER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DUEGRPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DOCFMTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DOCFMTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TaxInvRecvd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TaxInvRecvd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[USERLANG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'USERLANG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[WithholdingType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'WithholdingType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[WithholdingFormType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'WithholdingFormType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[WithholdingEntityType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'WithholdingEntityType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[TaxFileNumMode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'TaxFileNumMode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[BRTHDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'BRTHDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[LaborPmtType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'LaborPmtType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DECLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DECLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[CBVAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'CBVAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[Workflow_Approval_Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'Workflow_Approval_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[Workflow_Priority]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'Workflow_Priority';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[Workflow_Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'Workflow_Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[VADCD1099]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'VADCD1099';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[PM00200].[AK2PM00200]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PM00200', @level2type = N'CONSTRAINT', @level2name = N'PM00200$AK2PM00200';

