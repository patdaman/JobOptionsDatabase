CREATE TABLE [dbo].[rm00102local] (
    [CUSTNMBR]           NVARCHAR (15) NOT NULL,
    [ADRSCODE]           NVARCHAR (15) NOT NULL,
    [SLPRSNID]           NVARCHAR (15) NOT NULL,
    [UPSZONE]            NVARCHAR (3)  NOT NULL,
    [SHIPMTHD]           NVARCHAR (15) NOT NULL,
    [TAXSCHID]           NVARCHAR (15) NOT NULL,
    [CNTCPRSN]           NVARCHAR (31) NOT NULL,
    [ADDRESS1]           NVARCHAR (31) NOT NULL,
    [ADDRESS2]           NVARCHAR (31) NOT NULL,
    [ADDRESS3]           NVARCHAR (31) NOT NULL,
    [COUNTRY]            NVARCHAR (21) NOT NULL,
    [CITY]               NVARCHAR (31) NOT NULL,
    [STATE]              NVARCHAR (29) NOT NULL,
    [ZIP]                NVARCHAR (11) NOT NULL,
    [PHONE1]             NVARCHAR (21) NOT NULL,
    [PHONE2]             NVARCHAR (21) NOT NULL,
    [PHONE3]             NVARCHAR (21) NOT NULL,
    [FAX]                NVARCHAR (21) NOT NULL,
    [MODIFDT]            DATETIME2 (0) NOT NULL,
    [CREATDDT]           DATETIME2 (0) NOT NULL,
    [GPSFOINTEGRATIONID] NVARCHAR (31) NOT NULL,
    [INTEGRATIONSOURCE]  SMALLINT      NOT NULL,
    [INTEGRATIONID]      NVARCHAR (31) NOT NULL,
    [DEX_ROW_ID]         INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [rm00102local$AK2RM00102] PRIMARY KEY CLUSTERED ([CUSTNMBR] ASC, [CITY] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm00102local$AK3RM00102]
    ON [dbo].[rm00102local]([CUSTNMBR] ASC, [STATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm00102local$AK4RM00102]
    ON [dbo].[rm00102local]([CUSTNMBR] ASC, [ZIP] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [rm00102local$PKRM00102]
    ON [dbo].[rm00102local]([CUSTNMBR] ASC, [ADRSCODE] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[AK3RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'INDEX', @level2name = N'rm00102local$AK3RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[AK4RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'INDEX', @level2name = N'rm00102local$AK4RM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[PKRM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'INDEX', @level2name = N'rm00102local$PKRM00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[CUSTNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'CUSTNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[ADRSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'ADRSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[SLPRSNID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'SLPRSNID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[UPSZONE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'UPSZONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[SHIPMTHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'SHIPMTHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[TAXSCHID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'TAXSCHID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[CNTCPRSN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'CNTCPRSN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[ADDRESS1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'ADDRESS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[ADDRESS2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'ADDRESS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[ADDRESS3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'ADDRESS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[COUNTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'COUNTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[CITY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[STATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[ZIP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'ZIP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[PHONE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'PHONE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[PHONE2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'PHONE2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[PHONE3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'PHONE3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[FAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'FAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[MODIFDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'MODIFDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[CREATDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'CREATDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[GPSFOINTEGRATIONID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'GPSFOINTEGRATIONID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[INTEGRATIONSOURCE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'INTEGRATIONSOURCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[INTEGRATIONID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'INTEGRATIONID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[rm00102local].[AK2RM00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'rm00102local', @level2type = N'CONSTRAINT', @level2name = N'rm00102local$AK2RM00102';

