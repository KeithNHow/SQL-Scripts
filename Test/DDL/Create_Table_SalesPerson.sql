USE [Test]
GO

CREATE TABLE Salesperson
(
	[Code] nvarchar(10) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	[Bonus] decimal(38,20) NOT NULL,		
	[Date Created] datetime NOT NULL DEFAULT GetDate(),
	PRIMARY KEY CLUSTERED ([Code])
);

ALTER TABLE [SalesOrderHeader]
	ADD FOREIGN KEY([Salesperson Code]) REFERENCES Salesperson.[Code]

GO