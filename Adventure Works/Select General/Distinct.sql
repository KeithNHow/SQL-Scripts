USE [AdventureWorks2012]
GO

SELECT DISTINCT JobTitle
FROM HumanResources.Employee
WHERE [JobTitle] Like '%Manager%'
ORDER BY JobTitle
GO


