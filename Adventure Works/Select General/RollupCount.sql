USE AdventureWorks2012
GO

SELECT DISTINCT JobTitle,COUNT(*) AS Total
FROM HumanResources.Employee
WHERE [JobTitle] Like '%Manager%'
GROUP BY JobTitle WITH ROLLUP
ORDER BY JobTitle