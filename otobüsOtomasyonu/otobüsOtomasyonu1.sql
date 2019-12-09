USE [master]
GO
/****** Object:  Database [otobusotomasyonu]    Script Date: 5.05.2017 03:52:59 ******/
CREATE DATABASE [otobusotomasyonu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'otobusotomasyonu', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.A\MSSQL\DATA\otobusotomasyonu.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'otobusotomasyonu_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.A\MSSQL\DATA\otobusotomasyonu_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [otobusotomasyonu] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [otobusotomasyonu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [otobusotomasyonu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET ARITHABORT OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [otobusotomasyonu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [otobusotomasyonu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [otobusotomasyonu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [otobusotomasyonu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [otobusotomasyonu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [otobusotomasyonu] SET  MULTI_USER 
GO
ALTER DATABASE [otobusotomasyonu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [otobusotomasyonu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [otobusotomasyonu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [otobusotomasyonu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [otobusotomasyonu]
GO
/****** Object:  User [emre]    Script Date: 5.05.2017 03:52:59 ******/
CREATE USER [emre] FOR LOGIN [emre] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[cinsiyet]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cinsiyet](
	[cinsiyetID] [int] IDENTITY(1,1) NOT NULL,
	[cinsiyetAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_cinsiyet] PRIMARY KEY CLUSTERED 
(
	[cinsiyetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dakika]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dakika](
	[dakikaID] [int] IDENTITY(1,1) NOT NULL,
	[dakikaAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_dakika] PRIMARY KEY CLUSTERED 
(
	[dakikaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[durum]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[durum](
	[durumID] [int] IDENTITY(1,1) NOT NULL,
	[durum] [nvarchar](50) NULL,
 CONSTRAINT [PK_durum] PRIMARY KEY CLUSTERED 
(
	[durumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[koltukTipi]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[koltukTipi](
	[koltukTipiID] [int] IDENTITY(1,1) NOT NULL,
	[koltukTipiAdi] [nvarchar](20) NULL,
 CONSTRAINT [PK_koltukTipi] PRIMARY KEY CLUSTERED 
(
	[koltukTipiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[peron]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peron](
	[peronID] [int] IDENTITY(1,1) NOT NULL,
	[peronAdi] [nvarchar](10) NULL,
 CONSTRAINT [PK_peron] PRIMARY KEY CLUSTERED 
(
	[peronID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[saat]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saat](
	[saatID] [int] IDENTITY(1,1) NOT NULL,
	[saatAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_saat] PRIMARY KEY CLUSTERED 
(
	[saatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sefer]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sefer](
	[seferID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[tarihID] [int] NULL,
	[soforID] [int] NULL,
	[saatID] [int] NULL,
	[dakikaID] [int] NULL,
	[koltukTipiID] [int] NULL,
	[peronID] [int] NULL,
	[nerdenID] [int] NULL,
	[nereyeID] [int] NULL,
 CONSTRAINT [PK_sefer] PRIMARY KEY CLUSTERED 
(
	[seferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sehirler]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehirler](
	[SehirId] [int] IDENTITY(1,1) NOT NULL,
	[SehirAdi] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_sehirler] PRIMARY KEY CLUSTERED 
(
	[SehirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sofor]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sofor](
	[soforID] [int] IDENTITY(1,1) NOT NULL,
	[soforAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_sofor] PRIMARY KEY CLUSTERED 
(
	[soforID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tarih]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarih](
	[tarihID] [int] IDENTITY(1,1) NOT NULL,
	[tarihAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tarih] PRIMARY KEY CLUSTERED 
(
	[tarihID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[kullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](50) NULL,
	[kullaniciSube] [nvarchar](50) NULL,
	[kullaniciSifre] [nvarchar](20) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[kullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yolcu]    Script Date: 5.05.2017 03:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yolcu](
	[yolcuID] [int] IDENTITY(1,1) NOT NULL,
	[tc] [nvarchar](15) NULL,
	[koltukNo] [nvarchar](5) NULL,
	[seferID] [int] NULL,
	[cinsiyetID] [int] NULL,
	[durumID] [int] NULL,
	[yolcuAdi] [nvarchar](50) NULL,
	[yolcuSoyadi] [nvarchar](50) NULL,
	[yolcuTel] [nvarchar](50) NULL,
	[yolcuDogum] [nvarchar](50) NULL,
	[yolcuUcret] [nchar](10) NULL,
 CONSTRAINT [PK_yolcu] PRIMARY KEY CLUSTERED 
(
	[yolcuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cinsiyet] ON 

INSERT [dbo].[cinsiyet] ([cinsiyetID], [cinsiyetAdi]) VALUES (1, N'Erkek')
INSERT [dbo].[cinsiyet] ([cinsiyetID], [cinsiyetAdi]) VALUES (2, N'Kadın')
SET IDENTITY_INSERT [dbo].[cinsiyet] OFF
SET IDENTITY_INSERT [dbo].[dakika] ON 

INSERT [dbo].[dakika] ([dakikaID], [dakikaAdi]) VALUES (0, N'Seçiniz')
INSERT [dbo].[dakika] ([dakikaID], [dakikaAdi]) VALUES (1, N'00')
INSERT [dbo].[dakika] ([dakikaID], [dakikaAdi]) VALUES (2, N'30')
SET IDENTITY_INSERT [dbo].[dakika] OFF
SET IDENTITY_INSERT [dbo].[durum] ON 

INSERT [dbo].[durum] ([durumID], [durum]) VALUES (1, N'Alındı')
INSERT [dbo].[durum] ([durumID], [durum]) VALUES (2, N'Rezerve')
INSERT [dbo].[durum] ([durumID], [durum]) VALUES (3, N'İptal')
SET IDENTITY_INSERT [dbo].[durum] OFF
SET IDENTITY_INSERT [dbo].[koltukTipi] ON 

INSERT [dbo].[koltukTipi] ([koltukTipiID], [koltukTipiAdi]) VALUES (0, N'Seçiniz')
INSERT [dbo].[koltukTipi] ([koltukTipiID], [koltukTipiAdi]) VALUES (1, N'2+2')
INSERT [dbo].[koltukTipi] ([koltukTipiID], [koltukTipiAdi]) VALUES (2, N'2+1')
SET IDENTITY_INSERT [dbo].[koltukTipi] OFF
SET IDENTITY_INSERT [dbo].[peron] ON 

INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (0, N'Seçiniz')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (1, N'1')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (2, N'2')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (3, N'3')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (4, N'4')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (5, N'5')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (6, N'6')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (7, N'7')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (8, N'8')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (9, N'9')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (10, N'10')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (11, N'11')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (12, N'12')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (13, N'13')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (14, N'14')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (15, N'15')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (16, N'16')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (17, N'17')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (18, N'18')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (19, N'19')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (20, N'20')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (21, N'21')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (22, N'22')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (23, N'23')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (24, N'24')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (25, N'25')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (26, N'26')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (27, N'27')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (28, N'28')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (29, N'29')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (30, N'30')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (31, N'31')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (32, N'32')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (33, N'33')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (34, N'34')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (35, N'35')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (36, N'36')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (37, N'37')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (38, N'38')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (39, N'39')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (40, N'40')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (41, N'41')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (42, N'42')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (43, N'43')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (44, N'44')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (45, N'45')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (46, N'46')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (47, N'47')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (48, N'48')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (49, N'49')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (50, N'50')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (51, N'51')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (52, N'52')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (53, N'53')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (54, N'54')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (55, N'55')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (56, N'56')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (57, N'57')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (58, N'58')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (59, N'59')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (60, N'60')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (61, N'61')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (62, N'62')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (63, N'63')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (64, N'64')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (65, N'65')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (66, N'66')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (67, N'67')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (68, N'68')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (69, N'69')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (70, N'70')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (71, N'71')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (72, N'72')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (73, N'73')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (74, N'74')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (75, N'75')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (76, N'76')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (77, N'77')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (78, N'78')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (79, N'79')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (80, N'80')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (81, N'81')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (82, N'82')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (83, N'83')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (84, N'84')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (85, N'85')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (86, N'86')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (87, N'87')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (88, N'88')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (89, N'89')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (90, N'90')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (91, N'91')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (92, N'92')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (93, N'93')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (94, N'94')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (95, N'95')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (96, N'96')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (97, N'97')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (98, N'98')
GO
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (99, N'99')
INSERT [dbo].[peron] ([peronID], [peronAdi]) VALUES (100, N'100')
SET IDENTITY_INSERT [dbo].[peron] OFF
SET IDENTITY_INSERT [dbo].[saat] ON 

INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (0, N'Seçiniz')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (1, N'06')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (2, N'09')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (3, N'12')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (4, N'15')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (5, N'18')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (6, N'21')
INSERT [dbo].[saat] ([saatID], [saatAdi]) VALUES (7, N'00')
SET IDENTITY_INSERT [dbo].[saat] OFF
SET IDENTITY_INSERT [dbo].[sefer] ON 

INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (1, 1, 1, 2, 2, 1, 2, 2, 3, 5)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (2, 1, 2, 2, 2, 1, 1, 1, 4, 21)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (3, 1, 3, 2, 2, 1, 1, 1, 4, 21)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (4, 1, 4, 1, 3, 1, 2, 2, 4, 2)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (5, 1, 5, 1, 3, 1, 2, 2, 4, 2)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (6, 1, 6, 2, 6, 1, 2, 2, 3, 4)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (7, 1, 7, 2, 6, 1, 2, 2, 3, 4)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (8, 1, 8, 1, 1, 2, 2, 2, 3, 4)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (9, 1, 9, 2, 3, 1, 1, 1, 4, 4)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (10, 1, 10, 1, 3, 1, 2, 2, 3, 4)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (11, 1, 11, 1, 2, 2, 2, 2, 3, 3)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (12, 1, 12, 1, 2, 2, 2, 2, 3, 3)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (13, 1, 13, 2, 2, 1, 1, 1, 5, 3)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (14, 1, 14, 2, 2, 1, 2, 2, 6, 2)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (15, 1, 15, 1, 2, 1, 1, 1, 4, 20)
INSERT [dbo].[sefer] ([seferID], [kullaniciID], [tarihID], [soforID], [saatID], [dakikaID], [koltukTipiID], [peronID], [nerdenID], [nereyeID]) VALUES (16, 1, 16, 2, 4, 2, 1, 1, 5, 24)
SET IDENTITY_INSERT [dbo].[sefer] OFF
SET IDENTITY_INSERT [dbo].[sehirler] ON 

INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (0, N'Seçiniz')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (1, N'ADANA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (3, N'AFYONKARAHİSAR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (4, N'AĞRI')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (5, N'AKSARAY')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (6, N'AMASYA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (7, N'ANKARA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (8, N'ANTALYA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (9, N'ARDAHAN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (10, N'ARTVİN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (11, N'AYDIN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (12, N'BALIKESİR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (13, N'BARTIN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (14, N'BATMAN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (15, N'BAYBURT')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (16, N'BİLECİK')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (17, N'BİNGÖL')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (18, N'BİTLİS')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (19, N'BOLU')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (20, N'BURDUR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (21, N'BURSA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (22, N'ÇANAKKALE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (23, N'ÇANKIRI')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (24, N'ÇORUM')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (25, N'DENİZLİ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (26, N'DİYARBAKIR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (27, N'DÜZCE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (28, N'EDİRNE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (29, N'ELAZIĞ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (30, N'ERZİNCAN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (31, N'ERZURUM')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (32, N'ESKİŞEHİR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (33, N'GAZİANTEP')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (34, N'GİRESUN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (35, N'GÜMÜŞHANE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (36, N'HAKKARİ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (37, N'HATAY')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (38, N'IĞDIR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (39, N'ISPARTA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (40, N'İSTANBUL (ASYA)')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (41, N'İSTANBUL (AVR)')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (42, N'İZMİR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (43, N'KAHRAMANMARAŞ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (44, N'KARABÜK')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (45, N'KARAMAN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (46, N'KARS')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (47, N'KASTAMONU')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (48, N'KAYSERİ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (49, N'KIRIKKALE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (50, N'KIRKLARELİ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (51, N'KIRŞEHİR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (52, N'KİLİS')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (53, N'KOCAELİ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (54, N'KONYA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (55, N'KÜTAHYA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (56, N'MALATYA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (57, N'MANİSA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (58, N'MARDİN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (59, N'MERSİN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (60, N'MUĞLA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (61, N'MUŞ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (62, N'NEVŞEHİR')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (63, N'NİĞDE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (64, N'ORDU')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (65, N'OSMANİYE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (66, N'RİZE')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (67, N'SAKARYA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (68, N'SAMSUN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (69, N'Seçiniz')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (70, N'SİİRT')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (71, N'SİNOP')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (72, N'SİVAS')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (73, N'ŞANLIURFA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (74, N'ŞIRNAK')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (75, N'TEKİRDAĞ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (76, N'TOKAT')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (77, N'TRABZON')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (78, N'TUNCELİ')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (79, N'UŞAK')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (80, N'VAN')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (81, N'YALOVA')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (82, N'YOZGAT')
INSERT [dbo].[sehirler] ([SehirId], [SehirAdi]) VALUES (83, N'ZONGULDAK')
SET IDENTITY_INSERT [dbo].[sehirler] OFF
SET IDENTITY_INSERT [dbo].[sofor] ON 

INSERT [dbo].[sofor] ([soforID], [soforAdi]) VALUES (0, N'Seçiniz')
INSERT [dbo].[sofor] ([soforID], [soforAdi]) VALUES (1, N'Ersan CENGİZ')
INSERT [dbo].[sofor] ([soforID], [soforAdi]) VALUES (2, N'Emre ŞİMŞEK')
INSERT [dbo].[sofor] ([soforID], [soforAdi]) VALUES (3, N'Ali Şahin AYDOĞAN')
INSERT [dbo].[sofor] ([soforID], [soforAdi]) VALUES (4, N'Alperen DEMİRBAŞ')
INSERT [dbo].[sofor] ([soforID], [soforAdi]) VALUES (5, N'Göksel FERİK')
SET IDENTITY_INSERT [dbo].[sofor] OFF
SET IDENTITY_INSERT [dbo].[tarih] ON 

INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (1, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (2, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (3, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (4, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (5, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (6, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (7, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (8, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (9, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (10, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (11, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (12, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (13, N'05- 02-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (14, N'05- 28-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (15, N'11- 05-2017')
INSERT [dbo].[tarih] ([tarihID], [tarihAdi]) VALUES (16, N'11- 05-2017')
SET IDENTITY_INSERT [dbo].[tarih] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([kullaniciID], [kullaniciAdi], [kullaniciSube], [kullaniciSifre]) VALUES (1, N'emre', N'bursa', N'1')
SET IDENTITY_INSERT [dbo].[user] OFF
SET IDENTITY_INSERT [dbo].[yolcu] ON 

INSERT [dbo].[yolcu] ([yolcuID], [tc], [koltukNo], [seferID], [cinsiyetID], [durumID], [yolcuAdi], [yolcuSoyadi], [yolcuTel], [yolcuDogum], [yolcuUcret]) VALUES (1, NULL, N'5', 1, 2, 2, N'emre', N'şimşek', N'5383977808', N'EMRESİMSEK801', NULL)
INSERT [dbo].[yolcu] ([yolcuID], [tc], [koltukNo], [seferID], [cinsiyetID], [durumID], [yolcuAdi], [yolcuSoyadi], [yolcuTel], [yolcuDogum], [yolcuUcret]) VALUES (3, N'1475211215', N'2', 1, 1, 1, N'dsa', N'dsa', N'( 32) 132-1', N'1212', N'22        ')
INSERT [dbo].[yolcu] ([yolcuID], [tc], [koltukNo], [seferID], [cinsiyetID], [durumID], [yolcuAdi], [yolcuSoyadi], [yolcuTel], [yolcuDogum], [yolcuUcret]) VALUES (6, N'321123', N'20', 1, 1, 1, N'wqeqw', N'wq', N'(444)    -', N'272', N'13        ')
INSERT [dbo].[yolcu] ([yolcuID], [tc], [koltukNo], [seferID], [cinsiyetID], [durumID], [yolcuAdi], [yolcuSoyadi], [yolcuTel], [yolcuDogum], [yolcuUcret]) VALUES (8, N'32131', N'9', 1, 1, 2, N'qwewq', N'eqeqw', N'(555) 555-555', N'262626', N'312       ')
SET IDENTITY_INSERT [dbo].[yolcu] OFF
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_dakika] FOREIGN KEY([dakikaID])
REFERENCES [dbo].[dakika] ([dakikaID])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_dakika]
GO
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_koltukTipi] FOREIGN KEY([koltukTipiID])
REFERENCES [dbo].[koltukTipi] ([koltukTipiID])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_koltukTipi]
GO
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_peron] FOREIGN KEY([peronID])
REFERENCES [dbo].[peron] ([peronID])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_peron]
GO
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_saat] FOREIGN KEY([saatID])
REFERENCES [dbo].[saat] ([saatID])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_saat]
GO
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_sehirler] FOREIGN KEY([nerdenID])
REFERENCES [dbo].[sehirler] ([SehirId])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_sehirler]
GO
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_sehirler1] FOREIGN KEY([nereyeID])
REFERENCES [dbo].[sehirler] ([SehirId])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_sehirler1]
GO
ALTER TABLE [dbo].[sefer]  WITH CHECK ADD  CONSTRAINT [FK_sefer_sofor] FOREIGN KEY([soforID])
REFERENCES [dbo].[sofor] ([soforID])
GO
ALTER TABLE [dbo].[sefer] CHECK CONSTRAINT [FK_sefer_sofor]
GO
USE [master]
GO
ALTER DATABASE [otobusotomasyonu] SET  READ_WRITE 
GO
