USE [master]
GO
/****** Object:  Database [Exam-Shaikhutdinov]    Script Date: 12.04.2024 10:59:55 ******/
CREATE DATABASE [Exam-Shaikhutdinov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Exam-Shaikhutdinov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\Exam-Shaikhutdinov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Exam-Shaikhutdinov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\Exam-Shaikhutdinov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Exam-Shaikhutdinov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET  MULTI_USER 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET QUERY_STORE = OFF
GO
USE [Exam-Shaikhutdinov]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12.04.2024 10:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 12.04.2024 10:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.04.2024 10:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12.04.2024 10:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12.04.2024 10:59:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin                                             ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Client                                            ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [RoleId]) VALUES (2, N'1                                                 ', N'1                                                 ', N'1                                                 ', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Exam-Shaikhutdinov] SET  READ_WRITE 
GO
