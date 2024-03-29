USE [master]
GO
/****** Object:  Database [Auction_Project]    Script Date: 18/12/2019 10:32:03 am ******/
CREATE DATABASE [Auction_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Auction_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Auction_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Auction_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Auction_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Auction_Project] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Auction_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Auction_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Auction_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Auction_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Auction_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Auction_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Auction_Project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Auction_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Auction_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Auction_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Auction_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Auction_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Auction_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Auction_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Auction_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Auction_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Auction_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Auction_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Auction_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Auction_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Auction_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Auction_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Auction_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Auction_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Auction_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Auction_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Auction_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Auction_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Auction_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Auction_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Auction_Project] SET QUERY_STORE = OFF
GO
USE [Auction_Project]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18/12/2019 10:32:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cat_id] [int] IDENTITY(1,1) NOT NULL,
	[Cat_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemD]    Script Date: 18/12/2019 10:32:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemD](
	[Id] [int] NOT NULL,
	[ItemN] [nvarchar](50) NULL,
 CONSTRAINT [PK_ItemD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 18/12/2019 10:32:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Item_id] [int] IDENTITY(1,1) NOT NULL,
	[Item_title] [nvarchar](50) NULL,
	[Item_Description] [nvarchar](50) NULL,
	[Bid_Status] [nvarchar](50) NULL,
	[Bid_Sdate] [int] NULL,
	[Bid_Edate] [int] NULL,
	[Bid_Increament] [int] NULL,
	[Min_Bid] [int] NULL,
	[Cat_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/12/2019 10:32:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](50) NULL,
	[User_Email] [nvarchar](50) NULL,
	[User_Password] [nvarchar](50) NULL,
	[Items_Uploaded] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Auction_Project] SET  READ_WRITE 
GO
