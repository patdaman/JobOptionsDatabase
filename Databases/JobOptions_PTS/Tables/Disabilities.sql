CREATE TABLE [dbo].[Disabilities] (
    [Emp#]           FLOAT (53) NOT NULL,
    [Episode]        INT        NOT NULL,
    [DisabilityCode] INT        NOT NULL,
    [SSMA_TimeStamp] ROWVERSION NOT NULL,
    CONSTRAINT [Disabilities$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [DisabilityCode] ASC),
    CONSTRAINT [Disabilities${23163263-4E9C-441C-AC2E-4CC8DF175A67}] FOREIGN KEY ([DisabilityCode]) REFERENCES [dbo].[SpecialtyCodes] ([Code]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [Disabilities${23163263-4E9C-441C-AC2E-4CC8DF175A67}]
    ON [dbo].[Disabilities]([DisabilityCode] ASC);


GO
CREATE NONCLUSTERED INDEX [Disabilities$TitleCode]
    ON [dbo].[Disabilities]([DisabilityCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[{23163263-4E9C-441C-AC2E-4CC8DF175A67}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'INDEX', @level2name = N'Disabilities${23163263-4E9C-441C-AC2E-4CC8DF175A67}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'INDEX', @level2name = N'Disabilities$TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[DisabilityCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'COLUMN', @level2name = N'DisabilityCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[{23163263-4E9C-441C-AC2E-4CC8DF175A67}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'CONSTRAINT', @level2name = N'Disabilities${23163263-4E9C-441C-AC2E-4CC8DF175A67}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Disabilities].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Disabilities', @level2type = N'CONSTRAINT', @level2name = N'Disabilities$PrimaryKey';

