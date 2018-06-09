USE [master]
GO
/****** Object:  Database [PetsDumb]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'PetsDumb')
BEGIN
CREATE DATABASE [PetsDumb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetsDumb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SHAULIS\MSSQL\DATA\PetsDumb.mdf' , SIZE = 401408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PetsDumb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SHAULIS\MSSQL\DATA\PetsDumb_log.ldf' , SIZE = 1712128KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE SQL_Latin1_General_CP1_CI_AS
END

GO
ALTER DATABASE [PetsDumb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
EXEC [PetsDumb].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [PetsDumb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetsDumb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetsDumb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetsDumb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetsDumb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetsDumb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetsDumb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetsDumb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetsDumb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetsDumb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetsDumb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetsDumb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetsDumb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetsDumb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetsDumb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PetsDumb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetsDumb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetsDumb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetsDumb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetsDumb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetsDumb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetsDumb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetsDumb] SET RECOVERY FULL 
GO
ALTER DATABASE [PetsDumb] SET  MULTI_USER 
GO
ALTER DATABASE [PetsDumb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetsDumb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetsDumb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetsDumb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PetsDumb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PetsDumb', N'ON'
GO
ALTER DATABASE [PetsDumb] SET ENCRYPTION ON
GO
ALTER DATABASE [PetsDumb] SET QUERY_STORE = OFF
GO
USE [PetsDumb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [PetsDumb_Admin]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'PetsDumb_Admin')
CREATE LOGIN [PetsDumb_Admin] WITH PASSWORD=N'mp8rpO0WEqnup4Vm9sELmN3h3B8CeJQjhVlVOcOrnbE=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [PetsDumb_Admin] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLTELEMETRY')
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLSERVERAGENT')
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\ReportServer')
CREATE LOGIN [NT SERVICE\ReportServer] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT Service\MSSQLSERVER')
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\NETWORK SERVICE]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\NETWORK SERVICE')
CREATE LOGIN [NT AUTHORITY\NETWORK SERVICE] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-HHVRCA6\jonat]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'DESKTOP-HHVRCA6\jonat')
CREATE LOGIN [DESKTOP-HHVRCA6\jonat] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_SSISServerCleanupJobLogin##]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_SSISServerCleanupJobLogin##')
CREATE LOGIN [##MS_SSISServerCleanupJobLogin##] WITH PASSWORD=N'Zs7JHm//1jPQPHZi0+idkbcvsTJNyYFhg4pFrBVfBX0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [##MS_SSISServerCleanupJobLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'Jftl2492m0ogEPwDTVD9c9ex0QcFnvutQuBxRP4rPj0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'K7E5PD6k/1Chp8gjVZ/NhlwmWdnqHlq12MZHhi+QJMo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/****** Object:  Login [l_certSignSmDetach]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'l_certSignSmDetach')
CREATE LOGIN [l_certSignSmDetach] FROM CERTIFICATE [_##PDW_SmDetachSigningCertificate##]
GO
/****** Object:  Login [##MS_SQLEnableSystemAssemblyLoadingUser##]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_SQLEnableSystemAssemblyLoadingUser##')
CREATE LOGIN [##MS_SQLEnableSystemAssemblyLoadingUser##] FROM ASYMMETRIC KEY [MS_SQLEnableSystemAssemblyLoadingKey]
GO
ALTER AUTHORIZATION ON DATABASE::[PetsDumb] TO [sa]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-HHVRCA6\jonat]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [l_certSignSmDetach]
GO
USE [PetsDumb]
GO
/****** Object:  User [PetsDumb_Admin]    Script Date: 2/11/2018 1:22:55 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'PetsDumb_Admin')
CREATE USER [PetsDumb_Admin] FOR LOGIN [PetsDumb_Admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [PetsDumb_Admin]
GO
GRANT CONNECT TO [PetsDumb_Admin] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Schema [app]    Script Date: 2/11/2018 1:22:56 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'app')
EXEC sys.sp_executesql N'CREATE SCHEMA [app] AUTHORIZATION [PetsDumb_Admin]'

GO
/****** Object:  Schema [arc]    Script Date: 2/11/2018 1:22:56 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'arc')
EXEC sys.sp_executesql N'CREATE SCHEMA [arc] AUTHORIZATION [PetsDumb_Admin]'

GO
/****** Object:  Schema [dim]    Script Date: 2/11/2018 1:22:56 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'dim')
EXEC sys.sp_executesql N'CREATE SCHEMA [dim] AUTHORIZATION [PetsDumb_Admin]'

GO
/****** Object:  Schema [inv]    Script Date: 2/11/2018 1:22:56 PM ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'inv')
EXEC sys.sp_executesql N'CREATE SCHEMA [inv] AUTHORIZATION [PetsDumb_Admin]'

GO
/****** Object:  Table [arc].[Members]    Script Date: 2/11/2018 1:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Members]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Members](
	[Mem_ID] [bigint] NOT NULL,
	[Zip_ID] [bigint] NOT NULL,
	[Ven_ID] [bigint] NULL,
	[Mem_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MiddleName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Suffix] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressLine1] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressLine2] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Members] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_Members]    Script Date: 2/11/2018 1:22:57 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[Members]') AND name = N'ix_Members')
CREATE CLUSTERED INDEX [ix_Members] ON [arc].[Members]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [app].[Members]    Script Date: 2/11/2018 1:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[app].[Members]') AND type in (N'U'))
BEGIN
CREATE TABLE [app].[Members](
	[Mem_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Zip_ID] [bigint] NOT NULL,
	[Ven_ID] [bigint] NULL,
	[Mem_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MiddleName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Suffix] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressLine1] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressLine2] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Members__ID] PRIMARY KEY CLUSTERED 
(
	[Mem_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Members] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [app].[Members] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[HolidayDiscount]    Script Date: 2/11/2018 1:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[HolidayDiscount]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[HolidayDiscount](
	[Hol_ID] [bigint] NOT NULL,
	[HolidayText] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Discount] [decimal](10, 5) NULL,
	[Active] [bit] NOT NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[HolidayDiscount] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_HolidayDiscount]    Script Date: 2/11/2018 1:22:57 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[HolidayDiscount]') AND name = N'ix_HolidayDiscount')
CREATE CLUSTERED INDEX [ix_HolidayDiscount] ON [arc].[HolidayDiscount]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [app].[HolidayDiscount]    Script Date: 2/11/2018 1:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[app].[HolidayDiscount]') AND type in (N'U'))
BEGIN
CREATE TABLE [app].[HolidayDiscount](
	[Hol_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HolidayText] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Discount] [decimal](10, 5) NULL,
	[Active] [bit] NOT NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__HolidayD__ID] PRIMARY KEY CLUSTERED 
(
	[Hol_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[HolidayDiscount] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [app].[HolidayDiscount] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[Vendors]    Script Date: 2/11/2018 1:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Vendors]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Vendors](
	[Ven_ID] [bigint] NOT NULL,
	[Ven_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Vendors] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_Vendors]    Script Date: 2/11/2018 1:22:57 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[Vendors]') AND name = N'ix_Vendors')
CREATE CLUSTERED INDEX [ix_Vendors] ON [arc].[Vendors]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [app].[Vendors]    Script Date: 2/11/2018 1:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[app].[Vendors]') AND type in (N'U'))
BEGIN
CREATE TABLE [app].[Vendors](
	[Ven_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ven_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Vendors__ID] PRIMARY KEY CLUSTERED 
(
	[Ven_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Vendors] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [app].[Vendors] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[Toys]    Script Date: 2/11/2018 1:22:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Toys]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Toys](
	[Toys_ID] [bigint] NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Toys_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Toys] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_Toys]    Script Date: 2/11/2018 1:22:57 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[Toys]') AND name = N'ix_Toys')
CREATE CLUSTERED INDEX [ix_Toys] ON [arc].[Toys]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [inv].[Toys]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[inv].[Toys]') AND type in (N'U'))
BEGIN
CREATE TABLE [inv].[Toys](
	[Toys_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Toys_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Toys__ID] PRIMARY KEY CLUSTERED 
(
	[Toys_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Toys] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [inv].[Toys] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[Food]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Food]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Food](
	[Food_ID] [bigint] NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Food_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Food] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_Food]    Script Date: 2/11/2018 1:22:58 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[Food]') AND name = N'ix_Food')
CREATE CLUSTERED INDEX [ix_Food] ON [arc].[Food]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [inv].[Food]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[inv].[Food]') AND type in (N'U'))
BEGIN
CREATE TABLE [inv].[Food](
	[Food_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Food_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Food__ID] PRIMARY KEY CLUSTERED 
(
	[Food_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Food] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [inv].[Food] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[Pets]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Pets]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Pets](
	[Pets_ID] [bigint] NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Pets_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Pets] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_Pets]    Script Date: 2/11/2018 1:22:58 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[Pets]') AND name = N'ix_Pets')
CREATE CLUSTERED INDEX [ix_Pets] ON [arc].[Pets]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [inv].[Pets]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[inv].[Pets]') AND type in (N'U'))
BEGIN
CREATE TABLE [inv].[Pets](
	[Pets_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Pets_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Pets__ID] PRIMARY KEY CLUSTERED 
(
	[Pets_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Pets] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [inv].[Pets] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[Supplies]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Supplies]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Supplies](
	[Sup_ID] [bigint] NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Supplies_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Supplies] TO  SCHEMA OWNER 
GO
/****** Object:  Index [ix_Supplies]    Script Date: 2/11/2018 1:22:58 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[arc].[Supplies]') AND name = N'ix_Supplies')
CREATE CLUSTERED INDEX [ix_Supplies] ON [arc].[Supplies]
(
	[ValidTo] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [inv].[Supplies]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[inv].[Supplies]') AND type in (N'U'))
BEGIN
CREATE TABLE [inv].[Supplies](
	[Sup_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ven_ID] [bigint] NOT NULL,
	[Supplies_Name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Discontinued] [bit] NULL,
	[ActiveDate] [int] NULL,
	[InactiveDate] [int] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Supplies__ID] PRIMARY KEY CLUSTERED 
(
	[Sup_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Supplies] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [inv].[Supplies] TO  SCHEMA OWNER 
GO
/****** Object:  Table [arc].[Purchases]    Script Date: 2/11/2018 1:22:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[arc].[Purchases]') AND type in (N'U'))
BEGIN
CREATE TABLE [arc].[Purchases](
	[Pur_ID] [bigint] NOT NULL,
	[Zip_ID] [bigint] NOT NULL,
	[Mem_ID] [bigint] NULL,
	[Food_ID] [bigint] NULL,
	[Pets_ID] [bigint] NULL,
	[Sup_ID] [bigint] NULL,
	[Toys_ID] [bigint] NULL,
	[Date_ID] [int] NOT NULL,
	[Time_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[price] [money] NULL,
	[ValidFrom] [datetime2](2) NOT NULL,
	[ValidTo] [datetime2](2) NOT NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [arc].[Purchases] TO  SCHEMA OWNER 
GO
/****** Object:  Table [app].[Purchases]    Script Date: 2/11/2018 1:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[app].[Purchases]') AND type in (N'U'))
BEGIN
CREATE TABLE [app].[Purchases](
	[Pur_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Zip_ID] [bigint] NOT NULL,
	[Mem_ID] [bigint] NULL,
	[Food_ID] [bigint] NULL,
	[Pets_ID] [bigint] NULL,
	[Sup_ID] [bigint] NULL,
	[Toys_ID] [bigint] NULL,
	[Date_ID] [int] NOT NULL,
	[Time_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[price] [money] NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK__Purchase__ID] PRIMARY KEY CLUSTERED 
(
	[Pur_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [arc].[Purchases] , DATA_CONSISTENCY_CHECK = ON )
)
END
GO
ALTER AUTHORIZATION ON [app].[Purchases] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[GetEasterHolidays]    Script Date: 2/11/2018 1:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEasterHolidays]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[GetEasterHolidays](@year INT) 
RETURNS TABLE
WITH SCHEMABINDING
AS 
RETURN 
(
  WITH x AS 
  (
    SELECT [Date] = CONVERT(DATE, RTRIM(@year) + ''0'' + RTRIM([Month]) 
        + RIGHT(''0'' + RTRIM([Day]),2))
      FROM (SELECT [Month], [Day] = DaysToSunday + 28 - (31 * ([Month] / 4))
      FROM (SELECT [Month] = 3 + (DaysToSunday + 40) / 44, DaysToSunday
      FROM (SELECT DaysToSunday = paschal - ((@year + @year / 4 + paschal - 13) % 7)
      FROM (SELECT paschal = epact - (epact / 28)
      FROM (SELECT epact = (24 + 19 * (@year % 19)) % 30) 
        AS epact) AS paschal) AS dts) AS m) AS d
  )
  SELECT [Date], HolidayName = ''Easter Sunday'' FROM x
    UNION ALL SELECT DATEADD(DAY,-2,[Date]), ''Good Friday''   FROM x
    UNION ALL SELECT DATEADD(DAY, 1,[Date]), ''Easter Monday'' FROM x
);' 
END

GO
ALTER AUTHORIZATION ON [dbo].[GetEasterHolidays] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dim].[Date]    Script Date: 2/11/2018 1:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dim].[Date]') AND type in (N'U'))
BEGIN
CREATE TABLE [dim].[Date](
	[Date_ID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Day] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DaySuffix] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DayOfWeek] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DOWInMonth] [tinyint] NOT NULL,
	[DayOfYear] [int] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[Month] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MonthName] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Year] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StandardDate] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__Date__ID] PRIMARY KEY CLUSTERED 
(
	[Date_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dim].[Date] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dim].[TaxRates]    Script Date: 2/11/2018 1:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dim].[TaxRates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dim].[TaxRates](
	[Tax_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Zip_ID] [bigint] NOT NULL,
	[TaxRegionName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StateRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EstimatedCombinedRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EstimatedCountyRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EstimatedCityRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EstimatedSpecialRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RiskLevel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__TaxRates__ID] PRIMARY KEY CLUSTERED 
(
	[Tax_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dim].[TaxRates] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dim].[Time]    Script Date: 2/11/2018 1:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dim].[Time]') AND type in (N'U'))
BEGIN
CREATE TABLE [dim].[Time](
	[Time_ID] [int] IDENTITY(1,1) NOT NULL,
	[Time] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Hour] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MilitaryHour] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Minute] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Second] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AmPm] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StandardTime] [char](11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__Time__ID] PRIMARY KEY CLUSTERED 
(
	[Time_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dim].[Time] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dim].[ZipCode]    Script Date: 2/11/2018 1:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dim].[ZipCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dim].[ZipCode](
	[Zip_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ZipCode] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Latitude] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Longitude] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[City] [varchar](26) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StateProvince] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[County] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__ZipCode__ID] PRIMARY KEY CLUSTERED 
(
	[Zip_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dim].[ZipCode] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NonClusteredColumnStoreIndex-20180210-090548]    Script Date: 2/11/2018 1:22:59 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dim].[Date]') AND name = N'NonClusteredColumnStoreIndex-20180210-090548')
CREATE NONCLUSTERED COLUMNSTORE INDEX [NonClusteredColumnStoreIndex-20180210-090548] ON [dim].[Date]
(
	[Date_ID],
	[Date],
	[Day],
	[DaySuffix],
	[DayOfWeek],
	[DOWInMonth],
	[DayOfYear],
	[WeekOfYear],
	[WeekOfMonth],
	[Month],
	[MonthName],
	[Quarter],
	[QuarterName],
	[Year],
	[StandardDate]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NonClusteredColumnStoreIndex-20180210-085954]    Script Date: 2/11/2018 1:22:59 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dim].[TaxRates]') AND name = N'NonClusteredColumnStoreIndex-20180210-085954')
CREATE NONCLUSTERED COLUMNSTORE INDEX [NonClusteredColumnStoreIndex-20180210-085954] ON [dim].[TaxRates]
(
	[Tax_ID],
	[Zip_ID],
	[TaxRegionName],
	[StateRate],
	[EstimatedCombinedRate],
	[EstimatedCountyRate],
	[EstimatedCityRate],
	[EstimatedSpecialRate]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NonClusteredColumnStoreIndex-20180210-090035]    Script Date: 2/11/2018 1:22:59 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dim].[Time]') AND name = N'NonClusteredColumnStoreIndex-20180210-090035')
CREATE NONCLUSTERED COLUMNSTORE INDEX [NonClusteredColumnStoreIndex-20180210-090035] ON [dim].[Time]
(
	[Time_ID],
	[Time],
	[Hour],
	[MilitaryHour],
	[Minute],
	[Second],
	[AmPm],
	[StandardTime]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NonClusteredColumnStoreIndex-20180210-090100]    Script Date: 2/11/2018 1:22:59 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dim].[ZipCode]') AND name = N'NonClusteredColumnStoreIndex-20180210-090100')
CREATE NONCLUSTERED COLUMNSTORE INDEX [NonClusteredColumnStoreIndex-20180210-090100] ON [dim].[ZipCode]
(
	[Zip_ID],
	[ZipCode],
	[Latitude],
	[Longitude],
	[City],
	[StateProvince],
	[County]
)WITH (DROP_EXISTING = OFF, COMPRESSION_DELAY = 0) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_HolidayD_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[app].[HolidayDiscount]'))
ALTER TABLE [app].[HolidayDiscount]  WITH CHECK ADD  CONSTRAINT [FK_HolidayD_ActiveDate] FOREIGN KEY([ActiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_HolidayD_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[app].[HolidayDiscount]'))
ALTER TABLE [app].[HolidayDiscount] CHECK CONSTRAINT [FK_HolidayD_ActiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_HolidayD_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[app].[HolidayDiscount]'))
ALTER TABLE [app].[HolidayDiscount]  WITH CHECK ADD  CONSTRAINT [FK_HolidayD_InactiveDate] FOREIGN KEY([InactiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_HolidayD_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[app].[HolidayDiscount]'))
ALTER TABLE [app].[HolidayDiscount] CHECK CONSTRAINT [FK_HolidayD_InactiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Members_Ven]') AND parent_object_id = OBJECT_ID(N'[app].[Members]'))
ALTER TABLE [app].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Ven] FOREIGN KEY([Ven_ID])
REFERENCES [app].[Vendors] ([Ven_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Members_Ven]') AND parent_object_id = OBJECT_ID(N'[app].[Members]'))
ALTER TABLE [app].[Members] CHECK CONSTRAINT [FK_Members_Ven]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Members_Zip]') AND parent_object_id = OBJECT_ID(N'[app].[Members]'))
ALTER TABLE [app].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Zip] FOREIGN KEY([Zip_ID])
REFERENCES [dim].[ZipCode] ([Zip_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Members_Zip]') AND parent_object_id = OBJECT_ID(N'[app].[Members]'))
ALTER TABLE [app].[Members] CHECK CONSTRAINT [FK_Members_Zip]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Date]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_Date] FOREIGN KEY([Date_ID])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Date]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_Date]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Food]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_Food] FOREIGN KEY([Food_ID])
REFERENCES [inv].[Food] ([Food_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Food]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_Food]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Mem]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_Mem] FOREIGN KEY([Mem_ID])
REFERENCES [app].[Members] ([Mem_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Mem]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_Mem]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Pets]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH NOCHECK ADD  CONSTRAINT [FK_Purchases_Pets] FOREIGN KEY([Pets_ID])
REFERENCES [inv].[Pets] ([Pets_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Pets]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] NOCHECK CONSTRAINT [FK_Purchases_Pets]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Sup]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_Sup] FOREIGN KEY([Sup_ID])
REFERENCES [inv].[Supplies] ([Sup_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Sup]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_Sup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Time]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_Time] FOREIGN KEY([Time_ID])
REFERENCES [dim].[Time] ([Time_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Time]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_Time]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Toys]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_Toys] FOREIGN KEY([Toys_ID])
REFERENCES [inv].[Toys] ([Toys_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_Toys]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_Toys]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_ZipCode]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases]  WITH CHECK ADD  CONSTRAINT [FK_Purchases_ZipCode] FOREIGN KEY([Zip_ID])
REFERENCES [dim].[ZipCode] ([Zip_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[app].[FK_Purchases_ZipCode]') AND parent_object_id = OBJECT_ID(N'[app].[Purchases]'))
ALTER TABLE [app].[Purchases] CHECK CONSTRAINT [FK_Purchases_ZipCode]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dim].[FK_TaxRates_Zip]') AND parent_object_id = OBJECT_ID(N'[dim].[TaxRates]'))
ALTER TABLE [dim].[TaxRates]  WITH CHECK ADD  CONSTRAINT [FK_TaxRates_Zip] FOREIGN KEY([Zip_ID])
REFERENCES [dim].[ZipCode] ([Zip_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dim].[FK_TaxRates_Zip]') AND parent_object_id = OBJECT_ID(N'[dim].[TaxRates]'))
ALTER TABLE [dim].[TaxRates] CHECK CONSTRAINT [FK_TaxRates_Zip]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Food_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Food]'))
ALTER TABLE [inv].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_ActiveDate] FOREIGN KEY([ActiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Food_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Food]'))
ALTER TABLE [inv].[Food] CHECK CONSTRAINT [FK_Food_ActiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Food_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Food]'))
ALTER TABLE [inv].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_InactiveDate] FOREIGN KEY([InactiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Food_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Food]'))
ALTER TABLE [inv].[Food] CHECK CONSTRAINT [FK_Food_InactiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Food_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Food]'))
ALTER TABLE [inv].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Ven] FOREIGN KEY([Ven_ID])
REFERENCES [app].[Vendors] ([Ven_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Food_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Food]'))
ALTER TABLE [inv].[Food] CHECK CONSTRAINT [FK_Food_Ven]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Pets_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Pets]'))
ALTER TABLE [inv].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_ActiveDate] FOREIGN KEY([ActiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Pets_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Pets]'))
ALTER TABLE [inv].[Pets] CHECK CONSTRAINT [FK_Pets_ActiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Pets_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Pets]'))
ALTER TABLE [inv].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_InactiveDate] FOREIGN KEY([InactiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Pets_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Pets]'))
ALTER TABLE [inv].[Pets] CHECK CONSTRAINT [FK_Pets_InactiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Pets_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Pets]'))
ALTER TABLE [inv].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Ven] FOREIGN KEY([Ven_ID])
REFERENCES [app].[Vendors] ([Ven_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Pets_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Pets]'))
ALTER TABLE [inv].[Pets] CHECK CONSTRAINT [FK_Pets_Ven]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Supplies_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Supplies]'))
ALTER TABLE [inv].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_ActiveDate] FOREIGN KEY([ActiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Supplies_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Supplies]'))
ALTER TABLE [inv].[Supplies] CHECK CONSTRAINT [FK_Supplies_ActiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Supplies_InctiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Supplies]'))
ALTER TABLE [inv].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_InctiveDate] FOREIGN KEY([InactiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Supplies_InctiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Supplies]'))
ALTER TABLE [inv].[Supplies] CHECK CONSTRAINT [FK_Supplies_InctiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Supplies_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Supplies]'))
ALTER TABLE [inv].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Ven] FOREIGN KEY([Ven_ID])
REFERENCES [app].[Vendors] ([Ven_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Supplies_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Supplies]'))
ALTER TABLE [inv].[Supplies] CHECK CONSTRAINT [FK_Supplies_Ven]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Toys_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Toys]'))
ALTER TABLE [inv].[Toys]  WITH CHECK ADD  CONSTRAINT [FK_Toys_ActiveDate] FOREIGN KEY([ActiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Toys_ActiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Toys]'))
ALTER TABLE [inv].[Toys] CHECK CONSTRAINT [FK_Toys_ActiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Toys_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Toys]'))
ALTER TABLE [inv].[Toys]  WITH CHECK ADD  CONSTRAINT [FK_Toys_InactiveDate] FOREIGN KEY([InactiveDate])
REFERENCES [dim].[Date] ([Date_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Toys_InactiveDate]') AND parent_object_id = OBJECT_ID(N'[inv].[Toys]'))
ALTER TABLE [inv].[Toys] CHECK CONSTRAINT [FK_Toys_InactiveDate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Toys_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Toys]'))
ALTER TABLE [inv].[Toys]  WITH CHECK ADD  CONSTRAINT [FK_Toys_Ven] FOREIGN KEY([Ven_ID])
REFERENCES [app].[Vendors] ([Ven_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[inv].[FK_Toys_Ven]') AND parent_object_id = OBJECT_ID(N'[inv].[Toys]'))
ALTER TABLE [inv].[Toys] CHECK CONSTRAINT [FK_Toys_Ven]
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , NULL,NULL, NULL,NULL, NULL,NULL))
EXEC [PetsDumb].sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Not a PetSmart affiliate.' 
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'FUNCTION',N'GetEasterHolidays', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Returns Easter Holidays.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'FUNCTION',@level1name=N'GetEasterHolidays'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'HolidayDiscount', N'COLUMN',N'HolidayText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holiday name text.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'HolidayDiscount', @level2type=N'COLUMN',@level2name=N'HolidayText'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'HolidayDiscount', N'COLUMN',N'Active'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Active, 0 = Inactive.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'HolidayDiscount', @level2type=N'COLUMN',@level2name=N'Active'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'HolidayDiscount', N'COLUMN',N'ActiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'HolidayDiscount', @level2type=N'COLUMN',@level2name=N'ActiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'HolidayDiscount', N'COLUMN',N'InactiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'HolidayDiscount', @level2type=N'COLUMN',@level2name=N'InactiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'HolidayDiscount', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracks Holidays and pricing discounts.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'HolidayDiscount'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Members', N'COLUMN',N'Mem_Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User name.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Members', @level2type=N'COLUMN',@level2name=N'Mem_Name'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Members', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracks users who wish to become members with the sale system.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Members'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Zip_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Must know location of purchase for tax and shipping.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Zip_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Mem_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does not need to be a member to make a purchase.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Mem_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Food_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does not need to be a Food item when purchased.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Food_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Pets_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does not need to be a Pets item when purchased.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Pets_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Sup_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does not need to be a Supplies item when purchased.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Sup_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Toys_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Does not need to be a Toys item when purchased.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Toys_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Date_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Must know date of purchase.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Date_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Time_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Must know time of purchase.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Time_ID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Must know how much of item has been purchased for inventory.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', N'COLUMN',N'price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Left NULL to handle outliers. (Refunds, gifts.)' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases', @level2type=N'COLUMN',@level2name=N'price'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Purchases', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracks purchases made, maps back to other tables to maintain data integrity.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Purchases'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Vendors', N'COLUMN',N'Ven_Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Must know name of vendor.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Vendors', @level2type=N'COLUMN',@level2name=N'Ven_Name'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'app', N'TABLE',N'Vendors', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracking for vendors.' , @level0type=N'SCHEMA',@level0name=N'app', @level1type=N'TABLE',@level1name=N'Vendors'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Food', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Food. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Food'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'HolidayDiscount', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for HolidayDiscount. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'HolidayDiscount'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Members', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Members. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Members'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Pets', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Pets. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Pets'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Purchases', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Purchases. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Purchases'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Supplies', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Supplies. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Supplies'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Toys', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Toys. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Toys'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'arc', N'TABLE',N'Vendors', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archive temporal table for Vendors. Later used for Data Warehousing / OLAP analytics.' , @level0type=N'SCHEMA',@level0name=N'arc', @level1type=N'TABLE',@level1name=N'Vendors'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'Date', N'INDEX',N'NonClusteredColumnStoreIndex-20180210-090548'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'
The table will not change often, this will enhance the performance when referencing this table greatly.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'INDEX',@level2name=N'NonClusteredColumnStoreIndex-20180210-090548'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'Date', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension table for dates.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'Date'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'TaxRates', N'INDEX',N'NonClusteredColumnStoreIndex-20180210-085954'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The table will not change often, this will enhance the performance when referencing this table greatly.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'TaxRates', @level2type=N'INDEX',@level2name=N'NonClusteredColumnStoreIndex-20180210-085954'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'TaxRates', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension table for tax rates.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'TaxRates'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'Time', N'INDEX',N'NonClusteredColumnStoreIndex-20180210-090035'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The table will not change often, this will enhance the performance when referencing this table greatly.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'Time', @level2type=N'INDEX',@level2name=N'NonClusteredColumnStoreIndex-20180210-090035'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'Time', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension table for time.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'Time'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'ZipCode', N'INDEX',N'NonClusteredColumnStoreIndex-20180210-090100'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The table will not change often, this will enhance the performance when referencing this table greatly.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'ZipCode', @level2type=N'INDEX',@level2name=N'NonClusteredColumnStoreIndex-20180210-090100'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dim', N'TABLE',N'ZipCode', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension table for zip codes.' , @level0type=N'SCHEMA',@level0name=N'dim', @level1type=N'TABLE',@level1name=N'ZipCode'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Food', N'COLUMN',N'Discontinued'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Discontinued, 0 = Continued.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Food', @level2type=N'COLUMN',@level2name=N'Discontinued'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Food', N'COLUMN',N'ActiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Food', @level2type=N'COLUMN',@level2name=N'ActiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Food', N'COLUMN',N'InactiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Food', @level2type=N'COLUMN',@level2name=N'InactiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Food', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inventory table for food.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Food'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Pets', N'COLUMN',N'Discontinued'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Discontinued, 0 = Continued.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Pets', @level2type=N'COLUMN',@level2name=N'Discontinued'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Pets', N'COLUMN',N'ActiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Pets', @level2type=N'COLUMN',@level2name=N'ActiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Pets', N'COLUMN',N'InactiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Pets', @level2type=N'COLUMN',@level2name=N'InactiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Pets', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inventory table for pets.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Pets'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Supplies', N'COLUMN',N'Quantity'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Discontinued, 0 = Continued.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Supplies', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Supplies', N'COLUMN',N'ActiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Supplies', @level2type=N'COLUMN',@level2name=N'ActiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Supplies', N'COLUMN',N'InactiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Supplies', @level2type=N'COLUMN',@level2name=N'InactiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Supplies', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inventory table for supplies.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Supplies'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Toys', N'COLUMN',N'Discontinued'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = Discontinued, 0 = Continued.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Toys', @level2type=N'COLUMN',@level2name=N'Discontinued'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Toys', N'COLUMN',N'ActiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Toys', @level2type=N'COLUMN',@level2name=N'ActiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Toys', N'COLUMN',N'InactiveDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allows faster OLTP reference for figuring out price and inventory.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Toys', @level2type=N'COLUMN',@level2name=N'InactiveDate'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'inv', N'TABLE',N'Toys', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inventory table for toys.' , @level0type=N'SCHEMA',@level0name=N'inv', @level1type=N'TABLE',@level1name=N'Toys'
GO
USE [master]
GO
ALTER DATABASE [PetsDumb] SET  READ_WRITE 
GO
