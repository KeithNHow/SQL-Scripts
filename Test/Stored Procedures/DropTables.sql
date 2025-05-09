USE [Test]
GO

-- This script is used to drop all the tables in the Test database.
CREATE PROCEDURE [dbo].[Proc_DropTables] 
AS
BEGIN	
	SET NOCOUNT ON;
	DROP TABLE Customer;
	DROP TABLE CustomerGroup;
	DROP TABLE Item;
	DROP TABLE SalesOrderHeader;
	DROP TABLE SalesOrderLine;
	DROP TABLE Vendor;
	DROP TABLE VendorGroup; 
END

