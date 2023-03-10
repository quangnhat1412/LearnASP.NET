USE [QLNhanVien]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 2/22/2023 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoNV] [nvarchar](30) NULL,
	[TenNV] [nvarchar](20) NULL,
	[Phai] [bit] NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[MaPhong] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 2/22/2023 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (1, N'Nguyễn Văn', N'Hải', 1, CAST(N'1976-03-02' AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (2, N'Trần Văn', N'Chính', 1, CAST(N'1970-05-12' AS Date), N'TP.HCM', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (3, N'Trần Anh', N'Tuấn', 1, CAST(N'1985-12-25' AS Date), N'Long An', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (4, N'Lê Khắc', N'Chương', 1, CAST(N'1970-03-09' AS Date), N'Sài Gòn', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (5, N'Trần Thanh ', N'Mai', 0, CAST(N'1990-07-08' AS Date), N'Bến Tre', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (6, N'Trần Thị Thu ', N'Thủy', 0, CAST(N'1970-09-15' AS Date), N'Sài Gòn ', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (7, N'Trần Thị', N'Thanh', 0, CAST(N'1982-09-04' AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (8, N'Lê Thanh', N'Liêm', 1, CAST(N'1981-10-05' AS Date), N'TP.hcm', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (9, N'Nguyễn Phú', N'Thành', 1, CAST(N'1980-12-31' AS Date), N'Sài Gòn', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (10, N'Bùi Tấn ', N'Tài', 1, CAST(N'1987-01-19' AS Date), N'Đồng nai', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (11, N'Trần Thị Hoài', N'Thương', 0, CAST(N'1991-05-29' AS Date), N'Long An', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (12, N'Mạc Anh ', N'Khoa', 1, CAST(N'1971-10-25' AS Date), N'Sài Gòn', 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (1, N'Phòng tổ chức nhân sự')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (2, N'Phòng kinh doanh')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (3, N'Phòng tài chính kế toán')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (4, N'Phòng sản xuất ')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (5, N'Phòng tiếp thị sản phẩm')
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Phong]
GO
