INSERT INTO [dbo].[Person] (Name) VALUES
	('Josh'),
	('Jenessa'),
	('Miceala'),
	('Iain'),
	('Megan'),
	('Jacob'),
	('Zach'),
	('Desi'),
	('Tyler'),
	('Gabe'),
	('Ami'),
	('Dylan'),
	('Elijah'),
	('Mariah'),
	('Isabelle'),
	('Benjamin')
GO

INSERT INTO [dbo].[Relationship] (Person1, Person2)
	SELECT p1.PersonID, p2.PersonID
	FROM dbo.Person AS p1, dbo.Person AS p2
	WHERE p1.Name = 'Josh' AND p2.Name = 'Jenessa';
INSERT INTO [dbo].[Relationship] (Person1, Person2)
	SELECT p1.PersonID, p2.PersonID
	FROM dbo.Person AS p1, dbo.Person AS p2
	WHERE p1.Name = 'Miceala' AND p2.Name = 'Iain';
INSERT INTO [dbo].[Relationship] (Person1, Person2)
	SELECT p1.PersonID, p2.PersonID
	FROM dbo.Person AS p1, dbo.Person AS p2
	WHERE p1.Name = 'Megan' AND p2.Name = 'Jacob';
INSERT INTO [dbo].[Relationship] (Person1, Person2)
	SELECT p1.PersonID, p2.PersonID
	FROM dbo.Person AS p1, dbo.Person AS p2
	WHERE p1.Name = 'Zach' AND p2.Name = 'Desi';
INSERT INTO [dbo].[Relationship] (Person1, Person2)
	SELECT p1.PersonID, p2.PersonID
	FROM dbo.Person AS p1, dbo.Person AS p2
	WHERE p1.Name = 'Gabe' AND p2.Name = 'Ami';