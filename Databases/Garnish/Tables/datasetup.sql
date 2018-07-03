CREATE TABLE [dbo].[datasetup] (
    [LocType]        NVARCHAR (50) NULL,
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [SetUp]          NVARCHAR (50) NULL,
    [username]       NVARCHAR (50) NULL,
    [password]       NVARCHAR (50) NULL,
    [server]         NVARCHAR (50) NULL,
    [database]       NVARCHAR (50) NULL,
    [default]        BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [datasetup$PrimaryKey] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [datasetup$Id]
    ON [dbo].[datasetup]([Id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[Id]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'INDEX', @level2name = N'datasetup$Id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[LocType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'LocType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[Id]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'Id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[SetUp]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'SetUp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[username]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'username';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[password]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'password';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[server]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'server';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[database]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'database';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[default]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'COLUMN', @level2name = N'default';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[datasetup].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'datasetup', @level2type = N'CONSTRAINT', @level2name = N'datasetup$PrimaryKey';

