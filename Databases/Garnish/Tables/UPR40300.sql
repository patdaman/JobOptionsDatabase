CREATE TABLE [dbo].[UPR40300] (
    [DEPRTMNT]       NVARCHAR (7)   NOT NULL,
    [DSCRIPTN]       NVARCHAR (31)  NOT NULL,
    [AddlDesc]       NVARCHAR (131) NOT NULL,
    [NOTEINDX]       FLOAT (53)     NOT NULL,
    [CHANGEBY_I]     NVARCHAR (15)  NOT NULL,
    [CHANGEDATE_I]   DATETIME2 (0)  NOT NULL,
    [DEX_ROW_ID]     INT            IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [UPR40300$AK2UPR40300] PRIMARY KEY CLUSTERED ([DSCRIPTN] ASC, [DEPRTMNT] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR40300$PKUPR40300]
    ON [dbo].[UPR40300]([DEPRTMNT] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[PKUPR40300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'INDEX', @level2name = N'UPR40300$PKUPR40300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[DSCRIPTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'DSCRIPTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[AddlDesc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'AddlDesc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[CHANGEBY_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'CHANGEBY_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[CHANGEDATE_I]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'CHANGEDATE_I';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40300].[AK2UPR40300]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40300', @level2type = N'CONSTRAINT', @level2name = N'UPR40300$AK2UPR40300';

