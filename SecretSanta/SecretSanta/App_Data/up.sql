CREATE TABLE [dbo].[Person]
(
	[PersonID]			INT IDENTITY (1,1)	NOT NULL,
	[Name]				NVARCHAR(50)		NOT NULL,
	CONSTRAINT [PK_dbo.Person] PRIMARY KEY CLUSTERED ([PersonID] ASC)
);

CREATE TABLE [dbo].[Relationship]
(
	[RelationshipID]	INT IDENTITY (1,1)	NOT NULL,
	[Person1]			INT					NOT NULL,
	[Person2]			INT					NOT NULL,
	CONSTRAINT [PK_dbo.Relationship] PRIMARY KEY CLUSTERED ([RelationshipID] ASC),
	CONSTRAINT [FR_dbo.Relationship.Person1] FOREIGN KEY ([Person1]) 
		REFERENCES [dbo].[Person] ([PersonID]) ON DELETE CASCADE,
	CONSTRAINT [FR_dbo.Relationship.Person2] FOREIGN KEY ([Person2]) 
		REFERENCES [dbo].[Person] ([PersonID]) ON DELETE NO ACTION
);