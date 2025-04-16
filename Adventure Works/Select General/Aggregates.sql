USE [AdventureWorks2012]
GO

SELECT Bonus,SUM(Bonus*Bonus)
FROM Sales.Salesperson 
GROUP BY Bonus WITH ROLLUP

SELECT STDEVP(Bonus)
FROM Sales.SalesPerson;

SELECT STDEV(Bonus)
FROM Sales.SalesPerson;

GO