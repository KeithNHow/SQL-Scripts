USE [Test]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	
SET NOCOUNT ON;
	  
INSERT INTO VendorGroup([Code],[Name])
VALUES('MAJORVEND','Major Vendors'); 

INSERT INTO VendorGroup([Code],[Name])
VALUES('MINORVEND','Minor Vendors'); 

INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code],Balance)
VALUES('10001','Soft Toys UK','','','20 North Downs ind. Est.','','Guildford','Ben','','MAJORVEND',0); 

INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code],Balance)
VALUES('10002','Lego UK Ltd.','','','Uxbridge House','Beamer Ind. Estate','Reading','Timothy','','MAJORVEND',0);
	
INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code],Balance)
VALUES('10003','Scalextrix UK Ltd.','','','12 London Road','Highfield Ind. Est.','Bracknell','Jeremy','','MINORVEND',0);

INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code],Balance)
VALUES('10004','TeddyBear Plc','','','Bear House','Wimbledon Ind. Est.','Wimbledon','Keith','','MINORVEND',0);

INSERT INTO Vendor([No.],[Name],Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Vendor Group Code],Balance)
VALUES('10005','Corgi Plc','','','Corgi Factory','West Bromwich Ind. Est.','Birmingham','Keith','','MAJORVEND',0);

GO;
