USE [Test]
GO

ALTER TABLE dbo.SalesOrderLine
	ADD [VAT Code] nvarchar(20) NOT NULL DEFAULT ''	