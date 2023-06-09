USE [QL_DOI_BONG]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Cauthu]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cauthu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenCauthu] [nvarchar](150) NULL,
	[NgaySinh] [date] NULL,
	[Doi] [int] NULL,
	[LoaiCauthu] [nvarchar](150) NULL,
	[TongSoBanThang] [int] NULL,
	[GhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_Cauthu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Doi_Bong]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Doi_Bong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Doi_Bong] [nvarchar](150) NULL,
	[Ten_San_nha] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_Doi_Bong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KetQua]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KetQua](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDDoi] [int] NULL,
	[TenCauThu] [nvarchar](150) NULL,
	[LoaiBanThang] [varchar](50) NULL,
	[Thoidiem] [nvarchar](50) NULL,
	[IDLichThiDau] [int] NULL,
 CONSTRAINT [PK_tbl_KetQua] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Lichthidau]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Lichthidau](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Doi1] [int] NULL,
	[Doi2] [int] NULL,
	[NgayGio] [datetime] NULL,
	[TenSan] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_Lichthidau] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_QuiDinh]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QuiDinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoTuoiToiThieu] [int] NULL,
	[SoTuoiLonNhat] [int] NULL,
	[ThoiGianGhiBanToiDa] [int] NULL,
	[DiemThang] [int] NULL,
	[DiemHoa] [int] NULL,
	[DiemThu] [int] NULL,
	[SoLuongCauThu] [int] NULL,
	[SoLuongCauThuNuocNgoai] [int] NULL,
 CONSTRAINT [PK_tbl_QuiDinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_XepHang]    Script Date: 5/9/2023 2:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_XepHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Doi] [int] NULL,
	[Thang] [int] NULL,
	[Hoa] [int] NULL,
	[Thua] [int] NULL,
	[DiemSo] [int] NULL,
	[HieuSo] [int] NULL,
	[XepHang] [int] NULL,
	[IDLichThiDau] [int] NULL,
 CONSTRAINT [PK_tbl_XepHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Cauthu] ON 

INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (7, N'Trần Đỗ Anh Khoa', CAST(N'2003-03-12' AS Date), 1002, N'Trong nước', 12, N'Xuất sắc')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (8, N'Trần Lê Chí Hải', CAST(N'2023-04-22' AS Date), 1003, N'Trong nước', 16, N'Rất Giỏi')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (10, N'Nguyễn Văn Toản', CAST(N'2023-04-22' AS Date), 1002, N'Trong nước', 0, N'Xuất sắc')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (11, N'Lương Duy Cương', CAST(N'2023-04-22' AS Date), 1002, N'Trong nước', 0, N'')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (12, N'Đặng Văn Lâm', CAST(N'2023-04-22' AS Date), 1002, N'Ngoài nước', 1, N'')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (13, N'Bùi Hoàng Việt', CAST(N'2023-04-22' AS Date), 1002, N'Trong nước', 0, N'')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (1008, N'Nguyễn Công Phượng', CAST(N'1996-02-01' AS Date), 1002, N'Ngoài nước', 124, N'')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (1009, N'Bùi Tiến Dũng', CAST(N'1995-04-22' AS Date), 1002, N'Ngoài nước', 11, N'')
INSERT [dbo].[tbl_Cauthu] ([ID], [TenCauthu], [NgaySinh], [Doi], [LoaiCauthu], [TongSoBanThang], [GhiChu]) VALUES (1010, N'Đỗ Hùng Dũng', CAST(N'1994-04-22' AS Date), 1002, N'Trong nước', 20, N'')
SET IDENTITY_INSERT [dbo].[tbl_Cauthu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Doi_Bong] ON 

INSERT [dbo].[tbl_Doi_Bong] ([ID], [Ten_Doi_Bong], [Ten_San_nha]) VALUES (1002, N'FC_Bắc Ninh', N'Sân cỏ')
INSERT [dbo].[tbl_Doi_Bong] ([ID], [Ten_Doi_Bong], [Ten_San_nha]) VALUES (1003, N'FC_Khánh Hòa', N'Sân 14/8')
SET IDENTITY_INSERT [dbo].[tbl_Doi_Bong] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_KetQua] ON 

INSERT [dbo].[tbl_KetQua] ([ID], [IDDoi], [TenCauThu], [LoaiBanThang], [Thoidiem], [IDLichThiDau]) VALUES (1, 1002, N'Trần Đỗ Anh Khoa', N'A', N'12', 3)
INSERT [dbo].[tbl_KetQua] ([ID], [IDDoi], [TenCauThu], [LoaiBanThang], [Thoidiem], [IDLichThiDau]) VALUES (2, 1003, N'Trần Lê Chí Hải', N'B', N'42', 3)
INSERT [dbo].[tbl_KetQua] ([ID], [IDDoi], [TenCauThu], [LoaiBanThang], [Thoidiem], [IDLichThiDau]) VALUES (1005, 1002, N'Đặng Văn Lâm', N'A', N'30', 3)
INSERT [dbo].[tbl_KetQua] ([ID], [IDDoi], [TenCauThu], [LoaiBanThang], [Thoidiem], [IDLichThiDau]) VALUES (1006, 1002, N'Nguyễn Công Phượng', N'B', N'12', 1004)
INSERT [dbo].[tbl_KetQua] ([ID], [IDDoi], [TenCauThu], [LoaiBanThang], [Thoidiem], [IDLichThiDau]) VALUES (2006, 1003, N'Trần Lê Chí Hải', N'B', N'70', 1004)
SET IDENTITY_INSERT [dbo].[tbl_KetQua] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Lichthidau] ON 

INSERT [dbo].[tbl_Lichthidau] ([ID], [Doi1], [Doi2], [NgayGio], [TenSan]) VALUES (3, 1003, 1002, CAST(N'2023-05-10T14:23:43.000' AS DateTime), N'Sân 14/8')
INSERT [dbo].[tbl_Lichthidau] ([ID], [Doi1], [Doi2], [NgayGio], [TenSan]) VALUES (1004, 1003, 1002, CAST(N'2023-05-16T00:14:26.000' AS DateTime), N'Sân 14/8')
SET IDENTITY_INSERT [dbo].[tbl_Lichthidau] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_QuiDinh] ON 

INSERT [dbo].[tbl_QuiDinh] ([ID], [SoTuoiToiThieu], [SoTuoiLonNhat], [ThoiGianGhiBanToiDa], [DiemThang], [DiemHoa], [DiemThu], [SoLuongCauThu], [SoLuongCauThuNuocNgoai]) VALUES (1, 16, 40, 120, 3, 1, 0, 22, 3)
SET IDENTITY_INSERT [dbo].[tbl_QuiDinh] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_XepHang] ON 

INSERT [dbo].[tbl_XepHang] ([ID], [Doi], [Thang], [Hoa], [Thua], [DiemSo], [HieuSo], [XepHang], [IDLichThiDau]) VALUES (1004, 1003, 0, 0, 1, 0, NULL, NULL, 3)
INSERT [dbo].[tbl_XepHang] ([ID], [Doi], [Thang], [Hoa], [Thua], [DiemSo], [HieuSo], [XepHang], [IDLichThiDau]) VALUES (1005, 1002, 1, 0, 0, 3, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[tbl_XepHang] OFF
GO
ALTER TABLE [dbo].[tbl_Cauthu]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cauthu_tbl_Doi_Bong] FOREIGN KEY([Doi])
REFERENCES [dbo].[tbl_Doi_Bong] ([ID])
GO
ALTER TABLE [dbo].[tbl_Cauthu] CHECK CONSTRAINT [FK_tbl_Cauthu_tbl_Doi_Bong]
GO
ALTER TABLE [dbo].[tbl_KetQua]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KetQua_tbl_Lichthidau1] FOREIGN KEY([IDLichThiDau])
REFERENCES [dbo].[tbl_Lichthidau] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_KetQua] CHECK CONSTRAINT [FK_tbl_KetQua_tbl_Lichthidau1]
GO
ALTER TABLE [dbo].[tbl_Lichthidau]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Lichthidau_tbl_Doi_Bong] FOREIGN KEY([Doi1])
REFERENCES [dbo].[tbl_Doi_Bong] ([ID])
GO
ALTER TABLE [dbo].[tbl_Lichthidau] CHECK CONSTRAINT [FK_tbl_Lichthidau_tbl_Doi_Bong]
GO
ALTER TABLE [dbo].[tbl_Lichthidau]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Lichthidau_tbl_Doi_Bong1] FOREIGN KEY([Doi2])
REFERENCES [dbo].[tbl_Doi_Bong] ([ID])
GO
ALTER TABLE [dbo].[tbl_Lichthidau] CHECK CONSTRAINT [FK_tbl_Lichthidau_tbl_Doi_Bong1]
GO
ALTER TABLE [dbo].[tbl_XepHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_XepHang_tbl_Doi_Bong] FOREIGN KEY([Doi])
REFERENCES [dbo].[tbl_Doi_Bong] ([ID])
GO
ALTER TABLE [dbo].[tbl_XepHang] CHECK CONSTRAINT [FK_tbl_XepHang_tbl_Doi_Bong]
GO
