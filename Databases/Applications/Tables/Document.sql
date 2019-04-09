CREATE TABLE [dbo].[Document] (
    [id]           INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]  INT           NOT NULL,
    [DocumentType] VARCHAR (50)  NOT NULL,
    [FileName]     VARCHAR (128) NOT NULL,
    [FileType]     VARCHAR (128) NULL,
    [Container]    VARCHAR (128) NULL,
    [CreateDate]   DATETIME2 (0) CONSTRAINT [DF_DisabledDocument_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]   VARCHAR (128) CONSTRAINT [DF_DisabledDocument_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]   DATETIME2 (0) CONSTRAINT [DF_DisabledDocument_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]   VARCHAR (128) CONSTRAINT [DF_DisabledDocument_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_DisabledDocument] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_DisabledDocument_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
);











