CREATE TABLE [dbo].[UPR10202] (
    [USERID]                   NVARCHAR (15) NOT NULL,
    [PYRNTYPE]                 SMALLINT      NOT NULL,
    [EMPLOYID]                 NVARCHAR (15) NOT NULL,
    [POSTED]                   TINYINT       NOT NULL,
    [PYSTLTEX]                 TINYINT       NOT NULL,
    [CHEKNMBR]                 NVARCHAR (21) NOT NULL,
    [CHEKDATE]                 DATETIME2 (0) NOT NULL,
    [CHEKBKID]                 NVARCHAR (15) NOT NULL,
    [PYADNMBR]                 INT           NOT NULL,
    [ACTINDX]                  INT           NOT NULL,
    [ADFDWHDG]                 FLOAT (53)    NOT NULL,
    [ESTFEDWH]                 FLOAT (53)    NOT NULL,
    [HWKVCACR]                 FLOAT (53)    NOT NULL,
    [HWKSKACR]                 FLOAT (53)    NOT NULL,
    [VACTMACC]                 FLOAT (53)    NOT NULL,
    [SKTMACCR]                 FLOAT (53)    NOT NULL,
    [VACTMLBL]                 FLOAT (53)    NOT NULL,
    [SKTMLBTY]                 FLOAT (53)    NOT NULL,
    [VACAVLBL]                 INT           NOT NULL,
    [SIKTIMAV]                 INT           NOT NULL,
    [GRWGPRN]                  FLOAT (53)    NOT NULL,
    [NTWPYRN]                  FLOAT (53)    NOT NULL,
    [FEDWGARR_1]               FLOAT (53)    NOT NULL,
    [FEDWGARR_2]               FLOAT (53)    NOT NULL,
    [FEDWGARR_3]               FLOAT (53)    NOT NULL,
    [FEDWGARR_4]               FLOAT (53)    NOT NULL,
    [FEDWGARR_5]               FLOAT (53)    NOT NULL,
    [FEDWGARR_6]               FLOAT (53)    NOT NULL,
    [FEDWGARR_7]               FLOAT (53)    NOT NULL,
    [FEDWGARR_8]               FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_1]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_2]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_3]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_4]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_5]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_6]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_7]     FLOAT (53)    NOT NULL,
    [Federal_Tips_Array_8]     FLOAT (53)    NOT NULL,
    [FDWGPYRN]                 FLOAT (53)    NOT NULL,
    [Federal_TipsPay_Run]      FLOAT (53)    NOT NULL,
    [ANFDWHDG]                 FLOAT (53)    NOT NULL,
    [FDWDGPRN]                 FLOAT (53)    NOT NULL,
    [FDTXTIPS]                 FLOAT (53)    NOT NULL,
    [FICASSWP]                 FLOAT (53)    NOT NULL,
    [FICASS_TipsPay_Run]       FLOAT (53)    NOT NULL,
    [FCASWPR]                  FLOAT (53)    NOT NULL,
    [FICSTPTX]                 FLOAT (53)    NOT NULL,
    [Uncollected_FICASS_TaxP]  FLOAT (53)    NOT NULL,
    [FICAMWGP]                 FLOAT (53)    NOT NULL,
    [FICAMed_TipsPay_Run]      FLOAT (53)    NOT NULL,
    [FICAMWPR]                 FLOAT (53)    NOT NULL,
    [FICMTPTX]                 FLOAT (53)    NOT NULL,
    [Uncollected_FICAMed_TaxP] FLOAT (53)    NOT NULL,
    [EICWPYRN]                 FLOAT (53)    NOT NULL,
    [EPFICASS]                 FLOAT (53)    NOT NULL,
    [EFICAMCR]                 FLOAT (53)    NOT NULL,
    [Charged_Receipts]         FLOAT (53)    NOT NULL,
    [Reported_Receipts]        FLOAT (53)    NOT NULL,
    [Hours_Worked_For_Minimum] FLOAT (53)    NOT NULL,
    [Min_Wage_Bal_Applicable]  FLOAT (53)    NOT NULL,
    [Reported_Tips]            FLOAT (53)    NOT NULL,
    [Charged_Tips]             FLOAT (53)    NOT NULL,
    [ALOCTIPS]                 FLOAT (53)    NOT NULL,
    [TipType]                  SMALLINT      NOT NULL,
    [POSTEDDT]                 DATETIME2 (0) NOT NULL,
    [GRWGFREIC]                FLOAT (53)    NOT NULL,
    [CALCCHKERRS]              VARBINARY (4) NOT NULL,
    [EFICASSWH]                FLOAT (53)    NOT NULL,
    [EFICASS_Tax_On_Tips]      FLOAT (53)    NOT NULL,
    [EFICAMWPR]                FLOAT (53)    NOT NULL,
    [EFICAMed_Tax_On_Tips]     FLOAT (53)    NOT NULL,
    [PayPeriodBeginDate]       DATETIME2 (0) NOT NULL,
    [PayPeriodEndDate]         DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]               INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]           ROWVERSION    NOT NULL,
    CONSTRAINT [UPR10202$AK2UPR10202] PRIMARY KEY CLUSTERED ([USERID] ASC, [PYRNTYPE] ASC, [PYSTLTEX] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10202$AK3UPR10202]
    ON [dbo].[UPR10202]([EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10202$AK4UPR10202]
    ON [dbo].[UPR10202]([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10202$PKUPR10202]
    ON [dbo].[UPR10202]([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [PYADNMBR] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[AK3UPR10202]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'INDEX', @level2name = N'UPR10202$AK3UPR10202';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[AK4UPR10202]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'INDEX', @level2name = N'UPR10202$AK4UPR10202';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[PKUPR10202]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'INDEX', @level2name = N'UPR10202$PKUPR10202';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[USERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[PYRNTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'PYRNTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[POSTED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'POSTED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[PYSTLTEX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'PYSTLTEX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[CHEKNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'CHEKNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[CHEKDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'CHEKDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[CHEKBKID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'CHEKBKID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[PYADNMBR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'PYADNMBR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[ADFDWHDG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'ADFDWHDG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[ESTFEDWH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'ESTFEDWH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[HWKVCACR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'HWKVCACR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[HWKSKACR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'HWKSKACR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[VACTMACC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'VACTMACC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[SKTMACCR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'SKTMACCR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[VACTMLBL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'VACTMLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[SKTMLBTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'SKTMLBTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[VACAVLBL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'VACAVLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[SIKTIMAV]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'SIKTIMAV';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[GRWGPRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'GRWGPRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[NTWPYRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'NTWPYRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_6]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_7]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FEDWGARR_8]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FEDWGARR_8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_6]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_7]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_Tips_Array_8]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_Tips_Array_8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FDWGPYRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FDWGPYRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Federal_TipsPay_Run]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Federal_TipsPay_Run';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[ANFDWHDG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'ANFDWHDG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FDWDGPRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FDWDGPRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FDTXTIPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FDTXTIPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICASSWP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICASSWP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICASS_TipsPay_Run]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICASS_TipsPay_Run';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FCASWPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FCASWPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICSTPTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICSTPTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Uncollected_FICASS_TaxP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Uncollected_FICASS_TaxP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICAMWGP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICAMWGP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICAMed_TipsPay_Run]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICAMed_TipsPay_Run';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICAMWPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICAMWPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[FICMTPTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'FICMTPTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Uncollected_FICAMed_TaxP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Uncollected_FICAMed_TaxP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EICWPYRN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EICWPYRN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EPFICASS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EPFICASS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EFICAMCR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EFICAMCR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Charged_Receipts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Charged_Receipts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Reported_Receipts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Reported_Receipts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Hours_Worked_For_Minimum]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Hours_Worked_For_Minimum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Min_Wage_Bal_Applicable]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Min_Wage_Bal_Applicable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Reported_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Reported_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[Charged_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'Charged_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[ALOCTIPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'ALOCTIPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[TipType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'TipType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[POSTEDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'POSTEDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[GRWGFREIC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'GRWGFREIC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[CALCCHKERRS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'CALCCHKERRS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EFICASSWH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EFICASSWH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EFICASS_Tax_On_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EFICASS_Tax_On_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EFICAMWPR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EFICAMWPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[EFICAMed_Tax_On_Tips]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'EFICAMed_Tax_On_Tips';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[PayPeriodBeginDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'PayPeriodBeginDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[PayPeriodEndDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'PayPeriodEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10202].[AK2UPR10202]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10202', @level2type = N'CONSTRAINT', @level2name = N'UPR10202$AK2UPR10202';

