CREATE TABLE [dbo].[User] (
    [User]  NVARCHAR (50) NULL,
    [email] NVARCHAR (50) NULL,
    [uid]   INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [SSMA_CC$User$email$disallow_zero_length] CHECK (len([email])>(0)),
    CONSTRAINT [SSMA_CC$User$User$disallow_zero_length] CHECK (len([User])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [User$uid]
    ON [dbo].[User]([uid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[User].[uid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'INDEX', @level2name = N'User$uid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[User]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[User].[User]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[User].[email]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[User].[uid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'User', @level2type = N'COLUMN', @level2name = N'uid';

