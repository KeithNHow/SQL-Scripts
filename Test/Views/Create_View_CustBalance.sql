USE [Test]
GO

/* Create Customer Balance View */

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_CustomerBalance]
AS
    SELECT [No.], [Name], [Balance] 
	FROM Customer

GO