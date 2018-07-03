CREATE TABLE [dbo].[EmailRecipients] (
    [ID]              INT           IDENTITY (1, 1) NOT NULL,
    [Addy]            NVARCHAR (50) NULL,
    [Nme]             NVARCHAR (50) NULL,
    [New Hire Report] BIT           DEFAULT ((0)) NULL,
    [PSC]             BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]  ROWVERSION    NOT NULL,
    CONSTRAINT [EmailRecipients$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients].[Addy]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients', @level2type = N'COLUMN', @level2name = N'Addy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients].[Nme]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients', @level2type = N'COLUMN', @level2name = N'Nme';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients].[New Hire Report]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients', @level2type = N'COLUMN', @level2name = N'New Hire Report';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients].[PSC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients', @level2type = N'COLUMN', @level2name = N'PSC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmailRecipients].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmailRecipients', @level2type = N'CONSTRAINT', @level2name = N'EmailRecipients$PrimaryKey';

