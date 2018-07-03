CREATE TABLE [dbo].[RM00102] (
    [CUSTNMBR]             NVARCHAR (15) NOT NULL,
    [ADRSCODE]             NVARCHAR (15) NOT NULL,
    [SLPRSNID]             NVARCHAR (15) NOT NULL,
    [UPSZONE]              NVARCHAR (3)  NOT NULL,
    [SHIPMTHD]             NVARCHAR (15) NOT NULL,
    [TAXSCHID]             NVARCHAR (15) NOT NULL,
    [CNTCPRSN]             NVARCHAR (61) NOT NULL,
    [ADDRESS1]             NVARCHAR (61) NOT NULL,
    [ADDRESS2]             NVARCHAR (61) NOT NULL,
    [ADDRESS3]             NVARCHAR (61) NOT NULL,
    [COUNTRY]              NVARCHAR (61) NOT NULL,
    [CITY]                 NVARCHAR (35) NOT NULL,
    [STATE]                NVARCHAR (29) NOT NULL,
    [ZIP]                  NVARCHAR (11) NOT NULL,
    [PHONE1]               NVARCHAR (21) NOT NULL,
    [PHONE2]               NVARCHAR (21) NOT NULL,
    [PHONE3]               NVARCHAR (21) NOT NULL,
    [FAX]                  NVARCHAR (21) NOT NULL,
    [MODIFDT]              DATETIME2 (0) NOT NULL,
    [CREATDDT]             DATETIME2 (0) NOT NULL,
    [GPSFOINTEGRATIONID]   NVARCHAR (31) NOT NULL,
    [INTEGRATIONSOURCE]    SMALLINT      NOT NULL,
    [INTEGRATIONID]        NVARCHAR (31) NOT NULL,
    [CCode]                NVARCHAR (7)  NOT NULL,
    [DECLID]               NVARCHAR (15) NOT NULL,
    [LOCNCODE]             NVARCHAR (11) NOT NULL,
    [SALSTERR]             NVARCHAR (15) NOT NULL,
    [USERDEF1]             NVARCHAR (21) NOT NULL,
    [USERDEF2]             NVARCHAR (21) NOT NULL,
    [ShipToName]           NVARCHAR (65) NOT NULL,
    [Print_Phone_NumberGB] SMALLINT      NOT NULL,
    [DEX_ROW_TS]           DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]           INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [RM00102$AK2RM00102] PRIMARY KEY CLUSTERED ([CUSTNMBR] ASC, [CITY] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00102$AK3RM00102]
    ON [dbo].[RM00102]([CUSTNMBR] ASC, [STATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00102$AK4RM00102]
    ON [dbo].[RM00102]([CUSTNMBR] ASC, [ZIP] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00102$AK5RM00102]
    ON [dbo].[RM00102]([CUSTNMBR] ASC, [SLPRSNID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00102$AK6RM00102]
    ON [dbo].[RM00102]([CUSTNMBR] ASC, [SALSTERR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RM00102$PKRM00102]
    ON [dbo].[RM00102]([CUSTNMBR] ASC, [ADRSCODE] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[AK3RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'INDEX', @level2name = N'RM00102$AK3RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[AK4RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'INDEX', @level2name = N'RM00102$AK4RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[AK5RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'INDEX', @level2name = N'RM00102$AK5RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[AK6RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'INDEX', @level2name = N'RM00102$AK6RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[PKRM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'INDEX', @level2name = N'RM00102$PKRM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[CUSTNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'CUSTNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[ADRSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'ADRSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[SLPRSNID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'SLPRSNID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[UPSZONE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'UPSZONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[SHIPMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'SHIPMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[TAXSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'TAXSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[CNTCPRSN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'CNTCPRSN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[ADDRESS1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'ADDRESS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[ADDRESS2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'ADDRESS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[ADDRESS3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'ADDRESS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[COUNTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'COUNTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[CITY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[STATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[ZIP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'ZIP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[PHONE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'PHONE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[PHONE2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'PHONE2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[PHONE3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'PHONE3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[FAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'FAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[MODIFDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'MODIFDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[CREATDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'CREATDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[GPSFOINTEGRATIONID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'GPSFOINTEGRATIONID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[INTEGRATIONSOURCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'INTEGRATIONSOURCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[INTEGRATIONID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'INTEGRATIONID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[CCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'CCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[DECLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'DECLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[LOCNCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'LOCNCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[SALSTERR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'SALSTERR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[USERDEF1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'USERDEF1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[USERDEF2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'USERDEF2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[ShipToName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'ShipToName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[Print_Phone_NumberGB]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'Print_Phone_NumberGB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RM00102].[AK2RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RM00102', @level2type = N'CONSTRAINT', @level2name = N'RM00102$AK2RM00102';

