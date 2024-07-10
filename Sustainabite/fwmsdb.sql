-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 07:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fwmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `StateID` int(10) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(3, 3, 'Allahabad', '2019-05-07 08:41:08'),
(4, 3, 'Aligarh', '2019-05-07 08:41:20'),
(5, 3, 'Lucknow', '2019-05-07 08:41:28'),
(6, 2, 'Jaipur', '2019-05-07 08:42:16'),
(12, 2, 'Bhopal', '2019-05-07 08:44:45'),
(15, 11, 'Chennai', '2019-06-18 18:15:10'),
(16, 4, 'Visakhapatnam', '2021-11-29 05:11:26'),
(17, 3, 'Noida', '2022-01-22 10:09:48'),
(18, 12, 'Amritsar', '2022-01-23 06:32:58'),
(19, 4, 'Vijayawada', '2024-02-18 05:13:28'),
(20, 13, 'Bangalore', '2024-03-01 17:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Manu', 'Sharma', 'manu@gmail.com', 9879879879, 'Tell me fee of play school', '2021-11-01 04:53:55', 1),
(2, 'Anuj', 'Kumar', 'ak@gmail.com', 1234567890, 'test', '2021-11-09 17:42:29', 1),
(3, 'Devyansh', 'Rai', 'dev@gmail.com', 7977897978, 'yuiyuiyuiueyfiurbyv', '2021-12-08 12:02:22', 1),
(4, 'Test', 'Tes', 'ddshg@gmail.com', 1234567789, 'dsafsd', '2022-01-23 06:34:03', 1),
(5, 'V', 'M', 'Ved@g.co', 97, 'Hi', '2024-02-27 05:38:47', 1),
(6, 'Sushma', 'S', 'sushu0234@gmail.com', 7894561236, 'I want to join the sustainabite ', '2024-02-29 17:17:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldonor`
--

CREATE TABLE `tbldonor` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldonor`
--

INSERT INTO `tbldonor` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Rahul Singh', 'guru@gmail.com', 9898989898, '202cb962ac59075b964b07152d234b70', '2021-11-29 05:12:21'),
(2, 'Khusbu', 'hj@gmail.com', 8989898988, '202cb962ac59075b964b07152d234b70', '2021-11-29 05:12:21'),
(3, 'John Doe', 'johndoe@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2021-11-29 05:12:21'),
(4, 'Anuj Kumar', 'anuj@gmail.com', 4877799797, '202cb962ac59075b964b07152d234b70', '2021-11-29 05:12:21'),
(5, 'Rahul kumar Singh', 'rahul@gmail.com', 1236547899, 'f925916e2754e5e03f75dd58a5733251', '2022-01-23 06:25:11'),
(6, 'Jayakumar Kautharam', 'kjaya163@gmail.com', 9550320539, '26a607f2bdca169d52bc99c22fd9053b', '2024-02-17 15:31:11'),
(7, 'Sushma', 'sushu0234@gmail.com', 1234567890, '9fab6755cd2e8817d3e73b0978ca54a6', '2024-02-18 04:28:30'),
(8, 'Bhanu', 'bhanu@gmail.com', 9848582020, '25f9e794323b453885f5181f1b624d0b', '2024-02-27 17:47:46'),
(9, 'Shiva', 'Shiva@gmail.com', 7896541230, '69f404925df883e0e5579d65b7768e7c', '2024-03-01 17:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `DonorID` int(10) DEFAULT NULL,
  `foodId` int(10) DEFAULT NULL,
  `FoodItems` mediumtext DEFAULT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `pgName` longtext NOT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PickupDate` varchar(200) DEFAULT NULL,
  `PickupAddress` mediumtext DEFAULT NULL,
  `ContactPerson` varchar(200) DEFAULT NULL,
  `CPMobNumber` bigint(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `DonorID`, `foodId`, `FoodItems`, `StateName`, `CityName`, `pgName`, `Description`, `PickupDate`, `PickupAddress`, `ContactPerson`, `CPMobNumber`, `Image`, `CreationDate`, `UpdationDate`) VALUES
(5, 6, 581853630, 'Biriyani', 'Tamilnadu', 'Chennai', 'Test Pg', 'vguknk', '2024-02-23', '19-6-20/D, DR Mahal Road,\r\nSTV Nagar,', 'Jayakumar Kautharam', 9550320539, '1ece82075b833524df0232fdcaf717f5jfif', '2024-02-17 16:39:51', NULL),
(7, 8, 934653111, 'sambar,rice,idly', 'Andra Pradesh', 'Visakhapatnam', 'Kashi Annapurnam PG', 'Tiffin is available with me', '2024-02-28', '10-25\r\nvv mahal road\r\nvishakapatnam', 'Bhanu', 9848582020, 'f0612f4bbcbc8f0863ac84d08664e74d.jpg', '2024-02-27 17:52:10', NULL),
(8, 7, 124407488, 'Sushi,Noodles', 'Andra Pradesh', 'Visakhapatnam', 'Kashi Annapurnam PG', 'Food is fresh and ready to take ', '0204-02-29', 'Rama Talkies Road, Srinagar, Visakhapatnam - 530016 (Old Vegetable Market)Srinagar , vishakapatnam', 'Sushma', 7894561234, '236271420b6fc520bff51ccb2eee9908.jpg', '2024-02-29 17:12:00', NULL),
(9, 7, 855385629, 'Curry with rice', 'Karnataka', 'Bangalore', 'Shri Varasiddhi Vinayaka', 'fresh and ready to eat', '2024-02-01', 'Jayanagar 9th Block', 'Sushma', 7894561234, 'b2214bbf2df647af0c63b7b87b08af79.jpg', '2024-03-01 17:40:21', NULL),
(10, 7, 901064162, 'Curry with rice', 'Karnataka', 'Bangalore', 'Shri Varasiddhi Vinayaka', 'Fresh and ready to eat', '2024-03-03', 'Jayanagar 9th block', 'Sushma', 7894561234, 'ce4aae876b473de4419c81d56ea8f9ad.jpg', '2024-03-03 09:58:22', NULL),
(11, 7, 678948251, 'Curry', 'Karnataka', 'Bangalore', 'Shri Varasiddhi Vinayaka', 'food', '2024-03-30', 'jayanagar 9th block', 'Sushma', 7894561234, 'e2e5c0037c3894c7b5e7477c63187f09.jpg', '2024-03-30 05:36:30', '2024-03-30 05:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodrequests`
--

CREATE TABLE `tblfoodrequests` (
  `id` int(11) NOT NULL,
  `requestNumber` bigint(12) DEFAULT NULL,
  `foodId` int(1) DEFAULT NULL,
  `fullName` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `requestDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(120) DEFAULT NULL,
  `donorRemark` mediumtext DEFAULT NULL,
  `requestCompletionDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfoodrequests`
--

INSERT INTO `tblfoodrequests` (`id`, `requestNumber`, `foodId`, `fullName`, `mobileNumber`, `message`, `requestDate`, `status`, `donorRemark`, `requestCompletionDate`) VALUES
(1, 223505689, 2, 'Sanjeev', 8521479630, 'NA', '2022-01-22 10:44:28', NULL, NULL, NULL),
(2, 692624619, 3, 'Amit Kumar', 1122334455, 'Need the food for poor peoples', '2022-01-22 10:46:41', 'Food Take Away/ Request Completed', 'Food Picked up.', '2022-01-22 11:29:47'),
(3, 293916769, 4, 'Garima Singh', 7891232014, 'I need this for poor people', '2022-01-23 06:30:23', 'Food Take Away/ Request Completed', 'You can pickup the food', '2022-01-23 06:30:54'),
(4, 792347137, 6, 'Sushma', 7896541235, '', '2024-02-27 17:22:13', NULL, NULL, NULL),
(5, 191242042, 2, 'Sushma', 7896541235, '', '2024-02-27 17:23:21', NULL, NULL, NULL),
(6, 251914505, 2, 'Sushma', 7896541235, '', '2024-02-27 17:24:54', NULL, NULL, NULL),
(7, 228358709, 7, 'Sushma', 9844412345, 'required', '2024-02-27 17:53:08', 'Food Take Away/ Request Completed', 'collect the food\r\n', '2024-02-27 18:21:13'),
(8, 906373656, 8, 'Sushuuu', 7894563215, 'Yes I need the food', '2024-02-29 17:13:10', 'Food Take Away/ Request Completed', 'You can collect the food', '2024-02-29 17:13:48'),
(9, 411535904, 9, 'Shiva', 7894563215, 'Yes need this food urgently', '2024-03-01 17:41:32', 'Food Take Away/ Request Completed', 'Yes you can collect it', '2024-03-01 17:42:33'),
(10, 928128276, 5, 'Sushma', 7896541235, 'Need food', '2024-03-03 09:48:38', 'Food Take Away/ Request Completed', 'Come and take', '2024-03-03 09:50:53'),
(11, 962020697, 10, 'Sushma', 7894563215, 'yes \r\n', '2024-03-03 09:59:33', 'Food Take Away/ Request Completed', 'collect the food\r\n', '2024-03-03 09:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblhostels`
--

CREATE TABLE `tblhostels` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `cityId` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblhostels`
--

INSERT INTO `tblhostels` (`id`, `name`, `cityId`, `creation_date`) VALUES
(3, 'Chennai Girls PG', 15, '2024-02-18 03:58:42'),
(4, 'Sangam PG', 3, '2024-02-18 04:58:54'),
(5, 'Mamatha PG', 3, '2024-02-18 04:59:16'),
(6, 'New Anupam PG', 3, '2024-02-18 04:59:37'),
(7, 'Sunflower PG', 3, '2024-02-18 04:59:57'),
(8, 'Siddique PG', 4, '2024-02-18 05:01:05'),
(9, 'Liza PG', 4, '2024-02-18 05:01:25'),
(10, 'Noor Jahan PG', 4, '2024-02-18 05:01:44'),
(11, 'Vollmond PG', 4, '2024-02-18 05:02:03'),
(12, 'Gulshan e Iqbal PG', 4, '2024-02-18 05:02:29'),
(13, 'Pooja Girls PG', 5, '2024-02-18 05:03:02'),
(14, 'Mittal PG', 5, '2024-02-18 05:03:32'),
(15, 'Ajay PG', 5, '2024-02-18 05:03:46'),
(16, 'Metroinn Silver PG', 5, '2024-02-18 05:04:25'),
(17, 'Pipalda PG ', 6, '2024-02-18 05:05:12'),
(18, 'Banipark PG', 6, '2024-02-18 05:05:29'),
(19, 'Hello Namasthe PG', 6, '2024-02-18 05:05:51'),
(20, 'Annad Luxury PG', 6, '2024-02-18 05:06:15'),
(21, 'Unique Girls PG', 6, '2024-02-18 05:06:34'),
(22, 'Ramam Boys PG', 6, '2024-02-18 05:06:51'),
(23, 'Kirti PG', 6, '2024-02-18 05:07:15'),
(24, 'Vinod Kumar Shukla PG', 12, '2024-02-18 05:09:04'),
(25, 'Nirmala PG', 12, '2024-02-18 05:09:51'),
(27, 'Mewade PG', 12, '2024-02-18 05:10:54'),
(28, 'DK PG', 12, '2024-02-18 05:11:09'),
(29, 'Kavyansh Girls PG', 12, '2024-02-18 05:11:30'),
(30, 'Eugene PG', 15, '2024-02-18 05:15:44'),
(31, 'Colombus PG', 15, '2024-02-18 05:16:15'),
(32, 'Mataro PG', 15, '2024-02-18 05:16:33'),
(33, 'Santa Rosa PG', 15, '2024-02-18 05:17:13'),
(34, 'Getafe PG', 15, '2024-02-18 05:17:35'),
(35, 'Kashi Annapurnam PG', 16, '2024-02-18 05:18:23'),
(36, 'Somuvijaya PG', 16, '2024-02-18 05:18:44'),
(37, 'Sea Winds PG', 16, '2024-02-18 05:19:46'),
(38, 'Sri Lakshmi Ganapathi PG', 16, '2024-02-18 05:20:11'),
(39, 'Monisha PG', 16, '2024-02-18 05:20:33'),
(40, 'Vizima Living Girls PG', 17, '2024-02-18 05:21:15'),
(41, 'Ashiya Living PG', 17, '2024-02-18 05:21:34'),
(42, 'Griham PG', 17, '2024-02-18 05:22:28'),
(43, 'K C PG', 18, '2024-02-18 05:23:35'),
(44, 'Jolly PG', 18, '2024-02-18 05:24:05'),
(45, 'Mahajan PG', 18, '2024-02-18 05:24:21'),
(46, 'Modern PG', 18, '2024-02-18 05:24:37'),
(47, 'Walia PG', 18, '2024-02-18 05:25:11'),
(48, 'Sai Sreenivas PG', 19, '2024-02-18 05:25:37'),
(49, 'Srihitha PG', 19, '2024-02-18 05:25:52'),
(50, 'Priya Girls PG', 19, '2024-02-18 05:26:13'),
(51, 'Seven hills PG', 19, '2024-02-18 05:26:36'),
(52, 'Rajyalakshmi Girls PG', 19, '2024-02-18 05:27:10'),
(53, 'Sai Sree PG', 19, '2024-02-18 05:27:37'),
(54, 'V Accomodation PG', 19, '2024-02-18 05:28:17'),
(55, 'Shri Varasiddhi Vinayaka', 20, '2024-03-01 17:35:34'),
(56, 'Stanza Living', 20, '2024-03-01 17:36:06'),
(57, 'Happy PG', 20, '2024-03-01 17:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: center;\"><b><font size=\"6\">Welcome to Sustainabite </font></b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\"><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-weight: 700;\">Food waste&nbsp;</span>refers to the decrease in the quantity or quality of food resulting from decisions and actions by retailers, food service providers and consumers. &nbsp;Food is wasted in many ways:</p><ul style=\"margin-bottom: 10px; padding-left: 1.5em; color: rgb(33, 37, 41); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Fresh produce that deviates from what is considered optimal, for example in terms of shape, size and color, is often removed from the supply chain during sorting operations.</li><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Foods that are close to, at or beyond the â€œbest-beforeâ€ date are often discarded by retailers and consumers.</li><li style=\"margin-bottom: 6px; position: relative; padding-right: 15px; line-height: 1.5;\">Large quantities of wholesome edible food are often unused or left over and discarded from household kitchens and eating establishments.</li></ul><p class=\"bodytext\" style=\"margin-bottom: 10px; color: rgb(33, 37, 41); line-height: 1.5; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Less food loss and waste would lead to more efficient land use and better water resource management with positive impacts on climate change and livelihoods.</p></div>', '2024-02-27 06:26:45'),
(3, 'contactus', 'Embrace the power of your plate to ignite sustainability and shape a better world.', 'Opposite to 9th Block Bus stand , Jayanagar 9th Block Bengaluru, karnataka , India 560041  \r\n\r\n\r\nEmail  : Sustainabite@gmail.com \r\n\r\nPhoneNo: 7894561235\r\n  ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(3, 'Uttar Pradesh', '2019-05-07 07:07:21'),
(4, 'Andra Pradesh', '2019-05-07 07:07:31'),
(5, 'Delhi/NCR', '2019-05-07 07:07:39'),
(6, 'Kerala', '2019-05-07 07:07:58'),
(7, 'Arunachal Pradesh', '2019-05-07 07:08:12'),
(8, 'Sikkim', '2019-05-07 07:08:37'),
(9, 'Maharastra', '2019-05-07 07:08:49'),
(10, 'Gujrat', '2019-05-07 07:09:16'),
(11, 'Tamilnadu', '2019-06-18 18:14:43'),
(12, 'Punjab', '2022-01-23 06:32:34'),
(13, 'Karnataka', '2024-03-01 17:34:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldonor`
--
ALTER TABLE `tbldonor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodrequests`
--
ALTER TABLE `tblfoodrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhostels`
--
ALTER TABLE `tblhostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbldonor`
--
ALTER TABLE `tbldonor`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblfoodrequests`
--
ALTER TABLE `tblfoodrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblhostels`
--
ALTER TABLE `tblhostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
