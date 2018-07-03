CREATE TABLE [dbo].[fsdepts] (
    [food Service Departments] NVARCHAR (50) NULL,
    CONSTRAINT [SSMA_CC$fsdepts$food Service Departments$disallow_zero_length] CHECK (len([food Service Departments])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[fsdepts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'fsdepts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[fsdepts].[food Service Departments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'fsdepts', @level2type = N'COLUMN', @level2name = N'food Service Departments';

