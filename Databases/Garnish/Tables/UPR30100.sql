CREATE TABLE [dbo].[UPR30100] (
    [AUCTRLCD]                 NVARCHAR (13) NOT NULL,
    [CHEKNMBR]                 NVARCHAR (21) NOT NULL,
    [PYADNMBR]                 INT           NOT NULL,
    [VOIDED]                   TINYINT       NOT NULL,
    [CHEKDATE]                 DATETIME2 (0) NOT NULL,
    [POSTEDDT]                 DATETIME2 (0) NOT NULL,
    [EMPLOYID]                 NVARCHAR (15) NOT NULL,
    [EMPLNAME]                 NVARCHAR (41) NOT NULL,
    [GRWGPRN]                  FLOAT (53)    NOT NULL,
    [FDWDGPRN]                 FLOAT (53)    NOT NULL,
    [FDTXTIPS]                 FLOAT (53)    NOT NULL,
    [FICAMWPR]                 FLOAT (53)    NOT NULL,
    [FICMTPTX]                 FLOAT (53)    NOT NULL,
    [Uncollected_FICAMed_TaxP] FLOAT (53)    NOT NULL,
    [FCASWPR]                  FLOAT (53)    NOT NULL,
    [FICSTPTX]                 FLOAT (53)    NOT NULL,
    [Uncollected_FICASS_TaxP]  FLOAT (53)    NOT NULL,
    [ADEICPMT]                 FLOAT (53)    NOT NULL,
    [Reported_Tips]            FLOAT (53)    NOT NULL,
    [Charged_Tips]             FLOAT (53)    NOT NULL,
    [ALOCTIPS]                 FLOAT (53)    NOT NULL,
    [TTLDDTNS]                 FLOAT (53)    NOT NULL,
    [TTLBNFTS]                 FLOAT (53)    NOT NULL,
    [NTWPYRN]                  FLOAT (53)    NOT NULL,
    [CHEKBKID]                 NVARCHAR (15) NOT NULL,
    [DEPRTMNT]                 NVARCHAR (7)  NOT NULL,
    [SOCSCNUM]                 NVARCHAR (15) NOT NULL,
    [VACTMACC]                 FLOAT (53)    NOT NULL,
    [VACTMLBL]                 FLOAT (53)    NOT NULL,
    [VACAVLBL]                 INT           NOT NULL,
    [SKTMACCR]                 FLOAT (53)    NOT NULL,
    [SKTMLBTY]                 FLOAT (53)    NOT NULL,
    [SIKTIMAV]                 INT           NOT NULL,
    [TOTLTAXS]                 FLOAT (53)    NOT NULL,
    [Voided_by_Void_Checks]    TINYINT       NOT NULL,
    [FDWGPYRN]                 FLOAT (53)    NOT NULL,
    [Federal_TipsPay_Run]      FLOAT (53)    NOT NULL,
    [FICASSWP]                 FLOAT (53)    NOT NULL,
    [FICASS_TipsPay_Run]       FLOAT (53)    NOT NULL,
    [FICAMWGP]                 FLOAT (53)    NOT NULL,
    [FICAMed_TipsPay_Run]      FLOAT (53)    NOT NULL,
    [Reported_Receipts]        FLOAT (53)    NOT NULL,
    [Charged_Receipts]         FLOAT (53)    NOT NULL,
    [YEAR1]                    SMALLINT      NOT NULL,
    [ISCHECK]                  TINYINT       NOT NULL,
    [RSNCHKVD]                 NVARCHAR (31) NOT NULL,
    [COMPPYRN]                 SMALLINT      NOT NULL,
    [EFICASSWH]                FLOAT (53)    NOT NULL,
    [EFICASS_Tax_On_Tips]      FLOAT (53)    NOT NULL,
    [EFICAMWPR]                FLOAT (53)    NOT NULL,
    [EFICAMed_Tax_On_Tips]     FLOAT (53)    NOT NULL,
    [PayPeriodBeginDate]       DATETIME2 (0) NOT NULL,
    [PayPeriodEndDate]         DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]               INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]           ROWVERSION    NOT NULL,
    CONSTRAINT [UPR30100$AK1UPR30100] PRIMARY KEY CLUSTERED ([AUCTRLCD] ASC, [CHEKNMBR] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK2UPR30100]
    ON [dbo].[UPR30100]([CHEKBKID] ASC, [CHEKNMBR] ASC, [AUCTRLCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK4UPR30100]
    ON [dbo].[UPR30100]([EMPLOYID] ASC, [PYADNMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK5UPR30100]
    ON [dbo].[UPR30100]([EMPLOYID] ASC, [CHEKNMBR] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK6UPR30100]
    ON [dbo].[UPR30100]([EMPLOYID] ASC, [CHEKDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK7UPR30100]
    ON [dbo].[UPR30100]([EMPLOYID] ASC, [AUCTRLCD] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK8UPR30100]
    ON [dbo].[UPR30100]([EMPLOYID] ASC, [YEAR1] ASC, [CHEKDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$AK9UPR30100]
    ON [dbo].[UPR30100]([EMPLOYID] ASC, [CHEKDATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR30100$PKUPR30100]
    ON [dbo].[UPR30100]([AUCTRLCD] ASC, [PYADNMBR] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK2UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK2UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK4UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK4UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK5UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK5UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK6UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK6UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK7UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK7UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK8UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK8UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK9UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$AK9UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[PKUPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'INDEX', @level2name = N'UPR30100$PKUPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AUCTRLCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'AUCTRLCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[CHEKNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'CHEKNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[PYADNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'PYADNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[VOIDED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'VOIDED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[CHEKDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'CHEKDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[POSTEDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'POSTEDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[EMPLNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'EMPLNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[GRWGPRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'GRWGPRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FDWDGPRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FDWDGPRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FDTXTIPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FDTXTIPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICAMWPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICAMWPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICMTPTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICMTPTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Uncollected_FICAMed_TaxP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Uncollected_FICAMed_TaxP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FCASWPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FCASWPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICSTPTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICSTPTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Uncollected_FICASS_TaxP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Uncollected_FICASS_TaxP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[ADEICPMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'ADEICPMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Reported_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Reported_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Charged_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Charged_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[ALOCTIPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'ALOCTIPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[TTLDDTNS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'TTLDDTNS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[TTLBNFTS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'TTLBNFTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[NTWPYRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'NTWPYRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[CHEKBKID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'CHEKBKID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[SOCSCNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'SOCSCNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[VACTMACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'VACTMACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[VACTMLBL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'VACTMLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[VACAVLBL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'VACAVLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[SKTMACCR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'SKTMACCR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[SKTMLBTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'SKTMLBTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[SIKTIMAV]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'SIKTIMAV';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[TOTLTAXS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'TOTLTAXS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Voided_by_Void_Checks]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Voided_by_Void_Checks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FDWGPYRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FDWGPYRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Federal_TipsPay_Run]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Federal_TipsPay_Run';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICASSWP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICASSWP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICASS_TipsPay_Run]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICASS_TipsPay_Run';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICAMWGP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICAMWGP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[FICAMed_TipsPay_Run]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'FICAMed_TipsPay_Run';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Reported_Receipts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Reported_Receipts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[Charged_Receipts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'Charged_Receipts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[YEAR1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'YEAR1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[ISCHECK]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'ISCHECK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[RSNCHKVD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'RSNCHKVD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[COMPPYRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'COMPPYRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[EFICASSWH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'EFICASSWH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[EFICASS_Tax_On_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'EFICASS_Tax_On_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[EFICAMWPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'EFICAMWPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[EFICAMed_Tax_On_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'EFICAMed_Tax_On_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[PayPeriodBeginDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'PayPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[PayPeriodEndDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'PayPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR30100].[AK1UPR30100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR30100', @level2type = N'CONSTRAINT', @level2name = N'UPR30100$AK1UPR30100';

