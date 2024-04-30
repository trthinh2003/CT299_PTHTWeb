-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b2110029`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietddh`
--

CREATE TABLE `chitietddh` (
  `madon` varchar(11) NOT NULL,
  `msp` varchar(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chitietddh`
--

INSERT INTO `chitietddh` (`madon`, `msp`, `soluong`, `dongia`) VALUES
('DD01', 'SP0001', 2, 45000),
('DD02', 'SP0005', 2, 5368000),
('DD03', 'SP0004', 4, 232000),
('DD04', 'SP0003', 5, 1195000),
('DD05', 'SP0002', 8, 392000),
('DD06', 'SP0001', 1, 22500),
('DD07', 'SP0006', 3, 387000),
('DD08', 'SP0007', 4, 260000),
('DD09', 'SP0008', 7, 1113000),
('DD10', 'SP0009', 10, 690000);

-- --------------------------------------------------------

--
-- Table structure for table `chitiettrangthai`
--

CREATE TABLE `chitiettrangthai` (
  `madon` varchar(11) NOT NULL,
  `manv` varchar(11) NOT NULL,
  `matrangthai` varchar(11) NOT NULL,
  `noidung` varchar(50) NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chitiettrangthai`
--

INSERT INTO `chitiettrangthai` (`madon`, `manv`, `matrangthai`, `noidung`, `ngaytao`) VALUES
('DD01', 'NV002', 'TT04', 'Giao hàng thành công', '2021-08-22'),
('DD02', 'NV001', 'TT01', 'Hủy đơn hàng', '1999-08-22'),
('DD03', 'NV001', 'TT04', 'Giao hàng thành công', '2011-12-10'),
('DD04', 'NV005', 'TT04', 'Giao hàng thành công', '2021-08-22'),
('DD05', 'NV002', 'TT02', 'Chuẩn bị giao hàng', '1997-02-09'),
('DD06', 'NV009', 'TT02', 'Chuẩn bị giao hàng', '1998-02-20'),
('DD07', 'NV010', 'TT03', 'Đang chuyển giao', '2013-09-20'),
('DD08', 'NV008', 'TT04', 'Giao hàng thành công', '2018-05-02'),
('DD09', 'NV003', 'TT04', 'Giao hàng thành công', '2018-03-25'),
('DD10', 'NV006', 'TT04', 'Giao hàng thành công', '2019-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `madon` varchar(11) NOT NULL,
  `ngaydat` date NOT NULL,
  `makhach` varchar(11) NOT NULL,
  `manv` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`madon`, `ngaydat`, `makhach`, `manv`) VALUES
('DD01', '2021-08-19', 'K001', 'NV002'),
('DD02', '1999-01-20', 'K002', 'NV001'),
('DD03', '1998-12-19', 'K003', 'NV001'),
('DD04', '2022-02-28', 'K004', 'NV005'),
('DD05', '2023-08-11', 'K004', 'NV002'),
('DD06', '2024-01-01', 'K008', 'NV009'),
('DD07', '2008-07-10', 'K010', 'NV010'),
('DD08', '2001-06-11', 'K009', 'NV008'),
('DD09', '2004-03-25', 'K005', 'NV003'),
('DD10', '2000-06-18', 'K007', 'NV006');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makhach` varchar(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makhach`, `hoten`, `diachi`, `email`, `password`) VALUES
('K001', 'Bành Thị Lệ Thu', 'Phong Điền, TP.Cần Thơ', 'thithu98@gmail.com', 't0127'),
('K002', 'Trương Thế Vỹ', 'Ninh Kiều, TP.Cần Thơ', 'thevyidol@gmail.com', 'tvy099'),
('K003', 'Trần Luân', 'Ba Đình, Hà Nội', 'trluan173@gmail.com', 'tl001'),
('K004', 'Cao Văn Triền', 'Quận 9, TP.HCM', 'vantrien27@gmail.com', 'vt1217'),
('K005', 'Tôi Đã Khóc', 'Mỹ Tho, Vĩnh Long', 'toidakhocvicuoiquanhieu@gmail.com', 'khoc99'),
('K006', 'Nguyễn Hết Cứu', 'Bình Minh, Vĩnh Long', 'hetcuuthatroi@gmail.com', 'hetcuu33'),
('K007', 'Trần Không Giòn', 'Phú Quốc, An Giang', 'khonggiondau@gmail.com', 'kogion102'),
('K008', 'Lệ Rơi', 'Phụng Hiệp, Hậu Giang', 'leroithatroi@gmail.com', 'lroi10'),
('K009', 'Lâm Thế Trung', 'Châu Thành, Hậu Giang', 'thetrung98@gmail.com', 'ttng98'),
('K010', 'Nguyễn Liêm Khiết', 'Nam Đàng, Nghệ An', 'liemkhiet100@gmail.com', 'lkhiet100');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` varchar(11) NOT NULL,
  `tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
('L00001', 'Quần Áo'),
('L00002', 'Giày Dép'),
('L00003', 'Trang Trí Nội Thất'),
('L00004', 'Máy Tính Và Laptop'),
('L00005', 'Điện Thoại Và Phụ Kiện'),
('L00006', 'Đồ Chơi'),
('L00007', 'Sách, Giáo Trình'),
('L00008', 'Thiết Bị Dân Dụng'),
('L00009', 'Thiết Bị Điện Tử'),
('L00010', 'Mỹ Phẩm Làm Đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` varchar(11) NOT NULL,
  `hotennv` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hotennv`, `email`, `password`) VALUES
('NV001', 'Nguyễn Văn A', 'a@gmail.com', 'a102'),
('NV002', 'Lê Thị B', 'b@gmail.com', 'b347'),
('NV003', 'Trần Thanh C', 'c@gmail.com', 'c213'),
('NV004', 'Lữ Minh D', 'd@gmail.com', 'd289'),
('NV005', 'Lâm Trung E', 'e@gmail.com', 'e023'),
('NV006', 'Hoàng Văn F', 'f@gmail.com', 'f598'),
('NV007', 'Huỳnh Minh G', 'g@gmail.com', 'g220'),
('NV008', 'Cao Thị H', 'h@gmail.com', 'h100'),
('NV009', 'Phan Trọng I', 'i@gmail.com', 'i200'),
('NV010', 'Lê Chí J', 'j@gmail.com', 'j304');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `msp` varchar(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `dongia` int(11) NOT NULL,
  `mota` varchar(50) NOT NULL,
  `link_hinh` varchar(100) NOT NULL,
  `maloai` varchar(11) NOT NULL,
  `ngaythem` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`msp`, `tensp`, `dongia`, `mota`, `link_hinh`, `maloai`, `ngaythem`) VALUES
('SP0001', 'Bàn phím giả cơ gaming K82 thiết kế 94 phím', 22500, 'Bàn phím giả cơ gaming K82 thiết kế 94 phím', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnnqyge5wv3ub8', 'L00004', '1998-02-01'),
('SP0002', 'Chuột game Logitech G102 (Led đổi màu)', 49000, 'Chuột game Logitech G102 (Led đổi màu)', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnsi7umwo44t7c', 'L00004', '1996-01-03'),
('SP0003', 'Áo khoác Blazer Nam Form rộng dài tay unisex', 239000, 'Áo khoác Blazer Nam Form rộng dài tay unisex', 'https://down-vn.img.susercontent.com/file/39ba55af4ef2c88080163ecb7a478a13', 'L00001', '2002-03-12'),
('SP0004', 'Quần Ống Rộng Túi Vuông Cơi Nữ', 58000, 'Quần Ống Rộng Túi Vuông Cơi Nữ', 'https://down-vn.img.susercontent.com/file/vn-50009109-39f4b7b57686b3dacb9f04d2dd1a8513', 'L00001', '2008-02-06'),
('SP0005', 'Laptop HP EliteBook X360 1030 G2 i7', 2684000, 'Laptop HP EliteBook X360 1030 G2 i7', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lpg8oazpilou1e', 'L00004', '2010-12-01'),
('SP0006', 'Robot Hút Bụi Lau Nhà Thông Minh SWEEPIN', 129000, 'Robot Hút Bụi Lau Nhà Thông Minh SWEEPIN', 'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lm4i94mbiyn340', 'L00008', '2013-09-15'),
('SP0007', 'Quả bóng chuyền LOCO FISH số 5', 65000, 'Quả bóng chuyền LOCO FISH số 5', 'https://down-vn.img.susercontent.com/file/sg-11134211-7qvfm-lf6opr14qk6n00', 'L00006', '2018-04-30'),
('SP0008', 'Giày thể thao, giày asia cao cấp nam nữ', 159000, 'Giày thể thao, giày asia cao cấp nam nữ', 'https://down-vn.img.susercontent.com/file/422df09b9f53cd85d93c915b3cd29d4f', 'L00002', '2018-03-21'),
('SP0009', 'Máy Trò Chơi Giảm Căng Thẳng kuromi', 69000, 'Máy Trò Chơi Giảm Căng Thẳng kuromi', 'https://down-vn.img.susercontent.com/file/cn-11134207-7r98o-lodraydqm2eab3', 'L00006', '2019-06-09'),
('SP0010', 'Lông mi giả 5 hàng 11mm-12mm', 35000, 'Lông mi giả 5 hàng 11mm-12mm', 'https://down-vn.img.susercontent.com/file/sg-11134201-7qvdi-liu1ze5cyls1e1', 'L00010', '2021-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `matrangthai` varchar(11) NOT NULL,
  `tentrangthai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`matrangthai`, `tentrangthai`) VALUES
('TT01', 'Đã đặt hàng chưa xử lý'),
('TT02', 'Đã xử lý'),
('TT03', 'Đang giao...'),
('TT04', 'Đã nhận hàng và thanh toán'),
('TT05', 'Tham khảo thêm tại đây');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD PRIMARY KEY (`madon`,`msp`),
  ADD KEY `madon` (`madon`,`msp`),
  ADD KEY `msp` (`msp`);

--
-- Indexes for table `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD PRIMARY KEY (`madon`,`matrangthai`),
  ADD KEY `matrangthai` (`matrangthai`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `makhach` (`makhach`,`manv`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhach`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`msp`),
  ADD KEY `maloai` (`maloai`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`matrangthai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD CONSTRAINT `fk_madon` FOREIGN KEY (`madon`) REFERENCES `dondathang` (`madon`),
  ADD CONSTRAINT `fk_msp` FOREIGN KEY (`msp`) REFERENCES `sanpham` (`msp`);

--
-- Constraints for table `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD CONSTRAINT `chitiettrangthai_ibfk_1` FOREIGN KEY (`matrangthai`) REFERENCES `trangthai` (`matrangthai`),
  ADD CONSTRAINT `chitiettrangthai_ibfk_2` FOREIGN KEY (`madon`) REFERENCES `dondathang` (`madon`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_makhach ` FOREIGN KEY (`makhach`) REFERENCES `khachhang` (`makhach`),
  ADD CONSTRAINT `fk_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_maloai` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
