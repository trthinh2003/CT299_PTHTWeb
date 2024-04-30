-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 06:44 PM
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
-- Database: `ql_monhoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `diems`
--

CREATE TABLE `diems` (
  `id` int(10) UNSIGNED NOT NULL,
  `diem_id` int(10) UNSIGNED NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lop_mons`
--

CREATE TABLE `lop_mons` (
  `id` int(15) NOT NULL,
  `hocky_nienkhoa` varchar(10) NOT NULL,
  `lop_mon_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `lop_mons`
--

INSERT INTO `lop_mons` (`id`, `hocky_nienkhoa`, `lop_mon_id`) VALUES
(1, '2021-2022', 1),
(2, '2021-2022', 3),
(3, '2021-2022', 4),
(4, '2021-2022', 5),
(5, '2021-2022', 6);

-- --------------------------------------------------------

--
-- Table structure for table `monhocs`
--

CREATE TABLE `monhocs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_mon` varchar(30) NOT NULL,
  `so_tin_chis` int(10) NOT NULL,
  `diem_tich_luys` decimal(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `monhocs`
--

INSERT INTO `monhocs` (`id`, `ten_mon`, `so_tin_chis`, `diem_tich_luys`) VALUES
(1, 'Lý Thuyết Đồ Thị', 3, '4.00000'),
(2, 'Toán Rời Rạc', 4, '4.00000'),
(3, 'Xác Suất Thống Kê', 3, '4.00000'),
(4, 'Cấu Trúc Dữ Liệu', 3, '4.00000'),
(5, 'PT & TK Thuật Toán', 3, '3.50000'),
(6, 'Nhập Môn Lập Trình Web', 3, '3.50000');

-- --------------------------------------------------------

--
-- Table structure for table `sinhviens`
--

CREATE TABLE `sinhviens` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten_sv` varchar(30) NOT NULL,
  `ngaysinh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `sodienthoai` varchar(11) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `sinhvien_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sinhviens`
--

INSERT INTO `sinhviens` (`id`, `hoten_sv`, `ngaysinh`, `email`, `gioitinh`, `sodienthoai`, `matkhau`, `sinhvien_id`) VALUES
(2, 'Hồ Gia Bảo', '2000-03-11 16:31:42', 'baoho@gmail.com', 'Nam', '0219494852', 'mg1890jfslk190', NULL),
(3, 'Lâm Trần Quân', '1999-03-11 23:24:46', 'tquan@gmail.com', 'Nam', '0319985918', 'fajkglh19o841', NULL),
(4, 'Nguyễn Đức Hạnh', '1999-12-03 10:32:44', 'hanh123@gmail.com', 'Nam', '0418508157', 'halfalhnv1939', NULL),
(5, 'Hồ Vĩ Cường', '2003-03-02 07:34:25', 'CuongViThu@gmail.com', 'Nam', '0398421991', 'fahof1371985hvdmd5', NULL),
(6, 'Lê Trần Thiên Ngọc', '1997-10-11 18:03:35', 'ngocle764@gmail.com', 'Nữ', '0972801401', 'hfKFH7298jfnv', NULL),
(7, 'Đỗ Minh Anh', '2000-12-09 04:30:41', 'anhdosieuop@gmail.com', 'Nữ', '0814617346', 'hahglh17391TQW', NULL),
(8, 'Trịnh Anh Dũng', '2004-12-05 13:38:03', 'dungtrinh04@gmail.com', 'Nam', '0783105105', 'ha9240ahfhkagbvn', NULL),
(9, 'Lê Cao Yên Bái', '1995-09-08 07:10:34', 'bailecao@gmail.com', 'Không Rõ', '0491093501', 'hgal842197jdlda', NULL),
(10, 'Cần Quan Tâm', '2001-04-12 20:37:59', 'tamcare@gmail.com', 'Nam', '0938597753', 'd841747jfbvbak', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `trungbinhtichluys`
-- (See below for the actual view)
--
CREATE TABLE `trungbinhtichluys` (
`ID` int(10) unsigned
,`So_Mon_Da_Hocs` bigint(21)
,`So_Tin_Chi_Tich_Luys` decimal(32,0)
,`Diem_Trung_Binh_Tich_Luys` decimal(14,9)
);

-- --------------------------------------------------------

--
-- Structure for view `trungbinhtichluys`
--
DROP TABLE IF EXISTS `trungbinhtichluys`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trungbinhtichluys`  AS SELECT `monhocs`.`id` AS `ID`, count(0) AS `So_Mon_Da_Hocs`, sum(`monhocs`.`so_tin_chis`) AS `So_Tin_Chi_Tich_Luys`, avg(`monhocs`.`diem_tich_luys`) AS `Diem_Trung_Binh_Tich_Luys` FROM `monhocs``monhocs`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diems`
--
ALTER TABLE `diems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diem_id` (`diem_id`);

--
-- Indexes for table `lop_mons`
--
ALTER TABLE `lop_mons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lop_mons_id` (`lop_mon_id`);

--
-- Indexes for table `monhocs`
--
ALTER TABLE `monhocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `sinhvien_id` (`sinhvien_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diems`
--
ALTER TABLE `diems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lop_mons`
--
ALTER TABLE `lop_mons`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monhocs`
--
ALTER TABLE `monhocs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sinhviens`
--
ALTER TABLE `sinhviens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diems`
--
ALTER TABLE `diems`
  ADD CONSTRAINT `diems_ibfk_1` FOREIGN KEY (`diem_id`) REFERENCES `sinhviens` (`id`);

--
-- Constraints for table `lop_mons`
--
ALTER TABLE `lop_mons`
  ADD CONSTRAINT `lop_mons_ibfk_1` FOREIGN KEY (`lop_mon_id`) REFERENCES `monhocs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
