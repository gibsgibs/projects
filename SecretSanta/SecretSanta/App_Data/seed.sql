CREATE TABLE [dbo].[BulkData]
(
	[Name]					NVARCHAR(50),
	[SignificantOtherName]	NVARCHAR(50),
	[Email]					NVARCHAR(350)
);

BULK INSERT [dbo].[BulkData]
	FROM 'C:\Users\GBreh\Desktop\projects\people.csv'
	WITH
	(
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

INSERT INTO [dbo].[Person] ([Name], [Email])
	SELECT Name, Email
	FROM [dbo].[BulkData];

UPDATE [dbo].[Person] SET SignificantOther = 
(
	SELECT p.PersonID FROM [dbo].[Person] AS p
	JOIN [dbo].[BulkData] as bd ON p.Name = bd.Name
	WHERE bd.SignificantOtherName = p.Name
)

DROP TABLE [dbo].[BulkData];