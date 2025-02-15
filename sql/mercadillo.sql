-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2014 a las 23:47:27
-- Versión del servidor: 5.6.15-log
-- Versión de PHP: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mercadillo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guitarwars`
--

CREATE TABLE IF NOT EXISTS `guitarwars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(32) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ciudad` varchar(32) NOT NULL DEFAULT 'Pilas',
  `provincia` varchar(32) NOT NULL DEFAULT 'Sevilla',
  `categoria` varchar(32) DEFAULT NULL,
  `marca` varchar(32) DEFAULT NULL,
  `modelo` varchar(32) DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `kilometros` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `screenshot` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Volcado de datos para la tabla `guitarwars`
--

INSERT INTO `guitarwars` (`id`, `date`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `precio`, `descripcion`, `screenshot`) VALUES
(21, '2015-10-29 22:50:46', 'JosÃ© Cruz', 657360180, 'Pilas', 'Sevilla', 'Programador.', '', '', 0, 0, 0, 'Esta web estÃ¡ pensada para todo el que desee poner un anuncio gratis, ya seas una empresa, un profesional o un particular. En este sitio puedes hacer publicidad de tu empresa, buscar empleo, vender o comprar algo, etc.', 'PB081762.JPG'),
(36, '2014-11-04 19:22:30', 'Juan', 679404518, 'Pilas', 'Sevilla', 'Bicicleta', 'Rockrider', '', 0, 0, 500, 'Seminueva.', 'IMG028.jpg'),
(20, '2014-10-22 21:51:14', 'Pepe Cruz', 657360180, 'Pilas', 'Sevilla', 'Motos', 'Keeway', 'Supershadow', 250, 7000, 1300, 'Vendo esta moto tipo custom, estÃ¡ nueva, funciona perfectamente, sin golpes, siempre en garaje, regalo pitÃ³n, casco, flecos del manillar y alforjas de cuero hechas a mano, varios juegos de llaves, ITV pasada, vÃ¡lida hasta 04/11/2015. Atiendo whatsapp. Color negra.', 'IMG_20141020_191154.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
