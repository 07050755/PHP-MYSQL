--
-- Database: `dp_db1`
--

DROP DATABASE IF EXISTS `dp_db1`;
CREATE DATABASE IF NOT EXISTS `dp_db1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dp_db1`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=1 ;

-- 創建一個測試帳號 username='test' password='1234567'
INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'test', '$2y$10$lDjg6pLKybAnK04aojZ6rOdcTQRUYnYIFvfO.8PyB2h5NXJdNSG7.', '2022-05-18 11:00:35');

