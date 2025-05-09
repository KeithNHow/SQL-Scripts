USE [Test]
GO

CREATE TABLE Customer
(
	[No.] nvarchar(20) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[Search] nvarchar(50) NOT NULL,
	[Name2] nvarchar(50) NOT NULL,
	[Address1] nvarchar(50) NOT Null,
	[Address2] nvarchar(50) NOT NULL,
	[City] nvarchar(30) NOT NULL,
	[Contact] nvarchar(50) NOT NULL,
	[Phone_Number] nvarchar(30) NOT NULL,
	[Customer Group Code] nvarchar(20) NOT NULL,
	[Balance] decimal(38,20) NOT NULL,		
	[Date Created] datetime NOT NULL DEFAULT GetDate(),
	PRIMARY KEY CLUSTERED ([No.])
);
CREATE TABLE Vendor
(
	[No.] nvarchar(20) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[Search] nvarchar(50) NOT NULL,
	[Name2] nvarchar(50) NOT NULL,
	[Address1] nvarchar(50) NOT Null,
	[Address2] nvarchar(50) NOT NULL,
	[City] nvarchar(30) NOT NULL,
	[Contact] nvarchar(50) NOT NULL,
	[Phone_Number] nvarchar(30) NOT NULL,
	[Vendor Group Code] nvarchar(20) NOT NULL,
	[Balance] decimal(38,20) NOT NULL,
	[Date Created] datetime NOT NULL DEFAULT GetDate(),
	PRIMARY KEY CLUSTERED ([No.])
);
CREATE TABLE Item
(
	[No.] nvarchar(20) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	PRIMARY KEY CLUSTERED ([No.])	 
);
CREATE TABLE CustomerGroup
(
	[Code] nvarchar(20) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[Date Created] datetime NOT NULL DEFAULT GetDate(),
	PRIMARY KEY CLUSTERED ([Code])
);
CREATE TABLE VendorGroup
(
	[Code] nvarchar(20) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[Date Created] datetime NOT NULL DEFAULT GetDate(),
	PRIMARY KEY CLUSTERED ([Code])
);

CREATE INDEX CustNameIdx ON Customer(Name);
CREATE INDEX VendNameIdx ON Vendor(Name);

ALTER TABLE Customer
	ADD FOREIGN KEY([Customer Group Code]) REFERENCES CustomerGroup(Code); 

ALTER TABLE Vendor
	ADD FOREIGN KEY([Vendor Group Code]) REFERENCES VendorGroup(Code); 

CREATE TABLE SalesOrderHeader
(
	[No.] nvarchar(20) NOT NULL,
	[Name] nvarchar(50) NOT NULL, 
	[Customer No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES Customer([No.]),
	[Contact] nvarchar(50) NOT NULL,
	[Sales Amount] decimal(38,20) NOT NULL,
	[Salesperson Code] nvarchar(20),
	PRIMARY KEY CLUSTERED ([No.])
);
CREATE TABLE SalesOrderLine
(
	[No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES SalesOrderHeader([No.]),
	[Line No.] int NOT NULL IDENTITY(10000,10000),
	[Item No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES Item([No.]),
	[Item Name] nvarchar(50) NOT NULL, 
	[Quantity] decimal(38,20) NOT NULL,
	[Unit Price] decimal(38,20) NOT NULL,
	[LineAmount] decimal(38,20) NOT NULL,
	[VAT Code] nvarchar(20) NOT NULL,	
	PRIMARY KEY CLUSTERED ([No.],[Line No.])
);
CREATE TABLE PurchOrderHeader
(
	[No.] [int] NOT NULL IDENTITY(1000,10),
	[Vendor No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES [Vendor] ([No.]),
	[OrderAmount] decimal(38,20) NOT NULL,
    PRIMARY KEY CLUSTERED ([No.])
);
CREATE TABLE PurchOrderLine
(
	[No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES SalesOrderHeader([No.]),
	[Line No.] int NOT NULL IDENTITY(10000,10000),
	[Item No.] nvarchar(20) NOT NULL FOREIGN KEY REFERENCES Item([No.]),
	[Item Name] nvarchar(50) NOT NULL, 
	[Quantity] decimal(38,20) NOT NULL,
	[Unit Price] decimal(38,20) NOT NULL,
	[LineAmount] decimal(38,20) NOT NULL,
	[VAT Code] nvarchar(20) NOT NULL,	
	PRIMARY KEY CLUSTERED ([No.],[Line No.])
);
ALTER TABLE SalesOrderLine
    ADD FOREIGN KEY([Code]) REFERENCES SalesOrderHeader([Salesperson Code])