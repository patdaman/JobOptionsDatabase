CREATE TABLE [dbo].[CustPolicy] (
    [Customerid] NVARCHAR (10) NOT NULL,
    [Nish]       INT           DEFAULT ((0)) NULL,
    [Dept num]   INT           DEFAULT ((0)) NULL,
    CONSTRAINT [CustPolicy$PrimaryKey] PRIMARY KEY CLUSTERED ([Customerid] ASC),
    CONSTRAINT [SSMA_CC$CustPolicy$Customerid$disallow_zero_length] CHECK (len([Customerid])>(0))
);


GO
CREATE NONCLUSTERED INDEX [CustPolicy$Customerid]
    ON [dbo].[CustPolicy]([Customerid] ASC);


GO
CREATE NONCLUSTERED INDEX [CustPolicy$Dept num]
    ON [dbo].[CustPolicy]([Dept num] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy].[Customerid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy', @level2type = N'INDEX', @level2name = N'CustPolicy$Customerid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy].[Dept num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy', @level2type = N'INDEX', @level2name = N'CustPolicy$Dept num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy].[Customerid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy', @level2type = N'COLUMN', @level2name = N'Customerid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy].[Nish]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy', @level2type = N'COLUMN', @level2name = N'Nish';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy].[Dept num]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy', @level2type = N'COLUMN', @level2name = N'Dept num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[CustPolicy].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CustPolicy', @level2type = N'CONSTRAINT', @level2name = N'CustPolicy$PrimaryKey';

