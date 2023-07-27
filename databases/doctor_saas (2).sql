-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8888
-- Tiempo de generación: 26-07-2023 a las 15:09:22
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `doctor_saas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `additional_advises`
--

CREATE TABLE `additional_advises` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advises`
--

CREATE TABLE `advises` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advise_investigations`
--

CREATE TABLE `advise_investigations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `chamber_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `prescription_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `meeting_notes` mediumtext,
  `files` mediumtext,
  `type` varchar(255) DEFAULT NULL,
  `serial_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_start` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`id`, `chamber_id`, `user_id`, `patient_id`, `prescription_id`, `date`, `time`, `meeting_notes`, `files`, `type`, `serial_id`, `status`, `is_start`, `created_at`) VALUES
(1, 4312, 3, 1, NULL, '2023-06-12', '10:00 AM-02:00 PM', NULL, NULL, 'online', 1, 0, NULL, '2023-06-13 00:10:28'),
(2, 4312, 3, 2, NULL, '2023-06-12', '03:00 PM-06:00 PM', NULL, NULL, 'offline', 2, 0, NULL, '2023-06-13 00:13:32'),
(3, 4312, 3, 3, NULL, '2023-06-13', '10:00 AM-06:00 PM', NULL, NULL, 'offline', 1, 0, NULL, '2023-06-13 03:01:50'),
(4, 97206, 7, 4, NULL, '2023-06-26', '09:00 AM-10:00 AM', NULL, NULL, 'offline', 1, 0, NULL, '2023-06-23 23:49:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assaign_days`
--

CREATE TABLE `assaign_days` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `assaign_days`
--

INSERT INTO `assaign_days` (`id`, `user_id`, `day`, `start`, `end`) VALUES
(8, 3, 1, NULL, NULL),
(9, 3, 2, NULL, NULL),
(10, 3, 3, NULL, NULL),
(11, 3, 4, NULL, NULL),
(12, 3, 5, NULL, NULL),
(13, 3, 6, NULL, NULL),
(14, 3, 7, NULL, NULL),
(22, 7, 0, NULL, NULL),
(23, 7, 2, NULL, NULL),
(24, 7, 3, NULL, NULL),
(25, 7, 4, NULL, NULL),
(26, 7, 5, NULL, NULL),
(27, 7, 6, NULL, NULL),
(28, 7, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assign_time`
--

CREATE TABLE `assign_time` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `assign_time`
--

INSERT INTO `assign_time` (`id`, `user_id`, `day_id`, `time`, `start`, `end`) VALUES
(8, 3, 1, '10:00 AM-02:00 PM', '10:00 AM', '02:00 PM'),
(9, 3, 2, '10:00 AM-02:00 PM', '10:00 AM', '02:00 PM'),
(10, 3, 2, '03:00 PM-06:00 PM', '03:00 PM', '06:00 PM'),
(11, 3, 3, '10:00 AM-06:00 PM', '10:00 AM', '06:00 PM'),
(12, 3, 4, '10:00 AM-06:00 PM', '10:00 AM', '06:00 PM'),
(13, 3, 5, '10:00 AM-06:00 PM', '10:00 AM', '06:00 PM'),
(14, 3, 6, '10:00 AM-06:00 PM', '10:00 AM', '06:00 PM'),
(15, 3, 7, '10:00 AM-04:00 PM', '10:00 AM', '04:00 PM'),
(16, 7, 2, '09:00 AM-10:00 AM', '09:00 AM', '10:00 AM'),
(17, 7, 2, '10:00 AM-11:00 AM', '10:00 AM', '11:00 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `details` text,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chamber`
--

CREATE TABLE `chamber` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `address` mediumtext,
  `category` varchar(255) DEFAULT NULL,
  `chamber_type` int(11) DEFAULT NULL,
  `appoinment_limit` int(11) DEFAULT '20',
  `logo` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_primary` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chamber`
--

INSERT INTO `chamber` (`id`, `uid`, `user_id`, `name`, `slug`, `type`, `title`, `address`, `category`, `chamber_type`, `appoinment_limit`, `logo`, `status`, `is_primary`, `created_at`) VALUES
(1, '69740', 2, 'Departamento de cardiología', NULL, 1, 'Departamento de cardiología', '', '1', NULL, 20, NULL, 1, 1, '2023-06-12 23:32:35'),
(2, '59261', 2, 'Departamento de ginecología', NULL, 1, 'Departamento de ginecología', '', '5', NULL, 20, NULL, 1, NULL, '2023-06-12 23:32:54'),
(4, '04312', 3, 'Consultorio general', NULL, 1, 'Consultorio general', '', '1', NULL, 100, NULL, 1, 1, '2023-06-13 00:00:19'),
(5, '32170', 4, 'Nombre de la cámara', NULL, 1, 'Título de cámara', NULL, NULL, NULL, 20, NULL, 1, 1, '2023-06-20 22:58:13'),
(6, '15928', 5, 'Nombre de la cámara', NULL, 1, 'Título de cámara', NULL, NULL, NULL, 20, NULL, 1, 1, '2023-06-20 23:14:42'),
(7, '04951', 6, 'Nombre de la cámara', NULL, 1, 'Título de cámara', NULL, NULL, NULL, 20, NULL, 1, 1, '2023-06-21 22:52:25'),
(8, '97206', 7, 'Nombre de la cámara', NULL, 1, 'Título de cámara', NULL, NULL, NULL, 20, NULL, 1, 1, '2023-06-21 22:53:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chamber_category`
--

CREATE TABLE `chamber_category` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chamber_category`
--

INSERT INTO `chamber_category` (`id`, `user_id`, `name`) VALUES
(1, 1, 'Cardiología'),
(2, 1, 'Capellanía'),
(3, 1, 'Unidad de Cuidados Coronarios'),
(4, 1, 'Gastroenterología'),
(5, 1, 'Ginecología'),
(6, 1, 'Hematología'),
(7, 1, 'Neurología'),
(8, 1, 'Nefrología'),
(9, 1, 'Oncología'),
(10, 1, 'Oftamología'),
(11, 1, 'Radiología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `currency_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR'),
(2, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED'),
(3, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN'),
(4, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD'),
(5, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD'),
(6, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL'),
(7, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD'),
(8, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA'),
(9, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS'),
(10, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR'),
(11, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD'),
(12, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG'),
(13, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN'),
(14, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD'),
(15, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT'),
(16, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR'),
(17, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF'),
(18, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN'),
(19, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD'),
(20, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF'),
(21, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF'),
(22, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD'),
(23, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL'),
(24, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(25, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP'),
(26, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR'),
(27, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD'),
(28, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD'),
(29, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF'),
(30, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF'),
(31, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD'),
(32, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP'),
(33, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF'),
(34, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY'),
(35, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP'),
(36, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC'),
(37, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC'),
(38, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(39, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR'),
(40, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK'),
(41, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR'),
(42, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF'),
(43, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK'),
(44, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD'),
(45, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP'),
(46, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD'),
(47, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD'),
(48, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR'),
(49, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP'),
(50, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN'),
(51, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR'),
(52, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB'),
(53, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR'),
(54, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD'),
(55, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK'),
(56, 'France', 'FR', '+33', 'Euro', '€', 'EUR'),
(57, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF'),
(58, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP'),
(59, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD'),
(60, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL'),
(61, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP'),
(62, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS'),
(63, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP'),
(64, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF'),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF'),
(66, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR'),
(67, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ'),
(68, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF'),
(69, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD'),
(70, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD'),
(71, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL'),
(72, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK'),
(73, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG'),
(74, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF'),
(75, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR'),
(76, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR'),
(77, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS'),
(78, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP'),
(79, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR'),
(80, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD'),
(81, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK'),
(82, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR'),
(83, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP'),
(84, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD'),
(85, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD'),
(86, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY'),
(87, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES'),
(88, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS'),
(89, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR'),
(90, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD'),
(91, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF'),
(92, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD'),
(93, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD'),
(94, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT'),
(95, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK'),
(96, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP'),
(97, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD'),
(98, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF'),
(99, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR'),
(100, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD'),
(101, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL'),
(102, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR'),
(103, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR'),
(104, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR'),
(105, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD'),
(106, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR'),
(107, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL'),
(108, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR'),
(109, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA'),
(110, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD'),
(111, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF'),
(112, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK'),
(113, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT'),
(114, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO'),
(115, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD'),
(116, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR'),
(117, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR'),
(118, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR'),
(119, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK'),
(120, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN'),
(121, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR'),
(122, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN'),
(123, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD'),
(124, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF'),
(125, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF'),
(126, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN'),
(127, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO'),
(128, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR'),
(129, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK'),
(130, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR'),
(131, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD'),
(132, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD'),
(133, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD'),
(134, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR'),
(135, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB'),
(136, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN'),
(137, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF'),
(138, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK'),
(139, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP'),
(140, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR'),
(141, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN'),
(142, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR'),
(143, 'Palau', 'PW', '+680', 'Palauan dollar', '$', ''),
(144, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG'),
(145, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR'),
(146, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON'),
(147, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD'),
(148, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB'),
(149, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF'),
(150, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR'),
(151, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD'),
(152, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR'),
(153, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG'),
(154, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK'),
(155, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND'),
(156, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR'),
(157, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR'),
(158, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL'),
(159, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR'),
(160, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF'),
(161, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS'),
(162, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD'),
(163, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD'),
(164, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL'),
(165, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF'),
(166, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF'),
(167, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB'),
(168, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS'),
(169, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT'),
(170, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND'),
(171, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP'),
(172, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY'),
(173, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD'),
(174, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD'),
(175, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD'),
(176, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH'),
(177, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX'),
(178, 'United States', 'US', '+1', 'United States dollar', '$', 'USD'),
(179, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU'),
(180, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS'),
(181, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND'),
(182, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV'),
(183, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF'),
(184, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST'),
(185, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER'),
(186, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR'),
(187, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW'),
(188, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnosis_reports`
--

CREATE TABLE `diagnosis_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `notes` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagonosis`
--

CREATE TABLE `diagonosis` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `diagonosis`
--

INSERT INTO `diagonosis` (`id`, `user_id`, `name`, `details`) VALUES
(1, 2, 'Diagnostico pruena', '<p>dsaddas</p>\r\n'),
(2, 3, 'REGISTRO CLINICO 199', '<p>REGISTRO CLINICO</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `drugs`
--

CREATE TABLE `drugs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `drugs`
--

INSERT INTO `drugs` (`id`, `user_id`, `name`, `details`) VALUES
(1, 3, 'Paracetamol', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educations`
--

CREATE TABLE `educations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `years` varchar(250) NOT NULL,
  `details` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `educations`
--

INSERT INTO `educations` (`id`, `user_id`, `title`, `years`, `details`) VALUES
(1, 7, 'Universidad de Guadalajara', '2002 - 2007', 'Licenciatura en medico cirujano y partero\r\n'),
(2, 7, 'Unam', '2008 - 2013', 'Doctorado en medicina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evisit_settings`
--

CREATE TABLE `evisit_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `zoom_meeting_id` varchar(255) NOT NULL,
  `zoom_meeting_password` varchar(255) DEFAULT NULL,
  `invitation_link` text,
  `meet_invitation_link` varchar(255) DEFAULT NULL,
  `meet_type` varchar(255) DEFAULT 'zoom',
  `price` decimal(10,2) DEFAULT NULL,
  `allow_user` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `evisit_settings`
--

INSERT INTO `evisit_settings` (`id`, `user_id`, `zoom_meeting_id`, `zoom_meeting_password`, `invitation_link`, `meet_invitation_link`, `meet_type`, `price`, `allow_user`, `status`) VALUES
(1, 2, '', '', '', 'https://meet.google.com/gfj-cedx-ckb', 'meet', '200.00', 1, 1),
(2, 3, '', '', '', 'https://meet.google.com/qfv-mjdu-ksf', 'meet', '200.00', 1, 1),
(3, 7, '', '', '', '', 'zoom', '500.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `concept` text,
  `notes` text NOT NULL,
  `created_at` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `years` varchar(250) NOT NULL,
  `details` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiences`
--

INSERT INTO `experiences` (`id`, `user_id`, `title`, `years`, `details`) VALUES
(1, 7, 'IMSS', '2015 - 2019', 'Trabajo como médico auxiliar\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_limit` int(11) NOT NULL,
  `basic` int(11) DEFAULT NULL,
  `standared` int(11) DEFAULT NULL,
  `premium` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `features`
--

INSERT INTO `features` (`id`, `name`, `slug`, `is_limit`, `basic`, `standared`, `premium`) VALUES
(1, 'Chambers', 'chambers', 1, 10, 2, -1),
(2, 'Staff', 'staffs', 1, 10, 2, -1),
(3, 'Profile page', 'profile-page', 0, NULL, NULL, NULL),
(4, 'Appointments', 'appointments', 0, NULL, NULL, NULL),
(5, 'Prescription', 'prescription', 1, 10, 5, -1),
(6, 'Diagnosis', 'diagnosis', 0, NULL, NULL, NULL),
(7, 'Advise', 'advise', 0, NULL, NULL, NULL),
(8, 'Patients', 'patients', 1, 20, 2, -1),
(9, 'Online Consultation', 'online-consultation', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feature_assaign`
--

CREATE TABLE `feature_assaign` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `feature_assaign`
--

INSERT INTO `feature_assaign` (`id`, `package_id`, `feature_id`) VALUES
(268, 3, 9),
(269, 3, 8),
(270, 3, 7),
(271, 3, 6),
(272, 3, 5),
(273, 3, 4),
(274, 3, 3),
(275, 3, 2),
(276, 3, 1),
(295, 1, 9),
(296, 1, 8),
(297, 1, 7),
(298, 1, 6),
(299, 1, 5),
(300, 1, 4),
(301, 1, 3),
(302, 1, 2),
(303, 1, 1),
(304, 2, 9),
(305, 2, 8),
(306, 2, 7),
(307, 2, 6),
(308, 2, 5),
(309, 2, 4),
(310, 2, 3),
(311, 2, 2),
(312, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `text_direction` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`id`, `name`, `slug`, `short_name`, `code`, `text_direction`, `status`) VALUES
(1, 'English', 'english', 'en', '', 'ltr', 1),
(2, 'Español', 'espanol', 'es', NULL, 'ltr', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lang_values`
--

CREATE TABLE `lang_values` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `english` text,
  `espanol` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lang_values`
--

INSERT INTO `lang_values` (`id`, `type`, `label`, `keyword`, `english`, `espanol`) VALUES
(1, 'admin', 'Language', 'language', 'Language', 'Idioma'),
(2, 'admin', 'Edit frontend values', 'edit-frontend-values', 'Frontend values', 'Editar valores de frontend'),
(3, 'admin', 'Edit admin values', 'edit-admin-values', 'Admin values', 'Editar valores de administrador'),
(4, 'admin', 'Edit user values', 'edit-user-values', 'User values', 'Editar valores de usuario'),
(5, 'admin', 'Update language for', 'update-language-for', 'Update language for', 'Actualizar idioma para'),
(6, 'admin', 'Frontend', 'frontend', 'Frontend', 'Interfaz'),
(7, 'admin', 'Admin', 'admin', 'Admin', 'Administrador'),
(8, 'admin', 'User', 'user', 'User', 'Usuario'),
(9, 'admin', 'Add New Language ', 'add-new-language', 'Add New Language ', 'Agregar nuevo idioma'),
(10, 'admin', 'Manage Language', 'manage-language', 'Manage Language', 'Administrar idioma'),
(11, 'admin', 'Update values', 'update-values', 'Update values', 'Actualizar valores'),
(12, 'admin', 'Your Password has been changed Successfully', 'password-reset-success-msg', 'Your Password has been changed Successfully', 'Su contraseña ha sido cambiada con éxito'),
(13, 'admin', 'Oops', 'oops', 'Oops', 'Ups'),
(14, 'admin', 'Your Confirm Password doesn\'t Match', 'confirm-pass-not-match-msg', 'Your Confirm Password doesn\'t Match', 'Su contraseña de confirmación no coincide'),
(15, 'admin', 'Your Old Password doesn\'t Match', 'old-password-doesnt-match', 'Your Old Password doesn\'t Match', 'Tu antigua contraseña no coincide'),
(16, 'admin', 'Sorry', 'sorry', 'Sorry!', 'Lo siento'),
(17, 'admin', 'Something wrong', 'something-wrong', 'Something wrong', 'Algo anda mal'),
(18, 'admin', 'Success', 'success', 'Success!', 'Éxito'),
(19, 'admin', 'Setup successfully', 'setup-successfully', 'Setup successfully', 'Configuración exitosa'),
(20, 'admin', 'Send successfully', 'send-successfully', 'Send successfully', 'Enviar con éxito'),
(21, 'admin', 'Are you sure', 'are-you-sure', 'Are you sure?', '¿Estás seguro?'),
(22, 'admin', 'Converted successfully', 'converted-successfully', 'Converted successfully', 'Convertido con éxito'),
(23, 'admin', 'Data limit has been over', 'data-limit-over', 'Data limit has been over', 'Se ha superado el límite de datos'),
(24, 'admin', 'Sending failed', 'sending-failed', 'Sending failed', 'Envío fallido'),
(25, 'admin', 'Approved Successfully', 'approved-successfully', 'Approved Successfully', 'Aprobado con éxito'),
(26, 'admin', 'You will not be able to recover this file', 'not-recover-file', 'You will not be able to recover this file', 'No podrá recuperar este archivo'),
(27, 'admin', 'Deleted successfully', 'deleted-successfully', 'Deleted successfully', 'Eliminado con éxito'),
(28, 'admin', 'Approve this invoice', 'approve-this-invoice', 'Approve this invoice', 'Aprobar esta factura'),
(29, 'admin', 'Set as your primary chamber', 'set-as-your-primary-chamber', 'Set as your primary chamber', 'Establecer como su cámara principal'),
(30, 'admin', 'Want to set', 'want-to-set', 'Want to set', 'Quiero establecer'),
(31, 'admin', 'You have made some changes and it\'s not saved?', 'made-changes-not-saved', 'You have made some changes and it\'s not saved?', '¿Has hecho algunos cambios y no se guardan?'),
(32, 'admin', 'Your account has been suspended', 'account-suspend-msg', 'Your account has been suspended!', 'Su cuenta ha sido suspendida'),
(33, 'front', 'This email already exist, try another one', 'email-exist', 'This email already exist, try another one', 'Este email ya existe, prueba con otro'),
(34, 'front', 'Your account is not active', 'account-not-active', 'Your account is not active', 'Tu cuenta no está activa'),
(35, 'front', 'Sorry your username or password is not correct!', 'wrong-username-password', 'Sorry your username or password is not correct!', '¡Lo sentimos, su nombre de usuario o contraseña no es correcto!'),
(36, 'front', 'Your email is not verified, Please verify your email', 'email-not-verified', 'Your email is not verified, Please verify your email', 'Su correo electrónico no está verificado, verifique su correo electrónico'),
(37, 'front', 'We\'ve sent a password to your email address. Please check your inbox', 'password-sent-to-email', 'We\'ve sent a password to your email address. Please check your inbox', 'Hemos enviado una contraseña a su dirección de correo electrónico. Por favor revise su bandeja de entrada'),
(38, 'front', 'Password Reset Successfully !', 'password-reset-successfully', 'Password Reset Successfully !', '¡Restablecimiento de contraseña exitoso!'),
(39, 'front', 'You are not a valid user', 'not-a-valid-user', 'You are not a valid user', 'No eres un usuario válido'),
(40, 'admin', 'Set default language', 'set-default-language', 'Set default language', 'Establecer idioma predeterminado'),
(41, 'admin', 'Short Form', 'short-form', 'Short Form', 'Forma corta'),
(42, 'admin', 'Text direction', 'text-direction', 'Text direction', 'Dirección del texto'),
(43, 'user', 'Add new item', 'add-new-item', 'Add new item', 'Agregar nuevo elemento'),
(44, 'admin', 'Set Trial Days', 'set-trial-days', 'Set trial days', 'Establecer días de prueba'),
(45, 'front', 'Start', 'start', 'Start', 'Inicio'),
(46, 'front', 'days trial', 'days-trial', 'days trial', 'días de prueba'),
(47, 'admin', 'Delete', 'delete', 'Delete', 'Eliminar'),
(48, 'admin', 'Activate', 'activate', 'Activate', 'Activar'),
(49, 'admin', 'Deactivate', 'deactivate', 'Deactivate', 'Desactivar'),
(50, 'admin', 'Dashboard', 'dashboard', 'Dashboard', 'Tablero'),
(51, 'admin', 'Save', 'save', 'Save', 'Guardar'),
(52, 'front', 'Home', 'home', 'Home', 'Inicio'),
(53, 'front', 'Pricing', 'pricing', 'Pricing', 'Precios'),
(54, 'front', 'Blogs', 'blogs', 'Blogs', 'Blogs'),
(55, 'front', 'Faqs', 'faqs', 'FAQs', 'Preguntas frecuentes'),
(56, 'front', 'Contact', 'contact', 'Contact', 'Contacto'),
(57, 'front', 'Pages', 'pages', 'Pages', 'Páginas'),
(58, 'front', 'Sign In', 'sign-in', 'Sign In', 'Iniciar sesión'),
(59, 'front', 'Sign Out', 'sign-out', 'Sign Out', 'Cerrar sesión'),
(60, 'front', 'Get Started', 'get-started', 'Get Started', 'Comenzar'),
(61, 'front', 'Workflow', 'workflow', 'Workflow', '¿Cómo trabajamos?'),
(62, 'front', 'Look at a glance how our system works', 'workflow-title', 'Look at a glance how our system works', 'Echa un vistazo cómo funciona nuestro sistema'),
(63, 'front', 'Choose Plan', 'choose-plan', 'Choose Plan', 'Elegir Plan'),
(64, 'front', 'Choose your confortable plan', 'choose-your-confortable-plan', 'Choose your confortable plan', 'Elige tu plan de confort'),
(65, 'front', 'Get Paid', 'get-paid', 'Get Paid', 'Cobrar'),
(66, 'front', 'Get Paid title', 'get-paid-title', 'Paid via paypal/stripe payment method', 'Titulo de recibo de pago'),
(67, 'front', 'Start Working', 'start-working', 'Start Working', 'Empezar a trabajar'),
(68, 'front', 'Start Working title', 'start-working-title', 'Start Using and explore the featuers', 'Empezar a trabajar - Titulo'),
(69, 'front', 'Start using', 'start-using', 'Start using', 'Empieza a usar'),
(70, 'front', 'account', 'account', 'account', 'Cuenta'),
(71, 'front', 'Our online registration process makes it easy for you to sign up for an free or pro account.', 'home-intro-desc', 'Our online registration process makes it easy for you to sign up for an free or pro account.', 'Nuestro proceso de registro en línea le facilita registrarse para obtener una cuenta gratuita o profesional.'),
(72, 'front', 'Services', 'services', 'Services', 'Servicios'),
(73, 'front', 'All rights reserved', 'all-rights-reserved', 'All rights reserved', 'Todos los derechos reservados'),
(74, 'front', 'Small Business — friendly Pricing', 'pricing-title', 'Small Business — friendly Pricing', 'Tu negocio: Al precio más accesible'),
(75, 'front', 'We\'re offering a generous Free Plan and affordable Standard & Premium pricing plans that will help you to grow with', 'pricing-desc', 'We\'re offering a generous Free Plan and affordable Standard & Premium pricing plans that will help you to grow with', 'Te ofrecemos diferentes planes de acuerdo a tus necesidades.'),
(76, 'front', 'Monthly', 'monthly', 'Monthly', 'Mensual'),
(77, 'front', 'Yearly', 'yearly', 'Yearly', 'Anual'),
(78, 'front', 'Per Year', 'per-year', 'Per Year', 'Por año'),
(79, 'front', 'Per Month', 'per-month', 'Per Month', 'Por mes'),
(80, 'front', 'Select Plan', 'select-plan', 'Select Plan', 'Seleccionar plan'),
(81, 'front', 'Experts', 'experts', 'Experts', 'Expertos'),
(82, 'front', 'Meet our experienced experts and book your appoinment in online.', 'expert-title', 'Meet our experienced experts and book your appoinment in online.', 'Conozca a nuestros expertos y reserve su cita en línea.'),
(83, 'front', 'Select Departments', 'select-departments', 'Select Departments', 'Departamentos seleccionados'),
(84, 'front', 'Select Experiences', 'select-experiences', 'Select Experiences', 'Seleccionar Experiencia'),
(85, 'front', 'Search by name', 'search-by-name', 'Search by name', 'Buscar por nombre'),
(86, 'front', 'Book Appointment', 'book-appointment', 'Book Appointment', 'Reservar cita'),
(87, 'front', 'No data found!', 'no-data-found', 'No data found!', '¡No se encontraron datos!'),
(88, 'front', 'Blog & News', 'blog-news', 'Blog & News', 'Blog y noticias'),
(89, 'front', 'Learn More & Empower Yourself', 'learn-more-empower-yourself', 'Learn More & Empower Yourself', 'Obtenga más información y empodérese'),
(90, 'front', 'Search blog posts', 'search-blog-posts', 'Search blog posts', 'Buscar publicaciones de blog'),
(91, 'front', 'Tags', 'tags', 'Tags', 'Etiquetas'),
(92, 'front', 'Leave a reply', 'leave-a-reply', 'Leave a reply', 'Deja una respuesta'),
(93, 'front', 'Name', 'name', 'Name', 'Nombre'),
(94, 'front', 'Address', 'address', 'Address', 'Dirección'),
(95, 'front', 'Comment', 'comment', 'Comment', 'Comentario'),
(96, 'front', 'Submit', 'submit', 'Submit', 'Enviar'),
(97, 'front', 'Frequently Asked Questions', 'frequently-asked-questions', 'Frequently Asked Questions', 'Preguntas frecuentes'),
(98, 'front', 'Get In Touch', 'get-in-touch', 'Get In Touch', 'Ponte en contacto'),
(99, 'front', 'Message', 'message', 'Message', 'Mensaje'),
(100, 'front', 'Sign in to your', 'sign-in-to-your', 'Sign in to your', 'Inicie sesión en su'),
(101, 'front', 'Username', 'username', 'Username', 'Nombre de usuario'),
(102, 'front', 'Password', 'password', 'Password', 'Contraseña'),
(103, 'front', 'Forgot password?', 'forgot-password', 'Forgot password?', '¿Olvidó su contraseña?'),
(104, 'front', 'Don\'t have an account yet?', 'an-account-yet', 'Don\'t have an account yet?', '¿Todavía no tienes una cuenta?'),
(105, 'front', 'Select Your Role', 'select-your-role', 'Select Your Role', 'Seleccione su rol'),
(106, 'front', 'Enter your email', 'enter-your-email', 'Enter your email', 'Ingrese su correo electrónico'),
(107, 'front', ' Back', 'back', ' Back', 'Atrás'),
(108, 'front', 'Email', 'email', 'Email', 'Correo electrónico'),
(109, 'front', 'Your full name', 'your-full-name', 'Your full name', 'Tu nombre completo'),
(110, 'front', 'Your email address', 'your-email-address', 'Your email address', 'Tu dirección de correo electrónico'),
(111, 'front', 'Your password', 'your-password', 'Your password', 'Tu contraseña'),
(112, 'front', 'I have read and understood the', 'i-have-read-and-understood-the', 'I have read and understood the', 'He leído y entendido el'),
(113, 'front', 'Terms and Conditions', 'terms-and-conditions', 'Terms and Conditions', 'Términos y condiciones'),
(114, 'front', 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'Política de privacidad'),
(115, 'front', 'and', 'and', 'and', 'y'),
(116, 'front', 'of this site', 'of-this-site', 'of this site', 'de este sitio'),
(117, 'front', 'Already have an account?', 'already-have-an-account', 'Already have an account?', '¿Ya tienes una cuenta?'),
(118, 'front', 'Register', 'register', 'Register', 'Registro'),
(119, 'front', 'Privacy', 'privacy', 'Privacy', 'Privacidad'),
(120, 'front', 'Terms', 'terms', 'Terms', 'Términos y condiciones'),
(121, 'front', 'Error', 'error', 'Error', 'Error'),
(122, 'front', 'Warning', 'warning', 'Warning', 'Advertencia'),
(123, 'front', 'Appointment type is required', 'appointment-type-is-required', 'Appointment type is required', 'Se requiere el tipo de cita'),
(124, 'front', 'Booking date is required', 'booking-date-is-required', 'Booking date is required', ' Se requiere fecha de reserva'),
(125, 'front', 'Booking time is required', 'booking-time-is-required', 'Booking time is required', 'Se requiere tiempo de reserva'),
(126, 'front', 'Processing', 'processing', 'Processing', 'Procesamiento'),
(127, 'front', 'Appointment booked successfully', 'appointment-booked-successfully', 'Appointment booked successfully', 'Cita reservada con éxito'),
(128, 'front', 'Incorrect username or password', 'incorrect-username-or-password', 'Incorrect username or password', 'Nombre de usuario o contraseña incorrectos'),
(129, 'front', 'Please enter a valid date', 'please-enter-a-valid-date', 'Please enter a valid date', 'Por favor ingrese una fecha válida'),
(130, 'front', 'Recaptcha is required', 'recaptcha-is-required', 'Recaptcha is required', 'Se requiere Recaptcha'),
(131, 'front', 'Signing In', 'signing-in', 'Signing In', 'Iniciar sesión'),
(132, 'front', 'Your account is not active', 'your-account-is-not-active', 'Your account is not active', 'Tu cuenta no está activa'),
(133, 'front', 'Your account has been suspended', 'your-account-has-been-suspended', 'Your account has been suspended', 'Su cuenta ha sido suspendida'),
(134, 'front', 'Your email is not verified, Please verify your email', 'your-email-is-not-verified-please-verify-your-email', 'Your email is not verified, Please verify your email', 'Su correo electrónico no está verificado, verifique su correo electrónico'),
(135, 'front', 'Registared successfully!', 'registared-successfully', 'Registered successfully!', '¡Registrado con éxito!'),
(136, 'front', 'Please wait we are preparing environment for you...', 'preparing-environment', 'Please wait we are preparing environment for you...', 'Espere, estamos preparando el entorno para usted...'),
(137, 'front', 'This email already used, please try another one', 'email-exitsts', 'This email already used, please try another one', 'Este correo electrónico ya se usó, intente con otro'),
(138, 'front', 'Something wrong !, Failed to send code in your email.', 'something-wrong', 'Something wrong !, Failed to send code in your email.', '¡Algo va mal!, no se pudo enviar el código en tu correo.'),
(139, 'front', 'We\'ve sent a password to your email address. Please check your inbox', 'email-send-notify', 'We\'ve sent a password to your email address. Please check your inbox', 'Hemos enviado una contraseña a su dirección de correo electrónico. Por favor revise su bandeja de entrada'),
(140, 'front', 'You are not a valid user', 'you-are-not-a-valid-user', 'You are not a valid user', 'No eres un usuario válido'),
(141, 'front', 'Try Again', 'try-again', 'Try Again', 'Inténtalo de nuevo'),
(142, 'front', 'Your account verified successfully!', 'your-account-verified-successfully', 'Your account verified successfully!', '¡Tu cuenta verificada con éxito!'),
(143, 'front', 'Verify code is not matched', 'verify-code-is-not-matched', 'Verify code is not matched', 'Verifique que el código no coincida'),
(144, 'front', 'Experience Years', 'experience-years', 'Experience Years', 'Años de Experiencia'),
(145, 'front', 'Patients', 'patients', 'Patients', 'Pacientes'),
(146, 'front', 'Visited Patient\'s', 'visited-patients', 'Visited Patient\'s', 'Paciente visitado'),
(147, 'front', 'Before booked an appointment check the availability', 'booking-availability', 'Before booked an appointment check the availability', 'Antes de reservar una cita comprobar la disponibilidad'),
(148, 'front', 'Appointment Type', 'appointment-type', 'Appointment Type', 'Tipo de cita'),
(149, 'front', 'Select Type', 'select-type', 'Select Type', 'Seleccionar tipo'),
(150, 'front', 'Date ', 'date', 'Date ', 'Fecha'),
(151, 'front', 'Time', 'time', 'Time', 'Tiempo'),
(152, 'front', 'Consultation Fee', 'consultation-fee', 'Consultation Fee', 'Tarifa de consulta'),
(153, 'front', 'Continue', 'continue', 'Continue', 'Continuar'),
(154, 'front', ' New Registration', 'new-registration', ' New Registration', 'Nuevo Registro'),
(155, 'front', ' Already have account?', 'already-have-account', ' Already have account?', '¿Ya tienes cuenta?'),
(156, 'front', 'Close', 'close', 'Close', 'Cerrar'),
(157, 'front', 'Powered by', 'powered-by', 'Powered by', 'Desarrollado por'),
(158, 'admin', 'Settings', 'settings', 'Settings', 'Configuración'),
(159, 'admin', 'Payment Settings', 'payment-settings', 'Payment Settings', 'Configuración de pago'),
(160, 'admin', 'Plans', 'plans', 'Plans', 'Planes'),
(161, 'admin', 'Departments', 'departments', 'Departments', 'Departamentos'),
(162, 'admin', 'Add Category', 'add-category', 'Add Category', 'Agregar categoría'),
(163, 'admin', 'Blog Posts', 'blog-posts', 'Blog Posts', 'Publicaciones de blog'),
(164, 'admin', 'Change Password', 'change-password', 'Change Password', 'Cambiar contraseña'),
(165, 'admin', 'Logout', 'logout', 'Logout', 'Cerrar sesión'),
(166, 'admin', 'Verified', 'verified', 'Verified', 'Verificado'),
(167, 'admin', 'Pending', 'pending', 'Pending', 'Pendiente'),
(168, 'admin', 'Expired', 'expired', 'Expired', 'Caducado'),
(169, 'admin', 'Last 12 months Income', 'last-12-months-income', 'Last 12 months Income', 'Ingresos de los últimos 12 meses'),
(170, 'admin', 'Income', 'income', 'Income', 'Ingresos'),
(171, 'admin', 'Recently joined Users', 'recently-joined-users', 'Recently joined Users', 'Usuarios recientemente incorporados'),
(172, 'admin', 'a week ago', 'a-week-ago', 'a week ago', 'Hace una semana'),
(173, 'admin', '>Net Income', 'net-income', 'Net Income', '>Utilidad Neta'),
(174, 'admin', 'Fiscal year', 'fiscal-year', 'Fiscal year', 'Año fiscal'),
(175, 'admin', 'Fiscal year start is January 01', 'fiscal-year-title', 'Fiscal year start is January 01', 'El inicio del año fiscal es el 1 de enero'),
(176, 'admin', 'Version', 'version', 'Version', 'Versión'),
(177, 'admin', 'Plans by user', 'plans-by-user', 'Plans by user', 'Planes por usuario'),
(178, 'admin', 'Manage Settings', 'manage-settings', 'Manage Settings', 'Administrar configuración'),
(179, 'admin', ' Website Settings', 'website-settings', ' Website Settings', 'Configuración del sitio web'),
(180, 'admin', 'Upload Favicon', 'upload-favicon', 'Upload Favicon', 'Subir Favicon'),
(181, 'admin', 'Upload Logo', 'upload-logo', 'Upload Logo', 'Subir Logo'),
(182, 'admin', 'Upload home image', 'upload-home-image', 'Upload home image', ' Subir imagen de inicio'),
(183, 'admin', 'Application Name', 'application-name', 'Application Name', 'Nombre de la aplicación'),
(184, 'admin', 'Application Title', 'application-title', 'Application Title', 'Título de la aplicación'),
(185, 'admin', 'Keywords', 'keywords', 'Keywords', 'Palabras clave'),
(186, 'admin', 'Description', 'description', 'Description', 'Descripción'),
(187, 'admin', 'Footer About', 'footer-about', 'Footer About', 'Acerca de - Pie de página'),
(188, 'admin', 'Admin Email', 'admin-email', 'Admin Email', 'Correo electrónico del administrador'),
(189, 'admin', 'Copyright', 'copyright', 'Copyright', 'Derechos de autor'),
(190, 'admin', 'This email will used for your site from mail', 'settings-email-info', 'This email will used for your site from mail', 'Este correo electrónico se utilizará para su sitio desde el correo'),
(191, 'admin', 'Zoom Settings', 'zoom-settings', 'Zoom Settings', 'Ajustes de Zoom'),
(192, 'admin', 'Preferences', 'preferences', 'Preferences', 'Preferencias'),
(193, 'admin', 'Registration System', 'registration-system', 'Registration System', 'Sistema de registro'),
(194, 'admin', 'Enable to allow sign up users to your site.', 'registration-title', 'Enable to allow sign up users to your site.', 'Habilite para permitir que los usuarios se registren en su sitio.'),
(195, 'admin', 'Enable reCaptcha for all open froms (Sign up, contact, comments)', 'recaptcha-title', 'Enable reCaptcha for all open froms (Sign up, contact, comments)', 'Habilite reCaptcha para todos los formularios abiertos (registro, contacto, comentarios)'),
(196, 'admin', 'Email Verification', 'email-verification', 'Email Verification', 'Verificación de correo electrónico'),
(197, 'admin', 'Enable to allow email verification for registered users.', 'email-verify-title', 'Enable to allow email verification for registered users.', 'Habilite para permitir la verificación de correo electrónico para usuarios registrados.'),
(198, 'admin', 'Enable to show users option in frontend', 'users-title', 'Enable to show users option in frontend', 'Habilite para mostrar la opción de usuarios en la interfaz'),
(199, 'admin', 'Enable to show blog option in frontend', 'blogs-title', 'Enable to show blog option in frontend', 'Habilite para mostrar la opción de blog en la interfaz'),
(200, 'admin', 'Enable to show faqs option in frontend', 'faq-title', 'Enable to show faqs option in frontend', 'Habilite para mostrar la opción de preguntas frecuentes en la interfaz'),
(201, 'admin', 'Enable to show home page workflow section in frontend', 'workflow-enable', 'Enable to show home page workflow section in frontend', 'Habilite para mostrar la sección de flujo de trabajo de la página de inicio en la interfaz'),
(202, 'admin', 'Email Settings', 'email-settings', 'Email Settings', 'Configuración de correo electrónico'),
(203, 'admin', 'If you are using gmail smtp please make sure you have set below settings before sending mail', 'mail-info-title', 'If you are using gmail smtp please make sure you have set below settings before sending mail', 'Si está utilizando gmail smtp, asegúrese de haber establecido la configuración a continuación antes de enviar el correo'),
(204, 'admin', 'Two factor authentication off', 'two-factor-off', 'Two factor authentication off', 'Autenticación de dos factores desactivada'),
(205, 'admin', 'Less secure app on', 'less-secure-app-on', 'Less secure app on', 'Aplicación menos segura en'),
(206, 'admin', 'Mail Type', 'mail-type', 'Mail Type', 'Tipo de correo'),
(207, 'admin', 'Mail Title', 'mail-title', 'Mail Title', 'Título del correo'),
(208, 'admin', 'Mail Host', 'mail-host', 'Mail Host', 'Servidor de correo'),
(209, 'admin', 'Mail Port', 'mail-port', 'Mail Port', 'Puerto de correo'),
(210, 'admin', 'Mail Username', 'mail-username', 'Mail Username', 'Nombre de usuario de correo'),
(211, 'admin', 'Mail Password', 'mail-password', 'Mail Password', ' Contraseña de correo'),
(212, 'admin', 'Mail Encryption', 'mail-encryption', 'Mail Encryption', 'Cifrado de correo'),
(213, 'admin', '  SSL is used for port 465/25, TLS is used for port 587', 'mail-port-help', '  SSL is used for port 465/25, TLS is used for port 587', 'SSL se usa para el puerto 465/25, TLS se usa para el puerto 587'),
(214, 'admin', 'Send Test Mail', 'send-test-mail', 'Send Test Mail', 'Enviar correo de prueba'),
(215, 'admin', 'Social Settings', 'social-settings', 'Social Settings', 'Configuración social'),
(216, 'admin', 'Set default', 'set-default', 'Set default', 'Establecer por defecto'),
(217, 'admin', 'Update', 'update', 'Update', 'Actualizar'),
(218, 'admin', 'Direction', 'direction', 'Direction', 'Dirección'),
(219, 'admin', 'Status', 'status', 'Status', 'Estado'),
(220, 'admin', 'Action', 'action', 'Action', 'Acción'),
(221, 'admin', 'Currency', 'currency', 'Currency', 'Moneda'),
(222, 'admin', 'Paypal mode', 'paypal-mode', 'Paypal mode', 'Modo Paypal'),
(223, 'admin', 'Paypal Account', 'paypal-account', 'Paypal Account', 'Cuenta Paypal'),
(224, 'admin', 'Publish key', 'publish-key', 'Publish key', 'Clave de publicación'),
(225, 'admin', 'Secret key', 'secret-key', 'Secret key', 'Clave secreta'),
(226, 'admin', 'Add Offline Payment', 'add-offline-payment', 'Add Offline Payment', 'Agregar pago sin pasarela'),
(227, 'admin', 'Select User', 'select-user', 'Select User', 'Seleccionar usuario'),
(228, 'admin', 'Subscription type', 'subscription-type', 'Subscription type', 'Tipo de suscripción'),
(229, 'admin', 'Payment Status', 'payment-status', 'Payment Status', 'Estado de pago'),
(230, 'admin', 'Manage Plans', 'manage-plans', 'Manage Plans', 'Administrar planes'),
(231, 'admin', 'Show', 'show', 'Show', 'Mostrar'),
(232, 'admin', 'Hide', 'hide', 'Hide', 'Ocultar'),
(233, 'admin', 'Disable to hide this plan', 'disable-to-hide-this-plan', 'Disable to hide this plan', 'Deshabilitar para ocultar este plan'),
(234, 'admin', 'Active', 'active', 'Active', 'Activo'),
(235, 'admin', 'Edit Plan', 'edit-plan', 'Edit Plan', 'Editar plan'),
(236, 'admin', 'Update plan', 'update-plan', 'Update plan', 'Actualizar plan'),
(237, 'admin', 'Manage your plan settings here', 'manage-your-plan', 'Manage your plan settings here', 'Administre la configuración de su plan aquí'),
(238, 'admin', 'Plan Settings', 'plan-settings', 'Plan Settings', 'Configuración del plan'),
(239, 'admin', 'Plan', 'plan', 'Plan', 'Plan'),
(240, 'admin', 'Choose which features you want to add in this plan', 'choose-which-features', 'Choose which features you want to add in this plan', 'Elija qué características desea agregar en este plan'),
(241, 'admin', 'Plan Name', 'plan-name', 'Plan Name', 'Nombre del plan'),
(242, 'admin', 'Monthly Price', 'monthly-price', 'Monthly Price', 'Precio Mensual'),
(243, 'admin', 'Yearly Price', 'yearly-price', 'Yearly Price', 'Precio Anual'),
(244, 'admin', 'Set 0 price for free package', 'set-0-price-for-free-package', 'Set 0 price for free package', 'Establecer precio 0 para paquete gratis'),
(245, 'admin', 'Online Consultation & get payments', 'online-consultation-get-payments', 'Online Consultation & get payments', 'Consulta en línea y obtener pagos'),
(260, 'admin', 'Set limit -1 for unlimited', 'set-limit-1-for-unlimited', 'Set limit -1 for unlimited', 'Establecer límite -1 para ilimitado'),
(261, 'admin', 'Add New Department', 'add-new-department', 'Add New Department', 'Agregar nuevo departamento'),
(262, 'admin', 'All Users', 'all-users', 'All Users', 'Todos los usuarios'),
(263, 'admin', 'Sort by Packages', 'sort-by-packages', 'Sort by Packages', 'Ordenar por Paquetes'),
(264, 'admin', 'Sort by Status', 'sort-by-status', 'Sort by Status', 'Ordenar por Estado'),
(265, 'admin', 'Avatar', 'avatar', 'Avatar', 'Avatar'),
(266, 'admin', 'Account Status', 'account-status', 'Account Status', 'Estado de la cuenta'),
(267, 'admin', 'Joined', 'joined', 'Joined', 'Unido'),
(268, 'admin', 'All category', 'all-category', 'All category', 'Todas las categorías'),
(269, 'admin', ' Add new Category', 'add-new-category', ' Add new Category', 'Agregar nueva categoría'),
(270, 'admin', 'Category Name', 'category-name', 'Category Name', 'Nombre de la categoría'),
(271, 'admin', 'Edit', 'edit', 'Edit', 'Editar'),
(272, 'admin', 'All Blog posts', 'all-blog-posts', 'All Blog posts', 'Todas las publicaciones del blog'),
(273, 'admin', 'Thumb', 'thumb', 'Thumb', 'Pulgar'),
(274, 'admin', 'Title', 'title', 'Title', 'Título'),
(275, 'admin', 'Details', 'details', 'Details', 'Detalles'),
(276, 'admin', 'Add new blog', 'add-new-blog', 'Add new blog', 'Agregar nuevo blog'),
(277, 'admin', 'Category ', 'category', 'Category ', 'Categoría'),
(278, 'admin', 'Slug', 'slug', 'Slug', 'Slug'),
(279, 'admin', 'Inactive', 'inactive', 'Inactive', 'Inactivo'),
(280, 'admin', 'All Services', 'all-services', 'All Services', 'Todos los servicios'),
(281, 'admin', 'Add new Services', 'add-new-services', 'Add new Services', 'Agregar nuevos servicios'),
(282, 'admin', 'Upload Image', 'upload-image', 'Upload Image', 'Subir imagen'),
(283, 'admin', 'Order', 'order', 'Order', 'Orden'),
(284, 'admin', 'Add New service', 'add-new-service', 'Add New service', 'Agregar nuevo servicio'),
(285, 'admin', 'Add new page', 'add-new-page', 'Add new page', 'Agregar nueva página'),
(286, 'admin', 'Page title', 'page-title', 'Page title', 'Título de la página'),
(287, 'admin', 'Page slug', 'page-slug', 'Page slug', 'Slug de página'),
(288, 'admin', 'Page description', 'page-description', 'Page description', 'Descripción de la página'),
(289, 'admin', 'All Faqs', 'all-faqs', 'All Faqs', 'Todas las preguntas frecuentes'),
(290, 'admin', 'Add New FAQ', 'add-new-faq', 'Add New FAQ', 'Agregar nuevas preguntas frecuentes'),
(291, 'admin', 'Old Password', 'old-password', 'Old Password', 'Contraseña antigua'),
(292, 'admin', 'New Password', 'new-password', 'New Password', 'Nueva contraseña'),
(293, 'admin', 'Confirm New Password', 'confirm-new-password', 'Confirm New Password', 'Confirmar nueva contraseña'),
(294, 'front', 'Resources', 'resources', 'Resources', 'Recursos'),
(295, 'front', 'Users', 'users', 'Users', 'Usuarios'),
(296, 'front', 'The better way to manage your chambers, prescriptions, appointments & patients', 'feature-home-title', 'The better way to manage your chambers, prescriptions, appointments & patients', 'La mejor manera de administrar sus cámaras, recetas, citas y pacientes'),
(297, 'front', 'account you can easily manage chamber wise prescriptions, patients, appointments and many more features.', 'feature-home-desc', 'account you can easily manage chamber wise prescriptions, patients, appointments and many more features.', 'Cuenta en la que puede administrar fácilmente las recetas, los pacientes, las citas y muchas más funciones de la cámara.'),
(298, 'front', 'Using', 'using', 'Using', 'Usando'),
(299, 'front', 'Features not selected !', 'features-not-selected', 'Features not selected !', '¡Características no seleccionadas!'),
(300, 'front', 'years experience', 'years-experience', 'years experience', 'años de experiencia'),
(301, 'front', 'View Profile', 'view-profile', 'View Profile', 'Ver perfil'),
(302, 'front', 'Explore our features', 'explore-our-features', 'Explore our features', 'Explora nuestras características'),
(303, 'front', 'Read More', 'read-more', 'Read More', 'Leer más'),
(304, 'front', 'Appointment schedule is not setted.', 'schedule-is-not-setted', 'Appointment schedule is not setted.', 'El horario de citas no está establecido.'),
(305, 'front', 'Online Consultation', 'online-consultation', 'Online Consultation', 'Consulta en línea'),
(306, 'front', 'Offline', 'offline', 'Offline', 'Presenciales'),
(307, 'front', 'Email or Mobile', 'email-or-mobile', 'Email or Mobile', 'Correo electrónico o móvil'),
(308, 'front', 'Phone', 'phone', 'Phone', 'Teléfono'),
(309, 'front', 'Educations', 'educations', 'Educations', 'Educación'),
(310, 'front', 'Experiences', 'experiences', 'Experiences', 'Experiencia'),
(311, 'front', 'This profile is currently not available', 'profile-not-available', 'This profile is currently not available', 'Este perfil no está disponible actualmente'),
(312, 'front', 'Upgrade your plan', 'upgrade-your-plan', 'Upgrade your plan', 'Mejora tu plan'),
(313, 'front', 'Back to Home', 'back-to-home', 'Back to Home', 'Volver a Inicio'),
(314, 'front', 'The resource requested could not be found on this site!', 'error-404', 'The resource requested could not be found on this site!', '¡El recurso solicitado no se pudo encontrar en este sitio!'),
(315, 'front', 'Verify Account', 'verify-account', 'Verify Account', 'Verificar cuenta'),
(316, 'front', 'We have sent a link to your registered email address, please click this link to verify your account', 'verify-email-sent-link', 'We have sent a link to your registered email address, please click this link to verify your account', 'Hemos enviado un enlace a su dirección de correo electrónico registrada, haga clic en este enlace para verificar su cuenta'),
(317, 'front', 'Email verification failed!', 'email-verification-failed', 'Email verification failed!', '¡Verificación de correo electrónico fallida!'),
(318, 'front', 'Congratulation\'s', 'congratulations', 'Congratulation\'s', 'Felicitaciones'),
(319, 'front', 'Your account successfully verified', 'your-account-successfully-verified', 'Your account successfully verified', 'Tu cuenta verificada con éxito'),
(320, 'front', 'Logout Successfully !', 'logout-successfully-', 'Logout Successfully !', '¡Cierre de sesión con éxito!'),
(321, 'front', 'Recover password', 'recover-password', 'Recover password', 'Recuperar contraseña'),
(322, 'front', 'Admin/Doctors', 'admindoctors', 'Admin/Doctors', 'Admin/Doctores'),
(323, 'front', 'Staff', 'staff', 'Staff', 'Personal'),
(324, 'front', 'Patient', 'patient', 'Patient', 'Paciente'),
(325, 'front', 'Enter username', 'enter-username', 'Enter username', 'Introducir nombre de usuario'),
(326, 'front', 'Enter password', 'enter-password', 'Enter password', 'Introducir contraseña'),
(327, 'front', 'Registration system is disabled !', 'registration-system-is-disabled-', 'Registration system is disabled !', '¡El sistema de registro está deshabilitado!'),
(328, 'front', 'Contact Admin', 'contact-admin', 'Contact Admin', 'Contactar con el administrador'),
(329, 'front', 'Get started with a', 'get-started-with-a', 'Get started with a', 'Comience con un'),
(330, 'admin', 'Subscription', 'subscription', 'Subscription', 'Suscripción'),
(331, 'admin', 'Consultation Settings', 'consultation-settings', 'Consultation Settings', 'Configuración de consulta'),
(332, 'admin', 'Live Consultations', 'live-consultations', 'Live Consultations', 'Consultas en vivo'),
(333, 'admin', 'Prescription', 'prescription', 'Prescription', 'Receta'),
(334, 'admin', 'Prescriptions', 'prescriptions', 'Prescriptions', 'Recetas'),
(335, 'admin', 'Create New', 'create-new', 'Create New', 'Crear nuevo'),
(336, 'admin', 'Lists', 'lists', 'Lists', 'Listas'),
(337, 'admin', 'Set Schedule', 'set-schedule', 'Set Schedule', 'Establecer horario'),
(338, 'admin', 'Drugs', 'drugs', 'Drugs', 'Medicamento'),
(339, 'admin', 'Personal Info', 'personal-info', 'Personal Info', 'Información personal'),
(340, 'admin', 'Manage Education', 'manage-education', 'Manage Education', 'Gestión educativa'),
(341, 'admin', 'Manage Experiences', 'manage-experiences', 'Manage Experiences', 'Administrar experiencias'),
(342, 'admin', 'Profile', 'profile', 'Profile', 'Perfil'),
(343, 'admin', 'Blog', 'blog', 'Blog', 'Blog'),
(344, 'admin', 'Today\'s Appointment', 'todays-appointment', 'Today\'s Appointment', 'Cita de hoy'),
(345, 'admin', 'Serial No', 'serial-no', 'Serial No', 'Número de serie'),
(346, 'admin', 'Upcoming Appointment\'s', 'upcoming-appointments', 'Upcoming Appointment\'s', 'Próximas Citas'),
(347, 'admin', 'Mr. No', 'mr.-no', 'Mr. No', 'Sr. N°'),
(348, 'admin', 'Doctor Info', 'doctor-info', 'Doctor Info', 'Información del médico'),
(349, 'admin', 'Schedule Info', 'schedule-info', 'Schedule Info', 'Información de horario'),
(350, 'admin', 'Consultation type', 'consultation-type', 'Consultation type', 'Tipo de consulta'),
(351, 'admin', 'Online', 'online', 'Online', 'En línea'),
(352, 'admin', 'Offline (Chamber)', 'offline-chamber', 'Offline (Chamber)', 'Fuera de línea (Cámara)'),
(353, 'admin', 'See all Users', 'see-all-users', 'See all Users', 'Ver todos los usuarios'),
(354, 'admin', 'Save Changes', 'save-changes', 'Save Changes', 'Guardar cambios'),
(355, 'admin', 'mode', 'mode', 'mode', 'Modo'),
(356, 'admin', 'Add Payment', 'add-payment', 'Add Payment', 'Agregar pago'),
(357, 'admin', 'Select Plans', 'select-plans', 'Select Plans', 'Planes selectos'),
(358, 'admin', 'Enable to active this plan', 'enable-to-active-this-plan', 'Enable to active this plan', 'Habilitar para activar este plan'),
(359, 'admin', 'Hidden', 'hidden', 'Hidden', 'Oculto'),
(360, 'admin', 'Enable access to', 'enable-access-to', 'Enable access to', 'Habilitar el acceso a'),
(361, 'admin', 'feature in this plan', 'feature-in-this-plan', 'feature in this plan', 'Función en este plan'),
(362, 'admin', 'Chambers', 'chambers', 'Chambers', 'Cámaras'),
(363, 'admin', 'Package', 'package', 'Package', 'Paquete'),
(364, 'admin', 'Days left', 'days-left', 'Days left', 'Días restantes'),
(365, 'admin', 'Disabled', 'disabled', 'Disabled', 'Deshabilitado'),
(366, 'admin', 'All Categories', 'all-categories', 'All Categories', 'Todas las categorías'),
(367, 'admin', 'Add New Post', 'add-new-post', 'Add New Post', 'Agregar nueva publicación'),
(368, 'admin', 'Enter your tags', 'enter-your-tags', 'Enter your tags', 'Introduce tus etiquetas'),
(369, 'admin', 'Accounts', 'accounts', 'Accounts', 'Cuentas'),
(370, 'user', 'Staffs', 'staffs', 'Staffs', 'Personal'),
(371, 'user', 'Appointments', 'appointments', 'Appointments', 'Citas'),
(372, 'user', 'Your ', 'your', 'Your ', 'Tu'),
(373, 'user', 'Manage Chambers', 'manage-chambers', 'Manage Chambers', 'Administrar cámaras'),
(374, 'user', 'Manage Profile', 'manage-profile', 'Manage Profile', 'Administrar perfil'),
(375, 'user', 'Update Profile', 'update-profile', 'Update Profile', 'Actualizar perfil'),
(376, 'user', 'Price', 'price', 'Price', 'Precio'),
(377, 'user', 'Billing Cycle', 'billing-cycle', 'Billing Cycle', 'Ciclo de facturación'),
(378, 'user', 'Payment method', 'payment-method', 'Payment method', 'Método de pago'),
(379, 'user', 'Last billing', 'last-billing', 'Last billing', 'Última facturación'),
(380, 'user', 'Expire', 'expire', 'Expire', 'Caduca'),
(381, 'user', 'Your Selected Plan', 'your-selected-plan', 'Your Selected Plan', 'Su plan seleccionado'),
(382, 'user', 'Select', 'select', 'Select', 'Seleccionar'),
(383, 'user', 'Add new chamber', 'add-new-chamber', 'Add new chamber', 'Agregar nueva cámara'),
(384, 'user', 'All Chambers', 'all-chambers', 'All Chambers', 'Todas las Cámaras'),
(385, 'user', 'Appointment Limit', 'appointment-limit', 'Appointment Limit', 'Límite de citas'),
(386, 'user', 'Information\'s', 'informations', 'Information\'s', 'Información'),
(387, 'user', 'Consultations', 'consultations', 'Consultations', 'Consultas'),
(388, 'user', 'Meeting Id', 'meeting-id', 'Meeting Id', 'ID de la reunión'),
(389, 'user', 'Meeting Password', 'meeting-password', 'Meeting Password', 'Contraseña de la reunión'),
(390, 'user', 'Consultation Fees', 'consultation-fees', 'Consultation Fees', 'Tarifas de consulta'),
(391, 'user', 'Enable to allow patients for online consultation', 'enable-to-allow-consultation', 'Enable to allow patients for online consultation', 'Habilitar para permitir que los pacientes realicen consultas en línea'),
(392, 'user', 'Live Consultation', 'live-consultation', 'Live Consultation', 'Consulta en vivo'),
(393, 'user', 'Data not found !', 'data-not-found', 'Data not found !', '¡Datos no encontrados!'),
(394, 'user', 'Patient Info', 'patient-info', 'Patient Info', 'Información del paciente'),
(395, 'user', 'Record Payment', 'record-payment', 'Record Payment', 'Registro de pago'),
(396, 'user', 'Not Visited', 'not-visited', 'Not Visited', 'No visitado'),
(397, 'user', 'Visited', 'visited', 'Visited', 'Visitado'),
(398, 'user', 'Cancel Meeting', 'cancel-meeting', 'Cancel Meeting', 'Cancelar reunión'),
(399, 'user', 'Send notify mail to user for joining meeting', 'send-notify-mail-for-joining-meeting', 'Send notify mail to user for joining meeting', 'Enviar un correo de notificación al usuario para unirse a la reunión'),
(400, 'user', 'Create Prescription for', 'create-prescription-for', 'Create Prescription for', 'Crear receta para'),
(401, 'user', 'Record Payment for patient', 'record-payment-for-patient', 'Record Payment for patient', 'Registro de pago para el paciente'),
(402, 'user', 'Add new staff', 'add-new-staff', 'Add new staff', 'Agregar nuevo personal'),
(403, 'user', 'All staffs', 'all-staffs', 'All staffs', 'Todo el personal'),
(404, 'user', 'All Chamber', 'all-chamber', 'All Chamber', 'Toda la cámara'),
(405, 'user', 'Designation', 'designation', 'Designation', 'Designación'),
(406, 'user', 'Add New Diagnosis', 'add-new-diagnosis', 'Add New Diagnosis', 'Agregar nuevo diagnóstico'),
(407, 'user', 'All Diagnosis', 'all-diagnosis', 'All Diagnosis', 'Todos los diagnósticos'),
(408, 'user', ' All Diagnosis Tests', 'all-diagnosis-tests', ' All Diagnosis Tests', 'Todas las pruebas de diagnóstico'),
(409, 'user', 'Add New Test', 'add-new-test', 'Add New Test', 'Agregar nueva prueba'),
(410, 'user', 'All Additional Advises', 'all-additional-advises', 'All Additional Advises', 'Todos los avisos adicionales'),
(411, 'user', 'All Advises', 'all-advises', 'All Advises', 'Todos los consejos'),
(412, 'user', 'Create New Prescription', 'create-new-prescription', 'Create New Prescription', 'Crear nueva receta'),
(413, 'user', 'Clinical Diagnosis', 'clinical-diagnosis', 'Clinical Diagnosis', 'Diagnóstico Clínico'),
(414, 'user', 'Additional Advices', 'additional-advices', 'Additional Advices', 'Consejos adicionales'),
(415, 'user', 'Advice', 'advice', 'Advice', 'Consejo'),
(416, 'user', 'Diagnosis Tests', 'diagnosis-tests', 'Diagnosis Tests', 'Pruebas de Diagnóstico'),
(417, 'user', 'Next Follow Up', 'next-follow-up', 'Next Follow Up', 'Siguiente seguimiento'),
(418, 'user', 'Select time', 'select-time', 'Select time', 'Seleccionar tiempo'),
(419, 'user', ' Patient is required', 'patient-is-required', ' Patient is required', 'Se requiere paciente'),
(420, 'user', 'Add New Patient', 'add-new-patient', 'Add New Patient', 'Agregar nuevo paciente'),
(421, 'user', 'Add New Drug', 'add-new-drug', 'Add New Drug', 'Agregar nuevo fármaco'),
(422, 'user', 'Drug is required', 'drug-is-required', 'Drug is required', 'Se requiere medicamento'),
(423, 'user', 'Days', 'days', 'Days', 'Días'),
(424, 'user', 'Months', 'months', 'Months', 'Meses'),
(425, 'user', 'Years', 'years', 'Years', 'Años'),
(426, 'user', 'Before/After Meals', 'beforeafter-meals', 'Before/After Meals', 'Antes/Después de las comidas'),
(427, 'user', 'After Meal', 'after-meal', 'After Meal', 'Después de comer'),
(428, 'user', 'Before Meal', 'before-meal', 'Before Meal', 'Antes de la comida'),
(429, 'user', 'Preview', 'preview', 'Preview', 'Vista previa'),
(430, 'user', 'Add Patient', 'add-patient', 'Add Patient', 'Agregar paciente'),
(431, 'user', 'Age', 'age', 'Age', 'Edad'),
(432, 'user', 'Weight', 'weight', 'Weight', 'Peso'),
(433, 'user', 'Gender', 'gender', 'Gender', 'Género'),
(434, 'user', 'Male', 'male', 'Male', 'Masculino'),
(435, 'user', 'Female', 'female', 'Female', 'Mujer'),
(436, 'user', 'Add Drug', 'add-drug', 'Add Drug', 'Agregar medicamento'),
(437, 'user', 'Patient Name', 'patient-name', 'Patient Name', 'Nombre del paciente'),
(438, 'user', 'Select Patient', 'select-patient', 'Select Patient', 'Seleccione Paciente'),
(439, 'user', 'Select Drug', 'select-drug', 'Select Drug', 'Seleccionar medicamento'),
(440, 'user', 'Remove Group', 'remove-group', 'Remove Group', 'Eliminar grupo'),
(441, 'user', 'Select days', 'select-days', 'Select days', 'Seleccionar días'),
(442, 'user', 'Lab Reports', 'lab-reports', 'Lab Reports', 'Informes de laboratorio'),
(443, 'user', 'Feedback', 'feedback', 'Feedback', 'Comentarios'),
(444, 'user', 'View Feedback', 'view-feedback', 'View Feedback', 'Ver comentarios'),
(445, 'user', 'Write', 'write', 'Write', 'Escribir'),
(446, 'user', 'Pay Now', 'pay-now', 'Pay Now', 'Pague ahora'),
(447, 'user', 'Print', 'print', 'Print', 'Imprimir'),
(448, 'user', 'Upload Report', 'upload-report', 'Upload Report', 'Subir informe'),
(449, 'user', 'Create as New', 'create-as-new', 'Create as New', 'Crear como nuevo'),
(450, 'user', 'All Prescriptions', 'all-prescriptions', 'All Prescriptions', 'Todas las recetas'),
(451, 'user', 'Upload Test Report', 'upload-test-report', 'Upload Test Report', 'Cargar informe de prueba'),
(452, 'user', 'Test Reports', 'test-reports', 'Test Reports', 'Informes de prueba'),
(453, 'user', 'Submit Report Feedback', 'submit-report-feedback', 'Submit Report Feedback', 'Enviar informe Comentarios'),
(454, 'user', 'Created', 'created', 'Created', 'Creado'),
(455, 'user', 'Feedback - Available', 'feedback-available', 'Feedback - Available', 'Comentarios - Disponible'),
(456, 'user', 'Report Submitted', 'report-submitted', 'Report Submitted', 'Informe enviado'),
(457, 'user', 'Feedback - Pending', 'feedback-pending', 'Feedback - Pending', 'Comentarios - Pendiente'),
(458, 'user', 'View Prescription', 'view-prescription', 'View Prescription', 'Ver prescripción'),
(459, 'user', 'Edit Prescription', 'edit-prescription', 'Edit Prescription', 'Editar prescripción'),
(460, 'user', 'All Patients', 'all-patients', 'All Patients', 'Todos los pacientes'),
(461, 'user', 'Present Address', 'present-address', 'Present Address', 'Dirección actual'),
(462, 'user', 'Permanent Address', 'permanent-address', 'Permanent Address', 'Dirección permanente'),
(463, 'user', 'Add new Patients', 'add-new-patients', 'Add new Patients', 'Agregar nuevos pacientes'),
(464, 'user', 'Add Appointment', 'add-appointment', 'Add Appointment', 'Agregar cita'),
(465, 'user', 'Old Patient', 'old-patient', 'Old Patient', 'Viejo paciente'),
(466, 'user', 'New Patient', 'new-patient', 'New Patient', 'Paciente nuevo'),
(467, 'user', 'Add Serial', 'add-serial', 'Add Serial', 'Agregar serie'),
(468, 'user', 'List by date', 'list-by-date', 'List by date', 'Listar por fecha'),
(469, 'user', 'Appointments list by date', 'appointments-list-by-date', 'Appointments list by date', 'Lista de citas por fecha'),
(470, 'user', 'See List', 'see-list', 'See List', 'Ver Lista'),
(471, 'user', 'Patients Serial List', 'patients-serial-list', 'Patients Serial List', 'Lista de serie de pacientes'),
(472, 'user', 'Remove this patient', 'remove-this-patient', 'Remove this patient', 'Eliminar este paciente'),
(473, 'user', 'Fee', 'fee', 'Fee', 'Tarifa'),
(474, 'user', 'Set Appointments Schedule', 'set-appointments-schedule', 'Set Appointments Schedule', 'Establecer horario de citas'),
(475, 'user', 'Start time', 'start-time', 'Start time', 'Hora de inicio'),
(476, 'user', 'End time', 'end-time', 'End time', 'Hora de finalización'),
(477, 'user', 'Update Info', 'update-info', 'Update Info', 'Actualizar información'),
(478, 'user', 'Specialist', 'specialist', 'Specialist', 'Especialista'),
(479, 'user', 'Degree', 'degree', 'Degree', 'Grado'),
(480, 'user', 'About me', 'about-me', 'About me', 'Sobre mí'),
(481, 'user', 'Change Avatar', 'change-avatar', 'Change Avatar', 'Cambiar avatar'),
(482, 'user', 'Year to years', 'year-to-years', 'Year to years', 'Año a años'),
(483, 'user', 'Label', 'label', 'Label', 'Etiqueta'),
(484, 'user', 'Keyword', 'keyword', 'Keyword', 'Palabra clave'),
(485, 'user', 'Value', 'value', 'Value', 'Valor'),
(486, 'admin', 'Insert your translate value here', 'insert-your-translate-value-here', 'Insert your translate value here', 'Inserte su valor de traducción aquí'),
(487, 'front', 'Email resend successfully', 'email-resend-successfully', 'Email resend successfully', 'Correo electrónico reenviado con éxito'),
(488, 'user', 'Yes', 'yes', 'Yes', 'Sí'),
(489, 'user', 'Added Successfully', 'added-successfully', 'Added Successfully', 'Agregado con éxito'),
(490, 'front', 'Verify Code', 'verify-code', 'Verify Code', 'Verificar código'),
(491, 'admin', 'Prescription created successfully', 'prescription-created-successfully', 'Prescription created successfully', 'Receta creada con éxito'),
(492, 'admin', 'You are ready to start a live consultation with your patient', 'ready-to-start-a-live', 'You are ready to start a live consultation with your patient', 'Está listo para iniciar una consulta en vivo con su paciente'),
(493, 'admin', 'Yes, Start It', 'yes-start', 'Yes, Start It', 'Sí, Empieza'),
(494, 'admin', 'Set this chamber as a default', 'set-this-chamber-default', 'Set this chamber as a default', 'Establecer esta cámara como predeterminada'),
(495, 'admin', 'Cancel this user serial', 'cancel-this-user-serial', 'Cancel this user serial', 'Cancelar esta serie de usuario'),
(496, 'admin', 'Serial cancel successfully', 'serial-cancel-success', 'Serial cancel successfully', 'Serie cancelada con éxito'),
(497, 'user', 'Enter Note', 'enter-note', 'Enter Note', 'Introducir nota'),
(498, 'admin', 'Inserted Successfully !', 'inserted-successfully', 'Inserted Successfully !', '¡Insertada con éxito!'),
(499, 'admin', 'Updated Successfully !', 'updated-successfully', 'Updated Successfully !', '¡Actualizado con éxito!'),
(500, 'user', 'Patient already registered', 'patient-already-registered', 'Patient already registered', 'Paciente ya registrado'),
(501, 'user', 'Please select a valid date', 'please-select-a-valid-date', 'Please select a valid date', 'Seleccione una fecha válida'),
(502, 'user', 'Appointment schedule assigned successfully', 'schedule-assigned-successfully', 'Appointment schedule assigned successfully', 'Agenda de citas asignada con éxito'),
(503, 'user', 'You have reached the maximum limit! Please upgrade your plan.', 'reached-maximum-limit', 'You have reached the maximum limit! Please upgrade your plan.', '¡Has alcanzado el límite máximo! Actualice su plan.'),
(504, 'user', 'Activate Successfully', 'activate-successfully', 'Activate Successfully', 'Activar con éxito'),
(505, 'user', 'Deactivate Successfully', 'deactivate-successfully', 'Deactivate Successfully', 'Desactivar con éxito'),
(506, 'user', 'Meeting canceled successfully', 'meeting-canceled-successfully', 'Meeting canceled successfully', 'Reunión cancelada con éxito'),
(507, 'user', 'Feedback Summited Successfully', 'summited-successfully', 'Feedback Summited Successfully', 'Comentarios alcanzados con éxito'),
(508, 'user', 'Message send successfully', 'message-send-successfully', 'Message send successfully', 'Mensaje enviado con éxito'),
(509, 'front', 'days free trial', 'days-free-trial', 'days free trial', 'Días de prueba gratis'),
(510, 'admin', 'Multilingual System', 'multilingual-system', 'Multilingual System', 'Sistema Multilingüe'),
(511, 'admin', 'Enable to allow multilingual system', 'enable-multilingual', 'Enable to allow multilingual system', 'Habilitar para permitir el sistema multilingüe'),
(512, 'user', 'Join', 'join', 'Join', 'Unirse'),
(513, 'user', 'Doctors', 'doctors', 'Doctors', 'Doctores'),
(514, 'user', 'Reviews', 'reviews', 'Reviews', 'Reseñas'),
(515, 'user', 'Average Rating', 'average-rating', 'Average Rating', 'Calificación promedio'),
(516, 'user', 'Ratings by users', 'ratings-by-users', 'Ratings by user', 'Calificaciones de los usuarios'),
(517, 'user', 'Rating & Reviews', 'rating-reviews', 'Rating & Reviews', 'Calificación y reseñas'),
(518, 'user', 'Ratings', 'ratings', 'Ratings', 'Calificaciones'),
(519, 'user', 'Rating & Review System', 'rating-review-system', 'Rating & Review System', 'Sistema de calificación y revisión'),
(520, 'user', 'Enable', 'enable', 'Enable', 'Habilitar'),
(521, 'user', 'Disable', 'disable', 'Disable', 'Deshabilitar'),
(522, 'user', 'rating in frontend', 'rating-in-frontend', 'rating in frontend', 'Ccalificación en la interfaz');
INSERT INTO `lang_values` (`id`, `type`, `label`, `keyword`, `english`, `espanol`) VALUES
(523, 'user', 'Provide your feedback', 'provide-your-feedback', 'Provide your feedback', 'Proporcione sus comentarios'),
(524, 'user', 'Your Feedback', 'your-feedback', 'Your Feedback', 'Tus comentarios'),
(525, 'user', 'Drug', 'drug', 'Drug', 'Medicamentos'),
(526, 'user', 'Appointment', 'appointment', 'Appointment', 'Cita'),
(527, 'admin', 'Set 0 to hide trial option', 'set-trial-info', 'Set 0 to disable trial option', 'Establezca 0 para ocultar la opción de prueba'),
(528, 'user', 'Invitation link', 'invitation-link', 'Invitation link', 'Enlace de invitación'),
(529, 'admin', 'Advise', 'advise', 'Advise', 'Asesorar'),
(530, 'admin', 'Diagnosis', 'diagnosis', 'Diagnosis', 'Diagnóstico'),
(531, 'admin', 'Profile page', 'profile-page', 'Profile page', 'Página de perfil'),
(532, 'admin', 'Sunday', 'Sunday', 'Sunday', 'Domingo'),
(533, 'admin', 'Monday', 'Monday', 'Monday', 'Lunes'),
(534, 'admin', 'Tuesday', 'Tuesday', 'Tuesday', 'Martes'),
(535, 'admin', 'Wednesday', 'Wednesday', 'Wednesday', 'Miércoles'),
(536, 'admin', 'Thursday', 'Thursday', 'Thursday', 'Jueves'),
(537, 'admin', 'Friday', 'Friday', 'Friday', 'Viernes'),
(538, 'admin', 'Saturday', 'Saturday', 'Saturday', 'Sábado'),
(539, 'front', 'We have send a verification code in your email.', 'send-verification-code', 'We have send a verification code in your email.', 'Hemos enviado un código de verificación en su correo electrónico.'),
(540, 'front', 'Verify Code', 'verify-code', 'Verify Code', 'Verificar código'),
(541, 'front', 'Still don\'t received the code?', 'dont-received-code', 'Still don\'t received the code?', '¿Todavía no has recibido el código?'),
(542, 'front', 'Resend', 'Resend', 'Resend', 'Reenviar'),
(543, 'front', 'Sending', 'sending', 'Sending', 'Enviar'),
(544, 'front', 'Payment - Upgrade Plan', 'payment-upgrade-plan', 'Payment - Upgrade Plan', 'Pago - Plan de actualización'),
(545, 'front', 'Pay Now', 'pay-now', 'Pay Now', 'Pague ahora'),
(546, 'front', 'Payment Details ', 'payment-details', 'Payment Details ', 'Detalles de pago'),
(547, 'front', 'Name on card', 'name-card', 'Name on card', 'Nombre en la tarjeta'),
(548, 'front', 'Card Number', 'card-number', 'Card Number', 'Número de tarjeta'),
(549, 'front', 'Expiration month', 'expiration-month', 'Expiration month', 'Mes de caducidad'),
(550, 'front', 'Expiration year', 'expiration-year', 'Expiration year', 'Año de caducidad'),
(551, 'admin', 'Item', 'item', 'Item', 'Artículo'),
(552, 'admin', 'Price', 'price', 'Price', 'Precio'),
(553, 'admin', 'Total', 'total', 'Total', 'Total'),
(554, 'admin', 'Sub Total', 'sub-total', 'Sub Total', 'Subtotal'),
(555, 'admin', 'Print', 'print', 'Print', 'Imprimir'),
(556, 'admin', 'Invoice', 'invoice', 'Invoice', 'Factura'),
(557, 'admin', 'Transaction', 'transaction', 'Transaction', 'Transacción'),
(558, 'admin', 'Payments', 'payments', 'Payments', 'Pagos'),
(559, 'admin', 'Invoices', 'invoices', 'Invoices', 'Facturas'),
(560, 'admin', 'Transactions', 'transactions', 'Transactions', 'Transacciones'),
(561, 'user', 'Before start live consultation please make sure you have started the meeting manually from your zoom app', 'zoom-start-info', 'Before start live consultation please make sure you have started the meeting manually from your zoom app', 'Antes de iniciar la consulta en vivo, asegúrese de haber iniciado la reunión manualmente desde su aplicación de Zoom'),
(562, 'admin', 'Created', 'created', 'Created', 'Creado'),
(563, 'admin', 'Not Created', 'not-created', 'Not Created', 'No creado'),
(564, 'admin', 'Prescription is not created yet', 'prescription-not-created-yet', 'Prescription is not created yet', 'La receta aún no se ha creado'),
(565, 'front', 'Open', 'open', 'Open', 'Abrir'),
(566, 'admin', 'Appearance', 'appearance', 'Appearance', 'Apariencia'),
(567, 'admin', 'Set Theme', 'set-theme', 'Set Theme', 'Establecer tema'),
(568, 'admin', 'Key Id', 'key-id', 'Key Id', 'ID de clave'),
(569, 'admin', 'Key Secret', 'key-secret', 'Key Secret', 'Key Secret'),
(570, 'admin', 'Paid', 'paid', 'Paid', 'Pagado'),
(571, 'user', 'Basic', 'basic', 'Basic', 'Básico'),
(572, 'user', 'Standard', 'standard', 'Standard', 'Estándar'),
(573, 'user', 'Premium', 'premium', 'Premium', 'Premium'),
(574, 'user', 'Please select a payment method', 'please-select-a-payment-method', 'Please select a payment method', 'Seleccione un método de pago'),
(575, 'user', 'Your payment has been completed Successfully', 'your-payment-has-been-completed-successfully', 'Your payment has been completed Successfully', 'Su pago se ha completado con éxito'),
(576, 'user', 'Your payment has been failed', 'your-payment-has-been-failed', 'Your payment has been failed', 'Su pago ha fallado'),
(577, 'user', 'City', 'city', 'City', 'Ciudad'),
(578, 'user', 'QR Code', 'qr-code', 'QR Code', 'Código QR'),
(579, 'user', 'Share QR Code', 'share-qr-code', 'Share QR Code', 'Compartir código QR'),
(580, 'user', 'Download', 'download', 'Download', 'Descargar'),
(581, 'user', 'Please add SSL Certificate (https) on your url to enable Zoom meeting', 'zoom-integration-alert', 'Please add SSL Certificate (https) on your url to enable Zoom meeting', 'Agregue un certificado SSL (https) en su URL para habilitar la reunión de Zoom'),
(582, 'user', 'Zoom Integration doc', 'zoom-integration-doc', 'Zoom Integration doc', 'Documento de integración de Zoom'),
(583, 'user', 'Zoom API Key', 'zoom-api-key', 'Zoom API Key', 'Clave API de Zoom'),
(584, 'user', 'Zoom Secret Key', 'zoom-secret-key', 'Zoom Secret Key', 'Clave secreta de Zoom'),
(585, 'user', 'Minutes', 'minutes', 'Minutes', 'Minutos'),
(586, 'user', 'Set Interval', 'set-interval', 'Set Interval', 'Establecer intervalo'),
(587, 'user', 'Meeting Notes', 'meeting-notes', 'Meeting Notes', 'Notas de la reunión'),
(588, 'user', 'Schedule not available', 'schedule-not-available', 'Schedule not available', 'Horario no disponible'),
(589, 'user', 'Pick Appointment Time For', 'pick-appointment-time-for', 'Pick Appointment Time For', 'Elegir hora de cita para'),
(590, 'user', 'Chamber Name', 'chamber-name', 'Chamber Name', 'Nombre de la cámara'),
(591, 'user', 'Chamber title', 'chamber-title', 'Chamber title', 'Título de cámara'),
(592, 'user', 'Upload Signature', 'upload-signature', 'Upload Signature', 'Subir firma'),
(593, 'user', 'View', 'view', 'View', 'Ver'),
(594, 'user', 'Zoom', 'zoom', 'Zoom', 'Zoom'),
(595, 'user', 'Google Meet', 'google-meet', 'Google Meet', 'Google Meet'),
(596, 'user', 'Active video meeting option', 'active-video-meeting-option', 'Active video meeting option', 'Opción de videoconferencia activa'),
(597, 'user', 'This selected video meeting option will be used for your video consultation with patients', 'active-video-meeting-option-info', 'This selected video meeting option will be used for your video consultation with patients', 'Esta opción de videoconferencia seleccionada se utilizará para su videoconsulta con los pacientes'),
(598, 'user', 'Department', 'department', 'Department', 'Departamento'),
(599, 'user', 'Email before the plan ends', 'email-before-the-plan-ends', 'Email before the plan ends', 'Correo electrónico antes de que finalice el plan'),
(600, 'user', 'Set 0 to disable this option', 'set-0-to-disable-this-option', 'Set 0 to disable this option', 'establezca 0 para deshabilitar esta opción'),
(601, 'user', 'Subscription Expire Reminder', 'subscription-expire-reminder', 'Subscription Expire Reminder', 'Recordatorio de caducidad de suscripción'),
(602, 'user', 'Hello', 'hello', 'Hello', 'Hola'),
(603, 'user', 'subscription will expire in', 'subscription-will-expire-in', 'subscription will expire in', 'La suscripción caducará en'),
(604, 'user', 'Please click below link to renew your plan', 'please-click-below-link-to-renew-your-plan', 'Please click below link to renew your plan', 'Haga clic debajo del enlace para renovar su plan'),
(605, 'user', 'Access Token', 'access-token', 'Access Token', 'Token de acceso'),
(606, 'user', 'Prescription Preview', 'prescription-preview', 'Prescription Preview', 'Vista previa de prescripción'),
(607, 'user', 'Save & Continue', 'save-continue', 'Save & Continue', 'Guardar y continuar'),
(608, 'user', 'This is a preview of your prescription. Switch back to Edit if you need to make changes.', 'preview-pres-title', 'This is a preview of your prescription. Switch back to Edit if you need to make changes.', 'Esta es una vista previa de su receta. Vuelva a Editar si necesita hacer cambios.'),
(609, 'user', 'Appointment Confirmation', 'appointment-confirmation', 'Appointment Confirmation', 'Confirmación de cita'),
(610, 'user', 'Your appointment has been confirmed successfully, Please login to your portal to see more details', 'appointment-confirmation-pdetails', 'Your appointment has been confirmed successfully, Please login to your portal to see more details', 'Su cita ha sido confirmada con éxito, inicie sesión en su portal para ver más detalles'),
(611, 'user', 'booked an appointment at', 'booked-an-appointment-at', 'booked an appointment at', 'reservó una cita en'),
(612, 'user', 'Notes', 'notes', 'Notes', 'Notas'),
(613, 'user', 'Country', 'country', 'Country', 'País'),
(614, 'user', 'Add new user', 'add-new-user', 'Add new user', 'Agregar nuevo usuario'),
(615, 'user', 'Follow Up', 'follow-up', 'Follow Up', 'Seguimiento'),
(616, 'admin', 'Doctors Verification', 'doctors-verification', 'Doctors Verification', 'Verificación de médicos'),
(617, 'admin', 'Enable Verification', 'enable-verification', 'Enable Verification', 'Habilitar verificación'),
(618, 'admin', 'Enable to force all doctors to verify their profile to submit the required docments by admin', 'enable-verification-details', 'Enable to force all doctors to verify their profile to submit the required docments by admin', 'Habilite para obligar a todos los médicos a verificar su perfil para enviar los documentos requeridos por el administrador'),
(619, 'admin', 'In this section you can add required doctors certificate/document name and files upload option will be shown on doctors pane', 'enable-verification-suggestion', 'In this section you can add required doctors certificate/document name and files upload option will be shown on doctors panel to verify their account via admin', 'En esta sección puede agregar el nombre del documento/certificado médico requerido y la opción de carga de archivos se mostrará en el panel de médicos'),
(620, 'admin', 'Account Verification', 'account-verification', 'Account Verification', 'Verificación de cuenta'),
(621, 'admin', 'Documents submitted successfully', 'documents-submitted-successfully', 'Documents submitted successfully', 'Documentos enviados con éxito'),
(622, 'admin', 'Your files are in under review, Once verify is done you will know about your status', 'verify-under-process-short', 'Your files are in under review, Once verify is done you will know about your status', 'Sus archivos están en revisión, una vez que se realiza la verificación, sabrá sobre su estado'),
(623, 'admin', 'Your account is now verified', 'your-account-is-now-verified', 'Your account is now verified', 'Su cuenta ahora está verificada'),
(624, 'admin', 'Verify Profile', 'verify-profile', 'Verify Profile', 'Verificar perfil'),
(625, 'admin', 'Verify Documents', 'verify-documents', 'Verify Documents', 'Verificar Documentos'),
(626, 'admin', 'Verify Your Account', 'verify-your-account', 'Verify Your Account', 'Verifica tu cuenta'),
(627, 'admin', 'To verify your account you need to submit some required files, Please click below link to go the verification page.', 'verify-account-hints', 'To verify your account you need to submit some required files, Please click below link to go the verification page.', 'Para verificar su cuenta, debe enviar algunos archivos obligatorios. Haga clic a continuación en el enlace para ir a la página de verificación.'),
(628, 'admin', 'Account Verified', 'account-verified', 'Account Verified', 'Cuenta verificada'),
(629, 'admin', 'Expenses', 'expenses', 'Expenses', 'Gastos'),
(630, 'admin', 'Concept', 'concept', 'Concept', 'Concepto'),
(631, 'admin', 'Amount', 'amount', 'Amount', 'Monto'),
(632, 'admin', 'Add new expense', 'add_expense', 'Add new expense', 'Agregar gasto'),
(633, 'admin', 'All Expenses', 'all_expenses', 'All Expenses', 'Todos los gastos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `monthly_price` decimal(10,2) DEFAULT NULL,
  `bill_type` varchar(255) DEFAULT NULL,
  `is_special` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `package`
--

INSERT INTO `package` (`id`, `name`, `slug`, `price`, `monthly_price`, `bill_type`, `is_special`, `status`) VALUES
(1, 'Básico', 'basic', '500.00', '50.00', 'year', 0, 1),
(2, 'Estándar', 'standared', '35.00', '14.00', 'year', 1, 1),
(3, 'Premium', 'premium', '1000.00', '30.00', 'year', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` longtext,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `status`, `created_at`) VALUES
(1, 'Términos y condiciones', 'terms-of-service', '<p>Terms and Conditions</p>\r\n', 1, '2023-06-10 07:24:25'),
(2, 'Política de privacidad', 'privacy-policy', '<p>Privacy Policy</p>\r\n', 1, '2023-06-10 07:24:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patientses`
--

CREATE TABLE `patientses` (
  `id` int(11) NOT NULL,
  `chamber_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mr_number` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` tinyint(2) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `sex` varchar(11) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'patient',
  `verify_code` varchar(255) DEFAULT NULL,
  `present_address` text,
  `permanent_address` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `patientses`
--

INSERT INTO `patientses` (`id`, `chamber_id`, `user_id`, `mr_number`, `name`, `slug`, `thumb`, `email`, `age`, `weight`, `sex`, `mobile`, `password`, `role`, `verify_code`, `present_address`, `permanent_address`, `created_at`) VALUES
(1, '04312', 3, '37951', 'hugo valero', NULL, NULL, 'paciente@paciente.com', 31, 60, '1', '3312275426', '$2y$10$nzwTBUt1ckYQVv1wWJqdXuTpqZNkgH96StsdRNyIxZkx12pU5xXMS', 'patient', NULL, '', '', '2023-06-13 00:02:42'),
(2, '04312', 3, '81952', 'Jose Perez', NULL, NULL, 'joseperez@gmail.com', NULL, NULL, NULL, '3312275426', '$2y$10$GSMQYLLd69edaVlxrquE7u/kJZ8/hFD1SSmPqSVH6gve5lLAuYglC', 'patient', NULL, NULL, NULL, '2023-06-13 00:13:32'),
(3, '04312', 3, '01539', 'Juan Perez', NULL, NULL, 'juanperez@gmail.com', NULL, NULL, NULL, '3312275426', '$2y$10$BrFIYby/ynhPxOmW60eUGOzUrlItiktnH7gneqPmP/Yz56Vkz0peu', 'patient', NULL, NULL, NULL, '2023-06-13 03:01:50'),
(4, '97206', 7, '48630', 'Casimiro Karamillo', NULL, NULL, 'tonaneb907@camplvad.com', NULL, NULL, NULL, '3312275426', '$2y$10$eu9KQ.CAOUn8/uNjUqFoTexQJPROoqbE7d6yYVhrC0HDkfu1d30ui', 'patient', NULL, NULL, NULL, '2023-06-23 23:49:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `puid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` varchar(255) DEFAULT NULL,
  `billing_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `expire_on` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payment`
--

INSERT INTO `payment` (`id`, `puid`, `user_id`, `package_id`, `billing_type`, `amount`, `status`, `created_at`, `expire_on`, `payment_method`) VALUES
(1, '48065', 2, '2', 'monthly', '14.00', 'verified', '2023-06-12', '2023-07-12', NULL),
(2, '51283', 3, '2', 'monthly', '14.00', 'verified', '2023-06-12', '2023-07-12', NULL),
(3, '67091', 4, '1', 'monthly', '0.00', 'pending', '2023-06-20', '2023-07-20', NULL),
(4, '71569', 5, '1', 'monthly', '0.00', 'pending', '2023-06-20', '2023-07-20', NULL),
(5, '71423', 6, '1', 'yearly', '500.00', 'verified', '2023-06-30', '2024-06-30', NULL),
(6, '96471', 7, '1', 'monthly', '50.00', 'verified', '2023-06-22', '2023-07-22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_user`
--

CREATE TABLE `payment_user` (
  `id` int(11) NOT NULL,
  `puid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payment_user`
--

INSERT INTO `payment_user` (`id`, `puid`, `user_id`, `patient_id`, `appointment_id`, `amount`, `status`, `created_at`, `payment_method`) VALUES
(1, '87642', 7, 4, 4, '500.00', 'verified', '2023-06-23', 'offline');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `chamber_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `next_visit` varchar(255) NOT NULL,
  `notes` text,
  `is_followup` varchar(155) DEFAULT '0',
  `check_report` int(11) DEFAULT NULL,
  `feedback` longtext,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prescription`
--

INSERT INTO `prescription` (`id`, `chamber_id`, `patient_id`, `user_id`, `next_visit`, `notes`, `is_followup`, `check_report`, `feedback`, `created_at`) VALUES
(1, 4312, 1, 3, '12 days later', 'notas', '0', NULL, NULL, '2023-06-13 00:05:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prescription_items`
--

CREATE TABLE `prescription_items` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `time_periods` varchar(255) NOT NULL,
  `medicine_time` varchar(255) NOT NULL,
  `duration_text` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prescription_items`
--

INSERT INTO `prescription_items` (`id`, `prescription_id`, `drug_id`, `time_periods`, `medicine_time`, `duration_text`, `duration`, `note`) VALUES
(1, 1, 1, '1 ml+++', '', '7', 'Days', ''),
(2, 1, 1, '+++', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre_advice`
--

CREATE TABLE `pre_advice` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `advice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre_ad_advices`
--

CREATE TABLE `pre_ad_advices` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `ad_advices_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre_diagonosis`
--

CREATE TABLE `pre_diagonosis` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `diagonosis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pre_diagonosis`
--

INSERT INTO `pre_diagonosis` (`id`, `prescription_id`, `diagonosis_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre_investigation`
--

CREATE TABLE `pre_investigation` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `investigation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_services`
--

CREATE TABLE `product_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `orders` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_services`
--

INSERT INTO `product_services` (`id`, `name`, `details`, `image`, `thumb`, `orders`) VALUES
(1, 'Consulta en línea', 'Usando la consulta en línea de Zoom, los pacientes pueden hacer una reunión de video en vivo con los expertos y recibir tratamiento y consejos de ellos. Además, los médicos pueden establecer una tarifa para la consulta en línea y recibir pagos de los pacientes mediante Paypal y Stripe.', 'uploads/medium/online-doctor-flat-design_23-2148521415_medium-600x600_medium-600x600.jpg', 'uploads/thumbnail/online-doctor-flat-design_23-2148521415_medium-600x600_thumb-150x150.jpg', 1),
(2, 'Reserva de citas en línea', 'Los pacientes pueden reservar sus citas en línea o fuera de línea con sus expertos en una fecha y hora específicas. Los médicos pueden gestionar todas las reservas desde sus portales y los pacientes pueden ver el estado desde el portal del paciente.', 'uploads/medium/man-using-calendar-remembering-appointment_23-2148573621_medium-600x600_medium-600x600.jpg', 'uploads/thumbnail/man-using-calendar-remembering-appointment_23-2148573621_medium-600x600_thumb-150x150.jpg', 2),
(3, 'Sistema de Prescripción Avanzado y Súper Fácil', 'Contamos con un sistema de prescripción de onload automatizado, potente y súper fácil que ayudará a los doctoros a crear e imprimir sus recetas en un minuto.', 'uploads/medium/pharmacist-signing-drug-prescription-flat-vector-illustration_74855-4810_medium-600x600_medium-600x600.jpg', 'uploads/thumbnail/pharmacist-signing-drug-prescription-flat-vector-illustration_74855-4810_medium-600x600_thumb-150x150.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `feedback` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `hero_img` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  `footer_about` text,
  `admin_email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `pagination_limit` int(11) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `google_analytics` longtext,
  `site_color` varchar(255) DEFAULT NULL,
  `site_font` varchar(255) DEFAULT NULL,
  `layout` int(11) DEFAULT NULL,
  `about_info` mediumtext,
  `ind_code` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `enable_captcha` int(11) NOT NULL DEFAULT '0',
  `enable_workflow` int(11) NOT NULL DEFAULT '1',
  `enable_users` int(11) NOT NULL DEFAULT '1',
  `enable_blog` int(11) NOT NULL,
  `enable_faq` int(11) NOT NULL,
  `enable_registration` int(11) NOT NULL,
  `enable_payment` int(11) NOT NULL,
  `enable_paypal` int(11) NOT NULL DEFAULT '0',
  `enable_email_verify` int(11) NOT NULL,
  `enable_multilingual` int(11) DEFAULT '0',
  `captcha_type` int(11) DEFAULT NULL,
  `captcha_site_key` varchar(255) DEFAULT NULL,
  `captcha_secret_key` varchar(255) DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `paypal_payment` int(11) DEFAULT '0',
  `stripe_payment` int(11) DEFAULT '0',
  `publish_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `paystack_payment` varchar(155) DEFAULT '0',
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `razorpay_payment` varchar(155) DEFAULT '0',
  `razorpay_key_id` varchar(255) DEFAULT NULL,
  `razorpay_key_secret` varchar(255) DEFAULT NULL,
  `mercado_payment` int(11) DEFAULT '0',
  `mercado_currency` varchar(155) DEFAULT NULL,
  `mercado_api_key` varchar(255) DEFAULT NULL,
  `mercado_token` varchar(255) DEFAULT NULL,
  `paypal_mode` varchar(255) DEFAULT 'sandbox',
  `mail_protocol` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT 'ssl',
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '178',
  `site_info` int(11) DEFAULT NULL,
  `zoom_api_key` mediumtext,
  `zoom_secret_key` mediumtext,
  `lang` int(11) NOT NULL DEFAULT '1',
  `sid` varchar(255) DEFAULT '2020-02-02',
  `type` varchar(255) DEFAULT 'live',
  `trial_days` int(11) DEFAULT '0',
  `expire_reminder` int(11) DEFAULT '15',
  `profile_verification` varchar(11) DEFAULT '0',
  `verification_items` mediumtext,
  `theme` int(11) DEFAULT '1',
  `version` varchar(255) NOT NULL DEFAULT 'v1.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_title`, `favicon`, `logo`, `hero_img`, `keywords`, `description`, `footer_about`, `admin_email`, `mobile`, `copyright`, `pagination_limit`, `facebook`, `instagram`, `twitter`, `linkedin`, `google_analytics`, `site_color`, `site_font`, `layout`, `about_info`, `ind_code`, `purchase_code`, `link`, `enable_captcha`, `enable_workflow`, `enable_users`, `enable_blog`, `enable_faq`, `enable_registration`, `enable_payment`, `enable_paypal`, `enable_email_verify`, `enable_multilingual`, `captcha_type`, `captcha_site_key`, `captcha_secret_key`, `paypal_email`, `paypal_payment`, `stripe_payment`, `publish_key`, `secret_key`, `paystack_payment`, `paystack_secret_key`, `paystack_public_key`, `razorpay_payment`, `razorpay_key_id`, `razorpay_key_secret`, `mercado_payment`, `mercado_currency`, `mercado_api_key`, `mercado_token`, `paypal_mode`, `mail_protocol`, `mail_title`, `mail_host`, `mail_port`, `mail_encryption`, `mail_username`, `mail_password`, `country`, `site_info`, `zoom_api_key`, `zoom_secret_key`, `lang`, `sid`, `type`, `trial_days`, `expire_reminder`, `profile_verification`, `verification_items`, `theme`, `version`) VALUES
(1, 'MediPortal', 'Tu consultorio en línea', 'uploads/thumbnail/144099665_2178523218948117_4003632740204104835_n_thumb-200x200.jpg', 'uploads/medium/Negro-1_medium-482x115.png', 'uploads/medium/apuesto-joven-medico-bata-laboratorio-estetoscopio-usando-tableta-verificar-historial-paciente_medium-848x1000.png', 'doctor,saas,consultorio,medicina,software de salud', 'MediPortal es una innovadora plataforma en línea diseñada para conectar a médicos y pacientes de manera rápida y segura.', 'Nuestra plataforma basada en el modelo de software como servicio (SaaS) permite a los profesionales de la salud brindar consultas médicas, compartir información y colaborar de manera eficiente, todo a través de una interfaz fácil de usar. Con MediPortal, los pacientes pueden acceder a servicios médicos de calidad desde la comodidad de sus hogares, realizar consultas virtuales con especialistas, programar citas y acceder a su historial médico de forma segura.', 'alejandro.carrillo@yocontigo-it.com', '', '© 2023 YoContigo-IT Todos los derechos reservados.', 0, '', '', '', '', '', '#ddd', 'Alata', 0, 'SW52YWxpZCBMaWNlbnNlIEtleQ==', 'asdasdasdasd', 'asdasdasdasd', 'aHR0cHM6Ly9jZG5qcy5jbG91ZGZsYXJlLmNvbS9hamF4L2xpYnMv', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, NULL, '', '', 'your_paypal@mail.com', 1, 1, '', '', '1', '', '', '1', '', '', 0, NULL, NULL, NULL, 'sandbox', 'smtp', 'Doxe email', '', '465', 'ssl', 'alejandro.carrillo@yocontigo-it.com', 'MTIzNDU2', 120, 2, '', '', 2, '2022-10-10', 'live', 0, 2, '1', '[\"Cedula profesional\"]', 2, '1.9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_contacts`
--

CREATE TABLE `site_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chamber_id` int(11) NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `staffs`
--

INSERT INTO `staffs` (`id`, `user_id`, `chamber_id`, `thumb`, `user_name`, `password`, `name`, `slug`, `email`, `designation`, `role`, `created_at`, `status`) VALUES
(1, 3, 4, NULL, '', '$2y$10$UzUv02YC03TAtE0HOAFQIOY3FWeHq4KX/S8/x05OY19ATLV54ujKC', 'Daniel Alejandro Carrillo Rivera', 'daniel-alejandro-carrillo-rivera', 'doctor@doctor.com', 'Doctor', 'staff', '2023-06-13 00:00:56', 1),
(2, 7, 8, NULL, '', '$2y$10$KlcLFU.r6TK8hW.hbnx1zeLaey5DddsVKSswkDGKGVDTbMFMJKFJm', 'Daniel Alejandro Carrillo Rivera', 'daniel-alejandro-carrillo-rivera', 'dsada@das.com', 'Doctor', 'staff', '2023-06-24 00:07:12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `feedback` text,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bn_name` varchar(255) DEFAULT NULL,
  `degree` text,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `account_type` varchar(255) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'registered',
  `trial_expire` varchar(255) DEFAULT '0000-00-00',
  `qr_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `email_verified` int(11) DEFAULT '0',
  `verify_code` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `paypal_payment` int(11) DEFAULT '1',
  `stripe_payment` int(11) DEFAULT '1',
  `paypal_email` varchar(255) DEFAULT NULL,
  `publish_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `paystack_payment` varchar(155) DEFAULT '0',
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `razorpay_payment` varchar(155) DEFAULT '0',
  `razorpay_key_id` varchar(255) DEFAULT NULL,
  `razorpay_key_secret` varchar(255) DEFAULT NULL,
  `mercado_payment` int(11) DEFAULT '0',
  `mercado_currency` varchar(155) DEFAULT NULL,
  `mercado_api_key` varchar(255) DEFAULT NULL,
  `mercado_token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `country` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT 'USD',
  `paypal_mode` varchar(255) DEFAULT 'live',
  `about_me` varchar(5000) DEFAULT NULL,
  `exp_years` int(11) DEFAULT NULL,
  `available_days` varchar(255) DEFAULT NULL,
  `google_analytics` text,
  `enable_appointment` int(11) NOT NULL DEFAULT '1',
  `enable_rating` int(11) DEFAULT '1',
  `specialist` text,
  `intervals` varchar(155) DEFAULT '30',
  `signature` varchar(255) DEFAULT NULL,
  `is_verified` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `bn_name`, `degree`, `slug`, `email`, `user_name`, `password`, `role`, `account_type`, `user_type`, `trial_expire`, `qr_code`, `phone`, `address`, `email_verified`, `verify_code`, `skype`, `whatsapp`, `facebook`, `twitter`, `linkedin`, `instagram`, `image`, `thumb`, `paypal_payment`, `stripe_payment`, `paypal_email`, `publish_key`, `secret_key`, `paystack_payment`, `paystack_secret_key`, `paystack_public_key`, `razorpay_payment`, `razorpay_key_id`, `razorpay_key_secret`, `mercado_payment`, `mercado_currency`, `mercado_api_key`, `mercado_token`, `status`, `country`, `city`, `currency`, `paypal_mode`, `about_me`, `exp_years`, `available_days`, `google_analytics`, `enable_appointment`, `enable_rating`, `specialist`, `intervals`, `signature`, `is_verified`, `created_at`) VALUES
(1, 0, NULL, NULL, NULL, 'yocontigoit', 'alejandro.carrillo@yocontigo-it.com', 'YoContigoIt', '$2y$10$sV8CJb8XhnyBRoRJSSylY.gyBoycdNDgZiYDcT5at9K3wicThg2Uy', 'admin', NULL, 'registered', '2023-06-10', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, 'USD', 'live', NULL, NULL, NULL, NULL, 0, 1, NULL, '30', NULL, 0, '2023-06-10 00:44:28'),
(2, 0, 'Daniel Alejandro Carrillo Rivera', NULL, NULL, 'daniel-alejandro-carrillo-rivera', 'carrilloriveradanielalejandro1@gmail.com', 'daniel-alejandro-carrillo-rivera', '$2y$10$2tMOxl8JsiKDliqoQtaUY.NCBwYopTgzHnpanAAZ.AFoEGdda.AsC', 'user', NULL, 'trial', '2023-06-17', 'uploads/files/qrcode_370983402.png', NULL, NULL, 0, '240653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/front/img/avatar.png', 1, 1, '', '', '', '0', '', '', '0', '', '', 0, 'BRL', '', '', 1, 120, NULL, 'MXN', 'live', NULL, NULL, NULL, NULL, 1, 1, NULL, '30', NULL, 1, '2023-06-10 07:31:15'),
(3, 0, 'Hugo Valero', NULL, NULL, 'hugo-valero', 'hugo.valero@yocontigo-it.com', 'hugo-valero', '$2y$10$dOqeU/z1VJ1X23rgvjbjou0I241kgpreK2sXxDwX5aVpCZCmeKEFy', 'user', NULL, 'registered', '2023-06-12', 'uploads/files/qrcode_1958018212.png', NULL, NULL, 0, '603294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/front/img/avatar.png', 1, 1, '', '', '', '0', '', '', '0', '', '', 0, 'BRL', '', '', 1, 120, NULL, 'MXN', 'live', NULL, NULL, NULL, NULL, 1, 1, NULL, '30', NULL, 1, '2023-06-12 23:52:06'),
(4, 0, 'Juan Perez', NULL, NULL, 'juan-perez', 'juanperez@correo.com', 'juan-perez', '$2y$10$cgWhOF5nY3i3Nve0ME6McuJtTP7ECjmaBokg57BUHS7KrhayKp.zu', 'user', NULL, 'registered', '2023-06-20', NULL, NULL, NULL, 0, '820913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, 'USD', 'live', NULL, NULL, NULL, NULL, 1, 1, NULL, '30', NULL, 0, '2023-06-20 22:58:13'),
(5, 0, 'daniel carrillo', NULL, NULL, 'daniel-carrillo', 'correo1@correo.com', 'daniel-carrillo', '$2y$10$WaqqCY9H5WWT1w6haWog0OEY3ADfGcS.O8XKkuHZmoN6HvsH/dq4.', 'user', NULL, 'registered', '2023-06-20', 'uploads/files/qrcode_247204133.png', NULL, NULL, 0, '582619', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, 'USD', 'live', NULL, NULL, NULL, NULL, 1, 1, NULL, '30', NULL, 1, '2023-06-20 23:14:42'),
(6, 0, 'Daniel Alejandro Carrillo Rivera', NULL, NULL, 'daniel-alejandro-carrillo-rivera271', 'daniel.carrillo7143@alumnos.udg.mx', 'daniel-alejandro-carrillo-rivera', '$2y$10$pnZ.Anja7dkYz74rpUKtd.5kFsuL6zqai.RrdQJQkp/HrzAwkoEKK', 'user', NULL, 'registered', '2023-06-21', NULL, NULL, NULL, 0, '723651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/front/img/avatar.png', 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, 'USD', 'live', NULL, NULL, NULL, NULL, 1, 1, NULL, '30', NULL, 0, '2023-06-21 22:52:25'),
(7, 0, 'Juan Perez', NULL, 'Doctorado en médico cirujano y partero', 'juan-perez963', 'desarrollo@yocontigo-it.com', 'juan-perez', '$2y$10$h6zmsgLCIYOIisvHnI4aH.w9nCRcVlNK7x1TfBa7VkBYb4kW1mGjC', 'user', NULL, 'registered', '2023-06-21', 'uploads/files/qrcode_1115698069.png', '3312275426', '', 0, '208176', '', '', 'https://www.facebook.com/', 'https://www.twitter.com/', '', '', 'uploads/thumbnail/FjQL7hGX0AEaQGw_thumb-200x133.png', 'uploads/medium/FjQL7hGX0AEaQGw_medium-1000x666.png', 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, NULL, 1, 120, 'Tijuana', 'USD', 'live', 'Aboutme', 15, NULL, NULL, 0, 0, 'Doctor general', '30', 'uploads/thumbnail/Logo_Mesa_de_trabajo_1_copia_4_thumb-199x199.png', 1, '2023-06-21 22:53:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verification_files`
--

CREATE TABLE `verification_files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `verification_files`
--

INSERT INTO `verification_files` (`id`, `user_id`, `name`, `file`, `created_at`) VALUES
(1, 2, 'Cedula profesional', 'uploads/files/files_16863606976483d27974fd8.jpg', '2023-06-10 07:31:37'),
(2, 3, 'Cedula profesional', 'uploads/files/files_168659237164875b7301f93.png', '2023-06-12 23:52:52'),
(3, 5, 'Cedula profesional', 'uploads/files/files_16872813016491de95d04ca.jpg', '2023-06-20 23:15:02'),
(4, 7, 'Cedula profesional', 'uploads/files/files_168736642464932b1811e6c.png', '2023-06-21 22:53:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workflow`
--

CREATE TABLE `workflow` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `workflow`
--

INSERT INTO `workflow` (`id`, `title`, `image`, `details`) VALUES
(1, 'Elija un plan', 'assets/front/img/plan.svg', 'Elige tu plan de acuerdo a tus necesidades'),
(2, 'Paga', 'assets/front/img/payment.svg', 'Pagado a través de pasarelas de pago en línea'),
(3, 'Comienza a trabajar', 'assets/front/img/work.svg', 'Comience a usar y explore las características');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `additional_advises`
--
ALTER TABLE `additional_advises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `advises`
--
ALTER TABLE `advises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `advise_investigations`
--
ALTER TABLE `advise_investigations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `assaign_days`
--
ALTER TABLE `assaign_days`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `assign_time`
--
ALTER TABLE `assign_time`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chamber`
--
ALTER TABLE `chamber`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chamber_category`
--
ALTER TABLE `chamber_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `diagnosis_reports`
--
ALTER TABLE `diagnosis_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diagonosis`
--
ALTER TABLE `diagonosis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evisit_settings`
--
ALTER TABLE `evisit_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `feature_assaign`
--
ALTER TABLE `feature_assaign`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lang_values`
--
ALTER TABLE `lang_values`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `patientses`
--
ALTER TABLE `patientses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_user`
--
ALTER TABLE `payment_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prescription_items`
--
ALTER TABLE `prescription_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pre_advice`
--
ALTER TABLE `pre_advice`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pre_ad_advices`
--
ALTER TABLE `pre_ad_advices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pre_diagonosis`
--
ALTER TABLE `pre_diagonosis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pre_investigation`
--
ALTER TABLE `pre_investigation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `site_contacts`
--
ALTER TABLE `site_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `verification_files`
--
ALTER TABLE `verification_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `workflow`
--
ALTER TABLE `workflow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `additional_advises`
--
ALTER TABLE `additional_advises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `advises`
--
ALTER TABLE `advises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `advise_investigations`
--
ALTER TABLE `advise_investigations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `assaign_days`
--
ALTER TABLE `assaign_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `assign_time`
--
ALTER TABLE `assign_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chamber`
--
ALTER TABLE `chamber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `chamber_category`
--
ALTER TABLE `chamber_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT de la tabla `diagnosis_reports`
--
ALTER TABLE `diagnosis_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diagonosis`
--
ALTER TABLE `diagonosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `evisit_settings`
--
ALTER TABLE `evisit_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `feature_assaign`
--
ALTER TABLE `feature_assaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de la tabla `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lang_values`
--
ALTER TABLE `lang_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT de la tabla `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `patientses`
--
ALTER TABLE `patientses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `payment_user`
--
ALTER TABLE `payment_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prescription_items`
--
ALTER TABLE `prescription_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pre_advice`
--
ALTER TABLE `pre_advice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pre_ad_advices`
--
ALTER TABLE `pre_ad_advices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pre_diagonosis`
--
ALTER TABLE `pre_diagonosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pre_investigation`
--
ALTER TABLE `pre_investigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `site_contacts`
--
ALTER TABLE `site_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `verification_files`
--
ALTER TABLE `verification_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `workflow`
--
ALTER TABLE `workflow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
