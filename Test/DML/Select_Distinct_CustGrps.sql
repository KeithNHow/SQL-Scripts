USE [Test]
GO
	
SELECT [Customer Group Code],COUNT(*)
FROM Customer
GROUP BY [Customer Group Code]
ORDER BY [Customer Group Code]
GO