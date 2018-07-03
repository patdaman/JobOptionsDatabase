CREATE TABLE [dbo].[ReferralAgency] (
    [ID]     INT            IDENTITY (1, 1) NOT NULL,
    [Field1] NVARCHAR (255) NULL,
    CONSTRAINT [ReferralAgency$ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ReferralAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ReferralAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ReferralAgency].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ReferralAgency', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ReferralAgency].[Field1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ReferralAgency', @level2type = N'COLUMN', @level2name = N'Field1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ReferralAgency].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ReferralAgency', @level2type = N'CONSTRAINT', @level2name = N'ReferralAgency$ID';

