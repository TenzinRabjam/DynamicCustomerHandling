USE [master]
GO
CREATE LOGIN [FourthUser] WITH PASSWORD=N'abc' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
USE [WideWorldImportersDW]
GO
CREATE USER [FourthUser] FOR LOGIN [FourthUser]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [FourthUser]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_datareader] ADD MEMBER [FourthUser]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [FourthUser]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [FourthUser]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_owner] ADD MEMBER [FourthUser]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [FourthUser]
GO
