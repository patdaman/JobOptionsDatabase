CREATE TABLE [dbo].[Phone] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId] INT           NULL,
    [PhoneType]   VARCHAR (128) CONSTRAINT [DF_Phone_PhoneType] DEFAULT ('Home') NULL,
    [OwnerType]   VARCHAR (128) CONSTRAINT [DF_Phone_OwnerType] DEFAULT ('Applicant') NULL,
    [PhoneNumber] VARCHAR (50)  NOT NULL,
    [Extension]   VARCHAR (16)  NULL,
    [Default]     BIT           CONSTRAINT [DF_Phone_isDefault] DEFAULT ((0)) NULL,
    [Note]        VARCHAR (MAX) NULL,
    [Active]      BIT           CONSTRAINT [DF_Phone_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_Phone_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_Phone_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_Phone_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_Phone_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Phone_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
);

















