-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 09:27 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'T-Shirt'),
(2, 'Shirt'),
(3, 'Jeans'),
(4, 'Hoodie'),
(5, 'Jacket'),
(6, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `fk_category_id` int(11) NOT NULL,
  `product_title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `product_price` int(32) NOT NULL,
  `product_image` varchar(64) CHARACTER SET utf8 NOT NULL,
  `product_text` varchar(840) CHARACTER SET utf8 NOT NULL,
  `product_size` varchar(32) CHARACTER SET utf8 NOT NULL,
  `product_color` varchar(64) CHARACTER SET utf8 NOT NULL,
  `product_stock` int(32) NOT NULL,
  `product_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `fk_category_id`, `product_title`, `product_price`, `product_image`, `product_text`, `product_size`, `product_color`, `product_stock`, `product_date`) VALUES
(1, 1, 'T-Shirt - White ', 60, 'tshirtwhite.jpg', 'White t-shirt soft cotton', 'L', 'White', 8, '2019-08-19 03:00:00'),
(2, 1, 'T-shirt - Red', 60, 'tshirtred.jpg', 'White t-shirt soft cotton', 'M', 'Red', 7, '2019-08-19 03:00:00'),
(3, 1, 'T-Shirt -Grey ', 60, 'tshirtgrey.jpg', 'Grey t-shirt soft cotton', 'S', 'Grey', 9, '2019-08-19 03:00:00'),
(4, 1, 'T-Shirt - Black', 60, 'tshirtblack.jpg', 'Black t-shirt soft Cotton', 'XL', 'Black', 5, '2019-08-16 03:00:00'),
(6, 6, 'Shoes - White ', 340, 'shoeswhite.jpg', 'Sneakers in cotton canvas with lacing at front and rubber toe caps. Canvas insoles and rubber soles.', '39', 'White', 10, '2019-08-19 06:00:00'),
(7, 6, 'Shoes - Multi Color', 340, 'shoesmixed.jpg', 'Sneakers in cotton canvas with lacing at front and rubber toe caps. Canvas insoles and rubber soles.', '40', 'Multi', 3, '2019-08-19 06:00:00'),
(8, 6, 'Shoes - Blue', 350, 'shoesblue.jpg', 'Sneakers in cotton canvas with lacing at front and rubber toe caps. Canvas insoles and rubber soles.', '44', 'Blue', 12, '2019-08-19 06:00:00'),
(9, 6, 'Shoes - Black', 345, 'shoesblack.jpg', 'Sneakers in cotton canvas with lacing at front and rubber toe caps. Canvas insoles and rubber soles.', '38', 'Black', 15, '2019-08-16 06:00:00'),
(10, 2, 'Shirt - White', 170, 'shirtwhite.jpg', 'Long shirt in woven cotton quality. The shirt has a straight fit and short sleeves with wide cuff and button closure. Rounded bottom with slit at the sides and slightly longer back piece.', 'XS', 'White', 14, '2019-08-19 10:00:00'),
(11, 2, 'Shirt - Striped', 170, 'shirtstripe.jpg', 'Long shirt in woven cotton quality. The shirt has a straight fit and short sleeves with wide cuff and button closure. Rounded bottom with slit at the sides and slightly longer back piece.', 'M', 'White/Orange', 6, '2019-08-19 10:00:00'),
(12, 2, 'Shirt - Red', 170, 'shirtred.jpg', 'Long shirt in woven cotton quality. The shirt has a straight fit and short sleeves with wide cuff and button closure. Rounded bottom with slit at the sides and slightly longer back piece.', 'L', 'Red', 13, '2019-08-19 10:00:00'),
(13, 2, 'Shirt - Blue', 170, 'shirtblue.jpg', 'Long shirt in woven cotton quality. The shirt has a straight fit and short sleeves with wide cuff and button closure. Rounded bottom with slit at the sides and slightly longer back piece.', 'XXL', 'Blue', 21, '2019-08-19 10:00:00'),
(14, 3, 'Jeans - Grey', 185, 'jeansgrey.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly, and slim legs.', '30/32', 'Grey', 5, '2019-08-20 05:00:00'),
(15, 3, 'Jeans - Blue', 185, 'jeansblue.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly, and slim legs.', '31/32', 'Blue', 12, '2019-08-20 05:00:00'),
(16, 3, 'Jeans - White', 185, 'jeanswhite.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly, and slim legs.', '30/32', 'White', 10, '2019-08-20 05:00:00'),
(17, 3, 'Jeans - Black', 185, 'jeansblack.jpg', '5-pocket jeans in washed stretch denim with a regular waist, button fly, and slim legs.', '32/34', 'Black', 21, '2019-08-20 05:00:00'),
(18, 5, 'Jacket - Yellow', 210, 'jacketyellow.jpg', 'Nylon jacket with a zip at front, front pockets with flap and snap fastener, and ribbing at neckline, cuffs, and hem. Sleeve pocket with zip and one inner pocket. Fine-knit lining.', 'L', 'Yellow', 9, '2019-08-21 11:00:00'),
(19, 5, 'Jacket - Red', 210, 'jacketred.jpg', 'Nylon jacket with a zip at front, front pockets with flap and snap fastener, and ribbing at neckline, cuffs, and hem. Sleeve pocket with zip and one inner pocket. Fine-knit lining.', 'M', 'Red', 7, '2019-08-21 11:00:00'),
(20, 5, 'Jacket - Blue', 210, 'jacketblue.jpg', 'Nylon jacket with a zip at front, front pockets with flap and snap fastener, and ribbing at neckline, cuffs, and hem. Sleeve pocket with zip and one inner pocket. Fine-knit lining.', 'S', 'Blue', 5, '2019-08-21 11:00:00'),
(21, 5, 'Jacket - Black', 210, 'jacketblack.jpg', 'Nylon jacket with a zip at front, front pockets with flap and snap fastener, and ribbing at neckline, cuffs, and hem. Sleeve pocket with zip and one inner pocket. Fine-knit lining.', 'XL', 'Black', 12, '2019-08-21 11:00:00'),
(22, 4, 'Hoodie - Yellow13', 140, 'hoodieyellow.jpg', 'Sweatshirt with a lined, drawstring hood with wrapover front. Kangaroo pocket, long sleeves, and ribbing at cuffs and hem. Soft, brushed inside', 'S', 'Yellow', 13, '2019-08-22 10:00:00'),
(23, 4, 'Hoodie - White', 140, 'hoodiewhite.jpg', 'Sweatshirt with a lined, drawstring hood with wrapover front. Kangaroo pocket, long sleeves, and ribbing at cuffs and hem. Soft, brushed inside', 'S', 'White', 16, '2019-08-22 10:00:00'),
(24, 4, 'Hoodie - Pink', 140, 'hoodiepink.jpg', 'Sweatshirt with a lined, drawstring hood with wrapover front. Kangaroo pocket, long sleeves, and ribbing at cuffs and hem. Soft, brushed inside', 'M', 'Pink', 6, '2019-08-22 10:00:00'),
(25, 4, 'Hoodie - Green', 140, 'hoodiegreen.jpg', 'Sweatshirt with a lined, drawstring hood with wrapover front. Kangaroo pocket, long sleeves, and ribbing at cuffs and hem. Soft, brushed inside', 'L', 'Green', 12, '2019-08-22 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_mail` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_phone` int(32) NOT NULL,
  `user_message` varchar(1008) CHARACTER SET utf8 NOT NULL,
  `user_address` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_gender` varchar(16) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_mail`, `user_phone`, `user_message`, `user_address`, `user_gender`) VALUES
(1, 'Test-User', 'test@user.mail.com', 88888888, 'test test test user user user', 'Testroad 1, 1111 TestUserCity', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
