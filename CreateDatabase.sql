USE [master]
GO

/****** Object:  Database [CIB.PhoneBook]    Script Date: 2019-07-28 01:51:44 PM ******/
CREATE DATABASE [CIB.PhoneBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CIB.PhoneBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CIB.PhoneBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CIB.PhoneBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CIB.PhoneBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CIB.PhoneBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CIB.PhoneBook] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET ARITHABORT OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CIB.PhoneBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CIB.PhoneBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CIB.PhoneBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CIB.PhoneBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET RECOVERY FULL 
GO

ALTER DATABASE [CIB.PhoneBook] SET  MULTI_USER 
GO

ALTER DATABASE [CIB.PhoneBook] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CIB.PhoneBook] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CIB.PhoneBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CIB.PhoneBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CIB.PhoneBook] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CIB.PhoneBook] SET QUERY_STORE = OFF
GO

ALTER DATABASE [CIB.PhoneBook] SET  READ_WRITE 
GO


USE [CIB.PhoneBook]
GO

/****** Object:  Table [dbo].[Contacts]    Script Date: 2019-07-28 01:52:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Mobile] [varchar](10) NOT NULL,
	[WorkTelephone] [varchar](10) NULL,
	[DateCreated] [date] NOT NULL,
	[DateModified] [date] NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


