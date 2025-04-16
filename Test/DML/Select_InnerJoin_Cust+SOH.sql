USE Test
GO

SELECT C.[No.],C.[Name],SOH.[Sales Amount],Count(C.[No.]) AS Orders
FROM Customer AS C
INNER JOIN SalesOrderHeader AS SOH
ON C.[No.] = SOH.[Customer No.]
GROUP BY C.[No.],C.[Name],SOH.[Sales Amount]
HAVING SOH.[Sales Amount] > 49.99
ORDER BY Count(C.[No.]) DESC 

GO