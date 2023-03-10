USE [master]
GO
/****** Object:  Database [QlCafe]    Script Date: 21/12/2022 11:54:24 AM ******/
CREATE DATABASE [QlCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QlCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NATSUME\MSSQL\DATA\QlCafe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QlCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.NATSUME\MSSQL\DATA\QlCafe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QlCafe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QlCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QlCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QlCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QlCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QlCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QlCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QlCafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QlCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QlCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QlCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QlCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QlCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QlCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QlCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QlCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QlCafe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QlCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QlCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QlCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QlCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QlCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QlCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QlCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QlCafe] SET RECOVERY FULL 
GO
ALTER DATABASE [QlCafe] SET  MULTI_USER 
GO
ALTER DATABASE [QlCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QlCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QlCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QlCafe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QlCafe] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QlCafe', N'ON'
GO
USE [QlCafe]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaCTHD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaHD] [bigint] NOT NULL,
	[SoLuong] [bigint] NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUAHANG]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUAHANG](
	[MaChiNhanh] [nvarchar](50) NOT NULL,
	[TenChiNhanh] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](150) NOT NULL,
	[Sdt] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MaGH] [bigint] IDENTITY(1,1) NOT NULL,
	[MaKH] [bigint] NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[Gia] [bigint] NOT NULL,
	[SoLuong] [bigint] NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GIOHANG] PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaKH] [bigint] NOT NULL,
	[NgayMua] [datetime] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [bigint] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Sdt] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[TenDN] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[AnhLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[AnhSP] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](500) NOT NULL,
	[MaLoai] [nvarchar](50) NOT NULL,
	[Gia] [bigint] NOT NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOANADMIN]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANADMIN](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Quyen] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoanAdmin] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vchitiet]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vchitiet]
AS
SELECT        dbo.CHITIETHOADON.MaHD, dbo.SANPHAM.TenSP, dbo.SANPHAM.AnhSP, dbo.CHITIETHOADON.SoLuong, dbo.CHITIETHOADON.Size, dbo.SANPHAM.Gia, dbo.HOADON.TrangThai
FROM            dbo.CHITIETHOADON INNER JOIN
                         dbo.SANPHAM ON dbo.CHITIETHOADON.MaSP = dbo.SANPHAM.MaSP INNER JOIN
                         dbo.HOADON ON dbo.CHITIETHOADON.MaHD = dbo.HOADON.MaHD
WHERE        (dbo.HOADON.TrangThai = 1)

GO
/****** Object:  View [dbo].[vgio]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vgio]
AS
SELECT        dbo.SANPHAM.TenSP, dbo.GIOHANG.*
FROM            dbo.GIOHANG INNER JOIN
                         dbo.SANPHAM ON dbo.GIOHANG.MaSP = dbo.SANPHAM.MaSP

GO
/****** Object:  View [dbo].[vlsuct]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vlsuct]
AS
SELECT        dbo.CHITIETHOADON.MaHD, dbo.CHITIETHOADON.MaSP, dbo.SANPHAM.TenSP, dbo.CHITIETHOADON.SoLuong, dbo.SANPHAM.Gia, dbo.CHITIETHOADON.Size, dbo.SANPHAM.AnhSP
FROM            dbo.CHITIETHOADON INNER JOIN
                         dbo.SANPHAM ON dbo.CHITIETHOADON.MaSP = dbo.SANPHAM.MaSP

GO
/****** Object:  View [dbo].[vxacnhan]    Script Date: 21/12/2022 11:54:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vxacnhan]
AS
SELECT DISTINCT dbo.HOADON.MaHD, dbo.HOADON.MaKH, dbo.KHACHHANG.HoTen, dbo.HOADON.DiaChi, dbo.KHACHHANG.Sdt, dbo.HOADON.NgayMua, dbo.HOADON.TrangThai
FROM            dbo.CHITIETHOADON INNER JOIN
                         dbo.HOADON ON dbo.CHITIETHOADON.MaHD = dbo.HOADON.MaHD INNER JOIN
                         dbo.KHACHHANG ON dbo.HOADON.MaKH = dbo.KHACHHANG.MaKH

GO
SET IDENTITY_INSERT [dbo].[CHITIETHOADON] ON 

INSERT [dbo].[CHITIETHOADON] ([MaCTHD], [MaHD], [SoLuong], [Size], [MaSP]) VALUES (78, 26, 1, N'Lớn', N'cp03')
INSERT [dbo].[CHITIETHOADON] ([MaCTHD], [MaHD], [SoLuong], [Size], [MaSP]) VALUES (79, 26, 1, N'Lớn', N'cp03')
INSERT [dbo].[CHITIETHOADON] ([MaCTHD], [MaHD], [SoLuong], [Size], [MaSP]) VALUES (80, 27, 1, N'Lớn', N'cp03')
SET IDENTITY_INSERT [dbo].[CHITIETHOADON] OFF
INSERT [dbo].[CUAHANG] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [Sdt]) VALUES (N'đà nẵng', N'chi nhánh 01 Đà nẵng', N'80A Nguyễn Chí Thanh, Quận Hải Châu, Đà Nẵng, Việt Nam', N'12312312')
INSERT [dbo].[CUAHANG] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [Sdt]) VALUES (N'hue01', N'chi nhánh 01 huế', N'61 Võ Thị Sáu, Thành phố Huế, Thừa Thiên Huế, Việt Nam', N'+842871 078 079')
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MaHD], [MaKH], [NgayMua], [TrangThai], [DiaChi]) VALUES (26, 4, CAST(N'2022-12-20 00:00:00.000' AS DateTime), 1, N'123')
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [NgayMua], [TrangThai], [DiaChi]) VALUES (27, 4, CAST(N'2022-12-20 00:00:00.000' AS DateTime), 0, N'123')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [DiaChi], [Sdt], [Email], [TenDN], [Pass]) VALUES (4, N'Đoàn Văn Minh', N'xóm 6, an truyền', N'0766768322', N'doanvanminh29082001@gmail.com', N'minh', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [DiaChi], [Sdt], [Email], [TenDN], [Pass]) VALUES (5, N'Nguyễn Đức Hiếu', N'kim long, huế', N'0721235234', N'nguyenduchieu@gmail.com', N'hieu', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [DiaChi], [Sdt], [Email], [TenDN], [Pass]) VALUES (6, N'phan kh&#7855;c tri&#7879;u', N'hue', N'077777', N'trieu123@gmail.com', N'trieu', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [DiaChi], [Sdt], [Email], [TenDN], [Pass]) VALUES (7, N'phan van thanh nhan', N'hue', N'123123', N'nhan@gmai.com', N'nhan', N'202cb962ac59075b964b07152d234b70')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'b-sn', N'Bánh-snack', N'img-loai/banh-snack.png')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'cf', N'CloundFee', N'img-loai/cloudfee.png')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'cp', N'Cà phê', N'img-loai/ca-phe.png')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'ct', N'Clound Tea', N'img-loai/cloudtea.png')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'ht', N'Hi-Tea', N'img-loai/hi-tea.png')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'ttc-ts', N'Trà Trái Cây - Trà Sữa', N'img-loai/tra-trai-cay-tra-sua.png')
INSERT [dbo].[LOAI] ([MaLoai], [TenLoai], [AnhLoai]) VALUES (N'tul', N'Thức uống lon', N'img-loai/ca-phe-goi-ca-phe-uong-lien.png')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'b-sn01', N'Bánh Mì Que Pate', N'img-sp/1669736956_banh-mi-que-pate.png', N'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần thú vị.', N'b-sn', 15000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'b-sn02', N'Bánh Mì VN Thịt Nguội', N'img-sp/1638440015_banh-mi-vietnam.jpg', N'Gói gọn trong ổ bánh mì Việt Nam là từng lớp chả, từng lớp jambon hòa quyện cùng bơ và pate thơm lừng, thêm dưa rau cho bữa sáng đầy năng lượng. *Phần bánh sẽ ngon và đậm đà nhất khi kèm pate. Để đảm bảo hương vị được trọn vẹn, Nhà mong bạn thông cảm vì không thể thay đổi định lượng pate.', N'b-sn', 35000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'b-sn03', N'Croissant trứng muối', N'img-sp/croissant-trung-muoi_880850.jpg', N'Croissant trứng muối thơm lừng, bên ngoài vỏ bánh giòn hấp dẫn bên trong trứng muối vị ngon khó cưỡng.', N'b-sn', 35000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'b-sn04', N'Mochi Kem Phúc Bồn Tử', N'img-sp/1643102019_mochi-phucbontu.jpg', N'Bao bọc bởi lớp vỏ Mochi dẻo thơm, bên trong là lớp kem lạnh cùng nhân phúc bồn tử ngọt ngào. Gọi 1 chiếc Mochi cho ngày thật tươi mát. Sản phẩm phải bảo quán mát và dùng ngon nhất trong 2h sau khi nhận hàng.', N'b-sn', 19000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'b-sn05', N'Mousse Gấu Chocolate', N'img-sp/1638170066_gau.jpg', N'Với vẻ ngoài đáng yêu và hương vị ngọt ngào, thơm béo nhất định bạn phải thử ít nhất 1 lần.', N'b-sn', 39000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cf01', N'CloudFee Hạnh Nhân Nướng', N'img-sp/1669736910_cloudfee-hanh-nhan-nuong.png', N'Vị đắng nhẹ từ cà phê phin truyền thống kết hợp Espresso Ý, lẫn chút ngọt ngào của kem sữa và lớp foam trứng cacao, nhấn thêm hạnh nhân nướng thơm bùi, kèm topping thạch cà phê dai giòn mê ly. Tất cả cùng quyện hoà trong một thức uống làm vị giác "thức giấc", thơm ngon hết nấc.', N'cf', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cf02', N'CloudFee Caramel', N'img-sp/1665655225_cloudfee-caramel.jpg', N'Ngon khó cưỡng bởi xíu đắng nhẹ từ cà phê phin truyền thống pha trộn với Espresso lừng danh nước Ý, quyện vị kem sữa và caramel ngọt ngọt, thêm lớp foam trứng cacao bồng bềnh béo mịn, kèm topping thạch cà phê dai giòn nhai cực cuốn. Một thức uống "điểm mười" cho cả ngày tươi không cần tưới.', N'cf', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cf03', N'CloudFee Classic', N'img-sp/1665655219_cloudfee-classic.jpg', N'Khiến bạn mê mẩn ngay ngụm đầu tiên bởi vị đắng nhẹ của cà phê phin truyền thống kết hợp Espresso Ý, quyện hòa cùng chút ngọt ngào của kem sữa, và thơm béo từ foam trứng cacao. Nhấp một ngụm rồi nhai cùng thạch cà phê dai dai giòn giòn, đúng chuẩn "ngon quên lối về". CloudFee Classic là món đậm vị cà phê nhất trong bộ sưu tập nhưng không quá đắng, ngậy nhưng không hề ngấy.', N'cf', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cf04', N'CloudFee Pandan Coconut', N'img-sp/1665655237_cloudfee-pandan-coconut.jpg', N'Bắt đầu ngày mới với xíu đắng nhẹ của cà phê phin truyền thống kết hợp Espresso Ý, kèm chút ngọt ngào từ kem sữa, thêm ấn tượng bởi vị dừa lá dứa thơm béo đậm chất Việt Nam. Đặc biệt, nhân đôi độ ngon với topping thạch cà phê giòn dai, cùng foam phô mai mềm mịn dễ ghiền.', N'cf', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cp01', N'Cà Phê Sữa Nóng', N'img-sp/1639377770_cfsua-nong.jpg', N'Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.', N'cp', 35000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cp02', N'Bạc Sỉu', N'img-sp/1639377904_bac-siu.jpg', N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.', N'cp', 29000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cp03', N'Cà Phê Sữa Đá', N'img-sp/1669736835_ca-phe-sua-da.png', N'Cà phê Đắk Lắk nguyên chất được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.', N'cp', 29000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cp04', N'Cà Phê Sữa Đá Chai Fresh 250ML', N'img-sp/BottleCFSD_496652.jpg', N'Vẫn là hương vị cà phê sữa đậm đà quen thuộc của The Coffee House nhưng khoác lên mình một chiếc áo mới tiện lợi hơn, tiết kiệm hơn phù hợp với bình thường mới, giúp bạn tận hưởng một ngày dài trọn vẹn. *Sản phẩm dùng ngon nhất trong ngày. *Sản phẩm mặc định mức đường và không đá.', N'cp', 75000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'cp05', N'Cà Phê Đen Đá', N'img-sp/1639377797_ca-phe-den-da.jpg', N'Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.', N'cp', 29000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ct01', N'CloudTea S’more Choco Marshmallow', N'img-sp/1670680274_choco-pp.jpg', N'Thức uống đậm chất mùa lễ hội dành cho ai mê đắm sô cô la tới rồi đây. Trà sữa S’more Choco Marshmallow với 3 tầng hương vị đầy hấp dẫn. Tầng foam cheese béo ngậy, rắc thêm vụn bánh quy phô mai giòn tan và marshmallow mềm mịn. Tầng trà sữa Oolong nướng đậm hương, êm vị hòa quyện cùng kem sữa và sô cô la ngọt ngào. Và không thể bỏ qua, thạch Oolong nướng nguyên chất, càng nhai càng cuốn. Thử là mê tít, hệt cái hôn của người thương!', N'ct', 69000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ct02', N'CloudTea Very Berry Mochi', N'img-sp/1670680336_berry-pp.jpg', N'Chiếc trà sữa núng na, núng nính vừa nhìn đã yêu gọi tên CloudTea Very Berry Mochi. Chiếm trọn “spotlight” là em mochi kem hồng cực xinh, với vỏ dẻo thơm, nhân kem Phúc Bồn Tử chua chua ngọt ngọt tan chảy. Càng thêm ghiền khi tầng foam cheese beo béo, kèm vụn bánh quy phô mai giòn tan. Đặc biệt, trà sữa Lài thơm ngát thêm bừng vị khi hoà quyện cùng dâu tây ngọt ngào. Nhấp một ngụm là mê liền! Lưu ý: Mochi có thể bị chìm do ảnh hưởng trong quá trình vận chuyển.', N'ct', 69000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ct03', N'CloudTea Oolong Nướng Kem Dừa', N'img-sp/1669736929_cloudtea-oolong-nuong-kem-dua.png', N'Vừa chạm môi là mê mẩn ngay lớp kem dừa beo béo, kèm vụn bánh quy phô mai giòn tan trong miệng. Đặc biệt, trà Oolong nướng đậm đà, hòa cùng sữa dừa ngọt dịu. Hương vị thêm bùng nổ nhờ có thạch Oolong nướng nguyên chất, giòn dai.', N'ct', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ct04', N'CloudTea Oolong Nướng Caramel', N'img-sp/1667460870_caramel.jpg', N'Chiếc trà sữa chân ái dành cho tín đồ hảo ngọt gọi tên CloudTea Oolong Nướng Caramel. Sự kết hợp của foam trứng béo mịn, caramel thơm lừng, trà Oolong nướng rõ vị quyện kem sữa ngọt ngào, làm tan chảy vị giác tựa khoảnh khắc chạm môi người thương. Thêm bột cacao đậm đà và thạch Oolong nướng dai giòn giúp độ ngon nhân đôi.', N'ct', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ct05', N'CloudTea Oolong Nướng Kem Cheese', N'img-sp/1667460766_kem-cheese.jpg', N'Hội mê cheese sao có thể bỏ lỡ chiếc trà sữa siêu mlem này. Món đậm vị Oolong nướng - nền trà được yêu thích nhất hiện nay, quyện thêm kem sữa thơm béo. Đặc biệt, chinh phục ngay fan ghiền cheese bởi lớp foam phô mai mềm tan mằn mặn. Càng ngon cực với thạch Oolong nướng nguyên chất giòn dai nhai siêu thích.', N'ct', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ct06', N'CloudTea Hồng Trà Arabica', N'img-sp/1665655072_hong-tra-arabica.jpg', N'Thức uống "chân ái" dành cho những ai vừa thích trà sữa ngọt ngào, êm dịu vừa mê cà phê đắng nhẹ, tỉnh táo. CloudTea Hồng Trà Arabica cực cuốn bởi lớp foam trứng bồng bềnh rắc thêm bột cacao thơm lừng. Vị thêm bùng nổ bởi sự kết hợp ăn ý giữa hồng trà đậm đà cùng cà phê Arabica êm vị. Món càng thêm hấp dẫn khi có thạch cà phê giòn, dai cực ngon.', N'ct', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ht01', N'Hi-Tea Phúc Bồn Tử Mandarin', N'img-sp/1669707649_bg-hitea-quyt-no.jpg', N'Nền trà Hibiscus thanh mát, quyện vị chua chua ngọt ngọt của phúc bồn tử 100% tự nhiên cùng quýt mọng nước mang đến cảm giác sảng khoái tức thì.', N'ht', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ht02', N'Hi-Tea Dâu Tây Mận Muối Aloe Vera', N'img-sp/1669737867_dau-man-muoi-aloe-vera.png', N'Sự kết hợp độc đáo giữa 3 sắc thái hương vị khác nhau: trà hoa Hibiscus chua thanh, Mận muối mặn mặn và Dâu tây tươi Đà Lạt cô đặc ngọt dịu. Ngoài ra, topping Aloe Vera tươi mát, ngon ngất ngây, đẹp đắm say, hứa hẹn sẽ khuấy đảo hè này.', N'ht', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ht03', N'Hi-Tea Xoài Aloe Vera', N'img-sp/1655199358_xoai-aloe-vera.jpg', N'Vị ngọt thanh, thơm phức từ xoài chín mọng kết hợp cùng vị chua đặc trưng của trà hoa Hibiscus tự nhiên, sẽ khiến bạn khó lòng quên được thức uống “chân ái” mùa hè này. Đặc biệt, topping Aloe Vera tự nhiên không chỉ nhâm nhi vui miệng mà còn giúp bạn “nâng tầm nhan sắc”.', N'ht', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ht04', N'Hi-Tea Yuzu Trân Châu', N'img-sp/1669736859_hi-tea-yuzu-tran-chau.png', N'Không chỉ nổi bật với sắc đỏ đặc trưng từ trà hoa Hibiscus, Hi-Tea Yuzu còn gây ấn tượng với topping Yuzu (quýt Nhật) lạ miệng, kết hợp cùng trân châu trắng dai giòn sần sật, nhai vui vui.', N'ht', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ht05', N'Hi-Tea Vải', N'img-sp/1669736893_hi-tea-vai.png', N'Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.', N'ht', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ht06', N'Hi-Tea Đào', N'img-sp/1669737919_hi-tea-dao.jpg', N'Sự kết hợp ăn ý giữa Đào cùng trà hoa Hibiscus, tạo nên tổng thể hài hoà dễ gây “thương nhớ” cho team thích món thanh mát, có vị chua nhẹ.', N'ht', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ttc-ts01', N'Trà Sữa Dừa (Nóng)', N'img-sp/1669707486_very-berry.jpg', N'Trà Sữa Dừa ấm nóng, xua tan lạnh lẽo hệt như cái ôm của người thương. Nền trà Oolong nướng đậm hương, êm dịu thêm chút sữa dừa thơm béo, ngọt ngào, tạo nên thức uống ngon khó cưỡng.', N'ttc-ts', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ttc-ts02', N'Trà Sữa Sô Cô La (Nóng)', N'img-sp/1669707518_s-more-choco.jpg', N'Trong tiết trời se lạnh, còn gì tuyệt hơn khi được nhâm nhi ly Trà Sữa Sô Cô La ấm nóng. Hương vị trà Oolong nướng quen thuộc kết hợp cùng sô cô la ngọt ngào, thêm topping marshmallow mềm mịn, cứ uống là ghiền.', N'ttc-ts', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ttc-ts03', N'Trà Long Nhãn Hạt Sen', N'img-sp/1649378747_tra-sen-nhan.jpg', N'Thức uống mang hương vị của nhãn, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp Tết này. An lành, thư thái và đậm đà chính là những gì The Coffee House mong muốn gửi trao đến bạn và gia đình.', N'ttc-ts', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ttc-ts04', N'Trà Đào Cam Sả - Đá', N'img-sp/1669736819_tra-dao-cam-sa-da.png', N'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', N'ttc-ts', 49000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'ttc-ts05', N'Trà Đào Cam Sả - Nóng', N'img-sp/tdcs-nong_288997.jpg', N'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', N'ttc-ts', 55000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'tul01', N'Thùng Cà Phê Sữa Espresso', N'img-sp/1669707271_24lon-espresso-no.jpg', N'Được sản xuất theo công nghệ Nhật, Cà Phê Sữa Espresso The Coffee House giữ trọn hương vị đậm đà của 100% cà phê Robusta nguyên chất quyện hoà cùng sữa béo thơm lừng. Bật nắp trải nghiệm ngay chất cà phê mạnh mẽ giúp sảng khoái tức thì, tuôn trào hứng khởi', N'tul', 336000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'tul02', N'Cà Phê Sữa Đá Hòa Tan (10 gói x 22g)', N'img-sp/cpsd-3in1_971575.jpg', N'Thật dễ dàng để bắt đầu ngày mới với tách cà phê sữa đá sóng sánh, thơm ngon như cà phê pha phin. Vị đắng thanh của cà phê hoà quyện với vị ngọt béo của sữa, giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.', N'tul', 44000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'tul03', N'Combo 6 Lon Cà Phê Sữa Espresso', N'img-sp/1669707292_6lon-espresso-no.jpg', N'Được sản xuất theo công nghệ Nhật, Cà Phê Sữa Espresso The Coffee House giữ trọn hương vị đậm đà của 100% cà phê Robusta nguyên chất quyện hoà cùng sữa béo thơm lừng. Bật nắp trải nghiệm ngay chất cà phê mạnh mẽ giúp sảng khoái tức thì, tuôn trào hứng khởi', N'tul', 84000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'tul04', N'Cà Phê Hoà Tan Đậm Vị Việt (18 gói x 16 gam)', N'img-sp/1639648313_ca-phe-sua-da-hoa-tan-dam-vi-viet.jpg', N'Bắt đầu ngày mới với tách cà phê sữa “Đậm vị Việt” mạnh mẽ sẽ giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.', N'tul', 48000)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [AnhSP], [MoTa], [MaLoai], [Gia]) VALUES (N'tul05', N'Cà Phê Sữa Đá Hòa Tan Túi 25x22G', N'img-sp/1639648355_ca-phe-sua-da-hoa-tan-tui-25x22gr.jpg', N'Thật dễ dàng để bắt đầu ngày mới với tách cà phê sữa đá sóng sánh, thơm ngon như cà phê pha phin. Vị đắng thanh của cà phê hoà quyện với vị ngọt béo của sữa, giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.', N'tul', 99000)
INSERT [dbo].[TAIKHOANADMIN] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'abc', N'202cb962ac59075b964b07152d234b70', 1)
INSERT [dbo].[TAIKHOANADMIN] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'admin', N'202cb962ac59075b964b07152d234b70', 1)
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_SANPHAM]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_SANPHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAI] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAI] ([MaLoai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAI]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CHITIETHOADON"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "SANPHAM"
            Begin Extent = 
               Top = 6
               Left = 241
               Bottom = 177
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "HOADON"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vchitiet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vchitiet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GIOHANG"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 180
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SANPHAM"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 176
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vgio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vgio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CHITIETHOADON"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 162
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SANPHAM"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 175
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vlsuct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vlsuct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[16] 2[28] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CHITIETHOADON"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 185
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HOADON"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 167
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KHACHHANG"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 199
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vxacnhan'
GO
USE [master]
GO
ALTER DATABASE [QlCafe] SET  READ_WRITE 
GO
