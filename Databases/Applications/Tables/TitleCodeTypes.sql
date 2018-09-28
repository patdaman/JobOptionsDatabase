CREATE TABLE [dbo].[TitleCodeTypes] (
    [Code]            NVARCHAR (3)  NOT NULL,
    [Desc]            NVARCHAR (50) NULL,
    [Status]          NVARCHAR (20) NULL,
    [EEOWageCode]     NVARCHAR (2)  NULL,
    [DivisionCode]    INT           NULL,
    [EEOCategoryCode] NVARCHAR (2)  NULL,
    [Active]          BIT           DEFAULT ((1)) NOT NULL,
    [CreateDate]      DATETIME2 (0) CONSTRAINT [DF_TitleCodeTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]      VARCHAR (128) CONSTRAINT [DF_TitleCodeTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]      DATETIME2 (0) CONSTRAINT [DF_TitleCodeTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]      VARCHAR (128) CONSTRAINT [DF_TitleCodeTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [TitleCodeTypes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC),
    CONSTRAINT [SSMA_CC$TitleCodeTypes$Desc$disallow_zero_length] CHECK (len([Desc])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodeTypes$EEOCategoryCode$disallow_zero_length] CHECK (len([EEOCategoryCode])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodeTypes$EEOWageCode$disallow_zero_length] CHECK (len([EEOWageCode])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodeTypes$Status$disallow_zero_length] CHECK (len([Status])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodeTypes$TitleCode$disallow_zero_length] CHECK (len([Code])>(0)),
    CONSTRAINT [TitleCodeTypes${AEC83304-AF43-4FB1-8568-E7A8A2807FBE}] FOREIGN KEY ([DivisionCode]) REFERENCES [dbo].[SpecialtyCodeTypes] ([Code])
);

