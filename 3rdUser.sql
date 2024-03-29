USE [master]
GO
CREATE LOGIN [ThirdUser] WITH PASSWORD=N'abc' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [ThirdUser]
GO
use [MafiaWorks]

GO
use [master]

GO
USE [MafiaWorks]
GO
CREATE USER [ThirdUser] FOR LOGIN [ThirdUser]
GO
USE [MafiaWorks]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [ThirdUser]
GO
USE [MafiaWorks]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [ThirdUser]
GO
USE [MafiaWorks]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ThirdUser]
GO
USE [MafiaWorks]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ThirdUser]
GO
USE [MafiaWorks]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [ThirdUser]
GO
