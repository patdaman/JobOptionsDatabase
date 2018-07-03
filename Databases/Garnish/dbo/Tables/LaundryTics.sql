CREATE TABLE [dbo].[LaundryTics] (
    [ID]         INT           IDENTITY (1, 1) NOT NULL,
    [LSID]       INT           DEFAULT ((0)) NULL,
    [LLID]       INT           DEFAULT ((0)) NULL,
    [Date]       DATETIME2 (0) NOT NULL,
    [InvoiceNum] NVARCHAR (10) NULL,
    [Amount]     MONEY         DEFAULT ((0)) NULL,
    CONSTRAINT [LaundryTics$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$LaundryTics$InvoiceNum$disallow_zero_length] CHECK (len([InvoiceNum])>(0))
);


GO
CREATE NONCLUSTERED INDEX [LaundryTics$ID]
    ON [dbo].[LaundryTics]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [LaundryTics$InvoiceNum]
    ON [dbo].[LaundryTics]([InvoiceNum] ASC);


GO
CREATE NONCLUSTERED INDEX [LaundryTics$LLID]
    ON [dbo].[LaundryTics]([LLID] ASC);


GO
CREATE NONCLUSTERED INDEX [LaundryTics$LSID]
    ON [dbo].[LaundryTics]([LSID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'INDEX', @level2name = N'LaundryTics$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[InvoiceNum]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'INDEX', @level2name = N'LaundryTics$InvoiceNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'INDEX', @level2name = N'LaundryTics$LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'INDEX', @level2name = N'LaundryTics$LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'COLUMN', @level2name = N'LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'COLUMN', @level2name = N'LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[InvoiceNum]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'COLUMN', @level2name = N'InvoiceNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[Amount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'COLUMN', @level2name = N'Amount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryTics].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryTics', @level2type = N'CONSTRAINT', @level2name = N'LaundryTics$PrimaryKey';

