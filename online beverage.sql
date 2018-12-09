-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 11:11 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE `beer` (
  `Beer_id` int(10) NOT NULL,
  `Beer_name` varchar(100) NOT NULL,
  `Beer_volume` varchar(100) NOT NULL,
  `Beer_brand` varchar(100) NOT NULL,
  `Beer_category` varchar(100) NOT NULL,
  `Beer_country` varchar(100) NOT NULL,
  `Beer_details` varchar(1000) NOT NULL,
  `Beer_price` varchar(10) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beer`
--

INSERT INTO `beer` (`Beer_id`, `Beer_name`, `Beer_volume`, `Beer_brand`, `Beer_category`, `Beer_country`, `Beer_details`, `Beer_price`, `image`) VALUES
(1, 'Arna Premium Bottle 650ML', '650 ML', 'Arna', 'Beer / Domestic Beer ', 'Nepal', 'Arna Premium Lager, the hallmark in beer brewing standards, is a pure, crisp & clean Himalayan classic beer.\r\n\r\nBrewed with the finest malted barley, European hops and pure Himalayan water.', 'Rs. 260', 'Arna Premium.png'),
(2, 'Tuborg Classic Premium Strong Bottle 650ML', '650ML', 'Tuborg', 'Beer / Domestic Beer', 'Nepal', 'Tuborg Classic with Scotch Malts is the perfect combination of strong and smooth. Made with Scotch malts, it gives you a rich taste that complements its strong flavor. Superior quality malts and hops make your drinking experience easy and smooth.\r\n\r\nTuborg Classic is a rich tasting strong beer that offers the new generation of beer lovers a distinctive premium product.', 'Rs. 310', 'Touborg.jpeg'),
(3, 'Tuborg Classic Premium Strong Bottle 650ML', '650ML', 'Tuborg', 'Beer / Domestic Beer', 'Nepal', 'Tuborg Classic with Scotch Malts is the perfect combination of strong and smooth. Made with Scotch malts, it gives you a rich taste that complements its strong flavor. Superior quality malts and hops make your drinking experience easy and smooth.\r\n\r\nTuborg Classic is a rich tasting strong beer that offers the new generation of beer lovers a distinctive premium product.', 'Rs. 310', 'Touborg.jpeg'),
(4, 'Heineken Can 500ML', '500ML', 'Heineken', 'Beer / Imported Beer', 'Neitherlands', 'Heineken is a pale lager beer with 5% alcohol by volume produced by the Dutch brewing company Heineken International. Heineken is well known for its signature green bottle and red star.', 'Rs. 360', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'BOLT1', 'Sports Shoes', 'With a clean vamp, tonal stitch details throughout, and a unique formstripe finish, the all new sports shoes fits the needs of multiple running consumers by offering an athletic and a lifestyle look.', 5000, 1, 5000, '2018-01-09 18:00:03', 'samir.lama123@gmail.com'),
(13, 'BOLT2', 'Cap', 'A sleek, tonal stitched cap for runners. The plain texture and unique design will help runners to concentrate more on running and less on their hair. The combbination of casual and formal look is just brilliant.', 200, 1, 200, '2018-01-09 18:00:03', 'samir.lama123@gmail.com'),
(14, 'BOLT3', 'Sports Band', 'The Sports Band collection features highly polished stainless steel and space black stainless steel cases. The display is protected by sapphire crystal. And there is a choice of three different leather bands.', 1000, 1, 1000, '2018-01-09 18:00:03', 'samir.lama123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'WINES', 'Big Master', 'a local home made perfect wine for your taste.', 'm.jpg', 30, '500.00'),
(2, 'Branded whisky', 'Blue label premium', 'a authentic soft taste and over 20 years stored whiskey that will simply blend with you.', 'd.jpg', 21, '20000.00'),
(3, 'Soft drinks', 'Diet coke', 'a soft drink which is suitable to have and share in all the occasion.', 'e.jpg', 33, '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `rum`
--

CREATE TABLE `rum` (
  `Rum_id` int(10) NOT NULL,
  `Rum_name` varchar(100) NOT NULL,
  `Rum_volume` varchar(100) NOT NULL,
  `Rum_brand` varchar(100) NOT NULL,
  `Rum_category` varchar(100) NOT NULL,
  `Rum_country` varchar(100) NOT NULL,
  `Rum_details` varchar(1000) NOT NULL,
  `Rum_price` varchar(10) NOT NULL,
  `Rum_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rum`
--

INSERT INTO `rum` (`Rum_id`, `Rum_name`, `Rum_volume`, `Rum_brand`, `Rum_category`, `Rum_country`, `Rum_details`, `Rum_price`, `Rum_pic`) VALUES
(1, 'Khukri XXX Rum 750ML', '750 ML', 'Khukuri', 'Rum / Domestic Rum', 'Nepal', 'This award winning rum stands as the classic rum of the Himalayas.\r\n\r\nSmooth, full-bodied, with an elegant finish and a hint of oak, each bottle beckons the gifts of tradition, unchanging, and a character that never gets old.', 'Rs. 1,300', 'Khukuri.jpeg'),
(2, 'Khukri XXX Rum 750ML', '750 ML', 'Khukuri', 'Rum / Domestic Rum', 'Nepal', 'This award winning rum stands as the classic rum of the Himalayas.\r\n\r\nSmooth, full-bodied, with an elegant finish and a hint of oak, each bottle beckons the gifts of tradition, unchanging, and a character that never gets old.', 'Rs. 1,300', 'Khukuri.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `soft_drinks`
--

CREATE TABLE `soft_drinks` (
  `Soft_id` int(10) NOT NULL,
  `Soft_name` varchar(100) NOT NULL,
  `Soft_volume` varchar(100) NOT NULL,
  `Soft_brand` varchar(100) NOT NULL,
  `Soft_category` varchar(100) NOT NULL,
  `Soft_country` varchar(100) NOT NULL,
  `Soft_details` varchar(10000) NOT NULL,
  `Soft_price` varchar(20) NOT NULL,
  `Soft_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soft_drinks`
--

INSERT INTO `soft_drinks` (`Soft_id`, `Soft_name`, `Soft_volume`, `Soft_brand`, `Soft_category`, `Soft_country`, `Soft_details`, `Soft_price`, `Soft_pic`) VALUES
(1, 'Red Bull 250ML', '250ML', 'Red Bull', 'Beverages / Energy Drink', 'Thailand', 'Red Bull, one the most popular energy drinks produced in Thailand, is solely imported and marketed by GB Marketing, a 100% subsidiary of Gorkha Brewery.\r\n\r\nToday Red Bull has become the most popular energy drink available in the market among the young adults.', 'Rs. 70', ''),
(2, 'Royal Club Soda Water 330ML', '330ML', 'Royal Club', 'Beverages / Soft Drinks', 'Netherlands', 'Royal Club Soda Water in an exquisite gasified water for enthusiasts. Gentle, delicious!', 'Rs. 85', ''),
(3, 'Real Juice Cranberry 1L', '1000ML', 'Real', 'Beverages / Fruit Juice', 'Nepal', 'Real Cranberry juice is the most popular and loved cranberry fruit beverage. It has been well accepted as the most preferred base for many delightful mocktails and cocktails and has in fact become the key to creating magic at parties! It is loved for its taste which leaves you wanting for more.', 'Rs. 220', '');

-- --------------------------------------------------------

--
-- Table structure for table `tobacco`
--

CREATE TABLE `tobacco` (
  `Tobacco_id` int(10) NOT NULL,
  `Tobacco_name` varchar(100) NOT NULL,
  `Tobacco_volume` varchar(100) NOT NULL,
  `Tobacco_brand` varchar(100) NOT NULL,
  `Tobacco_category` varchar(100) NOT NULL,
  `Tobacco_country` varchar(100) NOT NULL,
  `Tobacco_details` varchar(10000) NOT NULL,
  `Tobacco_price` varchar(20) NOT NULL,
  `Tobacco_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tobacco`
--

INSERT INTO `tobacco` (`Tobacco_id`, `Tobacco_name`, `Tobacco_volume`, `Tobacco_brand`, `Tobacco_category`, `Tobacco_country`, `Tobacco_details`, `Tobacco_price`, `Tobacco_pic`) VALUES
(1, 'jkhjvg', 'ljkhvjkj', 'hljkvjhklh', 'lkhv', 'h;lkhvjh', 'jlhlkvjcgvhkhh', 'vhj', ''),
(2, 'jkhjghjkg', 'sydjkhkljkhcg', 'shgkjh', 'gdhfjgkhl', 'dfygu', 'dfjgkh', 'dhfjgkh', ''),
(3, 'nkfydfgk', 'uiglhkjfghg', 'tsrdyg', 'stdfjhkh', 'dfghvjbk', 'hgjbn', 'dfhgjkl', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(6) NOT NULL,
  `age` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `age`, `email`, `password`, `type`) VALUES
(3, 'sujan', 'stha', 'adfsfasdfs', 'asdfds', 25300, 'suresh.tamang162@gmail.com', '123456', 'user'),
(4, 'samir', 'lama', 'balaju', 'kathma', 2523223, 'samir.lama123@gmail.com', 'samir', 'user'),
(5, 'sujan', 'stha', 'jorpati', 'kathma', 2569, 'sujan.stha@gmail.com', '12345', 'admin'),
(6, 'ram', 'kapoor', 'chabahil', '', 213123, 'abc@gmail.com', 'abc', 'user'),
(8, 'shyam', 'thapa', 'adfasfsa', 'asdfas', 123132, 'a@gmail.com', 'abcd', 'user'),
(9, 'sadfd', 'fdfs', 'fsafds', 'sadfas', 23, 's@gmail.com', 'afddfdf', 'user'),
(10, 'ssdasd', 'sddsad', 'asdsada', 'sdasda', 45, 'm@gmail.com', '123456', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vodka`
--

CREATE TABLE `vodka` (
  `Vodka_id` int(10) NOT NULL,
  `Vodka_name` varchar(100) NOT NULL,
  `Vodka_volume` varchar(100) NOT NULL,
  `Vodka_brand` varchar(100) NOT NULL,
  `Vodka_category` varchar(100) NOT NULL,
  `Vodka_country` varchar(100) NOT NULL,
  `Vodka_details` varchar(1000) NOT NULL,
  `Vodka_price` varchar(10) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vodka`
--

INSERT INTO `vodka` (`Vodka_id`, `Vodka_name`, `Vodka_volume`, `Vodka_brand`, `Vodka_category`, `Vodka_country`, `Vodka_details`, `Vodka_price`, `Image`) VALUES
(1, '', '750 ML', 'Ruslan', 'Vodka / Domestic Vodka', 'Nepal', 'Ruslan Vodka at 70 proof is clear in colour, clean and crisp. Matching up the connoisseurs of rich taste, Ruslan Vodka has few equals when it comes to enlivening moments.', 'Rs. 1,250', 'Ruslan.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `whiskey`
--

CREATE TABLE `whiskey` (
  `Whiskey_id` int(10) NOT NULL,
  `Whiskey_name` varchar(100) NOT NULL,
  `Whiskey_volume` varchar(100) NOT NULL,
  `Whiskey_brand` varchar(100) NOT NULL,
  `Whiskey_category` varchar(100) NOT NULL,
  `Whiskey_country` varchar(100) NOT NULL,
  `Whiskey_details` varchar(10000) NOT NULL,
  `Whiskey_price` varchar(20) NOT NULL,
  `Whiskey_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whiskey`
--

INSERT INTO `whiskey` (`Whiskey_id`, `Whiskey_name`, `Whiskey_volume`, `Whiskey_brand`, `Whiskey_category`, `Whiskey_country`, `Whiskey_details`, `Whiskey_price`, `Whiskey_picture`) VALUES
(1, ',jbkh', 'jkhvg', 'bljbv', 'gj', 'khvjhk', 'hhvjhk', 'hhv', ''),
(2, 'kljbkh', 'hvhi', 'vhh', 'ihvk', 'hivhj', 'huhuvjg', 'uhu', '');

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `Wine_id` int(10) NOT NULL,
  `Wine_name` varchar(100) NOT NULL,
  `Wine_volume` varchar(100) NOT NULL,
  `Wine_brand` varchar(100) NOT NULL,
  `Wine_category` varchar(100) NOT NULL,
  `Wine_country` varchar(100) NOT NULL,
  `Wine_details` varchar(1000) NOT NULL,
  `Wine_price` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`Wine_id`, `Wine_name`, `Wine_volume`, `Wine_brand`, `Wine_category`, `Wine_country`, `Wine_details`, `Wine_price`, `image`) VALUES
(1, 'Divine Wine Sweet Red 750ML', '750 ML', 'Divine', 'Wine / Domestic Wine', 'Nepal', 'An irresistible wine whose elegance draws you subliminally its orbit. Intense in color, it is redolent of a profusion of aromas of tea leaves, spices and flowers. The abundance of fruit sensations is often complemented by warm alcohol and gripping tannins. Matured up to 2 and half years, it can be stored in dark & places.\r\n\r\nRecommendations: Is a versatile food wine, great with poultry, meat and vegetable dishes.', 'Rs. 410', 'Divine Red Wine.jpeg'),
(2, 'Divine Wine White 750ML', '750 ML', 'Divine', 'Wine / Domestic Wine', 'Nepal', 'Golden in hue and a perfect blend of sweetness, wine made from grape have a concentrated, grape fruit flavor with good balancing acidity and hints of flowers. Light and elegant, its flavor is soft in the mouth. Matured up to 3 years, it can be stored in dark and cool places.\r\n\r\nRecommendations: Here is the wine that may be enjoyed as an aperitif. Great match for spicy pan-asian food.', 'Rs. 410', 'Divine Wine White.jpeg'),
(3, 'G.H. Mumm Champagne 3L', '3000ML', 'G.H. Mumm', 'Wine / Champagne', 'France', 'This champagne is a brightly sparkling, light golden yellow liquid with an abundance of fine and elegant.\r\n\r\nFRAGRANCE: The nose reveals initial aromas of ripe fresh fruit (white and yellow peaches, apricots), tropical notes (lychee and pineapple). It then opens up with the fragrance of vanilla before developing notes of milky caramel, breadcrumbs and yeast, culminating in aromas of dried fruit and honey.\r\n\r\nTASTE: An explosion of freshness in the mouth, followed by strong persistence. The complex aromas of fresh fruit and caramel perpetuate the intensity.', 'Rs. 27,500', 'G.H. Mumm Champagne 3L.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`Beer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `rum`
--
ALTER TABLE `rum`
  ADD PRIMARY KEY (`Rum_id`);

--
-- Indexes for table `soft_drinks`
--
ALTER TABLE `soft_drinks`
  ADD PRIMARY KEY (`Soft_id`);

--
-- Indexes for table `tobacco`
--
ALTER TABLE `tobacco`
  ADD PRIMARY KEY (`Tobacco_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vodka`
--
ALTER TABLE `vodka`
  ADD PRIMARY KEY (`Vodka_id`);

--
-- Indexes for table `whiskey`
--
ALTER TABLE `whiskey`
  ADD PRIMARY KEY (`Whiskey_id`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`Wine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beer`
--
ALTER TABLE `beer`
  MODIFY `Beer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rum`
--
ALTER TABLE `rum`
  MODIFY `Rum_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `soft_drinks`
--
ALTER TABLE `soft_drinks`
  MODIFY `Soft_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tobacco`
--
ALTER TABLE `tobacco`
  MODIFY `Tobacco_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vodka`
--
ALTER TABLE `vodka`
  MODIFY `Vodka_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whiskey`
--
ALTER TABLE `whiskey`
  MODIFY `Whiskey_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wine`
--
ALTER TABLE `wine`
  MODIFY `Wine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
