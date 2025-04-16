USE [Test]
GO

SELECT C.[No.],C.[Name],CG.[Code],CG.[Name] AS Group_Name
FROM [Customer] AS C
INNER JOIN [CustomerGroup] AS CG
ON [C].[Customer Group Code] = [CG].Code

GO