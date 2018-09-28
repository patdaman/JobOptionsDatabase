CREATE TABLE [dbo].[SectionTaskCodeTypes] (
    [Code]        NVARCHAR (2)  NOT NULL,
    [Description] NVARCHAR (50) NULL,
    [Services]    NVARCHAR (40) NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_SectionTaskCodeTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_SectionTaskCodeTypes_CreateUser] DEFAULT (suser_name()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_SectionTaskCodeTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_SectionTaskCodeTypes_ModifyUser] DEFAULT (suser_name()) NOT NULL,
    CONSTRAINT [SectionTaskCodeTypes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC),
    CONSTRAINT [SSMA_CC$SectionTaskCodeTypes$Code$disallow_zero_length] CHECK (len([Code])>(0)),
    CONSTRAINT [SSMA_CC$SectionTaskCodeTypes$Description$disallow_zero_length] CHECK (len([Description])>(0)),
    CONSTRAINT [SSMA_CC$SectionTaskCodeTypes$Services$disallow_zero_length] CHECK (len([Services])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodeTypes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodeTypes', @level2type = N'CONSTRAINT', @level2name = N'SectionTaskCodeTypes$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodeTypes].[Services]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodeTypes', @level2type = N'COLUMN', @level2name = N'Services';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodeTypes].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodeTypes', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodeTypes].[Code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodeTypes', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodeTypes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodeTypes';

