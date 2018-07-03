CREATE TABLE [dbo].[UPR304011] (
    [AUCTRLCD]       NVARCHAR (13) NOT NULL,
    [SRCECODE]       NVARCHAR (7)  NOT NULL,
    [DEPRTMNT]       NVARCHAR (7)  NOT NULL,
    [JOBTITLE]       NVARCHAR (7)  NOT NULL,
    [STATECD]        NVARCHAR (3)  NOT NULL,
    [EMPLOYID]       NVARCHAR (15) NOT NULL,
    [DEBITAMT]       FLOAT (53)    NOT NULL,
    [CRDTAMNT]       FLOAT (53)    NOT NULL,
    [ACTINDX]        INT           NOT NULL,
    [POSTEDDT]       DATETIME2 (0) NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR304011$AK1UPR30401] PRIMARY KEY CLUSTERED ([AUCTRLCD] ASC, [EMPLOYID] ASC, [DEX_ROW_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR304011$AK2UPR30401]
    ON [dbo].[UPR304011]([AUCTRLCD] ASC, [STATECD] ASC, [DEPRTMNT] ASC, [JOBTITLE] ASC, [DEX_ROW_ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR304011$PKUPR30401]
    ON [dbo].[UPR304011]([DEX_ROW_ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[AK2UPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'INDEX', @level2name = N'UPR304011$AK2UPR30401';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[PKUPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'INDEX', @level2name = N'UPR304011$PKUPR30401';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[AUCTRLCD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'AUCTRLCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[SRCECODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'SRCECODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[DEPRTMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'DEPRTMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[JOBTITLE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'JOBTITLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[STATECD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'STATECD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[DEBITAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'DEBITAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[CRDTAMNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'CRDTAMNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[ACTINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'ACTINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[POSTEDDT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'POSTEDDT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR304011].[AK1UPR30401]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR304011', @level2type = N'CONSTRAINT', @level2name = N'UPR304011$AK1UPR30401';

