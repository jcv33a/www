-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Servidor: db555808602.db.1and1.com
-- Tiempo de generación: 07-12-2014 a las 18:18:41
-- Versión del servidor: 5.1.73-log
-- Versión de PHP: 5.4.35-0+deb7u2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db555808602`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE IF NOT EXISTS `anuncio` (
  `id_anuncio` int(11) NOT NULL,
  `id_provincias` int(11) NOT NULL,
  `id_imagenes` varchar(100) CHARACTER SET latin1 NOT NULL,
  `titulo_anuncio` varchar(200) CHARACTER SET latin1 NOT NULL,
  `cuerpo_anuncio` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_anuncio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guitarwars`
--

CREATE TABLE IF NOT EXISTS `guitarwars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `id_provincias` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ciudad` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `provincia` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `categoria` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `marca` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `modelo` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `kilometros` int(11) DEFAULT NULL,
  `año` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `screenshot` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=109 ;

--
-- Volcado de datos para la tabla `guitarwars`
--

INSERT INTO `guitarwars` (`id`, `date`, `user_id`, `id_provincias`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `año`, `precio`, `descripcion`, `screenshot`) VALUES
(36, '2014-11-04 19:22:30', 0, 0, 'Juan', 679404518, 'Pilas', 'Sevilla', 'bicicletas', '', '', 0, 0, 0, 0, 'Bicicleta Rockrider seminueva, 500 euros.', 'IMG028.jpg'),
(20, '2014-10-22 21:51:14', 0, 0, 'Pepe Cruz', 657360180, 'Pilas', 'Sevilla', 'motos', '', '', 0, 0, 0, 0, 'Vendo esta moto tipo custom, estÃ¡ nueva, funciona perfectamente, sin golpes, siempre en garaje, regalo pitÃ³n, casco, flecos del manillar y alforjas de cuero hechas a mano, varios juegos de llaves, ITV pasada, vÃ¡lida hasta 04/11/2015. Atiendo whatsapp. Color negra, tiene 7000 Km, es de 250 cc, marca Keeway, modelo Supershadow, precio 1500 euros.', 'IMG_20141020_191154.jpg'),
(45, '2014-11-06 11:13:45', 0, 0, 'Bar CafeterÃ­a La Soledad', 690269386, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Bar CafeterÃ­a la Soledad, comida casera de calidad. Estamos en Pilas en la Calle Granada, urbanizaciÃ³n La Soledad, frente a la tienda de baÃ±os de los Hermanos GÃ³mez. Tlf: 690238693.', 'IMG_20141106_115112.jpg'),
(46, '2014-11-07 16:48:02', 0, 0, 'PILAS FABRICS', 654340213, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'OFERTA LIMITADA: Ponemos un numero limitado de SOFÃS+MESA por 950â‚¬ DETALLES DE LA PROMOCIÃ“N : SOFÃS *SofÃ¡s cheslong de dos medidas- 275 o 255x155 *Asientos deslizantes y cabecero reclinable *CanapÃ© en la cheslong *Tejido a elegir del catalogo ELIXIR-PRADA O PORTOFINO. Tejido con ACUALINE-(antimanchas) *MESA: *Mesa de forja de 120*70 con cristal *Mesa elevable en 3 alturas ( 70/60/45) *Adaptacion para brasero o radiador *Varios colores a elegir. Estamos en UrbanizaciÃ³n la Soledad, esquina de la calle Granada, a la entrada de Pilas.', 'M-Oriol-1f.jpg'),
(53, '2014-11-09 12:18:05', 0, 0, 'Mario ', 685622870, 'Pilas', 'Sevilla', 'videojuegos', '', '', 0, 0, 0, 0, 'Juego ps3 dragonball, precio 15 euros.', 'IMG_20141109_131236.jpg'),
(54, '2014-11-09 19:22:37', 0, 0, 'Juan ', 606255989, 'Pilas', 'Sevilla', 'empleo', '', '', 0, 0, 0, 0, 'Pintor profesional, experiencia, seriedad, presupuestos sin compromiso. ', 'IMG-20141106-WA0003.jpg'),
(49, '2014-11-08 23:26:04', 0, 0, 'Baldomero Telecomunicaciones', 654087556, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0005.jpg'),
(50, '2014-11-08 23:27:45', 0, 0, 'Baldomero Telecomunicaciones', 654087556, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0002.jpg'),
(51, '2014-11-08 23:28:58', 0, 0, 'Baldomero Telecomunicaciones', 654087556, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0003.jpg'),
(52, '2014-11-08 23:31:15', 0, 0, 'Baldomero Telecomunicaciones', 654087556, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0004.jpg'),
(56, '2014-11-12 09:50:54', 0, 0, 'Cristobal', 616107800, 'Pilas', 'Sevilla', 'coches', '', '', 0, 0, 0, 0, 'FULL EQUIPE Y PERFECTO ESTADO DE CONSERVACION.\r\nPEUGEOT - 207 C. C.\r\nVendo peugeot 207 cc cabriolet perfecto estado de conservacion sensor de aparcamiento , climatizador bizona , neumaticos nuevos , todas las revisiones al dia , mejor ver 616 10 78 00. Color rojo, 56000 Km, precio 6300 euros, es de 2008.', 'PB040117.JPG'),
(57, '2014-11-12 09:31:27', 0, 0, 'Mario', 685622870, 'Pilas', 'Sevilla', 'videojuegos', '', '', 0, 0, 0, 0, 'Gran juego ps3 de la saga call of duty en concreto modern warfare 3 funciona perfectamente con posibilidad de probarlo, precio 20 euros.', 'IMG_20141112_094605_1.jpg'),
(58, '2014-11-12 09:35:55', 0, 0, 'Mario', 685622870, 'Pilas', 'Sevilla', 'videojuegos', '', '', 0, 0, 0, 0, 'Juego ps3 need for speed hot pursuit funciona perfectamente puedes probarlo, precio 15 euros.', 'IMG_20141112_095804.jpg'),
(62, '2014-11-14 22:32:30', 0, 0, 'JosÃ© Manuel', 666882641, 'Pilas', 'Sevilla', 'motos', '', '', 0, 0, 0, 0, 'Vendo esta maxiscooter, 300 cc, Ãºltimo modelo, aÃ±o 2012, completamente nueva, impecable, muy cÃ³moda y manejable con solo 5800 km y dos aÃ±os porque quiero aumentar de cilindrada . atiendo whatsapp (estoy interesado bmw f800r). Color blanca, 5800 Km, precio 2899 euros, es una SYM GTS I JOYMAX.', 'IMG-20141110-WA0001.jpg'),
(68, '2014-11-17 10:25:28', 0, 0, 'Hyundai Pilas', 699265451, 'Pilas', 'Sevilla', 'coches', '', '', 0, 0, 0, 0, '5 aÃ±os de asistencia en viaje 24 horas\r\nAirbag conductor y acompaÃ±ante\r\nAirbags de cortina (plazas delanteras y traseras)\r\nAirbags laterales delanteros\r\nAnclajes Isofix y Top Tether\r\nAsiento del conductor regulable en altura\r\nAsientos delanteros con anti latigazo cervical\r\nBarras de protecciÃ³n lateral\r\nBluetooth integrado con reconocimiento de voz y mandos en el volante\r\nCambio de 6 velocidades\r\nCierre centralizado remoto con alarma\r\nCierre de puertas automÃ¡tico con el vehÃ­culo en marcha (programable)\r\nCierre de seguridad infantil para las puertas traseras\r\nCinturones delanteros con pretensores y ajustables en altura\r\nClimatizador manual con filtro de aire\r\nControl de estabilidad ESP con VSMS\r\nControl de tracciÃ³n TCS\r\nDirecciÃ³n asistida\r\nEco Indicador de conducciÃ³n eficiente (propuesta de marcha)\r\nElevalunas elÃ©ctricos delanteros\r\nElevalunas elÃ©ctricos traseros\r\nEmbellecedor para llantas de acero\r\nEntrada de audio con conexiones USB y Aux\r\nEquipo de audio con Radio CD lector de MP3\r\nEstructura de seguridad reforzada\r\nFaros antiniebla delanteros\r\nFrenos ABS + EBD + BAS\r\nGarantÃ­a de 12 aÃ±os anticorrosiÃ³n\r\nGarantÃ­a de 5 aÃ±os sin lÃ­mite de kilÃ³metros\r\nGuantera iluminada y refrigerada\r\nIntermitentes automÃ¡ticos de triple seÃ±al\r\nKit de fumador\r\nLlave plegable multifunciÃ³n con mando a distancia\r\nLuces de frenada de emergencia\r\nLuces de lectura de mapa & portagafas\r\nLuces delanteras diurnas de LED\r\nLuz iluminaciÃ³n del maletero\r\nMandos en el volante del equipo de audio\r\nManetas exteriores del color de la carrocerÃ­a\r\nOrdenador de viaje\r\nRegulador elÃ©ctrico de altura de faros desde el interior\r\nRespaldo trasero abatible 60/40\r\nRetrovisores convexos calefactables\r\nRetrovisores exteriores del color de la carrocerÃ­a\r\nRetrovisores exteriores elÃ©ctricos\r\nRueda de repuesto space saver. \r\nEstamos en la calle Santa Angela de la Cruz en Pilas.', 'DSC_0202.JPG'),
(97, '2014-11-25 13:48:28', 0, 0, 'pepe', 657360180, 'Pilas', 'Sevilla', 'inmobiliaria', '', '', 0, 0, 0, 0, 'AquÃ­ puede poner gratis su anuncio inmobiliario.', 'inmobiliaria2.jpg'),
(96, '2014-11-23 15:54:48', 0, 0, 'manuel', 665451665, 'Pilas', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'Ofrezco boxer de dos aÃ±os para montas. Pesa 40 kilos y tiene muy buena morfologÃ­a. El precio es 70 euros. Pueden contactar por WhatsApp.  Saludos', '20141112_144749.jpg'),
(99, '2014-11-27 13:54:00', 0, 0, 'anunciospilas', 657360180, 'Sevilla', 'Sevilla', 'empleo', '', '', 0, 0, 0, 0, 'AquÃ­ puedes poner gratis tus anuncios de empleo.', 'empleos.png'),
(100, '2014-11-27 21:03:28', 0, 0, 'anunciospilas', 657360180, 'Pilas', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'AquÃ­ puedes poner gratis tu anuncio de mascotas.', 'animales.png'),
(101, '2014-11-29 23:38:40', 0, 0, 'Antonio Cachola', 692205275, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'CarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable. \r\nEstructuras. \r\nCercados.\r\nPolÃ­gono Industrial El Pilar, Calle Torno, s/n.\r\n41840 Pilas (Sevilla).\r\nhierroscachola@gmail.com\r\n692205275', 'prodotti-81476-relebc1409d88c04419bacce5ac464e1c7e.jpg'),
(102, '2014-11-29 23:50:08', 0, 0, 'Video Club El paseo', 687852479, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Paseo de la independencia 102, \r\nPilas (Sevilla).\r\n687 852 479', '1231659_396775377089455_460705551_n.jpg'),
(107, '2014-12-04 19:15:04', 0, 0, 'Videl Club El paseo', 687852479, 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Paseo de la Independencia 102,\r\nPilas (Sevilla).\r\n687852479', 'IMG_20141116_130935-1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_category`
--

CREATE TABLE IF NOT EXISTS `mismatch_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(48) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `mismatch_category`
--

INSERT INTO `mismatch_category` (`category_id`, `name`) VALUES
(1, 'Appearance'),
(2, 'Entertainment'),
(3, 'Food'),
(4, 'People'),
(5, 'Activities');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_response`
--

CREATE TABLE IF NOT EXISTS `mismatch_response` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `response` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`response_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=376 ;

--
-- Volcado de datos para la tabla `mismatch_response`
--

INSERT INTO `mismatch_response` (`response_id`, `user_id`, `topic_id`, `response`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 1, 3, 2),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 2),
(8, 1, 8, 2),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1),
(12, 1, 12, 2),
(13, 1, 13, 1),
(14, 1, 14, 2),
(15, 1, 15, 1),
(16, 1, 16, 2),
(17, 1, 17, 1),
(18, 1, 18, 1),
(19, 1, 19, 2),
(20, 1, 20, 1),
(21, 1, 21, 1),
(22, 1, 22, 2),
(23, 1, 23, 1),
(24, 1, 24, 2),
(25, 1, 25, 1),
(26, 7, 1, 1),
(27, 7, 2, 2),
(28, 7, 3, 1),
(29, 7, 4, 2),
(30, 7, 5, 1),
(31, 7, 6, 2),
(32, 7, 7, 1),
(33, 7, 8, 1),
(34, 7, 9, 2),
(35, 7, 10, 2),
(36, 7, 11, 1),
(37, 7, 12, 2),
(38, 7, 13, 1),
(39, 7, 14, 1),
(40, 7, 15, 2),
(41, 7, 16, 1),
(42, 7, 17, 2),
(43, 7, 18, 2),
(44, 7, 19, 2),
(45, 7, 20, 1),
(46, 7, 21, 2),
(47, 7, 22, 2),
(48, 7, 23, 1),
(49, 7, 24, 1),
(50, 7, 25, 2),
(51, 2, 1, 1),
(52, 2, 2, 1),
(53, 2, 3, 2),
(54, 2, 4, 2),
(55, 2, 5, 2),
(56, 2, 6, 2),
(57, 2, 7, 2),
(58, 2, 8, 2),
(59, 2, 9, 1),
(60, 2, 10, 1),
(61, 2, 11, 2),
(62, 2, 12, 1),
(63, 2, 13, 1),
(64, 2, 14, 2),
(65, 2, 15, 2),
(66, 2, 16, 2),
(67, 2, 17, 1),
(68, 2, 18, 2),
(69, 2, 19, 1),
(70, 2, 20, 2),
(71, 2, 21, 1),
(72, 2, 22, 2),
(73, 2, 23, 2),
(74, 2, 24, 1),
(75, 2, 25, 1),
(76, 11, 1, 1),
(77, 11, 2, 1),
(78, 11, 3, 1),
(79, 11, 4, 1),
(80, 11, 5, 1),
(81, 11, 6, 2),
(82, 11, 7, 1),
(83, 11, 8, 1),
(84, 11, 9, 2),
(85, 11, 10, 2),
(86, 11, 11, 2),
(87, 11, 12, 1),
(88, 11, 13, 1),
(89, 11, 14, 1),
(90, 11, 15, 2),
(91, 11, 16, 1),
(92, 11, 17, 2),
(93, 11, 18, 2),
(94, 11, 19, 1),
(95, 11, 20, 2),
(96, 11, 21, 2),
(97, 11, 22, 1),
(98, 11, 23, 2),
(99, 11, 24, 1),
(100, 11, 25, 2),
(101, 12, 1, 2),
(102, 12, 2, 2),
(103, 12, 3, 1),
(104, 12, 4, 1),
(105, 12, 5, 1),
(106, 12, 6, 2),
(107, 12, 7, 2),
(108, 12, 8, 1),
(109, 12, 9, 2),
(110, 12, 10, 1),
(111, 12, 11, 1),
(112, 12, 12, 2),
(113, 12, 13, 2),
(114, 12, 14, 2),
(115, 12, 15, 2),
(116, 12, 16, 1),
(117, 12, 17, 1),
(118, 12, 18, 2),
(119, 12, 19, 1),
(120, 12, 20, 1),
(121, 12, 21, 1),
(122, 12, 22, 2),
(123, 12, 23, 1),
(124, 12, 24, 2),
(125, 12, 25, 2),
(126, 8, 1, 2),
(127, 8, 2, 2),
(128, 8, 3, 1),
(129, 8, 4, 1),
(130, 8, 5, 2),
(131, 8, 6, 1),
(132, 8, 7, 1),
(133, 8, 8, 2),
(134, 8, 9, 1),
(135, 8, 10, 1),
(136, 8, 11, 2),
(137, 8, 12, 2),
(138, 8, 13, 2),
(139, 8, 14, 2),
(140, 8, 15, 1),
(141, 8, 16, 1),
(142, 8, 17, 1),
(143, 8, 18, 2),
(144, 8, 19, 1),
(145, 8, 20, 1),
(146, 8, 21, 1),
(147, 8, 22, 1),
(148, 8, 23, 2),
(149, 8, 24, 2),
(150, 8, 25, 1),
(151, 3, 1, 1),
(152, 3, 2, 1),
(153, 3, 3, 1),
(154, 3, 4, 2),
(155, 3, 5, 2),
(156, 3, 6, 2),
(157, 3, 7, 1),
(158, 3, 8, 1),
(159, 3, 9, 2),
(160, 3, 10, 1),
(161, 3, 11, 1),
(162, 3, 12, 1),
(163, 3, 13, 1),
(164, 3, 14, 1),
(165, 3, 15, 1),
(166, 3, 16, 2),
(167, 3, 17, 2),
(168, 3, 18, 2),
(169, 3, 19, 1),
(170, 3, 20, 1),
(171, 3, 21, 1),
(172, 3, 22, 1),
(173, 3, 23, 1),
(174, 3, 24, 2),
(175, 3, 25, 2),
(176, 4, 1, 1),
(177, 4, 2, 2),
(178, 4, 3, 1),
(179, 4, 4, 1),
(180, 4, 5, 2),
(181, 4, 6, 1),
(182, 4, 7, 1),
(183, 4, 8, 2),
(184, 4, 9, 1),
(185, 4, 10, 2),
(186, 4, 11, 2),
(187, 4, 12, 1),
(188, 4, 13, 2),
(189, 4, 14, 2),
(190, 4, 15, 1),
(191, 4, 16, 1),
(192, 4, 17, 2),
(193, 4, 18, 1),
(194, 4, 19, 1),
(195, 4, 20, 2),
(196, 4, 21, 2),
(197, 4, 22, 1),
(198, 4, 23, 2),
(199, 4, 24, 1),
(200, 4, 25, 1),
(201, 5, 1, 2),
(202, 5, 2, 2),
(203, 5, 3, 2),
(204, 5, 4, 1),
(205, 5, 5, 1),
(206, 5, 6, 2),
(207, 5, 7, 2),
(208, 5, 8, 2),
(209, 5, 9, 1),
(210, 5, 10, 1),
(211, 5, 11, 2),
(212, 5, 12, 1),
(213, 5, 13, 2),
(214, 5, 14, 1),
(215, 5, 15, 2),
(216, 5, 16, 2),
(217, 5, 17, 1),
(218, 5, 18, 1),
(219, 5, 19, 2),
(220, 5, 20, 1),
(221, 5, 21, 2),
(222, 5, 22, 2),
(223, 5, 23, 1),
(224, 5, 24, 1),
(225, 5, 25, 1),
(226, 6, 1, 2),
(227, 6, 2, 1),
(228, 6, 3, 2),
(229, 6, 4, 1),
(230, 6, 5, 2),
(231, 6, 6, 1),
(232, 6, 7, 1),
(233, 6, 8, 1),
(234, 6, 9, 2),
(235, 6, 10, 1),
(236, 6, 11, 1),
(237, 6, 12, 2),
(238, 6, 13, 2),
(239, 6, 14, 2),
(240, 6, 15, 1),
(241, 6, 16, 2),
(242, 6, 17, 1),
(243, 6, 18, 1),
(244, 6, 19, 2),
(245, 6, 20, 1),
(246, 6, 21, 1),
(247, 6, 22, 2),
(248, 6, 23, 2),
(249, 6, 24, 2),
(250, 6, 25, 1),
(251, 9, 1, 2),
(252, 9, 2, 1),
(253, 9, 3, 1),
(254, 9, 4, 2),
(255, 9, 5, 2),
(256, 9, 6, 2),
(257, 9, 7, 2),
(258, 9, 8, 2),
(259, 9, 9, 1),
(260, 9, 10, 1),
(261, 9, 11, 2),
(262, 9, 12, 1),
(263, 9, 13, 2),
(264, 9, 14, 1),
(265, 9, 15, 2),
(266, 9, 16, 1),
(267, 9, 17, 1),
(268, 9, 18, 1),
(269, 9, 19, 2),
(270, 9, 20, 1),
(271, 9, 21, 1),
(272, 9, 22, 2),
(273, 9, 23, 2),
(274, 9, 24, 1),
(275, 9, 25, 1),
(276, 10, 1, 1),
(277, 10, 2, 2),
(278, 10, 3, 2),
(279, 10, 4, 2),
(280, 10, 5, 2),
(281, 10, 6, 2),
(282, 10, 7, 1),
(283, 10, 8, 2),
(284, 10, 9, 2),
(285, 10, 10, 1),
(286, 10, 11, 1),
(287, 10, 12, 2),
(288, 10, 13, 1),
(289, 10, 14, 2),
(290, 10, 15, 1),
(291, 10, 16, 1),
(292, 10, 17, 1),
(293, 10, 18, 1),
(294, 10, 19, 1),
(295, 10, 20, 1),
(296, 10, 21, 1),
(297, 10, 22, 1),
(298, 10, 23, 1),
(299, 10, 24, 2),
(300, 10, 25, 2),
(301, 13, 1, 2),
(302, 13, 2, 1),
(303, 13, 3, 2),
(304, 13, 4, 2),
(305, 13, 5, NULL),
(306, 13, 6, 1),
(307, 13, 7, 1),
(308, 13, 8, 2),
(309, 13, 9, 1),
(310, 13, 10, 1),
(311, 13, 11, 2),
(312, 13, 12, 1),
(313, 13, 13, 1),
(314, 13, 14, 1),
(315, 13, 15, 2),
(316, 13, 16, 2),
(317, 13, 17, 1),
(318, 13, 18, 2),
(319, 13, 19, 1),
(320, 13, 20, 1),
(321, 13, 21, 2),
(322, 13, 22, 2),
(323, 13, 23, 1),
(324, 13, 24, 1),
(325, 13, 25, 2),
(326, 14, 1, 2),
(327, 14, 2, 2),
(328, 14, 3, 2),
(329, 14, 4, 2),
(330, 14, 5, 1),
(331, 14, 6, 1),
(332, 14, 7, 1),
(333, 14, 8, 2),
(334, 14, 9, 1),
(335, 14, 10, 1),
(336, 14, 11, 1),
(337, 14, 12, 1),
(338, 14, 13, 2),
(339, 14, 14, 2),
(340, 14, 15, 2),
(341, 14, 16, 2),
(342, 14, 17, 1),
(343, 14, 18, 2),
(344, 14, 19, 1),
(345, 14, 20, 1),
(346, 14, 21, 2),
(347, 14, 22, 2),
(348, 14, 23, 2),
(349, 14, 24, 1),
(350, 14, 25, 2),
(351, 15, 1, 2),
(352, 15, 2, 2),
(353, 15, 3, 2),
(354, 15, 4, 1),
(355, 15, 5, 1),
(356, 15, 6, 1),
(357, 15, 7, 2),
(358, 15, 8, 1),
(359, 15, 9, 2),
(360, 15, 10, 2),
(361, 15, 11, 2),
(362, 15, 12, 2),
(363, 15, 13, 1),
(364, 15, 14, 2),
(365, 15, 15, 2),
(366, 15, 16, 2),
(367, 15, 17, 2),
(368, 15, 18, 2),
(369, 15, 19, 2),
(370, 15, 20, 2),
(371, 15, 21, 1),
(372, 15, 22, 1),
(373, 15, 23, 1),
(374, 15, 24, 2),
(375, 15, 25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_topic`
--

CREATE TABLE IF NOT EXISTS `mismatch_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(48) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `category` varchar(48) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_user`
--

CREATE TABLE IF NOT EXISTS `mismatch_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `password` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `first_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `last_name` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `city` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `picture` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `mismatch_user`
--

INSERT INTO `mismatch_user` (`user_id`, `username`, `password`, `join_date`, `first_name`, `last_name`, `gender`, `birthdate`, `city`, `state`, `picture`) VALUES
(1, 'sidneyk', '745c52f30f82d4323292dcca9eea0aee87feecc5', '2008-06-03 14:51:46', 'Sidney', 'Kelsow', 'F', '1984-07-19', 'Tempe', 'AZ', 'sidneypic.jpg'),
(2, 'nevilj', '12a20bcb5ed139a5f3fc808704897762cbab74ec', '2008-06-03 14:52:09', 'Nevil', 'Johansson', 'M', '1973-05-13', 'Reno', 'NV', 'nevilpic.jpg'),
(3, 'alexc', '676a6666682bd41bef5fd1c1f629fa233b1307a4', '2008-06-03 14:53:05', 'Alex', 'Cooper', 'M', '1974-09-13', 'Boise', 'ID', 'alexpic.jpg'),
(4, 'sdaniels', '1ff915f2fae864032e44cbe5a6cdd858500c9df7', '2008-06-03 14:58:40', 'Susannah', 'Daniels', 'F', '1977-02-23', 'Pasadena', 'CA', 'susannahpic.jpg'),
(5, 'ethelh', '53a56acb2a52f3815a2518e75029b071c298477a', '2008-06-03 15:00:37', 'Ethel', 'Heckel', 'F', '1943-03-27', 'Wichita', 'KS', 'ethelpic.jpg'),
(6, 'oklugman', 'df00f36c0b795c30a0409778d7f9db27a970f74f', '2008-06-03 15:00:48', 'Oscar', 'Klugman', 'M', '1968-06-04', 'Providence', 'RI', 'oscarpic.jpg'),
(7, 'belitac', '7c19dd287e03ae31ce190c4043b5a7f9795c41dc', '2008-06-03 15:01:08', 'Belita', 'Chevy', 'F', '1975-07-08', 'El Paso', 'TX', 'belitapic.jpg'),
(8, 'jasonf', '3da70cd115b7c3a7cebc2b5282706f07d185de9e', '2008-06-03 15:01:19', 'Jason', 'Filmington', 'M', '1969-09-24', 'Hollywood', 'CA', 'jasonpic.jpg'),
(9, 'dierdre', '08447be571e1c113f2f175472753ca5f5af454f3', '2008-06-03 15:01:51', 'Dierdre', 'Pennington', 'F', '1970-04-26', 'Cambridge', 'MA', 'dierdrepic.jpg'),
(10, 'baldpaul', '230dcb28e2d1dc19ec14990721e85cd5c5234245', '2008-06-03 15:02:02', 'Paul', 'Hillsman', 'M', '1964-12-18', 'Charleston', 'SC', 'paulpic.jpg'),
(11, 'jnettles', 'e511d793f532dbe0e0483538e11977f7b7c33b28', '2008-06-03 15:02:13', 'Johan', 'Nettles', 'M', '1981-11-03', 'Athens', 'GA', 'johanpic.jpg'),
(12, 'rubyr', '062e4a8476b1063e05caa69958e36a905f887619', '2008-06-03 15:02:24', 'Ruby', 'Reasons', 'F', '1972-09-18', 'Conundrum', 'AZ', 'rubypic.jpg'),
(13, 'theking', 'b4f283414a963c09f49cfde4a5eeba9752196247', '2008-06-05 14:19:20', 'Elmer', 'Priestley', 'M', '1979-01-08', 'Tupelo', 'MS', 'elmerpic.jpg'),
(14, 'owenb', '36be76e87571bf1566c6a388097c4e163df19ec9', '2008-06-26 08:25:48', 'Owen', 'Bugsby', 'M', '1982-06-22', 'Kokomo', 'IN', 'owenpic.jpg'),
(15, 'pepe', '965b38734b55904903e3f2e1589b99b7697a4546', '2014-12-01 20:37:41', 'Pepe', 'Cruz', 'M', '1972-05-29', 'Pilas', 'Se', 'Foto0266b.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `id_provincias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_provincias` varchar(200) CHARACTER SET latin1 NOT NULL,
  `imagen_provincia` varchar(100) CHARACTER SET latin1 NOT NULL,
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
