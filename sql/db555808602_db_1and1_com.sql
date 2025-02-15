-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Servidor: db555808602.db.1and1.com
-- Tiempo de generación: 02-10-2015 a las 07:34:13
-- Versión del servidor: 5.1.73-log
-- Versión de PHP: 5.4.45-0+deb7u1

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
  `id_imagenes` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `titulo_anuncio` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `cuerpo_anuncio` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_anuncio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercios`
--

CREATE TABLE IF NOT EXISTS `comercios` (
  `co_id` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `co_nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `co_pais` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  UNIQUE KEY `co_id` (`co_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `comercios`
--

INSERT INTO `comercios` (`co_id`, `co_nombre`, `co_pais`) VALUES
('ESGR000002', 'PRUEBA 2', 'ESPAÑA'),
('ESGR000001', 'PRUEBA 1', 'ESPAÑA'),
('516', 'JUAN PEREZ', 'MEXICO'),
('984', 'ANTONIO RODRIGUEZ', 'MEXICO'),
('996', 'INDALECIO TRAVIANNI', 'ARGENTINA'),
('975', 'ABELARDO SAINZ', 'PERU'),
('111', 'JOSE TOLTACA', 'PERU'),
('332', 'RAIMUNDO ALONSO', 'ARGENTINA'),
('123', 'JUN JUANES', 'BRASIL'),
('585', 'JOAO PAMINHIO', 'BRASIL'),
('23432432', 'JOAQUIN DIAZ', 'ESPAÑA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guitarwars`
--

CREATE TABLE IF NOT EXISTS `guitarwars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `id_provincias` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `score` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(32) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `categoria` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `kilometros` int(11) DEFAULT NULL,
  `año` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `screenshot` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `screenshot2` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  `screenshot3` varchar(64) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=322 ;

--
-- Volcado de datos para la tabla `guitarwars`
--

INSERT INTO `guitarwars` (`id`, `date`, `user_id`, `id_provincias`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `año`, `precio`, `descripcion`, `screenshot`, `screenshot2`, `screenshot3`) VALUES
(36, '2015-02-17 22:45:53', 0, 0, 'Juan', '679404518', 'Pilas', 'Sevilla', 'bicicletas', '', '', 0, 0, 0, 0, 'Bicicleta Rockrider seminueva, 500 euros.', 'IMG028.jpg', '', NULL),
(20, '2015-02-03 16:32:51', 0, 0, 'Pepe', '657360180', 'Pilas', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo esta moto tipo custom, estÃ¡ nueva, funciona perfectamente, sin golpes, siempre en garaje, regalo pitÃ³n, casco, flecos del manillar y alforjas de cuero hechas a mano, varios juegos de llaves, ITV pasada, vÃ¡lida hasta 04/11/2015. Atiendo whatsapp. Color negra, tiene 7000 Km, es de 250 cc, marca Keeway, modelo Supershadow, precio 1500 euros.', 'IMG_20141020_191154.jpg', '', NULL),
(45, '2014-11-06 11:13:45', 0, 0, 'Bar CafeterÃ­a La Soledad', '690269386', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Bar CafeterÃ­a la Soledad, comida casera de calidad. Estamos en Pilas en la Calle Granada, urbanizaciÃ³n La Soledad, frente a la tienda de baÃ±os de los Hermanos GÃ³mez. Tlf: 690238693.', 'IMG_20141106_115112.jpg', '', NULL),
(46, '2015-02-04 06:14:39', 0, 0, 'PILAS FABRICS', '654340213', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'OFERTA LIMITADA: Ponemos un numero limitado de SOFÃS+MESA por 950â‚¬ DETALLES DE LA PROMOCIÃ“N : SOFÃS *SofÃ¡s cheslong de dos medidas- 275 o 255x155 *Asientos deslizantes y cabecero reclinable *CanapÃ© en la cheslong *Tejido a elegir del catalogo ELIXIR-PRADA O PORTOFINO. Tejido con ACUALINE-(antimanchas) *MESA: *Mesa de forja de 120*70 con cristal *Mesa elevable en 3 alturas ( 70/60/45) *Adaptacion para brasero o radiador *Varios colores a elegir. Estamos en UrbanizaciÃ³n la Soledad, esquina de la calle Granada, a la entrada de Pilas.', 'M-Oriol-1f.jpg', '', NULL),
(53, '2015-02-07 05:56:44', 0, 0, 'Mario ', '685622870', 'Pilas', 'Sevilla', 'juegos_videojuegos', '', '', 0, 0, 0, 0, 'Juego ps3 dragonball, precio 15 euros.', 'IMG_20141109_131236.jpg', '', NULL),
(54, '2014-11-09 19:22:37', 0, 0, 'Juan ', '606255989', 'Pilas', 'Sevilla', 'empleo', '', '', 0, 0, 0, 0, 'Pintor profesional, experiencia, seriedad, presupuestos sin compromiso. ', 'IMG-20141106-WA0003.jpg', '', NULL),
(49, '2015-02-04 06:14:58', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0005.jpg', '', NULL),
(50, '2014-11-08 23:27:45', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0002.jpg', '', NULL),
(51, '2015-02-04 06:16:18', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0003.jpg', '', NULL),
(52, '2015-02-04 06:16:00', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0004.jpg', '', NULL),
(56, '2014-11-12 09:50:54', 0, 0, 'Cristobal', '616107800', 'Pilas', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, 'FULL EQUIPE Y PERFECTO ESTADO DE CONSERVACION.\r\nPEUGEOT - 207 C. C.\r\nVendo peugeot 207 cc cabriolet perfecto estado de conservacion sensor de aparcamiento , climatizador bizona , neumaticos nuevos , todas las revisiones al dia , mejor ver 616 10 78 00. Color rojo, 56000 Km, precio 5500 euros, es de 2008.', 'PB040117.JPG', '', NULL),
(57, '2015-02-07 05:57:50', 0, 0, 'Mario', '685622870', 'Pilas', 'Sevilla', 'juegos_videojuegos', '', '', 0, 0, 0, 0, 'Gran juego ps3 de la saga call of duty en concreto modern warfare 3 funciona perfectamente con posibilidad de probarlo, precio 20 euros.', 'IMG_20141112_094605_1.jpg', '', NULL),
(58, '2015-02-07 05:57:14', 0, 0, 'Mario', '685622870', 'Pilas', 'Sevilla', 'juegos_videojuegos', '', '', 0, 0, 0, 0, 'Juego ps3 need for speed hot pursuit funciona perfectamente puedes probarlo, precio 15 euros.', 'IMG_20141112_095804.jpg', '', NULL),
(62, '2014-11-14 22:32:30', 0, 0, 'JosÃ© Manuel', '666882641', 'Pilas', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo esta maxiscooter, 300 cc, Ãºltimo modelo, aÃ±o 2012, completamente nueva, impecable, muy cÃ³moda y manejable con solo 5800 km y dos aÃ±os porque quiero aumentar de cilindrada . atiendo whatsapp (estoy interesado bmw f800r). Color blanca, 5800 Km, precio 2899 euros, es una SYM GTS I JOYMAX.', 'IMG-20141110-WA0001.jpg', '', NULL),
(68, '2014-11-17 10:25:28', 0, 0, 'Hyundai Pilas', '699265451', 'Pilas', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, '5 aÃ±os de asistencia en viaje 24 horas\r\nAirbag conductor y acompaÃ±ante\r\nAirbags de cortina (plazas delanteras y traseras)\r\nAirbags laterales delanteros\r\nAnclajes Isofix y Top Tether\r\nAsiento del conductor regulable en altura\r\nAsientos delanteros con anti latigazo cervical\r\nBarras de protecciÃ³n lateral\r\nBluetooth integrado con reconocimiento de voz y mandos en el volante\r\nCambio de 6 velocidades\r\nCierre centralizado remoto con alarma\r\nCierre de puertas automÃ¡tico con el vehÃ­culo en marcha (programable)\r\nCierre de seguridad infantil para las puertas traseras\r\nCinturones delanteros con pretensores y ajustables en altura\r\nClimatizador manual con filtro de aire\r\nControl de estabilidad ESP con VSMS\r\nControl de tracciÃ³n TCS\r\nDirecciÃ³n asistida\r\nEco Indicador de conducciÃ³n eficiente (propuesta de marcha)\r\nElevalunas elÃ©ctricos delanteros\r\nElevalunas elÃ©ctricos traseros\r\nEmbellecedor para llantas de acero\r\nEntrada de audio con conexiones USB y Aux\r\nEquipo de audio con Radio CD lector de MP3\r\nEstructura de seguridad reforzada\r\nFaros antiniebla delanteros\r\nFrenos ABS + EBD + BAS\r\nGarantÃ­a de 12 aÃ±os anticorrosiÃ³n\r\nGarantÃ­a de 5 aÃ±os sin lÃ­mite de kilÃ³metros\r\nGuantera iluminada y refrigerada\r\nIntermitentes automÃ¡ticos de triple seÃ±al\r\nKit de fumador\r\nLlave plegable multifunciÃ³n con mando a distancia\r\nLuces de frenada de emergencia\r\nLuces de lectura de mapa & portagafas\r\nLuces delanteras diurnas de LED\r\nLuz iluminaciÃ³n del maletero\r\nMandos en el volante del equipo de audio\r\nManetas exteriores del color de la carrocerÃ­a\r\nOrdenador de viaje\r\nRegulador elÃ©ctrico de altura de faros desde el interior\r\nRespaldo trasero abatible 60/40\r\nRetrovisores convexos calefactables\r\nRetrovisores exteriores del color de la carrocerÃ­a\r\nRetrovisores exteriores elÃ©ctricos\r\nRueda de repuesto space saver. \r\nEstamos en la calle Santa Angela de la Cruz en Pilas.', 'DSC_0202.JPG', '', NULL),
(97, '2015-02-03 16:38:38', 0, 0, 'pepe', '657360180', 'Pilas', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'AquÃ­ puede poner gratis su anuncio inmobiliario.', 'inmobiliaria2.jpg', '', NULL),
(96, '2014-11-23 15:54:48', 0, 0, 'manuel', '665451665', 'Escacena del Campo', 'Huelva', 'animales', '', '', 0, 0, 0, 0, 'Ofrezco boxer de dos aÃ±os para montas. Pesa 40 kilos y tiene muy buena morfologÃ­a. Pueden contactar por WhatsApp.  Saludos.', '20141112_144749.jpg', '', NULL),
(101, '2014-11-29 23:38:40', 0, 0, 'Antonio Cachola', '692205275', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'CarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable. \r\nEstructuras. \r\nCercados.\r\nPolÃ­gono Industrial El Pilar, Calle Torno, s/n.\r\n41840 Pilas (Sevilla).\r\nhierroscachola@gmail.com\r\n692205275', 'prodotti-81476-relebc1409d88c04419bacce5ac464e1c7e.jpg', '', NULL),
(102, '2014-11-29 23:50:08', 0, 0, 'Video Club El paseo', '687852479', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Paseo de la independencia 102, \r\nPilas (Sevilla).\r\n687 852 479', '1231659_396775377089455_460705551_n.jpg', '', NULL),
(103, '2014-12-01 19:47:50', 0, 0, 'Video Club El Paseo', '687852479', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, ' Paseo de la independencia 102, \r\nPilas (Sevilla).\r\n687 852 479', 'IMG_20141116_130935-1.jpg', '', NULL),
(104, '2015-02-04 07:07:21', 0, 0, 'Pilas Fabrics SofÃ¡s', '654340213', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'FÃ¡cil acceso, estamos en la entrada de Pilas si vienen por la autopista A-49 salida Pilas.', '1743623_715336258556675_2340538814895372576_n.jpg', '', NULL),
(105, '2014-12-09 19:20:05', 0, 0, 'Hierros Cachola', '692205275', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'PolÃ­gono Industrial el Pilar.\r\nCalle Torno s/n.\r\n41840 Pilas (Sevilla).\r\n695205275\r\nhierroscachola@gmail.com\r\n\r\nCarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable.\r\nEstructuras.\r\nCercados.', 'P1010002(1).JPG', '', NULL),
(106, '2014-12-09 19:46:15', 0, 0, 'Hierros Cachola', '692205275', 'Pilas', 'Sevilla', 'empleo', '', '', 0, 0, 0, 0, ' PolÃ­gono Industrial el Pilar.\r\nCalle Torno s/n.\r\n41840 Pilas (Sevilla).\r\n695205275\r\nhierroscachola@gmail.com\r\n\r\nCarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable.\r\nEstructuras.\r\nCercados. ', 'P1010002(1).JPG', '', NULL),
(107, '2015-02-11 23:18:01', 0, 0, 'Juanma', '679193992', 'Pilas', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'YAMAHA - XT. Esta nueva, vendo por no usar, tengo equipaciÃ³n completa que puede entrar en el precio, esta perfecta, precio algo negociable, sÃ³lo llamadas . Color Azul. AÃ±o 2007. 660 cc. Precio 2800 â‚¬.', '20150212121722', '', NULL),
(110, '2015-02-04 06:14:25', 0, 0, 'Pedro', '696707825', 'Pilas', 'Sevilla', 'informatica', '', '', 0, 0, 0, 0, 'Vendo Ordenador de sobremesa con teclado, ratÃ³n y pantalla panorÃ¡mica. \r\n\r\nIntel pentium D915\r\n320 Gb sata\r\n1 GB DDRII\r\nDVD RW DUAL DOUBLE LAYER \r\nMICROSOFT WINDOWS XP HOME EDITION\r\nLECTOR DE TARJETAS\r\n4 PUERTOS USB\r\n\r\nPosibilidad de instalar Windows 7 si lo desea y Office incluido. \r\n\r\nPrecio: 150 â‚¬', 'DSC_0010.JPG', '', NULL),
(111, '2014-12-24 08:24:26', 0, 0, 'Pilar Abril Garcia', '627012147', 'Sevilla', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo kawasaki er6n con 26.000 km, 650 cc, matriculada en 2010, itv pasada, revisiones al dia en todo, topes anticaida y escape mivv, tengo el original, por todo lo demas la moto esta tal como salio de casa, mejor verla.', '1.jpg', '', NULL),
(206, '2015-01-11 15:41:39', 0, 0, 'Jesus', '657782157', '', 'Sevilla', 'comics y tebeos', '', '', 0, 0, 0, 0, 'MAGOS DEL HUMOR\r\nMortadelo y Filemon, rompetechos , superLopez. . . . . . Nuevos solo leidos una vez , es una coleccion de 40 libros muy bonita algo negociable pero esta nueva y costo mas de 150 euros, envio dentro de peninsula, por solo 80 euros.', '20150111043901', '', NULL),
(241, '2015-02-04 07:07:04', 0, 0, 'Fernando Moreno LÃ³pez', '626227522', '', 'Granada', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, '  Se busca compaÃ±ero/ compaÃ±era de casa en GRANADA CIUDAD, zona Alcampo (Calle Santa Herminia), cerca del Campus de la Cartuja (10 minutos andando). TambiÃ©n hay lÃ­neas de buses urbanos cerca y paradas de taxi. La casa consta de dos plantas distribuidas en vestÃ­bulo, salÃ³n comedor, un dormitorio en planta baja y otros tres dormitorios en la planta superior, cocina, cuarto de baÃ±o, aseo y patio; y se encuentra amueblada con una superficie aproximada de 100 m2.  La vivienda tiene buena iluminaciÃ³n gracias al patio interior. El precio total es de 600â‚¬, 150â‚¬ por persona, gastos a parte. La lÃ­nea dada de alta de internet es de Pepephone con 14 megas contratados al precio de 23,6â‚¬ (5,9â‚¬ por persona) al mes.  ', '20150119093429', '', NULL),
(262, '2015-02-03 16:49:49', 15, 0, 'Asador Guadiamar', 'SN', '', 'Sevilla', 'hosteleria y turismo', '', '', 0, 0, 0, 0, 'MenÃºs de lunes a viernes.\r\nComida casera de calidad.\r\nCarnes, pescados, guisos, arroces.\r\nPostres caseros.\r\nAmbiente agradable.\r\nZonas verdes.\r\nAparcamiento gratuito.\r\nDirecciÃ³n: carretera Pilas-AznalcÃ¡zar, SN.', '20150201124429', '', NULL),
(266, '2015-02-05 05:32:10', 0, 0, 'MarÃ­a JosÃ©.', '625502619', '', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, ' Mama bÃºho para los mas pequeÃ±os de la casa, ropa para niÃ±os y complementos para el bebe, le esperamos en plaza San Juan de la Cruz, local 12b, Umbrete (Sevilla).\r\nTelÃ©fono: 625502619', '20150205062916', '', NULL),
(271, '2015-02-13 07:15:51', 0, 0, 'Mago y animaciÃ³n infantil', '672184263', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, ' AnimaciÃ³n infantil con magia, canciones, figuras de globos, pintacaras, juegos, ventriloquÃ­a, y mucha diversiÃ³n variada. Mi pÃ¡gina web es : icaminaleon.com, se atiende whatsapp.', '20150210064838', '', NULL),
(272, '2015-02-13 06:02:40', 0, 0, 'El Sitio.', '646881815', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, ' ZALEMA 9 Y 11. Pilas, Andalucia, Spain. 646 88 18 15 ', '20150211040817', '', NULL),
(277, '2015-02-15 12:50:59', 0, 0, 'Marcha solidaria.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Marcha solidaria.', '20150215015018', '', NULL),
(278, '2015-02-15 16:17:11', 0, 0, 'Pizzas, dardos y billares.', 'SN', '', 'Sevilla', 'hosteleria y turismo', '', '', 0, 0, 0, 0, 'Pizzas, dardos y billares.', '20150215051645', '', NULL),
(279, '2015-02-16 20:11:06', 0, 0, ' Vendo esta moto tipo custom, es', '657360180', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, ' Vendo esta moto tipo custom, estÃ¡ nueva, funciona perfectamente, sin golpes, siempre en garaje, regalo pitÃ³n, casco, flecos del manillar y alforjas de cuero hechas a mano, varios juegos de llaves, ITV pasada, vÃ¡lida hasta 04/11/2015. Atiendo whatsapp. Color negra, tiene 7000 Km, es de 250 cc, marca Keeway, modelo Supershadow, precio 1500 euros. ', '20150216091015', '', NULL),
(280, '2015-02-16 20:11:46', 0, 0, ' Vendo esta moto tipo custom, es', '657360180', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, ' Vendo esta moto tipo custom, estÃ¡ nueva, funciona perfectamente, sin golpes, siempre en garaje, regalo pitÃ³n, casco, flecos del manillar y alforjas de cuero hechas a mano, varios juegos de llaves, ITV pasada, vÃ¡lida hasta 04/11/2015. Atiendo whatsapp. Color negra, tiene 7000 Km, es de 250 cc, marca Keeway, modelo Supershadow, precio 1500 euros. ', '20150216091121', '', NULL),
(281, '2015-02-22 14:30:43', 0, 0, 'Publicidad', '657360180', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Anuncie su empresa en nuestra web, lo verÃ¡ mucha gente.', '20150222103444', '20150222032957b', '20150222032957c'),
(282, '2015-02-17 22:41:53', 0, 0, 'TecnologÃ­a del fuego.\r\n', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'TecnologÃ­a del fuego.\r\n', '20150217114125', '', NULL),
(283, '2015-02-18 16:20:04', 0, 0, 'LiquidaciÃ³n por reformas.', 'SN', '', 'Sevilla', 'moda y complementos', '', '', 0, 0, 0, 0, 'LiquidaciÃ³n por reformas.', '20150218051929', '', NULL),
(284, '2015-02-19 18:19:28', 0, 0, 'Los orÃ­genes del Sevilla', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Los orÃ­genes del Sevilla', '20150219071906', '', NULL),
(297, '2015-02-22 12:05:52', 0, 0, 'prueba', 'SN', '', 'Alava', 'actos y eventos', '', '', 0, 0, 0, 0, 'prueba', '20150222125222', '', '20150222010442c'),
(298, '2015-02-22 19:45:33', 0, 0, 'Esto es una prueba ', '679404518', '', 'Sevilla', 'informatica', '', '', 0, 0, 0, 0, 'Esto es una prueba ', '20150222083458', '20150222083458b', '20150222083458c'),
(299, '2015-02-22 19:49:37', 0, 0, 'segunda prueba', 'SN', '', 'Almeria', 'actos y eventos', '', '', 0, 0, 0, 0, 'segunda prueba', '20150222084800', '20150222084800b', '20150222084800c'),
(301, '2015-02-23 21:50:11', 0, 0, 'prueba desde linux', 'SN', '', 'Alava', 'actos y eventos', '', '', 0, 0, 0, 0, 'prueba desde linux', '20150223095513', '20150223095513b', '20150223095513c'),
(306, '2015-03-03 14:28:11', 0, 0, 'prueba', 'SN', '', 'Alava', 'actos y eventos', '', '', 0, 0, 0, 0, 'prueba', '20150303032758', '20150303032758b', '20150303032758c'),
(308, '2015-03-03 22:40:15', 0, 0, 'prueba', 'SN', '', 'Alava', 'actos y eventos', '', '', 0, 0, 0, 0, 'prueba', '20150303113921', '20150303113921b', '20150303114001c'),
(311, '2015-03-06 01:07:24', 0, 0, 'prueba', 'SN', '', 'Alava', 'actos y eventos', '', '', 0, 0, 0, 0, 'prueba', '20150306020631', '20150306020631b', '20150306020631c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_category`
--

CREATE TABLE IF NOT EXISTS `mismatch_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(48) COLLATE utf8_spanish_ci DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=401 ;

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
(375, 15, 25, 1),
(376, 16, 1, NULL),
(377, 16, 2, NULL),
(378, 16, 3, NULL),
(379, 16, 4, NULL),
(380, 16, 5, NULL),
(381, 16, 6, NULL),
(382, 16, 7, NULL),
(383, 16, 8, NULL),
(384, 16, 9, NULL),
(385, 16, 10, NULL),
(386, 16, 11, NULL),
(387, 16, 12, NULL),
(388, 16, 13, NULL),
(389, 16, 14, NULL),
(390, 16, 15, NULL),
(391, 16, 16, NULL),
(392, 16, 17, NULL),
(393, 16, 18, NULL),
(394, 16, 19, NULL),
(395, 16, 20, NULL),
(396, 16, 21, NULL),
(397, 16, 22, NULL),
(398, 16, 23, NULL),
(399, 16, 24, NULL),
(400, 16, 25, NULL);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mismatch_user`
--

CREATE TABLE IF NOT EXISTS `mismatch_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pass` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `first_name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `city` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `picture` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `mismatch_user`
--

INSERT INTO `mismatch_user` (`user_id`, `username`, `password`, `pass`, `join_date`, `first_name`, `last_name`, `gender`, `birthdate`, `city`, `state`, `picture`) VALUES
(1, 'sidneyk', '745c52f30f82d4323292dcca9eea0aee87feecc5', NULL, '2008-06-03 14:51:46', 'Sidney', 'Kelsow', 'F', '1984-07-19', 'Tempe', 'AZ', 'sidneypic.jpg'),
(2, 'nevilj', '12a20bcb5ed139a5f3fc808704897762cbab74ec', NULL, '2008-06-03 14:52:09', 'Nevil', 'Johansson', 'M', '1973-05-13', 'Reno', 'NV', 'nevilpic.jpg'),
(3, 'alexc', '676a6666682bd41bef5fd1c1f629fa233b1307a4', NULL, '2008-06-03 14:53:05', 'Alex', 'Cooper', 'M', '1974-09-13', 'Boise', 'ID', 'alexpic.jpg'),
(4, 'sdaniels', '1ff915f2fae864032e44cbe5a6cdd858500c9df7', NULL, '2008-06-03 14:58:40', 'Susannah', 'Daniels', 'F', '1977-02-23', 'Pasadena', 'CA', 'susannahpic.jpg'),
(5, 'ethelh', '53a56acb2a52f3815a2518e75029b071c298477a', NULL, '2008-06-03 15:00:37', 'Ethel', 'Heckel', 'F', '1943-03-27', 'Wichita', 'KS', 'ethelpic.jpg'),
(6, 'oklugman', 'df00f36c0b795c30a0409778d7f9db27a970f74f', NULL, '2008-06-03 15:00:48', 'Oscar', 'Klugman', 'M', '1968-06-04', 'Providence', 'RI', 'oscarpic.jpg'),
(7, 'belitac', '7c19dd287e03ae31ce190c4043b5a7f9795c41dc', NULL, '2008-06-03 15:01:08', 'Belita', 'Chevy', 'F', '1975-07-08', 'El Paso', 'TX', 'belitapic.jpg'),
(8, 'jasonf', '3da70cd115b7c3a7cebc2b5282706f07d185de9e', NULL, '2008-06-03 15:01:19', 'Jason', 'Filmington', 'M', '1969-09-24', 'Hollywood', 'CA', 'jasonpic.jpg'),
(9, 'dierdre', '08447be571e1c113f2f175472753ca5f5af454f3', NULL, '2008-06-03 15:01:51', 'Dierdre', 'Pennington', 'F', '1970-04-26', 'Cambridge', 'MA', 'dierdrepic.jpg'),
(10, 'baldpaul', '230dcb28e2d1dc19ec14990721e85cd5c5234245', NULL, '2008-06-03 15:02:02', 'Paul', 'Hillsman', 'M', '1964-12-18', 'Charleston', 'SC', 'paulpic.jpg'),
(11, 'jnettles', 'e511d793f532dbe0e0483538e11977f7b7c33b28', NULL, '2008-06-03 15:02:13', 'Johan', 'Nettles', 'M', '1981-11-03', 'Athens', 'GA', 'johanpic.jpg'),
(12, 'rubyr', '062e4a8476b1063e05caa69958e36a905f887619', NULL, '2008-06-03 15:02:24', 'Ruby', 'Reasons', 'F', '1972-09-18', 'Conundrum', 'AZ', 'rubypic.jpg'),
(13, 'theking', 'b4f283414a963c09f49cfde4a5eeba9752196247', NULL, '2008-06-05 14:19:20', 'Elmer', 'Priestley', 'M', '1979-01-08', 'Tupelo', 'MS', 'elmerpic.jpg'),
(14, 'owenb', '36be76e87571bf1566c6a388097c4e163df19ec9', NULL, '2008-06-26 08:25:48', 'Owen', 'Bugsby', 'M', '1982-06-22', 'Kokomo', 'IN', 'owenpic.jpg'),
(15, 'pepe', '965b38734b55904903e3f2e1589b99b7697a4546', NULL, '2014-12-01 20:37:41', 'Pepe', 'Cruz', 'M', '1972-05-29', 'Pilas', 'Se', 'nopic.jpg'),
(16, 'Juan', '22f48dada48c03887ae93af6314d0e750024ce98', NULL, '2014-12-11 13:16:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'hugo', 'e22cd461c068aea5dff1c3462214880d76b3e39c', NULL, '2014-12-13 06:52:11', 'Hugo', 'Cruz', 'M', '2010-10-27', 'Sevilla', 'Se', NULL),
(18, 'pepe2010', 'e22cd461c068aea5dff1c3462214880d76b3e39c', NULL, '2015-01-15 06:56:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(0, 'admin', '3a06fc9da1d06b45ba4ebe2dfbc06e32c40cd491', NULL, '2015-01-30 20:20:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'prueba2010', 'e22cd461c068aea5dff1c3462214880d76b3e39c', NULL, '2015-01-30 20:37:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'prueba0001', '7a6779700f09e1eafe9ad40e390f3a15b94dfa4b', NULL, '2015-01-31 21:16:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'prueba2011', '32a70a32da27b30a10fe546ead126f0778c5f00f', NULL, '2015-02-01 17:00:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'prueba2015', '9cdda67ded3f25811728276cefa76b80913b4c54', '2015', '2015-02-03 18:07:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
