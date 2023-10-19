USE [master]
GO
/****** Object:  Database [QLTTBCNTT]    Script Date: 10/19/2023 8:29:41 PM ******/
CREATE DATABASE [QLTTBCNTT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTTBCNTT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.TRHQUANMS\MSSQL\DATA\QLTTBCNTT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTTBCNTT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.TRHQUANMS\MSSQL\DATA\QLTTBCNTT_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLTTBCNTT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTTBCNTT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTTBCNTT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTTBCNTT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTTBCNTT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTTBCNTT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTTBCNTT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTTBCNTT] SET  MULTI_USER 
GO
ALTER DATABASE [QLTTBCNTT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTTBCNTT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTTBCNTT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTTBCNTT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTTBCNTT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTTBCNTT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTTBCNTT', N'ON'
GO
ALTER DATABASE [QLTTBCNTT] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLTTBCNTT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLTTBCNTT]
GO
/****** Object:  User [trhquantest]    Script Date: 10/19/2023 8:29:41 PM ******/
CREATE USER [trhquantest] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AccLogin]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccLogin](
	[idAcc] [int] IDENTITY(1,1) NOT NULL,
	[IDQuannhan] [int] NULL,
	[UserLogin] [nvarchar](50) NULL,
	[PassLogin] [nvarchar](50) NULL,
	[Active] [int] NOT NULL,
	[KindOfAcc] [int] NOT NULL,
	[TenQN] [nvarchar](50) NOT NULL,
	[CMTQD] [nvarchar](50) NOT NULL,
 CONSTRAINT [UC_AccLogin] UNIQUE NONCLUSTERED 
(
	[idAcc] ASC,
	[UserLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_Donvi]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_Donvi](
	[IdDonvi] [int] IDENTITY(1,1) NOT NULL,
	[Doi] [nvarchar](50) NULL,
	[TieuDoan] [nvarchar](50) NULL,
	[LuDoan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DM_Donvi] PRIMARY KEY CLUSTERED 
(
	[IdDonvi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_LoaiThietBi]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_LoaiThietBi](
	[IdLoaiTB] [int] IDENTITY(1,1) NOT NULL,
	[loai] [nvarchar](50) NULL,
 CONSTRAINT [PK_DM_LoaiThietBi] PRIMARY KEY CLUSTERED 
(
	[IdLoaiTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_QuanNhan]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_QuanNhan](
	[IDQuannhan] [int] IDENTITY(1,1) NOT NULL,
	[CMTQD] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Capbac] [nvarchar](50) NULL,
	[Chucvu] [nvarchar](50) NULL,
	[idDonvi] [int] NOT NULL,
 CONSTRAINT [PK_DM_QuanNhan] PRIMARY KEY CLUSTERED 
(
	[IDQuannhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_ThietBi]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_ThietBi](
	[IdThietBi] [int] IDENTITY(1,1) NOT NULL,
	[idLoaiTB] [int] NOT NULL,
	[TenTB] [nvarchar](50) NULL,
	[Seri] [nvarchar](50) NULL,
	[MAC] [nvarchar](50) NULL,
	[CoreCPU] [nvarchar](50) NULL,
	[RAM] [nvarchar](50) NULL,
	[HardDisk] [nvarchar](50) NULL,
	[Monitor] [nvarchar](50) NULL,
	[idQuannhan] [int] NULL,
	[idDonvi] [int] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[Kho] [int] NULL,
 CONSTRAINT [PK_DM_ThietBi] PRIMARY KEY CLUSTERED 
(
	[IdThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Donvi]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Donvi](
	[IdTBDonvi] [int] IDENTITY(1,1) NOT NULL,
	[idDonvi] [int] NOT NULL,
	[idThietbi] [int] NOT NULL,
	[DateBorrow] [nvarchar](50) NULL,
	[DateReturn] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_QN]    Script Date: 10/19/2023 8:29:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_QN](
	[IdTBQN] [int] IDENTITY(1,1) NOT NULL,
	[idQuannhan] [int] NOT NULL,
	[idThietbi] [int] NOT NULL,
	[DateBorrow] [nvarchar](50) NULL,
	[DateReturn] [nvarchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccLogin]  WITH CHECK ADD  CONSTRAINT [FK_AccLogin_DM_QuanNhan] FOREIGN KEY([IDQuannhan])
REFERENCES [dbo].[DM_QuanNhan] ([IDQuannhan])
GO
ALTER TABLE [dbo].[AccLogin] CHECK CONSTRAINT [FK_AccLogin_DM_QuanNhan]
GO
ALTER TABLE [dbo].[DM_QuanNhan]  WITH CHECK ADD  CONSTRAINT [FK_DM_QuanNhan_DM_Donvi] FOREIGN KEY([idDonvi])
REFERENCES [dbo].[DM_Donvi] ([IdDonvi])
GO
ALTER TABLE [dbo].[DM_QuanNhan] CHECK CONSTRAINT [FK_DM_QuanNhan_DM_Donvi]
GO
ALTER TABLE [dbo].[DM_ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_DM_ThietBi_DM_Donvi] FOREIGN KEY([idDonvi])
REFERENCES [dbo].[DM_Donvi] ([IdDonvi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DM_ThietBi] CHECK CONSTRAINT [FK_DM_ThietBi_DM_Donvi]
GO
ALTER TABLE [dbo].[DM_ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_DM_ThietBi_DM_LoaiThietBi] FOREIGN KEY([idLoaiTB])
REFERENCES [dbo].[DM_LoaiThietBi] ([IdLoaiTB])
GO
ALTER TABLE [dbo].[DM_ThietBi] CHECK CONSTRAINT [FK_DM_ThietBi_DM_LoaiThietBi]
GO
ALTER TABLE [dbo].[DM_ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_DM_ThietBi_DM_QuanNhan] FOREIGN KEY([idQuannhan])
REFERENCES [dbo].[DM_QuanNhan] ([IDQuannhan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DM_ThietBi] CHECK CONSTRAINT [FK_DM_ThietBi_DM_QuanNhan]
GO
ALTER TABLE [dbo].[TB_Donvi]  WITH CHECK ADD  CONSTRAINT [FK_TB_Donvi_DM_Donvi] FOREIGN KEY([idDonvi])
REFERENCES [dbo].[DM_Donvi] ([IdDonvi])
GO
ALTER TABLE [dbo].[TB_Donvi] CHECK CONSTRAINT [FK_TB_Donvi_DM_Donvi]
GO
ALTER TABLE [dbo].[TB_Donvi]  WITH CHECK ADD  CONSTRAINT [FK_TB_Donvi_DM_ThietBi] FOREIGN KEY([idThietbi])
REFERENCES [dbo].[DM_ThietBi] ([IdThietBi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TB_Donvi] CHECK CONSTRAINT [FK_TB_Donvi_DM_ThietBi]
GO
ALTER TABLE [dbo].[TB_QN]  WITH CHECK ADD  CONSTRAINT [FK_TB_QN_DM_QuanNhan1] FOREIGN KEY([idQuannhan])
REFERENCES [dbo].[DM_QuanNhan] ([IDQuannhan])
GO
ALTER TABLE [dbo].[TB_QN] CHECK CONSTRAINT [FK_TB_QN_DM_QuanNhan1]
GO
ALTER TABLE [dbo].[TB_QN]  WITH CHECK ADD  CONSTRAINT [FK_TB_QN_DM_ThietBi] FOREIGN KEY([idThietbi])
REFERENCES [dbo].[DM_ThietBi] ([IdThietBi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TB_QN] CHECK CONSTRAINT [FK_TB_QN_DM_ThietBi]
GO
USE [master]
GO
ALTER DATABASE [QLTTBCNTT] SET  READ_WRITE 
GO
