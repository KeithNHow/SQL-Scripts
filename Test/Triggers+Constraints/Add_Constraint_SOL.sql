USE [Test]
GO

-- Add a constraint to the SalesOrderLine table to ensure that the VAT Code is not null
ALTER TABLE SalesOrderLine 
	ADD CONSTRAINT VAT CHECK ([VAT Code] IS NOT NULL) 
