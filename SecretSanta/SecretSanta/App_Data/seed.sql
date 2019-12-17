CREATE TABLE [dbo].[BulkData]
(
	[Name]					NVARCHAR(50),
	[SignificantOtherName]	NVARCHAR(50)
);

BULK INSERT [dbo].[BulkData]
	FROM 'C:\Users\GBreh\Desktop\projects\people.csv'
	WITH
	(
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

INSERT INTO [dbo].[Person] ([Name])
	SELECT Name 
	FROM [dbo].[BulkData];

INSERT INTO [dbo].[Relationship] ([Person1], [Person2])
	SELECT DISTINCT p1.PersonID, p2.PersonID
	FROM [dbo].[Person] AS p1 
	JOIN [dbo].[Person] AS p2
	ON p1.PersonID != p2.PersonID
	JOIN [dbo].[BulkData] as bd
	ON p1.Name = bd.Name
	WHERE bd.SignificantOtherName = p2.Name;
	


DROP TABLE [dbo].[BulkData]