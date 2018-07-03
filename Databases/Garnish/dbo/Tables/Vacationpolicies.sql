CREATE TABLE [dbo].[Vacationpolicies] (
    [Dept]           NVARCHAR (10) NULL,
    [StartYear]      REAL          DEFAULT ((0)) NULL,
    [EndYear]        INT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [SSMA_CC$Vacationpolicies$Dept$disallow_zero_length] CHECK (len([Dept])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Vacationpolicies]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Vacationpolicies';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Vacationpolicies].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Vacationpolicies', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Vacationpolicies].[StartYear]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Vacationpolicies', @level2type = N'COLUMN', @level2name = N'StartYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Vacationpolicies].[EndYear]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Vacationpolicies', @level2type = N'COLUMN', @level2name = N'EndYear';

