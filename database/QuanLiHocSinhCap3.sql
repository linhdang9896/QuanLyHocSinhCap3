USE [HocSinhCap3]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaDiem] [int] IDENTITY(1,1) NOT NULL,
	[LoaiKiemTra] [int] NULL,
	[Diem] [real] NULL,
	[HeSo] [int] NULL,
	[MaDiemMon] [int] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[MaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiemMon]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemMon](
	[MaDiemMon] [int] IDENTITY(1,1) NOT NULL,
	[MaHS] [int] NOT NULL,
	[IdMonHoc] [int] NOT NULL,
	[MaHocKi] [nchar](3) NOT NULL,
	[DTB] [real] NOT NULL,
	[MaLop] [int] NULL,
 CONSTRAINT [PK_DiemMon] PRIMARY KEY CLUSTERED 
(
	[MaDiemMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocKi]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKi](
	[MaHocKi] [nchar](3) NOT NULL,
	[TenHocKi] [nchar](10) NOT NULL,
 CONSTRAINT [PK_HocKi] PRIMARY KEY CLUSTERED 
(
	[MaHocKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[GioiTinh] [nchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[SDT] [nchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[TinhTrang] [bit] NOT NULL,
	[MaLop] [int] NOT NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[IdKhoaHoc] [int] IDENTITY(1,1) NOT NULL,
	[NamHoc] [int] NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[IdKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoi]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi](
	[MaKhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoi] [nchar](10) NOT NULL,
	[SoLop] [int] NOT NULL,
 CONSTRAINT [PK_Khoi] PRIMARY KEY CLUSTERED 
(
	[MaKhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [nchar](10) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nchar](4) NOT NULL,
	[IdKhoaHoc] [int] NOT NULL,
	[MaKhoi] [int] NOT NULL,
	[SiSo] [int] NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[IdMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[MaMonHoc] [nchar](10) NOT NULL,
	[TenMonHoc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MonHoc_1] PRIMARY KEY CLUSTERED 
(
	[IdMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaQD] [nchar](10) NOT NULL,
	[ThongTin] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuyDinh_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (1, 1, 0, 1, 97)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (2, 2, 0, 1, 97)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (3, 3, 0, 1, 97)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (4, 4, 0, 1, 97)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (5, 1, 0, 1, 98)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (6, 2, 0, 1, 98)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (7, 3, 0, 1, 98)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (8, 4, 0, 1, 98)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (9, 1, 0, 1, 99)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (10, 2, 0, 1, 99)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (11, 3, 0, 1, 99)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (12, 4, 0, 1, 99)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (13, 1, 0, 1, 100)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (14, 2, 0, 1, 100)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (15, 3, 0, 1, 100)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (16, 4, 0, 1, 100)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (17, 1, 0, 1, 101)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (18, 2, 0, 1, 101)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (19, 3, 0, 1, 101)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (20, 4, 0, 1, 101)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (21, 1, 0, 1, 102)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (22, 2, 0, 1, 102)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (23, 3, 0, 1, 102)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (24, 4, 0, 1, 102)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (25, 1, 0, 1, 103)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (26, 2, 0, 1, 103)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (27, 3, 0, 1, 103)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (28, 4, 0, 1, 103)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (29, 1, 0, 1, 104)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (30, 2, 0, 1, 104)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (31, 3, 0, 1, 104)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (32, 4, 0, 1, 104)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (33, 1, 0, 1, 105)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (34, 2, 0, 1, 105)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (35, 3, 0, 1, 105)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (36, 4, 0, 1, 105)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (37, 1, 0, 1, 106)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (38, 2, 0, 1, 106)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (39, 3, 0, 1, 106)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (40, 4, 0, 1, 106)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (41, 1, 0, 1, 107)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (42, 2, 0, 1, 107)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (43, 3, 0, 1, 107)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (44, 4, 0, 1, 107)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (45, 1, 0, 1, 108)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (46, 2, 0, 1, 108)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (47, 3, 0, 1, 108)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (48, 4, 0, 1, 108)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (49, 1, 0, 1, 109)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (50, 2, 0, 1, 109)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (51, 3, 0, 1, 109)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (52, 4, 0, 1, 109)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (53, 1, 0, 1, 110)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (54, 2, 0, 1, 110)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (55, 3, 0, 1, 110)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (56, 4, 0, 1, 110)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (57, 1, 0, 1, 111)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (58, 2, 0, 1, 111)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (59, 3, 0, 1, 111)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (60, 4, 0, 1, 111)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (61, 1, 0, 1, 112)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (62, 2, 0, 1, 112)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (63, 3, 0, 1, 112)
INSERT [dbo].[Diem] ([MaDiem], [LoaiKiemTra], [Diem], [HeSo], [MaDiemMon]) VALUES (64, 4, 0, 1, 112)
SET IDENTITY_INSERT [dbo].[Diem] OFF
SET IDENTITY_INSERT [dbo].[DiemMon] ON 

INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (73, 31, 1, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (74, 31, 2, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (75, 31, 3, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (76, 31, 4, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (77, 31, 5, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (78, 31, 6, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (79, 31, 7, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (80, 31, 8, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (81, 32, 1, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (82, 32, 2, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (83, 32, 3, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (84, 32, 4, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (85, 32, 5, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (86, 32, 6, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (87, 32, 7, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (88, 32, 8, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (89, 32, 1, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (90, 32, 2, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (91, 32, 3, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (92, 32, 4, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (93, 32, 5, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (94, 32, 6, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (95, 32, 7, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (96, 32, 8, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (97, 33, 1, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (98, 33, 2, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (99, 33, 3, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (100, 33, 4, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (101, 33, 5, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (102, 33, 6, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (103, 33, 7, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (104, 33, 8, N'1  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (105, 33, 1, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (106, 33, 2, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (107, 33, 3, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (108, 33, 4, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (109, 33, 5, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (110, 33, 6, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (111, 33, 7, N'2  ', 0, 6)
INSERT [dbo].[DiemMon] ([MaDiemMon], [MaHS], [IdMonHoc], [MaHocKi], [DTB], [MaLop]) VALUES (112, 33, 8, N'2  ', 0, 6)
SET IDENTITY_INSERT [dbo].[DiemMon] OFF
INSERT [dbo].[HocKi] ([MaHocKi], [TenHocKi]) VALUES (N'1  ', N'Học Kì 1  ')
INSERT [dbo].[HocKi] ([MaHocKi], [TenHocKi]) VALUES (N'2  ', N'Học Kì 2  ')
SET IDENTITY_INSERT [dbo].[HocSinh] ON 

INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (6, N'lê thị bd', N'Nam       ', CAST(N'2000-01-01' AS Date), N'nhà b', N'012210              ', N'b.com', 1, 2)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (18, N'hoang yen', N'Nữ        ', CAST(N'2000-01-01' AS Date), N'ádasd', N'3434                ', N'rád', 1, 3)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (19, N'hd', N'Nam       ', CAST(N'2000-01-01' AS Date), N'hh', N'hh                  ', N'hhh', 0, 8)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (20, N'kk', N'Nam       ', CAST(N'2000-01-01' AS Date), N'kk6', N'66                  ', N'kk', 0, 3)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (23, N'ee', N'Nữ        ', CAST(N'2000-01-01' AS Date), N'ee', N'222                 ', N'ee', 1, 2)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (26, N'lk', N'Nam       ', CAST(N'2004-06-16' AS Date), N'ddd', N'44                  ', N'dd', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (28, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'12312313212', N'123131231           ', N'123123123123', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (29, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'12312313212', N'123131231           ', N'123123123123', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (30, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'dfafdsaf', N'123131231           ', N'123123123123', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (31, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'dfafdsaf', N'123131231           ', N'123123123123', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (32, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'dfafdsaf', N'123131231           ', N'123123123123', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (33, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'dfafdsaf', N'123131231           ', N'123123123123', 1, 6)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (34, N'123456789', N'Nam       ', CAST(N'2000-01-01' AS Date), N'dfafdsaf', N'123131231           ', N'123123123123', 1, 6)
SET IDENTITY_INSERT [dbo].[HocSinh] OFF
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (1, 2014)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (2, 2015)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (3, 2016)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (4, 2017)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (5, 2018)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (6, 2019)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (7, 2020)
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
SET IDENTITY_INSERT [dbo].[Khoi] ON 

INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (1, N'Khối 10   ', 5)
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (2, N'Khối 11   ', 4)
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (3, N'Khối 12   ', 3)
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (4, N'Khối 10   ', 2)
SET IDENTITY_INSERT [dbo].[Khoi] OFF
INSERT [dbo].[Login] ([Username], [Password], [Type]) VALUES (N'admin     ', N'123', 1)
INSERT [dbo].[Login] ([Username], [Password], [Type]) VALUES (N'user1     ', N'111', 2)
INSERT [dbo].[Login] ([Username], [Password], [Type]) VALUES (N'user2     ', N'222', 2)
SET IDENTITY_INSERT [dbo].[Lop] ON 

INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (1, N'10A1', 5, 1, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (2, N'10A2', 5, 1, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (3, N'11A1', 5, 2, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (4, N'11A2', 5, 2, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (6, N'12A1', 5, 3, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (8, N'12A2', 5, 3, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (12, N'10A3', 1, 1, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (13, N'10A3', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Lop] OFF
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (1, N'BIOL      ', N'Sinh Học')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (2, N'CHEM      ', N'Hóa Học')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (3, N'ENGL      ', N'Tiếng Anh')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (4, N'GEOG      ', N'Địa Lí')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (5, N'HIST      ', N'Lịch Sử')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (6, N'LITE      ', N'Ngữ Văn')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (7, N'MATH      ', N'Toán')
INSERT [dbo].[MonHoc] ([IdMonHoc], [MaMonHoc], [TenMonHoc]) VALUES (8, N'PHYS      ', N'Vật Lí')
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
SET IDENTITY_INSERT [dbo].[QuyDinh] ON 

INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (1, N'QD1       ', N'Tuổi học sinh từ 15 tuổi đến 20 tuổi.')
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (2, N'QD2       ', N'Có 3 khối lớp (10, 11, 12).
Mỗi lớp không quá 40 học sinh.')
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (3, N'QD3       ', N'Có 2 học kỳ (HK1, HK2). Có 9 môn học (Toán, Lý, Hóa, Sinh, Văn, Sử, Địa, Tiếng Anh).')
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (4, N'QD4       ', N'Học sinh đạt môn nếu có điểm trung bình lớn hơn 5 điểm')
SET IDENTITY_INSERT [dbo].[QuyDinh] OFF
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_DiemMon] FOREIGN KEY([MaDiemMon])
REFERENCES [dbo].[DiemMon] ([MaDiemMon])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_DiemMon]
GO
ALTER TABLE [dbo].[DiemMon]  WITH CHECK ADD  CONSTRAINT [FK_DiemMon_HocKi] FOREIGN KEY([MaHocKi])
REFERENCES [dbo].[HocKi] ([MaHocKi])
GO
ALTER TABLE [dbo].[DiemMon] CHECK CONSTRAINT [FK_DiemMon_HocKi]
GO
ALTER TABLE [dbo].[DiemMon]  WITH CHECK ADD  CONSTRAINT [FK_DiemMon_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[DiemMon] CHECK CONSTRAINT [FK_DiemMon_HocSinh]
GO
ALTER TABLE [dbo].[DiemMon]  WITH CHECK ADD  CONSTRAINT [FK_DiemMon_MonHoc] FOREIGN KEY([IdMonHoc])
REFERENCES [dbo].[MonHoc] ([IdMonHoc])
GO
ALTER TABLE [dbo].[DiemMon] CHECK CONSTRAINT [FK_DiemMon_MonHoc]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_Lop]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_KhoaHoc] FOREIGN KEY([IdKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([IdKhoaHoc])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_KhoaHoc]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoi] FOREIGN KEY([MaKhoi])
REFERENCES [dbo].[Khoi] ([MaKhoi])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Khoi]
GO
/****** Object:  StoredProcedure [dbo].[DanhSachHocSinhTheoLop]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DanhSachHocSinhTheoLop]
			@malop int
as
begin
	SELECT HocSinh.*, Lop.TenLop from HocSinh, Lop where HocSinh.MaLop = Lop.MaLop And HocSinh.MaLop = 	@malop
end

GO
/****** Object:  StoredProcedure [dbo].[LayDiemMon]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayDiemMon]
	@malop int,
	@mamonhoc int,
	@hocki varchar(50)
AS
BEGIN
	SELECT diem.*, h.HoTen FROM 
	(SELECT dm.MaDiemMon, dm.IdMonHoc,dm.MaHS,dm.MaLop,dm.DTB,dm.MaHocKi,d.LoaiKiemTra,d.Diem FROM DiemMon dm join Diem d on dm.MaDiemMon= d.MaDiemMon) diem 
	JOIN HocSinh h on diem.MaHS=h.MaHS
	WHERE diem.MaLop=@malop and diem.IdMonHoc=@mamonhoc and diem.MaHocKi=@hocki
END


GO
/****** Object:  StoredProcedure [dbo].[SuaHocSinh]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SuaHocSinh]
			@mahs int,
			@hoten nvarchar(100),
			@gioitinh nchar(10),
			@ngaysinh date,
			@diachi nvarchar(200),
			@sdt nchar(20),
			@email nvarchar(200),
			@tinhtrang bit,
			@lophientai int
as
begin
	
	update HocSinh
	set HoTen = @hoten, GioiTinh = @gioitinh, NgaySinh = @ngaysinh, DiaChi = @diachi,
		SDT = @sdt, Email = @email, TinhTrang = @tinhtrang, MaLop = @lophientai
	where MaHS = @mahs
end

GO
/****** Object:  StoredProcedure [dbo].[SuaKhoi]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SuaKhoi]
			@makhoi int,
			@tenkhoi nchar(10),
			@solop int		
as
begin
	update Khoi
	set TenKhoi = @tenkhoi, SoLop = @solop
	where MaKhoi = @makhoi
end

GO
/****** Object:  StoredProcedure [dbo].[SuaLop]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SuaLop]
			@malop int,
			@tenlop nchar(4),
			@idkhoahoc int,
			@makhoi int			
as
begin
	update Lop
	set TenLop = @tenlop, IdKhoaHoc = @idkhoahoc, MaKhoi = @makhoi
	where MaLop = @malop
end

GO
/****** Object:  StoredProcedure [dbo].[SuaMonHoc]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SuaMonHoc]
			@idmonhoc int,
			@mamonhoc nchar(10),
			@tenmonhoc nvarchar(50)		
as
begin
	update MonHoc
	set MaMonHoc = @mamonhoc, TenMonHoc = @tenmonhoc
	where IdMonHoc = @idmonhoc
end

GO
/****** Object:  StoredProcedure [dbo].[ThayDoiQuyDinh]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThayDoiQuyDinh]
			@id int,
			@maquydinh nchar(10),
			@thongtin nvarchar(MAX)
as
begin
	update QuyDinh
	set MaQD = @maquydinh, ThongTin = @thongtin
	where Id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[ThemDiem]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemDiem]
			@loaikiemtra varchar(50),
			@diem real,
			@madiemmon int
AS
BEGIN 
	INSERT INTO Diem(LoaiKiemTra,Diem,MaDiemMon) VALUES(@loaikiemtra,@diem,@madiemmon)
END

GO
/****** Object:  StoredProcedure [dbo].[ThemHocSinh]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemHocSinh]
			@hoten nvarchar(100),
			@gioitinh nchar(10),
			@ngaysinh date,
			@diachi nvarchar(200),
			@sdt nchar(20),
			@email nvarchar(200),
			@tinhtrang bit,
			@lophientai int
AS
BEGIN
	declare @mahs int = (select top (1) MaHS from HocSinh h order by MaHS desc)
	if(@mahs is null)
		set @mahs = 0;
	insert into HocSinh(HoTen, GioiTinh, NgaySinh, DiaChi, SDT, Email, TinhTrang, MaLop)
	values (@hoten, @gioitinh, @ngaysinh, @diachi, @sdt, @email, @tinhtrang, @lophientai)
	declare @countHocKi int = (select count(hk.MaHocKi) FROM HocKi hk)
	declare @i int= 0
	while @countHocKi >@i
	begin
		declare @PractitionerId int

		declare MY_CURSOR CURSOR 
			LOCAL STATIC READ_ONLY FORWARD_ONLY
		FOR 
		select mh.IdMonHoc from MonHoc mh

		OPEN MY_CURSOR
		FETCH NEXT FROM MY_CURSOR INTO @PractitionerId
		WHILE @@FETCH_STATUS = 0
		BEGIN 
			insert into DiemMon(IdMonHoc,MaHS,MaHocKi,MaLop,DTB) values(@PractitionerId,@mahs, @i+1,@lophientai,0)
			declare @madiemmon int =(select top(1) dm.MaDiemMon from DiemMon dm order by dm.MaDiemMon desc)
			declare @diem int=0
			while @diem<4
			begin
			insert into Diem(LoaiKiemTra,Diem,MaDiemMon,HeSo) values(@diem+1,0,@madiemmon,1)
			set @diem= @diem+1
			end
			FETCH NEXT FROM MY_CURSOR INTO @PractitionerId
		END
		CLOSE MY_CURSOR
		DEALLOCATE MY_CURSOR
		set @i+=1
	end
	
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKhoi]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThemKhoi]
			@tenkhoi nchar(10),			
			@solop int
as
begin
	insert into Khoi(TenKhoi,SoLop)
	values (@tenkhoi, @solop)
end

GO
/****** Object:  StoredProcedure [dbo].[ThemLop]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemLop]
	@tenlop nchar(4),
	@idkhoahoc int,
	@makhoi int
AS
BEGIN
	INSERT INTO Lop(TenLop,IdKhoaHoc,MaKhoi,SiSo) VALUES(@tenlop,@idkhoahoc,@makhoi,0)
END

GO
/****** Object:  StoredProcedure [dbo].[ThemMonHoc]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemMonHoc]
			@mamonhoc nchar(10),
			@tenmonhoc nvarchar(50)
as
begin
	insert into MonHoc(MaMonHoc,TenMonHoc)
	values (@mamonhoc,@tenmonhoc)
end

GO
/****** Object:  StoredProcedure [dbo].[UPDATEDTB]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEDTB]
	   @madiemmon int
AS 
BEGIN
	DECLARE @dtb int
    SELECT @dtb= SUM(p.i)/COUNT(p.j) FROM (SELECT SUM(d.Diem)*d.HeSo i,COUNT(d.LoaiKiemTra)*d.HeSo j FROM Diem d WHERE d.MaDiemMon= @madiemmon GROUP BY d.LoaiKiemTra, d.HeSo) p
END

GO
/****** Object:  StoredProcedure [dbo].[XoaHocSinh]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaHocSinh]
			@mahs int
as
begin
	delete from HocSinh where MaHS = @mahs
end

GO
/****** Object:  StoredProcedure [dbo].[XoaKhoi]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaKhoi]
			@makhoi int			
as
begin
	delete from Khoi where MaKhoi = @makhoi
end

GO
/****** Object:  StoredProcedure [dbo].[XoaLop]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaLop]
			@malop int			
as
begin
	delete from Lop where MaLop = @malop
end

GO
/****** Object:  StoredProcedure [dbo].[XoaMonHoc]    Script Date: 11/29/2018 2:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XoaMonHoc]
			@idmonhoc int		
as
begin
	delete from MonHoc where IdMonHoc = @idmonhoc
end

GO
