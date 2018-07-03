CREATE TABLE [dbo].[UPR001001] (
    [EMPLOYID]                NVARCHAR (15) NOT NULL,
    [EMPLCLAS]                NVARCHAR (15) NOT NULL,
    [INACTIVE]                TINYINT       NOT NULL,
    [LASTNAME]                NVARCHAR (21) NOT NULL,
    [FRSTNAME]                NVARCHAR (15) NOT NULL,
    [MIDLNAME]                NVARCHAR (15) NOT NULL,
    [ADRSCODE]                NVARCHAR (15) NOT NULL,
    [SOCSCNUM]                NVARCHAR (15) NOT NULL,
    [BRTHDATE]                DATETIME2 (0) NOT NULL,
    [GENDER]                  SMALLINT      NOT NULL,
    [ETHNORGN]                SMALLINT      NOT NULL,
    [Calc_Min_Wage_Bal]       TINYINT       NOT NULL,
    [DIVISIONCODE_I]          NVARCHAR (7)  NOT NULL,
    [DEPRTMNT]                NVARCHAR (7)  NOT NULL,
    [JOBTITLE]                NVARCHAR (7)  NOT NULL,
    [SUPERVISORCODE_I]        NVARCHAR (7)  NOT NULL,
    [LOCATNID]                NVARCHAR (15) NOT NULL,
    [WCACFPAY]                SMALLINT      NOT NULL,
    [ACTINDX]                 INT           NOT NULL,
    [WKHRPRYR]                SMALLINT      NOT NULL,
    [STRTDATE]                DATETIME2 (0) NOT NULL,
    [DEMPINAC]                DATETIME2 (0) NOT NULL,
    [RSNEMPIN]                NVARCHAR (31) NOT NULL,
    [MINETPAY]                FLOAT (53)    NOT NULL,
    [SUTASTAT]                NVARCHAR (3)  NOT NULL,
    [WRKRCOMP]                NVARCHAR (7)  NOT NULL,
    [ATACRVAC]                TINYINT       NOT NULL,
    [VACCRAMT]                INT           NOT NULL,
    [VACCRMTH]                SMALLINT      NOT NULL,
    [VACAPRYR]                INT           NOT NULL,
    [VACAVLBL]                INT           NOT NULL,
    [WRNVCNFLSBLWZR]          TINYINT       NOT NULL,
    [ATACRSTM]                TINYINT       NOT NULL,
    [STMACMTH]                SMALLINT      NOT NULL,
    [SKTMACAM]                INT           NOT NULL,
    [SIKTIMAV]                INT           NOT NULL,
    [SKTMHPYR]                INT           NOT NULL,
    [WRNSTFLSBLWZR]           TINYINT       NOT NULL,
    [USERDEF1]                NVARCHAR (21) NOT NULL,
    [USERDEF2]                NVARCHAR (21) NOT NULL,
    [EMPLOYMENTTYPE]          SMALLINT      NOT NULL,
    [MARITALSTATUS]           SMALLINT      NOT NULL,
    [BENADJDATE]              DATETIME2 (0) NOT NULL,
    [LASTDAYWORKED_I]         DATETIME2 (0) NOT NULL,
    [BIRTHDAY]                SMALLINT      NOT NULL,
    [BIRTHMONTH]              SMALLINT      NOT NULL,
    [SPOUSE]                  NVARCHAR (15) NOT NULL,
    [SPOUSESSN]               NVARCHAR (15) NOT NULL,
    [NICKNAME]                NVARCHAR (21) NOT NULL,
    [ALTERNATENAME]           NVARCHAR (21) NOT NULL,
    [HRSTATUS]                SMALLINT      NOT NULL,
    [DATEOFLASTREVIEW_I]      DATETIME2 (0) NOT NULL,
    [DATEOFNEXTREVIEW_I]      DATETIME2 (0) NOT NULL,
    [BENEFITEXPIRE_I]         DATETIME2 (0) NOT NULL,
    [HANDICAPPED]             TINYINT       NOT NULL,
    [VETERAN]                 TINYINT       NOT NULL,
    [VIETNAMVETERAN]          TINYINT       NOT NULL,
    [DISABLEDVETERAN]         TINYINT       NOT NULL,
    [UNIONEMPLOYEE]           TINYINT       NOT NULL,
    [SMOKER_I]                TINYINT       NOT NULL,
    [CITIZEN]                 TINYINT       NOT NULL,
    [VERIFIED]                TINYINT       NOT NULL,
    [I9RENEW]                 DATETIME2 (0) NOT NULL,
    [Primary_Pay_Record]      NVARCHAR (7)  NOT NULL,
    [CHANGEBY_I]              NVARCHAR (15) NOT NULL,
    [CHANGEDATE_I]            DATETIME2 (0) NOT NULL,
    [NOTEINDX]                FLOAT (53)    NOT NULL,
    [NOTEINDX2]               FLOAT (53)    NOT NULL,
    [UNIONCD]                 NVARCHAR (7)  NOT NULL,
    [RATECLSS]                NVARCHAR (15) NOT NULL,
    [FEDCLSSCD]               NVARCHAR (11) NOT NULL,
    [OTHERVET]                TINYINT       NOT NULL,
    [Military_Discharge_Date] DATETIME2 (0) NOT NULL,
    [EMPLSUFF]                NVARCHAR (5)  NOT NULL,
    [DEX_ROW_TS]              DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]              INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp]          ROWVERSION    NOT NULL,
    CONSTRAINT [UPR001001$AK10UPR00100] PRIMARY KEY CLUSTERED ([DIVISIONCODE_I] ASC, [DEPRTMNT] ASC, [JOBTITLE] ASC, [EMPLOYID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK11UPR00100]
    ON [dbo].[UPR001001]([SUPERVISORCODE_I] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK12UPR00100]
    ON [dbo].[UPR001001]([LOCATNID] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK2UPR00100]
    ON [dbo].[UPR001001]([LASTNAME] ASC, [FRSTNAME] ASC, [MIDLNAME] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK3UPR00100]
    ON [dbo].[UPR001001]([FRSTNAME] ASC, [LASTNAME] ASC, [MIDLNAME] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK4UPR00100]
    ON [dbo].[UPR001001]([EMPLCLAS] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK5UPR00100]
    ON [dbo].[UPR001001]([DEPRTMNT] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK6UPR00100]
    ON [dbo].[UPR001001]([JOBTITLE] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK7UPR00100]
    ON [dbo].[UPR001001]([WRKRCOMP] ASC, [EMPLOYID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK8UPR00100]
    ON [dbo].[UPR001001]([SOCSCNUM] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$AK9UPR00100]
    ON [dbo].[UPR001001]([EMPLOYID] ASC, [LASTNAME] ASC, [EMPLCLAS] ASC, [DEPRTMNT] ASC, [INACTIVE] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR001001$PKUPR00100]
    ON [dbo].[UPR001001]([EMPLOYID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK11UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK11UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK12UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK12UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK2UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK2UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK3UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK3UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK4UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK4UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK5UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK5UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK6UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK6UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK7UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK7UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK8UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK8UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK9UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$AK9UPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[PKUPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'INDEX', @level2name = N'UPR001001$PKUPR00100';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[EMPLCLAS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'EMPLCLAS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[LASTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'LASTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[FRSTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'FRSTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[MIDLNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'MIDLNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[ADRSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'ADRSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SOCSCNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SOCSCNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[BRTHDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'BRTHDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[GENDER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'GENDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[ETHNORGN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'ETHNORGN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[Calc_Min_Wage_Bal]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'Calc_Min_Wage_Bal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DIVISIONCODE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DIVISIONCODE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SUPERVISORCODE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SUPERVISORCODE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[LOCATNID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'LOCATNID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[WCACFPAY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'WCACFPAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[WKHRPRYR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'WKHRPRYR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[STRTDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'STRTDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DEMPINAC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DEMPINAC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[RSNEMPIN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'RSNEMPIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[MINETPAY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'MINETPAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SUTASTAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SUTASTAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[ATACRVAC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'ATACRVAC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VACCRAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VACCRAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VACCRMTH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VACCRMTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VACAPRYR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VACAPRYR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VACAVLBL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VACAVLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[WRNVCNFLSBLWZR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'WRNVCNFLSBLWZR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[ATACRSTM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'ATACRSTM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[STMACMTH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'STMACMTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SKTMACAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SKTMACAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SIKTIMAV]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SIKTIMAV';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SKTMHPYR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SKTMHPYR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[WRNSTFLSBLWZR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'WRNSTFLSBLWZR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[USERDEF1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'USERDEF1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[USERDEF2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'USERDEF2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[EMPLOYMENTTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'EMPLOYMENTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[MARITALSTATUS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'MARITALSTATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[BENADJDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'BENADJDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[LASTDAYWORKED_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'LASTDAYWORKED_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[BIRTHDAY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'BIRTHDAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[BIRTHMONTH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'BIRTHMONTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SPOUSE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SPOUSE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SPOUSESSN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SPOUSESSN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[NICKNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'NICKNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[ALTERNATENAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'ALTERNATENAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[HRSTATUS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'HRSTATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DATEOFLASTREVIEW_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DATEOFLASTREVIEW_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DATEOFNEXTREVIEW_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DATEOFNEXTREVIEW_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[BENEFITEXPIRE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'BENEFITEXPIRE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[HANDICAPPED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'HANDICAPPED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VETERAN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VETERAN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VIETNAMVETERAN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VIETNAMVETERAN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DISABLEDVETERAN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DISABLEDVETERAN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[UNIONEMPLOYEE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'UNIONEMPLOYEE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[SMOKER_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'SMOKER_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[CITIZEN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'CITIZEN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[VERIFIED]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'VERIFIED';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[I9RENEW]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'I9RENEW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[Primary_Pay_Record]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'Primary_Pay_Record';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[CHANGEBY_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'CHANGEBY_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[CHANGEDATE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'CHANGEDATE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[NOTEINDX2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'NOTEINDX2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[UNIONCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'UNIONCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[RATECLSS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'RATECLSS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[FEDCLSSCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'FEDCLSSCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[OTHERVET]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'OTHERVET';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[Military_Discharge_Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'Military_Discharge_Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[EMPLSUFF]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'EMPLSUFF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DEX_ROW_TS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_TS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR001001].[AK10UPR00100]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR001001', @level2type = N'CONSTRAINT', @level2name = N'UPR001001$AK10UPR00100';

