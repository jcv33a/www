-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Servidor: db551314202.db.1and1.com
-- Tiempo de generación: 25-01-2015 a las 15:58:39
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
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `id_provincias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_provincias` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `imagen_provincia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_provincias`,`nombre_provincias`),
  KEY `nombre_provincias` (`nombre_provincias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id_provincias`, `nombre_provincias`, `imagen_provincia`) VALUES
(1, 'Sevilla', ''),
(3, 'Huelva', ''),
(4, 'Cadiz', ''),
(5, 'Granada', ''),
(6, 'Málaga', ''),
(7, 'Cordoba', ''),
(8, 'Almería', ''),
(9, 'Jaen', ''),
(10, 'Álava', ''),
(11, 'Albacete', ''),
(12, 'Asturias', ''),
(13, 'Ávila', ''),
(14, 'Badajoz', ''),
(15, 'Barcelona', ''),
(16, 'Burgos', ''),
(17, 'Cáceres', ''),
(18, 'Cantabria', ''),
(19, 'Castellón', ''),
(20, 'Ciudad Real', ''),
(21, 'La Coruña', ''),
(22, 'Cuenca', ''),
(23, 'Gerona', ''),
(24, 'Guadalajara', ''),
(25, 'Guipúzcoa', ''),
(26, 'Huesca', ''),
(27, 'Islas Baleares', ''),
(28, 'León', ''),
(29, 'Lérida', ''),
(30, 'Lugo', ''),
(31, 'Madrid', ''),
(32, 'Murcia', ''),
(33, 'Navarra', ''),
(34, 'Orense', ''),
(35, 'Palencia', ''),
(36, 'Las Palmas', ''),
(37, 'Pontevedra', ''),
(38, 'La Rioja', ''),
(39, 'Salamanca', ''),
(40, 'Segovia', ''),
(41, 'Soria', ''),
(42, 'Tarragona', ''),
(43, 'Santa Cruz de Tenerife', ''),
(44, 'Teruel', ''),
(45, 'Toledo', ''),
(46, 'Valencia', ''),
(47, 'Valladolid', ''),
(48, 'Vizcaya', ''),
(49, 'Zamora', ''),
(50, 'Zaragoza', ''),
(51, 'Melilla', ''),
(52, 'Ceuta', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
