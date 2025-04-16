USE AdventureWorks2012
GO

/* OUTER UNION */
SELECT C.TerritoryID FROM [Sales].[Customer] AS C
UNION 
SELECT T.TerritoryID FROM [Sales].[SalesTerritory] AS T
GO 
/*10 rows*