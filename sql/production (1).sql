-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2019 at 06:45 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `production`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinic_info`
--

CREATE TABLE IF NOT EXISTS `clinic_info` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(17) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(13, 'ACUMEN'),
(15, 'HIGH-Q'),
(16, 'BAYER'),
(17, 'PHARMEVO'),
(18, 'ABBOTT'),
(19, 'AGP'),
(20, 'OBS'),
(21, 'GSK'),
(22, 'WERRICK'),
(23, 'HILTON'),
(24, 'NEXUS'),
(25, 'ZAFA'),
(26, 'ASIA CONTINENTAL'),
(27, 'MATRIX'),
(28, 'WILSHRE'),
(29, 'SUMMIT'),
(30, 'ASPIN'),
(31, 'BRISTOL MAYER'),
(32, 'NABI QASIM'),
(33, 'EXCEL HEALTHCARE'),
(34, 'SAPIENT PHARMA'),
(35, 'G T PHARMA'),
(36, 'KAAP'),
(37, 'BH PHARMA'),
(38, 'CCL'),
(39, 'PHZER'),
(40, 'ATCO'),
(41, 'SAAMI'),
(42, 'APPROVED'),
(43, 'SHAIGAN'),
(44, 'STIEFEL'),
(45, 'THE HIMALYA'),
(46, 'BM BIOTECH'),
(47, 'ORGANS'),
(48, 'CIRIN'),
(49, 'NUTRIFACTOR'),
(50, 'HINUCON'),
(52, 'VOLAR'),
(53, 'SAFFRON'),
(54, 'genix'),
(55, 'BOSCH'),
(56, 'GETS'),
(57, 'TABROS'),
(58, 'MARTIN DOW'),
(59, 'RAY PHARMA'),
(60, 'HARIZON'),
(61, 'HARIZON'),
(62, 'MKB'),
(63, 'MACTOC'),
(64, 'HIGHNOON'),
(65, 'RAYNON'),
(66, 'RECKITT BENCKISER'),
(67, 'TUZMAAN'),
(68, 'SEATLE'),
(69, 'SHANXI'),
(70, 'R.G'),
(71, 'PHARMEDIC'),
(72, 'BRICK'),
(73, 'ARYNON'),
(74, 'ASTRA ZENECZ'),
(75, 'WELLNESS'),
(76, 'BESING'),
(77, 'ALMED'),
(79, 'ADCOK'),
(80, 'SONOFI'),
(81, 'LO.LI'),
(82, 'KURATIVE'),
(83, 'MEIJI'),
(84, 'COSMO PHARMA'),
(85, 'HIMONT'),
(86, 'GENOME'),
(87, 'Continental Pharma'),
(88, 'NOVARTIS'),
(89, 'CHIESI'),
(90, 'highnoon'),
(91, 'SAVIOUR'),
(92, 'ISONS'),
(93, 'MASS PHARMA'),
(94, 'HELIX'),
(95, 'PLATINUM'),
(96, 'SANOFI'),
(97, 'GALAXY'),
(98, 'SEARLE'),
(99, 'ALASKA SPRING'),
(100, 'SHIELD'),
(101, 'WALTER'),
(103, 'ETROZE'),
(104, 'SAPINET'),
(105, 'ORGANS'),
(106, 'LINTA'),
(108, 'GENEPHARM'),
(109, 'MAPLE'),
(111, 'HOIZON'),
(112, 'P D H'),
(113, 'REIGN'),
(114, 'RB'),
(115, 'RAYUON'),
(116, 'IHP'),
(117, 'BROOKES'),
(118, 'REHMAT '),
(119, 'ETHICON'),
(120, 'B BRAUN'),
(121, 'MASTER'),
(122, 'SOLO'),
(123, 'SHIFA'),
(124, 'WYETY'),
(125, 'STERILE'),
(126, 'METRIC'),
(127, 'MEDIP LUS'),
(128, 'JMS'),
(129, 'NITRIPORE'),
(130, 'METHY'),
(131, 'BSN'),
(132, 'GREEN STAR'),
(133, 'LIFE CARE'),
(134, 'ABSORBENT'),
(135, 'MMI'),
(136, 'B BRAUN'),
(137, 'MEDISOL'),
(138, 'DYNEK'),
(139, 'xxxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `type`) VALUES
(1, 'HR Department');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) unsigned NOT NULL,
  `type` bigint(20) unsigned NOT NULL,
  `entry_date` date NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `cnic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deptt` bigint(20) unsigned NOT NULL,
  `salary` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `type`, `entry_date`, `name`, `father`, `birth`, `cnic`, `mobile`, `address`, `deptt`, `salary`) VALUES
(1, 2, '2019-04-22', 'Sajjad', 'Anwar Khan', '1993-03-23', '17101-2289460-7', '0346-5354864', 'BEhlola charsadda', 1, 1),
(2, 1, '2019-05-29', 'isteshahd', 'IHSAN', '0000-00-00', '14201-2181059-7', '03059550279', 'PESHAWAR', 1, 1),
(3, 1, '2019-06-10', 'isteshahd', 'IHSAN', '2019-06-12', '14201-2181059-7', '03059550279', 'PESHAWAR', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee_productions`
--

CREATE TABLE IF NOT EXISTS `employee_productions` (
  `id` int(100) NOT NULL,
  `rand` int(200) NOT NULL,
  `emp_id` int(100) NOT NULL,
  `emp_qnty` double NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_types`
--

CREATE TABLE IF NOT EXISTS `employee_types` (
  `id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_types`
--

INSERT INTO `employee_types` (`id`, `type`) VALUES
(1, 'Permanant'),
(2, 'Temprory'),
(4, 'Contract'),
(6, 'Daily');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL,
  `expense_cat_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `person_name` varchar(20) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_cat_id`, `name`, `amount`, `person_name`, `payment_method`, `description`, `date`) VALUES
(1, 3, 'April', '5500', 'jan', 'byCash', 'sdfsdf', '2019-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `expense_cat`
--

CREATE TABLE IF NOT EXISTS `expense_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_cat`
--

INSERT INTO `expense_cat` (`id`, `name`) VALUES
(3, 'electrcity bill'),
(4, 'electrcity bill'),
(5, 'Generator maintance');

-- --------------------------------------------------------

--
-- Table structure for table `formula`
--

CREATE TABLE IF NOT EXISTS `formula` (
  `id` int(100) NOT NULL,
  `formula_name` varchar(100) NOT NULL,
  `itemid` int(200) NOT NULL,
  `itemcode` int(100) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formula`
--

INSERT INTO `formula` (`id`, `formula_name`, `itemid`, `itemcode`, `quantity`, `price`, `total`) VALUES
(7, 'Surf', 1, 0, 2, 200, 400),
(8, 'Surf', 2, 0, 3, 110, 330),
(9, 'Surf', 3, 0, 1, 50, 50),
(10, 'Surf', 5, 0, 2, 20, 40);

-- --------------------------------------------------------

--
-- Table structure for table `formula_grand`
--

CREATE TABLE IF NOT EXISTS `formula_grand` (
  `id` int(100) NOT NULL,
  `formula_name` varchar(100) NOT NULL,
  `costperkg` double NOT NULL,
  `grand_kg` double NOT NULL,
  `grand_amount` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formula_grand`
--

INSERT INTO `formula_grand` (`id`, `formula_name`, `costperkg`, `grand_kg`, `grand_amount`) VALUES
(4, 'Surf', 102.5, 8, 820);

-- --------------------------------------------------------

--
-- Table structure for table `formula_packing`
--

CREATE TABLE IF NOT EXISTS `formula_packing` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `formula` int(100) NOT NULL,
  `weight` double NOT NULL,
  `group` int(100) NOT NULL,
  `cost_per_unit` double NOT NULL,
  `sale_price` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formula_packing`
--

INSERT INTO `formula_packing` (`id`, `name`, `formula`, `weight`, `group`, `cost_per_unit`, `sale_price`) VALUES
(1, 'Bilal 800 gm', 1, 0.8, 1, 21.89, 20);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title`) VALUES
(1, 'G 1'),
(3, 'G 2'),
(4, 'G 3'),
(5, 'G 4'),
(7, 'G 5');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `unit_id` int(100) NOT NULL,
  `size_id` int(100) NOT NULL,
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `category_id`, `title`, `description`, `unit_id`, `size_id`, `company`) VALUES
(1, 1, 'TAB Panadol', 'tablets', 0, 0, 'Select Company'),
(2, 1, 'TAB ADFOLIC  600MCG', '', 0, 0, 'Select Company'),
(3, 1, 'ARTIFEN50 MG', '', 0, 0, 'Select Company'),
(4, 1, 'TAB AMLO Q 10 MG', '', 0, 0, '15'),
(5, 1, 'TAB ANAFORTAN PLUS', '', 0, 0, 'Select Company'),
(6, 1, 'TAB ALDOMET 250', '', 0, 0, '20'),
(7, 1, 'ACTNISE GEL', '', 0, 0, '17'),
(8, 1, 'TAB ADALAT LA 30', '', 0, 0, '16'),
(9, 1, 'TAB ADALAT LA 60', '', 0, 0, '16'),
(10, 1, 'SYP AUGMENTIN 312.', '', 0, 0, '21'),
(11, 1, 'AUGMENTIN 156', '', 0, 0, ''),
(12, 1, 'TAB DAILY PINK', '', 0, 0, '82'),
(13, 1, 'TAB TREBAC 500MG', '', 0, 0, '82'),
(14, 1, 'TAB XTREME', '', 0, 0, '82'),
(15, 1, 'TAB CLAUD 50 MG', '', 0, 0, '13'),
(16, 1, 'TAB NORMENS', '', 0, 0, '13'),
(17, 1, 'TAB FERPOL', '', 0, 0, '82'),
(18, 1, 'MEIJI MAMILAC 350G', '', 0, 0, '83'),
(19, 1, 'MEIJI FM-T 400G', '', 0, 0, '83'),
(20, 1, 'SYP AUGMENTIN 156.25', '', 0, 0, '21'),
(21, 1, 'AQUAZOLE GEL', '', 0, 0, '68'),
(22, 1, 'TAB ARSOFIN 75', '', 0, 0, 'Select Company'),
(23, 1, 'TAB AROZOLE 2.5', '', 0, 0, '84'),
(24, 1, 'ACNE-AID', '', 0, 0, ''),
(25, 1, 'ACNE-AID', '', 0, 0, 'Select Company'),
(26, 1, 'ACNE-AID SOAP', '', 0, 0, '21'),
(27, 1, 'TAB ASCARD-75', '', 0, 0, '40'),
(28, 1, 'SYP ASTHAMED', '', 0, 0, '85'),
(29, 1, 'TAB AMLO -Q 5 MG', '', 0, 0, '15'),
(30, 1, 'TAB AWARDIN PLUS', '', 0, 0, '22'),
(31, 1, 'TAB ABNIL 120MG', '', 0, 0, '19'),
(32, 1, 'ANASTROZOLE', '', 0, 0, ''),
(33, 1, 'ANASTROZOLE', '', 0, 0, '86'),
(34, 1, 'AUGMENTIN 625MG', '', 0, 0, '21'),
(35, 1, 'INJ ACABEL ', '', 0, 0, '87'),
(36, 1, 'TAB ACABEL 8MG', '', 0, 0, '87'),
(37, 1, 'ACABEL 8MG', '', 0, 0, ''),
(38, 1, 'APT 20MG', '', 0, 0, '24'),
(39, 1, 'TAB BRIAX 20MG', '', 0, 0, '19'),
(40, 1, 'TAB BASOQUIN 150MG ', '', 0, 0, '39'),
(41, 1, 'TAB ABOCAL', '', 0, 0, '18'),
(42, 1, 'TAB BARIZOLD 600MG', '', 0, 0, ''),
(43, 1, 'BEPANTHEN PLUS', '', 0, 0, '16'),
(44, 1, 'BETADERM GEL ', '', 0, 0, '40'),
(45, 1, 'TAB BEROCCA', '', 0, 0, '16'),
(46, 1, 'TAB BREXIN ', '', 0, 0, ''),
(47, 1, 'SYP AMOXI CLAV 312.5MG', '', 0, 0, ''),
(48, 1, 'SYP AMOXI CLAV 312.5MG', '', 0, 0, '88'),
(49, 1, 'TAB AMOXI-CLVE 1 GM', '', 0, 0, '88'),
(50, 1, 'TAB ARTEM DS', '', 0, 0, '23'),
(51, 1, 'INJ ARTEM 80MG', '', 0, 0, '23'),
(52, 1, 'BIOMOUSSE GEL FLORA', '', 0, 0, '38'),
(53, 1, 'TAB BREXIN', '', 0, 0, '89'),
(54, 1, 'CAP BRINO 500', '', 0, 0, '41'),
(55, 1, 'TAB BARIZOLD 600MG', '', 0, 0, '37'),
(56, 1, 'TAB BROTIN', '', 0, 0, '43'),
(57, 1, 'SYP BARIZOLD ', '', 0, 0, '37'),
(58, 1, 'BREVOXYL GEL ', '', 0, 0, '44'),
(59, 1, 'SYP BRUFEN 100MG', '', 0, 0, '18'),
(60, 1, 'TAB BRUFEN 400mg', '', 0, 0, '18'),
(61, 1, 'barresten v.1', '', 0, 0, '37'),
(62, 1, 'SYP BONNISAN', '', 0, 0, '64'),
(63, 1, 'TAB CAD 3', '', 0, 0, '91'),
(64, 1, 'TAB CYNFO ', '', 0, 0, '41'),
(65, 1, 'CIPROXIN 500MG ', '', 0, 0, '16'),
(66, 1, 'CIPROXIN 250MG', '', 0, 0, '16'),
(67, 1, 'CONESTEN V.1', '', 0, 0, '16'),
(68, 1, 'CONESTEN V.6', '', 0, 0, '16'),
(69, 1, 'TAB CRAVIT 500MG', '', 0, 0, '23'),
(70, 1, 'TAB CEFIGET 400MG', '', 0, 0, '56'),
(71, 1, 'CUREZOLE CREAM', '', 0, 0, ''),
(72, 1, 'CAP CECLOR 500MG', '', 0, 0, '19'),
(73, 1, ' CAP CEFALOR 500MG', '', 0, 0, '55'),
(74, 1, 'TAB CALAMOX 625MG', '', 0, 0, '55'),
(75, 1, 'TAB CALAMOX 1GM', '', 0, 0, '55'),
(76, 1, 'TAB CHYMORAL FORTE', '', 0, 0, '19'),
(77, 1, 'SYP CARIPEPTIC', '', 0, 0, '85'),
(78, 1, 'SYP COFERB PLUS', '', 0, 0, '23'),
(79, 1, 'CLYCIN-V VAGINAL CREAM', '', 0, 0, '43'),
(80, 1, 'CECLOR DROPS', '', 0, 0, '19'),
(81, 1, 'SYP CECLOR 250MG ', '', 0, 0, '19'),
(82, 1, 'TAB CIPLINZ 500MG', '', 0, 0, '55'),
(83, 1, 'TAB CLIMEN', '', 0, 0, '16'),
(84, 1, 'CARDIOLITE 100MG', '', 0, 0, '26'),
(85, 1, 'TAB CARDIOLITE 50MG ', '', 0, 0, '26'),
(86, 1, 'CRAN BEE SACHET', '', 0, 0, '84'),
(87, 1, 'COFERB DROPS', '', 0, 0, '50'),
(88, 1, 'CREVIL  ', '', 0, 0, '46'),
(89, 1, 'CARODEK SACHET', '', 0, 0, '19'),
(90, 1, 'CYNOMIN', '', 0, 0, '92'),
(91, 1, 'CRAN ACTA SACHET', '', 0, 0, '92'),
(92, 1, 'CLINACIN GEL ', '', 0, 0, '68'),
(93, 1, 'CQ 10', '', 0, 0, '15'),
(94, 1, 'SYP CEFALOR', '', 0, 0, '55'),
(95, 1, 'CITRO SODA SACHET', '', 0, 0, '18'),
(96, 1, 'CEFALOR DROPS', '', 0, 0, '55'),
(97, 1, 'TAB CEFPROX 200MG ', '', 0, 0, '87'),
(98, 1, 'SYP CEFPROX 40MG ', '', 0, 0, '87'),
(99, 1, 'TAB D-GEST', '', 0, 0, '93'),
(100, 1, 'SYO DUPHALAC', '', 0, 0, '18'),
(101, 1, 'DIFLODERM GEL', '', 0, 0, '68'),
(102, 1, 'INJ DORMICUM 5MG', '', 0, 0, '58'),
(103, 1, 'SYP DIJEX MP', '', 0, 0, '18'),
(104, 1, 'TAB DR.KOFF', '', 0, 0, '85'),
(105, 1, 'TAB DUPHASTON 10MG', '', 0, 0, '18'),
(106, 1, 'TAB D MAX', '', 0, 0, '27'),
(107, 1, 'DOWFEN GEL', '', 0, 0, '58'),
(108, 1, 'TAB DANZOL 200MG', '', 0, 0, '95'),
(109, 1, 'TAB DIVESTRA', '', 0, 0, '20'),
(110, 1, 'TAB DANZEN FORTE', '', 0, 0, '94'),
(111, 1, 'DAKTARIN ORAL GEL', '', 0, 0, '30'),
(112, 1, 'INJ D-TRES', '', 0, 0, '41'),
(113, 1, 'INJ DEPO-MEDROL', '', 0, 0, '39'),
(114, 1, 'TAB DAONIL 5MG', '', 0, 0, '96'),
(115, 1, 'CAP DIGESTINE', '', 0, 0, '87'),
(116, 1, 'ANDROSITOL SACHET', '', 0, 0, '97'),
(117, 1, 'CAP DOXIUM 500MG ', '', 0, 0, '19'),
(118, 1, 'INJ DEPO-PROVERA', '', 0, 0, '39'),
(119, 1, 'SYP CALAMOX DS', '', 0, 0, '55'),
(120, 1, 'TAB DIANE-35', '', 0, 0, '16'),
(121, 1, 'TAB DICLORAN SR', '', 0, 0, '41'),
(122, 1, 'JONTILET SACHET', '', 0, 0, '23'),
(123, 1, 'DROXARYLE CREAM', '', 0, 0, '87'),
(124, 1, 'TAB FERFIX-FA', '', 0, 0, '56'),
(125, 1, 'CAP FUNGONE ', '', 0, 0, '41'),
(126, 1, 'CAP FANAZE', '', 0, 0, '60'),
(127, 1, 'TAB FOURFOLIC', '', 0, 0, '40'),
(128, 1, 'SYP FLAGYL', '', 0, 0, '96'),
(129, 1, 'FOCIN ULTRA SACHET', '', 0, 0, '57'),
(130, 1, 'TAB FEROSOFT FA', '', 0, 0, '23'),
(131, 1, 'FIBO SACHET', '', 0, 0, '23'),
(132, 1, 'TAB FEMOSTON', '', 0, 0, '18'),
(133, 1, 'SYP FIBO ', '', 0, 0, '23'),
(134, 1, 'SYP FEROX', '', 0, 0, '36'),
(135, 1, 'TAB ENZ10', '', 0, 0, '93'),
(136, 1, 'SYP KOFPRES ', '', 0, 0, '36'),
(137, 1, 'SYP EZILAX ', '', 0, 0, '85'),
(138, 1, 'TAB FOCIN', '', 0, 0, '57'),
(139, 1, 'TAB EZILAZ', '', 0, 0, '85'),
(140, 1, 'ESSO 20MG', '', 0, 0, '43'),
(141, 1, 'CAP FIXICEF', '', 0, 0, ''),
(142, 1, 'CAP FIXICEF  400MG', '', 0, 0, '40'),
(143, 1, 'SYP FLUACT', '', 0, 0, '64'),
(144, 1, 'SYP FLUACT', '', 0, 0, '64'),
(145, 1, 'TAB FAMILA ', '', 0, 0, '25'),
(146, 1, 'INJ FAMILA', '', 0, 0, '25'),
(147, 1, 'TAB FASIGYN', '', 0, 0, '39'),
(148, 1, 'TAB FASIGYN', '', 0, 0, '39'),
(149, 1, 'TAB FORTECIN BD', '', 0, 0, '98'),
(152, 1, 'FUSIDERM GEL ', '', 0, 0, '68'),
(153, 1, 'FUDIC GEL', '', 0, 0, '43'),
(154, 1, 'FUDIC-H GEL', '', 0, 0, '43'),
(155, 1, 'GESUNDEN MAGNUS SACHET', '', 0, 0, '46'),
(156, 1, 'GYNOSPRINN VIGINAL CREAM', '', 0, 0, '32'),
(157, 1, 'TAB DENZEN DS', '', 0, 0, '94'),
(158, 1, 'MOMFOLIC PLUS', '', 0, 0, '40'),
(159, 1, 'TAB MOMFOLIC ', '', 0, 0, '40'),
(160, 1, 'TAB FIMRA2.5', '', 0, 0, '106'),
(161, 1, 'SYP FASTIN', '', 0, 0, '67'),
(162, 1, 'TAB EXEN D PLUS', '', 0, 0, '101'),
(163, 1, 'TAB GLASTERONE D', '', 0, 0, '47'),
(164, 1, 'GLUCOPHAGE', '', 0, 0, '58'),
(165, 1, 'GYNO-DAKTARIN', '', 0, 0, '30'),
(166, 1, 'GYNAECOSID', '', 0, 0, '103'),
(167, 1, 'FEMAPLEX 2.5', '', 0, 0, '108'),
(168, 1, 'GLYCERINE SUPPOSITORISE', '', 0, 0, '104'),
(169, 1, 'GLYCERINE SUPPOSITORISE', '', 0, 0, '104'),
(170, 1, 'TAB ENVEPE', '', 0, 0, '109'),
(171, 1, 'INJ GRAVIBINAN 1ML', '', 0, 0, '16'),
(172, 1, 'INJ GRAVIBINAN 2ML ', '', 0, 0, '16'),
(173, 1, 'TAB GRAVINATE 50 MG', '', 0, 0, '98'),
(174, 1, 'GYNO-TRAVOGEN', '', 0, 0, '16'),
(175, 1, 'INJ MAGNESIUM SULPHATE', '', 0, 0, '25'),
(176, 1, 'MUCOLATOR SACHET', '', 0, 0, '18'),
(177, 1, 'TAB ECOTEC', '', 0, 0, '98'),
(178, 1, 'TAB EZIUM 40MG', '', 0, 0, '98'),
(179, 1, 'TAB EZIUM 40MG', '', 0, 0, '98'),
(180, 1, 'TAB FAMICOL FORTE', '', 0, 0, '99'),
(181, 1, 'HI-LACTA', '', 0, 0, '85'),
(182, 1, 'TAB METEOR', '', 0, 0, '26'),
(183, 1, 'SYP HILGAS', '', 0, 0, '23'),
(184, 1, 'SYP HEAMOCARE', '', 0, 0, '85'),
(185, 1, 'CAP BORIVAG V ', '', 0, 0, '105'),
(186, 1, 'HYDROZOLE CREAM', '', 0, 0, '44'),
(187, 1, 'TAB MENORIN', '', 0, 0, '33'),
(188, 1, 'TAB IPCFOL', '', 0, 0, '84'),
(189, 1, 'TAB IZILON 400MG', '', 0, 0, '55'),
(190, 1, 'CAP INDOMETHACIN', '', 0, 0, '69'),
(191, 1, 'TAB CONZYME 15MG', '', 0, 0, '26'),
(192, 1, 'TAB ORSLIM 120MG', '', 0, 0, '17'),
(193, 1, 'SYP IBROGEST', '', 0, 0, '16'),
(194, 1, 'TAB INFLA,MATIX', '', 0, 0, '26'),
(195, 1, 'TAB CAL ONE D', '', 0, 0, '58'),
(196, 1, 'TAB IZILON', '', 0, 0, '55'),
(197, 1, 'CAP IMODIUM', '', 0, 0, '30'),
(198, 1, 'TAB INOQUIN 500MG', '', 0, 0, '37'),
(199, 1, 'TAB INDERAL 10MG', '', 0, 0, '74'),
(200, 1, 'TAB INDERAL 40', '', 0, 0, '74'),
(201, 1, 'KLEEN ENEMA', '', 0, 0, '32'),
(202, 1, 'TAB LEMIT 500MG', '', 0, 0, '111'),
(203, 1, 'TAB LYTA 40', '', 0, 0, '56'),
(204, 1, 'TAB KALV', '', 0, 0, '38'),
(205, 1, 'LITAZON', '', 0, 0, '111'),
(206, 1, 'TAB LYTA 40MG', '', 0, 0, '112'),
(207, 1, 'TAB LORIN- =NSA', '', 0, 0, '26'),
(208, 1, 'TAB LIMOL 400MCG', '', 0, 0, '27'),
(209, 1, 'TAB KESTINE 20MG', '', 0, 0, '64'),
(210, 1, 'TAB KESTINE 10MG', '', 0, 0, '64'),
(211, 1, 'LPRIN 75', '', 0, 0, '64'),
(212, 1, 'SYO LIAN ', '', 0, 0, '27'),
(213, 1, 'TAB PANADOL', '', 0, 0, '21'),
(214, 1, 'TAB DELTACOTRIL 5MG', '', 0, 0, '39'),
(215, 1, 'TAB DEXXO 30MG', '', 0, 0, '115'),
(216, 1, 'TAB DEXXO 60MG', '', 0, 0, '115'),
(217, 1, 'INJ HY-CORTISONE 500MG', '', 0, 0, '114'),
(218, 1, 'TAB KETRESS', '', 0, 0, '114'),
(219, 1, 'TAB CRANBIOTIC', '', 0, 0, '117'),
(220, 1, 'TAB MOMVIT', '', 0, 0, '36'),
(221, 1, 'INJ OMEZOL 40MG ', '', 0, 0, '55'),
(222, 1, 'TAB OSAM D', '', 0, 0, '112'),
(223, 1, 'INJ ORTHOFENAC', '', 0, 0, '55'),
(224, 1, 'TAB ONAMED 150MG', '', 0, 0, '15'),
(225, 1, 'TAB OMATRIL', '', 0, 0, '20'),
(226, 1, 'SYP MYCOCIN', '', 0, 0, '62'),
(227, 1, 'TAB NUCAL-K', '', 0, 0, '49'),
(228, 1, 'KNOX SACHRT', '', 0, 0, '27'),
(229, 1, 'TAB MILK-D', '', 0, 0, '111'),
(230, 1, 'TAB NEO Q 10 100MG', '', 0, 0, '17'),
(231, 1, 'TAB OSNATE D', '', 0, 0, '19'),
(232, 1, 'TAB OSNATE D', '', 0, 0, '19'),
(233, 1, 'MIX IT GEL', '', 0, 0, '118'),
(234, 1, 'TAB IROMOSE-F', '', 0, 0, '111'),
(235, 1, 'cap maxna 500mg', '', 0, 0, '19'),
(236, 1, 'TAB MITS DS', '', 0, 0, '43'),
(237, 1, 'CAP MUSCORIL 4MG', '', 0, 0, '96'),
(238, 1, 'TAB OVULIN 50MG', '', 0, 0, '46'),
(239, 1, 'INJ MUSCORIL 4MG', '', 0, 0, '96'),
(240, 1, 'TAB NOZEA', '', 0, 0, '17'),
(241, 1, 'TAB MITE', '', 0, 0, '54'),
(242, 1, 'SLIX SACHET', '', 0, 0, '27'),
(243, 1, 'TAB NOROXIN 400MG', '', 0, 0, '20'),
(244, 1, 'TAB NT-TOX', '', 0, 0, '54'),
(245, 1, 'TAB NEUMO 500MG', '', 0, 0, '28'),
(246, 1, 'MYCITRACIN CREAM', '', 0, 0, '39'),
(247, 1, 'TAB MECOVATE', '', 0, 0, '39'),
(248, 1, 'CAP MIXEL 400MG', '', 0, 0, '15'),
(249, 1, 'TAB RUBIFER F ', '', 0, 0, '19'),
(250, 1, 'SYP RUBIFER F', '', 0, 0, '19'),
(251, 1, 'SYP QMETEM PLUS', '', 0, 0, '55'),
(252, 1, 'TAB Q FOLIC HR ', '', 0, 0, '64'),
(253, 1, 'TAB Q FOLIC ', '', 0, 0, '64'),
(254, 1, 'TAB QUINOFLOX 500MG ', '', 0, 0, '55'),
(255, 1, 'TAB RAZODEX 60MG', '', 0, 0, '112'),
(256, 1, 'CAP PROLIFEN', '', 0, 0, '89'),
(257, 1, 'INJ ROCEPHIN 1GM', '', 0, 0, '58'),
(258, 1, 'TAB PROSTREAT', '', 0, 0, '26'),
(259, 1, 'TAB PROGYLUTON', '', 0, 0, '16'),
(260, 1, 'TAB RESOCHIN', '', 0, 0, '16'),
(261, 1, 'NOVIDAT 500MG ', '', 0, 0, '121'),
(262, 1, 'INJ PROVAS', '', 0, 0, '121'),
(263, 1, 'TAB POLYGYNAX', '', 0, 0, '124'),
(264, 1, 'CAP MAXFLOW', '', 0, 0, '122'),
(265, 1, 'TAB RESVTOL PLATINUM', '', 0, 0, '31'),
(266, 1, 'TAB PHITOFERT FOR MAN', '', 0, 0, '120'),
(267, 1, 'TAB PHITOFERT FOR WOMEN', '', 0, 0, '120'),
(268, 1, 'TAB NEGRAM ', '', 0, 0, '125'),
(269, 1, 'TABRELISPA FORTE', '', 0, 0, '125'),
(270, 1, 'TAB PINK', '', 0, 0, '126'),
(271, 1, 'TAB MYTEKA 10MG', '', 0, 0, '127'),
(272, 1, 'TAB MOMFOLIC', '', 0, 0, '124'),
(273, 1, 'MOMFOLIC PLUS SACHET', '', 0, 0, '124'),
(274, 1, 'CAP RULING 40MG', '', 0, 0, '15'),
(275, 1, 'PYODINE GEL', '', 0, 0, '117'),
(276, 1, 'POSTERISAN FORTE', '', 0, 0, '19'),
(277, 1, 'PYODINE GEL', '', 0, 0, '128'),
(278, 1, 'TAB QMETEM DS', '', 0, 0, '55'),
(279, 1, 'INJ QMETEM P', '', 0, 0, '55'),
(280, 1, 'TAB WONDRA 50 200', '', 0, 0, '28'),
(281, 1, 'XTREME', '', 0, 0, '129'),
(282, 1, 'TAB VOTADOL 50MG', '', 0, 0, '111'),
(283, 1, 'SYP VIOPHOS B', '', 0, 0, '130'),
(284, 1, 'TAB VOLINZA 600MG', '', 0, 0, '28'),
(285, 1, 'TAB TAXIDOL ', '', 0, 0, '130'),
(286, 1, 'SYP PANADOL', '', 0, 0, '133'),
(287, 1, 'CAP ZENOK 150MG', '', 0, 0, '129'),
(288, 1, 'SYP LYSOVIT 120ML', '', 0, 0, '134'),
(289, 1, 'CAP OMEZOL 40MG', '', 0, 0, '55'),
(290, 1, 'TAB TRBAC 500', '', 0, 0, '129'),
(291, 1, 'INJ ZANTAC', '', 0, 0, '133'),
(292, 1, 'SYP CREMAFFIN', '', 0, 0, '135'),
(293, 1, 'TAB TENORMIN 100MG', '', 0, 0, '114'),
(294, 1, 'TAB TENORMIN 50MG', '', 0, 0, '114'),
(295, 1, 'SYP PRULAX 180 ML', '', 0, 0, '131'),
(296, 1, 'SYP MACIVY 120ML ', '', 0, 0, '136'),
(297, 1, 'TAB UTROGESTAN  100MG', '', 0, 0, '137'),
(298, 1, 'TAB ZEESPA ', '', 0, 0, '43'),
(299, 1, 'TAB VERMOX', '', 0, 0, '30'),
(300, 1, 'INJ TORADOL', '', 0, 0, '138'),
(301, 1, 'TAB MIRABET 50MG', '', 0, 0, '122'),
(302, 1, 'TAB MIRABET 25MG', '', 0, 0, '122'),
(303, 1, 'TAB ZETRO 500MG ', '', 0, 0, '112'),
(304, 1, 'TAB STARCOX 60MG', '', 0, 0, '112'),
(305, 1, 'TAB TIBOL 2.5MG', '', 0, 0, '20'),
(306, 1, ' TAB TRICHOGIN 500MG', '', 0, 0, '139'),
(307, 1, 'TERBIDERM CREAM', '', 0, 0, '124'),
(308, 1, 'TAB VOI  50MG', '', 0, 0, '54'),
(309, 1, 'SCABION LOTION', '', 0, 0, '124'),
(310, 1, 'UMBILICA GEL', '', 0, 0, '124'),
(311, 1, 'TAB UROPIN 100MG', '', 0, 0, '140'),
(312, 1, 'TAB CRYSVIT ', '', 0, 0, '79'),
(313, 1, 'TRAVOGEN CREAM', '', 0, 0, '143'),
(314, 1, 'TAB ZAMCAL D', '', 0, 0, '101'),
(315, 1, 'TAB URGESIN 10MG', '', 0, 0, '19'),
(316, 1, 'TAB MIBEGA 50MG', '', 0, 0, '112'),
(317, 1, 'TAB GONADIL F', '', 0, 0, '112'),
(318, 1, 'TAB ZOLID PLUS 1MG+500MG', '', 0, 0, '112'),
(319, 1, 'TAB VEZITIC 10MG ', '', 0, 0, '122'),
(320, 1, 'TAB YAZ ', '', 0, 0, '143'),
(321, 1, 'TSB SYNFLEX 550MG ', '', 0, 0, '138'),
(322, 1, 'INJ TEZOX 1GM', '', 0, 0, '55'),
(323, 1, 'TAB VENTOLIN 4MG ', '', 0, 0, '21'),
(324, 1, 'SULPHAKREAM-N V', '', 0, 0, '32'),
(325, 1, 'ZOHYDRO CREAM', '', 0, 0, '57'),
(326, 1, 'TAB TRITRIS', '', 0, 0, '36'),
(327, 1, 'SYP SENERGY-OD', '', 0, 0, '64'),
(328, 1, 'CAP URSO 500MG ', '', 0, 0, '19'),
(329, 1, 'CAP URSO 500MG ', '', 0, 0, '19'),
(330, 1, 'INJ SONNET 1GM', '', 0, 0, '112'),
(331, 1, 'CAP SECURE 500MG', '', 0, 0, '28'),
(332, 1, 'TAB SOLIFEN 10MG', '', 0, 0, '56'),
(333, 1, 'TAB TERBIDEM', '', 0, 0, '40'),
(334, 1, 'TAB STAR-GEST', '', 0, 0, '93'),
(335, 1, 'TAB SINAXAMOL EXTRA', '', 0, 0, '19'),
(336, 1, 'SYP SPASLER-P ', '', 0, 0, '19'),
(337, 1, 'TAB SPASRID', '', 0, 0, '37'),
(338, 1, 'TAB ZEECIN 500MG', '', 0, 0, '28'),
(339, 1, 'TAB SOMOGEL', '', 0, 0, '18'),
(340, 1, 'TAB VENTOLIN 2MG ', '', 0, 0, '21'),
(341, 1, 'TAB SERC', '', 0, 0, '18'),
(342, 1, 'TAB SPASFON', '', 0, 0, '85'),
(343, 1, 'XYLOCAINE  GEL ', '', 0, 0, '37'),
(344, 1, 'CAP TRANSAMIN 500MG', '', 0, 0, '23'),
(345, 1, 'AD FOLIC', '', 0, 0, '17'),
(346, 1, 'TAB AUGMENTIN 1GM ', '', 0, 0, '21'),
(347, 1, 'TAB ANAFORTAN PLUS', '', 0, 0, '19'),
(348, 1, 'INJ ANAFORTAN PLUS', '', 0, 0, '19'),
(349, 1, 'SEPIDYL GEL', '', 0, 0, '30'),
(350, 1, 'TAB MIRABET 50', '', 0, 0, '38'),
(351, 1, 'TAB MIRABET 25', '', 0, 0, '38'),
(352, 1, 'GTN FORTE', '', 0, 0, '29'),
(353, 1, 'TAB GEMLOX 320', '', 0, 0, '113'),
(354, 1, 'TAB METODINE', '', 0, 0, '98'),
(355, 1, 'TAB STREPSILS', '', 0, 0, '66'),
(356, 1, 'SCABIX SOAP ', '', 0, 0, '115'),
(357, 1, 'TAB POLYGYNAX V G', '', 0, 0, '40'),
(358, 1, 'TAB PLAZO 500MG', '', 0, 0, '95'),
(359, 1, 'TAB MYTEKA', '', 0, 0, '23'),
(360, 1, 'INJ MIKARAY', '', 0, 0, '59'),
(361, 1, 'TAB SOLIFEN 5MG', '', 0, 0, '56'),
(362, 1, 'TAB SOLIF 5MG', '', 0, 0, '54'),
(363, 1, 'TAB SOLIF 10MG', '', 0, 0, '54'),
(364, 1, 'CAP PINK ', '', 0, 0, '92'),
(365, 1, 'FERFER SACHET', '', 0, 0, '17'),
(366, 1, 'SCABION LOTION', '', 0, 0, '40'),
(367, 1, 'FEMOVA SACHET', '', 0, 0, '17'),
(368, 1, 'SOLOPHAR SPRAY', '', 0, 0, '85'),
(369, 1, 'CAP SPORANOX 100MG', '', 0, 0, '30'),
(370, 1, 'TAB PONSTAN FORTE', '', 0, 0, '39'),
(371, 1, 'TAB PONSTAN ', '', 0, 0, '39'),
(372, 1, 'TAB NEGRAM ', '', 0, 0, '98'),
(373, 1, 'S- COSTEN', '', 0, 0, '116'),
(374, 1, 'CAP PIXEL ', '', 0, 0, '27'),
(375, 1, 'TAB METODINE DF', '', 0, 0, '98'),
(376, 1, 'TAB UBELKEIT ', '', 0, 0, '46'),
(377, 1, 'TAB VILDOMET 50MG/ 1000MG', '', 0, 0, '15'),
(378, 1, 'TAB RELISPA FORTE', '', 0, 0, '98'),
(379, 1, 'MICRONEMA', '', 0, 0, '40'),
(380, 1, 'TAB NOVIDAT 500MG ', '', 0, 0, '41'),
(381, 1, 'TAB BIO- KULT', '', 0, 0, '88'),
(382, 1, 'INJ ZENTAC', '', 0, 0, '21'),
(383, 1, 'Softin 10 MG', 'tablets', 0, 0, '22'),
(384, 1, 'Avil 10 MG', 'tablets', 0, 0, '96'),
(385, 1, 'disprin 300 MG', 'tablets', 0, 0, '66'),
(386, 1, 'TAB POLYMALT -F', '', 0, 0, '15'),
(387, 1, 'SYRING 5CC SHIFA', '', 0, 0, '123'),
(388, 1, 'SYRING 3CC SHIFA', '', 0, 0, '123'),
(389, 1, 'SYRING 10 SHIFA', '', 0, 0, '123'),
(390, 1, 'IV CANNOLA 20G ', '', 0, 0, '120'),
(391, 1, 'IV CANNULA 20G MASTER', '', 0, 0, '121'),
(392, 1, 'VICRYL 2 0', '', 0, 0, '119'),
(393, 1, 'VICRYL 1', '', 0, 0, '119'),
(394, 1, 'INJ ORTHOFENAC 75MG', '', 0, 0, '55'),
(395, 1, 'INJ D-TRES', '', 0, 0, '41'),
(396, 1, 'INJ MAXNA 1GM', '', 0, 0, '19'),
(397, 1, 'SURGICAL GLOVS SHIFA', '', 0, 0, '123'),
(398, 1, 'INJ GRAVINATE', '', 0, 0, '98'),
(399, 1, 'INJ ONSET', '', 0, 0, '71'),
(400, 1, 'INJ XYLOCANE', '', 0, 0, '37'),
(401, 1, 'SLIK 2', '', 0, 0, '125'),
(402, 1, 'STKING  RIBAND METRIC', '', 0, 0, '126'),
(403, 1, 'SPIRT', '', 0, 0, '130'),
(404, 1, 'URINE BAG', '', 0, 0, '125'),
(405, 1, 'MEPORE', '', 0, 0, '131'),
(406, 1, 'INJ TORADOL', '', 0, 0, '58'),
(407, 1, 'SATTI GREEN STAR', '', 0, 0, '132'),
(408, 1, 'BREAST PUMP ', '', 0, 0, '133'),
(409, 1, 'COTTON ROLL', '', 0, 0, '134'),
(410, 1, 'KUTEX PAD', '', 0, 0, '135'),
(411, 1, 'FEDER SMALL', '', 0, 0, '100'),
(412, 1, 'FEDER MEDIUM', '', 0, 0, '100'),
(413, 1, 'INJ FLAGLE 400MG', '', 0, 0, '96'),
(414, 1, 'INJ FLAGLE ', '', 0, 0, '96'),
(415, 1, 'IV CANNOLA 18G ', '', 0, 0, '120'),
(416, 1, 'R/L1000', '', 0, 0, '137'),
(417, 1, 'CARD LIMP', '', 0, 0, '127'),
(418, 1, 'BLOOD BAG', '', 0, 0, '128'),
(419, 1, 'BLOOD IV SET', '', 0, 0, '128'),
(420, 1, 'PYODINE SOLTION', '', 0, 0, '117'),
(421, 1, 'PYODINE SOLTION 450', '', 0, 0, '117'),
(422, 1, 'TAB LASIX 20 MG', '', 0, 0, '96'),
(423, 1, 'INJ LASIX', '', 0, 0, '96'),
(424, 1, 'test_net', '3', 0, 0, '16'),
(425, 1, 'IV SET', '', 0, 0, '123'),
(426, 1, 'INJ TRANSMINE 1GN', '', 0, 0, '41'),
(427, 1, 'CATGET 20', '', 0, 0, '138'),
(428, 1, 'CATGET 1', '', 1, 7, '138'),
(429, 2, 'test material', 'soda surfff,sf,snj', 1, 7, '17');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `id` int(100) NOT NULL,
  `package_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `products` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `package_id`, `name`, `products`, `price`, `quantity`, `total`) VALUES
(7, 8, '', '390', 139, 3, 417),
(8, 8, '', '416', 120, 3, 360),
(9, 8, '', '425', 30, 3, 90),
(10, 8, '', '397', 70, 2, 140),
(11, 9, '', '390', 139, 3, 417),
(12, 9, '', '416', 120, 3, 360),
(13, 9, '', '425', 30, 3, 90),
(14, 9, '', '397', 70, 2, 140),
(15, 10, '', '427', 0, 2, 0),
(16, 11, '', '427', 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_amount`
--

CREATE TABLE IF NOT EXISTS `package_amount` (
  `id` int(100) NOT NULL,
  `grand` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_amount`
--

INSERT INTO `package_amount` (`id`, `grand`, `created_at`) VALUES
(8, 1007, '2019-05-08'),
(9, 1007, '2019-05-08'),
(10, 0, '2019-05-08'),
(11, 0, '2019-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `package_sale`
--

CREATE TABLE IF NOT EXISTS `package_sale` (
  `id` int(100) NOT NULL,
  `stock_sale_id` int(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `package_id` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packings`
--

CREATE TABLE IF NOT EXISTS `packings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `code` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `formula_id` int(100) NOT NULL,
  `group_id` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packings`
--

INSERT INTO `packings` (`id`, `name`, `quantity`, `price`, `code`, `type`, `formula_id`, `group_id`) VALUES
(5, 'P1', 0.0345, 0.83, 111, 'Plastic', 4, 3),
(6, 'P2', 0.3234, 0.435, 143, 'Plastic', 4, 4),
(7, 'P3', 0.0333, 0.438, 345, 'Plastic', 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products_production`
--

CREATE TABLE IF NOT EXISTS `products_production` (
  `id` int(100) unsigned NOT NULL,
  `rand` int(200) unsigned NOT NULL,
  `formula_id` int(100) unsigned NOT NULL,
  `quantity` double NOT NULL,
  `costperqnty` double NOT NULL,
  `grand_amount` double NOT NULL,
  `total_kg` double NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE IF NOT EXISTS `profit` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(20) NOT NULL,
  `debit` int(50) NOT NULL,
  `credit` int(50) NOT NULL,
  `created_date` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`id`, `purchase_id`, `sale_id`, `name`, `description`, `debit`, `credit`, `created_date`, `total`) VALUES
(1, 588, 0, 'Purchase', '', 3000, 705, '2019-04-25', 0),
(2, 0, 397, 'Sales', '', 236, 4000, '2019-04-25', 0),
(3, 0, 0, 'Sales', '', 0, 2541, '2019-04-25', 0),
(4, 856, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(5, 423, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(6, 1904, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(7, 1645, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(8, 1095, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(9, 312, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(10, 535, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(11, 1522, 0, 'Purchase', '', 3500, 0, '2019-04-25', 0),
(12, 0, 1154, 'Sales', '', 0, 350, '2019-04-25', 0),
(13, 0, 1317, 'Sales', '', 0, 350, '2019-04-25', 0),
(14, 0, 1404, 'Sales', '', 0, 350, '2019-04-25', 0),
(15, 262, 0, 'Purchase', '', 252, 0, '2019-04-26', 0),
(16, 206, 0, 'Purchase', '', 0, 8318, '2019-04-27', 0),
(17, 0, 427, 'Sales', '', 0, 0, '2019-04-27', 0),
(18, 0, 1377, 'Sales', '', 0, 0, '2019-04-27', 0),
(19, 0, 540, 'Sales', '', 0, 0, '2019-04-27', 0),
(20, 1849, 0, 'Purchase', '', 5000, 3500, '2019-04-30', 0),
(21, 0, 1080, 'Sales', '', 0, 0, '2019-04-30', 0),
(22, 0, 1988, 'Sales', '', 0, 0, '2019-04-30', 0),
(23, 897, 0, 'Purchase', '', 0, 0, '2019-04-30', 0),
(24, 0, 284, 'Sales', '', 0, 0, '2019-04-30', 0),
(25, 1711, 0, 'Purchase', '', 0, 0, '2019-05-01', 0),
(26, 860, 0, 'Purchase', '', 2400, 23, '2019-05-01', 0),
(27, 0, 406, 'Sales', '', 0, 0, '2019-05-04', 0),
(28, 0, 856, 'Sales', '', 0, 0, '2019-05-04', 0),
(29, 0, 1813, 'Sales', '', 0, 1055, '2019-05-05', 0),
(30, 0, 977, 'Sales', '', 0, 212, '2019-05-05', 0),
(31, 0, 1312, 'Sales', '', 0, 350, '2019-05-05', 0),
(32, 0, 1569, 'Sales', '', 0, 350, '2019-05-05', 0),
(33, 0, 1790, 'Sales', '', 0, 1676, '2019-05-05', 0),
(34, 0, 1445, 'Sales', '', 0, 0, '2019-05-06', 0),
(35, 0, 533, 'Sales', '', 0, 0, '2019-05-06', 0),
(36, 0, 1776, 'Sales', '', 0, 0, '2019-05-06', 0),
(37, 0, 0, 'Sales', '', 41, 2500, '2019-05-06', 0),
(38, 1460, 0, 'Purchase', '', 1000, 394, '2019-05-06', 0),
(39, 113, 0, 'Purchase', '', 0, 0, '2019-05-06', 0),
(40, 852, 0, 'Purchase', '', 0, 0, '2019-05-06', 0),
(41, 0, 1135, 'Sales', '', 0, 1394, '2019-05-06', 0),
(42, 1810, 0, 'Purchase', '', 1394, 0, '2019-05-06', 0),
(43, 1907, 0, 'Purchase', '', 1394, 0, '2019-05-06', 0),
(44, 0, 1825, 'Sales', '', 0, 164, '2019-05-06', 0),
(45, 0, 67, 'Sales', '', 0, 0, '2019-05-06', 0),
(46, 1098, 0, 'Purchase', '', 0, 0, '2019-05-06', 0),
(47, 120, 0, 'Purchase', '', 2788, 0, '2019-05-06', 0),
(48, 1678, 0, 'Purchase', '', 0, 893, '2019-05-06', 0),
(49, 695, 0, 'Purchase', '', 0, 0, '2019-05-07', 0),
(50, 0, 606, 'Sales', '', 0, 0, '2019-05-07', 0),
(51, 412, 0, 'Purchase', '', 5642, 0, '2019-05-07', 0),
(52, 152, 0, 'Purchase', '', 4335, 0, '2019-05-07', 0),
(53, 33, 0, 'Purchase', '', 4386, 0, '2019-05-07', 0),
(54, 867, 0, 'Purchase', '', 4386, 0, '2019-05-07', 0),
(55, 0, 79, 'Sales', '', 0, 0, '2019-05-07', 0),
(56, 0, 448, 'Sales', '', 0, 0, '2019-05-07', 0),
(57, 0, 242, 'Sales', '', 0, 0, '2019-05-07', 0),
(58, 0, 1298, 'Sales', '', 0, 0, '2019-05-07', 0),
(59, 1553, 0, 'Purchase', '', 50, 0, '2019-05-07', 0),
(60, 941, 0, 'Purchase', '', 50, 0, '2019-05-07', 0),
(61, 1633, 0, 'Purchase', '', 1200, 0, '2019-05-07', 0),
(62, 1929, 0, 'Purchase', '', 350, 190, '2019-05-07', 0),
(63, 1084, 0, 'Purchase', '', 500, 5310, '2019-05-08', 0),
(64, 1552, 0, 'Purchase', '', 1500, 2320, '2019-05-08', 0),
(65, 422, 0, 'Purchase', '', 0, 0, '2019-05-08', 0),
(66, 0, 260, 'Sales', '', 0, 0, '2019-05-08', 0),
(67, 0, 536, 'Sales', '', 0, 0, '2019-05-08', 0),
(68, 1928, 0, 'Purchase', '', 0, 0, '2019-05-08', 0),
(69, 1560, 0, 'Purchase', '', 1500, 25275, '2019-05-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_amount`
--

CREATE TABLE IF NOT EXISTS `purchase_amount` (
  `id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `profit_id` int(11) NOT NULL,
  `grand_total` int(10) unsigned NOT NULL,
  `paid_amount` int(10) unsigned NOT NULL,
  `due_amount` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_dues_history`
--

CREATE TABLE IF NOT EXISTS `purchase_dues_history` (
  `id` int(100) NOT NULL,
  `purchase_amount_id` int(100) NOT NULL,
  `supplier_id` int(100) NOT NULL,
  `grand_total` int(100) NOT NULL,
  `paid_total` int(100) NOT NULL,
  `paid_new` int(100) NOT NULL,
  `due` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_dues_history`
--

INSERT INTO `purchase_dues_history` (`id`, `purchase_amount_id`, `supplier_id`, `grand_total`, `paid_total`, `paid_new`, `due`, `created_at`) VALUES
(26, 26, 11, 4335, 4335, 0, 0, '2019-05-07'),
(27, 27, 12, 4386, 4386, 0, 0, '2019-05-07'),
(28, 28, 13, 4386, 4386, 0, 0, '2019-05-07'),
(29, 29, 10, 50, 50, 0, 0, '2019-05-07'),
(30, 30, 13, 50, 50, 0, 0, '2019-05-07'),
(31, 31, 13, 1200, 1200, 0, 0, '2019-05-07'),
(32, 32, 3, 7950, 350, 0, 190, '2019-05-07'),
(33, 33, 22, 5810, 500, 0, 5310, '2019-05-08'),
(34, 34, 12, 3820, 1500, 0, 2320, '2019-05-08'),
(35, 35, 22, 460, 0, 0, 0, '2019-05-08'),
(36, 36, 18, 26775, 0, 0, 0, '2019-05-08'),
(37, 37, 18, 26775, 1500, 0, 25275, '2019-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `pur_packing`
--

CREATE TABLE IF NOT EXISTS `pur_packing` (
  `id` int(11) NOT NULL,
  `pack_name` varchar(100) NOT NULL,
  `pack_size` int(100) NOT NULL,
  `pack_type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pur_packing`
--

INSERT INTO `pur_packing` (`id`, `pack_name`, `pack_size`, `pack_type`) VALUES
(1, 'test', 2, 'Small'),
(2, 'pack No1', 2, 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_purchase`
--

CREATE TABLE IF NOT EXISTS `raw_material_purchase` (
  `id` int(17) NOT NULL,
  `product_id` int(100) NOT NULL,
  `packing_id` int(100) NOT NULL,
  `supplier_id` int(100) NOT NULL,
  `pur_price` double NOT NULL,
  `dis_percent` double NOT NULL,
  `dis_value` double NOT NULL,
  `bonus` double NOT NULL,
  `saletax` double NOT NULL,
  `min_stock_level` int(100) NOT NULL,
  `max_stock_level` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `qnty_loss` int(100) NOT NULL,
  `total_price` double NOT NULL,
  `pur_date` date NOT NULL,
  `bill_no` varchar(100) NOT NULL,
  `bill_date` date NOT NULL,
  `transport` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_material_purchase`
--

INSERT INTO `raw_material_purchase` (`id`, `product_id`, `packing_id`, `supplier_id`, `pur_price`, `dis_percent`, `dis_value`, `bonus`, `saletax`, `min_stock_level`, `max_stock_level`, `quantity`, `qnty_loss`, `total_price`, `pur_date`, `bill_no`, `bill_date`, `transport`) VALUES
(8, 1, 2, 3, 297.5, 15, 0, 2, 10, 10, 100, 900, 5, 29750, '2019-05-31', '12', '2019-05-31', 1),
(9, 2, 1, 1, 300, 10, 15, 1, 20, 10, 100, 50, 2, 15000, '2019-06-12', '13', '2019-06-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `raw_packing_purchase`
--

CREATE TABLE IF NOT EXISTS `raw_packing_purchase` (
  `id` int(17) NOT NULL,
  `product_id` int(100) NOT NULL,
  `pur_packing_id` int(100) NOT NULL,
  `supplier_id` int(100) NOT NULL,
  `pur_price` double NOT NULL,
  `dis_percent` double NOT NULL,
  `dis_value` double NOT NULL,
  `bonus` double NOT NULL,
  `saletax` double NOT NULL,
  `min_stock_level` int(100) NOT NULL,
  `max_stock_level` int(100) NOT NULL,
  `quantity` double NOT NULL,
  `qnty_loss` double NOT NULL,
  `total_price` double NOT NULL,
  `pur_date` date NOT NULL,
  `bill_no` varchar(100) NOT NULL,
  `bill_date` date NOT NULL,
  `transport` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE IF NOT EXISTS `salaries` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `type`) VALUES
(1, 'Monthly'),
(2, 'daily'),
(4, 'Weekly'),
(5, 'Annual');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE IF NOT EXISTS `sizes` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title`) VALUES
(7, 'Size 1');

-- --------------------------------------------------------

--
-- Table structure for table `stock_categories`
--

CREATE TABLE IF NOT EXISTS `stock_categories` (
  `id` int(10) unsigned NOT NULL,
  `product_id` int(100) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_categories`
--

INSERT INTO `stock_categories` (`id`, `product_id`, `title`, `description`, `status`) VALUES
(1, 0, 'Medical', 'iron raw materials', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_issue`
--

CREATE TABLE IF NOT EXISTS `stock_issue` (
  `id` int(11) NOT NULL,
  `saleman_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `packing_id` int(100) NOT NULL,
  `policy_id` int(100) NOT NULL,
  `pack` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `bonus` int(11) NOT NULL,
  `total` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_sales`
--

CREATE TABLE IF NOT EXISTS `stock_sales` (
  `id` int(10) unsigned NOT NULL,
  `profit_id` int(11) NOT NULL,
  `customer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total_amount` int(10) unsigned NOT NULL,
  `discount` int(10) unsigned NOT NULL,
  `discounted_amount` int(10) unsigned NOT NULL,
  `paid_amount` int(10) unsigned NOT NULL,
  `due_amount` int(10) unsigned NOT NULL,
  `created_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` date NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_sales`
--

INSERT INTO `stock_sales` (`id`, `profit_id`, `customer`, `grand_total_amount`, `discount`, `discounted_amount`, `paid_amount`, `due_amount`, `created_date`, `updated_at`, `status`) VALUES
(1, 397, 'zeshan', 4236, 0, 4236, 4000, 236, '2019-04-25', '0000-00-00', 1),
(2, 0, 'zeshan', 2541, 0, 2541, 2541, 0, '0', '2019-04-25', 0),
(3, 1154, 'sara khan', 350, 0, 350, 350, 0, '2019-04-25', '0000-00-00', 0),
(4, 1317, 'sara khan', 350, 0, 350, 350, 0, '2019-04-25', '0000-00-00', 0),
(5, 1404, 'ss', 350, 0, 350, 350, 0, '2019-04-25', '0000-00-00', 0),
(6, 427, '', 708, 0, 0, 0, 0, '2019-04-27', '0000-00-00', 0),
(7, 1377, '', 6809, 0, 0, 0, 0, '2019-04-27', '0000-00-00', 0),
(8, 540, '', 400, 0, 0, 0, 0, '2019-04-27', '0000-00-00', 0),
(9, 1080, '', 0, 0, 0, 0, 0, '2019-04-30', '0000-00-00', 0),
(10, 1988, '', 0, 0, 0, 0, 0, '2019-04-30', '0000-00-00', 0),
(11, 284, '', 0, 0, 0, 0, 0, '2019-04-30', '0000-00-00', 0),
(12, 406, '', 1055, 0, 0, 0, 0, '2019-05-04', '0000-00-00', 0),
(13, 856, '', 212, 0, 0, 0, 0, '2019-05-04', '0000-00-00', 0),
(14, 1813, 'jan', 1055, 0, 1055, 1055, 0, '2019-05-05', '0000-00-00', 0),
(15, 977, '', 212, 0, 212, 212, 0, '2019-05-05', '0000-00-00', 0),
(16, 1312, '', 350, 0, 350, 350, 0, '2019-05-05', '0000-00-00', 0),
(17, 1569, 'u', 350, 0, 350, 350, 0, '2019-05-05', '0000-00-00', 0),
(18, 1790, '', 1862, 10, 1676, 1676, 0, '2019-05-05', '0000-00-00', 0),
(19, 1445, '', 212, 0, 0, 0, 0, '2019-05-06', '0000-00-00', 0),
(20, 533, '', 212, 0, 0, 0, 0, '2019-05-06', '0000-00-00', 0),
(21, 1776, '', 212, 0, 0, 0, 0, '2019-05-06', '0000-00-00', 0),
(22, 0, 'HGKK', 2541, 0, 2541, 2500, 41, '0', '2019-05-06', 1),
(23, 1135, '', 1394, 0, 1394, 1394, 0, '2019-05-06', '0000-00-00', 0),
(24, 1825, '', 164, 0, 164, 164, 0, '2019-05-06', '0000-00-00', 0),
(25, 67, '', 3116, 0, 0, 0, 0, '2019-05-06', '0000-00-00', 0),
(26, 606, '', 139, 0, 0, 0, 0, '2019-05-07', '0000-00-00', 0),
(27, 79, '', 139, 0, 0, 0, 0, '2019-05-07', '0000-00-00', 0),
(28, 448, '', 139, 0, 0, 0, 0, '2019-05-07', '0000-00-00', 0),
(29, 242, '', 139, 0, 0, 0, 0, '2019-05-07', '0000-00-00', 0),
(30, 1298, '', 1055, 0, 0, 0, 0, '2019-05-07', '0000-00-00', 0),
(31, 260, '', 27447, 0, 0, 0, 0, '2019-05-08', '0000-00-00', 0),
(32, 536, '', 27447, 0, 0, 0, 0, '2019-05-08', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact`, `email`, `address`, `status`) VALUES
(3, 'MADINA ENTERPRISSE', '0923645164', '', 'SAWAL DEFENCE COLONY TEHSIL NOWSHERA', 1),
(10, 'link traders', '0912217220', '', '106 AMIN MANSION PESHAWAR', 1),
(11, 'KHALID MEDICINE ', '03339269679', '', 'SIKANDER TOWN G.T ROAD PESHAWAR', 1),
(12, 'ASASA ASSOCIATES', '0912246456', '', '1ST FLOOR E BLOCK CHARSADA ROAD PESHAWR', 1),
(13, 'PREMIER', '', '', 'CHUGHAL PURA  RING ROAD PESHAWAR ', 1),
(14, 'DRUG AGENCIES', '0915244136', '', 'HAJI ABAD CHARSADDA ROAD PESHAWAR', 1),
(15, 'MULLER & PHIPPS', '0923611455', '', 'khushal colony iqbal park nowshera', 1),
(16, 'FAWAD MEDICOSE', '0923560672', '', 'ARMOUR COLONY', 1),
(17, 'INAYAT MEDICINE COMPANY', '03339296597', '', ' RA BAZAR LAL KURTI NOWSHERA CANTT', 1),
(18, 'PLUS CARE ', '0923614598', '', 'HOUSE NO 21 STATION ROAD NOWSHERA CANTT', 1),
(19, 'IRSHAD ENTERPRISES', '03219022141', '', 'ABDULLH TOWN ,OPP.PURE CNG STATION. RING ROAD PESHAWER', 1),
(20, 'B H DISTRIBUTORS', '0912654391', '', 'ABDULLH TOWN ,OPP.PURE CNG STATION. RING ROAD PESHAWER', 1),
(21, 'HAROON ENTER PRISES', '0912602301', '', 'JHAGRA,MAIN GT,ROAD PESHAWAR', 1),
(22, 'NASEEM SURGICAL', '03125778987', '', 'PABBI STATION', 1),
(23, 'JUNAID SURGICAL', '03319631431', '', 'NOWSHERA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `title`, `created_at`) VALUES
(1, 'A1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `created_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` bigint(20) unsigned NOT NULL,
  `warehouse_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transfers`
--

CREATE TABLE IF NOT EXISTS `warehouse_transfers` (
  `id` bigint(20) unsigned NOT NULL,
  `warehouse_transfer_date` date NOT NULL,
  `warehouse_id` bigint(20) unsigned NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transfer_details`
--

CREATE TABLE IF NOT EXISTS `warehouse_transfer_details` (
  `id` bigint(20) unsigned NOT NULL,
  `warehouse_transfer_id` bigint(20) unsigned NOT NULL,
  `finished_product_id` bigint(20) unsigned NOT NULL,
  `packing_id` bigint(20) unsigned NOT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic_info`
--
ALTER TABLE `clinic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_employee_type_id_foreign` (`type`),
  ADD KEY `employees_department_id_foreign` (`deptt`),
  ADD KEY `salary_id` (`salary`);

--
-- Indexes for table `employee_productions`
--
ALTER TABLE `employee_productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_types`
--
ALTER TABLE `employee_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_cat`
--
ALTER TABLE `expense_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formula`
--
ALTER TABLE `formula`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formula_grand`
--
ALTER TABLE `formula_grand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formula_packing`
--
ALTER TABLE `formula_packing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_amount`
--
ALTER TABLE `package_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_sale`
--
ALTER TABLE `package_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packings`
--
ALTER TABLE `packings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_production`
--
ALTER TABLE `products_production`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_raw_products_production_id_foreign` (`rand`),
  ADD KEY `production_raw_products_raw_product_id_foreign` (`formula_id`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_amount`
--
ALTER TABLE `purchase_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_dues_history`
--
ALTER TABLE `purchase_dues_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pur_packing`
--
ALTER TABLE `pur_packing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_purchase`
--
ALTER TABLE `raw_material_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_packing_purchase`
--
ALTER TABLE `raw_packing_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_categories`
--
ALTER TABLE `stock_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `stock_sales`
--
ALTER TABLE `stock_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinic_info`
--
ALTER TABLE `clinic_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(17) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee_productions`
--
ALTER TABLE `employee_productions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expense_cat`
--
ALTER TABLE `expense_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `formula`
--
ALTER TABLE `formula`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `formula_grand`
--
ALTER TABLE `formula_grand`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `formula_packing`
--
ALTER TABLE `formula_packing`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=430;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `package_amount`
--
ALTER TABLE `package_amount`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `package_sale`
--
ALTER TABLE `package_sale`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packings`
--
ALTER TABLE `packings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products_production`
--
ALTER TABLE `products_production`
  MODIFY `id` int(100) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profit`
--
ALTER TABLE `profit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `purchase_amount`
--
ALTER TABLE `purchase_amount`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_dues_history`
--
ALTER TABLE `purchase_dues_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `pur_packing`
--
ALTER TABLE `pur_packing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `raw_material_purchase`
--
ALTER TABLE `raw_material_purchase`
  MODIFY `id` int(17) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `raw_packing_purchase`
--
ALTER TABLE `raw_packing_purchase`
  MODIFY `id` int(17) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `stock_categories`
--
ALTER TABLE `stock_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stock_sales`
--
ALTER TABLE `stock_sales`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
