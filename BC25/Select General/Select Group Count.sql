USE [Demo Database BC (25-0)]
GO

SELECT  [Customer Posting Group],
		COUNT(*)
FROM [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
GROUP BY [Customer Posting Group]
ORDER BY COUNT(*) DESC

GO