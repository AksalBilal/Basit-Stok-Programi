USE [YazılımSınamaProje]
GO
/****** Object:  Table [dbo].[AtıkKontrol]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtıkKontrol](
	[AtıkKontrolId] [int] IDENTITY(1,1) NOT NULL,
	[ParcaId] [int] NULL,
	[HazirId] [int] NULL,
 CONSTRAINT [PK_AtıkKontrol] PRIMARY KEY CLUSTERED 
(
	[AtıkKontrolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departman]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departman](
	[DepartmanId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanAdı] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departman] PRIMARY KEY CLUSTERED 
(
	[DepartmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormGiris]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormGiris](
	[GırısId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HazırBilgisayar]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HazırBilgisayar](
	[HazirId] [int] IDENTITY(1,1) NOT NULL,
	[SistemAdi] [nvarchar](50) NULL,
	[AnakartAdi] [nvarchar](50) NULL,
	[AnakartFiyati] [decimal](18, 0) NULL,
	[EkranKartiAdi] [nvarchar](50) NULL,
	[EkranKartiFiyati] [decimal](18, 0) NULL,
	[FareAdi] [nvarchar](50) NULL,
	[FareFiyati] [decimal](18, 0) NULL,
	[IslemciAdi] [nvarchar](50) NULL,
	[IslemciFiyati] [decimal](18, 0) NULL,
	[KlavyeAdi] [nvarchar](50) NULL,
	[KlavyeFiyati] [decimal](18, 0) NULL,
	[KulaklikAdi] [nvarchar](50) NULL,
	[KulaklıkFiyati] [decimal](18, 0) NULL,
	[MonitorAdi] [nvarchar](50) NULL,
	[MonitorFiyati] [decimal](18, 0) NULL,
	[RamAdi] [nvarchar](50) NULL,
	[RamFiyati] [decimal](18, 0) NULL,
	[UrunSatinAlimTarihi] [datetime] NULL,
	[UrunSatinAlimFiyati] [decimal](18, 0) NULL,
	[UrunOzelligi] [text] NULL,
	[UrunSatinAlinanFirma] [nvarchar](50) NULL,
	[ZimmetDurumu] [bit] NULL CONSTRAINT [DF_HazırBilgisayar_ZimmetDurumu]  DEFAULT ((0)),
	[ParcaId] [int] NULL,
 CONSTRAINT [PK_HazırBilgisayar] PRIMARY KEY CLUSTERED 
(
	[HazirId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanıcılar]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanıcılar](
	[KullanıcıId] [int] IDENTITY(1,1) NOT NULL,
	[KullanıcıAdı] [nvarchar](50) NULL,
	[KullanıcıSifre] [nvarchar](50) NULL,
	[RolId] [int] NULL,
	[DepartmanId] [int] NULL,
 CONSTRAINT [PK_Kullanıcılar] PRIMARY KEY CLUSTERED 
(
	[KullanıcıId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personel]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelId] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAd] [nvarchar](50) NOT NULL,
	[PersonelSoyad] [nvarchar](50) NOT NULL,
	[PersonelDogumTarihi] [datetime] NOT NULL,
	[PersonelGsm] [bigint] NOT NULL,
	[PersonelMail] [nvarchar](50) NULL CONSTRAINT [DF_Personel_PersonelMail]  DEFAULT (N'info@gmail.com'),
	[Deneyim] [int] NULL CONSTRAINT [DF_Personel_Deneyim]  DEFAULT ((0)),
	[ZimmetDurumu] [bit] NULL CONSTRAINT [DF_Personel_ZimmetDurumu]  DEFAULT ((0)),
	[DepartmanId] [int] NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roller]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdı] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roller] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SatınAlım]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatınAlım](
	[ParcaId] [int] IDENTITY(1,1) NOT NULL,
	[ParcaAdi] [nvarchar](50) NULL,
	[SatinAlimTarihi] [datetime] NULL,
	[SatinAlimFiyati] [decimal](18, 0) NULL,
	[ParcaOzelligi] [text] NULL,
	[Adet] [int] NULL,
	[SatinAlinanFirma] [nvarchar](50) NULL,
	[KategoriId] [int] NULL,
	[StokDurumu] [bit] NULL,
	[HazirPcParcasi] [bit] NULL,
	[HazirId] [int] NULL,
	[ZimmetDurumu] [bit] NULL CONSTRAINT [DF_SatınAlım_ZimmetDurumu]  DEFAULT ((0)),
 CONSTRAINT [PK_SatınAlım] PRIMARY KEY CLUSTERED 
(
	[ParcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zimmet]    Script Date: 27.12.2018 22:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zimmet](
	[PersonelId] [int] NULL,
	[HazirId] [int] NULL,
	[ParcaId] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AtıkKontrol] ON 

INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (2, NULL, 7)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (3, 64, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (4, 62, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (5, 62, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (6, 62, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (7, NULL, 7)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (8, 62, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (10, 62, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (11, 69, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (12, 69, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (13, 62, NULL)
INSERT [dbo].[AtıkKontrol] ([AtıkKontrolId], [ParcaId], [HazirId]) VALUES (14, NULL, 16)
SET IDENTITY_INSERT [dbo].[AtıkKontrol] OFF
SET IDENTITY_INSERT [dbo].[Departman] ON 

INSERT [dbo].[Departman] ([DepartmanId], [DepartmanAdı]) VALUES (1, N'Yönetim')
INSERT [dbo].[Departman] ([DepartmanId], [DepartmanAdı]) VALUES (2, N'Depo')
INSERT [dbo].[Departman] ([DepartmanId], [DepartmanAdı]) VALUES (3, N'Eğitim')
INSERT [dbo].[Departman] ([DepartmanId], [DepartmanAdı]) VALUES (4, N'Teknik')
INSERT [dbo].[Departman] ([DepartmanId], [DepartmanAdı]) VALUES (5, N'İdari')
SET IDENTITY_INSERT [dbo].[Departman] OFF
SET IDENTITY_INSERT [dbo].[HazırBilgisayar] ON 

INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (6, N'deneme', N'deneme', CAST(2599 AS Decimal(18, 0)), N'deneme', CAST(3000 AS Decimal(18, 0)), N'deneme', CAST(129 AS Decimal(18, 0)), N'deneme', CAST(1659 AS Decimal(18, 0)), N'deneme', CAST(154 AS Decimal(18, 0)), N'deneme', CAST(199 AS Decimal(18, 0)), N'deneme', CAST(1999 AS Decimal(18, 0)), N'deneme', CAST(1599 AS Decimal(18, 0)), CAST(N'2018-12-14 20:30:05.000' AS DateTime), CAST(11338 AS Decimal(18, 0)), N'deneme', N'deneme', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (7, N'deneme', N'deneme', CAST(2599 AS Decimal(18, 0)), N'deneme', CAST(3000 AS Decimal(18, 0)), N'deneme', CAST(129 AS Decimal(18, 0)), N'deneme', CAST(1659 AS Decimal(18, 0)), N'deneme', CAST(154 AS Decimal(18, 0)), N'deneme', CAST(199 AS Decimal(18, 0)), N'deneme', CAST(1999 AS Decimal(18, 0)), N'deneme', CAST(1599 AS Decimal(18, 0)), CAST(N'2018-12-14 20:30:05.000' AS DateTime), CAST(11338 AS Decimal(18, 0)), N'deneme', N'deneme', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (8, N'deneme', N'deneme', CAST(100 AS Decimal(18, 0)), N'deneme', CAST(51128 AS Decimal(18, 0)), N'deneme', CAST(12 AS Decimal(18, 0)), N'deneme', CAST(156 AS Decimal(18, 0)), N'deneme', CAST(216 AS Decimal(18, 0)), N'deneme', CAST(216 AS Decimal(18, 0)), N'deneme', CAST(6516 AS Decimal(18, 0)), N'deneme', CAST(5616 AS Decimal(18, 0)), CAST(N'2018-12-22 21:10:13.000' AS DateTime), CAST(63960 AS Decimal(18, 0)), N'deneme', N'deneme', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (9, N'd', N'de', CAST(85 AS Decimal(18, 0)), N'den', CAST(25 AS Decimal(18, 0)), N'deneme1', CAST(78574 AS Decimal(18, 0)), N'dene', CAST(99 AS Decimal(18, 0)), N'deneme12', CAST(45 AS Decimal(18, 0)), N'deneme123', CAST(22 AS Decimal(18, 0)), N'deneme', CAST(865 AS Decimal(18, 0)), N'denem', CAST(125 AS Decimal(18, 0)), CAST(N'2018-12-19 21:41:43.543' AS DateTime), CAST(79840 AS Decimal(18, 0)), N'deneme12345', N'deneme1234', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (10, N'Monster', N'anakart', CAST(99 AS Decimal(18, 0)), N'ekran kartı', CAST(596 AS Decimal(18, 0)), N'fare', CAST(2255 AS Decimal(18, 0)), N'işlemci', CAST(262 AS Decimal(18, 0)), N'klavye', CAST(221 AS Decimal(18, 0)), N'kulaklık', CAST(526 AS Decimal(18, 0)), N'monitör', CAST(29926 AS Decimal(18, 0)), N'ram', CAST(5419 AS Decimal(18, 0)), CAST(N'2018-12-20 21:59:49.000' AS DateTime), CAST(39304 AS Decimal(18, 0)), N'çok güzel', N'fokus bilgisayar', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (11, N'adi', N'anakart', CAST(1 AS Decimal(18, 0)), N'ekrankartı', CAST(2 AS Decimal(18, 0)), N'fare', CAST(6 AS Decimal(18, 0)), N'işlemci', CAST(3 AS Decimal(18, 0)), N'klavye', CAST(7 AS Decimal(18, 0)), N'kulaklık', CAST(8 AS Decimal(18, 0)), N'monitör', CAST(5 AS Decimal(18, 0)), N'ram', CAST(4 AS Decimal(18, 0)), CAST(N'2018-12-27 22:10:36.000' AS DateTime), CAST(36 AS Decimal(18, 0)), N'asdgsfadfgdsafgdfsafgdsafg', N'firma', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (12, N'adı', N'ana', CAST(1 AS Decimal(18, 0)), N'ekran', CAST(2 AS Decimal(18, 0)), N'fare', CAST(6 AS Decimal(18, 0)), N'işlemci', CAST(3 AS Decimal(18, 0)), N'klavye', CAST(7 AS Decimal(18, 0)), N'kulaklık', CAST(8 AS Decimal(18, 0)), N'monitör', CAST(5 AS Decimal(18, 0)), N'ram', CAST(4 AS Decimal(18, 0)), CAST(N'2018-12-19 22:12:17.560' AS DateTime), CAST(36 AS Decimal(18, 0)), N'asdfgdgsafg', N'firma', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (13, N'ad', N'anakart', CAST(1 AS Decimal(18, 0)), N'ekran kartı', CAST(2 AS Decimal(18, 0)), N'fare', CAST(6 AS Decimal(18, 0)), N'işlemci', CAST(3 AS Decimal(18, 0)), N'klavye', CAST(7 AS Decimal(18, 0)), N'kulaklık', CAST(8 AS Decimal(18, 0)), N'monitör', CAST(5 AS Decimal(18, 0)), N'ram', CAST(4 AS Decimal(18, 0)), CAST(N'2018-12-15 22:13:38.000' AS DateTime), CAST(36 AS Decimal(18, 0)), N'deneme', N'firma', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (14, N'asd', N'adsdfaf', CAST(121 AS Decimal(18, 0)), N'safgd', CAST(34334 AS Decimal(18, 0)), N'dfgssafggd', CAST(123 AS Decimal(18, 0)), N'gdds', CAST(31323141 AS Decimal(18, 0)), N'fg', CAST(123123 AS Decimal(18, 0)), N'fasd', CAST(123 AS Decimal(18, 0)), N'FGSSA', CAST(13123 AS Decimal(18, 0)), N'gsa', CAST(131 AS Decimal(18, 0)), CAST(N'2018-12-19 22:18:14.017' AS DateTime), CAST(31494219 AS Decimal(18, 0)), N'asd', N'asd', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (15, N'faruk', N'dsadasd', CAST(75 AS Decimal(18, 0)), N'asdas', CAST(456 AS Decimal(18, 0)), N'dgd', CAST(12 AS Decimal(18, 0)), N'safgfh', CAST(5454 AS Decimal(18, 0)), N'ddgddgd', CAST(456 AS Decimal(18, 0)), N'gddssfa', CAST(456 AS Decimal(18, 0)), N'ffdh', CAST(4512 AS Decimal(18, 0)), N'dfhhfdh', CAST(546 AS Decimal(18, 0)), CAST(N'2018-12-22 01:28:24.057' AS DateTime), CAST(11967 AS Decimal(18, 0)), N'dssfsd', N'asd', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (16, N'BOOST-RGB-C013', N'GIGABYTE A320M', CAST(346 AS Decimal(18, 0)), N'Sapphire Pulse ITX RX570 4GB GDDR5', CAST(822 AS Decimal(18, 0)), N'MSI Interceptor DS B1', CAST(82 AS Decimal(18, 0)), N'AMD Ryzen 7 1700', CAST(1599 AS Decimal(18, 0)), N'Cooler Master Devastator II ', CAST(177 AS Decimal(18, 0)), N'Kingston HyperX Cloud Silver Gaming Kulaklık', CAST(479 AS Decimal(18, 0)), N'AOC 24.5" G2590VXQ', CAST(997 AS Decimal(18, 0)), N'CORSAIR 16GB (2x8GB) Vengeance ', CAST(836 AS Decimal(18, 0)), CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(5338 AS Decimal(18, 0)), N'- AMD Ryzen 3 1300X Soket AM4 3.5GHz 8MB Önbellek 65W 4 Çekirdek İşlemci - Tray
- GIGABYTE A320M S2H AMD A320 Soket AM4 DDR4 3200MHz (OC) VGA DVI HDMI Anakart
- CORSAIR 8GB DDR4 2400MHz CL16 Kırmızı Vengeance Single Kit Ram
- Sapphire Pulse ITX RX570 4GB GDDR5 256Bit AMD Radeon DX12 Ekran Kart
- Power Boost C013B 500W 3x120mm RGB Fanlı USB 3.0 Gaming Kasa
- Seagate 3.5" 1TB Barracuda Sata 3.0 7200Rpm 64MB 210Mb/s okuma Harddisk', N'', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (17, N'WTCN-99/i7', N'MSI MPG Z390', CAST(1100 AS Decimal(18, 0)), N'MSI GeForce RTX 2080 Ti', CAST(8380 AS Decimal(18, 0)), N'Razer Deathadder essential', CAST(258 AS Decimal(18, 0)), N'Intel Core i7 9700K', CAST(2675 AS Decimal(18, 0)), N'Thermaltake Tt eSPORTS ', CAST(238 AS Decimal(18, 0)), N'Cooler Master MasterPulse', CAST(582 AS Decimal(18, 0)), N'MSI 27" OPTIX MAG27C', CAST(2186 AS Decimal(18, 0)), N'GSKILL 32GB', CAST(2696 AS Decimal(18, 0)), CAST(N'2018-12-21 04:26:33.000' AS DateTime), CAST(18114 AS Decimal(18, 0)), N'- Intel Core i9 9900K Soket 1151 3.6 GHz 16 MB Önbellek 8 Çekirdek 16 thread 14nm İşlemci
- MSI MPG Z390 GAMING EDGE AC Intel Z390 9th Gen Intel Soket 1151 DDR4 4400MHz(O.C.) HDMI DP Anakart
- GSKILL 32GB (2X16GB) TRIDENT Z RGB LED DDR4 3200Mhz CL16 Dual Kit Ram
- MSI GeForce RTX 2080 Ti VENTUS 11G OC GDDR6 352Bit DX12 Nvidia Ekran Kartı
- Cooler Master Cosmos C700P Full Tower Kasa
- Cooler Master MasterLiquid ML240L RGB Led Fanlı 240mm İşlemci Sıvı Soğutma Sistemi
- Seagate 3.5" 2TB Barracuda Sata 3.0 7200Rpm 256MB Cache Harddisk
- SAMSUNG 1TB 970 PRO NVMe M.2 SSD (3500MB Okuma / 2700MB Yazma)
- Cooler Master Vanguard 750W 80 Plus Gold Modüler 120mm Fanlı PSU', N'itopya', 0, NULL)
INSERT [dbo].[HazırBilgisayar] ([HazirId], [SistemAdi], [AnakartAdi], [AnakartFiyati], [EkranKartiAdi], [EkranKartiFiyati], [FareAdi], [FareFiyati], [IslemciAdi], [IslemciFiyati], [KlavyeAdi], [KlavyeFiyati], [KulaklikAdi], [KulaklıkFiyati], [MonitorAdi], [MonitorFiyati], [RamAdi], [RamFiyati], [UrunSatinAlimTarihi], [UrunSatinAlimFiyati], [UrunOzelligi], [UrunSatinAlinanFirma], [ZimmetDurumu], [ParcaId]) VALUES (18, N'deneme', N'deneme', CAST(5 AS Decimal(18, 0)), N'deneme', CAST(4 AS Decimal(18, 0)), N'deneme', CAST(4 AS Decimal(18, 0)), N'deneme', CAST(3 AS Decimal(18, 0)), N'deneme', CAST(4 AS Decimal(18, 0)), N'deneme', CAST(0 AS Decimal(18, 0)), N'deneme', CAST(1 AS Decimal(18, 0)), N'deneme', CAST(2 AS Decimal(18, 0)), CAST(N'2018-12-27 00:00:00.000' AS DateTime), CAST(23 AS Decimal(18, 0)), N'vdf', N'deneme', 0, NULL)
SET IDENTITY_INSERT [dbo].[HazırBilgisayar] OFF
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (1, N'ANA KART')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (2, N'EKRAN KARTI')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (3, N'FARE')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (4, N'İŞLEMCİ')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (5, N'KLAVYE')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (6, N'KULAKLIK')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (7, N'MONİTÖR')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAdi]) VALUES (8, N'RAM')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Kullanıcılar] ON 

INSERT [dbo].[Kullanıcılar] ([KullanıcıId], [KullanıcıAdı], [KullanıcıSifre], [RolId], [DepartmanId]) VALUES (6, N'admin', N'1234', 1, 1)
INSERT [dbo].[Kullanıcılar] ([KullanıcıId], [KullanıcıAdı], [KullanıcıSifre], [RolId], [DepartmanId]) VALUES (7, N'departman', N'dp34                     ', 2, 4)
INSERT [dbo].[Kullanıcılar] ([KullanıcıId], [KullanıcıAdı], [KullanıcıSifre], [RolId], [DepartmanId]) VALUES (8, N'bilal', N'b234', 3, 1)
INSERT [dbo].[Kullanıcılar] ([KullanıcıId], [KullanıcıAdı], [KullanıcıSifre], [RolId], [DepartmanId]) VALUES (9, N'umut                     ', N'u234                     ', 3, 1)
INSERT [dbo].[Kullanıcılar] ([KullanıcıId], [KullanıcıAdı], [KullanıcıSifre], [RolId], [DepartmanId]) VALUES (10, N'faruk                    ', N'f234                     ', 3, 1)
INSERT [dbo].[Kullanıcılar] ([KullanıcıId], [KullanıcıAdı], [KullanıcıSifre], [RolId], [DepartmanId]) VALUES (11, N'ali', N'a234', 2, 4)
SET IDENTITY_INSERT [dbo].[Kullanıcılar] OFF
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (1, N'Bilal', N'AKSAL', CAST(N'2018-12-20 01:25:49.000' AS DateTime), 5425046348, N'bilal.aksal@hotmail.com', 1, 1, 3)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (2, N'Umut Can', N'AĞIRTAŞ', CAST(N'2018-12-22 01:27:05.000' AS DateTime), 5214564564, N'empty@gmail.com', 2, 1, 3)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (3, N'Faruk', N'SEYHAN', CAST(N'1999-03-01 03:14:01.000' AS DateTime), 5399988652, N'faruk.seyhan@hotmail.com', 2, 1, 3)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (4, N'Emre', N'BÖCEK', CAST(N'1994-06-09 19:50:47.000' AS DateTime), 5495648751, N'bocekemre@gmail.com', 2, 1, 3)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (5, N'Mehmet', N'AYDIN', CAST(N'1995-05-30 20:30:40.000' AS DateTime), 5425563321, N'mehmet.aydin@gmail.com', 2, 1, 2)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (6, N'Ali', N'BOZKURT', CAST(N'1999-07-08 19:45:25.000' AS DateTime), 5399956321, N'alibozkurt@hotmail.com', 2, 1, 4)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (7, N'Ayşe', N'YILMAZ', CAST(N'1995-12-21 20:02:00.000' AS DateTime), 5399863112, N'ayseylmz@hotmail.com', NULL, NULL, 1)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (9, N'Reyhan', N'AK', CAST(N'1995-12-21 20:02:00.000' AS DateTime), 5377421212, N'empty@gmail.com''', NULL, NULL, 3)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (10, N'Cem', N'KARACA', CAST(N'1995-12-21 20:02:00.000' AS DateTime), 5312154877, N'karaca.cem@hotmail.com', NULL, NULL, 2)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (14, N'deniz', N'aykız', CAST(N'1998-12-24 20:02:00.000' AS DateTime), 5425015346, N'dnzaykz@hotmail.com', 1, 1, 1)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (15, N'bilal', N'öz', CAST(N'1998-12-23 20:02:00.000' AS DateTime), 5555663211, N'bilaloz@hotmail.com', 2, 1, 1)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (20, N'hasan', N'karataş', CAST(N'2018-12-27 05:48:00.000' AS DateTime), 5578566445, N'karatas.hasan@gmail.com', 2, 1, 1)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (21, N'serbay', N'simsir', CAST(N'2018-12-27 05:48:00.000' AS DateTime), 52378566445, N'serbay.simsir@gmail.com', 2, 1, 1)
INSERT [dbo].[Personel] ([PersonelId], [PersonelAd], [PersonelSoyad], [PersonelDogumTarihi], [PersonelGsm], [PersonelMail], [Deneyim], [ZimmetDurumu], [DepartmanId]) VALUES (22, N'serbay', N'simsir', CAST(N'2018-12-27 05:48:00.000' AS DateTime), 52378566445, N'serbay.simsir@gmail.com', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Personel] OFF
SET IDENTITY_INSERT [dbo].[Roller] ON 

INSERT [dbo].[Roller] ([RolId], [RolAdı]) VALUES (1, N'admin')
INSERT [dbo].[Roller] ([RolId], [RolAdı]) VALUES (2, N'departman görevlisi')
INSERT [dbo].[Roller] ([RolId], [RolAdı]) VALUES (3, N'Satış Sorumlusu')
SET IDENTITY_INSERT [dbo].[Roller] OFF
SET IDENTITY_INSERT [dbo].[SatınAlım] ON 

INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (52, N'GIGABYTE A320M', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(346 AS Decimal(18, 0)), N'GIGABYTE A320M', 1, N'', 1, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (53, N'Sapphire Pulse ITX RX570 4GB GDDR5', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(822 AS Decimal(18, 0)), N'Sapphire Pulse ITX RX570 4GB GDDR5', 1, N'', 2, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (54, N'MSI Interceptor DS B1', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(82 AS Decimal(18, 0)), N'MSI Interceptor DS B1', 1, N'', 3, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (55, N'AMD Ryzen 7 1700', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(1599 AS Decimal(18, 0)), N'AMD Ryzen 7 1700', 1, N'', 4, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (56, N'Cooler Master Devastator II ', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(177 AS Decimal(18, 0)), N'Cooler Master Devastator II ', 1, N'', 5, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (57, N'Kingston HyperX Cloud Silver Gaming Kulaklık', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(479 AS Decimal(18, 0)), N'Kingston HyperX Cloud Silver Gaming Kulaklık', 1, N'', 6, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (58, N'AOC 24.5" G2590VXQ', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(997 AS Decimal(18, 0)), N'AOC 24.5" G2590VXQ', 1, N'', 7, 1, 1, 16, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (59, N'CORSAIR 16GB (2x8GB) Vengeance ', CAST(N'2018-12-22 03:27:23.007' AS DateTime), CAST(836 AS Decimal(18, 0)), N'CORSAIR 16GB (2x8GB) Vengeance ', 1, N'', 8, 1, 1, NULL, NULL)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (60, N'CORSAIR 16GB (2x8GB) DDR4 3200MHz', CAST(N'2018-12-23 03:34:32.000' AS DateTime), CAST(819 AS Decimal(18, 0)), N'CORSAIR 16GB (2x8GB) DDR4 3200MHz CL16 Kırmızı Vengeance ', 0, N'Corsair', 1, 1, 0, NULL, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (61, N'', CAST(N'2018-12-21 03:41:45.000' AS DateTime), CAST(12 AS Decimal(18, 0)), N'asdsad', 0, N'asd', 3, 1, 0, NULL, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (62, N'', CAST(N'2018-12-21 03:43:08.000' AS DateTime), CAST(12 AS Decimal(18, 0)), N'asds', -1, N'sss', 3, 1, 0, NULL, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (63, N'asus 1080 ti ekran kartı', CAST(N'2018-12-13 21:44:51.000' AS DateTime), CAST(4900 AS Decimal(18, 0)), N'yüksek performanslı ekran kartı', 2, N'asus', 5, 1, 0, NULL, NULL)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (64, N'"', CAST(N'2018-12-26 23:39:38.737' AS DateTime), CAST(123 AS Decimal(18, 0)), N'dsaf""*', 1229, N'"*', 4, 1, 0, NULL, 1)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (65, N'Logitech G300s', CAST(N'2018-12-28 02:57:07.000' AS DateTime), CAST(135 AS Decimal(18, 0)), N'Logitech G300s Kablolu Oyuncu Mouse', 1, N'Hepsiburada', 4, 1, 0, NULL, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (66, N'MSI MPG Z390', CAST(N'2018-12-21 04:26:33.000' AS DateTime), CAST(1100 AS Decimal(18, 0)), N'MSI MPG Z390', 1, N'itopya', 1, 1, 1, 16, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (67, N'MSI GeForce RTX 2080 Ti', CAST(N'2018-12-21 04:26:33.000' AS DateTime), CAST(8380 AS Decimal(18, 0)), N'MSI GeForce RTX 2080 Ti', 1, N'itopya', 2, 1, 1, 17, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (69, N'Razer RZ01', CAST(N'2018-12-27 05:48:00.000' AS DateTime), CAST(183 AS Decimal(18, 0)), N'Razer RZ01 - 0085 DeathAdder Ergonomik Oyun Faresi', 0, N'GearBest', 4, 1, 0, NULL, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (70, N'Razer RZ01', CAST(N'2018-12-27 05:48:00.000' AS DateTime), CAST(183 AS Decimal(18, 0)), N'Razer RZ01 - 0085 DeathAdder Ergonomik Oyun Faresi', 2, N'GearBest', 4, 1, 0, NULL, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (71, N'Razer RZ01', CAST(N'2018-12-27 05:48:00.000' AS DateTime), CAST(183 AS Decimal(18, 0)), N'Razer RZ01 - 0085 DeathAdder Ergonomik Oyun Faresi', 2, N'GearBest', 4, 1, 0, NULL, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (73, N'HHHHHHHHH', CAST(N'2018-12-27 15:36:56.000' AS DateTime), CAST(1 AS Decimal(18, 0)), N'FGFGFGGHGH', 1, N'FFF', 2, 1, 0, NULL, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (74, N'asd', CAST(N'2018-12-27 00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'asd', 1, N'asdasd', 1, 1, 1, 16, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (75, N'asd', CAST(N'2018-12-27 00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'asd', 1, N'asdasd', 2, 1, 1, 17, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (78, N'deneme', CAST(N'2018-12-27 00:00:00.000' AS DateTime), CAST(5 AS Decimal(18, 0)), N'deneme', 1, N'deneme', 1, 1, 1, 16, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (79, N'deneme', CAST(N'2018-12-27 00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'deneme', 1, N'deneme', 2, 1, 1, 17, 0)
INSERT [dbo].[SatınAlım] ([ParcaId], [ParcaAdi], [SatinAlimTarihi], [SatinAlimFiyati], [ParcaOzelligi], [Adet], [SatinAlinanFirma], [KategoriId], [StokDurumu], [HazirPcParcasi], [HazirId], [ZimmetDurumu]) VALUES (83, N'deneme', CAST(N'2018-12-27 00:00:00.000' AS DateTime), CAST(5 AS Decimal(18, 0)), N'deneme', 1, N'deneme', 1, 1, 1, 18, 0)
SET IDENTITY_INSERT [dbo].[SatınAlım] OFF
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (1, 6, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (1, 7, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (2, 9, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (3, 9, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (3, 8, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (4, 11, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (6, 16, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (2, NULL, 61)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (4, NULL, 62)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (10, 10, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (9, NULL, 64)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (3, NULL, 60)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (14, 8, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (2, 6, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (3, 9, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (15, 6, NULL)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (20, NULL, 64)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (21, NULL, 64)
INSERT [dbo].[Zimmet] ([PersonelId], [HazirId], [ParcaId]) VALUES (22, NULL, 64)
ALTER TABLE [dbo].[AtıkKontrol]  WITH CHECK ADD  CONSTRAINT [FK_AtıkKontrol_HazırBilgisayar] FOREIGN KEY([HazirId])
REFERENCES [dbo].[HazırBilgisayar] ([HazirId])
GO
ALTER TABLE [dbo].[AtıkKontrol] CHECK CONSTRAINT [FK_AtıkKontrol_HazırBilgisayar]
GO
ALTER TABLE [dbo].[AtıkKontrol]  WITH CHECK ADD  CONSTRAINT [FK_AtıkKontrol_SatınAlım1] FOREIGN KEY([ParcaId])
REFERENCES [dbo].[SatınAlım] ([ParcaId])
GO
ALTER TABLE [dbo].[AtıkKontrol] CHECK CONSTRAINT [FK_AtıkKontrol_SatınAlım1]
GO
ALTER TABLE [dbo].[HazırBilgisayar]  WITH CHECK ADD  CONSTRAINT [FK_HazırBilgisayar_SatınAlım] FOREIGN KEY([ParcaId])
REFERENCES [dbo].[SatınAlım] ([ParcaId])
GO
ALTER TABLE [dbo].[HazırBilgisayar] CHECK CONSTRAINT [FK_HazırBilgisayar_SatınAlım]
GO
ALTER TABLE [dbo].[Kullanıcılar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanıcılar_Departman] FOREIGN KEY([DepartmanId])
REFERENCES [dbo].[Departman] ([DepartmanId])
GO
ALTER TABLE [dbo].[Kullanıcılar] CHECK CONSTRAINT [FK_Kullanıcılar_Departman]
GO
ALTER TABLE [dbo].[Kullanıcılar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanıcılar_Roller] FOREIGN KEY([RolId])
REFERENCES [dbo].[Roller] ([RolId])
GO
ALTER TABLE [dbo].[Kullanıcılar] CHECK CONSTRAINT [FK_Kullanıcılar_Roller]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Departman] FOREIGN KEY([DepartmanId])
REFERENCES [dbo].[Departman] ([DepartmanId])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Departman]
GO
ALTER TABLE [dbo].[SatınAlım]  WITH CHECK ADD  CONSTRAINT [FK_SatınAlım_HazırBilgisayar] FOREIGN KEY([HazirId])
REFERENCES [dbo].[HazırBilgisayar] ([HazirId])
GO
ALTER TABLE [dbo].[SatınAlım] CHECK CONSTRAINT [FK_SatınAlım_HazırBilgisayar]
GO
ALTER TABLE [dbo].[SatınAlım]  WITH CHECK ADD  CONSTRAINT [FK_SatınAlım_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([KategoriId])
GO
ALTER TABLE [dbo].[SatınAlım] CHECK CONSTRAINT [FK_SatınAlım_Kategori]
GO
ALTER TABLE [dbo].[Zimmet]  WITH CHECK ADD  CONSTRAINT [FK_Zimmet_HazırBilgisayar] FOREIGN KEY([HazirId])
REFERENCES [dbo].[HazırBilgisayar] ([HazirId])
GO
ALTER TABLE [dbo].[Zimmet] CHECK CONSTRAINT [FK_Zimmet_HazırBilgisayar]
GO
ALTER TABLE [dbo].[Zimmet]  WITH CHECK ADD  CONSTRAINT [FK_Zimmet_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[Zimmet] CHECK CONSTRAINT [FK_Zimmet_Personel]
GO
ALTER TABLE [dbo].[Zimmet]  WITH CHECK ADD  CONSTRAINT [FK_Zimmet_SatınAlım] FOREIGN KEY([ParcaId])
REFERENCES [dbo].[SatınAlım] ([ParcaId])
GO
ALTER TABLE [dbo].[Zimmet] CHECK CONSTRAINT [FK_Zimmet_SatınAlım]
GO
