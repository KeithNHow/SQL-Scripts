USE [Test]
GO

-- This script alters a procedure to insert records into the Customer and CustomerGroup tables.
ALTER PROCEDURE [dbo].[Proc_InsertCustRecords] 
AS
BEGIN	
	INSERT INTO CustomerGroup([Code],[Name])
	VALUES('MAJORCUSTS','Major Customers'); 

	INSERT INTO Customer([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Customer Group Code],Balance)
	VALUES('10001','Kids Ur Us','Kids Ur Us','','2 North Street','','Guildford','John','','MAJORCUSTS',0); 

	INSERT INTO Customer([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Customer Group Code],Balance)
	VALUES('10002','PC World','PC World','','20 High Street','','Oxford','Peter','','MAJORCUSTS',0); 
END;