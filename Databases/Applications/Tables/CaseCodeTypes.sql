CREATE TABLE [dbo].[CaseCodeTypes] (
    [Code]           NVARCHAR (2)  NOT NULL,
    [Description]    NVARCHAR (50) NULL,
    [Title]          BIT           DEFAULT ((0)) NULL,
    [Services]       NVARCHAR (40) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    [CreateDate]     DATETIME2 (0) CONSTRAINT [DF_CaseCodeTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]     VARCHAR (128) CONSTRAINT [DF_CaseCodeTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyUser]     VARCHAR (128) CONSTRAINT [DF_CaseCodeTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]     DATETIME2 (0) CONSTRAINT [DF_CaseCodeTypes_Modify_Date] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [CaseCodeTypes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC),
    CONSTRAINT [SSMA_CC$CaseCodeTypes$Code$disallow_zero_length] CHECK (len([Code])>(0)),
    CONSTRAINT [SSMA_CC$CaseCodeTypes$Description$disallow_zero_length] CHECK (len([Description])>(0)),
    CONSTRAINT [SSMA_CC$CaseCodeTypes$Services$disallow_zero_length] CHECK (len([Services])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodeTypes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodeTypes', @level2type = N'CONSTRAINT', @level2name = N'CaseCodeTypes$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodeTypes].[Services]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodeTypes', @level2type = N'COLUMN', @level2name = N'Services';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodeTypes].[Title]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodeTypes', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodeTypes].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodeTypes', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodeTypes].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodeTypes', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodeTypes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodeTypes';

