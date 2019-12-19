CREATE TABLE [dbo].[Person]
(
	[PersonID]			INT IDENTITY (1,1)	NOT NULL,
	[Name]				NVARCHAR(50)		NOT NULL,
	[SignificantOther]	INT,
	[Email]				NVARCHAR(350)		NOT NULL,
	CONSTRAINT [PK_dbo.Person] PRIMARY KEY CLUSTERED ([PersonID] ASC)
);