USE AdventureWorks2012
Go

SELECT * FROM [Person].[Person] AS Per
RIGHT OUTER JOIN [Person].[Password] AS Pass
ON [Per].[BusinessEntityID] = Pass.[BusinessEntityID]