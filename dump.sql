-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 07 Maj 2017, 15:49
-- Wersja serwera: 5.1.73
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `ania_projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned DEFAULT NULL,
  `contact_photo` text COLLATE utf8_polish_ci,
  `contact_name` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_lastname` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_email_1` varchar(75) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_email_2` varchar(75) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_email_3` varchar(75) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_phone_1` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_phone_2` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_phone_3` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_profession` varchar(25) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_address` varchar(75) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_postal` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `contact_city` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `contact`
--

INSERT INTO `contact` (`id`, `id_user`, `contact_photo`, `contact_name`, `contact_lastname`, `contact_email_1`, `contact_email_2`, `contact_email_3`, `contact_phone_1`, `contact_phone_2`, `contact_phone_3`, `contact_profession`, `contact_address`, `contact_postal`, `contact_city`) VALUES
(1, 1, '\n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', 'Jan', 'Niezbędny', 'email1@interia.pl', 'email2@interia.pl', 'email3@interia.pl', '+481231231', '+481111111', '+482222222', 'Hydraulik', 'Warszawa', '11-222', 'Warszawa'),
(2, 1, NULL, 'Jan', 'Niezbędny', 'email1@interia.pl', 'email2@interia.pl', 'email3@interia.pl', '+481231231', '+481111111', '+482222222', 'Hydraulik', 'Warszawa', '11-222', 'Warszawa'),
(3, 1, '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', 'Jan', 'Niezbędny', 'email1@interia.pl', 'email2@interia.pl', 'email3@interia.pl', '+481231231', '+481111111', '+482222222', 'Hydraulik', 'Warszawa', '11-222', 'Warszawa'),
(4, 1, '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCAG7AfcDASIAAhEBAxEB/8QAHQABAAIDAQEBAQAAAAAAAAAAAAMEAQIFBggHCf/EAD0QAAEEAQMCBAQEBgEDBAIDAAEAAgMRBBIhMQVBBiJRYQcTcYEUMpGhCCNCscHRFSRS4TNDU2Im8GOT8f/EABcBAQEBAQAAAAAAAAAAAAAAAAABAgP/xAAgEQEBAQADAQEBAQEBAQAAAAAAARECITFBElEiMmFx/9oADAMBAAIRAxEAPwD5UREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBEWUGEVyHpubM3VHizOb66DS6WH4S65mEDH6dM8n0ooOCi9tj/DDxbOLZ0jIA9Sx3+lad8JPFzC0O6ZLqO4AaT+6uJsfn6yv0AfCXxYD/ADOnTNb66CVXyPhd4ri3HS8hzfX5Th/hMNjwyL1M3gLxLEPP0nK//rd/pcrK6B1XFJGRgTsI5tqmGxy0U0mNPGCZIZGgdy0gKFFEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERARFmkGEXf6J4U6v1eeOPGw5af3LT/AG5K/avBHwMYflz9bd3vS7n9OP1tMTXz7i4s+U/RjQySu9Gtte28M/C3xF13S5mK+KI35i2xt78fuvqrovgToXSWtGNhNkcOHSgO/aqXqIoWRsDWMDQOwFIvb596F8AI2Fp6rkscNidJJP8Agf3X6H0X4S+Genlv/TOlrs4gD9gF7t+QWyBgYT7qVkhI43TTFDG8M9Ixmt+T0/Fbp4Pym3+tK58jHgr5cUbfo0BbOcb5Wrm2Bd0mrgCOwACkb5nDuogdHO6CU70N1DE5b20grYMaQbpR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', 'ĄĘŚĆŹŃÓŁ', 'ĄĘŚĆŹŃÓŁ', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  KEY `login_action` (`login`,`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`) VALUES
(1, 'ania', '$2y$10$untGnotsNKZVuODyNg2vAu6nhEcbzPOLtqxFcqtTADLExSqyxUN2y', 'ania@ania.xin.com.pl');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
