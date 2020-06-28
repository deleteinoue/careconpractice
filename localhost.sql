-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 
-- サーバのバージョン： 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menumaosozai`
--
CREATE DATABASE IF NOT EXISTS `menumaosozai` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `menumaosozai`;

-- --------------------------------------------------------

--
-- テーブルの構造 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `created`) VALUES
(1, 2, '2020-05-07 14:00:00'),
(2, 2, '2020-05-07 14:10:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`pid`, `pname`, `image`, `price`, `created`) VALUES
(1, '豚肉の炒め物', 'img1.jpg', 300, '2020-05-07 12:00:00'),
(2, '鶏肉の炒め物', 'img2.jpg', 400, '2020-05-07 12:30:00'),
(3, '焼うどん', 'img3.jpg', 250, '2020-05-07 13:00:00'),
(4, 'サラダパスタ', 'img4.jpg', 350, '2020-05-07 13:30:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `userlist`
--

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `furigana` varchar(30) NOT NULL,
  `tel` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `login_id` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` int(1) NOT NULL COMMENT '0:一般ユーザ1:管理者',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `userlist`
--

INSERT INTO `userlist` (`id`, `name`, `furigana`, `tel`, `email`, `login_id`, `password`, `role`, `created`) VALUES
(1, 'user1', 'イッチ', '08011112222', 'u235018@yahoo.co.jp', 'user1', '1111', 1, '2020-05-07 00:00:00'),
(3, 'イノウエ', 'コココ', '08066844274', 'k.inoue.carecon@gmail.com', 'user3', '3333', 0, '2020-05-20 02:41:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `userlist_products`
--

CREATE TABLE `userlist_products` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `userlist_products`
--

INSERT INTO `userlist_products` (`user_id`, `product_id`, `num`, `created`) VALUES
(1, 1, 1, '2020-05-07 14:00:00'),
(1, 1, 5, '2020-06-22 03:04:14'),
(1, 1, 1, '2020-06-23 02:40:17'),
(1, 2, 1, '2020-06-28 02:30:36'),
(1, 2, 1, '2020-06-28 02:31:52'),
(1, 2, 1, '2020-06-28 02:33:18'),
(1, 3, 1, '2020-06-22 03:04:14'),
(1, 3, 3, '2020-06-23 02:40:17'),
(1, 4, 1, '2020-06-28 02:30:36'),
(1, 4, 1, '2020-06-28 02:31:52'),
(1, 4, 1, '2020-06-28 02:33:18'),
(2, 1, 2, '2020-05-20 04:56:39'),
(2, 1, 9, '2020-05-20 10:06:19'),
(2, 3, 4, '2020-05-20 04:56:39'),
(2, 3, 8, '2020-05-20 10:06:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlist_products`
--
ALTER TABLE `userlist_products`
  ADD PRIMARY KEY (`user_id`,`product_id`,`created`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
