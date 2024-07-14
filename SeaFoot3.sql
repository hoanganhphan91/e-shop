CREATE DATABASE SeaFoot7
GO
USE SeaFoot7
GO
--Bang Danh Muc
CREATE TABLE DanhMucSanPham(
MaDanhMuc INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
TenDanhMuc NVARCHAR(100),
ImgUrl NVARCHAR(200) 
)
GO
Insert into DanhMucSanPham values(N'Ngao-sò-ốc','s1.png');
go
Insert into DanhMucSanPham values(N'Bào Ngư','s2.png');
go
Insert into DanhMucSanPham values(N'Tôm','s3.png');
go
Insert into DanhMucSanPham values(N'Mực','s4.png');
go
Insert into DanhMucSanPham values(N'Cá','s5.png');
go
Insert into DanhMucSanPham values(N'Sứa','s6.png');
go
Insert into DanhMucSanPham values(N'Sản phẩm đóng hộp','s6.png');
go
--Bang San Pham
CREATE TABLE SanPham(
MaSanPham INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
MaDanhMuc INT FOREIGN KEY REFERENCES DanhMucSanPham(MaDanhMuc) NOT NULL,
TenSanPham NVARCHAR(100),
GiaGoc FLOAT,
KhuyenMai FLOAT,
DonViTinh NVARCHAR(20),
ImgUrl NVARCHAR(200),
MotaNgan NVARCHAR(1000),
MotaChiTiet NVARCHAR(max),
Luotxem FLOAT(10),
SoLuong int
)
GO
Insert into SanPham values(1,N'Cồi sò điệp',160000,0,'vnd','coi-so-diep-1_master.jpg',N'Cồi sò điệp ngon bổ dưỡng',N'Cồi sò điệp ngon bổ dưỡng',0,0);
go
Insert into SanPham values(2,N'Ngao 2 Cồi',190000,0,'vnd','ngao-2-coi-1_master.jpg',N'Ngao 2 Cồi ngon bổ dưỡng',N'Ngao 2 Cồi ngon bổ dưỡng',0,0);
go
Insert into SanPham values(3,N'Tôm hùm tre',1000000,0,'vnd','tom_hum_tre_01_master.jpg',N'Tôm hùm tre bổ dưỡng',N'Tôm hùm tre bổ dưỡng',0,0);
go
Insert into SanPham values(4,N'Mực Mai',170000,0,'vnd','oc-huong-1_master.jpg',N'Ngao 2 Cồi ngon bổ dưỡng',N'Ngao 2 Cồi ngon bổ dưỡng',0,0);
go
Insert into SanPham values(5,N'Cá hồi',450000,0,'vnd','so-mai-1_master.jpg',N'Cá hồi ngon bổ dưỡng',N'Cá hồi ngon bổ dưỡng',0,0);
go
Insert into SanPham values(6,N'Sứa tươi',150000,0,'vnd','hau-sua-1_master.jpg',N'Sứa tươi ngon bổ dưỡng',N'Sứa tươi ngon bổ dưỡng',0,0);
go
Insert into SanPham values(7,N'Cua',190000,0,'vnd','tom_su_bien_new_1_master.jpg',N'Cua ngon bổ dưỡng',N'Cua ngon bổ dưỡng',0,0);
go

-- Bang Tin Tuc
CREATE TABLE TinTuc(
MaTinTuc INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
TieuDe NVARCHAR(200),
NgayTao date,
NoiDung NTEXT
)
GO
--Bang Lien He
CREATE TABLE LienHe(
MaLienHe INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
HoTen NVARCHAR(50),
Email NVARCHAR(100),
ChuDe NVARCHAR(200),
NoiDung NTEXT
)
GO
--Bang User
CREATE TABLE Users(
TaiKhoan NVARCHAR(50) PRIMARY KEY  NOT NULL,
MatKhau NVARCHAR(50) NOT NULL,
HoTen NVARCHAR(50) NOT NULL,
GioiTinh BIT,
NgaySinh Datetime,
DiaChi NVARCHAR(200),
Email NVARCHAR(100),
SoDT VARCHAR(10),
NhomQuyen INT NOT NULL--0: admin, 1:NhanVien, 2: Khách HANG 
)
GO
--Khachhang--
CREATE TABLE KhachHang(
MaKhachHang NVARCHAR(50) PRIMARY KEY  NOT NULL,
MatKhau NVARCHAR(50) NOT NULL,
HoTen NVARCHAR(50) NOT NULL,
Email NVARCHAR(100) NOT NULL,
SoDT VARCHAR(10),
DiaChi NVARCHAR(200),
ImgUrl NVARCHAR(200),
ChungThuc bit
)
GO
Insert into KhachHang values(N'chuong1309','It12345!',N'Bùi Văn Chương',N'chuongbui1309@gmail.com',0335685482,N'Thài Bình','chuong.png',0);
go
--Bang DonHang
CREATE TABLE DonHang(
MaDonHang INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
MaKhachHang NVARCHAR(50) FOREIGN KEY REFERENCES KhachHang(MaKhachHang) NOT NULL,
NgayDatHang NVARCHAR(50),
DiaChi NVARCHAR(200),
Ghichu NVARCHAR(300),
TongTien Float
)
GO

--Bang DonHangChiTiet
CREATE TABLE DonHangChiTiet(
MaDHCT int PRIMARY KEY IDENTITY(1,1) NOT NULL,
MaDonHang int FOREIGN KEY REFERENCES DonHang(MaDonHang) NOT NULL,
MaSanPham Int FOREIGN KEY REFERENCES SanPham(MaSanPham) NOT NULL,
GiaBan Float,
KhuyenMai Float,
SoLuong int,
TongTien Float
)
GO

--Bang Barner --
CREATE TABLE AnhBia(
MaAB int PRIMARY KEY IDENTITY(1,1) NOT NULL,
ImgUrl NVARCHAR(200)
)
GO


