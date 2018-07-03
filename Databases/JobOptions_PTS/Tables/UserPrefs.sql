CREATE TABLE [dbo].[UserPrefs] (
    [User]           NVARCHAR (10) NULL,
    [I9]             BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[UserPrefs]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserPrefs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[UserPrefs].[User]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserPrefs', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[UserPrefs].[I9]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UserPrefs', @level2type = N'COLUMN', @level2name = N'I9';

