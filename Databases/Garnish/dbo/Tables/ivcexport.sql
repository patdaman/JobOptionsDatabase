CREATE TABLE [dbo].[ivcexport] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [BatchID]     NVARCHAR (50) NULL,
    [ivc number]  NVARCHAR (50) NULL,
    [IVC DATE]    DATETIME2 (0) NULL,
    [Customer ID] NVARCHAR (50) NULL,
    [Amount]      MONEY         DEFAULT ((0)) NULL,
    [site]        NVARCHAR (50) NULL,
    [Pos]         NVARCHAR (50) NULL,
    [Month]       INT           DEFAULT ((0)) NULL,
    [lsid]        INT           DEFAULT ((0)) NULL,
    [year]        INT           DEFAULT ((0)) NULL,
    [util]        MONEY         DEFAULT ((0)) NULL,
    CONSTRAINT [ivcexport$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$ivcexport$BatchID$disallow_zero_length] CHECK (len([BatchID])>(0)),
    CONSTRAINT [SSMA_CC$ivcexport$Customer ID$disallow_zero_length] CHECK (len([Customer ID])>(0)),
    CONSTRAINT [SSMA_CC$ivcexport$ivc number$disallow_zero_length] CHECK (len([ivc number])>(0)),
    CONSTRAINT [SSMA_CC$ivcexport$Pos$disallow_zero_length] CHECK (len([Pos])>(0)),
    CONSTRAINT [SSMA_CC$ivcexport$site$disallow_zero_length] CHECK (len([site])>(0))
);


GO
CREATE NONCLUSTERED INDEX [ivcexport$BatchID]
    ON [dbo].[ivcexport]([BatchID] ASC);


GO
CREATE NONCLUSTERED INDEX [ivcexport$Customer ID]
    ON [dbo].[ivcexport]([Customer ID] ASC);


GO
CREATE NONCLUSTERED INDEX [ivcexport$lsid]
    ON [dbo].[ivcexport]([lsid] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ivcexport$Site]
    ON [dbo].[ivcexport]([site] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[BatchID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'INDEX', @level2name = N'ivcexport$BatchID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[Customer ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'INDEX', @level2name = N'ivcexport$Customer ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[lsid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'INDEX', @level2name = N'ivcexport$lsid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'INDEX', @level2name = N'ivcexport$Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[BatchID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'BatchID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[ivc number]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'ivc number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[IVC DATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'IVC DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[Customer ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'Customer ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[Amount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'Amount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[Pos]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'Pos';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[Month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[lsid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'lsid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[util]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'COLUMN', @level2name = N'util';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ivcexport].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ivcexport', @level2type = N'CONSTRAINT', @level2name = N'ivcexport$PrimaryKey';

