USE [Test]
GO

CREATE TABLE Customer
(
	[No.] nvarchar(20) NOT NULL PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[Search] nvarchar(50) NOT NULL,
	[Name2] nvarchar(50) NOT NULL,
	[Address1] nvarchar(50) NOT Null,
	[Address2] nvarchar(50) NOT NULL,
	[City] nvarchar(30) NOT NULL,
	[Contact] nvarchar(50) NOT NULL,
	[Phone_Number] nvarchar(30) NOT NULL,
	[Customer Group Code] nvarchar(20) NOT NULL,		
	[Date Created] DateTime NOT NULL DEFAULT GetDate()
);
CREATE TABLE Vendor
(
	[No.] nvarchar(20) NOT NULL PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[Search] nvarchar(50) NOT NULL,
	[Name2] nvarchar(50) NOT NULL,
	[Address1] nvarchar(50) NOT Null,
	[Address2] nvarchar(50) NOT NULL,
	[City] nvarchar(30) NOT NULL,
	[Contact] nvarchar(50) NOT NULL,
	[Phone_Number] nvarchar(30) NOT NULL,
	[Vendor Group Code] nvarchar(20) NOT NULL,
	[Date Created] DateTime NOT NULL DEFAULT GetDate()
);
CREATE TABLE Item
(
	[No.] nvarchar(20) NOT NULL PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,	 
);
CREATE TABLE CustomerGroup
(
	[Code] nvarchar(20) NOT NULL PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[Date Created] DateTime NOT NULL DEFAULT GetDate()
);
CREATE TABLE VendorGroup
(
	[Code] nvarchar(20) NOT NULL PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[Date Created] DateTime NOT NULL DEFAULT GetDate()
);

CREATE INDEX CustNameIdx ON Customer(Name);
CREATE INDEX VendNameIdx ON Vendor(Name);

ALTER TABLE Customer
	ADD FOREIGN KEY([Customer Group Code]) REFERENCES CustomerGroup(Code); 

ALTER TABLE Vendor
	ADD FOREIGN KEY([Vendor Group Code]) REFERENCES VendorGroup(Code); 

CREATE TABLE SalesOrderHeader
(
	[No.] nvarchar(20) NOT NULL PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL, 
	[Customer No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES Customer([No.]),
	[Contact] nvarchar(50) NOT NULL,
	[SalesAmount] decimal(38,20) NOT NULL
);
CREATE TABLE SalesOrderLine
(
	[No.] nvarchar(20) NOT NULL,
	[Line No.] int NOT NULL,
	[Item No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES Item([No.]),
	[Item Name] nvarchar(50) NOT NULL, 
	[Quantity] decimal(38,20) NOT NULL,
	[Unit Price] decimal(38,20) NOT NULL,
	[LineAmount] decimal(38,20) NOT NULL,	
	PRIMARY KEY ([No.],[Line No.])
);

GO