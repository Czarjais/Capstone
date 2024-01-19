-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 19, 2024 at 03:47 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u819905533_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_as` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', 999999999, '@admin!', 1, '2023-12-04 19:57:19'),
(2, 'user', 'czarjais@gmail.com', 927748248, 'user', 0, '2023-12-04 20:10:24'),
(3, 'EDJAYBOY', 'edjayboy.solis16@gmail.com', 2147483647, 'edjayboy', 0, '2023-12-04 21:34:48'),
(4, 'czar', 'czarjais@gmail.com', 927748248, '123', 1, '2023-12-04 23:18:14'),
(5, 'Vince Arasan', 'Kagamik996@gmail.com', 2147483647, '', 0, '2023-12-05 00:24:03'),
(7, 'EDJAY', 'akoosierza@gmail.com', 2147483647, 'edjayboy', 0, '2023-12-05 07:02:08'),
(8, 'Lyka', 'lykamaearostique@gmail.com', 2147483647, 'Gag07223', 0, '2023-12-13 10:43:19'),
(9, 'Lyka', 'lykamaearostique1@gmail.com', 2147483647, 'Gag07223', 0, '2023-12-13 10:44:47'),
(10, 'Vinzee', '123@gmail.com', 2147483647, '123', 0, '2023-12-14 06:41:32'),
(11, 'Vinzeee', 'TetsuyaxD14@gmail.com', 2147483647, 'Donnalyn123', 0, '2023-12-26 04:17:31'),
(12, 'Vinzeee', 'TetsuyaxD143@gmail.com', 2147483647, 'Donnalyn123', 0, '2023-12-26 04:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `prod_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(37, 11, 7, 19, '2023-12-26 04:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `popular` int(4) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keywords` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 'HAIR ESSENTIAL', 'HAIR', 'Explore our Hair Essentials line, encompassing a range of products designed to nourish, style, and maintain the health and vibrancy of your locks.', 0, 1, '1701721685.png', 'FOR HAIR', '', 'HAIR', '2023-12-04 20:28:05'),
(3, 'MakeUp', 'MAKEUP', 'We prioritize quality and safety in our products, using carefully selected ingredients to nourish and care for your skin. Our makeup is suitable for everyday use, providing a perfect balance between coverage and a natural look.', 0, 1, '8-removebg-preview.png', 'Make up', '', 'make up', '2023-12-04 22:17:13'),
(4, 'Lotion', 'lotion', 'Indulge in our luxurious lotion, expertly formulated to hydrate and soothe, leaving your skin soft, supple, and irresistibly touchable.', 0, 1, '1701728610.png', 'LOTION', '', 'LOTION', '2023-12-04 22:23:30'),
(5, 'Lipstick', 'lipstick', 'Experience velvety luxury with our Lipstick collection. Enriched with vibrant pigments, it delivers intense color and a smooth, long-lasting finish for statement-worthy lips.', 0, 1, '1701728747.png', 'LIPSTICK', '', 'LIPSTICK', '2023-12-04 22:25:47'),
(6, 'Make Up Brushes', 'brush', 'Elevate your makeup routine with our Makeup Brushes, thoughtfully designed for flawless application, blending, and precision, ensuring professional results every time.', 0, 1, '1701728865.png', 'BRUSHES', '', 'BRUSHES', '2023-12-04 22:27:45'),
(7, 'FOR EYES PRODUCT', 'eyes', 'Transform your gaze with our Eyes collection, offering a spectrum of vibrant and versatile products designed to enhance and captivate.', 0, 1, '1701729059.png', 'EYES ESSENTIAL', '', 'EYES', '2023-12-04 22:30:59'),
(8, 'PEEL OFF MASK', 'mask', 'Our Peel Off Mask is a rejuvenating skincare essential, effortlessly applied and peeled away, leaving your skin refreshed, revitalized, and glowing.', 0, 1, '1701729137.png', 'FACE ESSENTIAL', '', 'MASK', '2023-12-04 22:32:17'),
(10, 'BEAUTY TOOLS', 'COSMETICS', 'Explore our curated collection of Beauty Tools, featuring precision brushes and accessories to elevate your makeup routine for flawless, professional results.', 0, 1, '1701751385.png', 'TOOLS', NULL, 'BEAUTY TOOLS', '2023-12-05 04:43:05'),
(12, 'COFFEE', 'KAPE', 'BLA', 0, 1, '1701759112.jpg', 'COFFEE', NULL, 'COFFEE', '2023-12-05 06:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` int(191) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `pincode` int(191) DEFAULT NULL,
  `total_price` int(191) DEFAULT NULL,
  `payment_mode` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(1, 'berrybeauty828627748248', 1, 'Make up', 'admin@gmail.com', 927748248, 'blaan', 2300, 500, 'COD', '', 2, NULL, '2023-12-04 20:31:13'),
(2, 'berrybeauty130527748248', 2, 'Make up', 'czarjais@gmail.com', 927748248, 'wala', 2000, 250, 'COD', '', 1, NULL, '2023-12-04 20:32:39'),
(3, 'berrybeauty927839193662271', 2, 'Czar jais A cruz', 'cruz.181490@gensan.sti.edu.ph', 2147483647, 'sadadsads', 0, 250, 'COD', '', 4, NULL, '2023-12-04 20:36:24'),
(4, 'berrybeauty916739193662271', 2, 'Czar jais A cruz', 'cruz.181490@gensan.sti.edu.ph', 2147483647, 'asasd', 0, 250, 'COD', '', 0, NULL, '2023-12-04 20:37:14'),
(5, 'berrybeauty913427748248', 1, 'Make up', 'czarjais@gmail.com', 927748248, 'adsadsadsdas', 2300, 250, 'COD', '', 0, NULL, '2023-12-04 20:40:56'),
(6, 'berrybeauty9363072212085', 1, 'EDJAYBOY', 'edjayboy.solis16@gmail.com', 2147483647, 'new bohol calumpang general santos city', 9500, 500, 'COD', '', 0, NULL, '2023-12-04 22:01:23'),
(7, 'berrybeauty5958922503692', 6, 'Vince Arasan', 'Kalbovince123@gmail.com', 2147483647, 'gensan', 9500, 160, 'COD', '', 2, NULL, '2023-12-05 00:42:33'),
(8, 'berrybeauty6402072212085', 1, 'EDJAYBOY', 'edjayboy.solis16@gmail.com', 2147483647, 'new bohol, calumpang ', 9500, 210, 'COD', '', 0, NULL, '2023-12-05 06:03:57'),
(9, 'berrybeauty4299072212085', 7, 'EDJAY', 'edjayboy.solis16@gmail.com', 2147483647, 'calumpang', 9500, 495, 'COD', '', 1, NULL, '2023-12-05 07:04:22'),
(10, 'berrybeauty9169217380549', 9, 'Lyka', 'akoosierza45@gmail.com', 2147483647, 'Lagao', 9500, 800, 'COD', '', 0, NULL, '2023-12-13 10:46:46'),
(11, 'berrybeauty4123217380549', 9, 'Lyka', 'akoosierza45@gmail.com', 2147483647, 'Lagao', 9500, 18000, 'COD', '', 4, NULL, '2023-12-14 04:02:44'),
(12, 'berrybeauty4217922503692', 6, 'Vince Arasan', 'Kalbovince123@gmail.com', 2147483647, 'gensan', 9500, 1800, 'COD', '', 1, NULL, '2023-12-14 04:13:30'),
(13, 'berrybeauty4196922503692', 1, 'Vince Arasan', 'Kalbovince123@gmail.com', 2147483647, '123', 9500, 11200, 'COD', '', 3, NULL, '2023-12-14 04:46:19'),
(14, 'berrybeauty5401efwergserx', 1, 'dgsergtr', 'jannyy@gmail.com', 0, 'get5hert5hdrtr56edyhr', 9500, 0, 'COD', '', 3, NULL, '2023-12-14 06:24:43'),
(15, 'berrybeauty4202922503692', 9, 'Vince Arasan', 'Kalbovince123@gmail.com', 2147483647, 'dssadasd', 9500, 8400, 'COD', '', 3, NULL, '2023-12-14 06:56:06'),
(16, 'berrybeauty3985095076904', 11, 'Mediam1 Cabrera Arasan', 'Kalbovince123@gmail.com', 2147483647, 'Habitat phase b, Habitat phase b', 9500, 120, 'COD', '', 0, NULL, '2023-12-26 04:20:46'),
(17, 'berrybeauty2358090909', 9, 'Kck', 'msnzn@gmail.com', 9090909, 'Jdjxjd', 9500, 6000, 'COD', '', 0, NULL, '2024-01-15 15:42:47'),
(18, 'berrybeauty3377072212085', 1, 'EDJAYBOY', 'edjayboy.solis16@gmail.com', 2147483647, 'Zone 7, Prk New Bohol Calumpang General Santos City ', 9500, 120, 'COD', '', 2, NULL, '2024-01-17 09:45:32'),
(19, 'berrybeauty4042072212085', 1, 'EDJAYBOY', 'edjayboy.solis16@gmail.com', 2147483647, 'Zone 7, Purok new bohol, calumpang, general santos city ', 9500, 200, 'COD', '', 0, NULL, '2024-01-18 07:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) DEFAULT NULL,
  `prod_id` int(191) DEFAULT NULL,
  `qty` int(191) DEFAULT NULL,
  `price` int(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 1, 1, 2, 250, '2023-12-04 20:31:13'),
(2, 2, 1, 1, 250, '2023-12-04 20:32:39'),
(3, 3, 1, 1, 250, '2023-12-04 20:36:24'),
(4, 4, 1, 1, 250, '2023-12-04 20:37:14'),
(5, 5, 1, 1, 250, '2023-12-04 20:40:56'),
(6, 6, 1, 2, 250, '2023-12-04 22:01:23'),
(7, 7, 2, 2, 80, '2023-12-05 00:42:33'),
(8, 8, 17, 1, 30, '2023-12-05 06:03:57'),
(9, 8, 3, 1, 180, '2023-12-05 06:03:57'),
(10, 9, 15, 4, 80, '2023-12-05 07:04:22'),
(11, 9, 14, 5, 35, '2023-12-05 07:04:22'),
(12, 10, 2, 10, 80, '2023-12-13 10:46:46'),
(13, 11, 3, 100, 180, '2023-12-14 04:02:44'),
(14, 12, 3, 10, 180, '2023-12-14 04:13:30'),
(15, 13, 7, 10, 220, '2023-12-14 04:46:19'),
(16, 13, 3, 50, 180, '2023-12-14 04:46:19'),
(17, 14, 2, 25, 0, '2023-12-14 06:24:43'),
(18, 15, 2, 20, 120, '2023-12-14 06:56:06'),
(19, 15, 21, 50, 120, '2023-12-14 06:56:06'),
(20, 16, 7, 1, 120, '2023-12-26 04:20:46'),
(21, 17, 7, 50, 120, '2024-01-15 15:42:47'),
(22, 18, 5, 1, 120, '2024-01-17 09:45:32'),
(23, 19, 8, 4, 50, '2024-01-18 07:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `trending` int(4) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(2, 1, 'BREMOD HAIR COLOR', '50 ML', ': Rich, long-lasting shades for personalized style.', 'Personalize your style with Bremod Hair Color, offering rich, long-lasting shades for vibrant and expressive hair color transformations.', 100, 120, '1701729692.png', 75, 1, 1, 'FOR HAIR', 'BREMOD', 'Personalize your style with Bremod Hair Color, offering rich, long-lasting shades for vibrant and expressive hair color transformations.', '2023-12-04 22:41:32'),
(3, 1, 'KERABOND 120 ML', 'HAIR', ' Intensive hair treatment for strength and shine.', 'Nourish and strengthen your hair with Kerabond 120 ml, an intensive treatment for enhanced hair health, strength, and shine.', 200, 180, '1701729854.png', -72, 1, 1, 'FOR HAIR', 'HAIR ESSENTIAL', 'Nourish and strengthen your hair with Kerabond 120 ml, an intensive treatment for enhanced hair health, strength, and shine.', '2023-12-04 22:44:14'),
(5, 3, 'SEVEN COOL FASHION MAKE UP', 'MAKEUP', 'Seven Cool Fashion Makeup: Vibrant shades for trendy, confident looks.', 'Seven Cool Fashion Makeup\" features a vibrant palette of shades, empowering individuals to create trendy, confident looks for any occasion.', 150, 120, '1701730194.png', 9, 0, 0, 'Make up', 'MAKEUP', 'Seven Cool Fashion Makeup\" features a vibrant palette of shades, empowering individuals to create trendy, confident looks for any occasion.', '2023-12-04 22:49:54'),
(6, 3, 'CHEEK COLOR HIGHLIGHT MAKEUP', 'MAKEUP', 'Cheek Color Highlight: Radiant glow with vibrant, long-lasting pigments.', 'Illuminate your features with our Cheek Color Highlight, boasting vibrant pigments for a radiant glow that lasts, enhancing your natural beauty.', 150, 120, '1701730428.png', 8, 0, 1, 'Make up', 'MAKEUP HIGHLIGHTER', 'Illuminate your features with our Cheek Color Highlight, boasting vibrant pigments for a radiant glow that lasts, enhancing your natural beauty.', '2023-12-04 22:53:48'),
(7, 4, 'MOIST SKINCARE 150 ML', 'lotion', 'Nourishing skincare for radiant, hydrated skin.', 'Experience the luxurious Moist Skin Care line, offering nourishing formulas for radiant, hydrated skin with a healthy glow.\r\n', 220, 120, '1701733729.png', 56, 0, 1, 'LOTION', 'LOTION', 'Experience the luxurious Moist Skin Care line, offering nourishing formulas for radiant, hydrated skin with a healthy glow.\r\nBLUSH ON BRUSH:', '2023-12-04 23:48:49'),
(8, 6, 'EYESHADOW BRUSH', 'brush', 'Eyeshadow Brush: Perfect application for stunning eye makeup looks.', 'Our Eyeshadow Brush is crafted for perfect application, allowing you to create stunning and intricate eye makeup looks effortlessly and precisely.', 80, 50, '1701734284.png', 6, 0, 1, 'BRUSHES', 'BRUSH', 'Our Eyeshadow Brush is crafted for perfect application, allowing you to create stunning and intricate eye makeup looks effortlessly and precisely.', '2023-12-04 23:58:04'),
(12, 6, 'BLUSH ON BRUSH', 'brush', 'Precision brush for seamless blush application.', 'Our Blush On Brush, crafted for precision, seamlessly applies blush for a natural flush, enhancing your overall makeup look.', 100, 150, '1701735264.png', 10, 0, 1, 'BLUSH ON BRUSH', 'BRUSH', 'Our Blush On Brush, crafted for precision, seamlessly applies blush for a natural flush, enhancing your overall makeup look.', '2023-12-05 00:14:24'),
(13, 6, 'FAN BRUSH', 'brush', 'Fan Brush: Effortless highlighting and gentle blending.', 'The Fan Brush is your go-to for effortless highlighting and gentle blending, ensuring a luminous finish with every application.', 80, 120, '1701735417.png', 10, 0, 1, 'FAN BRUSH', 'FAN BRUSH', 'The Fan Brush is your go-to for effortless highlighting and gentle blending, ensuring a luminous finish with every application.', '2023-12-05 00:16:57'),
(14, 10, 'Beauty Sponge', 'COSMETICS', 'Beauty Tools: Essential accessories for precise and flawless makeup application.', 'Explore our curated collection of Beauty Tools, featuring precision brushes and accessories to elevate your makeup routine for flawless, professional results.', 50, 35, '1701751566.png', -5, 0, 1, 'BEAUTY TOOLS', 'BEAUTY TOOLS', 'Explore our curated collection of Beauty Tools, featuring precision brushes and accessories to elevate your makeup routine for flawless, professional results.', '2023-12-05 04:46:06'),
(15, 5, 'LIPBALM 99% ROSE (ROSE PINK)', 'lipstick', ' Intense color, velvety finish for standout, kissable lips.', 'Unleash your confidence with our Lipstick, delivering intense, vibrant hues and a velvety finish for standout, kissable lips that last all day.', 100, 80, '1701754081.png', -4, 0, 1, 'LIPSTICK', 'lipstick', 'Unleash your confidence with our Lipstick, delivering intense, vibrant hues and a velvety finish for standout, kissable lips that last all day.', '2023-12-05 05:28:01'),
(16, 7, 'EYE LINER super black (Pink)', 'eyes', 'Super Black Eye Liner (Pink): Intense, precise lines for standout eye', 'Achieve standout eyes with the Super Black Eye Liner in Pink, delivering intense and precise lines for a captivating look.', 100, 80, '1701754304.png', 0, 0, 1, 'EYES ESSENTIAL', 'eyes', 'Achieve standout eyes with the Super Black Eye Liner in Pink, delivering intense and precise lines for a captivating look.', '2023-12-05 05:31:44'),
(17, 8, 'SASIME Peel Off Mask (Orange)', 'mask', 'SASIME Peel Off Mask (Orange): Revitalize with this refreshing skincare treat.', 'Indulge in the SASIME Peel Off Mask in Orange, a refreshing skincare treat designed to revitalize and rejuvenate your complexion.', 50, 30, '1701754492.png', -1, 0, 1, 'mask', 'mask', 'Indulge in the SASIME Peel Off Mask in Orange, a refreshing skincare treat designed to revitalize and rejuvenate your complexion.', '2023-12-05 05:34:52'),
(20, 12, 'bremod', 'KAPE', 'he #1 Best-Selling Detox Drink in the Philippines! 12-in-1 Glutalipo detox drinks are infused with organic ingredients which are proven to have health benefits to effectively and efficiently burn fat, to fight against skin aging, and to lighten skin tone.\r\n', 'he #1 Best-Selling Detox Drink in the Philippines! 12-in-1 Glutalipo detox drinks are infused with organic ingredients ', 100, 0, '1701759011.png', 25, 0, 1, 'hair', 'hair essential', 'he #1 Best-Selling Detox Drink in the Philippines! 12-in-1 Glutalipo detox drinks are infused with organic ingredients which are proven to have health benefits to effectively and efficiently burn fat, to fight against skin aging, and to lighten skin tone.\r\n', '2023-12-05 06:50:11'),
(21, 7, 'hair style', 'HAIR', 'werwerwe', 'fo hair', 100, 120, '1702536082.png', 50, 0, 1, 'hair', 'hair', 'for hair', '2023-12-14 06:41:22'),
(22, 1, 'SPONGE', 'HAIR', 'HAIR', 'HAIR', 200, 190, '1702537146.jpg', NULL, 0, 1, 'FOR HAIR', 'HAIRRR', 'HAIR', '2023-12-14 06:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_as` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
