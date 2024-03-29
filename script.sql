USE [master]
GO
/****** Object:  Database [ProdDB]    Script Date: 18/09/2019 17:01:31 ******/
CREATE DATABASE [ProdDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProdDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProdDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProdDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProdDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProdDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProdDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProdDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProdDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProdDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProdDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProdDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProdDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProdDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProdDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProdDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProdDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProdDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProdDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProdDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProdDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProdDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProdDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProdDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProdDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProdDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProdDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProdDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProdDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProdDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProdDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProdDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProdDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProdDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProdDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProdDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProdDB', N'ON'
GO
ALTER DATABASE [ProdDB] SET QUERY_STORE = OFF
GO
USE [ProdDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/09/2019 17:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 18/09/2019 17:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[ProdutoID] [int] IDENTITY(1,1) NOT NULL,
	[ProdutoNome] [nvarchar](250) NOT NULL,
	[ProdutoPreco] [money] NOT NULL,
	[ProdutoEstoque] [int] NOT NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[ProdutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ProdDB] SET  READ_WRITE 
GO
