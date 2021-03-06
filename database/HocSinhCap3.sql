USE [HocSinhCap3]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 11/28/2018 21:29:47 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Login] ([Username], [Password], [Type]) VALUES (N'admin     ', N'123', 1)
INSERT [dbo].[Login] ([Username], [Password], [Type]) VALUES (N'user1     ', N'111', 2)
INSERT [dbo].[Login] ([Username], [Password], [Type]) VALUES (N'user2     ', N'222', 2)
/****** Object:  Table [dbo].[Khoi]    Script Date: 11/28/2018 21:29:47 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Khoi] ON
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (1, N'Khối 10   ', 5)
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (2, N'Khối 11   ', 4)
INSERT [dbo].[Khoi] ([MaKhoi], [TenKhoi], [SoLop]) VALUES (3, N'Khối 12   ', 3)
SET IDENTITY_INSERT [dbo].[Khoi] OFF
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 11/28/2018 21:29:47 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (1, 2014)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (2, 2015)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (3, 2016)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (4, 2017)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (5, 2018)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (6, 2019)
INSERT [dbo].[KhoaHoc] ([IdKhoaHoc], [NamHoc]) VALUES (7, 2020)
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 11/28/2018 21:29:47 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QuyDinh] ON
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (1, N'QD1       ', N'Tuổi học sinh từ 15 tuổi đến 20 tuổi.')
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (2, N'QD2       ', N'Có 3 khối lớp (10, 11, 12).
Mỗi lớp không quá 40 học sinh.')
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (3, N'QD3       ', N'Có 2 học kỳ (HK1, HK2). Có 9 môn học (Toán, Lý, Hóa, Sinh, Văn, Sử, Địa, Tiếng Anh).')
INSERT [dbo].[QuyDinh] ([Id], [MaQD], [ThongTin]) VALUES (4, N'QD4       ', N'Học sinh đạt môn nếu có điểm trung bình lớn hơn 5 điểm')
SET IDENTITY_INSERT [dbo].[QuyDinh] OFF
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/28/2018 21:29:47 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
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
/****** Object:  Table [dbo].[HocKi]    Script Date: 11/28/2018 21:29:47 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HocKi] ([MaHocKi], [TenHocKi]) VALUES (N'HK1', N'Học Kì 1  ')
INSERT [dbo].[HocKi] ([MaHocKi], [TenHocKi]) VALUES (N'HK2', N'Học Kì 2  ')
/****** Object:  StoredProcedure [dbo].[XoaKhoi]    Script Date: 11/28/2018 21:29:51 ******/
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
/****** Object:  StoredProcedure [dbo].[XoaMonHoc]    Script Date: 11/28/2018 21:29:51 ******/
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
/****** Object:  StoredProcedure [dbo].[ThemKhoi]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[ThemMonHoc]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SuaKhoi]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[ThayDoiQuyDinh]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[SuaMonHoc]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  Table [dbo].[Lop]    Script Date: 11/28/2018 21:29:52 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lop] ON
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (1, N'10A1', 5, 1, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (2, N'10A2', 5, 1, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (3, N'11A1', 5, 2, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (4, N'11A2', 5, 2, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (6, N'12A1', 5, 3, 0)
INSERT [dbo].[Lop] ([MaLop], [TenLop], [IdKhoaHoc], [MaKhoi], [SiSo]) VALUES (8, N'12A2', 5, 3, 0)
SET IDENTITY_INSERT [dbo].[Lop] OFF
/****** Object:  Table [dbo].[HocSinh]    Script Date: 11/28/2018 21:29:52 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HocSinh] ON
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (6, N'lê thị bd', N'Nam       ', CAST(0x07240B00 AS Date), N'nhà b', N'012210              ', N'b.com', 1, 1)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (18, N'hoang yen', N'Nữ        ', CAST(0x07240B00 AS Date), N'ádasd', N'3434                ', N'rád', 1, 3)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (19, N'hd', N'Nam       ', CAST(0x07240B00 AS Date), N'hh', N'hh                  ', N'hhh', 0, 8)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (20, N'kk', N'Nam       ', CAST(0x07240B00 AS Date), N'kk6', N'66                  ', N'kk', 0, 3)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (23, N'ee', N'Nữ        ', CAST(0x07240B00 AS Date), N'ee', N'222                 ', N'ee', 1, 1)
INSERT [dbo].[HocSinh] ([MaHS], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TinhTrang], [MaLop]) VALUES (26, N'lk', N'Nam       ', CAST(0x632A0B00 AS Date), N'ddd', N'44                  ', N'dd', 1, 6)
SET IDENTITY_INSERT [dbo].[HocSinh] OFF
/****** Object:  StoredProcedure [dbo].[SuaLop]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[ThemLop]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[XoaLop]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[DanhSachHocSinhTheoLop]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[XoaHocSinh]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  StoredProcedure [dbo].[ThemHocSinh]    Script Date: 11/28/2018 21:29:52 ******/
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
	
END
GO
/****** Object:  StoredProcedure [dbo].[SuaHocSinh]    Script Date: 11/28/2018 21:29:52 ******/
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
/****** Object:  Table [dbo].[DiemMon]    Script Date: 11/28/2018 21:29:52 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 11/28/2018 21:29:52 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Lop_KhoaHoc]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_KhoaHoc] FOREIGN KEY([IdKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([IdKhoaHoc])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_KhoaHoc]
GO
/****** Object:  ForeignKey [FK_Lop_Khoi]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoi] FOREIGN KEY([MaKhoi])
REFERENCES [dbo].[Khoi] ([MaKhoi])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Khoi]
GO
/****** Object:  ForeignKey [FK_HocSinh_Lop]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_Lop]
GO
/****** Object:  ForeignKey [FK_DiemMon_HocKi]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[DiemMon]  WITH CHECK ADD  CONSTRAINT [FK_DiemMon_HocKi] FOREIGN KEY([MaHocKi])
REFERENCES [dbo].[HocKi] ([MaHocKi])
GO
ALTER TABLE [dbo].[DiemMon] CHECK CONSTRAINT [FK_DiemMon_HocKi]
GO
/****** Object:  ForeignKey [FK_DiemMon_HocSinh]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[DiemMon]  WITH CHECK ADD  CONSTRAINT [FK_DiemMon_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[DiemMon] CHECK CONSTRAINT [FK_DiemMon_HocSinh]
GO
/****** Object:  ForeignKey [FK_DiemMon_MonHoc]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[DiemMon]  WITH CHECK ADD  CONSTRAINT [FK_DiemMon_MonHoc] FOREIGN KEY([IdMonHoc])
REFERENCES [dbo].[MonHoc] ([IdMonHoc])
GO
ALTER TABLE [dbo].[DiemMon] CHECK CONSTRAINT [FK_DiemMon_MonHoc]
GO
/****** Object:  ForeignKey [FK_Diem_DiemMon]    Script Date: 11/28/2018 21:29:52 ******/
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_DiemMon] FOREIGN KEY([MaDiemMon])
REFERENCES [dbo].[DiemMon] ([MaDiemMon])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_DiemMon]
GO
