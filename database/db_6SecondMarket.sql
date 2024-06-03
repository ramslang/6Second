-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2024 at 01:10 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market2`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image_path`, `alt_text`, `is_active`) VALUES
(19, 'assets/img/new/banner 1.png\r\n', '123', 1),
(21, 'assets/img/new/banner 2.png', '123', 1),
(22, 'assets/img/new/banner 3.png', '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_seller_reply` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `username`, `product_id`, `comment`, `created_at`, `is_seller_reply`) VALUES
(76, NULL, 'vita', 53, 'gas\r\n', '2024-06-01 13:08:24', 0),
(77, NULL, 'vita', 54, 'oi', '2024-06-01 13:09:40', 0),
(86, NULL, 'gilang', 53, 'halo', '2024-06-01 14:10:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` decimal(10,2) NOT NULL,
  `nomor_telepon` varchar(20) DEFAULT NULL,
  `kondisi` text,
  `deskripsi_barang` text,
  `link_maps` varchar(255) DEFAULT NULL,
  `gambar_barang_1` varchar(255) DEFAULT NULL,
  `gambar_barang_2` varchar(255) DEFAULT NULL,
  `gambar_barang_3` varchar(255) DEFAULT NULL,
  `gambar_barang_4` varchar(255) DEFAULT NULL,
  `tanggal_masuk` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jumlah_like` int DEFAULT '0',
  `jumlah_views` int DEFAULT '0',
  `lokasi_barang` varchar(255) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`id`, `username`, `nama_barang`, `harga_barang`, `nomor_telepon`, `kondisi`, `deskripsi_barang`, `link_maps`, `gambar_barang_1`, `gambar_barang_2`, `gambar_barang_3`, `gambar_barang_4`, `tanggal_masuk`, `jumlah_like`, `jumlah_views`, `lokasi_barang`, `kategori`) VALUES
(53, 'reza', 'radio', 4000000.00, '08214465', 'Lecet dikit tak ngaruh', 'gas beli', NULL, 'uploads/Frame 1.png', NULL, NULL, NULL, '2024-05-30 16:11:54', 5, 287, 'kalimantan', 'elektronik'),
(54, 'reza', 'kulkas', 2000000.00, '08975888', 'Product baru', 'ayo beli', NULL, 'uploads/Frame 2.png', NULL, NULL, NULL, '2024-05-30 16:12:43', 3, 51, 'yogyakrta', 'elektronik'),
(55, 'reza', 'mobil', 70000000.00, '08965878', 'Retak dikit', 'ban pecah', NULL, 'uploads/Frame 5.png', NULL, NULL, NULL, '2024-05-30 16:13:34', 3, 61, 'jakarta', 'otomotif'),
(56, 'reza', 'baju', 40000.00, '87877432', 'Lecet dikit tak ngaruh, Hancur parah seperti bangkai', 'baju bekas', NULL, 'uploads/Frame 12.png', NULL, NULL, NULL, '2024-05-30 16:18:04', 2, 52, 'bandung', 'fashion'),
(57, 'reza', 'cosmos', 4000000.00, '08976534', 'Product baru', 'bagus', NULL, 'uploads/Frame 4.png', NULL, NULL, NULL, '2024-05-31 18:10:08', 1, 9, 'medan', 'prabot'),
(58, 'gilang', 'topi', 400000.00, '08976523', 'Bekas seperti baru', 'va rvca', NULL, 'uploads/Frame 11.png', NULL, NULL, NULL, '2024-06-01 11:13:17', 1, 26, 'jakarta selatan', 'fashion'),
(59, 'gilang', 'tablet', 2000000.00, '353453453', 'Product baru', 'sfdfs', NULL, 'uploads/tablet.png', NULL, NULL, NULL, '2024-06-01 12:09:05', 2, 23, 'bogor', 'elektronik'),
(60, 'reza', 'sdsd', 324234.00, '32423', 'Product baru', 'sdsd', NULL, 'uploads/radio.png', NULL, NULL, NULL, '2024-06-01 14:22:13', 0, 0, 'dfsf', 'otomotif'),
(61, 'reza1', 'fsdf', 234.00, '24234', 'Product baru', 'cdcfc', NULL, 'uploads/radio.png', NULL, NULL, NULL, '2024-06-01 15:43:10', 0, 0, '3r23r', 'elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text,
  `uploaded_by` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `image_path`, `description`, `uploaded_by`, `category`) VALUES
(10, 'uploads/produk 1.png', 'sepatu ukuran 27\r\n', 'reza1', 'default'),
(11, 'uploads/produk 2.png', 'sepatu ukuran 27\r\n', 'reza1', 'default'),
(12, 'uploads/produk 3.png', 'sepatu ukuran 27\r\n', 'reza1', 'default'),
(13, 'uploads/produk 4.png', 'sepatu ukuran 27\r\n', 'reza1', 'default'),
(14, 'uploads/produk 1.png', 'sepatu bahan air\r\n', 'reza1', 'default'),
(16, 'uploads/produk 2.png', '', 'reza1', 'default'),
(17, 'uploads/produk 2.png', '', 'reza1', 'default'),
(18, 'uploads/produk 2.png', '', 'reza1', 'default'),
(19, 'uploads/banner5.png', 'awda', 'feb', 'default'),
(20, 'uploads/banner5.png', 'awda', 'feb', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `username`, `product_id`, `action`, `created_at`, `is_read`, `parent_id`, `message`) VALUES
(106, 'reza', 53, 'comment', '2024-06-01 13:08:24', 0, NULL, 'Ada komentar baru pada produk Anda.'),
(107, 'vita', 53, 'like', '2024-06-01 13:09:27', 0, NULL, NULL),
(108, 'vita', 54, 'like', '2024-06-01 13:09:33', 0, NULL, NULL),
(109, 'reza', 54, 'comment', '2024-06-01 13:09:40', 0, NULL, 'Ada komentar baru pada produk Anda.'),
(110, 'reza', 53, 'comment', '2024-06-01 13:21:50', 0, NULL, 'Ada komentar baru pada produk Anda.'),
(111, 'reza', 54, 'like', '2024-06-01 13:39:56', 0, NULL, NULL),
(112, 'vita', 54, 'comment', '2024-06-01 14:02:15', 0, 77, 'Ada balasan komentar pada produk Anda.'),
(119, 'reza', 53, 'comment', '2024-06-01 14:10:22', 0, NULL, 'Ada komentar baru pada produk Anda.'),
(124, 'gilang', 53, 'comment', '2024-06-01 14:14:29', 0, 86, 'Ada balasan komentar pada produk Anda.'),
(125, 'reza', 53, 'like', '2024-06-01 14:15:47', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(100) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `phone_number`, `address`, `role`, `profile_picture`) VALUES
(57, 'feb', '$2y$10$KuULX4t54CySnjq6JwvZv.aRAG0Wy8iRrm4kCfWjcoNOFdesuAbge', '081344843648', 'jalan swadaya3', 'admin', 'uploads/feb_6654f86969c1b.jpg'),
(59, 'reza', '$2y$10$LV8dZiHd2ZcjBX6lGzdeyOujLkYbp996FrRH50D31FTx2Ot9P/rJm', '081324567890', 'jalan seturan', 'user', 'uploads/reza_6654ff527bc95.png'),
(60, 'raka', '$2y$10$uFjHEfB2kITddspGZAF.l.JzdFlzoQavBP3SmIOWEwCTQ2Ds5khK2', '081234560987', 'kost hammer', 'user', NULL),
(63, 'gilang', '$2y$10$fFixX0EX1BnD8gpEcOfVB./Gb/fnky5sxkCVptEOUYSpoRxtmvCuq', '089768578', 'kalimantan', 'user', NULL),
(64, 'vita', '$2y$10$t2GiQZSGNo6u17BNuDPlmedDlyBpdUPMwAZZc9tmaOgFwFfDR1rYG', '09707', 'kuningan', 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_likes`
--

CREATE TABLE `user_likes` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `like_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_likes`
--

INSERT INTO `user_likes` (`id`, `username`, `product_id`, `like_time`) VALUES
(161, 'vita', 53, '2024-06-01 13:09:27'),
(162, 'vita', 54, '2024-06-01 13:09:33'),
(163, 'reza', 54, '2024-06-01 13:39:56'),
(164, 'reza', 53, '2024-06-01 14:15:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_likes`
--
ALTER TABLE `user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `detail_barang`
--
ALTER TABLE `detail_barang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `user_likes`
--
ALTER TABLE `user_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `detail_barang` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `detail_barang` (`id`);

--
-- Constraints for table `user_likes`
--
ALTER TABLE `user_likes`
  ADD CONSTRAINT `user_likes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `detail_barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
