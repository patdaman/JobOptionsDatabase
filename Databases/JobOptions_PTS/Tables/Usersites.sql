CREATE TABLE [dbo].[Usersites] (
    [uid]  INT           DEFAULT ((0)) NULL,
    [site] NVARCHAR (50) NULL,
    CONSTRAINT [SSMA_CC$Usersites$site$disallow_zero_length] CHECK (len([site])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Usersites$uid]
    ON [dbo].[Usersites]([uid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Usersites].[uid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Usersites', @level2type = N'INDEX', @level2name = N'Usersites$uid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Usersites]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Usersites';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Usersites].[uid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Usersites', @level2type = N'COLUMN', @level2name = N'uid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Usersites].[site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Usersites', @level2type = N'COLUMN', @level2name = N'site';

