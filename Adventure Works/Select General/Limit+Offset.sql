USE [AdventureWorks2012]
GO

SELECT BusinessEntityID, Title, FirstName, LastName
FROM Person.Person
ORDER BY BusinessEntityID
OFFSET 9 ROWS -- Skip the first 9 rows
FETCH NEXT 10 ROWS ONLY -- Fetch the next 10 rows

GO