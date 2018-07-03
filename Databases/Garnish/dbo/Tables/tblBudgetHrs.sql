CREATE TABLE [dbo].[tblBudgetHrs] (
    [GLAcct]         NVARCHAR (255) NOT NULL,
    [Description]    NVARCHAR (255) NULL,
    [Paycode]        NVARCHAR (255) NULL,
    [Annual 2009]    FLOAT (53)     NULL,
    [Oct]            FLOAT (53)     NULL,
    [Nov]            FLOAT (53)     NULL,
    [Dec]            FLOAT (53)     NULL,
    [Jan]            FLOAT (53)     NULL,
    [Feb]            FLOAT (53)     NULL,
    [Mar]            FLOAT (53)     NULL,
    [Apr]            FLOAT (53)     NULL,
    [May]            FLOAT (53)     NULL,
    [Jun]            FLOAT (53)     NULL,
    [Jul]            FLOAT (53)     NULL,
    [Aug]            FLOAT (53)     NULL,
    [Sep]            FLOAT (53)     NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [tblBudgetHrs$PrimaryKey] PRIMARY KEY CLUSTERED ([GLAcct] ASC)
);


GO
CREATE NONCLUSTERED INDEX [tblBudgetHrs$Paycode]
    ON [dbo].[tblBudgetHrs]([Paycode] ASC);


GO
CREATE NONCLUSTERED INDEX [tblBudgetHrs$tblBudgetHrsGLAcct]
    ON [dbo].[tblBudgetHrs]([GLAcct] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Paycode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'INDEX', @level2name = N'tblBudgetHrs$Paycode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[tblBudgetHrsGLAcct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'INDEX', @level2name = N'tblBudgetHrs$tblBudgetHrsGLAcct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[GLAcct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'GLAcct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Paycode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Paycode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Annual 2009]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Annual 2009';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Oct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Oct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Nov]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Nov';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Dec]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Dec';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Jan]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Jan';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Feb]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Feb';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Mar]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Mar';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Apr]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Apr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[May]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'May';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Jun]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Jun';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Jul]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Jul';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Aug]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Aug';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[Sep]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'COLUMN', @level2name = N'Sep';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblBudgetHrs].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblBudgetHrs', @level2type = N'CONSTRAINT', @level2name = N'tblBudgetHrs$PrimaryKey';

