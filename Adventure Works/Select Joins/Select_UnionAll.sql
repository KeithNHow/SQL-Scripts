USE AdventureWorks2012
GO

-- UNION
SELECT C.TerritoryID FROM [Sales].[Customer] AS C
UNION ALL 
SELECT T.TerritoryID FROM [Sales].[SalesTerritory] AS T
GO 
-- 19830 rows