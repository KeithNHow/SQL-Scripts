USE [AdventureWorks2012]
GO

SELECT [SalesOrderID],[ProductID],[OrderQty],
  RANK() OVER(ORDER BY [OrderQty]) AS Rnk
FROM [Sales].[SalesOrderDetail]
WHERE [OrderQty] > 34
ORDER BY [OrderQty]

GO


