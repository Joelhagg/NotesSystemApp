-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 10, 2022 at 04:47 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notesapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `header` varchar(50) DEFAULT NULL,
  `textContent` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastChanged` text,
  `softDelete` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `header`, `textContent`, `created`, `lastChanged`, `softDelete`) VALUES
(1, 'Lorem ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>&nbsp;</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.asd</p>', '2022-06-07 19:21:29', 'Thu Jun 09 2022 20:54:20 GMT+0200 (centraleuropeisk sommartid)', NULL),
(2, 'test2', 'en till text, inga problem ,;{]\\}$#&%123_-qwe``\'*¨^', '2022-06-07 19:37:56', '2022-06-09 00:00:00', 1),
(5, 'Ett nytt klokt test', '<p><span style=\"background-color: rgb(251, 238, 184);\">H&auml;r</span> &auml;r<em> inneh&aring;llet</em> p&aring; det nya kloka <span style=\"color: rgb(224, 62, 45);\">testet.</span></p>', '2022-06-09 12:15:50', '2022-06-09 00:00:00', 1),
(6, 'hejhej', '    ', '2022-06-09 14:04:53', '2022-06-09 00:00:00', 1),
(7, 'Test för att se senast ändrad datum', '<p>Lite text f&ouml;r att fylla ut just f&ouml;r teste med att se om datumet &auml;ndras</p>', '2022-06-09 19:20:18', '2022-06-09 00:00:00', 1),
(8, 'okej ett till document', '<p>massa text, lorem ipsum</p>', '2022-06-09 20:47:51', NULL, 1),
(9, 'Ett testdokument för att pröva styles', '<h1><span style=\"color: rgb(230, 126, 35);\" data-mce-style=\"color: rgb(230, 126, 35);\">Hej</span></h1><p><br></p><h2><span style=\"color: rgb(230, 126, 35);\" data-mce-style=\"color: rgb(230, 126, 35);\">Det här är ett test</span></h2><p><br></p><p><span style=\"background-color: rgb(251, 238, 184);\" data-mce-style=\"background-color: rgb(251, 238, 184);\"><em>En massa text</em></span></p><p><span style=\"color: rgb(230, 126, 35); background-color: rgb(230, 126, 35);\" data-mce-style=\"color: rgb(230, 126, 35); background-color: rgb(230, 126, 35);\"><em>och färg</em></span></p>', '2022-06-09 20:56:31', '2022-06-10 11:56:48', NULL),
(10, 'nytt', '<p>h<em>ej hej</em></p>', '2022-06-09 20:59:23', NULL, 1),
(11, 'kära dagboken', '<h1><span style=\"color: rgb(186, 55, 42); background-color: rgb(126, 140, 141);\"><strong>hej&nbsp;</strong></span></h1>', '2022-06-10 07:24:24', 'Fri Jun 10 2022 07:24:47 GMT+0200 (centraleuropeisk sommartid)', 1),
(12, 'hej', '<p>hejhejhej</p>', '2022-06-10 10:05:25', NULL, 1),
(13, '', '    ', '2022-06-10 11:03:45', NULL, 1),
(14, 'asd', '<p>asdasd</p>', '2022-06-10 11:59:41', '2022-06-10 15:12:33', NULL),
(15, 'Danger zone', '<p>Highway to the danger zone!!!!!!!!!!!!!!!!!!!!!</p>\n<p>&nbsp;</p>\n<p><em>- maverick</em></p>', '2022-06-10 15:34:00', '2022-06-10 16:02:09', NULL),
(16, 'Ett nytt dokument', '<p>H&auml;r b&ouml;rjar resan.....</p>\n<p>&nbsp;</p>\n<p><strong><em>Vad ska man ta sig till?!?!</em></strong></p>', '2022-06-10 17:25:35', NULL, NULL),
(17, 'Ännu nyare', '<p>Jag skapade bara det h&auml;r dokumentet f&ouml;r att testa hur Date fungerar och om den uppdateras som den ska, vi fr&aring; se...............!</p>', '2022-06-10 17:28:10', '2022-06-10 17:35:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
