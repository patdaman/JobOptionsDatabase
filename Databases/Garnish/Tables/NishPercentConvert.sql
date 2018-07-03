CREATE TABLE [dbo].[NishPercentConvert] (
    [ID]             INT        IDENTITY (1, 1) NOT NULL,
    [Field1]         FLOAT (53) DEFAULT ((0)) NULL,
    [Field2]         FLOAT (53) DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION NOT NULL,
    CONSTRAINT [NishPercentConvert$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[NishPercentConvert]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'NishPercentConvert';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[NishPercentConvert].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'NishPercentConvert', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[NishPercentConvert].[Field1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'NishPercentConvert', @level2type = N'COLUMN', @level2name = N'Field1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[NishPercentConvert].[Field2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'NishPercentConvert', @level2type = N'COLUMN', @level2name = N'Field2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[NishPercentConvert].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'NishPercentConvert', @level2type = N'CONSTRAINT', @level2name = N'NishPercentConvert$PrimaryKey';

