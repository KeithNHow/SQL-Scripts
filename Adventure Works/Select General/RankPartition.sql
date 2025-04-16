USE [AdventureWorks2012]
GO

/****** Object:  StoredProcedure [dbo].[RankEx3]    Script Date: 13/12/2013 15:01:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SELECT i.ProductID, 
	   p.Name, 
	   i.LocationID, 
	   i.Quantity,
       DENSE_RANK() OVER(PARTITION BY i.LocationID ORDER BY i.Quantity DESC) AS Rank
FROM Production.ProductInventory AS i 
INNER JOIN Production.Product AS p ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 AND 4
ORDER BY i.LocationID;

GO


