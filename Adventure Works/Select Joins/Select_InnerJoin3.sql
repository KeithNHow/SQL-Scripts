USE [AdventureWorks2012]
GO

SELECT [PersonType],CONCAT([FirstName]+' ',[MiddleName]+' ',[LastName]) AS Name
FROM [Person].[Person] AS Per
INNER JOIN [Person].[Password] AS Pass
ON [Per].[BusinessEntityID] = [Pass].[BusinessEntityID]
WHERE [PersonType] = 'EM'

GO