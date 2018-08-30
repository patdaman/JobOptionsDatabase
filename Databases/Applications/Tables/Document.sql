CREATE TABLE [dbo].[Document] (
    [id]            INT             IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT             NOT NULL,
    [ApplicationId] INT             NULL,
    [DocumentType]  VARCHAR (50)    NOT NULL,
    [DocumentText]  VARCHAR (MAX)   NULL,
    [FileExtension] VARCHAR (128)   NULL,
    [Location]      NVARCHAR (512)  NULL,
    [Document]      VARBINARY (MAX) NULL,
    [CreateDate]    DATETIME2 (0)   CONSTRAINT [DF_DisabledDocument_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128)   CONSTRAINT [DF_DisabledDocument_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0)   CONSTRAINT [DF_DisabledDocument_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128)   CONSTRAINT [DF_DisabledDocument_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_DisabledDocument] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_DisabledDocument_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Document_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);





