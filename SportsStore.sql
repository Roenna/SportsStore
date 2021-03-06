USE [master]
GO
/****** Object:  Database [SportsStore]    Script Date: 2017-05-09 19:01:00 ******/
CREATE DATABASE [SportsStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportsStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SportsStore.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SportsStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SportsStore_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SportsStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportsStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportsStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportsStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportsStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportsStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportsStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportsStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SportsStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportsStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportsStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportsStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportsStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportsStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportsStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportsStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportsStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SportsStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportsStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportsStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportsStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportsStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportsStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportsStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportsStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SportsStore] SET  MULTI_USER 
GO
ALTER DATABASE [SportsStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportsStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportsStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportsStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SportsStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SportsStore]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2017-05-09 19:01:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Price] [decimal](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (1, N'Kajak', N'Łodka przeznaczona dla jednej osoby', N'Sporty wodne', CAST(275.22 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (2, N'Kamizelka ratunkowa', N'Chroni i dodaje uroku', N'Sporty wodne', CAST(49.95 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (3, N'Piłka', N'Zatwierdzone przez FIFA rozmiar i waga', N'Piłka nożna', CAST(19.50 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (4, N'Flagi narożne', N'Nadadza boiskowi uroku', N'Piłka nożna', CAST(34.78 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (5, N'Stadion', N'Składany stadion', N'Piłka nożna', CAST(79514.94 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (6, N'Czapka', N'Zwiększa efektywność mózgu', N'Szachy', CAST(16.00 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (7, N'Niestabilne krzesło', N'Zmniejsza szanse przeciwnika', N'Szachy', CAST(75.12 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (8, N'Ludzka szachownica', N'Inspirowana filmem', N'Szachy', CAST(187.25 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (9, N'Błyszczący król', N'Złoty z diamentami', N'Szachy', CAST(1289.33 AS Decimal(16, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
USE [master]
GO
ALTER DATABASE [SportsStore] SET  READ_WRITE 
GO
