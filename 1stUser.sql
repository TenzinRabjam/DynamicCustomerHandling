USE [master]
GO
CREATE LOGIN [FirstUser] WITH PASSWORD=N'Tseringdolkar1971!' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
use [WideWorldImporters]

GO
use [master]

GO
USE [WideWorldImporters]
GO
CREATE USER [FirstUser] FOR LOGIN [FirstUser]
GO
USE [WideWorldImporters]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [FirstUser]
GO
