USE [Test]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
	
SET NOCOUNT ON;

INSERT INTO CustomerGroup([Code],[Name])
VALUES('MAJORCUSTS','Major Customers'); 

INSERT INTO CustomerGroup([Code],[Name])
VALUES('MINORCUSTS','Minor Customers'); 

INSERT INTO CustomerGroup([Code],[Name])
VALUES('OTHERCUSTS','Other Customers'); 