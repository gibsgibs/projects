﻿CREATE TABLE [dbo].[Person]
(
	[PersonID]	INT IDENTITY (1,1)	NOT NULL,
	[Name]		NVARCHAR(50)		NOT NULL,
	[Email]		NVARCHAR(350)		NOT NULL,
	CONSTRAINT [PK_dbo.Person] PRIMARY KEY CLUSTERED ([PersonID] ASC)
);

CREATE TABLE [dbo].[Relationship]
(
	[Person1] INT	NOT NULL,
	[Person2] INT	NOT NULL,
	CONSTRAINT [PK_dbo.Relationship] PRIMARY KEY CLUSTERED ([Person1], [Person2]),
	CONSTRAINT [FK_dbo.Relationship.Person1] FOREIGN KEY ([Person1])
		REFERENCES [dbo].[Person] ([PersonID]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Relationship.Person2] FOREIGN KEY ([Person2])
		REFERENCES [dbo].[Person] ([PersonID]) ON DELETE NO ACTION,
); 