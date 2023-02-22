-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.29
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `finaldb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `pNo` char(6) NOT NULL,
  `pName` varchar(30) DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `catalog` varchar(20) DEFAULT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`pNo`, `pName`, `unitPrice`, `catalog`, `image`) VALUES
('b10234', '管理資訊系統概論', '600.00', 'Book', 'product-images/b10234.jpg'),
('b20666', 'OLAP進階', '500.00', 'Book', 'product-images/b20666.jpg'),
('b30999', '資料庫理論與實務', '500.00', 'Book', 'product-images/b30999.jpg'),
('d03333', '5566專輯', '450.00', 'CD', 'product-images/d03333.jpg'),
('v01888', '哈利波特-混血王子的背叛', '450.00', 'DVD', 'product-images/v01888.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pNo`),
  ADD UNIQUE KEY `product_pNo` (`pNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
