USE AdventureWorks2012
Go

SELECT ProductID 
FROM Production.Product
INTERSECT
SELECT ProductID 
FROM Production.WorkOrder ;

GO
--Result: 238 Rows (products that have work orders)