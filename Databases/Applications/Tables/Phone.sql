CREATE TABLE [dbo].[Phone] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId] INT           NOT NULL,
    [PhoneType]   VARCHAR (50)  NOT NULL,
    [PhoneNumber] VARCHAR (50)  NOT NULL,
    [Note]        VARCHAR (256) NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_Phone_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_Phone_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_Phone_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_Phone_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Phone_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Phone_PhoneTypes] FOREIGN KEY ([PhoneType]) REFERENCES [dbo].[PhoneTypes] ([Name])
);

