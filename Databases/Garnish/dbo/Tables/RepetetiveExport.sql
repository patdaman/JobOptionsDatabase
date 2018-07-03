CREATE TABLE [dbo].[RepetetiveExport] (
    [Site]           NVARCHAR (50)  NOT NULL,
    [Customer ID]    NVARCHAR (50)  NOT NULL,
    [Amount]         MONEY          DEFAULT ((0)) NULL,
    [Ident1]         NVARCHAR (100) NULL,
    [Ident2]         NVARCHAR (100) NULL,
    [Ident3]         NVARCHAR (100) NULL,
    [id]             INT            IDENTITY (1, 1) NOT NULL,
    [SVCADDY]        NVARCHAR (50)  NULL,
    [CCADDY]         NVARCHAR (50)  NULL,
    [Type]           INT            DEFAULT ((0)) NULL,
    [nish]           REAL           DEFAULT ((0)) NULL,
    [GLaccNUM]       INT            DEFAULT ((0)) NULL,
    [IVClast4]       REAL           DEFAULT ((0)) NULL,
    [NISHCONNUM]     NVARCHAR (50)  NULL,
    [conenddate]     DATETIME2 (0)  NULL,
    [PCforSALES]     NVARCHAR (50)  NULL,
    [Subd]           NVARCHAR (50)  NULL,
    [INACTIVE]       BIT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [RepetetiveExport$PrimaryKey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [SSMA_CC$RepetetiveExport$CCADDY$disallow_zero_length] CHECK (len([CCADDY])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$Customer ID$disallow_zero_length] CHECK (len([Customer ID])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$Ident1$disallow_zero_length] CHECK (len([Ident1])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$Ident2$disallow_zero_length] CHECK (len([Ident2])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$Ident3$disallow_zero_length] CHECK (len([Ident3])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$NISHCONNUM$disallow_zero_length] CHECK (len([NISHCONNUM])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$PCforSALES$disallow_zero_length] CHECK (len([PCforSALES])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$Site$disallow_zero_length] CHECK (len([Site])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$Subd$disallow_zero_length] CHECK (len([Subd])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveExport$SVCADDY$disallow_zero_length] CHECK (len([SVCADDY])>(0))
);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$Customer ID]
    ON [dbo].[RepetetiveExport]([Customer ID] ASC);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$GLaccNUM]
    ON [dbo].[RepetetiveExport]([GLaccNUM] ASC);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$id]
    ON [dbo].[RepetetiveExport]([id] ASC);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$Ident 1]
    ON [dbo].[RepetetiveExport]([Ident1] ASC);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$Ident2]
    ON [dbo].[RepetetiveExport]([Ident2] ASC);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$Ident3]
    ON [dbo].[RepetetiveExport]([Ident3] ASC);


GO
CREATE NONCLUSTERED INDEX [RepetetiveExport$NISHCONNUM]
    ON [dbo].[RepetetiveExport]([NISHCONNUM] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RepetetiveExport$Site]
    ON [dbo].[RepetetiveExport]([Site] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Customer ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$Customer ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[GLaccNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$GLaccNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[id]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Ident 1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$Ident 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Ident2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$Ident2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Ident3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$Ident3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[NISHCONNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$NISHCONNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'INDEX', @level2name = N'RepetetiveExport$Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Customer ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Customer ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Amount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Amount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Ident1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Ident1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Ident2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Ident2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Ident3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Ident3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[id]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[SVCADDY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'SVCADDY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[CCADDY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'CCADDY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 = repetetive 2 = laundry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Type]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[nish]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'nish';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[GLaccNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'GLaccNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[IVClast4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'IVClast4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[NISHCONNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'NISHCONNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[conenddate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'conenddate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[PCforSALES]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'PCforSALES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[Subd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'Subd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[INACTIVE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'COLUMN', @level2name = N'INACTIVE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveExport].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveExport', @level2type = N'CONSTRAINT', @level2name = N'RepetetiveExport$PrimaryKey';

