USE AdventureWorks2012
Go

SELECT * FROM [Person].[Person] AS Per
INNER JOIN [Person].[Password] AS Pass
ON [Per].[BusinessEntityID] = [Pass].[BusinessEntityID]

GO