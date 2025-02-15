-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Servidor: db551314202.db.1and1.com
-- Tiempo de generación: 25-01-2015 a las 15:57:12
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
-- Estructura de tabla para la tabla `mismatch_user`
--

CREATE TABLE IF NOT EXISTS `mismatch_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `first_name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `city` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `picture` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=19 ;

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
(15, 'pepe', '965b38734b55904903e3f2e1589b99b7697a4546', '2014-12-01 20:37:41', 'Pepe', 'Cruz', 'M', '1972-05-29', 'Pilas', 'Se', 'nopic.jpg'),
(16, 'babu', '965b38734b55904903e3f2e1589b99b7697a4546', '2014-12-01 20:47:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'loli_morena_88@hotmail.com', 'ad5c1b96d606cd31f8b2d68d4e38b613bb2122b3', '2014-12-29 12:30:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'ayusete', '66aa1cb9a469f74f6057878a4dcaaf9dbabd9529', '2015-01-09 17:42:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
