USE [AdventureWorks2012]
GO

SELECT Bonus,SUM(Bonus*Bonus) AS Total
FROM Sales.Salesperson 
GROUP BY Bonus WITH ROLLUP

GO