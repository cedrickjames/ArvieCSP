-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 03:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arvieds2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(60) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sponsor` varchar(100) NOT NULL,
  `sponsorName` varchar(65) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `date` datetime NOT NULL,
  `access` varchar(8) NOT NULL,
  `permission` varchar(8) NOT NULL,
  `referralId` varchar(16) NOT NULL,
  `homeaddress` varchar(255) NOT NULL,
  `tin_acct` varchar(255) NOT NULL,
  `sss_num` varchar(255) NOT NULL,
  `number_basis` int(11) NOT NULL COMMENT 'for idnumber purposes only',
  `referralLink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `member_id`, `first_name`, `last_name`, `sponsor`, `sponsorName`, `email_address`, `pass`, `contact_number`, `date`, `access`, `permission`, `referralId`, `homeaddress`, `tin_acct`, `sss_num`, `number_basis`, `referralLink`) VALUES
(6, 'ADS22-10-6', 'Arvie', 'Admin', 'n/a', '', 'arvieadmin@gmail.com', '$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2', 2147483647, '2022-10-17 21:36:49', 'approved', 'administ', 'asd12-12345', '3 Verder, Tanza, Cavite', 'n/a', 'n/a', 6, ''),
(41, 'ADS2022-10-7', 'One', 'Uno', 'n/a', '', 'one@gmail.com', '$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2', 955535367, '2022-10-17 21:36:49', 'approved', 'userist', '', '3 Verder, Tanza, Cavite', 'n/a', 'n/a', 7, ''),
(55, 'ADS2022-10-8', 'Two', 'Dos', 'ADS2022-10-7', 'One  Uno', 'two@gmail.com', '$2y$10$bEFkhXL7GdUNgAijCNMKj.gFZ0PRQ9qcPA6LeOA42Fv3h32Ee/PsK', 2147483647, '2022-10-31 13:15:10', 'approved', 'userist', 'DI10-A4in-vZ8N', 'Palangue 2, Naic, Cavite ', '34563456', '34563456', 8, ''),
(56, 'ADS2022-10-9', 'Three', 'Tres', 'ADS2022-10-8', 'Two  Dos', 'three@gmail.com', '$2y$10$MZkaTLZsvTRYECVZIDeTyOUuWliyWrhXtkb9Z/VL5z2ifIJg6k7g2', 2147483647, '2022-10-31 13:19:51', 'approved', 'userist', 'DI10-MPux-tmbU', 'Palangue 3', '9283972', '092387287', 9, ''),
(57, 'ADS2022-10-10', 'Four', 'Kwatro', 'ADS2022-10-9', 'Three  Tres', 'four@gmail.com', '$2y$10$extJtjR0WS.OWRqnzrxqYepHXG/eeBKYkeMWneVQOhDNbBYvfY7PS', 2147483647, '2022-10-31 13:22:05', 'approved', 'userist', 'DI10-4D2v-pEDG', 'Naic', '6789', '09876', 10, ''),
(58, 'ADS2022-10-11', 'Five', 'Sinko', 'ADS2022-10-10', 'Four  Kwatro', 'five@gmail.com', '$2y$10$oeFzdi1DpVvm6hxgdWA/ouDiC3f2pVOE9Y2F5g8B7d4vq2O2tb.nC', 2147483647, '2022-10-31 13:24:20', 'approved', 'userist', 'DI10-fgH4-zMA6', 'Naic', '69', '098', 11, ''),
(59, 'ADS2022-10-12', 'Six', 'Sais', 'ADS2022-10-11', 'Five  Sinko', 'six@gmail.com', '$2y$10$GEEsHsCNk5YKqagRYNotWOs5BFGGyGXdAh1xZ2zXFAoieXLpj6HaC', 2147483647, '2022-10-31 13:26:06', 'approved', 'userist', 'DI10-brFW-Dulq', 'Tanza', '67890', '09876543', 12, ''),
(60, 'ADS2022-10-13', 'Seven', 'Syete', 'ADS2022-10-12', 'Six  Sais', 'seven@gmail.com', '$2y$10$BUbrVrsNRooQ..fuuJQwEuTxjaqQ/b7gxhOOgdUc6uDSeZTf7RV3K', 2147483647, '2022-10-31 13:28:06', 'approved', 'userist', 'DI10-Alsu-zTk9', 'Tanza', '6767', '0987', 13, ''),
(61, 'ADS2022-10-14', 'Eight', 'Otso', 'ADS2022-10-13', 'Seven  Syete', 'eight@gmail.com', '$2y$10$Ohu.RWoHLhQv/Ud4DCF31eunF8S.16VDu7ZMwVmS8gb2mvSn/9.Sa', 987654765, '2022-10-31 13:32:27', 'approved', 'userist', 'DI10-7PID-VzBt', 'Indang', '0987654', '0987654', 14, ''),
(62, 'ADS2022-10-15', 'Nine', 'Nuebe', 'ADS2022-10-14', 'Eight  Otso', 'nine@gmail.com', '$2y$10$kSU2eMHdndfGZ8msPrY7au4KgD7TOn3/.1RFnb5asbLgT8FL9D676', 2147483647, '2022-10-31 13:34:00', 'approved', 'userist', 'DI10-crOT-zpEU', 'Kawit', '776555678', '0966788', 15, ''),
(63, 'ADS2022-10-16', 'Ten', 'Dyis', 'ADS2022-10-15', 'Nine  Nuebe', 'ten@gmail.com', '$2y$10$Pk8lh4FKU0LJ/P4oVgdswe.0ccQ/YGlvaOir8VXM.Jd2hz.wGrNlC', 977157288, '2022-10-31 13:37:34', 'approved', 'userist', 'DI10-wPtK-PlNk', 'Gentri', '8765', '98765', 16, ''),
(67, 'ADS2022-10-17', 'Aaa', 'Aaa', 'ADS2022-10-7', 'One  Uno', 'aaa@gmail.com', '$2y$10$rvqXMElO/TCfbXGmq7gKvuXxxdGvJoiyUZBnnmRVBKpd/BgItOhtG', 2147483647, '2022-10-31 15:18:55', 'approved', 'userist', 'DI10-oqra-7Kib', 'Palangue A', '765', '9765', 17, ''),
(68, 'ADS2022-10-18', 'Bbb', 'Bbb', 'ADS2022-10-8', 'Two  Dos', 'bbb@gmail.com', '$2y$10$vh.tt3ILjlWUGCuj2LAEDeek/4ILnpOXk2N0V79YlTPIpQSUI44R.', 2147483647, '2022-10-31 18:16:19', 'approved', 'userist', 'DI10-Tw47-01vQ', 'Tanza', '807978776', '986', 18, ''),
(69, 'ADS2022-10-19', 'Ccc', 'Ccc', 'ADS2022-10-9', 'Three  Tres', 'ccc@gmail.com', '$2y$10$sZZPWkCysryA02ogqeqyQOPn6GOIlpKCuoCadoAI2jx3P5jr2AO6u', 2147483647, '2022-10-31 19:16:58', 'approved', 'userist', 'DI10-tpJX-x5ch', 'Palangue 2', '987', '987', 19, '');

-- --------------------------------------------------------

--
-- Table structure for table `generated_code`
--

CREATE TABLE `generated_code` (
  `code_id` int(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `userNameOfSponsor` varchar(100) NOT NULL,
  `userIdOfSponsor` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `validity` date NOT NULL,
  `date_created` date NOT NULL,
  `userNameOfCodeOwner` varchar(100) NOT NULL,
  `userIdOfCodeOwner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `invitesID` int(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idOfInvite` int(30) NOT NULL,
  `invitee` varchar(20) NOT NULL,
  `inviteeID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`invitesID`, `name`, `idOfInvite`, `invitee`, `inviteeID`) VALUES
(32, 'James Orozo', 13, 'Kevin Roy marero', 11),
(41, 'Cedrick James Orozo', 12, 'James Orozo', 13),
(43, 'q e', 17, 'James Orozo', 13),
(44, 'ChrisostomoIbarra', 0, 'Kevin Roy Marero', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payout_request`
--

CREATE TABLE `payout_request` (
  `payout_request_id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `mode_of_payment` varchar(50) NOT NULL,
  `account_number` varchar(100) DEFAULT NULL COMMENT 'gcash number or bank account number',
  `account_name` varchar(100) DEFAULT NULL,
  `bank_branch` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `receipt` varchar(100) NOT NULL,
  `date_released` varchar(15) NOT NULL,
  `time_released` varchar(15) NOT NULL,
  `transactionIdBasis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payout_request`
--

INSERT INTO `payout_request` (`payout_request_id`, `date`, `transaction_id`, `member_id`, `member_name`, `amount`, `mode_of_payment`, `account_number`, `account_name`, `bank_branch`, `status`, `receipt`, `date_released`, `time_released`, `transactionIdBasis`) VALUES
(6, '2022-10-31', 'PR-202231101', 'ADS2022-10-7', 'One Uno', '1000', 'Gcash', '', '', '', 'released', '../images/81474d6c951d85d569edd1bea61e83cb.jpeg', '2022-10-31', '03:20 pm', 1),
(7, '2022-10-31', 'PR-202231102', 'ADS2022-10-8', 'Two Dos', '1000', 'Gcash', '', '', '', 'released', '../images/9cb210f1aca77cafec32fca1a4be0403.jpeg', '2022-10-31', '06:17 pm', 2),
(9, '2022-10-31', 'PR-202231104', 'ADS2022-10-9', 'Three Tres', '1000', 'BPI', '7342382739871', 'Cedrick James Orozo', 'BPI Naic', 'released', '../images/e6b67c0731e6953809c445004a35cdec.jpeg', '2022-10-31', '07:41 pm', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rebatesamount`
--

CREATE TABLE `rebatesamount` (
  `id` int(10) NOT NULL,
  `rebatesA` int(10) NOT NULL,
  `rebatesB` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rebatesamount`
--

INSERT INTO `rebatesamount` (`id`, `rebatesA`, `rebatesB`) VALUES
(1, 70, 70),
(2, 30, 20),
(3, 30, 30),
(4, 30, 30),
(5, 30, 20),
(6, 30, 20),
(7, 20, 20),
(8, 20, 20),
(9, 20, 10),
(10, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rebates_points`
--

CREATE TABLE `rebates_points` (
  `rebates_points_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `pointsEarned` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rebates_points`
--

INSERT INTO `rebates_points` (`rebates_points_id`, `user_id`, `email_address`, `pointsEarned`) VALUES
(4, 'ADS2022-10-7', 'one@gmail.com', 0),
(10, 'ADS2022-10-8', 'two@gmail.com', 1),
(11, 'ADS2022-10-9', 'three@gmail.com', 0),
(12, 'ADS2022-10-10', 'four@gmail.com', 0),
(13, 'ADS2022-10-11', 'five@gmail.com', 0),
(14, 'ADS2022-10-12', 'six@gmail.com', 0),
(15, 'ADS2022-10-13', 'seven@gmail.com', 0),
(16, 'ADS2022-10-14', 'eight@gmail.com', 0),
(17, 'ADS2022-10-15', 'nine@gmail.com', 0),
(18, 'ADS2022-10-16', 'ten@gmail.com', 0),
(22, 'ADS2022-10-17', 'aaa@gmail.com', 0),
(23, 'ADS2022-10-18', 'bbb@gmail.com', 0),
(24, 'ADS2022-10-19', 'ccc@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes`
--

CREATE TABLE `referral_codes` (
  `gen_date` datetime NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `transfer_date` datetime NOT NULL,
  `referee` varchar(255) DEFAULT NULL,
  `userNameOfCodeOwner` varchar(50) NOT NULL,
  `transact_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ref_code` varchar(14) NOT NULL,
  `generation_batch` varchar(255) NOT NULL,
  `transaction_id` int(255) NOT NULL,
  `codetype` varchar(2) NOT NULL,
  `counter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_codes`
--

INSERT INTO `referral_codes` (`gen_date`, `referrer`, `transfer_date`, `referee`, `userNameOfCodeOwner`, `transact_date`, `status`, `ref_code`, `generation_batch`, `transaction_id`, `codetype`, `counter`) VALUES
('2022-10-31 13:13:13', 'waiting', '2022-10-31 13:13:13', 'ADS2022-10-8', '', '2022-10-31 13:13:13', 'used', 'DI10-A4in-vZ8N', 'AT10-75zVZcIkEYM6NKhm', 112, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-9', '', '2022-10-31 13:13:14', 'used', 'DI10-MPux-tmbU', 'AT10-75zVZcIkEYM6NKhm', 113, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-10', '', '2022-10-31 13:13:14', 'used', 'DI10-4D2v-pEDG', 'AT10-75zVZcIkEYM6NKhm', 114, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-11', '', '2022-10-31 13:13:14', 'used', 'DI10-fgH4-zMA6', 'AT10-75zVZcIkEYM6NKhm', 115, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-12', '', '2022-10-31 13:13:14', 'used', 'DI10-brFW-Dulq', 'AT10-75zVZcIkEYM6NKhm', 116, 'DI', '10'),
('2022-10-31 13:13:14', 'waiting', '2022-10-31 13:13:14', 'ADS2022-10-13', '', '2022-10-31 13:13:14', 'used', 'DI10-Alsu-zTk9', 'AT10-75zVZcIkEYM6NKhm', 117, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-14', '', '2022-10-31 13:13:15', 'used', 'DI10-7PID-VzBt', 'AT10-75zVZcIkEYM6NKhm', 118, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-15', '', '2022-10-31 13:13:15', 'used', 'DI10-crOT-zpEU', 'AT10-75zVZcIkEYM6NKhm', 119, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-16', '', '2022-10-31 13:13:15', 'used', 'DI10-wPtK-PlNk', 'AT10-75zVZcIkEYM6NKhm', 120, 'DI', '10'),
('2022-10-31 13:13:15', 'waiting', '2022-10-31 13:13:15', 'ADS2022-10-17', '', '2022-10-31 13:13:15', 'used', 'DI10-Q9wj-xfs7', 'AT10-75zVZcIkEYM6NKhm', 121, 'DI', '10'),
('2022-10-31 13:42:00', 'waiting', '2022-10-31 13:42:00', 'ADS2022-10-18', '', '2022-10-31 13:42:00', 'used', 'DI10-WPdq-9Wwy', 'AT10-FOz9bIY1aVWfEprH', 122, 'DI', '2'),
('2022-10-31 13:42:00', 'waiting', '2022-10-31 13:42:00', 'ADS2022-10-19', '', '2022-10-31 13:42:00', 'used', 'DI10-kqsy-rLAb', 'AT10-FOz9bIY1aVWfEprH', 123, 'DI', '2'),
('2022-10-31 14:52:21', 'waiting', '2022-10-31 14:52:21', 'ADS2022-10-17', 'eleven@gmail.com', '2022-10-31 14:52:21', 'used', 'RA10-F1gX-8OBQ', 'AT10-8OT3e7K6du1Qv0Mz', 124, 'RA', '5'),
('2022-10-31 14:52:21', 'waiting', '2022-10-31 14:52:21', 'ADS2022-10-18', 'twelve@gmail.com', '2022-10-31 14:52:21', 'used', 'RA10-A6jy-c5zm', 'AT10-8OT3e7K6du1Qv0Mz', 125, 'RA', '5'),
('2022-10-31 14:52:21', 'waiting', '2022-10-31 14:52:21', 'ADS2022-10-8', 'two@gmail.com', '2022-10-31 14:52:21', 'used', 'RA10-bzqy-azpJ', 'AT10-8OT3e7K6du1Qv0Mz', 126, 'RA', '5'),
('2022-10-31 14:52:22', 'waiting', '2022-10-31 14:52:22', NULL, '', '2022-10-31 14:52:22', 'to_redeem', 'RA10-Tz8I-Ilk0', 'AT10-8OT3e7K6du1Qv0Mz', 127, 'RA', '5'),
('2022-10-31 14:52:22', 'waiting', '2022-10-31 14:52:22', NULL, '', '2022-10-31 14:52:22', 'to_redeem', 'RA10-ekHP-Cazq', 'AT10-8OT3e7K6du1Qv0Mz', 128, 'RA', '5'),
('2022-10-31 15:11:10', 'waiting', '2022-10-31 15:11:10', 'ADS2022-10-17', '', '2022-10-31 15:11:10', 'used', 'DI10-oqra-7Kib', 'AT10-EMBfopuTgKWOd2Yc', 129, 'DI', '5'),
('2022-10-31 15:11:10', 'waiting', '2022-10-31 15:11:10', 'ADS2022-10-18', '', '2022-10-31 15:11:10', 'used', 'DI10-Tw47-01vQ', 'AT10-EMBfopuTgKWOd2Yc', 130, 'DI', '5'),
('2022-10-31 15:11:11', 'waiting', '2022-10-31 15:11:11', 'ADS2022-10-19', '', '2022-10-31 15:11:11', 'used', 'DI10-tpJX-x5ch', 'AT10-EMBfopuTgKWOd2Yc', 131, 'DI', '5'),
('2022-10-31 15:11:11', 'waiting', '2022-10-31 15:11:11', NULL, '', '2022-10-31 15:11:11', 'to_redeem', 'DI10-UGFR-6sYP', 'AT10-EMBfopuTgKWOd2Yc', 132, 'DI', '5'),
('2022-10-31 15:11:11', 'waiting', '2022-10-31 15:11:11', NULL, '', '2022-10-31 15:11:11', 'to_redeem', 'DI10-v9Hj-AyUP', 'AT10-EMBfopuTgKWOd2Yc', 133, 'DI', '5');

-- --------------------------------------------------------

--
-- Table structure for table `totalbalance`
--

CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` varchar(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL,
  `unclaimable` int(50) NOT NULL,
  `totalIncome` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalbalance`
--

INSERT INTO `totalbalance` (`totalBalanceId`, `userID`, `userName`, `totalBalance`, `unclaimable`, `totalIncome`) VALUES
(77, 'ADS2022-10-7', 'one@gmail.com', 110, 90, 1000),
(86, 'ADS2022-10-8', 'two@gmail.com', 140, 0, 1000),
(87, 'ADS2022-10-9', 'three@gmail.com', 90, 40, 1000),
(88, 'ADS2022-10-10', 'four@gmail.com', 580, 40, 0),
(89, 'ADS2022-10-11', 'five@gmail.com', 570, 50, 0),
(90, 'ADS2022-10-12', 'six@gmail.com', 560, 60, 0),
(91, 'ADS2022-10-13', 'seven@gmail.com', 550, 60, 0),
(92, 'ADS2022-10-14', 'eight@gmail.com', 540, 60, 0),
(93, 'ADS2022-10-15', 'nine@gmail.com', 530, 60, 0),
(94, 'ADS2022-10-16', 'ten@gmail.com', 520, 100, 0),
(98, 'ADS2022-10-17', 'aaa@gmail.com', 0, 0, 0),
(99, 'ADS2022-10-18', 'bbb@gmail.com', 0, 0, 0),
(100, 'ADS2022-10-19', 'ccc@gmail.com', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `time` varchar(15) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `inviteName` varchar(50) NOT NULL,
  `inviteeName` varchar(50) NOT NULL,
  `packageType` varchar(200) NOT NULL,
  `codeOwner` varchar(200) NOT NULL COMMENT 'indicates the user of the code',
  `codeOwnerId` varchar(200) NOT NULL COMMENT 'this indicates the id of the code user',
  `addedAmount` int(50) NOT NULL,
  `TotalBalance` int(50) NOT NULL,
  `addedPoints` int(50) NOT NULL,
  `totalPoints` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `Date`, `time`, `type`, `userName`, `userId`, `inviteName`, `inviteeName`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`, `addedPoints`, `totalPoints`) VALUES
(219, '', '', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Two Dos', 'One Uno', '', '', '', 500, 500, 0, 0),
(220, '', '', 'Indirect Referral', '', 'n/a', 'Two Dos', 'One Uno', '', '', '', 10, 10, 0, 0),
(221, '', '', 'Direct Referral', 'two@gmail.com', 'ADS2022-10-8', 'Three Tres', 'Two Dos', '', '', '', 500, 500, 0, 0),
(222, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Three Tres', 'Two Dos', '', '', '', 10, 510, 0, 0),
(223, '', '', 'Indirect Referral', '', 'n/a', 'Three Tres', 'Two Dos', '', '', '', 10, 10, 0, 0),
(224, '', '', 'Direct Referral', 'three@gmail.com', 'ADS2022-10-9', 'Four Kwatro', 'Three Tres', '', '', '', 500, 500, 0, 0),
(225, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Four Kwatro', 'Three Tres', '', '', '', 10, 510, 0, 0),
(226, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Four Kwatro', 'Three Tres', '', '', '', 10, 520, 0, 0),
(227, '', '', 'Indirect Referral', '', 'n/a', 'Four Kwatro', 'Three Tres', '', '', '', 10, 10, 0, 0),
(228, '', '', 'Direct Referral', 'four@gmail.com', 'ADS2022-10-10', 'Five Sinko', 'Four Kwatro', '', '', '', 500, 500, 0, 0),
(229, '', '', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 510, 0, 0),
(230, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 520, 0, 0),
(231, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 530, 0, 0),
(232, '', '', 'Indirect Referral', '', 'n/a', 'Five Sinko', 'Four Kwatro', '', '', '', 10, 10, 0, 0),
(233, '', '', 'Direct Referral', 'five@gmail.com', 'ADS2022-10-11', 'Six Sais', 'Five Sinko', '', '', '', 500, 500, 0, 0),
(234, '', '', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Six Sais', 'Five Sinko', '', '', '', 10, 510, 0, 0),
(235, '', '', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Six Sais', 'Five Sinko', '', '', '', 10, 520, 0, 0),
(236, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Six Sais', 'Five Sinko', '', '', '', 10, 530, 0, 0),
(237, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Six Sais', 'Five Sinko', '', '', '', 10, 540, 0, 0),
(238, '', '', 'Indirect Referral', '', 'n/a', 'Six Sais', 'Five Sinko', '', '', '', 10, 10, 0, 0),
(239, '', '', 'Direct Referral', 'six@gmail.com', 'ADS2022-10-12', 'Seven Syete', 'Six Sais', '', '', '', 500, 500, 0, 0),
(240, '', '', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Seven Syete', 'Six Sais', '', '', '', 10, 510, 0, 0),
(241, '', '', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Seven Syete', 'Six Sais', '', '', '', 10, 520, 0, 0),
(242, '', '', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Seven Syete', 'Six Sais', '', '', '', 10, 530, 0, 0),
(243, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Seven Syete', 'Six Sais', '', '', '', 10, 540, 0, 0),
(244, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Seven Syete', 'Six Sais', '', '', '', 10, 550, 0, 0),
(245, '', '', 'Indirect Referral', '', 'n/a', 'Seven Syete', 'Six Sais', '', '', '', 10, 10, 0, 0),
(246, '', '', 'Direct Referral', 'seven@gmail.com', 'ADS2022-10-13', 'Eight Otso', 'Seven Syete', '', '', '', 500, 500, 0, 0),
(247, '', '', 'Indirect Referral', 'Six  Sais', 'ADS2022-10-12', 'Eight Otso', 'Seven Syete', '', '', '', 10, 510, 0, 0),
(248, '', '', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Eight Otso', 'Seven Syete', '', '', '', 10, 520, 0, 0),
(249, '', '', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Eight Otso', 'Seven Syete', '', '', '', 10, 530, 0, 0),
(250, '', '', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Eight Otso', 'Seven Syete', '', '', '', 10, 540, 0, 0),
(251, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Eight Otso', 'Seven Syete', '', '', '', 10, 550, 0, 0),
(252, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Eight Otso', 'Seven Syete', '', '', '', 10, 560, 0, 0),
(253, '', '', 'Indirect Referral', '', 'n/a', 'Eight Otso', 'Seven Syete', '', '', '', 10, 10, 0, 0),
(254, '', '', 'Direct Referral', 'eight@gmail.com', 'ADS2022-10-14', 'Nine Nuebe', 'Eight Otso', '', '', '', 500, 500, 0, 0),
(255, '', '', 'Indirect Referral', 'Seven  Syete', 'ADS2022-10-13', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 510, 0, 0),
(256, '', '', 'Indirect Referral', 'Six  Sais', 'ADS2022-10-12', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 520, 0, 0),
(257, '', '', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 530, 0, 0),
(258, '', '', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 540, 0, 0),
(259, '', '', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 550, 0, 0),
(260, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 560, 0, 0),
(261, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 570, 0, 0),
(262, '', '', 'Indirect Referral', '', 'n/a', 'Nine Nuebe', 'Eight Otso', '', '', '', 10, 10, 0, 0),
(263, '', '', 'Direct Referral', 'nine@gmail.com', 'ADS2022-10-15', 'Ten Dyis', 'Nine Nuebe', '', '', '', 500, 500, 0, 0),
(264, '', '', 'Indirect Referral', 'Eight  Otso', 'ADS2022-10-14', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 510, 0, 0),
(265, '', '', 'Indirect Referral', 'Seven  Syete', 'ADS2022-10-13', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 520, 0, 0),
(266, '', '', 'Indirect Referral', 'Six  Sais', 'ADS2022-10-12', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 530, 0, 0),
(267, '', '', 'Indirect Referral', 'Five  Sinko', 'ADS2022-10-11', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 540, 0, 0),
(268, '', '', 'Indirect Referral', 'Four  Kwatro', 'ADS2022-10-10', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 550, 0, 0),
(269, '', '', 'Indirect Referral', 'Three  Tres', 'ADS2022-10-9', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 560, 0, 0),
(270, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 570, 0, 0),
(271, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 580, 0, 0),
(272, '', '', 'Indirect Referral', '', 'n/a', 'Ten Dyis', 'Nine Nuebe', '', '', '', 10, 10, 0, 0),
(327, '', '', 'Claimed Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', '', '', '', 40, 630, 0, 0),
(328, '', '', 'Points', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', '', '', 0, 0, 1, 1),
(329, '', '', 'Unclaimable Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 70, 90, 0, 0),
(330, '', '', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 30, 30, 0, 0),
(331, '', '', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Aaa Aaa', 'One Uno', '', '', '', 500, 1090, 0, 0),
(332, '', '', 'Indirect Referral', '', 'n/a', 'Aaa Aaa', 'One Uno', '', '', '', 10, 10, 0, 0),
(333, '2022-10-31', '03:20 pm', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 1000, 90, 0, 0),
(334, '', '', 'Direct Referral', 'two@gmail.com', 'ADS2022-10-8', 'Bbb Bbb', 'Two Dos', '', '', '', 500, 1130, 0, 0),
(335, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Bbb Bbb', 'Two Dos', '', '', '', 10, 100, 0, 0),
(336, '', '', 'Indirect Referral', '', 'n/a', 'Bbb Bbb', 'Two Dos', '', '', '', 10, 10, 0, 0),
(337, '2022-10-31', '06:17 pm', 'Withdrawal', '', 'ADS2022-10-8', '', '', '', '', '', 1000, 130, 0, 0),
(338, '', '', 'Direct Referral', 'three@gmail.com', 'ADS2022-10-9', 'Ccc Ccc', 'Three Tres', '', '', '', 500, 1090, 0, 0),
(339, '', '', 'Indirect Referral', 'Two  Dos', 'ADS2022-10-8', 'Ccc Ccc', 'Three Tres', '', '', '', 10, 140, 0, 0),
(340, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Ccc Ccc', 'Three Tres', '', '', '', 10, 110, 0, 0),
(341, '', '', 'Indirect Referral', '', 'n/a', 'Ccc Ccc', 'Three Tres', '', '', '', 10, 10, 0, 0),
(342, '2022-10-31', '07:41 pm', 'Withdrawal', '', 'ADS2022-10-9', '', '', '', '', '', 1000, 90, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_code`
--
ALTER TABLE `generated_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `uniqueCode` (`code`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`invitesID`);

--
-- Indexes for table `payout_request`
--
ALTER TABLE `payout_request`
  ADD PRIMARY KEY (`payout_request_id`);

--
-- Indexes for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebates_points`
--
ALTER TABLE `rebates_points`
  ADD PRIMARY KEY (`rebates_points_id`);

--
-- Indexes for table `referral_codes`
--
ALTER TABLE `referral_codes`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `totalbalance`
--
ALTER TABLE `totalbalance`
  ADD PRIMARY KEY (`totalBalanceId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `generated_code`
--
ALTER TABLE `generated_code`
  MODIFY `code_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `invitesID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payout_request`
--
ALTER TABLE `payout_request`
  MODIFY `payout_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rebates_points`
--
ALTER TABLE `rebates_points`
  MODIFY `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `referral_codes`
--
ALTER TABLE `referral_codes`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `totalbalance`
--
ALTER TABLE `totalbalance`
  MODIFY `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
