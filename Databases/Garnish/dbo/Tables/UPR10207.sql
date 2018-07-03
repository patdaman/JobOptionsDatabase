CREATE TABLE [dbo].[UPR10207] (
    [DEPRTMNT]       NVARCHAR (7)  NOT NULL,
    [JOBTITLE]       NVARCHAR (7)  NOT NULL,
    [USERID]         NVARCHAR (15) NOT NULL,
    [PYRNTYPE]       SMALLINT      NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [TRXNUMBER]      INT           NOT NULL,
    [LOCALTAX]       NVARCHAR (7)  NOT NULL,
    [LOTXTIPS]       FLOAT (53)    NOT NULL,
    [TTLLCLTX]       FLOAT (53)    NOT NULL,
    [TXBLWAGS]       FLOAT (53)    NOT NULL,
    [TXBLTIPS]       FLOAT (53)    NOT NULL,
    [BLDCHERR]       VARBINARY (4) NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR10207$AK1UPR10207] PRIMARY KEY CLUSTERED ([USERID] ASC, [PYRNTYPE] ASC, [EMPLOYID] ASC, [LOCALTAX] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10207$AK2UPR10207]
    ON [dbo].[UPR10207]([EMPLOYID] ASC, [LOCALTAX] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR10207$PKUPR10207]
    ON [dbo].[UPR10207]([USERID] ASC, [EMPLOYID] ASC, [PYRNTYPE] ASC, [TRXNUMBER] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[AK2UPR10207]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'INDEX', @level2name = N'UPR10207$AK2UPR10207';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[PKUPR10207]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'INDEX', @level2name = N'UPR10207$PKUPR10207';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[USERID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[PYRNTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'PYRNTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[TRXNUMBER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'TRXNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[LOCALTAX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'LOCALTAX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[LOTXTIPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'LOTXTIPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[TTLLCLTX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'TTLLCLTX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[TXBLWAGS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'TXBLWAGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[TXBLTIPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'TXBLTIPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[BLDCHERR]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'BLDCHERR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR10207].[AK1UPR10207]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR10207', @level2type = N'CONSTRAINT', @level2name = N'UPR10207$AK1UPR10207';

