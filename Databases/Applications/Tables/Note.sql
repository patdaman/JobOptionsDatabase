CREATE TABLE [dbo].[Note] (
    [id]          INT             IDENTITY (10000, 1) NOT NULL,
    [ApplicantId] INT             NOT NULL,
    [NoteType]    VARCHAR (128)   NULL,
    [Note]        NVARCHAR (2056) NULL,
    [CreateDate]  DATETIME2 (0)   CONSTRAINT [DF_Note_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128)   CONSTRAINT [DF_Note_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0)   CONSTRAINT [DF_Note_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128)   CONSTRAINT [DF_Note_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Note_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Note_NoteTypes] FOREIGN KEY ([NoteType]) REFERENCES [dbo].[NoteTypes] ([Name])
);

