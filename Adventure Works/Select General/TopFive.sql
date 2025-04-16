USE AdventureWorks2012
Go

SELECT TOP(5) [SalesOrderID],[OrderDate],[SubTotal]
FROM [Sales].[SalesOrderHeader]
ORDER BY [SubTotal] DESC
