-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 03:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminpassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminpassword`) VALUES
(1234);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idcust` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `custpassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcust`, `username`, `address`, `phoneno`, `email`, `custpassword`) VALUES
(1, 'Nursyuhana Binti Abdul Rashid', '118 Mukim H Sungai Burung,Kampung Sungai Burung,11000 Balik Pulau,Pulau Pinang.', 124963445, 'hana@gmail.com', 123),
(2, 'Ainnur Najwa Binti Zainol', '153,Kampung Melayu,02100 Padang Besar,Perlis.', 175236142, 'wawa@gmail.com', 4242),
(4, 'Adriana Syazwani Binti Affendi', '152,Lebuh Carnarvon,George Town,10100 George Town,Pulau Pinang.', 1146325124, 'adrianasyaz@gmail.com', 3333),
(5, 'Ain Suraya Binti Mohd Ruzuki', '911,Lorong Angsana 26,Taman Keladi,08000 Sungai Petani,Kedah.', 1111313461, 'ainsuraya313@gmail.com', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `datecreation` date NOT NULL,
  `status` varchar(25) NOT NULL,
  `username` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `datecreation`, `status`, `username`) VALUES
(1, 'Order 1', '2020-12-03', 'Active', 'Ainnur Najwa Binti Zainol'),
(2, 'Order 2', '2020-12-01', 'Active', 'Nursyuhana Binti Abdul Rashid'),
(3, 'New Order', '2020-12-07', 'Active', 'Ain Suraya Binti Mohd Ruzuki'),
(95, 'New Order', '2020-12-08', 'Active', 'Adriana Syazwani Binti Affendi'),
(168, 'New Order', '2020-12-10', 'Active', 'Ain Suraya Binti Mohd Ruzuki'),
(183, 'New Order', '2020-12-11', 'Active', 'Nursyuhana Binti Abdul Rashid'),
(188, 'New Order', '2020-12-12', 'Active', 'Adriana Syazwani Binti Affendi'),
(189, 'New Order', '2020-12-12', 'Active', 'Nursyuhana Binti Abdul Rashid'),
(190, 'New Order', '2020-12-13', 'Active', 'Ainnur Najwa Binti Zainol');

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetail`
--

CREATE TABLE `ordersdetail` (
  `productid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordersdetail`
--

INSERT INTO `ordersdetail` (`productid`, `orderid`, `price`, `quantity`) VALUES
(1, 2, 239.9, 1),
(1, 3, 359.99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `image` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idproduct`, `productname`, `image`, `price`, `quantity`) VALUES
(4245666, 'CHEETAH DOLL KURUNG', 'images/pic3.jpg', 259.9, 2),
(7234556, 'LISSASUIT', 'images/pic2.jpg', 239.9, 5),
(8224355, 'KRISDAYANTI KURUNG', 'images/pic1.jpg', 359.99, 10);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sellerpassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sellerpassword`) VALUES
(2222);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcust`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idproduct`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idcust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
