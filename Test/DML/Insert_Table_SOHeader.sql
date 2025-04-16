USE [Test]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

INSERT INTO dbo.[SalesOrderHeader] ([No.],[Customer No.],[OrderAmount])
VALUES ('S0001','A0001',40.00)
INSERT INTO [SalesOrderHeader] ([No.],[Customer No.],[OrderAmount])
VALUES ('S0002','A0001',400.00)
INSERT INTO [SalesOrderHeader] ([No.],[Customer No.],[OrderAmount])
VALUES ('S0003','H0001',30.00)
INSERT INTO [SalesOrderHeader] ([No.],[Customer No.],[OrderAmount])
VALUES ('S0004','A0001',300.00)
INSERT INTO [SalesOrderHeader] ([No.],[Customer No.],[OrderAmount])
VALUES ('S0005','H0001',50.00)

GO


