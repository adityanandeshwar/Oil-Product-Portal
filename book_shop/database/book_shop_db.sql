-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 02:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(4, 1, 1, 2500, 1, '2021-07-16 13:48:00'),
(19, 4, 1, 180, 1, '2022-01-06 11:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Canola Oil', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Canola oil is a vegetable oil derived from a variety of rapeseed that is low in erucic acid, as opposed to colza oil. There are both edible and industrial forms produced from the seed of any of several cultivars of the plant family Brassicaceae.\r\n\r\nAccording to the Canola Council of Canada, an industry association, the official definition of canola is \"Seeds of the genus Brassica (Brassica napus, Brassica rapa, or Brassica juncea) from which the oil shall contain less than 2% erucic acid in its fatty acid profile and the solid component shall contain less than 30 micromoles of any one or any mixture of 3-butenyl glucosinolate, 4-pentenyl glucosinolate, 2-hydroxy-3 butenyl glucosinolate, and 2-hydroxy- 4-pentenyl glucosinolate per gram of air-dry, oil-free solid.\" Canola oil is also used as a source of biodiesel.&lt;/p&gt;', 1, '2021-07-16 09:08:44'),
(2, 'Rice Bran Oil', '&lt;p&gt;Rice bran oil is the oil extracted from the hard outer brown layer of rice called chaff (rice husk). It is known for its high smoke point of 232 °C (450 °F) and mild flavor, making it suitable for high-temperature cooking methods such as stir frying and deep frying. It is popular as a cooking oil in East Asia, the Indian subcontinent, and Southeast Asia including India, Nepal, Bangladesh, Indonesia, Japan, and Malaysia.&lt;/p&gt;', 1, '2021-07-16 09:09:25'),
(3, 'Palm Oil', '&lt;p&gt;Palm oil is an edible vegetable oil derived from the mesocarp (reddish pulp) of the fruit of the oil palms.The oil is used in food manufacturing, in beauty products, and as biofuel. Palm oil accounted for about 33% of global oils produced from oil crops in 2014.\r\n\r\nThe use of palm oil has attracted the concern of environmental groups due to deforestation in the tropics where palms are grown, and has been cited as a factor in social problems due to allegations of human rights violations among growers. An industry group formed in 2004 to create more sustainable and ethical palm oil, through the Roundtable on Sustainable Palm Oil. However, very little palm oil is certified through the organization, and some groups have criticized it as greenwashing.&lt;/p&gt;', 1, '2021-07-16 09:09:46'),
(4, 'Coconut oil', '&lt;p&gt;Like most other oils, coconut comes in two varieties: refined or unrefined (also known as “virgin”).\r\n\r\nRefined coconut oil has a smoke point of 450ºF (232ºC). It works well for sautéing or roasting and has a neutral, light-coconut taste.\r\n\r\nVirgin coconut oil, on the other hand, offers more signature coconut flavor and can be used at temperatures up to 350ºF (177ºC). Both are also suitable for baking with a 1:1 ratio for butter or other oils.\r\n\r\nCoconut oil has seen its share of controversy over its healthiness recently, so check out our analysis of the evidence around its health benefits.&lt;/p&gt;', 1, '2021-07-16 11:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '091023456789', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-07-16 10:34:48'),
(2, 'Atreay', 'Kukanur', 'Male', '3456719836', 'steeve@gmail.com', '9ad2eb71df78e2edfe0b7852aa5ffb1b', 'Vasant JP, chowty road, Annavatti, Shimoga District, Karnataka', '2022-01-05 16:41:32'),
(3, 'Fakkaya', 'Nooru', 'Male', '7689543210', 'fakkay@gmail.com', '9ad2eb71df78e2edfe0b7852aa5ffb1b', 'Basu', '2022-01-05 23:20:37'),
(5, 'PRANALI', 'BHOSALE', 'Female', '3456719836', 'oops@gmail.com', '202cb962ac59075b964b07152d234b70', 'Siddheshwar nagar ,1st cross kanabargi , Belagavi , Karnataka', '2022-02-28 12:01:29'),
(7, 'admin', 'admin', 'Male', '3456719836', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', '2022-02-28 12:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 1, 50, 180, '2021-07-16 10:02:39', '2022-01-05 16:46:45'),
(2, 2, 20, 200, '2021-07-16 10:09:08', '2022-01-05 16:46:58'),
(3, 3, 10, 350, '2021-07-16 12:05:54', '2022-01-05 16:47:14'),
(4, 4, 50, 850, '2021-07-16 13:12:10', '2022-01-05 16:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(1, 1, 'Sample Address', 'Online Payment', 2, 8500, 0, 1, '2021-07-16 11:14:58', NULL),
(4, 1, 'Sample Address', 'Online Payment', 2, 5000, 5, 1, '2021-07-16 13:13:42', '2021-07-16 13:52:56'),
(5, 2, 'Vasant JP, chowty road, Annavatti, Shimoga District, Karnataka', 'cod', 2, 5000, 0, 0, '2022-01-05 16:41:57', NULL),
(6, 2, 'on earth', 'cod', 2, 400, 0, 0, '2022-01-05 20:14:40', NULL),
(7, 2, 'on earth', 'cod', 2, 1550, 0, 0, '2022-01-05 21:57:55', NULL),
(8, 2, 'Vasant JP, chowty road, Annavatti, Shimoga District, Karnataka', 'cod', 2, 200, 0, 0, '2022-01-05 22:08:38', NULL),
(9, 2, 'on earth', 'cod', 2, 350, 0, 0, '2022-01-05 22:49:16', NULL),
(10, 2, 'on earth', 'cod', 2, 200, 0, 0, '2022-01-05 22:52:02', NULL),
(11, 3, 'Basu', 'cod', 1, 180, 0, 0, '2022-01-05 23:21:36', NULL),
(12, 3, 'Basu', 'cod', 2, 350, 0, 0, '2022-01-05 23:24:08', NULL),
(13, 2, 'Vasant JP, chowty road, Annavatti, Shimoga District, Karnataka', 'cod', 2, 350, 0, 0, '2022-01-06 11:48:52', NULL),
(14, 2, 'Vasant JP, chowty road, Annavatti, Shimoga District, Karnataka', 'cod', 2, 1600, 0, 0, '2022-01-06 12:04:09', NULL),
(15, 2, 'Vasant JP, chowty road, Annavatti, Shimoga District, Karnataka', 'cod', 2, 350, 0, 0, '2022-01-20 12:00:44', NULL),
(16, 5, 'Siddheshwar nagar ,1st cross kanabargi , Belagavi , Karnataka', 'cod', 2, 550, 0, 0, '2022-02-28 12:07:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 2, 1, 3500, 3500),
(2, 1, 1, 2, 2500, 5000),
(3, 4, 3, 2, 2500, 5000),
(4, 5, 1, 2, 2500, 5000),
(5, 6, 2, 2, 200, 400),
(6, 7, 3, 2, 350, 700),
(7, 7, 4, 1, 850, 850),
(8, 8, 2, 1, 200, 200),
(9, 9, 3, 1, 350, 350),
(10, 10, 2, 1, 200, 200),
(11, 11, 1, 1, 180, 180),
(12, 12, 3, 1, 350, 350),
(13, 13, 3, 1, 350, 350),
(14, 14, 1, 5, 180, 900),
(15, 14, 3, 2, 350, 700),
(16, 15, 3, 1, 350, 350),
(17, 16, 2, 1, 200, 200),
(18, 16, 3, 1, 350, 350);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `author`, `description`, `status`, `date_created`) VALUES
(1, 1, 1, 'Avocado Oil', 'Rushabh and Miral Parikh', '&lt;p&gt;&lt;span style=\\\\\\&quot;text-align: justify;\\\\\\&quot;&gt;Avocado oil is an edible oil extracted from the pulp of avocados, the fruit of Persea americana. It is used as an edible oil both raw and for cooking, where it is noted for its high smoke point. It is also used for lubrication and in cosmetics.\r\n\r\nAvocado oil has an unusually high smoke point: 250 °C (482 °F) for unrefined oil and 271 °C (520 °F) for refined. better source needed The exact smoke point depends heavily on the quality of refinement and the way the oil is stored&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-07-16 09:43:11'),
(2, 1, 1, 'Groundnut Oil', 'in US during World War 2', '&lt;p&gt;&lt;span style=\\\\\\\\\\\\\\&quot;text-align: justify;\\\\\\\\\\\\\\&quot;&gt;Peanut oil, also known as groundnut oil or arachis oil, is a vegetable oil derived from peanuts. The oil usually has a mild or neutral flavor but, if made with roasted peanuts, has a stronger peanut flavor and aroma. It is often used in American, Chinese, Indian, African and Southeast Asian cuisine, both for general cooking, and in the case of roasted oil, for added flavor.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-07-16 10:08:53'),
(3, 1, 2, 'Sunflower Oil', '1830 in Russia', '&lt;p&gt;&lt;span style=\\&quot;text-align: justify;\\&quot;&gt;Sunflower oil is the non-volatile oil pressed from the seeds of sunflower (Helianthus annuus). Sunflower oil is commonly used in food as a frying oil, and in cosmetic formulations as an emollient. Sunflower oil is primarily composed of linoleic acid, a polyunsaturated fat, and oleic acid, a monounsaturated fat. Through selective breeding and manufacturing processes, oils of differing proportions of the fatty acids are produced. The expressed oil has a neutral taste profile. The oil contains a large amount of vitamin E.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-07-16 12:03:08'),
(4, 1, 2, 'Olive Oil', 'god Aristaeus', '&lt;p style=\\&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\\&quot;&gt;Olive oil is a liquid fat obtained from olives (the fruit of Olea europaea; family Oleaceae), a traditional tree crop of the Mediterranean Basin, produced by pressing whole olives and extracting the oil. It is commonly used in cooking, for frying foods or as a salad dressing. It is also used in cosmetics, pharmaceuticals, and soaps, and as a fuel for traditional oil lamps, and has additional uses in some religions. The olive is one of three core food plants in Mediterranean cuisine; the other two are wheat and grapes. Olive trees have been grown around the Mediterranean since the 8th millennium BC.&lt;/p&gt;&lt;p style=\\&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\\&quot;&gt;Sed quis imperdiet est. Donec lobortis tortor id neque tempus, vel faucibus lorem mollis. Fusce ut sollicitudin risus. Aliquam iaculis tristique nunc vel feugiat. Sed quis nulla non dui ornare porttitor eu vitae nisi. Curabitur at quam ut libero convallis mattis vel eget mauris. Vivamus vitae lectus ligula. Nulla facilisi. Vivamus tristique maximus nulla, vel mollis felis blandit posuere. Curabitur mi risus, rutrum non magna at, molestie gravida magna. Aenean neque sapien, volutpat a ullamcorper nec, iaculis quis est.&lt;/p&gt;', 1, '2021-07-16 13:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 3, 8500, '2021-07-16 11:18:12'),
(2, 4, 5000, '2021-07-16 13:13:42'),
(3, 5, 5000, '2022-01-05 16:41:57'),
(4, 6, 400, '2022-01-05 20:14:41'),
(5, 7, 1550, '2022-01-05 21:57:56'),
(6, 8, 200, '2022-01-05 22:08:39'),
(7, 9, 350, '2022-01-05 22:49:16'),
(8, 10, 200, '2022-01-05 22:52:02'),
(9, 11, 180, '2022-01-05 23:21:37'),
(10, 12, 350, '2022-01-05 23:24:09'),
(11, 13, 350, '2022-01-06 11:48:52'),
(12, 14, 1600, '2022-01-06 12:04:09'),
(13, 15, 350, '2022-01-20 12:00:44'),
(14, 16, 550, '2022-02-28 12:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Oil Shop'),
(6, 'short_name', 'OILY'),
(11, 'logo', 'uploads/oil.png'),
(13, 'user_avatar', 'uploads/user.png'),
(14, 'cover', 'uploads/Food.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
