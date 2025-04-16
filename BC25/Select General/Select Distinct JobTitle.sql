USE [Demo Database BC (25-0)]
GO

SELECT DISTINCT [Job Title]
FROM [dbo].[CRONUS UK Ltd_$Employee$437dbf0e-84ff-417a-965d-ed2bb9650972]
GROUP BY [Job Title]
ORDER BY [Job Title];

GO