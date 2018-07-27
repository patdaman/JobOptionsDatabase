CREATE TABLE [dbo].[Phone] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NULL,
    [ApplicationId] INT           NULL,
    [PhoneType]     VARCHAR (128) CONSTRAINT [DF_Phone_PhoneType] DEFAULT ('Home') NULL,
    [OwnerType]     VARCHAR (128) CONSTRAINT [DF_Phone_OwnerType] DEFAULT ('Applicant') NULL,
    [PhoneNumber]   VARCHAR (50)  NOT NULL,
    [isDefault]     BIT           CONSTRAINT [DF_Phone_isDefault] DEFAULT ((0)) NULL,
    [Note]          VARCHAR (256) NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_Phone_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_Phone_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_Phone_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_Phone_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Phone_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Phone_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]),
    CONSTRAINT [FK_Phone_OwnerTypes] FOREIGN KEY ([OwnerType]) REFERENCES [dbo].[OwnerTypes] ([Name]) ON DELETE SET DEFAULT ON UPDATE CASCADE,
    CONSTRAINT [FK_Phone_PhoneTypes] FOREIGN KEY ([PhoneType]) REFERENCES [dbo].[PhoneTypes] ([Name]) ON DELETE SET DEFAULT ON UPDATE CASCADE
);











