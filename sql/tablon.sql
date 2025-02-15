-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2014 a las 17:42:30
-- Versión del servidor: 5.5.8-log
-- Versión de PHP: 5.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tablon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE IF NOT EXISTS `anuncio` (
`id_anuncio` int(10) unsigned NOT NULL,
  `id_imagenes` varchar(100) NOT NULL,
  `titulo_anuncio` varchar(200) NOT NULL,
  `cuerpo_anuncio` text NOT NULL,
  `id_provincias` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`id_anuncio`, `id_imagenes`, `titulo_anuncio`, `cuerpo_anuncio`, `id_provincias`) VALUES
(1, '', 'vendo moto', 'seminueva muy pocos kilometros', 8),
(2, '', 'coche de ocasiÃ³n', 'Alfa romeo verde metalizado nuevo 20.000 euros', 7),
(3, '', 'vendo una cabra', 'cabra con 120 aÃ±os, semi nueva', 1),
(4, '', 'movil', 's-cuatro con seis meses nuevo 150 euros', 7),
(5, '', 'traje cacheta', 'roto por todas partes', 4),
(6, '', 'chandal viejo', 'roido por los ratones', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
`id_provincias` int(10) unsigned NOT NULL,
  `nombre_provincias` varchar(200) NOT NULL,
  `imagen_provincia` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id_provincias`, `nombre_provincias`, `imagen_provincia`) VALUES
(1, 'Sevilla', 'sevilla.gif'),
(3, 'Huelva', ''),
(4, 'Cadiz', 'cadiz.gif'),
(5, 'Granada', ''),
(6, 'Málaga', 'malaga.gif'),
(7, 'Cordoba', 'cordoba.gif'),
(8, 'Almería', 'almeria.gif'),
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
 ADD PRIMARY KEY (`id_anuncio`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
 ADD PRIMARY KEY (`id_provincias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
MODIFY `id_anuncio` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
MODIFY `id_provincias` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
