USE [AdventureWorks2012]
GO

/****** Object:  StoredProcedure [dbo].[RankEx2]    Script Date: 13/12/2013 15:01:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SELECT p.FirstName, p.LastName
    ,ROW_NUMBER() OVER (ORDER BY a.PostalCode) AS "Row Number"
    ,RANK() OVER (ORDER BY a.PostalCode) AS Rank
    ,DENSE_RANK() OVER (ORDER BY a.PostalCode) AS "Dense Rank"
    ,NTILE(4) OVER (ORDER BY a.PostalCode) AS Quartile
    ,s.SalesYTD
    ,a.PostalCode
FROM Sales.SalesPerson AS s 
    INNER JOIN Person.Person AS p 
        ON s.BusinessEntityID = p.BusinessEntityID
    INNER JOIN Person.Address AS a 
        ON a.AddressID = p.BusinessEntityID
WHERE TerritoryID IS NOT NULL AND SalesYTD <> 0;

GO


