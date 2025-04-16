USE [Test]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

	
SET NOCOUNT ON;
	 
INSERT INTO Customer([No.],Name,Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Customer Group Code],Balance,[Date created])
VALUES('10005','Kids Ur Us','Kids Ur Us','','2 North Street','','Guildford','John','','MAJORCUSTS',0,GETDATE()); 

INSERT INTO Customer([No.],Name,Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Customer Group Code],Balance,[Date Created])
VALUES('10006','PC World','PC World','','20 High Street','','Oxford','Peter','','MAJORCUSTS',0,GETDATE()); 

INSERT INTO Customer([No.],Name,Search,Name2,Address1,Address2,City,Contact,Phone_Number,[Customer Group Code],Balance,[Date Created])
VALUES('10007','ASDA','ASDA','','10 High Street','','Milton Keynes','Paul','','MINORCUSTS',0,GETDATE()); 

GO


