CREATE TABLE [dbo].[UPR00102] (
    [EMPLOYID]              NVARCHAR (15) NOT NULL,
    [ADRSCODE]              NVARCHAR (15) NOT NULL,
    [ADDRESS1]              NVARCHAR (61) NOT NULL,
    [ADDRESS2]              NVARCHAR (61) NOT NULL,
    [ADDRESS3]              NVARCHAR (61) NOT NULL,
    [CITY]                  NVARCHAR (35) NOT NULL,
    [STATE]                 NVARCHAR (29) NOT NULL,
    [ZIPCODE]               NVARCHAR (11) NOT NULL,
    [COUNTY]                NVARCHAR (61) NOT NULL,
    [COUNTRY]               NVARCHAR (61) NOT NULL,
    [PHONE1]                NVARCHAR (21) NOT NULL,
    [PHONE2]                NVARCHAR (21) NOT NULL,
    [PHONE3]                NVARCHAR (21) NOT NULL,
    [FAX]                   NVARCHAR (21) NOT NULL,
    [Foreign_Address]       TINYINT       NOT NULL,
    [Foreign_StateProvince] NVARCHAR (23) NOT NULL,
    [Foreign_Postal_Code]   NVARCHAR (15) NOT NULL,
    [CCode]                 NVARCHAR (7)  NOT NULL,
    [DEX_ROW_ID]            INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [UPR00102$AK2UPR00102] PRIMARY KEY CLUSTERED ([EMPLOYID] ASC, [CITY] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00102$AK3UPR00102]
    ON [dbo].[UPR00102]([EMPLOYID] ASC, [STATE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00102$AK4UPR00102]
    ON [dbo].[UPR00102]([EMPLOYID] ASC, [ZIPCODE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR00102$PKUPR00102]
    ON [dbo].[UPR00102]([EMPLOYID] ASC, [ADRSCODE] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[AK3UPR00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'INDEX', @level2name = N'UPR00102$AK3UPR00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[AK4UPR00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'INDEX', @level2name = N'UPR00102$AK4UPR00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[PKUPR00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'INDEX', @level2name = N'UPR00102$PKUPR00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[ADRSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'ADRSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[ADDRESS1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'ADDRESS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[ADDRESS2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'ADDRESS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[ADDRESS3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'ADDRESS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[CITY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[STATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[ZIPCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'ZIPCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[COUNTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'COUNTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[COUNTRY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'COUNTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[PHONE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'PHONE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[PHONE2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'PHONE2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[PHONE3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'PHONE3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[FAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'FAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[Foreign_Address]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'Foreign_Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[Foreign_StateProvince]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'Foreign_StateProvince';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[Foreign_Postal_Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'Foreign_Postal_Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[CCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'CCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR00102].[AK2UPR00102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR00102', @level2type = N'CONSTRAINT', @level2name = N'UPR00102$AK2UPR00102';

