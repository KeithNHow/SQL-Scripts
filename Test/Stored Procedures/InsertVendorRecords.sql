USE [Test]
GO

-- This script creates a stored procedure to insert records into the Vendor and VendorGroup tables.
CREATE PROCEDURE [dbo].[InsertVendRecords] 
AS
BEGIN	
	INSERT INTO VendorGroup([Code],[Name])
	VALUES('MAJORVEND','Major Vendors'); 

	INSERT INTO VendorGroup([Code],[Name])
	VALUES('MINORVEND','Minor Vendors'); 

	INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code])
	VALUES('10001','Soft Toys UK','','','20 North Downs ind. Est.','','Guildford','Ben','','MAJORVEND'); 

	INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code])
	VALUES('10002','Lego UK Ltd.','','','Uxbridge House','Beamer Ind. Estate','Reading','Timothy','','MAJORVEND');
	
	INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code])
	VALUES('10003','Scalextrix UK Ltd.','','','12 London Road','Highfield Ind. Est.','Bracknell','Jeremy','','MINORVEND');

	INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code])
	VALUES('10004','TeddyBear Plc','','','Bear House','Wimbledon Ind. Est.','Wimbledon','Keith','','MINORVEND');

	INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code])
	VALUES('10005','Corgi Plc','','','Corgi Factory','West Bromwich Ind. Est.','Birmingham','Keith','','MAJORVEND');
END;