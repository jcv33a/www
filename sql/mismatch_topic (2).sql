-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Servidor: db551314202.db.1and1.com
-- Tiempo de generación: 25-01-2015 a las 15:58:06
-- Versión del servidor: 5.1.73-log
-- Versión de PHP: 5.4.36-0+deb7u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db551314202`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_topic`
--

CREATE TABLE IF NOT EXISTS `mismatch_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(48) COLLATE utf8_spanish_ci DEFAULT NULL,
  `category` varchar(48) COLLATE utf8_spanish_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `mismatch_topic`
--

INSERT INTO `mismatch_topic` (`topic_id`, `name`, `category`, `category_id`) VALUES
(1, 'Tattoos', 'Appearance', 1),
(2, 'Gold chains', 'Appearance', 1),
(3, 'Body piercings', 'Appearance', 1),
(4, 'Cowboy boots', 'Appearance', 1),
(5, 'Long hair', 'Appearance', 1),
(6, 'Reality TV', 'Entertainment', 2),
(7, 'Professional wrestling', 'Entertainment', 2),
(8, 'Horror movies', 'Entertainment', 2),
(9, 'Easy listening music', 'Entertinment', 2),
(10, 'The opera', 'Entertainment', 2),
(11, 'Sushi', 'Food', 3),
(12, 'Spam', 'Food', 3),
(13, 'Spicy food', 'Food', 3),
(14, 'Peanut butter & banana sandwiches', 'Food', 3),
(15, 'Martinis', 'Food', 3),
(16, 'Howard Stern', 'People', 4),
(17, 'Bill Gates', 'Peopel', 4),
(18, 'Barbara Streisand', 'People', 4),
(19, 'Hugh Hefner', 'People', 4),
(20, 'Martha Stewart', 'People', 4),
(21, 'Yoga', 'Activities', 5),
(22, 'Weightlifting', 'Activities', 5),
(23, 'Cube puzzles', 'Activities', 5),
(24, 'Karaoke', 'Activities', 5),
(25, 'Hiking', 'Activities', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
