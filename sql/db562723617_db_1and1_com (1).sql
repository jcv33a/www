-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Servidor: db562723617.db.1and1.com
-- Tiempo de generación: 02-10-2015 a las 07:34:48
-- Versión del servidor: 5.1.73-log
-- Versión de PHP: 5.4.45-0+deb7u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db562723617`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_allowed_to_add_pages` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `country_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `KEY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`admin_id`, `parent_id`, `email`, `password`, `is_allowed_to_add_pages`, `company`, `firstname`, `lastname`, `address`, `country_code`, `country`, `phone`, `vat_number`, `created_at`, `updated_at`) VALUES
(1, NULL, 'jcv33a@gmail.com', '9541abcdcb33b8d101280486cf8f149b62da2a0c', 1, 'jcv', 'JosÃ©', 'Cruz', 'Calle Granada NÂº 9 B', 'ES', 'Spain', '+34657360180', NULL, '2015-06-08 01:14:54', '2015-06-09 14:43:33'),
(2, NULL, 'blogcuriosities@gmail.com', 'bab9e4d224ad002677166509182ea42e2af3ff8b', 1, 'jil', 'Juan', 'Irizo', NULL, 'ES', 'Spain', NULL, NULL, '2015-06-09 14:43:08', '2015-07-30 17:49:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `id_provincias` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `score` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=430 ;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `date`, `user_id`, `id_provincias`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `año`, `precio`, `descripcion`, `screenshot`, `screenshot2`, `screenshot3`) VALUES
(414, '2015-09-24 21:10:32', 0, 0, 'primera tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'primera tarea', '20150924111025', '20150924111025b', '20150924111025c'),
(415, '2015-09-24 21:10:49', 0, 0, 'segunda tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'segunda tarea', '20150924111032', '20150924111032b', '20150924111032c'),
(416, '2015-09-24 21:19:56', 0, 0, 'tercera tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'tercera tarea', '20150924111947', '20150924111947b', '20150924111947c'),
(417, '2015-09-24 21:20:05', 0, 0, 'cuarta tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'cuarta tarea', '20150924111956', '20150924111956b', '20150924111956c'),
(418, '2015-09-24 21:20:13', 0, 0, 'quinta tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'quinta tarea', '20150924112005', '20150924112005b', '20150924112005c'),
(419, '2015-09-24 21:20:20', 0, 0, 'sexta tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'sexta tarea', '20150924112013', '20150924112013b', '20150924112013c'),
(425, '2015-09-24 22:34:28', 0, 0, 'tarea 22', '', '', '', '', '', '', 0, 0, 0, 0, 'tarea 22', '20150925123403', '20150925123403b', '20150925123403c'),
(426, '2015-09-25 03:22:41', 0, 0, 'Tarea desde la apk', '', '', '', '', '', '', 0, 0, 0, 0, 'Tarea desde la apk', '20150925052202', '20150925052202b', '20150925052202c'),
(427, '2015-09-25 04:54:36', 19, 0, 'tarea de hugo', '', '', '', '', '', '', 0, 0, 0, 0, 'tarea de hugo', '20150925065425', '20150925065425b', '20150925065425c'),
(429, '2015-09-26 11:55:53', 51, 0, 'Test tarea', '', '', '', '', '', '', 0, 0, 0, 0, 'Test tarea', '20150926015526', '20150926015526b', '20150926015526c');

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
-- Estructura de tabla para la tabla `api_key`
--

CREATE TABLE IF NOT EXISTS `api_key` (
  `key_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) unsigned NOT NULL,
  `key` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key_id`),
  KEY `KEY_PROVIDER_ID` (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `api_key`
--

INSERT INTO `api_key` (`key_id`, `provider_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'token', NULL, '2015-06-08 00:57:40', '2015-06-08 01:05:18'),
(2, 1, 'client_id', NULL, '2015-06-08 00:57:40', '2015-06-08 01:05:18'),
(3, 2, 'app_id', NULL, '2015-06-08 00:57:40', '2015-06-08 01:05:18'),
(4, 2, 'secret_key', NULL, '2015-06-08 00:57:40', '2015-06-08 01:05:18'),
(5, 3, 'api_key', NULL, '2015-06-08 00:57:40', '2015-06-08 01:05:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_provider`
--

CREATE TABLE IF NOT EXISTS `api_provider` (
  `provider_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `api_provider`
--

INSERT INTO `api_provider` (`provider_id`, `code`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'instagram', 'Instagram', 'fa-instagram', '2015-06-08 00:57:40', '2015-06-08 00:57:40'),
(2, 'facebook', 'Facebook', 'fa-facebook-square', '2015-06-08 00:57:40', '2015-06-08 00:57:40'),
(3, 'youtube', 'Youtube', 'fa-youtube', '2015-06-08 00:57:40', '2015-06-08 00:57:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `app_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) unsigned NOT NULL,
  `layout_id` int(11) unsigned NOT NULL,
  `layout_visibility` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'homepage',
  `design_id` int(11) unsigned DEFAULT NULL,
  `bundle_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabbar_account_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabbar_more_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_category_id` tinyint(1) unsigned DEFAULT NULL,
  `secondary_category_id` tinyint(1) unsigned DEFAULT NULL,
  `font_family` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image_hd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image_tablet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_homepage_background_image_in_subpages` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_retina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_iphone_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_iphone_6_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_ipad_retina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdomain` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdomain_is_validated` tinyint(1) DEFAULT NULL,
  `facebook_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `require_to_be_logged_in` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_all_customers_to_access_locked_features` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`app_id`),
  UNIQUE KEY `UNIQUE_APPLICATION_KEY` (`key`),
  UNIQUE KEY `UNIQUE_KEY_SUBDOMAIN_DOMAIN` (`subdomain`,`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `application`
--

INSERT INTO `application` (`app_id`, `admin_id`, `layout_id`, `layout_visibility`, `design_id`, `bundle_id`, `key`, `locale`, `tabbar_account_name`, `tabbar_more_name`, `country_code`, `name`, `description`, `keywords`, `main_category_id`, `secondary_category_id`, `font_family`, `background_image`, `background_image_hd`, `background_image_tablet`, `use_homepage_background_image_in_subpages`, `logo`, `icon`, `startup_image`, `startup_image_retina`, `startup_image_iphone_6`, `startup_image_iphone_6_plus`, `startup_image_ipad_retina`, `domain`, `subdomain`, `subdomain_is_validated`, `facebook_token`, `is_active`, `require_to_be_logged_in`, `allow_all_customers_to_access_locked_features`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 0, 4, 'homepage', 2, 'es.anunciospilas.siberian.appoverview', '5574ccaf2ff06', 'es_ES', NULL, NULL, NULL, 'anunciospilas', NULL, NULL, NULL, NULL, NULL, '/1/homepage_image/standard/5574d4af256fd.jpg', '/1/homepage_image/hd/5574d4be91118.jpg', '/1/homepage_image/tablet/5574d4ccaf671.jpg', 1, NULL, '/1/icon/icon_557cdae72adf9.png', '/1/startup_image/standard_5574d3e732b44.png', '/1/startup_image/retina_5574d40feda33.png', '/1/startup_image/iphone_6_5574d445bde5b.png', '/1/startup_image/iphone_6_plus_5574d457eb703.png', '/1/startup_image/ipad_retina_5574d4747d5fe.png', 'srian.anunciospilas.es', NULL, NULL, NULL, 1, 0, 0, 0, '2015-06-08 00:58:55', '2015-08-26 19:31:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `application_device`
--

CREATE TABLE IF NOT EXISTS `application_device` (
  `device_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `type_id` tinyint(11) unsigned NOT NULL,
  `status_id` tinyint(11) unsigned DEFAULT '1',
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.1',
  `store_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_pass` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_pass` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`device_id`),
  KEY `KEY_APP_ID` (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `application_device`
--

INSERT INTO `application_device` (`device_id`, `app_id`, `type_id`, `status_id`, `version`, `store_url`, `store_pass`, `key_pass`, `alias`) VALUES
(1, 1, 2, 1, '1.0', NULL, 'A6Lmbut7', 'u38Ij8E6', 'anunciospilas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `application_layout_homepage`
--

CREATE TABLE IF NOT EXISTS `application_layout_homepage` (
  `layout_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `visibility` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'homepage',
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_more_button` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_displayed_icons` tinyint(2) DEFAULT NULL,
  `position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bottom',
  PRIMARY KEY (`layout_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `application_layout_homepage`
--

INSERT INTO `application_layout_homepage` (`layout_id`, `visibility`, `code`, `name`, `preview`, `use_more_button`, `number_of_displayed_icons`, `position`) VALUES
(1, 'always', 'layout_1', 'Layout 1', '/customization/layout/homepage/layout_1.png', 1, 5, 'bottom'),
(2, 'homepage', 'layout_2', 'Layout 2', '/customization/layout/homepage/layout_2.png', 1, 10, 'bottom'),
(3, 'homepage', 'layout_3', 'Layout 3', '/customization/layout/homepage/layout_3.png', 0, NULL, 'bottom'),
(4, 'homepage', 'layout_4', 'Layout 4', '/customization/layout/homepage/layout_4.png', 0, NULL, 'bottom'),
(5, 'homepage', 'layout_5', 'Layout 5', '/customization/layout/homepage/layout_5.png', 0, NULL, 'bottom'),
(6, 'homepage', 'layout_6', 'Layout 6', '/customization/layout/homepage/layout_6.png', 0, NULL, 'bottom'),
(7, 'homepage', 'layout_7', 'Layout 7', '/customization/layout/homepage/layout_7.png', 0, NULL, 'left'),
(8, 'homepage', 'layout_8', 'Layout 8', '/customization/layout/homepage/layout_8.png', 0, NULL, 'bottom'),
(9, 'toggle', 'layout_9', 'Layout 9', '/customization/layout/homepage/layout_9.png', 0, NULL, 'left');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `application_option`
--

CREATE TABLE IF NOT EXISTS `application_option` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_id` int(11) unsigned NOT NULL,
  `icon_id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `desktop_uri` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_uri` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `only_once` tinyint(1) NOT NULL DEFAULT '0',
  `is_ajax` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `KEY_LIBRARY_ID` (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `application_option`
--

INSERT INTO `application_option` (`option_id`, `library_id`, `icon_id`, `code`, `name`, `model`, `desktop_uri`, `mobile_uri`, `only_once`, `is_ajax`, `position`) VALUES
(1, 1, 1, 'image_gallery', 'Images', 'Media_Model_Gallery_Image', 'media/application_gallery_image/', 'media/mobile_gallery_image_list/', 0, 1, 90),
(2, 2, 8, 'video_gallery', 'Videos', 'Media_Model_Gallery_Video', 'media/application_gallery_video/', 'media/mobile_gallery_video_list/', 0, 1, 100),
(3, 3, 14, 'booking', 'Booking', 'Booking_Model_Booking', 'booking/application/', 'booking/mobile_view/', 0, 1, 140),
(4, 4, 25, 'catalog', 'Catalog', 'Catalog_Model_Product', 'catalog/application/', 'catalog/mobile_category_list/', 0, 1, 30),
(5, 4, 26, 'set_meal', 'Set Meal', 'Catalog_Model_Product', 'catalog/application_menu/', 'catalog/mobile_setmeal_list/', 0, 1, 35),
(6, 5, 37, 'custom_page', 'Custom Page', 'Cms_Model_Application_Page', 'cms/application_page/', 'cms/mobile_page_view/', 0, 1, 70),
(7, 6, 48, 'newswall', 'Newswall', 'Comment_Model_Comment', 'comment/application/', 'comment/mobile_list/', 0, 1, 10),
(8, 7, 52, 'contact', 'Contact', 'Contact_Model_Contact', 'contact/application/', 'contact/mobile_view/', 0, 1, 120),
(9, 8, 63, 'calendar', 'Calendar', 'Event_Model_Event', 'event/application/', 'event/mobile_list/', 0, 1, 200),
(10, 9, 66, 'folder', 'Folder', 'Folder_Model_Folder', 'folder/application/', 'folder/mobile_list/', 0, 1, 180),
(11, 10, 71, 'form', 'Form', 'Form_Model_Form', 'form/application/', 'form/mobile_view/', 0, 1, 190),
(12, 11, 76, 'loyalty', 'Loyalty Card', 'LoyaltyCard_Model_LoyaltyCard', 'loyaltycard/application/', 'loyaltycard/mobile_view/', 1, 1, 50),
(13, 12, 82, 'padlock', 'Padlock', 'Padlock_Model_Padlock', 'padlock/application/', 'padlock/mobile_view/', 0, 1, 220),
(14, 13, 83, 'discount', 'Discount', 'Promotion_Model_Promotion', 'promotion/application/', 'promotion/mobile_list/', 0, 1, 20),
(15, 14, 89, 'push_notification', 'Push Notifications', 'Push_Model_Message', 'push/application/', 'push/mobile_list/', 1, 1, 130),
(16, 15, 95, 'rss_feed', 'RSS Feed', 'Rss_Model_Feed', 'rss/application_feed/', 'rss/mobile_feed_list/', 0, 1, 80),
(17, 16, 102, 'facebook', 'Facebook', 'Social_Model_Facebook', 'social/application_facebook/', 'social/mobile_facebook_list/', 0, 1, 210),
(18, 17, 103, 'social_gaming', 'Contest', 'Socialgaming_Model_Game', 'socialgaming/application/', 'socialgaming/mobile_view/', 1, 1, 60),
(19, 18, 108, 'weblink_mono', 'Link', 'Weblink_Model_Type_Mono', 'weblink/application_mono/', 'weblink/mobile_mono/', 0, 0, 150),
(20, 18, 108, 'weblink_multi', 'Links', 'Weblink_Model_Type_Multi', 'weblink/application_multi/', 'weblink/mobile_multi/', 0, 1, 160),
(21, 19, 111, 'wordpress', 'Wordpress', 'Wordpress_Model_Wordpress', 'wordpress/application/', 'wordpress/mobile_list/', 0, 1, 170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `application_option_value`
--

CREATE TABLE IF NOT EXISTS `application_option_value` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  `layout_id` int(11) unsigned NOT NULL DEFAULT '1',
  `icon_id` int(11) DEFAULT NULL,
  `folder_id` int(11) unsigned DEFAULT NULL,
  `folder_category_id` int(11) unsigned DEFAULT NULL,
  `folder_category_position` int(11) unsigned DEFAULT NULL,
  `tabbar_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `KEY_APP_ID` (`app_id`),
  KEY `KEY_OPTION_ID` (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `application_option_value`
--

INSERT INTO `application_option_value` (`value_id`, `app_id`, `option_id`, `layout_id`, `icon_id`, `folder_id`, `folder_category_id`, `folder_category_position`, `tabbar_name`, `icon`, `background_image`, `is_visible`, `position`, `is_active`) VALUES
(5, 1, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1),
(8, 1, 6, 1, 37, NULL, NULL, NULL, 'anunciospilas.es', NULL, NULL, 1, 2, 1),
(11, 1, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1),
(14, 1, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backoffice_notification`
--

CREATE TABLE IF NOT EXISTS `backoffice_notification` (
  `notification_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `original_notification_id` int(11) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_high_priority` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `backoffice_notification`
--

INSERT INTO `backoffice_notification` (`notification_id`, `original_notification_id`, `title`, `description`, `link`, `is_high_priority`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 0, 'Welcome!', 'Welcome! First of all, let''s configure your platform. <a href="/system/backoffice_config_general"><u>Click here</u></a> to fill in your information or <a href="/system/backoffice_config_email"><u>here</u></a> to configure your email address', NULL, 0, 0, '2015-06-08 00:57:41', '2015-06-08 00:57:41'),
(2, 5, 'Updates', 'Click the eye to download the latest updates for your Siberian Multi-Apps Edition. Check back regularly to keep your CMS always up to date!', 'http://www.siberiancms.com/knowledgebase/updates-for-mae-and-pe/', 1, 0, '2015-06-08 00:59:30', '2015-06-08 00:59:30'),
(3, 8, ' Siberian 3.8.3 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-)', 'http://updates.siberiancms.com/release-notes/mae/3.8.3.html', 1, 0, '2015-08-25 20:57:14', '2015-08-25 20:57:14'),
(4, 10, 'Siberian 3.8.4 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-)', 'http://updates.siberiancms.com/release-notes/mae/3.8.4.html', 1, 0, '2015-08-25 20:57:14', '2015-08-25 20:57:14'),
(5, 14, 'Known issues', 'Since 3.8.4: Padlock feature issue => the app keeps loading when it is launched if all the application is locked by the Padlock feature. Our Dev team is working on it.', '', 0, 0, '2015-08-25 20:57:14', '2015-08-25 20:57:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backoffice_user`
--

CREATE TABLE IF NOT EXISTS `backoffice_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `backoffice_user`
--

INSERT INTO `backoffice_user` (`user_id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'jcv33a@gmail.com', '9541abcdcb33b8d101280486cf8f149b62da2a0c', '2015-06-08 00:58:37', '2015-06-08 00:58:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `booking_store`
--

CREATE TABLE IF NOT EXISTS `booking_store` (
  `store_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`store_id`),
  KEY `KEY_BOOKING_ID` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_category`
--

CREATE TABLE IF NOT EXISTS `catalog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `KEY_VALUE_ID` (`value_id`),
  KEY `KEY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_product`
--

CREATE TABLE IF NOT EXISTS `catalog_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'basic',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `format_quantity` tinyint(2) NOT NULL DEFAULT '0',
  `conditions` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `KEY_CATEGORY_ID` (`category_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalog_product_format`
--

CREATE TABLE IF NOT EXISTS `catalog_product_format` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `KEY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_block`
--

CREATE TABLE IF NOT EXISTS `cms_application_block` (
  `block_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `template` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile_template` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `cms_application_block`
--

INSERT INTO `cms_application_block` (`block_id`, `type`, `position`, `icon`, `title`, `template`, `mobile_template`) VALUES
(1, 'text', 1, 'icon-file-alt', 'Text', 'cms/application/page/edit/block/text.phtml', 'cms/page/%s/view/block/text.phtml'),
(2, 'image', 2, 'icon-picture', 'Image', 'cms/application/page/edit/block/image.phtml', 'cms/page/%s/view/block/image.phtml'),
(3, 'video', 3, 'icon-facetime-video', 'Video', 'cms/application/page/edit/block/video.phtml', 'cms/page/%s/view/block/video.phtml'),
(4, 'address', 4, 'icon-location-arrow', 'Address', 'cms/application/page/edit/block/address.phtml', 'cms/page/%s/view/block/address.phtml'),
(5, 'button', 5, 'icon-barcode', 'Button', 'cms/application/page/edit/block/button.phtml', 'cms/page/%s/view/block/button.phtml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page`
--

CREATE TABLE IF NOT EXISTS `cms_application_page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cms_application_page`
--

INSERT INTO `cms_application_page` (`page_id`, `value_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL, '2015-08-26 07:05:27', '2015-08-26 17:20:30'),
(2, 14, NULL, NULL, '2015-08-31 15:16:00', '2015-08-31 15:18:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `block_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `cms_application_page_block`
--

INSERT INTO `cms_application_page_block` (`value_id`, `block_id`, `page_id`, `position`) VALUES
(16, 1, 1, 1),
(17, 5, 1, 4),
(19, 5, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_address`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `show_address` tinyint(1) NOT NULL DEFAULT '0',
  `show_geolocation_button` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_button`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_button` (
  `button_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('link','phone') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'phone',
  `content` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`button_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `cms_application_page_block_button`
--

INSERT INTO `cms_application_page_block_button` (`button_id`, `value_id`, `type_id`, `content`) VALUES
(1, 15, 'link', 'www.anunciospilas.es'),
(2, 17, 'link', 'http://www.anunciospilas.es/'),
(3, 19, 'link', 'http://www.anunciospilas.es/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_image`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_image` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`image_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_image_library`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_image_library` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_id` int(11) unsigned NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_fullsize_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_text`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_text` (
  `text_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_id` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`text_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `cms_application_page_block_text`
--

INSERT INTO `cms_application_page_block_text` (`text_id`, `value_id`, `content`, `image`, `size`, `alignment`, `layout_id`) VALUES
(9, 16, '<p>Nota informativa:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En este sitio puedes poner anuncios gratis, para ello es necesario registrarse, no hace falta e-mail, s&oacute;lo un nombre de usuario y una contrase&ntilde;a.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Recomendamos para subir los anuncios: Google Chrome, Firefox, Safari, Explorer de Windows 7 o superior.&nbsp;<br />\r\n<br />\r\nLos anuncios publicados en este sitio aparecer&aacute;n en todas nuestras p&aacute;ginas web asociadas: anunciospilas.es/com, canalpilas.es/com, anuncioes.es/com, nuevoanuncios.es/com.&nbsp;<br />\r\n<br />\r\nLas cookies nos permiten ofrecer nuestros servicios. Al utilizar nuestros servicios, aceptas el uso que hacemos de las cookies.&nbsp;<br />\r\n<br />\r\nSi tiene una empresa y quiere patrocinarnos, o para cualquier duda contacten con nosotros.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>e-mail: anunciospilas@gmail.com&nbsp;</p>\r\n', '', '25', 'left', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_video`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('link','youtube','podcast') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'link',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `FK_CMS_APPLICATION_PAGE_BLOCK_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_video_link`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video_link` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_video_podcast`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video_podcast` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_application_page_block_video_youtube`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video_youtube` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_visible` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment_answer`
--

CREATE TABLE IF NOT EXISTS `comment_answer` (
  `answer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `KEY_COMMENT_ID` (`comment_id`),
  KEY `KEY_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment_like`
--

CREATE TABLE IF NOT EXISTS `comment_like` (
  `like_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `KEY_COMMENT_ID` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `civility` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`contact_id`, `value_id`, `name`, `description`, `facebook`, `twitter`, `website`, `cover`, `email`, `civility`, `firstname`, `lastname`, `street`, `postcode`, `city`, `country`, `latitude`, `longitude`, `phone`, `created_at`, `updated_at`) VALUES
(1, 5, 'anunciospilas', '', '', '', 'http://www.anunciospilas.es', NULL, 'anunciospilas@gmail.com', '', '', '', '', '', '', '', NULL, NULL, '', '2015-06-08 01:34:24', '2015-08-26 07:12:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `civility` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_social_gaming` tinyint(1) NOT NULL DEFAULT '1',
  `can_access_locked_features` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_address`
--

CREATE TABLE IF NOT EXISTS `customer_address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_social`
--

CREATE TABLE IF NOT EXISTS `customer_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `social_id` bigint(13) NOT NULL,
  `datas` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_KEY_SOCIAL_ID` (`social_id`),
  KEY `KEY_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_social_post`
--

CREATE TABLE IF NOT EXISTS `customer_social_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `customer_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `points` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `KEY_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_custom`
--

CREATE TABLE IF NOT EXISTS `event_custom` (
  `event_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agenda_id` int(11) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rsvp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `KEY_AGENDA_ID` (`agenda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folder`
--

CREATE TABLE IF NOT EXISTS `folder` (
  `folder_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `root_category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`folder_id`),
  KEY `KEY_VALUE_ID` (`value_id`),
  KEY `KEY_CAT_ID` (`root_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folder_category`
--

CREATE TABLE IF NOT EXISTS `folder_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `type_id` enum('folder') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'folder',
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `KEY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `form_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_field`
--

CREATE TABLE IF NOT EXISTS `form_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option` text COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_section`
--

CREATE TABLE IF NOT EXISTS `form_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
  `provincia` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=417 ;

--
-- Volcado de datos para la tabla `guitarwars`
--

INSERT INTO `guitarwars` (`id`, `date`, `user_id`, `id_provincias`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `año`, `precio`, `descripcion`, `screenshot`, `screenshot2`, `screenshot3`) VALUES
(36, '2014-11-04 19:22:30', 0, 0, 'Juan', '679404518', 'Pilas', 'Sevilla', 'bicicletas', '', '', 0, 0, 0, 0, 'Bicicleta Rockrider seminueva, 500 euros.', 'IMG028.jpg', NULL, NULL),
(20, '2015-03-11 23:32:12', 0, 0, 'Keeway Supershadow 250 cc.', '657360180', 'Pilas', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo esta moto tipo custom, estÃ¡ nueva, funciona perfectamente, sin golpes, siempre en garaje, regalo pitÃ³n, casco, flecos del manillar y alforjas de cuero hechas a mano, varios juegos de llaves, ITV pasada, vÃ¡lida hasta 04/11/2015. Atiendo whatsapp. Color negra, tiene 7000 Km, es de 250 cc, marca Keeway, modelo Supershadow, precio 1500 euros.', '20150312123018', '20150312123018b', ''),
(45, '2014-11-06 11:13:45', 0, 0, 'Bar CafeterÃ­a La Soledad', '690269386', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Bar CafeterÃ­a la Soledad, comida casera de calidad. Estamos en Pilas en la Calle Granada, urbanizaciÃ³n La Soledad, frente a la tienda de baÃ±os de los Hermanos GÃ³mez. Tlf: 690238693.', 'IMG_20141106_115112.jpg', NULL, NULL),
(46, '2014-11-07 16:48:02', 0, 0, 'PILAS FABRICS', '654340213', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'OFERTA LIMITADA: Ponemos un numero limitado de SOFÃS+MESA por 950â‚¬ DETALLES DE LA PROMOCIÃ“N : SOFÃS *SofÃ¡s cheslong de dos medidas- 275 o 255x155 *Asientos deslizantes y cabecero reclinable *CanapÃ© en la cheslong *Tejido a elegir del catalogo ELIXIR-PRADA O PORTOFINO. Tejido con ACUALINE-(antimanchas) *MESA: *Mesa de forja de 120*70 con cristal *Mesa elevable en 3 alturas ( 70/60/45) *Adaptacion para brasero o radiador *Varios colores a elegir. Estamos en UrbanizaciÃ³n la Soledad, esquina de la calle Granada, a la entrada de Pilas.', 'M-Oriol-1f.jpg', NULL, NULL),
(53, '2015-02-07 05:53:57', 0, 0, 'Mario ', '685622870', 'Pilas', 'Sevilla', 'juegos_videojuegos', '', '', 0, 0, 0, 0, 'Juego ps3 dragonball, precio 15 euros.', 'IMG_20141109_131236.jpg', NULL, NULL),
(54, '2014-11-09 19:22:37', 0, 0, 'Juan ', '606255989', 'Pilas', 'Sevilla', 'empleo', '', '', 0, 0, 0, 0, 'Pintor profesional, experiencia, seriedad, presupuestos sin compromiso. ', 'IMG-20141106-WA0003.jpg', NULL, NULL),
(49, '2015-04-02 05:09:45', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0005.jpg', NULL, NULL),
(50, '2014-11-08 23:27:45', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0002.jpg', NULL, NULL),
(51, '2014-11-08 23:28:58', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0003.jpg', NULL, NULL),
(52, '2015-04-02 05:09:58', 0, 0, 'Baldomero Telecomunicaciones', '654087556', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'facebook: Baldomero Telecomunicaciones Pilas. DirecciÃ³n: Calle Palos de la Frontera 19.', 'IMG-20141108-WA0004.jpg', NULL, NULL),
(56, '2015-01-20 06:28:37', 0, 0, 'Cristobal', '616107800', 'Pilas', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, 'FULL EQUIPE Y PERFECTO ESTADO DE CONSERVACION.\r\nPEUGEOT - 207 C. C.\r\nVendo peugeot 207 cc cabriolet perfecto estado de conservacion sensor de aparcamiento , climatizador bizona , neumaticos nuevos , todas las revisiones al dia , mejor ver 616 10 78 00. Color rojo, 56000 Km, precio 5500 euros, es de 2008.', 'PB040117.JPG', NULL, NULL),
(57, '2015-02-07 05:54:49', 0, 0, 'Mario', '685622870', 'Pilas', 'Sevilla', 'juegos_videojuegos', '', '', 0, 0, 0, 0, 'Gran juego ps3 de la saga call of duty en concreto modern warfare 3 funciona perfectamente con posibilidad de probarlo, precio 20 euros.', 'IMG_20141112_094605_1.jpg', NULL, NULL),
(58, '2015-02-07 05:55:19', 0, 0, 'Mario', '685622870', 'Pilas', 'Sevilla', 'juegos_videojuegos', '', '', 0, 0, 0, 0, 'Juego ps3 need for speed hot pursuit funciona perfectamente puedes probarlo, precio 15 euros.', 'IMG_20141112_095804.jpg', NULL, NULL),
(62, '2014-11-14 22:32:30', 0, 0, 'JosÃ© Manuel', '666882641', 'Pilas', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo esta maxiscooter, 300 cc, Ãºltimo modelo, aÃ±o 2012, completamente nueva, impecable, muy cÃ³moda y manejable con solo 5800 km y dos aÃ±os porque quiero aumentar de cilindrada . atiendo whatsapp (estoy interesado bmw f800r). Color blanca, 5800 Km, precio 2899 euros, es una SYM GTS I JOYMAX.', 'IMG-20141110-WA0001.jpg', NULL, NULL),
(68, '2014-11-17 10:25:28', 0, 0, 'Hyundai Pilas', '699265451', 'Pilas', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, '5 aÃ±os de asistencia en viaje 24 horas\r\nAirbag conductor y acompaÃ±ante\r\nAirbags de cortina (plazas delanteras y traseras)\r\nAirbags laterales delanteros\r\nAnclajes Isofix y Top Tether\r\nAsiento del conductor regulable en altura\r\nAsientos delanteros con anti latigazo cervical\r\nBarras de protecciÃ³n lateral\r\nBluetooth integrado con reconocimiento de voz y mandos en el volante\r\nCambio de 6 velocidades\r\nCierre centralizado remoto con alarma\r\nCierre de puertas automÃ¡tico con el vehÃ­culo en marcha (programable)\r\nCierre de seguridad infantil para las puertas traseras\r\nCinturones delanteros con pretensores y ajustables en altura\r\nClimatizador manual con filtro de aire\r\nControl de estabilidad ESP con VSMS\r\nControl de tracciÃ³n TCS\r\nDirecciÃ³n asistida\r\nEco Indicador de conducciÃ³n eficiente (propuesta de marcha)\r\nElevalunas elÃ©ctricos delanteros\r\nElevalunas elÃ©ctricos traseros\r\nEmbellecedor para llantas de acero\r\nEntrada de audio con conexiones USB y Aux\r\nEquipo de audio con Radio CD lector de MP3\r\nEstructura de seguridad reforzada\r\nFaros antiniebla delanteros\r\nFrenos ABS + EBD + BAS\r\nGarantÃ­a de 12 aÃ±os anticorrosiÃ³n\r\nGarantÃ­a de 5 aÃ±os sin lÃ­mite de kilÃ³metros\r\nGuantera iluminada y refrigerada\r\nIntermitentes automÃ¡ticos de triple seÃ±al\r\nKit de fumador\r\nLlave plegable multifunciÃ³n con mando a distancia\r\nLuces de frenada de emergencia\r\nLuces de lectura de mapa & portagafas\r\nLuces delanteras diurnas de LED\r\nLuz iluminaciÃ³n del maletero\r\nMandos en el volante del equipo de audio\r\nManetas exteriores del color de la carrocerÃ­a\r\nOrdenador de viaje\r\nRegulador elÃ©ctrico de altura de faros desde el interior\r\nRespaldo trasero abatible 60/40\r\nRetrovisores convexos calefactables\r\nRetrovisores exteriores del color de la carrocerÃ­a\r\nRetrovisores exteriores elÃ©ctricos\r\nRueda de repuesto space saver. \r\nEstamos en la calle Santa Angela de la Cruz en Pilas.', 'DSC_0202.JPG', NULL, NULL),
(96, '2014-11-23 15:54:48', 0, 0, 'manuel', '665451665', 'Escacena del Campo', 'Huelva', 'animales', '', '', 0, 0, 0, 0, 'Ofrezco boxer de dos aÃ±os para montas. Pesa 40 kilos y tiene muy buena morfologÃ­a. Pueden contactar por WhatsApp.  Saludos.', '20141112_144749.jpg', NULL, NULL),
(101, '2014-11-29 23:38:40', 0, 0, 'Antonio Cachola', '692205275', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'CarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable. \r\nEstructuras. \r\nCercados.\r\nPolÃ­gono Industrial El Pilar, Calle Torno, s/n.\r\n41840 Pilas (Sevilla).\r\nhierroscachola@gmail.com\r\n692205275', 'prodotti-81476-relebc1409d88c04419bacce5ac464e1c7e.jpg', NULL, NULL),
(102, '2014-11-29 23:50:08', 0, 0, 'Video Club El paseo', '687852479', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Paseo de la independencia 102, \r\nPilas (Sevilla).\r\n687 852 479', '1231659_396775377089455_460705551_n.jpg', NULL, NULL),
(103, '2014-12-01 19:47:50', 0, 0, 'Video Club El Paseo', '687852479', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, ' Paseo de la independencia 102, \r\nPilas (Sevilla).\r\n687 852 479', 'IMG_20141116_130935-1.jpg', NULL, NULL),
(104, '2015-01-06 19:58:11', 0, 0, 'Pilas Fabrics SofÃ¡s', '654340213', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'FÃ¡cil acceso, estamos en la entrada de Pilas si vienen por la autopista A-49 salida Pilas.', '1743623_715336258556675_2340538814895372576_n.jpg', NULL, NULL),
(105, '2014-12-09 19:20:05', 0, 0, 'Hierros Cachola', '692205275', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'PolÃ­gono Industrial el Pilar.\r\nCalle Torno s/n.\r\n41840 Pilas (Sevilla).\r\n695205275\r\nhierroscachola@gmail.com\r\n\r\nCarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable.\r\nEstructuras.\r\nCercados.', 'P1010002(1).JPG', NULL, NULL),
(106, '2014-12-09 19:46:15', 0, 0, 'Hierros Cachola', '692205275', 'Pilas', 'Sevilla', 'empleo', '', '', 0, 0, 0, 0, ' PolÃ­gono Industrial el Pilar.\r\nCalle Torno s/n.\r\n41840 Pilas (Sevilla).\r\n695205275\r\nhierroscachola@gmail.com\r\n\r\nCarpinterÃ­a metÃ¡lica.\r\nAcero inoxidable.\r\nEstructuras.\r\nCercados. ', 'P1010002(1).JPG', NULL, NULL),
(107, '2015-02-11 23:20:44', 0, 0, 'Juanma', '679193992', 'Pilas', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'YAMAHA - XT. Esta nueva, vendo por no usar, tengo equipaciÃ³n completa que puede entrar en el precio, esta perfecta, precio algo negociable, sÃ³lo llamadas. Color Azul. AÃ±o 2007. 660 cc. Precio 2800 â‚¬.', '20150212122002', NULL, NULL),
(110, '2015-01-29 00:39:14', 0, 0, 'Pedro', '696707825', 'Pilas', 'Sevilla', 'informatica', '', '', 0, 0, 0, 0, 'Vendo Ordenador de sobremesa con teclado, ratÃ³n y pantalla panorÃ¡mica. \r\n\r\nIntel pentium D915\r\n320 Gb sata\r\n1 GB DDRII\r\nDVD RW DUAL DOUBLE LAYER \r\nMICROSOFT WINDOWS XP HOME EDITION\r\nLECTOR DE TARJETAS\r\n4 PUERTOS USB\r\n\r\nPosibilidad de instalar Windows 7 si lo desea y Office incluido. \r\n\r\nPrecio: 150 â‚¬', 'DSC_0010.JPG', NULL, NULL),
(111, '2015-01-07 15:50:34', 0, 0, 'Pilar Abril Garcia', '627012147', 'Sevilla', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo kawasaki er6n con 26.000 km, 650 cc, matriculada en 2010, itv pasada, revisiones al dia en todo, topes anticaida y escape mivv, tengo el original, por todo lo demas la moto esta tal como salio de casa, mejor verla.', '1.jpg', NULL, NULL),
(240, '2015-03-16 23:17:30', 0, 0, 'LeÃ±a de olivo.', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'LeÃ±a de olivo.', '20150317121609', '20150317121609b', '20150317121609c'),
(114, '2015-01-04 16:54:17', 23, 0, 'Maria Jose', '625502619', 'Umbrete', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Mama bÃºho para los mas pequeÃ±os de la casa, ropa para niÃ±os y complementos para el bebe le esperamos en plaza San Juan de la Cruz, local 12b, Umbrete (Sevilla).\r\n\r\n\r\n\r\n', 'DSC_0232.jpg', NULL, NULL),
(115, '2015-01-01 17:00:25', 0, 0, 'romanisara@hotmail.com', 'SN', 'Barcelona', 'Barcelona', 'otras', '', '', 0, 0, 0, 0, 'Ofrezco prÃ©stamos de dinero a todos\r\nSoy un individuo nuestra oferta de prÃ©stamo empresa de 3000 â‚¬ a 900.000.000â‚¬  a nadie capaz de devolver con intereses a la tasa del 3% para cualquier persona interesada escribirme, somos individuos que ofrecen prÃ©stamos entre personas serias que necesita prÃ©stamo de auto, para la compra de una casa, ContÃ¡ctenos hoy mismo y dÃ©jenos saber la cantidad de dinero que quiere pagar. Estamos dispuestos a cumplir con nuestros candidatos dentro de 72 horas de la recepciÃ³n de su solicitud. PÃ³ngase en contacto con nosotros e-mail : romanisara@hotmail.com', '0000.jpg', NULL, NULL),
(124, '2015-01-06 03:19:01', 0, 0, 'Loli Sanchez Peluqueria', '655458752', 'Pilas', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, ' Tu nueva peluquerÃ­a en Pilas\r\nC/ Virgen del Pilar 34\r\nProductos de primeras marcas\r\nCoje tu cita 655458752\r\nTambiÃ©n whatsapp. ', '20150106041517.jpg', NULL, NULL),
(127, '2015-01-10 08:58:08', 0, 0, 'TomÃ¡s', '627992521', 'Pilas', 'Sevilla', 'informatica', '', '', 0, 0, 0, 0, 'Vendo tarjeta grÃ¡fica en muy buenas condiciones, garantizado, con solo 4 meses de uso, aun le queda 20 meses de garantÃ­a, gastos de envÃ­o a cuenta del comprador, podÃ©is llamar o por whatsapp para mÃ¡s informaciÃ³n. . . .', '20150110095740.jpg', NULL, NULL),
(128, '2015-01-11 02:39:14', 0, 0, 'Loli Sanchez Peluqueria', '655458752', '', 'Sevilla', 'salud_belleza', '', '', 0, 0, 0, 0, '  Tu nueva peluquerÃ­a en Pilas.\r\nC/ Virgen del Pilar 34.\r\nProductos de primeras marcas.\r\nCoje tu cita 655458752.\r\nTambiÃ©n whatsapp.  ', '20150111033729', NULL, NULL),
(129, '2015-01-11 02:44:12', 0, 0, 'Hyundai Pilas', '699265451', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, ' Estamos en la calle Santa Angela de la Cruz en Pilas. ', '20150111034254', NULL, NULL),
(130, '2015-01-29 00:28:22', 0, 0, 'JesÃºs', '657782157', '', 'Sevilla', 'comics y tebeos', '', '', 0, 0, 0, 0, 'MAGOS DEL HUMOR\r\nMortadelo y FilemÃ³n, rompetechos , superLÃ³pez. . . . . . Nuevos sÃ³lo leÃ­dos una vez , es una colecciÃ³n de 40 libros muy bonita algo negociable pero esta nueva y costo mÃ¡s de 150â‚¬, envÃ­o dentro de peninsula, por solo 80 euros.', '20150111063512', NULL, NULL),
(132, '2015-01-26 17:15:12', 0, 0, 'JesÃºs', '657782157', '', 'Sevilla', 'comics y tebeos', '', '', 0, 0, 0, 0, ' MAGOS DEL HUMOR\r\nMortadelo y FilemÃ³n, rompetechos , superLÃ³pez. . . . . . Nuevos sÃ³lo leÃ­dos una vez , es una colecciÃ³n de 40 libros muy bonita algo negociable pero esta nueva y costo mÃ¡s de 150â‚¬, envÃ­o dentro de peninsula, por solo 80 euros. ', '20150115065019', NULL, NULL),
(133, '2015-01-17 06:37:13', 0, 0, 'Hyundai Pilas', '699265451', '', 'Sevilla', 'motor_todoterrenos', '', '', 0, 0, 0, 0, '  Estamos en la calle Santa Angela de la Cruz en Pilas.  ', '20150117073559', NULL, NULL),
(135, '2015-01-19 08:30:20', 0, 0, 'Fernando Moreno LÃ³pez', '626227522', '', 'Granada', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, ' Se busca compaÃ±ero/ compaÃ±era de casa en GRANADA CIUDAD, zona Alcampo (Calle Santa Herminia), cerca del Campus de la Cartuja (10 minutos andando). TambiÃ©n hay lÃ­neas de buses urbanos cerca y paradas de taxi. La casa consta de dos plantas distribuidas en vestÃ­bulo, salÃ³n comedor, un dormitorio en planta baja y otros tres dormitorios en la planta superior, cocina, cuarto de baÃ±o, aseo y patio; y se encuentra amueblada con una superficie aproximada de 100 m2.  La vivienda tiene buena iluminaciÃ³n gracias al patio interior. El precio total es de 600â‚¬, 150â‚¬ por persona, gastos a parte. La lÃ­nea dada de alta de internet es de Pepephone con 14 megas contratados al precio de 23,6â‚¬ (5,9â‚¬ por persona) al mes. ', '20150119092718', NULL, NULL),
(136, '2015-02-01 20:05:44', 0, 0, 'CristÃ³bal', '616107800', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, ' FULL EQUIPE Y PERFECTO ESTADO DE CONSERVACION.\r\nPEUGEOT - 207 C. C.\r\nVendo peugeot 207 cc cabriolet perfecto estado de conservacion sensor de aparcamiento , climatizador bizona , neumaticos nuevos , todas las revisiones al dia , mejor ver 616 10 78 00. Color rojo, 56000 Km, precio 5500 euros, es de 2008, localidad: Pilas.', '20150121075229', NULL, NULL),
(140, '2015-01-21 18:32:20', 0, 0, 'VIVIENDAS DE BANCOS', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ALFARERIA. REF. MR078 REYNES Venta de vivienda duplex en todo el centro de Pilas con acceso a todos los servicios. Consta de 2 plantas, 3 dormitorios, 1 baÃ±o, 1 aseo, patio interior con 17, 23 mt2. Verlo sin compromiso y haz tu propuesta.\r\nPrecio salida......  76.400 euros\r\nMERCEDES\r\nMOVIL  685213499\r\nFIJO     955722184\r\nproductosbancarios2014@gmail.com', '20150121072739', NULL, NULL),
(141, '2015-01-21 18:40:32', 0, 0, 'VIVIENDA DE BANCO', '955722184', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'TRIANA 22. REF. MR080 Venta de vivienda de entidad bancaria en Pilas con 3 dormitorios, 1 baÃ±o, 1 aseo, salon, patio delt y trasero. Lama sin compromiso e informate. Tenemos un gran surtido en viviendas de entidades bancaria. 74.500 EUROS\r\nMercedes 685213499-955722184\r\nproductosbancarios2014@gmail.com', '20150121073801', NULL, NULL),
(142, '2015-01-21 18:53:36', 0, 0, 'VIVIENDAS DE BANCOS', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTAVenta de casas en Pilas  VIVIENDA DE ENTIDAD BANCARIA. \r\nCristobal colon. REF. MR079 REYNES Vivienda con muy buena ubicacion , distribuida en dos plantas, con 5 dormitorios, 1 baÃ±o completo, 1 aseo, patio trasero y balcones. Mejor ver, llame sin compromiso y diga que es lo que necesita. Se lo buscamos. Haga su oferta a partir del precio de salida. 83.340 euros\r\n\r\nMercedes 685213499-955722184\r\nproductosbancarios@gmail.com', '20150121074032', NULL, NULL),
(143, '2015-02-03 07:12:49', 0, 0, 'GRAN LOCAL DE ENTIDAD BANCARIA', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'GRAN LOCAL DE ENTIDAD BANCARIA EN PILAS. ALFARERIA 62. Ref. mr037 aljarafeinmobiliaria. Venta de gran local en todo el centro de Pilas, de entidad bancaria, con 326 mt2, distribuido en dos plantas, fachada totalmente acristalada, espacios muy amplios y diÃ¡fanos en planta primera. Financiado totalmente incluido los gastos de notaria.\r\nMERCEDES 685213499-955722184. productosbancarios2014@gmail.com', '20150121082229', NULL, NULL),
(144, '2015-02-02 06:49:18', 0, 0, 'VIVIENDAS DE BANCOS', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'AVDA. AL-ANDALUS 23. Pilas.\r\nRef. mr028 aljarafeinmobiliaria. \r\nCasa independiente con un gran local comercial totalmente diafano de entidad bancaria totalmente financiado incluido los gastos de notaria. La vivienda consta de 4 dormitorios, 3 baÃ±os, ropero empotrado en dormitorio principal, gran salÃ³n comedor con cocina americana y patio interior, gran azotea con cuarto lavadero. Si desea mas informaciÃ³n, no dude, llÃ¡meme. \r\nMERCEDES 685213499-955722184\r\nPRECIO SALIDA 278.000 â‚¬\r\nproductosbancarios2014@gmail.com', '20150121082918', NULL, NULL),
(145, '2015-01-21 19:43:27', 0, 0, 'NAVE BANCARIA', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'PROCEDENTE DE BANCO - ROMERAL 30 - LA PUEBLA DEL RIO        102.700 EUROS\r\nRef. mr051 bollullosinmobiliaria nave industrial procedente de entidad bancaria con 289 mt2 con dos plantas, 6 oficinas, salon de reuniones, baÃ±os de seÃ±ora y caballero, cocina, escaleras de marmol, suelos de parquet, suelos de nave de ormigon pulido y pintado, todo en perfectas condiciones. Hacer contraoferta. \r\nMERCEDES 685213499-955722184\r\nproductosbancarios2014@gmail.com', '20150121083800', NULL, NULL),
(146, '2015-01-21 19:50:19', 0, 0, 'OFICINAS ENTIDAD BANCARIA', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFICINAS Y LOCALES DE ENTIDAD BANCARIA\r\nBollullos inmobiliaria Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡atencion Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡Â¡ venta de locales comerciales y oficinas en el poligono industrial PIBO, en Bollullos de la Mitacion , #### son de entidad bancaria ### nuevos a estrenar, pregunten segun sus necesidades metros y precios, con plazas de garaje incluida. Unico en el mercado. Haga su oferta a partir del precio de salida.  \r\nMERCEDES  685213499-  955722184\r\nproductosbancarios2014@gmail.com\r\n', '20150121084327', NULL, NULL),
(147, '2015-01-21 19:54:16', 0, 0, 'ADOSADO ENTIDAD BANCARIA', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'VENEZUELA 5. REF. MR027 aljarafeinmobiliaria. PILAS. Vivienda de entidad bancaria 100 % financiado, incluido gastos de notaria. Adosado con 3 dormitorios, salon comedor, cocina amueblada, 2 baÃ±os y patio trasero. Tenemos una gran variedad de vivienda en Pilas, si no encuentra lo que busca, pongase en contacto en este telefono. Haga su oferta a partir del precio de salida.\r\nMERCEDES  685213499 -955722184\r\nproductosbancarios2014@gmail.com', '20150121085019', NULL, NULL),
(148, '2015-01-21 19:57:12', 0, 0, 'PROMOCION DE BANCO', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'GRAN PROMOCION BANCARIA EN LAS PAJANOSAS\r\nROMERO. REF. MR073 Promocion en la sierra norte a solo 17 de Sevilla por autovia. Muy buena promocion a estrenar procedente de entidad bancariacon una excelente financiacion. La vivienda consta de 2 plantas con 4 dormitorios, gran salon con chimenea, amplia cocina, 2 baÃ±os y 1 aseo. Carpinteria de aluminio lacado, doble acristalamiento, lavabos de sobreencimera. Instalacion de a/a centralizado, alarma de seguridad incorporada, patios tras y delt. Haga su oferta a partir del precio de salida. \r\n113.500 EUROS\r\nMERCEDES 685213499-955722184\r\nproductosbancarios2014@gmail.com', '20150121085416', NULL, NULL),
(149, '2015-01-21 20:03:34', 0, 0, 'CASA DE PUEBLO DE BANCO', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'JUAN SEBASTIAN EL CANO 44. REF. MR029 BOLLULLOSINMOBILIARIA. Casa de pueblo de entidad bancaria financiada 100 % incluido los gastos de notaria. La vivienda consta de una sola planta con dos dormitorios a la calle, salon, patio trasero con pozo propio y cobertizo. La cocina y el baÃ±o esta en obras por terminar. La parcela es de 200 mt2. Haga su oferta a partir del precio de salida.67.100 EUROS\r\nMERCEDES  685213499-955722184\r\nproductosbancarios2014@gmail.com', '20150121085712', NULL, NULL),
(150, '2015-01-21 20:06:46', 0, 0, 'VIVIENDAS DE BANCOS', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ALEMANIA 12. Ref. mr089 venta de adosados de entidad bancaria en PILAS, con parcela de 113 mt2 y 95 mt2 construido, dividido en 2 plantas, con 3 dormitorios, roperos empotrados, 1 baÃ±o, 1 aseo, salon comedor con chimenea, patio delt y tras. paga tu vivienda como si fuese un alquiler. Haga su oferta a partir del precio de salida. 59.850 EUROS\r\nMERCEDES  685213499-955722184\r\nproductosbancarios2014@gmail.com', '20150121090334', NULL, NULL),
(151, '2015-02-01 20:04:34', 0, 0, 'ALQUILER NAVE EN PIBO', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'REF. MR095 INMOBILIARIA Alquiler de nave en PIBO, Bollullos de la Mitacion, con una parcela de 970 mt2, superficie de la nave de 672 mt2, 210 mt de patio delantero y 90 mt2 de patio trasero. Dispone de una oficina de unos 75 mt2, servicios de caballero y seÃ±ora preparado para minusvalidos. Instalacion de luz y agua, a contratar. La comunidad es de 100 euros incluido en el precio del alquiler. 1300 EUROS\r\nMERCEDES 685213499-955722184\r\nmercedesgestioninmobiliaria@gmail.com', '20150121090646', NULL, NULL),
(152, '2015-02-02 06:42:02', 0, 0, 'Jose', '666882641', '', 'Huelva', 'otras', '', '', 0, 0, 0, 0, 'Se vende pecera de 120 litros completa, con todos sus accesorios, con soporte para fijarla en la pared, sin necesidad de ponerla encima de un mueble, por solo 110 euros. ', '20150125052123', NULL, NULL),
(156, '2015-02-01 02:37:15', 0, 0, 'Solar en Venta', 'SN', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, ' Se vende solar en UrbanizaciÃ³n La Huerta del MarquÃ©s. Junto a desguaces el Pinguino y a la Hyundai, en Pilas. ', '20150129013252', NULL, NULL),
(159, '2015-02-03 06:16:29', 0, 0, 'Expo ArtesanÃ­a', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'SÃ¡bado 7 de Febrero.\r\nDesde las 11 de la maÃ±ana.\r\nPlaza de AmÃ©rica.\r\nPilas (Sevilla).', '20150203063840', NULL, NULL),
(160, '2015-02-03 05:43:23', 0, 0, 'Artistas y Artesanos PileÃ±os.', 'SN', '', 'Sevilla', 'asociaciones', '', '', 0, 0, 0, 0, 'AsociaciÃ³n de Artistas y Artesanos PileÃ±os.', '20150203064226', NULL, NULL),
(161, '2015-02-03 05:51:35', 0, 0, 'Centro Atlas.', '954750139', '', 'Sevilla', 'salud_belleza', '', '', 0, 0, 0, 0, 'Centro Atlas.\r\n41840 Pilas (Sevilla).\r\nAv. Juan Carlos I, 4.\r\ntlf: 954 75 01 39\r\nwww.centromedicoatlas.es', '20150203064354', NULL, NULL),
(162, '2015-02-03 05:50:40', 0, 0, 'Centro Atlas.', '954750139', '', 'Sevilla', 'salud_belleza', '', '', 0, 0, 0, 0, 'Centro Atlas.\r\n41840 Pilas (Sevilla).\r\nAv. Juan Carlos I, 4.\r\ntlf: 954 75 01 39\r\nwww.centromedicoatlas.es', '20150203064539', NULL, NULL),
(163, '2015-03-11 22:55:04', 0, 0, 'ARMAZONES PARA TAPICERIAS', '606199089', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'CARPINTERIA DE ARMAZONES PARA TAPICERIAS. Hacemos todo tipo de armazones de madera y aglomerado, butacas, sofÃ¡s, rinconeras, chaise longue, etc. Todo a medida. Precios econÃ³micos.', '20150311115347', '20150311115347b', '20150311115347c'),
(164, '2015-03-21 22:06:41', 0, 0, 'ARMAZONES PARA TAPICERIAS.', '606199089', '', 'Sevilla', 'empleo_demandas', '', '', 0, 0, 0, 0, ' CARPINTERIA DE ARMAZONES PARA TAPICERIAS.\r\nHacemos todo tipo de armazones de madera y aglomerado, butacas, sofÃ¡s, rinconeras, chaise longue, etc. Todo a medida. Precios econÃ³micos. ', '20150321110513', '20150321110513b', '20150321110513c'),
(165, '2015-02-26 06:15:28', 0, 0, 'ARMAZONES PARA TAPICERIAS', '606199089', '', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, ' CARPINTERIA DE ARMAZONES PARA TAPICERIAS, Hacemos todo tipo de armazones de madera y aglomerado, butacas, sofÃ¡s, rinconeras, chaise longue, etc. Todo a medida. Precios econÃ³micos. ', '20150226071437', '20150226071437b', '20150226071437c'),
(166, '2015-02-26 06:13:55', 0, 0, 'ARMAZONES PARA TAPICERIAS', '606199089', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, '  CARPINTERIA DE ARMAZONES PARA TAPICERIAS, Hacemos todo tipo de armazones de madera y aglomerado, butacas, sofÃ¡s, rinconeras, chaise longue, etc. Todo a medida. Precios econÃ³micos.  ', '20150226071242', '20150226071242b', '20150226071242c'),
(167, '2015-02-04 18:28:30', 0, 0, 'PEUGEOT - 207 C. C', '616107800', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, 'Peugeot de segunda mano en Pilas (SEVILLA).\r\n\r\nPEUGEOT - 207 C. C\r\nVendo peugeot 207 cc cabriolet perfecto estado de conservaciÃ³n sensor de aparcamiento, climatizador bizona , neumaticos nuevos , todas las revisiones al dia , mejor ver 616 10 78 00. Color rojo.\r\n\r\n5.500â‚¬, 2008 aÃ±o, 55.000 kms, gasolina, particular, cambio manual.', '20150204072441', NULL, NULL),
(168, '2015-02-11 16:07:05', 0, 0, 'PEUGEOT - 207 C. C', '616107800', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, ' Peugeot de segunda mano en Pilas (SEVILLA). PEUGEOT - 207 C. C. Vendo peugeot 207 cc cabriolet perfecto estado de conservaciÃ³n sensor de aparcamiento, climatizador bizona , neumÃ¡ticos nuevos , todas las revisiones al dia, mejor ver, 616 10 78 00. Color rojo. 5.500â‚¬, 2008 aÃ±o, 55.000 kms, gasolina, particular, cambio manual. ', '20150211050549', NULL, NULL),
(169, '2015-02-11 15:53:06', 0, 0, 'PEUGEOT - 207 C. C', '616107800', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, 'Peugeot de segunda mano en Pilas (SEVILLA). PEUGEOT - 207 C. C. Vendo peugeot 207 cc cabriolet, perfecto estado de conservaciÃ³n, sensor de aparcamiento, climatizador bizona, neumÃ¡ticos nuevos, todas las revisiones al dia, mejor ver 616 10 78 00. Color rojo. 5.500â‚¬, 2008 aÃ±o, 55.000 kms, gasolina, particular, cambio manual. ', '20150211044936', NULL, NULL),
(170, '2015-03-11 22:53:18', 0, 0, 'MINI COOPER-S n ', '619402315', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, 'Mini cooper-s.\r\n173.cv de potencia.motor BMW\r\n  equipamiento:\r\n- elevalunas.\r\n- alarma.\r\n- mandos al volante. \r\n- control de crucero. \r\n- climatizador.\r\n- ordenador a bordo\r\n- cierre centralizado.\r\n- asientos de piel.\r\n- neumÃ¡ticos runflat. \r\n- radio cd.\r\n- airbag laterales.\r\n- 6/velocidades.\r\n\r\nsiempre en garaje.\r\nmuy nuevo y cuidado.\r\n\r\nPRECIO APRÃ“XIMADO A NEGOCIAR  10.700,00 Transferido\r\n', '20150204095333', NULL, NULL),
(171, '2015-05-25 16:15:03', 0, 0, 'Moto Yamaha VIRAGO', '619402315', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'VENDO(Por poco uso)\r\n\r\nYAMAHA VIRAGO 250.cc.\r\nMotor de 4/Tiempos.\r\n17.000- KM\r\n\r\nBuen estado y muy cuidada, siempre en garaje.\r\nPRECIO 2.000,00 Euros a NEGOCIAR\r\nTransferencia incluida !', '20150204100103', NULL, NULL),
(172, '2015-05-25 16:14:48', 0, 0, 'Cochera particular', '619402315', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'Cochera reformada. \r\nCon luz y agua. \r\n40-MT Cdos. \r\nUbicaciÃ³n muy buena. \r\n25.000â‚¬. \r\nPrecio negociable!.\r\n', '20150204100526', NULL, NULL),
(174, '2015-02-05 08:31:35', 0, 0, 'pala cargadora sin cazo', '670840192', '', 'Sevilla', 'agricultura', '', '', 0, 0, 0, 0, 'vendo pala cargadora marca LOPEZ GARRIDO. MODELO expori 2000 L3. incluye las cojidar del chaci no tiene pala montado en tractor case MX 135. precio conjunto 2900 euros negociables. contesto a wassat y llamadas.', '20150205092633', NULL, NULL),
(175, '2015-05-24 06:17:41', 24, 0, 'chofer con adr', '670840192', '', 'Sevilla', 'empleo_demandas', '', '', 0, 0, 0, 0, 'soy conductor con 10 aÃ±os de experiencia en anbito nacional, baÃ±eras plataformas taulinas todo tipo de remorques. chofer de camion rijido y articulado. con toda la documentacion en reglaCAP, ADR basico y cisterna, targeta tacografo, curso deprevencion y riesgos laborables, carnet de carretillero ETC, , , suerdo a negociar. contesto a wassap y telefono', '20150205093358', NULL, NULL),
(176, '2015-05-24 06:17:28', 24, 0, 'coleccion de juegos de madera', '670840192', '', 'Sevilla', 'coleccionismo', '', '', 0, 0, 0, 0, '49 juegos de madera colecciÃ³n completa con testo de la historia de cada juego. vendo por que no los utilizo, estan sin estrenar la mayoria estan en sus cajas. ideal para coleccionistas que le gusten usar mucho la intelijencia. contesto a wassap, correos. telefono', '20150205093509', NULL, NULL),
(177, '2015-05-24 06:17:14', 24, 0, 'alquilo terreno en a-92.km 86', '670840192', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Autovia sevilla-malaga. K 86. terreno osuna y aguadulce para empresas que quieran instalar torre de repetidor telefonica, wifi, negocion a pies de autovia ETC. . . . terreno a pie de autovia. tambien para publicidad. o lo que se necesite.2700 m2. precio a negociar. contesto a wassap, correo, tlefono. ', '20150205094025', NULL, NULL),
(178, '2015-05-24 06:16:44', 24, 0, 'alquilo terreno en a-92.km 86', '670840192', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'Autovia sevilla-malaga. K 86. Autovia sevilla-malaga. K 86. terreno osuna y aguadulce para empresas que quieran instalar torre de repetidor telefonica, wifi ETC. . . . terreno a pie de autovia. tambien para publicidad. o lo que se necesite. precio a negociar. contesto a wassap, correo, tlefono', '20150205094433', NULL, NULL),
(179, '2015-05-24 06:16:31', 24, 0, 'caja de cambio.peugeot.fiat,ci', '670840192', '', 'Sevilla', 'motor', '', '', 0, 0, 0, 0, 'Caja de cambio de peugeot. la vendo por que ya no la necesito. numero de referencia: 20umu5 6209131. la referencia es para que no aya error-contesto por wassap, correo, telefon', '20150205094602', NULL, NULL),
(180, '2015-05-24 06:16:17', 24, 0, 'monedas antiguas', '670840192', '', 'Sevilla', 'coleccionismo', '', '', 0, 0, 0, 0, 'ofrezco monedas de todo tipo de paises. de las mas que tengo son espaÃ±olas se el precio que pueden alcanzar en el mercado pero se cotizan muy bien. tengo en tendido que segun el numero de la estrella asÃ­n se cotiza su valor. son del aÃ±o 1777 en adelante asta ace unos aÃ±os. si alguien me puede mandar un correo con el precio de las monadas espaÃ±olas, tengo muchas mas monedad. comtesto a wassap, correo, telefon ', '20150205094818', NULL, NULL),
(181, '2015-05-24 06:16:04', 24, 0, 'videocamara', '670840192', '', 'Sevilla', 'imagen y sonido', '', '', 0, 0, 0, 0, 'Camara de video sin estrenar. es un regalo y no la necesito. vendo o cambio por algo que me interese. tables movil. o algo interesante. contactar por wassap. e mail. telefono', '20150205094956', NULL, NULL),
(182, '2015-05-24 06:15:52', 24, 0, 'grupos electricos', '670840192', '', 'Sevilla', 'motor_vehiculos industriales', '', '', 0, 0, 0, 0, 'esta en buenas condiciones para su funcionamiento. 220-380. motor iveco. arancan a la primera, el precio de cada uno es 4000 euros cada uno. se puede probar. contactar por telefono wassap, correo', '20150205095141', NULL, NULL),
(183, '2015-05-24 06:15:42', 24, 0, 'pala cargadora sin cazo', '670840192', '', 'Sevilla', 'motor_tractores', '', '', 0, 0, 0, 0, 'vendo pala cargadora marca LOPEZ GARRIDO. MODELO expori 2000 L3. incluye las cojidar del chaci no tiene pala montado en tractor case MX 135. precio conjunto 2900 euros negociables. contesto a wassat y llamadas.', '20150205095734', NULL, NULL),
(184, '2015-05-24 06:15:33', 24, 0, 'chofer con adr', '670840192', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'soy conductor con 10 aÃ±os de experiencia en anbito nacional, baÃ±eras plataformas taulinas todo tipo de remorques. chofer de camion rijido y articulado. con toda la documentacion en reglaCAP, ADR basico y cisterna, targeta tacografo, curso deprevencion y riesgos laborables, carnet de carretillero ETC, , , suerdo a negociar. contesto a wassap y telefono', '20150205100113', NULL, NULL),
(185, '2015-05-24 06:15:25', 24, 0, 'chofer con adr', '670840192', '', 'Sevilla', 'empleo_ofertas', '', '', 0, 0, 0, 0, 'soy conductor con 10 aÃ±os de experiencia en anbito nacional, baÃ±eras plataformas taulinas todo tipo de remorques. chofer de camion rijido y articulado. con toda la documentacion en reglaCAP, ADR basico y cisterna, targeta tacografo, curso deprevencion y riesgos laborables, carnet de carretillero ETC, , , suerdo a negociar. contesto a wassap y telefono', '20150205100308', NULL, NULL),
(189, '2015-02-10 05:42:26', 27, 0, 'Mago y animaciÃ³n infantil', '672184263', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'AnimaciÃ³n infantil con magia, canciones, figuras de globos, pintacaras, juegos, ventriloquÃ­a, y.mucha diversiÃ³n variada. \r\nMi pÃ¡gina web es : icaminaleon.com \r\nse atiende whatsapp ', '20150209094914', NULL, NULL),
(187, '2015-02-27 06:00:11', 25, 0, 'paragolpe trasero ford fiesta', '656658414', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, '  Vendo paragolpe trasero de Ford fiesta 2005  en muy buen estado, 50â‚¬. Pilas. ', '20150210064013', '20150227065943b', '20150227065943c'),
(188, '2015-02-23 17:41:10', 25, 0, 'paragolpe trasero ford fiesta', '656658414', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, '  Vendo paragolpe trasero de Ford fiesta 2005  en muy buen estado, 50â‚¬. Pilas. ', '20150210064146', '20150223074215b', '20150223074215c'),
(190, '2015-02-11 15:07:41', 0, 0, 'El Sitio', '646881815', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'ZALEMA 9 Y 11\r\nPilas, Andalucia, Spain\r\n646 88 18 15', '20150211040325', NULL, NULL),
(191, '2015-04-28 18:19:51', 0, 0, 'CAZADORA TRES CUARTOS', '657782157', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'CAZADORA TRES CUARTOS. Cazadora de moto tipo tres cuartos, estÃ¡ nueva, con protecciÃ³n en espalda y brazos. talla m contactar por tlf. o whatsapp. SÃ³lo 35 â‚¬.', '20150212060728', NULL, NULL),
(192, '2015-02-27 05:59:13', 0, 0, 'Bici.', '657782157', '', 'Sevilla', 'bicicletas', '', '', 0, 0, 0, 0, 'Bicicleta de niÃ±o, vendo porque se le quedÃ³ pequeÃ±a, con freno de disco delantero y suspensiÃ³n delantera, hasta 8 aÃ±os. 50 â‚¬, llamar por las maÃ±anas, tambiÃ©n whatsapp.', '20150212061658', '20150227065857b', '20150227065857c'),
(193, '2015-02-23 18:31:28', 0, 0, 'EQUIPACION COMPLETA', '679193992', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Vendo equipacion completa de moto. Se vende completa o por separada. Mono negro talla m (chaqueta y pantalÃ³n el cual esta por estrenar con la etiqueta puesta) 85 euros. Casco negro mate talla m 80 euros. Botas nÂº 43, negra a estrenar 40 euros. Guantes talla m negro 25 euros y pasamontaÃ±as negro 5 euros. EquipaciÃ³n completa se queda en 200 euros. Estoy en Pilas, tlf 679193992. juanma80botica@hotmail.com ', '20150214065630', '20150223073058b', '20150223073058c'),
(194, '2015-02-27 05:57:24', 0, 0, 'EQUIPACION COMPLETA', '679193992', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, ' Vendo equipacion completa de moto. Se vende completa o por separada. Mono negro talla m (chaqueta y pantalÃ³n el cual esta por estrenar con la etiqueta puesta) 85 euros. Casco negro mate talla m 80 euros. Botas nÂº 43, negra a estrenar 40 euros. Guantes talla m negro 25 euros y pasamontaÃ±as negro 5 euros. EquipaciÃ³n completa se queda en 200 euros. Estoy en Pilas, tlf 679193992. juanma80botica@hotmail.com  ', '20150214071820', '20150227065701b', '20150227065701c'),
(195, '2015-02-27 05:56:31', 0, 0, 'EQUIPACION COMPLETA', '679193992', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, ' Vendo equipacion completa de moto. Se vende completa o por separada. Mono negro talla m (chaqueta y pantalÃ³n el cual esta por estrenar con la etiqueta puesta) 85 euros. Casco negro mate talla m 80 euros. Botas nÂº 43, negra a estrenar 40 euros. Guantes talla m negro 25 euros y pasamontaÃ±as negro 5 euros. EquipaciÃ³n completa se queda en 200 euros. Estoy en Pilas, tlf 679193992. juanma80botica@hotmail.com  ', '20150214071934', '20150227065555b', '20150227065555c'),
(196, '2015-02-27 05:55:38', 0, 0, 'ExposiciÃ³n fotogrÃ¡fica.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'ExposiciÃ³n fotogrÃ¡fica. \r\nPilas. ', '20150215042444', '20150227065359b', '20150227065359c'),
(198, '2015-02-27 05:44:11', 0, 0, 'Conferencia; los orÃ­genes del S', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Conferencia; los orÃ­genes del Sevilla F.C.', '20150217114251', '20150227064345b', '20150227064345c'),
(199, '2015-02-27 05:42:08', 0, 0, 'LiquidaciÃ³n por reformas.', 'SN', '', 'Sevilla', 'moda y complementos', '', '', 0, 0, 0, 0, 'LiquidaciÃ³n por reformas.', '20150218052051', '20150227064134b', '20150227064134c'),
(200, '2015-02-27 06:01:41', 25, 0, 'vendo paragolpe delantero citroe', '656658414', '', 'Sevilla', 'motor_coches', '', '', 0, 0, 0, 0, 'vendo paragolpe delantero citroen c4 picasso exclusive de 2008. 70e', '20150222080933', '20150223071803b', '20150223071803c'),
(202, '2015-02-23 17:37:38', 0, 0, 'UrbanizaciÃ³n la Soledad, Pilas.', 'SN', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'UrbanizaciÃ³n la Soledad, Pilas.', '20150223063629', '20150223063629b', '20150223063629c'),
(206, '2015-02-27 06:13:18', 0, 0, 'vendo perro coker de dos aÃ±os p', '655355291', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'vendo perro coker de dos aÃ±os por 150 euros o cambio por yorsay', '20150227070801', '20150227070801b', '20150227070801c'),
(208, '2015-03-03 07:15:52', 0, 0, 'MÃXIMA URGENCIA FÃºjur, ', '605603331', '', 'Huelva', 'animales', '', '', 0, 0, 0, 0, 'MÃXIMA URGENCIA. FÃºjur, es nuestro pequeÃ±ajo especial. Es un cruce de american stanford o pitbull de tan solo 6 meses. ApareciÃ³ abandonado en un Desguace de Bollullos del Cdo.(Huelva). Su situaciÃ³n era calamitosa. TenÃ­a un prolapso rectal del que lo hemos operado y ahora estÃ¡ recuperÃ¡ndose. No tenemos un refugio donde tenerlo ni tampoco nos abren las puertas de ninguna protectora. En 3 dÃ­as ha pasado por 3 acogidas distintas, y no es fÃ¡cil ni para Ã©l ni para nosotros (que no tenemos muchos recursos y dependemos, la mayorÃ­a, de nuestros padres) afrontar tantos cambios. No sabemos quÃ© hacer con Ã©l. Estamos desesperados. NECESITAMOS UNA ACOGIDA ESTABLE Y SEGURA O UNA ADOPCIÃ“N PRONTO. FÃºjur es todo ternura. Se queda tranquilito al sentir la compaÃ±Ã­a y el cariÃ±o de unas manos que lo miman. No sabemos (ni queremos imaginar) la vida que ha tenido antes...Pero tÃº puedes hacer muy feliz a nuestro cachorrito. Â¿No te gustarÃ­a que todo ese amor que tiene para dar te lo diese a ti? FÃºjur te estÃ¡ esperando. PiÃ©nsalo. Ã‰l promete quererte siempre de manera incondicional. Por favor, envÃ­a este mensaje a tus familiares, a tus amigos...Tiene que existir esa persona que le cambie a FÃºjur esa mirada de cachorrÃ³n asustado. AyÃºdanos, ayÃºdalo. Su futuro tambiÃ©n depende de que no mires hacia otro lado. Para cualquier tipo de donaciÃ³n (dinero,pienso,collares,correas,medicamentos), para acoger, adoptar o para cualquier informaciÃ³n: 605 603 331 Facebook: Colectivo Animalista del Condado. Gracias por tu colaboraciÃ³n).', '20150303064740', '20150303064740b', '20150303064740c'),
(212, '2015-03-03 23:57:17', 0, 0, 'fotoanuncio', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'fotoanuncio', '20150304125701', '20150303092557b', '20150303092414c'),
(213, '2015-03-03 20:28:52', 0, 0, 'Cena de Gala.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Cena de Gala.', '20150303092818', '20150303092818b', '20150303092818c'),
(214, '2015-03-03 22:23:29', 0, 0, ' Ubicado en la zona mÃ¡s prestig', 'SN', '', 'Barcelona', 'hosteleria y turismo', '', '', 0, 0, 0, 0, ' Ubicado en la zona mÃ¡s prestigiosa de la ciudad de Pereira, a tan solo 80 Mtrs de la Plaza de Bolivar, rodeado de centros financieros, comerciales, restaurantes y vida nocturna, ubicado a 10 Min del Aeropuerto Internacional MatecaÃ±a, situado en el corazÃ³n comercial de la ciudad, para hacer de esta la mejor alternativa para disfrutar de su estadÃ­a en el Eje Cafetero. \r\n\r\nEl hotel estÃ¡ recientemente remodelado, para garantizar que su estadÃ­a este llena de servicios memorables, cuenta con 80 cÃ³modas, lujosas, amplias y cÃ¡lidas habitaciones para todas las preferencias, salones para sus eventos, convenciones y lo mejor, el servicio al cliente, considerado como uno de los mejores de COLOMBIA ', '20150303112250', '20150303112250b', '20150303112250c'),
(215, '2015-03-03 22:24:50', 0, 0, ' Â¿Deseas compartir con tu parej', 'SN', '', 'Barcelona', 'hosteleria y turismo', '', '', 0, 0, 0, 0, ' Â¿Deseas compartir con tu pareja un momento especial? \r\n\r\nGran Hotel desea incentivar la uniÃ³n, el amor y la comodidad de las parejas en nuestras instalaciones, por eso tiene para ti la siguiente promociÃ³n para que pases una noche inolvidable con tu ser amado.â€\r\n\r\nEsta promociÃ³n incluye la estadÃ­a en las siguientes habitaciones con las siguientes caracterÃ­sticas:\r\n\r\nStandard Superior Doble a $236.000*\r\n\r\nSuite Junior Doble $292.000*\r\n\r\nSuite Doble $330.000*\r\n\r\nCualquiera de las habitaciones mencionadas incluyen:\r\n\r\n1 Noche de alojamiento en la habitaciÃ³n seleccionada\r\n1 botella de ChampaÃ±a\r\nDecoraciÃ³n con pÃ©talos\r\n1 Canasta de frutas\r\n2 Desayunos tipo americano servidos a la habitaciÃ³n\r\n*PromociÃ³n vÃ¡lida de Jueves a Domingo incluyendo lunes festivos durante el aÃ±o 2015.\r\nen el #GranHotel. Reservas al PBX 3359500 \r\npereira colombia ', '20150303112339', '20150303112339b', '20150303112339c'),
(216, '2015-03-03 22:37:51', 0, 0, 'DÃ­a de la Mujer.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'DÃ­a de la Mujer.', '20150303113714', '20150303113714b', '20150303113714c'),
(217, '2015-08-14 18:25:24', 29, 0, 'CURSOS PROFESIONALES', '652614140', '', 'Sevilla', 'empleo_demandas', '', '', 0, 0, 0, 0, 'CURSOS PROFESIONALES Con autoescuela EUROCAP cursos baratos y subvencionados CAP inicial mercancÃ­as, viajeros y continua en olivares, el aljarafe, de Sevilla, tu permiso de conducir camiÃ³n y trailer gratis por tu empresa, del camiÃ³n C, del trÃ¡iler C E, del autobÃºs D, de la motocicleta A2, y btp para la policÃ­a, ambulancia, bomberos y taxis. Carnet de aplicador de plaguicidas (fitosanitarios cualificado y bÃ¡sico), biocidas, para trabajadores agrÃ­colas y explotaciones particulares, carretilleros y carretilla elevadora', '20150306012916', '20150306012702b', '20150306012702c'),
(218, '2015-04-24 05:44:23', 28, 0, 'GALLINAS UTRERANAS DE SELECCION\r', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE SELECCION\r\nAnimales muy rÃºsticos y resistentes a todo tipo de enfermedades y a la climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares en el campo. Magnificas ponedoras. Primeros premios ferias X y XI de la Gallina Utrerana. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad de huevos de pura raza aviar utrerana en plumas negra y perdiz. Pollitos de un dÃ­a por encargo; entrega febrero a junio. whatsapp. (ExplotaciÃ³n ganadera registrada)', '20150306125728', '20150306125728b', '20150306125728c'),
(219, '2015-04-24 05:43:50', 28, 0, 'GALLINAS UTRERANAS DE SELECCION\r', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE SELECCION\r\nAnimales muy rÃºsticos y resistentes a todo tipo de enfermedades y a la climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares en el campo. Magnificas ponedoras. Primeros premios ferias X y XI de la Gallina Utrerana. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad de huevos de pura raza aviar utrerana en plumas negra y perdiz. Pollitos de un dÃ­a por encargo; entrega febrero a junio. whatsapp. (ExplotaciÃ³n ganadera registrada)', '20150306125922', '20150306125922b', '20150306125922c'),
(220, '2015-05-02 05:12:08', 28, 0, 'GALLINAS UTRERANAS DE SELECCION', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE SELECCIÃ“N \r\nAnimales muy rÃºsticos y resistentes a todo tipo de enfermedades y a la climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares y ganaderÃ­a ecolÃ³gica. Magnificas ponedoras. Primeros premios ferias X y XI de la Gallina Utrerana. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad de huevos de pura raza aviar utrerana en plumas negra y perdiz. Pollitos por encargo; entrega febrero a junio. whatsapp. (ExplotaciÃ³n ganadera registrada)', '20150306010022', '20150306010022b', '20150306010022c'),
(221, '2015-03-06 00:03:52', 28, 0, 'GALLINAS UTRERANAS DE PURA RAZA\r', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE PURA RAZA\r\nAnimales muy rÃºsticos y resistentes a enfermedades y a climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares y ganaderÃ­a ecolÃ³gica. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad huevos pura raza aviar utrerana en plumas negra, perdiz, franciscana y blanca a partir del 20feb2015. Pollitos por encargo se entregan marzo a junio. Primeros premios ferias X y XI de la Gallina Utrerana. ExplotaciÃ³n ganadera andaluza. WhatsApp', '20150306010227', '20150306010227b', '20150306010227c'),
(222, '2015-03-06 00:05:14', 28, 0, 'GALLINAS UTRERANAS DE PURA RAZA\r', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE PURA RAZA\r\nAnimales muy rÃºsticos y resistentes a enfermedades y a climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares y ganaderÃ­a ecolÃ³gica. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad huevos pura raza aviar utrerana en plumas negra, perdiz, franciscana y blanca a partir del 20feb2015. Pollitos por encargo se entregan marzo a junio. Primeros premios ferias X y XI de la Gallina Utrerana. ExplotaciÃ³n ganadera andaluza. WhatsApp', '20150306010414', '20150306010414b', '20150306010414c'),
(223, '2015-05-02 05:11:42', 28, 0, 'GALLINAS UTRERANAS DE PURA RAZA', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE PURA RAZAAnimales muy rÃºsticos y resistentes a enfermedades y a climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares y ganaderÃ­a ecolÃ³gica. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad huevos pura raza aviar utrerana en plumas negra, perdiz, franciscana y blanca a partir del 20feb2015. Pollitos por encargo se entregan marzo a junio. Primeros premios ferias X y XI de la Gallina Utrerana. ExplotaciÃ³n ganadera andaluza. WhatsApp', '20150306010539', '20150306010539b', '20150306010539c'),
(224, '2015-05-02 05:11:24', 28, 0, 'GALLINAS UTRERANAS DE PURA RAZA\r', '652614140', '', 'Sevilla', 'animales', '', '', 0, 0, 0, 0, 'GALLINAS UTRERANAS DE PURA RAZA\r\nAnimales muy rÃºsticos y resistentes a enfermedades y a climatologÃ­a extrema. Muy apropiados para pequeÃ±as explotaciones familiares y ganaderÃ­a ecolÃ³gica. Criadero oficial inscrito en el Programa de RecuperaciÃ³n y ConservaciÃ³n de la Gallina Utrerana. Disponibilidad huevos pura raza aviar utrerana en plumas negra, perdiz, franciscana y blanca a partir del 20feb2015. Pollitos por encargo se entregan marzo a junio. Primeros premios ferias X y XI de la Gallina Utrerana. ExplotaciÃ³n ganadera andaluza. WhatsApp', '20150306010707', '20150306010707b', '20150306010707c');
INSERT INTO `guitarwars` (`id`, `date`, `user_id`, `id_provincias`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `año`, `precio`, `descripcion`, `screenshot`, `screenshot2`, `screenshot3`) VALUES
(225, '2015-03-17 21:35:17', 31, 0, 'CONSTRUCCIONES EN MADERA.', '675845602', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'CONSTRUCCIONES RÃšSTICAS EN MADERA\r\nEspecialista en todo tipo de construcciones en madera. dedicados desde hace mÃ¡s de 15 aÃ±os a la fabricaciÃ³n de estructuras en madera (pÃ©rgolas, marquesinas, porches, cenadores, casas, vallas, etc), nos avalan importantes obras en toda la geografÃ­a espaÃ±ola. nuestro objetivo es siempre ofrecer un mejor producto a nuestros clientes, prosperar de forma continuada y crear un equipo profesional a su servicio. pueden encontrarnos en www. construmader. es PIDA PRESUPUESTO SIN COMPROMISO.', '20150306033619', '20150306033619b', '20150306033619c'),
(227, '2015-08-14 18:25:00', 29, 0, 'ADR. MERCANCIAS PELIGROSAS. Empe', '652614140', '', 'Sevilla', 'empleo_demandas', '', '', 0, 0, 0, 0, 'ADR. MERCANCIAS PELIGROSAS. Empezamos ya prÃ³ximo curso ADR de transporte por carretera de mercancÃ­as peligrosas , dÃ­as 07 a 11 septiembre 2015. Cursos BÃ¡sico   cisternas. InscripciÃ³n fecha tope el 03 de septiembre. Bonificado por la tgss fundaciÃ³n tripartita a travÃ©s de los crÃ©ditos de formaciÃ³n continua de las empresas. Gratis (sin coste) para trabajadores, conductores vehÃ­culos a.d.r. centro de formaciÃ³n eurocap. aljarafe, olivares, sanlÃºcar la mayor, albaida, gerena, aznalcollar, carriÃ³n.Pilas. Guillena. Sevilla.', '20150306043529', '20150315100345b', '20150315100345c'),
(228, '2015-04-25 20:57:23', 29, 0, 'CURSO BIOCIDA PARA LA HIGIENE AN', '652614140', '', 'Sevilla', 'aficiones y ocio', '', '', 0, 0, 0, 0, 'CURSO BIOCIDA PARA LA HIGIENE ANIMAL\r\n\r\nEn autoescuela eurocap cursos baratos/bonificados. \r\n\r\nPRÃ“XIMO CURSO BIOCIDAS EMPIEZA DÃA 06 ABRIL\r\n\r\nINSCRIPCIÃ“N DESDE YA !!!\r\n\r\nSolicita informaciÃ³n a Rafael', '20150306044804', '20150306044804b', '20150306044804c'),
(229, '2015-05-21 19:00:06', 29, 0, 'CURSO APLICADOR DE PRODUCTOS FIT', '652614140', '', 'Sevilla', 'agricultura', '', '', 0, 0, 0, 0, 'CURSO APLICADOR DE PRODUCTOS FITOSANITARIOS En autoescuela eurocap cursos baratos/bonificados. carnet de aplicador de plaguicidas (fitosanitarios cualificado y bÃ¡sico), biocidas, para trabajadores agrÃ­colas y explotaciones agropecuarias particulares. benacazon, olivares, sevilla, aljarafe, pilas, bollullos, aznalcazar, umbrete, sanlucar la mayor, albaida, salteras', '20150306045423', '20150306045423b', '20150306045423c'),
(230, '2015-08-14 18:23:26', 29, 0, 'CARNET DE MOTO A2. Con autoe', '652614140', '', 'Sevilla', 'aficiones y ocio', '', '', 0, 0, 0, 0, 'CARNET DE MOTO A2. Con autoescuela EUROCAP cursos baratos  de la motocicleta A2, y tambien  BTP para la policÃ­a, ambulancia, oposiciones tussam, bomberos, taxis', '20150306050141', '20150306050141b', '20150306060414c'),
(231, '2015-03-16 22:52:17', 0, 0, 'Primavera rociera.\r\nPilas.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Primavera rociera.\r\nPilas.', '20150308074213', '20150308074213b', '20150308074213c'),
(232, '2015-03-08 22:53:37', 15, 0, 'Vendo analizador de aire acondic', '657360180', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'Vendo analizador de aire acondicionado, estÃ¡ nuevo, lo comprÃ© en salvador scoda, en el polÃ­gono pibo, sÃ³lo lo he usado una vez para recargar mi aire acondicionado, pero ahora sÃ³lo venden el gas a las personas con el carnet de instalador, atiendo whatsapp. Precio: sÃ³lo 75 euros.', '20150308115231', '20150308115231b', '20150308115231c'),
(234, '2015-03-10 20:42:17', 0, 0, 'DÃ­a del Padre en Airesur.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'DÃ­a del Padre en Airesur.', '20150310094150', '20150310092218b', '20150310092218c'),
(235, '2015-03-11 09:42:43', 0, 0, 'Limpieza de chimeneas.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Limpieza de chimeneas.', '20150311104211', '20150311104211b', '20150311104211c'),
(236, '2015-03-11 11:18:34', 0, 0, 'chico de 34 aÃ±os se ofrece para', '683603229', '', 'Sevilla', 'empleo_demandas', '', '', 0, 0, 0, 0, 'chico de 34 aÃ±os se ofrece para portero de casetas de ferias,disponibilidad inmediata,coche propio,medidas:1.90 y 85 kilos.mas de 12 aÃ±os en el sector de la seguridad.tambien me ofrezco de chofer dispongo de todos los carnet de conducir,tambien de peon de la construccion,etc.....683603229 sfc_1904@hotmail.com pilas sevilla', '20150311121357', '20150311121357b', '20150311121357c'),
(237, '2015-03-12 11:49:40', 0, 0, 'Pizzas, dardos y billares.', 'SN', '', 'Sevilla', 'hosteleria y turismo', '', '', 0, 0, 0, 0, 'Pizzas, dardos y billares.', '20150312124851', '20150312124851b', '20150312124851c'),
(238, '2015-03-13 23:33:43', 0, 0, 'Pozos, gestiÃ³n y construcciÃ³n.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Pozos, gestiÃ³n y construcciÃ³n.', '20150313081433', '20150314123325b', '20150313081433c'),
(239, '2015-03-16 22:51:31', 0, 0, ' CENTRO DE ESTÃ‰TICA INTEGRAL.', 'SN', '', 'Alava', 'salud_belleza', '', '', 0, 0, 0, 0, ' CENTRO DE ESTÃ‰TICA INTEGRAL NO MAS GORDITAS. REALIZAMOS TODO TIPO DE TRATAMIENTO PARA ADELGAZAR COMO SER:  Masajes reductores, Masajes reafirmantes, Masajes relajantes, BaÃ±o turco, Electrodos,  Vendas frias, Yeso terÃ¡pia, 100% garantizada. DIRECCION: AV. BEIJING MEDIA CUADRA ANTES DE LLEGAR AV. SIMON LOPEZ Y PUENTE PINTO No. 70 CEL. 72711558 / 4401836 PREGUNTAR POR PAOLA. Cochabamba (Bolivia).', '20150314110545', '20150314110545b', '20150314110545c'),
(241, '2015-03-17 21:34:20', 31, 0, 'CONSTRUCCIONES EN MADERA.', '675845602', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'CONSTRUCCIONES EN MADERA \r\nEmpresa de contrucciÃ³n de estructuras en madera (pÃ©rgolas, cenadores, vallas, casas, porches, pasto, etc). pida presupuesto sin compromiso. nos avalan importantes obras realizadas en toda la geografÃ­a espaÃ±ola. pueden encontrarnos en www. construmader. es', '20150317103252', '20150317103252b', '20150317102533c'),
(242, '2015-03-17 21:37:57', 31, 0, 'CONSTRUCCIONES RÃšSTICAS EN MADE', '675845602', '', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'CONSTRUCCIONES RÃšSTICAS EN MADERA\r\nEspecialista en todo tipo de construcciones en madera. dedicados desde hace mÃ¡s de 15 aÃ±os a la fabricaciÃ³n de estructuras en madera (pÃ©rgolas, marquesinas, porches, cenadores, casas, vallas, etc), nos avalan importantes obras en toda la geografÃ­a espaÃ±ola. nuestro objetivo es siempre ofrecer un mejor producto a nuestros clientes, prosperar de forma continuada y crear un equipo profesional a su servicio. pueden encontrarnos en www. construmader. es PIDA PRESUPUESTO SIN COMPROMISO.\r\n\r\nGabriel\r\n\r\n675845602\r\n\r\n678117785', '20150317103611', '20150317103611b', '20150317103611c'),
(243, '2015-03-17 21:48:04', 31, 0, ' CONSTRUCCIONES EN MADERA.', '657845602', '', 'Huelva', 'profesionales', '', '', 0, 0, 0, 0, 'CONSTRUCCIONES RÃšSTICAS EN MADERA\r\nEmpresa de construcciÃ³n de estructuras en madera (pÃ©rgolas, cenadores, vallas, casas, porches, pasto, etc), pida presupuesto sin compromiso, nos avalan importantes obras realizadas en toda la geografÃ­a espaÃ±ola, pueden encontrarnos en www. construmader. es.', '20150317103826', '20150317103826b', '20150317103826c'),
(244, '2015-03-18 19:59:16', 0, 0, 'Anuncios gratis.', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Anuncios gratis.', '20150318085721', '20150318085721b', '20150318085721c'),
(245, '2015-03-18 20:19:30', 33, 0, 'Se vende chalet en UMBRETE. La s', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'Se vende chalet en UMBRETE. La superficie total de parcela es de 700 m2, cuenta con 150 m2 construidos utiles. Salon con chimenea, cocina amueblada. Tiene 4 dormitorios, dispone de 3 baÃ±os. Los suelos son de marmol en toda la vivienda. En exterior, con patio delantero, con patio trasero. Estupenda piscina propia. Ref: aljarafeinmobiliaria-10699', '20150318091659', '20150318091659b', '20150318091659c'),
(246, '2015-03-18 20:37:44', 33, 0, 'ALJARAFE INMOBILIARIA REF. MR122', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'ALJARAFE INMOBILIARIA REF. MR122. Se vende casa unifamiliar paredada atualmente reformandose al 1000 con nuevas inst. de electricidad, fontaneria, carpinteria interior y exterior, paredes lisas de perlita soleria interior y exterior en porcelanico, cocina abierta al salon, con cristal de seguridad con vista a piscina, dos plantas mas buardilla, garage cubierto, piscina, parecela de 250 M2 totalmente cerrada con muro de 2, 50 Mts de alto formando esquina.Precio 147.000 euros', '20150318093652', '20150318091930b', '20150318091930c'),
(252, '2015-03-19 07:59:54', 0, 0, 'Se alquila estupendo local, en B', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Se alquila estupendo local, en Bollullos de la MitaciÃ³n, en polÃ­gono PIBO. Cuenta con 225 m2 de espacio util en dos plantas. Tiene 2 aseos. Los suelos son de porcelanico y de gres en aseo. Trastero bajo la escalera, luces de emergencia. Estupenda zona comercial. Ref: aljarafeinmobiliaria-10391 \r\nPRECIO 650 EUROS', '20150319085751', '20150319085751b', '20150319085751c'),
(250, '2015-03-19 07:55:21', 0, 0, 'Se alquila nave en BENACAZON. La', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Se alquila nave en BENACAZON. La superficie total de parcela es de 500 m2, dispone de 1 baÃ±o. En exterior, con patio delantero. Electricidad 220 y 380 v. Ref: aljarafeinmobiliaria-10713. Precio 600 euros', '20150319085312', '20150319085312b', '20150319085312c'),
(251, '2015-03-19 07:57:51', 0, 0, 'Se alquila estupendo local comer', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Se alquila estupendo local comercial en Bollullos de la MitaciÃ³n. Antes se ha dedicado a gimnasio. Muy buen estado, bien situado. Ref: aljarafeinmobiliaria-10041\r\nPrecio alquiler 250 euros', '20150319085521', '20150319085521b', '20150319085521c'),
(249, '2015-03-18 20:36:14', 33, 0, 'Inmobiliaria ref. mr131. precios', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'Inmobiliaria ref. mr131. precioso adosado completamente nuevo en Pilas y muy equipado en una parcela de 130 mt2 y 90 mt2 construido. dispone de 3 dormitorios, 2 baÃ±os con columna de masaje, toldos, parquet en toda la vivienda, rejas, perlita, 2 aire acondicionado con bomba de frio-calor, puerta entrada garaje automatica, patio tras. de 30 mt2 con iluminacion ambiental, barbacoa, cesped artificial. cocina completamente nueva con todos los electrodomesticos, roperos empotrados recien pintada. POSIBILIDAD DE FINANCIACION.   120.000 EUROS', '20150318093447', '20150318093447b', '20150318092720c'),
(253, '2015-03-19 08:03:46', 0, 0, 'Se alquila nave en BOLLULLOS DE ', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Se alquila nave en BOLLULLOS DE LA MITACION. La superficie total de parcela es de 5000 m2, Cuenta con 2000 m2 de espacio util , dos oficinas en planta alta y servicios. 4 portones para carga y descarga Ref: aljarafeinmobiliaria-10618\r\nPRECIO 2000 EUROS', '20150319085954', '20150319085954b', '20150319085954c'),
(254, '2015-03-19 08:12:46', 0, 0, 'Se alquila nave en Palomares del', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Se alquila nave en Palomares del Rio en muy buen estado de 200 m2, con 1 baÃ±o. Puerta de entrada basculante. Separadora de grasa, fosa sÃ©ptica. Consta con una oficina. Patio delantero de 80 m2. Ref: aljarafeinmobiliaria-10859.\r\nPRECIO 800 EUROS', '20150319090346', '20150319090346b', '20150319090346c'),
(255, '2015-03-19 08:15:03', 0, 0, 'Alquiler en Almensilla .Chalet a', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Alquiler en Almensilla .Chalet amueblado independiente y muy luminoso, construido con materiales de primera, muros dobles con porespan , tiene 4 habitaciones en modulos independientes , cocina americana, salon con chimenea 3 cuartos de baÃ±os, terraza con lavadero y tendederos, mirador. Los espacios exteriores estan todo muy bien cuidado, con una bonita piscina y pozo con brocal de mucha agua, suelos de marmol, todo muy bien cuidado. aljarafeinmobiliaria -ref. 10922.', '20150319091246', '20150319091246b', '20150319091246c'),
(256, '2015-03-19 08:18:37', 0, 0, 'ALQUILER CON OPCION A COMPRA EN ', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ALQUILER CON OPCION A COMPRA EN BOLLULLOS MITACION.\r\nREF. MR018 ALJARAFEINMOBILIARIA Solamente alquiler con opcion a compra. Pareado con 4 dormitorios, dos baÃ±os completos y 1 aseo, gran salon con salida al patio, cocina, roperos empotrados. Dos buhardillas y 1 zotano sin abrir. Completamente nueva, sin estrenar. Abria que entregar 15. 000 euros por la opcion de compra. Precio venta 175. 000 euros.', '20150319091503', '20150319091503b', '20150319091503c'),
(257, '2015-03-19 08:24:05', 33, 0, 'ALQUILER EN PALOMARES DEL RIO Re', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ALQUILER EN PALOMARES DEL RIO Ref. mr036 bollullosinmobiliaria chalet independiente en una sola planta con parcela de 750 m2 y 170 mt2 construido, con piscina particular. dispone de 4 dormitorios con roperos empotrados, 2 baÃ±os completos, gran salon comedor y una amplia cocina. esta completamente amueblado. equipado con placas de calefaccion individuales, placas solares para darle apoyo al gas natural, a/a en salon, cocina y 1 dormit. apartamento exterior de 50 mt2 con aseo y dos estancias. pozo para riego.\r\nPRECIO 1000 EUROS', '20150319092156', '20150319092156b', '20150319092156c'),
(258, '2015-03-19 08:38:23', 33, 0, 'ALQUILER EN CASTILLEJA DE LA CUE', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ALQUILER EN CASTILLEJA DE LA CUESTA\r\n \r\nRef. mr057 bollullosinmobiliaria vivienda en alquiler en una zona muy centrica, a solo 5 minutos del centro del pueblo y 5 kl. a sevilla, esta muy cercana a airesur con una entrada muy amplia. la vivienda tiene construido 110 mt2, con 3 dormitorios, 1 baÃ±o, terraza, una gran azotea, amplio salon con muebles de mamposteria y cocina amueblada. Semiamueblado.\r\nPRECIO 550 EUROS', '20150319092405', '20150319092405b', '20150319092405c'),
(259, '2015-03-19 08:41:20', 33, 0, 'OFERTAAlquiler de chalets en Bol', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTAAlquiler de chalets en Bollullos de la Mitacion (SEVILLA) ALQUILER CHALET EN LA JULIANA\r\nSe alquila chalet, en bollullos de la mitacion. la superficie total de parcela es de 500 m2, tiene 4 dormitorios, cuenta con 3 baÃ±os. puertas interiores en color madera. ventanas aluminio. puerta de entrada blindada, en exterior. piscina si. ref: aljarafeinmobiliaria-9824. \r\nPRECIO 850 EUROS', '20150319093823', '20150319093823b', '20150319093823c'),
(260, '2015-03-19 08:44:34', 33, 0, 'OFERTA Alquiler de casas en Pila', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTA Alquiler de casas en Pilas (SEVILLA).\r\nALQUILER EN PILAS SIN MUEBLES\r\nRef. mr093 inmobiliaria alquiler de adosado en pilas con una parcela de 120 mt2 y 88 mt2 construido, dividido en dos plantas, con 3 dormitorios, 1 baÃ±o, 1 aseo , cocina americana amueblada. CE: G \r\nPRECIO 300 EUROS', '20150319094120', '20150319094120b', '20150319094120c'),
(261, '2015-03-19 08:46:43', 33, 0, 'BONITO ADOSADO EN BENACAZON\r\nREF', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'BONITO ADOSADO EN BENACAZON\r\nREF. MR098 SIN AMUEBLAR. Bonito adosado con 105 mt2 construido dividido en 2 plantas, dispone de 3 dormitorios, 2 baÃ±os completos, 1 aseo, cocina completamente amueblada, salon comedor muy luminoso, patio tras. de 50 mt2 totalmente arreglado, patio delt con cochera, armarios empotrados. La vivienda esta muy cercana a colegios, supermercados, bancos etc. Junto a la salida 14 de la A-49, parada bus en la misma puerta. \r\nPRECIO 500 EUROS', '20150319094434', '20150319094434b', '20150319094434c'),
(262, '2015-03-19 08:52:20', 33, 0, 'SIMON VERDE, - VALPARAISO\r\nREF. ', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'SIMON VERDE, - VALPARAISO\r\nREF. MR090 Se alquila precioso dÃºplex en urbanizaciÃ³n ValparaÃ­so. Zona SimÃ³n Verde en Mairena del Aljarafe. Consta de SalÃ³n con terraza con acceso a jardÃ­n. Cocina totalmente amueblada. Aseo y BaÃ±o completo. Dos Habitaciones. Aire Acondicionado frÃ­o/calor. Piscina con agua salada y barbacoa en zonas comunes. Salon para celebraciones. Vigilancia 24 horas. Zona muy tranquila. A diez minutos de EstaciÃ³n de Metro Cavaleri. SIN AMUEBLAR. \r\nPRECIO 550 EUROS', '20150319095008', '20150319095008b', '20150319095008c'),
(263, '2015-03-19 08:52:58', 33, 0, 'SIMON VERDE, - VALPARAISO\r\nREF. ', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'SIMON VERDE, - VALPARAISO\r\nREF. MR090 Se alquila precioso dÃºplex en urbanizaciÃ³n ValparaÃ­so. Zona SimÃ³n Verde en Mairena del Aljarafe. Consta de SalÃ³n con terraza con acceso a jardÃ­n. Cocina totalmente amueblada. Aseo y BaÃ±o completo. Dos Habitaciones. Aire Acondicionado frÃ­o/calor. Piscina con agua salada y barbacoa en zonas comunes. Salon para celebraciones. Vigilancia 24 horas. Zona muy tranquila. A diez minutos de EstaciÃ³n de Metro Cavaleri. SIN AMUEBLAR. \r\nPRECIO 550 EUROS', '20150319095008', '20150319095008b', '20150319095008c'),
(264, '2015-03-19 08:55:32', 33, 0, 'Alquiler de naves industriales e', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Alquiler de naves industriales en Mairena del Aljarafe ( PISA)\r\nALJARAFE INMOBILIARIA REF. MR113. Alquiler de nave en el PISA de 400 mt2 mas 100 mt2 de exterior, tambien tiene un local comercial de unos 50 mt2 con servicios, persianas automaticas y suelos de marmol. En la planta 1Âºdispone de 3 despachos de oficinas y 1 cuarto de baÃ±o. La nave esta innifugada con luz y agua y tiene arquetas con separador de grasa. Su ubicacion es excelente \r\nPRECIO 1.500 EUROS', '20150319095258', '20150319095258b', '20150319095258c'),
(265, '2015-03-19 08:57:24', 33, 0, 'OFERTA Alquiler de chalets en Bo', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTA Alquiler de chalets en Bollullos de la Mitacion \r\nALQUILER CHALET CON PISCINA\r\nLAS MORERAS. Ref. MR103 inmobiliaria. Alquiler para LARGA TEMPORADA en Bollullos de la Mitacion, en urbanizacion cerrada y muy tranquila. La parcela tiene 500 mt2 y una construcccion de 150 mt2 dividido en 2 plantas, con 4 dormitorios 2 baÃ±os completos y 1 aseo , salon comedor con vistas al jardin, cocina completamente equipada, piscina propia, aparcamiento en superficie. CHALET AMUEBLADO.PARA LARGA TEMPORADA\r\nPRECIO 1000 EUROS ', '20150319095532', '20150319095532b', '20150319095532c'),
(266, '2015-03-19 08:59:27', 33, 0, 'Alquiler de locales comerciales ', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Alquiler de locales comerciales en Mairena del Aljarafe ALQUILER LOCAL COMERCIAL EN MAIRENA ALJARAFE\r\nALJARAFE INMOBILIARIA RER. MR112. Bonito local totalmente reformado, actualmente funciona como gimnasio, tiene muy buena situacion esta entre San Juan y Mairena, sitio de mucho paso. El local tienegrandes ventanales, cuartos de baÃ±os y vestuarios, zona de recepcion. Mejor ver. Tambien esta a la venta en 195. 000 euro \r\nPRECIO 1.200 EUROS', '20150319095724', '20150319095724b', '20150319095724c'),
(267, '2015-03-19 09:03:39', 33, 0, 'Alquiler de locales comerciales ', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Alquiler de locales comerciales en Sevilla TRIANA - COMERCIOS - CLARA DE JESUS MONTEROEstupendo local comercial en alquiler en C/ Clara de Jesus Montero ( TRIANA) Cuenta con 70 m2 de superficie. Se encuentra en una calle muy comercial y conocida de Triana, con mucho trÃ¡nsito, Pegado a un hotel y clÃ­nica dental. No para uso de hostelerÃ­a. El local paga 18 euros de comunidad. Ref: aljarafeinmobiliaria-10198PRECIO 650 EUROS', '20150319100247', '20150319100247b', '20150319095927c'),
(268, '2015-03-19 09:06:38', 33, 0, 'OFERTAAlquiler de naves industri', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTAAlquiler de naves industriales en Sanlucar la Mayor SOLUCAR\r\nSe alquila nave en sanlucar la mayor. la superficie total de parcela es de 2300 m2, dispone de 1 baÃ±o. plaza de cochera. diafana agua y luz, 400m de oficina 15 m de altura, 4 puertas de carga, plataforma desmontable en el centro no linda con ninguna nave. ref: aljarafeinmobiliaria-10714 \r\nPRECIO 4500 EUROS', '20150319100456', '20150319100456b', '20150319100456c'),
(269, '2015-03-19 09:09:07', 33, 0, 'OFERTAAlquiler de casas en Benac', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTAAlquiler de casas en Benacazon \r\nALQUILER EN BENACAZON SIN MUEBLES\r\nSe alquila casa adosada en BenacazÃ³n, con 135 m2 en dos plantas. Tiene 4 dormitorios, 4 armarios empotrados, 2 baÃ±os y un aseo. Cocina amueblada Cuenta con una despensa. Los suelos son de terrazo, cochera en superficie. Patios delantero y trasero. Puertas interiores en madera, ventanas de aluminio, puerta de entrada metÃ¡lica. Ref: aljarafeinmobiliaria-10020.\r\nPRECIO 400 EUROS', '20150319100638', '20150319100638b', '20150319100638c'),
(270, '2015-03-19 09:12:14', 33, 0, 'OFERTAAlquiler de locales comerc', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'OFERTAAlquiler de locales comerciales en Sanlucar la Mayor\r\nMAGNIFICO RESTAURANTE BIEN SITUADO\r\nOPORTUNIDAD DE NEGOCIO !!!. Se alquila Restaurante-Bar en SanlÃºcar la Mayor, en muy buena zona, cerca de comercios y hotel. Interior completamente amueblado, tambiÃ©n dispone en su exterior de un amplio parking, zona ajardinada y carpa montada con barra incluida y baÃ±o. Ref: aljarafeinmobiliaria-10831\r\nPRECIO 1.300 EUROS', '20150319100907', '20150319100907b', '20150319100907c'),
(271, '2015-03-25 18:12:03', 33, 0, 'QUEVEDO. Ref. mr140. vivienda de', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'QUEVEDO. Ref. mr140. vivienda de entidad bancaria en PILAS con 200 mt2 de parcela, 190 mt2 construido, dividido en 2 plantas. planta baja, 1 amplio dormitorio, 1 baÃ±o completo, salon con chimenea, comedor, cocina de mamposteria, cochera, patio trasero y tratero con 2 amplias habitaciones. en planta 1Âº tenemos 3 dormitorios, 1 baÃ±o completo, amplia azotea. techos con bonita vigas de madera, suelos de gres rustico, puertas de madera maciza, 2 aires acondicionados. Financiado 100% incluido gastos de notaria. PRECIO 144.400\r\nmercedesgestioninmobiliaria@gmail.com', '20150325070836', '20150325070836b', '20150325070836c'),
(272, '2015-03-25 18:16:48', 33, 0, 'VENTA VIVIENDA SANLUCAR LA MAYOR', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'VENTA VIVIENDA SANLUCAR LA MAYOR\r\nSALESIANAS. Ref. mr137 venta de piso en sanlucar la mayor de entidad bancaria. vivienda de 79 mt2 en 1Âº planta, con 2 dormitorios con roperos empotrados, 2 baÃ±os completos, salon comedor, cocina amueblada con placa de vitroceramica, campana de humos y termo electrico de 75 l. completamente nuevo. zonas comunes muy bonitas y bien cuidadas. financiacion 100% incluido gastos de notarias. Haga su oferta a partir del precio de salida.PRECIO 100.172\r\nmercedesgestioninmobiliaria@gmail.com', '20150325071203', '20150325071203b', '20150325071203c'),
(273, '2015-03-25 18:22:01', 33, 0, 'VENTA NAVE EN EL PIBO, BOLLULLOS', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'VENTA NAVE EN EL PIBO, BOLLULLOS MITACION\r\nAljarafe inmobiliaria ref. mr123. Venta de nave en el pibo de entidad bancaria. con 1490 mt2 dividido en dos plantas, exteriores acristalados, de esquina, 2 aseos. Financiado 100 % incluido gastos de notaria . PRECIO 904.213 EUROS\r\nmercedesgestioninmobiliaria@gmail.com', '20150325071648', '20150325071648b', '20150325071648c'),
(274, '2015-04-07 07:26:21', 34, 0, 'Masajeador de pies (Master Massa', '669801612', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'Masajeador de pies (Master Massager de Club Natura), anunciado en TV, estÃ¡ nuevo, tiene todos sus accesorios, mando a distancia, cargador, instrucciones, costÃ³ 180 â‚¬, lo vendo porque no tengo tiempo para usarlo, por sÃ³lo 50 â‚¬, es un chollo.', '20150325074402', '20150325074402b', '20150325074402c'),
(275, '2015-03-25 21:10:48', 35, 0, 'Cochera reformada, luz y agua. U', '619402315', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'Cochera reformada, luz y agua. UbicaciÃ³n muy buena. Precio negociable!', '20150325100933', '20150325100933b', '20150325100933c'),
(276, '2015-04-02 05:07:21', 36, 0, 'ESCAYOLAS DAVID\r\n\r\nPROTECCION DE', '626344320', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'ESCAYOLAS DAVID\r\n\r\nPROTECCION DE ESTRUCTURAS FRENTE AL FUEGO\r\n\r\nDebido a la elevada conductividad tÃ©rmica del acero, las estructuras metÃ¡licas absorben rÃ¡pidamente el calor que se produce en caso de un incendio. Todos los tipos de acero empiezan a perder resistencia a temperaturas superiores a 300 ÂºC, y se funden a temperaturas superiores a1.500 ÂºC.\r\n\r\nEscayolas David\r\nMovil  626 344 320\r\nC / Gines Marquez nÂº 34\r\nCp.  41840 Pilas ( Sevilla )\r\nweb www.escayolasdavid.es\r\nwww.compraenpilas.es/escayolasdavid\r\nwww.escayolasdavid.blogspot.com.es\r\nhttps://www.youtube.com/watch?v=xPtS3tutJIc', '20150329021455', '20150329021455b', '20150329021455c'),
(277, '2015-04-02 05:07:34', 36, 0, 'ESCAYOLAS DAVID\r\nDecoracion de i', '626344320', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'ESCAYOLAS DAVID\r\nDecoracion de interiores.\r\nNos adaptamos a sus exigencias y necesidades.\r\n\r\n\r\nEscayolas David\r\nMovil  626 344 320\r\nC / Gines Marquez nÂº 34\r\nCp.  41840 Pilas ( Sevilla )\r\nweb www.escayolasdavid.es\r\nwww.compraenpilas.es/escayolasdavid\r\nwww.escayolasdavid.blogspot.com.es\r\nhttps://www.youtube.com/watch?v=xPtS3tutJIc', '20150329022542', '20150329022542b', '20150329022542c'),
(278, '2015-04-02 05:07:44', 36, 0, 'ESCAYOLAS DAVID\r\n\r\nTODO PLADUR.\r', '626344320', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'ESCAYOLAS DAVID\r\n\r\nTODO PLADUR.\r\n\r\nLas ventajas de los sistemas constructivos en Placa de Yeso Laminado (PYL) son: ayudan en la optimizaciÃ³n del espacio, son versÃ¡tiles, facilitan las reparaciones, son sistemas ligeros de rÃ¡pida instalaciÃ³n, durabilidad y limpieza; facilitan las reparaciones y son sistemas eficientes y sostenibles.\r\n\r\nEscayolas David\r\nMovil  626 344 320\r\nC / Gines Marquez nÂº 34\r\nCp.  41840 Pilas ( Sevilla )\r\nweb www.escayolasdavid.es\r\nwww.compraenpilas.es/escayolasdavid\r\nwww.escayolasdavid.blogspot.com.es\r\nhttps://www.youtube.com/watch?v=xPtS3tutJIc', '20150330111219', '20150330111219b', '20150330111219c'),
(279, '2015-04-03 16:49:34', 0, 0, 'Jornadas solidarias.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Jornadas solidarias en Pilas.', '20150403064730', '20150403064730b', '20150403064730c'),
(280, '2015-04-03 18:45:21', 36, 0, 'Escayolas David\r\n\r\nNuestra prior', '626344320', '', 'Sevilla', 'otras', '', '', 0, 0, 0, 0, 'Escayolas David\r\n\r\nNuestra prioridad es la confianza y la satisfacciÃ³n de nuestros clientes.\r\n\r\nLo conseguimos con el compromiso, la seriedad, la profesionalidad y la calidad de nuestros trabajos.\r\n\r\nSi tiene algun proyecto en mente y no sabe como ejecutarlo, nosotros le ayudaremos, no se arrepentira.', '20150403081405', '20150403081405b', '20150403081405c'),
(281, '2015-04-03 19:18:46', 36, 0, 'Escayolas DavidIdeas para de', '626344320', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Escayolas DavidIdeas para decorar con arcos.Como empresa, buscamos ofrecer a los clientes un servicio de reformas de calidad y de excelentes acabados. Nos orientamos a dar el mejor resultado en los detalles, para asÃ­ obtener excelentes acabados.Movil  626 344 320C / Gines Marquez nÂº 34Cp.  41840 Pilas ( Sevilla )web www.escayolasdavid.eswww.compraenpilas.es/escayolasdavidwww.escayolasdavid.blogspot.com.eshttps://www.youtube.com/watch?v=xPtS3tutJIc', '20150403091532', '20150403084620b', '20150403084620c'),
(282, '2015-04-06 04:52:01', 36, 0, 'ESCAYOLAS DAVID.', '626344320', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'ESCAYOLAS DAVID.\r\nEl Pladur es uno de los materiales mÃ¡s en auge en la construcciÃ³n y en la decoraciÃ³n a fecha de hoy, permite crear tanto formas rectas como curvas y manteniendo una asombrosa resistencia.\r\nExiste Pladur con caracterÃ­sticas incombustibles y antihumedad para aquellas estancias que lo requieran.\r\nAdmite cualquier tipo de acabado (pintado, empapelado, alicatado, etc.) en toda clase de obra: reformas, rehabilitaciÃ³n y nueva planta. \r\nPermite crear ambientes que pueden completarse con otros materiales como madera, vidrio, piedraâ€¦Escayolas. David; MÃ³vil  626 344 320\r\nC / GinÃ©s MÃ¡rquez nÂº 34\r\ncp:  41840 Pilas ( Sevilla ).\r\nweb: www.escayolasdavid.es\r\nwww.compraenpilas.es/escayolasdavid\r\nwww.escayolasdavid.blogspot.com.es\r\nhttps://www.youtube.com/watch?v=xPtS3tutJIc', '20150406064713', '20150406064713b', '20150405100954c'),
(283, '2015-04-12 19:03:02', 0, 0, 'Innova 2015', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Innova 2015', '20150406084607', '20150406084329b', '20150406084329c'),
(284, '2015-04-06 18:47:53', 0, 0, 'Innova 2015', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Innova 2015', '20150406084652', '20150406084652b', '20150406084652c'),
(285, '2015-04-06 18:49:16', 0, 0, 'Innova 2015', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Innova 2015', '20150406084753', '20150406084753b', '20150406084753c'),
(286, '2015-04-06 18:50:53', 0, 0, 'Innova 2015', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Innova 2015', '20150406084938', '20150406084938b', '20150406084938c'),
(288, '2015-04-06 18:52:46', 0, 0, 'Innova 2015', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Innova 2015', '20150406085202', '20150406085202b', '20150406085202c'),
(290, '2015-04-12 19:03:25', 0, 0, 'Mercado Medieval en Pilas.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Mercado Medieval en Pilas.', '20150412033746', '20150412033746b', '20150412033746c'),
(291, '2015-04-13 05:16:58', 0, 0, 'Toldos las marismas.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Toldos las marismas.', '20150413071558', '20150413071558b', '20150413071558c'),
(292, '2015-04-13 05:19:21', 0, 0, 'Excavaciones Jogui.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Excavaciones Jogui.', '20150413071811', '20150413071811b', '20150413071811c'),
(293, '2015-04-13 05:23:09', 0, 0, 'AL-TOLDO.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'AL-TOLDO.', '20150413072235', '20150413072235b', '20150413072235c'),
(294, '2015-04-13 14:13:18', 0, 0, 'The Magic Garden.', 'SN', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'The Magic Garden.', '20150413041245', '20150413041245b', '20150413041245c'),
(295, '2015-04-13 14:14:47', 0, 0, 'Servimant Pilas.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Servimant Pilas.', '20150413041344', '20150413041344b', '20150413041344c'),
(296, '2015-04-13 14:16:11', 0, 0, 'Hostal Restaurante.', 'SN', '', 'Sevilla', 'hosteleria y turismo', '', '', 0, 0, 0, 0, 'Hostal Restaurante.', '20150413041530', '20150413041530b', '20150413041530c'),
(297, '2015-04-13 14:17:42', 0, 0, 'ColchoherÃ­a Fuentes.', 'SN', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'ColchoherÃ­a Fuentes.', '20150413041715', '20150413041715b', '20150413041715c'),
(298, '2015-04-13 14:18:46', 0, 0, 'Piscinas Sevillano.', 'SN', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'Piscinas Sevillano.', '20150413041804', '20150413041804b', '20150413041804c'),
(299, '2015-04-13 14:20:55', 0, 0, 'Remolsur.', 'SN', '', 'Sevilla', 'maquinaria y aperos', '', '', 0, 0, 0, 0, 'Remolsur.', '20150413042002', '20150413042002b', '20150413042002c'),
(300, '2015-04-13 14:22:09', 0, 0, 'Pulidos y Abrillantados.', 'SN', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'Pulidos y Abrillantados.', '20150413042111', '20150413042111b', '20150413042111c'),
(301, '2015-04-14 08:51:21', 33, 0, 'LOCAL DE ENTIDAD BANCARIA EN PIL', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'LOCAL DE ENTIDAD BANCARIA EN PILAS.\r\nPINEDA 17. Ref. mr031 aljarafeinmmobiliaria venta de local en todo el centro de pilas con 154 mt2 totalmente diafano distribuido en plata baja y sotano, con suelos de parquet. totalmente financiado. Haga su oferta a partir del precio de salida. FINANCIADO 100 % INCLUIDO GASTOS DE NOTARIA.\r\nPRECIO 98.129 EUROS \r\nproductos bancarios2014@gmail.com\r\n685.213.499', '20150414103803', '20150414103803b', '20150414103803c'),
(302, '2015-04-14 08:54:45', 33, 0, 'NAVE DE BANCO EN CORIA DEL RIO\r\n', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'NAVE DE BANCO EN CORIA DEL RIO\r\nRef. mr144. Venta de nave de procedencia bancaria en coria del rio con 375 mt2. y 7 mts. de altura, dispone de aseo con duchas, oficinas en entreplanta, tambien hay la opcion de alquilar por 415 euros. Haga su propuesta de venta a partir del precio de salida, se estudiarian todos las opciones.\r\nPRECIO 125.000 EUROS\r\nTELF 685.213.499\r\nproductosbancarios2014@gmail.com', '20150414105121', '20150414105121b', '20150414105121c'),
(303, '2015-04-14 08:59:04', 33, 0, 'VENTA CHALET DE BANCO EN BOLLULL', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'VENTA CHALET DE BANCO EN BOLLULLOS DE LA MITACION\r\nFERNANDO MAGALLANES. Fernando magallanes. ref. mr151 bonito chalet a la venta en bollullos de la mitacion de entidad bancaria, con una parcela de 663 mt2 y 303 mt2 construido. ubicado en una urbanizacion privada y cerrada, zona muy buena y tranquila. la vivienda consta de 4 dormt. 2 baÃ±os completos, salon comedor con chimenea, cocina de mamposteria, lavadero, cochera cerrada, amplio sotano, piscina privada y leÃ±ero. todo en muy buenas calidades. puertas macizas de robles. muy buena oportunidad. financiado 100% sin comisiones.\r\nPRECIO 276.900\r\nTELF 685.213.499\r\nproductosbancarios2014@gmaiÃ±.com', '20150414105445', '20150414105445b', '20150414105445c'),
(304, '2015-04-16 16:58:14', 0, 0, 'Alquiler de equipos de sonido e ', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Alquiler de equipos de sonido e iluminaciÃ³n.', '20150416065647', '20150416065647b', '20150416065647c'),
(305, '2015-04-16 16:59:19', 0, 0, 'PeluquerÃ­a San JosÃ©.', 'SN', '', 'Sevilla', 'salud_belleza', '', '', 0, 0, 0, 0, 'PeluquerÃ­a San JosÃ©.', '20150416065831', '20150416065831b', '20150416065831c'),
(306, '2015-04-16 17:02:38', 0, 0, 'La Escena Encendida.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'La Escena Encendida.', '20150416070152', '20150416070152b', '20150416070152c'),
(307, '2015-04-18 19:11:12', 33, 0, 'ALQUILER ADOSADO EN BOLLULLOS DE', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ALQUILER ADOSADO EN BOLLULLOS DE LA MITACIO \r\nREF MR158. Bonito adosado en Bollullos de la Mitacion completamente amueblado, en una parcela de 210 mt. y 150 mt. construido. Dividido en 3 plantas. Consta de 3 dormitorios, 2 baÃ±os completos, 1 aseo, roperos empotrados, vestidor, azotea con barbacoa, aire acondicionado. Todo en perfecta condiciones.\r\nPRECIO 550\r\nALJARAFE INMOBILIARIA', '20150418090812', '20150418090812b', '20150418090812c'),
(308, '2015-04-18 19:14:01', 33, 0, 'MAGNIFICO LOCAL EN ALQUILER EN E', '685213499', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'MAGNIFICO LOCAL EN ALQUILER EN EL PIBO, BOLLULLOS M.\r\nSe alquila estupendo local, en Bollullos de la MitaciÃ³n, en polÃ­gono PIBO. Cuenta con 225 m2 de espacio util en dos plantas. Tiene 2 aseos. Los suelos son de porcelanico y de gres en aseo. Trastero bajo la escalera, luces de emergencia. Estupenda zona comercial. Ref: aljarafeinmobiliaria-10391\r\nPRECIO 650 EUROS\r\nALJARAFE INMOBILIARIA\r\n685213499', '20150418091112', '20150418091112b', '20150418091112c'),
(309, '2015-04-18 19:18:08', 33, 0, 'ESTUPENDA OFICINA EN ALQUILER EN', '955722184', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'ESTUPENDA OFICINA EN ALQUILER EN EL PISA MAIRENA\r\nREF. MR114. Bonita oficina de 50 mt2 ubicada en una zona excelente, esta de esquina y tiene muchisima vista. Posee 3 despachos y 1 cuarto de baÃ±o particular. \r\n500 EUROS\r\nALJARAFE INMOBILIARIA\r\n685213499', '20150418091401', '20150418091401b', '20150418091401c'),
(310, '2015-04-25 19:07:53', 33, 0, ' ALQUILER NAVE PISA, MAIRENA.', '955722184', '', 'Sevilla', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, ' ALQUILER NAVE PISA, MAIRENA ALJARAFE, REF. MR113. Alquiler de nave en el PISA de 400 mt2 mas 100 mt2 de exterior, tambien tiene un local comercial de unos 50 mt2 con servicios, persianas automaticas y suelos de marmol. En la planta 1Âº dispone de 3 despachos de oficinas y 1 cuarto de baÃ±o. La nave esta ignifugada con luz y agua y tiene arquetas con separador de grasa. Su ubicacion es excelente, PRECIO 1.500 EUROS, ALJARAFE INMOBILIARA 685213499.', '20150418091808', '20150418091808b', '20150418091808c'),
(311, '2015-04-25 00:12:49', 33, 0, 'CAMINO DE LA GLORIA EN VILLAMANR', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'CAMINO DE LA GLORIA EN VILLAMANRIQUE DE LA CONDESA\r\nRef. mr088 somos inmobiliaria finca de 3 hect. rodeada de plantas aromaticas, situada en un entorno de gran belleza paisajista. posee una vivienda de unos 100 mt2, con 2 habit. , amplio salon con la mas exquisita decoracion, cocina con chimenea, baÃ±o, piscina con baÃ±o exterior, electricidad con placas solares, pozo propio y legalizado. esta ubicada a 2 km. de villamanrique y a 15 km. del rocio. esta totalmente cerrada con postes de madera tratada . Si quieres vivir en plena naturaleza esta es tu vivienda .\r\nPRECIO 360.000 EUROS\r\nMERCEDES 955722184\r\n', '20150419091150', '20150419091150b', '20150419091150c'),
(312, '2015-04-25 19:05:49', 33, 0, 'FABULOSA VIVIENDA EN AZNALCAZAR', '685213499', '', 'Sevilla', 'inmobiliaria_ventas', '', '', 0, 0, 0, 0, 'FABULOSA VIVIENDA EN AZNALCÃZAR COMPLETAMENTE AMUEBLADA !!!. Magnifica casa adosada en AznalcÃ¡zar, con 82 m2 construidos en dos plantas. Tiene 107 m2 de parcela. Cuenta con 4 dormitorios, uno en planta baja. Un baÃ±o y un aseo. Cocina amueblada, trastero, terraza, patio delantero y patio trasero. Suelos de parquet en el salÃ³n y de gres en el resto. PreinstalaciÃ³n de aire acondicionado. Piscina comunitaria. POSIBILIDAD DE FINANCIACION Ref: aljarafe inmobiliaria-10028. PRECIO 115.500 â‚¬, MERCEDES: 955722184', '20150419091524', '20150419091524b', '20150419091524c'),
(313, '2015-05-25 16:24:44', 37, 0, 'Vendo Honda CBF 125 de 2009 con ', '649072528', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, ' Vendo Honda CBF 125 de 2009 con 23500 km. color gris-negra. ReciÃ©n revisada cambios de aceite, liquido de frenos, neumatico delantero nuevo. Se entrega con baul givi 37 litros y alarma. Mejor ver. 1150â‚¬.', '20150421105132', '20150421105132b', '20150421040428c'),
(314, '2015-05-11 15:42:54', 0, 0, 'NutriCare', 'SN', '', 'Sevilla', 'salud', '', '', 0, 0, 0, 0, 'NutriCare', '20150422084331', '20150422084331b', '20150422084331c'),
(315, '2015-04-22 18:46:27', 0, 0, 'Taller para una educaciÃ³n digit', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Taller para una educaciÃ³n digital responsable.', '20150422084443', '20150422084443b', '20150422084443c'),
(317, '2015-04-25 19:10:30', 0, 0, 'Curso de agricultura ecolÃ³gica,', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Curso de agricultura ecolÃ³gica, gratis.', '20150425090823', '20150425090823b', '20150425090823c'),
(318, '2015-04-25 19:12:40', 0, 0, 'Verbena Popular.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Verbena Popular.', '20150425091140', '20150425091140b', '20150425091140c'),
(320, '2015-05-05 11:40:20', 0, 0, 'BICICLETA 29 LAPIERRE.', '657782157', '', 'Sevilla', 'bicicletas', '', '', 0, 0, 0, 0, 'BICICLETA 29 LAPIERRE. Bici de 29 talla m, horquilla rock shox con bloqueo remoto, cambios slx y dehore en dos platos 2x10, frenos avid, ruedas manillar y potencia bontrager, cambio trasero slx, TambiÃ©n podrÃ­a cambiar por una 27,5 talla m, Para cambio mandar fotos por whatsapp. 800â‚¬. JesÃºs (Particular), 657782157 (llamar por las maÃ±anas).', '20150426060411', '20150426061236b', '20150426061236c'),
(321, '2015-04-27 13:09:13', 0, 0, 'Paseo en bici.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Paseo en bici.', '20150427030822', '20150427030822b', '20150427030822c'),
(322, '2015-04-28 14:51:21', 0, 0, 'Cruz de Mayo.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Cruz de Mayo.', '20150428045030', '20150428045030b', '20150428045030c'),
(323, '2015-04-28 18:12:30', 0, 0, 'Aprender InglÃ©s.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Aprender InglÃ©s.', '20150428081132', '20150428081132b', '20150428081132c'),
(324, '2015-04-28 18:12:55', 0, 0, 'Taller de Lengua.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Taller de Lengua.', '20150428081230', '20150428081230b', '20150428081230c'),
(325, '2015-04-28 18:13:30', 0, 0, 'EdiciÃ³n de Videos.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'EdiciÃ³n de Videos.', '20150428081255', '20150428081255b', '20150428081255c'),
(326, '2015-04-28 18:14:07', 0, 0, 'Guadalinfo con tu empresa.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Guadalinfo con tu empresa.', '20150428081330', '20150428081330b', '20150428081330c'),
(327, '2015-04-28 18:15:37', 0, 0, 'Cine en Pilas.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Cine en Pilas.', '20150428081438', '20150428081438b', '20150428081438c'),
(330, '2015-04-29 18:25:06', 0, 0, ' La DiputaciÃ³n de Sevilla, en c', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, ' La DiputaciÃ³n de Sevilla, en colaboraciÃ³n con el Ayuntamiento de Pilas, organiza este taller que utiliza la tÃ©cnica del Mindfulness, basada en el concepto de conciencia plena de la meditaciÃ³n budista, que consiste en prestar atenciÃ³n, momento por momento, a pensamientos, emociones, sensaciones corporales y al ambiente circundante, de forma principalmente caracterizada por aceptaciÃ³n. MÃ¡s informaciÃ³n en el siguiente cartel. ', '20150429082437', '20150429082437b', '20150429082437c'),
(331, '2015-05-04 08:45:30', 0, 0, 'Carrera Polular.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Carrera Polular. \r\n\r\nInformaciÃ³n en: www.pilas.es', '20150502111510', '20150502111510b', '20150502111510c'),
(333, '2015-05-06 12:25:24', 0, 0, 'IniciaciÃ³n a Internet y correo ', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'IniciaciÃ³n a Internet y correo electrÃ³nico.', '20150506022418', '20150506022418b', '20150506022418c'),
(334, '2015-05-08 17:09:38', 0, 0, 'Curso de InglÃ©s.', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Curso de InglÃ©s.', '20150508070925', '20150508070647b', '20150508070647c'),
(336, '2015-05-09 17:56:59', 0, 0, 'TelÃ©fonos de interÃ©s.', 'SN', '', 'Sevilla', 'otras', '', '', 0, 0, 0, 0, 'TelÃ©fonos de interÃ©s.\r\n\r\nPilas (Sevilla).', '20150509115350', '20150509115350b', '20150509115350c'),
(337, '2015-05-09 10:00:25', 0, 0, 'Festival benÃ©fico canino.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Festival benÃ©fico canino.', '20150509115946', '20150509115946b', '20150509115946c'),
(338, '2015-05-14 15:48:39', 0, 0, 'JORNADAS MUJER Y SALUD.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'JORNADAS MUJER Y SALUD.', '20150514054641', '20150514054641b', '20150514054641c'),
(339, '2015-05-17 18:14:25', 0, 0, 'ReparaciÃ³n de MÃ³viles.', 'SN', '', 'Sevilla', 'telefonia', '', '', 0, 0, 0, 0, 'ReparaciÃ³n de MÃ³viles.', '20150517081248', '20150517081248b', '20150517081248c'),
(340, '2015-05-18 10:38:24', 0, 0, 'ReparaciÃ³n de ordenadores.', '622732367', '', 'Sevilla', 'informatica', '', '', 0, 0, 0, 0, 'ReparaciÃ³n y montaje de ordenadores.\r\n\r\n622732367-687068883', '20150518123306', '20150518123306b', '20150518123306c'),
(341, '2015-05-19 13:25:39', 0, 0, 'Torneo de Ajedrez.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Torneo de Ajedrez.', '20150519032457', '20150519032457b', '20150519032457c'),
(342, '2015-05-24 10:05:06', 0, 0, 'Fotoanuncio.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Fotoanuncio.', '20150524120420', '20150524120420b', '20150524120420c'),
(343, '2015-05-29 15:42:40', 0, 0, 'www.napavimentos.com', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'www.napavimentos.com', '20150524074708', '20150524074708b', '20150524074708c'),
(344, '2015-05-26 13:14:46', 0, 0, 'III Trofeo de NataciÃ³n.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'III Trofeo de NataciÃ³n.', '20150526031403', '20150526031403b', '20150526031403c'),
(345, '2015-05-26 17:20:53', 0, 0, 'Limpieza de solares.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Limpieza de solares.', '20150526071925', '20150526071925b', '20150526071925c'),
(346, '2015-06-06 17:48:50', 0, 0, 'Pintor.', 'SN', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Pintor.', '20150526072142', '20150526072142b', '20150526072142c'),
(347, '2015-05-29 15:42:24', 40, 0, 'Si has roto la cristal o pantall', '654087556', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Si has roto la cristal o pantalla de tu mÃ³vil podemos reparÃ¡rtela con garantÃ­a de 3 meses Coste de reparaciÃ³n desde 29â‚¬ TambiÃ©n liberamos mÃ³viles de todas las compaÃ±iasreparamos tablets Modelos a reparar Todos los modelos de Samsung Galaxy S2/S3/S4 Note 1/2/3 Galaxy Ace Ace2 y Iphones Blacberry HTC Sony Xperia Nokia LG Llamen sin compromiso o por whatsapp reparacion iphone\r\nreparamos para toda espaÃ±a envios por tan solo 8.90', '20150527125606', '20150527125606b', '20150527125606c'),
(348, '2015-05-28 02:09:48', 41, 0, '2743847//6649573\r\nHOME SERVICE L', 'SN', '', 'La CoruÃ±a', 'servicios', '', '', 0, 0, 0, 0, '2743847//6649573\r\nHOME SERVICE LINE\r\nWHIRLPOOL\r\nHOME SERVICE LINE es una empresa de prestigio que brinda sus servicios tÃ©cnicos a domicilio.\r\nContamos con tÃ©cnicos expertos altamente calificados en la reparaciÃ³n, restauraciÃ³n y mantenimiento de sus electrodomÃ©sticos de lÃ­nea blanca de todas las marcas\r\nContamos con repuestos originales para un mejor servicio\r\nLe brindamos un aÃ±o de garantÃ­a por nuestros servicios\r\nNo lo dude mÃ¡s y llÃ¡menos  a los telf.\r\n2743847//6649573\r\nSrta. sadi\r\n', '20150528040855', '20150528040855b', '20150528040855c'),
(349, '2015-06-06 17:49:53', 0, 0, 'Solicitudes de inscripciÃ³n para', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Solicitudes de inscripciÃ³n para la Escuela Municipal de MÃºsica y Danza de Pilas para el curso 2015/2016\r\n\r\nEl prÃ³ximo dÃ­a 1 de junio se abre el plazo de inscripciÃ³n para la Escuela Municipal de MÃºsica y Danza de Pilas, hasta el dÃ­a 19. El horario de matriculaciÃ³n serÃ¡ de 17.00 a 20.30 horas en la propia Escuela Municipal de MÃºsica y Danza, en la Plaza AmÃ©rica. En el siguiente enlace pueden descargar los documentos:\r\n\r\nhttp://www.pilas.es/opencms/export/sites/default/pilas/galeriaFicheros/areas/trabajoyformacion/Inscripcixn_escue_de_mxsica_.pdf', '20150528014447', '20150528014447b', '20150528014447c'),
(350, '2015-09-05 14:29:03', 43, 0, 'Alquilo casa de campo.', '610381450', '', 'Malaga', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Alquilo casa de campo en Mijas-Fuengirola; 3 dormitorios, salÃ³n, cocina, un baÃ±o, terraza con piscina, hamacas, cesped  y aparcamiento;  una semana 600 euros, 3 dÃ­as 300 euros y mes completo a tratar. Manuel 610381450.', '20150603014603', '20150603014603b', '20150603014603c'),
(351, '2015-09-05 14:28:53', 43, 0, 'Alquilo casa de campo.', '610381450', '', 'Malaga', 'inmobiliaria_alquiler', '', '', 0, 0, 0, 0, 'Alquilo casa de campo en Mijas-Fuengirola; 3 dormitorios, salÃ³n, cocina, un baÃ±o, terraza con piscina, hamacas, cesped  y aparcamiento;  una semana 600 euros, 3 dÃ­as 300 euros y mes completo a tratar. Manuel 610381450. ', '20150603084026', '20150603084026b', '20150604072218c'),
(352, '2015-06-06 17:49:40', 0, 0, 'Talleres infantiles.', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Talleres infantiles.', '20150604072405', '20150604072405b', '20150604072405c'),
(353, '2015-06-05 17:34:20', 0, 0, 'Centro de Adultos de Pilas.', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Centro de Adultos de Pilas.', '20150605073337', '20150605073337b', '20150605073337c'),
(354, '2015-06-06 17:49:28', 0, 0, 'Divertilandia.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Divertilandia.', '20150606121848', '20150606121848b', '20150606121848c');
INSERT INTO `guitarwars` (`id`, `date`, `user_id`, `id_provincias`, `name`, `score`, `ciudad`, `provincia`, `categoria`, `marca`, `modelo`, `cilindrada`, `kilometros`, `año`, `precio`, `descripcion`, `screenshot`, `screenshot2`, `screenshot3`) VALUES
(355, '2015-06-09 14:12:00', 0, 0, 'Cartel de Feria y Fiestas en hon', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Cartel de Feria y Fiestas en honor a la Virgen del RocÃ­o 2015.\r\n\r\nPresentamos el cartel de Feria y Fiestas en honor a la Virgen del RocÃ­o 2015, cuya autorÃ­a corresponde a JosÃ© Vicente Pineda Pedrosa. El tÃ­tulo de su obra es "Feria de dÃ­a y de noche".', '20150608090855', '20150608090855b', '20150608090855c'),
(356, '2015-06-09 14:12:13', 0, 0, 'La PeÃ±a Flamenca Cano Hierro or', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'La PeÃ±a Flamenca Cano Hierro organiza un homenaje.\r\n\r\nA quienes ya no estÃ¡n con nosotros y pusieron su sentir y saber en pro del flamenco. Bajo este nombre, la PeÃ±a Flamenca de Pilas Cano Hierro organiza para el prÃ³ximo 20 de junio a las 13.00 h un acto de homenaje que contarÃ¡ con la colaboraciÃ³n del Excmo. Ayuntamiento de Pilas. Se celebrarÃ¡ en la actual sede de la peÃ±a, en el Edificio Las Carreritas.', '20150609022142', '20150609022142b', '20150609022142c'),
(357, '2015-06-09 12:24:41', 0, 0, 'Cursos de nataciÃ³n para este ve', 'SN', '', 'Sevilla', 'deportes', '', '', 0, 0, 0, 0, 'Cursos de nataciÃ³n para este verano en la Piscina Cubierta\r\n\r\nComo en aÃ±os anteriores, durante el mes de julio, en la Piscina Cubierta Municipal se llevarÃ¡ a cabo un curso intensivo de nataciÃ³n especialmente dirigido a niÃ±os de 18 meses a 14 aÃ±os. Ya estÃ¡ abierto el perÃ­odo de inscripciÃ³n. MÃ¡s informaciÃ³n en la propia Piscina o en el telÃ©fono 954751076.', '20150609022402', '20150609022402b', '20150609022402c'),
(358, '2015-06-09 12:27:20', 0, 0, 'Escuela de Verano 2015\r\n\r\nLa del', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Escuela de Verano 2015\r\n\r\nLa delegaciÃ³n de Servicios Sociales del Ayuntamiento de Pilas, a travÃ©s de la subvenciÃ³n de la DiputaciÃ³n de Sevilla, organiza este aÃ±o la Escuela de Verano. Hoy martes 9 de junio se abre el plazo de inscripciÃ³n de alumnos. En el dÃ­ptico que pueden descargar en el enlace aparece toda la informaciÃ³n disponible hasta el momento.\r\n\r\nhttp://www.pilas.es/opencms/export/sites/default/pilas/galeriaFicheros/areas/ssociales/escuela_de_verano_2015.pdf', '20150609022615', '20150609022615b', '20150609022615c'),
(359, '2015-06-16 16:20:05', 0, 0, 'VIII Gala del Deporte "Villa de ', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'VIII Gala del Deporte "Villa de Pilas"\r\n\r\nQueda abierto el plazo para la presentaciÃ³n de propuestas a los galardones que cada aÃ±o el Ayuntamiento de Pilas, a travÃ©s de la DelegaciÃ³n de Deporte, vienen entregando a los mÃ¡s destacados del deporte de nuestro municipio. El plazo finalizarÃ¡ el prÃ³ximo viernes 26 de junio (viernes de Feria).\r\n\r\nEl Ayuntamiento de Pilas, a travÃ©s de la DelegaciÃ³n de Deportes, celebrarÃ¡ el viernes 25 de septiembre la VIII Gala del Deporte â€œVilla de Pilasâ€, en la que se darÃ¡n cita todos aquellos deportistas y equipos que hayan obtenido algÃºn premio con motivo de las distintas competiciones y campeonatos realizados en la pasada temporada 2014/2015. AdemÃ¡s, en esta gala se premiarÃ¡ con una serie de nominaciones anuales a todas aquellas personas, entidades, clubes y asociaciones deportivas que por los mÃ©ritos obtenidos en la temporada merezcan un especial reconocimiento.\r\n\r\nhttp://www.pilas.es/opencms/opencms/pilas/actualidad/noticias/deportes/noticia_0283.html#.VYBMaPntmko\r\n\r\nhttp://www.pilas.es/opencms/opencms/pilas/formularios/VIIIGalaDeporte.html', '20150616061818', '20150616061818b', '20150616061818c'),
(360, '2015-09-05 14:28:04', 44, 0, 'Reparacion de ordenadores portat', '654087556', '', 'Sevilla', 'profesionales', '', '', 0, 0, 0, 0, 'Reparacion de ordenadores portatiles sobremesa tecnico profesional experimentado windows 7 windows 8. 1 windows xp original activado actualizado configurado programas antivirus office 2010 2013 2007 recuperar datos salvar datos copias de seguridad grabacion de cds dvds eliminar virus acelerar ordenador reparar disco duro mantenimiento interno de tu equipo limpieza recambio de pantalla teclado reparacion de pendrive copiar discos barato rapido economico serio en pilas empresa baldomero telecomunicaciones ', '20150618021931', '20150618021931b', '20150618021931c'),
(361, '2015-06-19 20:32:13', 36, 0, 'ESCAYOLAS DAVID. Â¿Necesitas ins', '626344320', '', 'Sevilla', 'casa y jardin', '', '', 0, 0, 0, 0, 'ESCAYOLAS DAVID. Â¿Necesitas inspiraciÃ³n para decorar tu hogar?\r\nDecora tu hogar y tu vida sera mas interesante de lo que en verdad es.\r\nEscuchar al cliente para dar respuesta a sus necesidades y hacerle entender que el proyecto de decoraciÃ³n es suyo. Nosotros somos sus asesores profesionales, pero el protagonista es Ã©l.\r\n\r\nEscayolas David Movil 626 344 320C / Gines Marquez nÂº 34Cp. 41840 Pilas ( Sevilla )\r\nweb www.escayolasdavid.es\r\nwww.compraenpilas.es/escayolasdavid\r\nwww.escayolasdavid.blogspot.com.es\r\nhttps://www.youtube.com/watch?v=xPtS3tutJIc', '20150619102109', '20150619102109b', '20150619102109c'),
(362, '2015-06-21 17:11:14', 0, 0, 'Toldos Monsalves', 'SN', '', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Toldos Monsalves', '20150621070957', '20150621070957b', '20150621070957c'),
(363, '2015-09-05 14:27:41', 0, 0, 'Imprenta PapelerÃ­a Las Baderas.', 'SN', '', 'Sevilla', 'empresas', '', '', 0, 0, 0, 0, 'Imprenta PapelerÃ­a Las Baderas.', '20150621071134', '20150621071134b', '20150621071134c'),
(364, '2015-06-30 08:41:56', 0, 0, 'BASES POR LAS QUE SE CONVOCAN AY', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'BASES POR LAS QUE SE CONVOCAN AYUDAS FORMATIVAS/2015 PARA JÃ“VENES MENORES DE 30 AÃ‘OS EN EL AYUNTAMIENTO DE PILAS\r\n\r\nObjeto de la convocatoria:\r\n\r\nEl Ayuntamiento de Pilas convoca Becas de colaboraciÃ³n para jÃ³venes menores de 30 aÃ±os que reÃºnan los requisitos que se establecen con carÃ¡cter general en las presentes bases y con carÃ¡cter especÃ­fico en el ANEXO I de la presente convocatoria, destinadas a la ampliaciÃ³n de sus estudios y/o a iniciar la inserciÃ³n laboral.\r\n\r\nSolicitudes, plazo de presentaciÃ³n y documentaciÃ³n:\r\n\r\nLas solicitudes se harÃ¡n segÃºn modelo, adjuntando ademÃ¡s una declaraciÃ³n jurada de no estar disfrutando en el presente de ninguna beca ni desarrollando ninguna actividad laboral. Ambos documentos puedes descargarlos pinchando aquÃ­. Se presentarÃ¡ una solicitud por persona, pudiendo elegir, siempre que cumplan los requisitos, entre varios departamentos y periodos, especificando el orden de prioridad. El plazo de presentaciÃ³n de solicitudes serÃ¡ de diez dÃ­as naturales (hasta el 6 de julio) desde la publicaciÃ³n de la convocatoria en el tablÃ³n de anuncios del Ayuntamiento, asÃ­ como en la pÃ¡gina web municipal. Se presentarÃ¡n en el registro de Entrada del Ayuntamiento de Pilas, en horario de 9.00 a 13.30 horas.\r\n\r\nhttp://www.pilas.es/opencms/export/sites/default/pilas/galeriaFicheros/areas/trabajoyformacion/BECARIOS_verano_2015_BASES.pdf\r\n\r\nhttp://www.pilas.es/opencms/export/sites/default/pilas/galeriaFicheros/areas/trabajoyformacion/BECARIOS_verano_2015_Anexo_I.pdf', '20150630104002', '20150630104002b', '20150630104002c'),
(365, '2015-07-04 08:48:07', 0, 0, 'Fiesta infantil.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Fiesta infantil.', '20150704104751', '20150704104527b', '20150704104527c'),
(367, '2015-07-04 10:37:49', 0, 0, 'El Club Deportivo Tor del Rey, e', 'SN', '', 'Sevilla', 'deportes', '', '', 0, 0, 0, 0, 'El Club Deportivo Tor del Rey, en colaboraciÃ³n con el Ayuntamiento de Pilas, organiza esta nueva ediciÃ³n del torneo, que se celebrarÃ¡ los dÃ­as 10, 11 y 12 de julio en el PabellÃ³n Municipal de Deportes. Plazo de inscripciÃ³n abierto hasta el 9 de julio.\r\n\r\n*Cuota de participaciÃ³n: 100 euros por equipo participante en la cuenta ES65 8092 5223 0005 8809.\r\n\r\nPREMIOS Y TROFEOS\r\n\r\n1Âº Clasificado: Trofeo y 700 euros.\r\n2Âº Clasificado: Trofeo y 400 euros.\r\nSemifinalistas: Trofeo.\r\nAl mejor equipo local: 200 euros.\r\n\r\n*Trofeo al mÃ¡ximo goleador y al portero menos goleado (a partir de 1/4 de final, realizÃ¡ndose un promedio con los partidos jugados).\r\n\r\nSORTEO: jueves 9 de julio a partir de las 21.00 horas en el PabellÃ³n Municipal de Deportes.\r\n\r\n*Al iniciarse el Torneo, habrÃ¡ de presentarse los DNI originales (nacidos en 1999 y anteriores) y relaciÃ³n de participantes para todo el Torneo.', '20150704123710', '20150704123710b', '20150704123710c'),
(368, '2015-07-05 11:21:29', 0, 0, 'Abierto el plazo de inscripciÃ³n', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Abierto el plazo de inscripciÃ³n para el curso del mes de julio dedicado al manejo de Facebook en nivel bÃ¡sico.\r\n\r\nPueden inscribirse presencialmente en el centro Guadalinfo (calle MarquÃ©s de Santillana, 62), mediante llamada telefÃ³nica (955 752 303) o correo electrÃ³nico (guadalinfo.pilas@guadalinfo.es).', '20150705012059', '20150705012059b', '20150705012059c'),
(369, '2015-07-08 17:03:42', 46, 0, 'Diga adiÃ³s a sus preocupaciones', '990353390', '', 'Alava', 'empleo_demandas', '', '', 0, 0, 0, 0, 'Diga adiÃ³s a sus preocupaciones financieras\r\nCuÃ¡l es tu problema? Â¿Es una cuestiÃ³n de dinero? Si es asÃ­ esto le interesarÃ¡ somos una ONG hemos un capital sustancial dispuestos a financiar la condiciÃ³n de que usted es capaz de reembolsar .Su capacidad de reembolsarnos decidirÃ¡ por nuestros asesores financieros y dejar que la oportunidad seleccione la tasa y el plazo de pago. Nos hemos asociado con varios bancos que envÃ­an su dinero donde quiera que estÃ©s. EnvÃ­enos sus inquietudes y nosotros haremos todo lo posible para satisfacerle.\r\n', '20150708070143', '20150708070143b', '20150708070143c'),
(370, '2015-07-08 17:06:04', 46, 0, 'SoluciÃ³n de dinero urgente para', '990353390', '', 'Barcelona', 'hosteleria y turismo', '', '', 0, 0, 0, 0, 'SoluciÃ³n de dinero urgente para la fiesta de fin de aÃ±o\r\nHola\r\nSe le negÃ³ al banco porque su crÃ©dito no cumple con sus estÃ¡ndares?\r\nNecesita dinero para aumentar su actividad.\r\nHabÃ­as inexplicables retrasos en los pagos, un exceso de entrenamiento,\r\ndivorcio o la pÃ©rdida del empleo o la otra.\r\nEs posible que tenga una segunda oportunidad en particular, de crÃ©dito.\r\nLes presento a su solicitud de prestamistas que estÃ¡n dispuestos a volver a evaluar\r\nsu soluciÃ³n financiera.\r\nYa sea que usted estÃ¡ atascado en el banco de Francia o no, ofrecemos prÃ©stamos\r\nnegociables en una tasa del 3%\r\nPero justo y honesto y confiable.\r\nPÃ³ngase en contacto con e s hoy y hÃ¡ganos saber la cantidad de dinero\r\nusted desea pedir prestado, estamos dispuestos a satisfacer en\r\nhoras siguientes\r\nformulÃ©.Contacte recibir su solicitud por correo: marco10lori120@gmail.com\r\n', '20150708070342', '20150708070342b', '20150708070342c'),
(371, '2015-07-08 17:07:45', 46, 0, 'SoluciÃ³n de dinero urgente para', '990353390', '', 'Barcelona', 'asociaciones', '', '', 0, 0, 0, 0, 'SoluciÃ³n de dinero urgente para la fiesta de fin de aÃ±o\r\nHola\r\nSe le negÃ³ al banco porque su crÃ©dito no cumple con sus estÃ¡ndares?\r\nNecesita dinero para aumentar su actividad.\r\nHabÃ­as inexplicables retrasos en los pagos, un exceso de entrenamiento,\r\ndivorcio o la pÃ©rdida del empleo o la otra.\r\nEs posible que tenga una segunda oportunidad en particular, de crÃ©dito.\r\nLes presento a su solicitud de prestamistas que estÃ¡n dispuestos a volver a evaluar\r\nsu soluciÃ³n financiera.\r\nYa sea que usted estÃ¡ atascado en el banco de Francia o no, ofrecemos prÃ©stamos\r\nnegociables en una tasa del 3%\r\nPero justo y honesto y confiable.\r\nPÃ³ngase en contacto con e s hoy y hÃ¡ganos saber la cantidad de dinero\r\nusted desea pedir prestado, estamos dispuestos a satisfacer en\r\nhoras siguientes\r\nformulÃ©.Contacte recibir su solicitud por correo: marco10lori120@gmail.com\r\n', '20150708070604', '20150708070604b', '20150708070604c'),
(372, '2015-07-08 17:19:05', 46, 0, 'Diga adiÃ³s a sus preocupaciones', 'SN', '', 'Madrid', 'empleo_ofertas', '', '', 0, 0, 0, 0, 'Diga adiÃ³s a sus preocupaciones financieras\r\nCuÃ¡l es tu problema? Â¿Es una cuestiÃ³n de dinero? Si es asÃ­ esto le interesarÃ¡ somos una ONG hemos un capital sustancial dispuestos a financiar la condiciÃ³n de que usted es capaz de reembolsar .Su capacidad de reembolsarnos decidirÃ¡ por nuestros asesores financieros y dejar que la oportunidad seleccione la tasa y el plazo de pago. Nos hemos asociado con varios bancos que envÃ­an su dinero donde quiera que estÃ©s. EnvÃ­enos sus inquietudes y nosotros haremos todo lo posible para satisfacerle.\r\n', '20150708071737', '20150708071737b', '20150708071737c'),
(373, '2015-07-08 17:20:04', 46, 0, 'Diga adiÃ³s a sus preocupaciones', 'SN', '', 'Madrid', 'comics y tebeos', '', '', 0, 0, 0, 0, 'Diga adiÃ³s a sus preocupaciones financieras\r\nUsted tiene preocupaciones financieras, y todos sus intentos de bancos e instituciones financieras no ha funcionado hasta ahora, debido a su mal crÃ©dito o de otro tipo y ahora sus necesidades son cada vez mÃ¡s prensado visto sus emergencias financieras (alquiler, financiaciÃ³n de la deuda o de otra manera), entonces sÃ³lo una cosa que no me entra en contacto y es un prÃ©stamo confiable dentro de las 48 horas a una tasa razonable de 3% este aÃ±o en el tiempo de amortizaciÃ³n para usted.\r\nPonte en contacto conmigo por mail: marco10lori120@gmail.com\r\n\r\n', '20150708071905', '20150708071905b', '20150708071905c'),
(374, '2015-07-08 17:22:37', 46, 0, 'Diga adiÃ³s a sus preocupaciones', 'SN', '', 'Madrid', 'comics y tebeos', '', '', 0, 0, 0, 0, 'Diga adiÃ³s a sus preocupaciones financieras\r\nUsted tiene preocupaciones financieras, y todos sus intentos de bancos e instituciones financieras no ha funcionado hasta ahora, debido a su mal crÃ©dito o de otro tipo y ahora sus necesidades son cada vez mÃ¡s prensado visto sus emergencias financieras (alquiler, financiaciÃ³n de la deuda o de otra manera), entonces sÃ³lo una cosa que no me entra en contacto y es un prÃ©stamo confiable dentro de las 48 horas a una tasa razonable de 3% este aÃ±o en el tiempo de amortizaciÃ³n para usted.\r\nPonte en contacto conmigo por mail: marco10lori120@gmail.com\r\n\r\n', '20150708072004', '20150708072004b', '20150708072004c'),
(375, '2015-07-08 17:24:09', 46, 0, 'SoluciÃ³n de dinero urgente para', 'SN', '', 'Madrid', 'electrodomesticos', '', '', 0, 0, 0, 0, 'SoluciÃ³n de dinero urgente para la fiesta de fin de aÃ±o\r\nHola\r\nSe le negÃ³ al banco porque su crÃ©dito no cumple con sus estÃ¡ndares?\r\nNecesita dinero para aumentar su actividad.\r\nHabÃ­as inexplicables retrasos en los pagos, un exceso de entrenamiento,\r\ndivorcio o la pÃ©rdida del empleo o la otra.\r\nEs posible que tenga una segunda oportunidad en particular, de crÃ©dito.\r\nLes presento a su solicitud de prestamistas que estÃ¡n dispuestos a volver a evaluar\r\nsu soluciÃ³n financiera.\r\nYa sea que usted estÃ¡ atascado en el banco de Francia o no, ofrecemos prÃ©stamos\r\nnegociables en una tasa del 3%\r\nPero justo y honesto y confiable.\r\nPÃ³ngase en contacto con e s hoy y hÃ¡ganos saber la cantidad de dinero\r\nusted desea pedir prestado, estamos dispuestos a satisfacer en\r\nhoras siguientes\r\nformulÃ©.Contacte recibir su solicitud por correo: marco10lori120@gmail.com', '20150708072237', '20150708072237b', '20150708072237c'),
(376, '2015-07-08 17:34:40', 46, 0, 'SoluciÃ³n de dinero urgente para', 'SN', '', 'Barcelona', 'caza y pesca', '', '', 0, 0, 0, 0, 'SoluciÃ³n de dinero urgente para la fiesta de fin de aÃ±o\r\nHola\r\nSe le negÃ³ al banco porque su crÃ©dito no cumple con sus estÃ¡ndares?\r\nNecesita dinero para aumentar su actividad.\r\nHabÃ­as inexplicables retrasos en los pagos, un exceso de entrenamiento,\r\ndivorcio o la pÃ©rdida del empleo o la otra.\r\nEs posible que tenga una segunda oportunidad en particular, de crÃ©dito.\r\nLes presento a su solicitud de prestamistas que estÃ¡n dispuestos a volver a evaluar\r\nsu soluciÃ³n financiera.\r\nYa sea que usted estÃ¡ atascado en el banco de Francia o no, ofrecemos prÃ©stamos\r\nnegociables en una tasa del 3%\r\nPero justo y honesto y confiable.\r\nPÃ³ngase en contacto con e s hoy y hÃ¡ganos saber la cantidad de dinero\r\nusted desea pedir prestado, estamos dispuestos a satisfacer en\r\nhoras siguientes\r\nformulÃ©.Contacte recibir su solicitud por correo: marco10lori120@gmail.com', '20150708073420', '20150708073420b', '20150708073420c'),
(377, '2015-07-08 17:36:34', 46, 0, 'PrÃ©stamo de dinero entre person', 'SN', '', 'Valencia', 'animales', '', '', 0, 0, 0, 0, 'PrÃ©stamo de dinero entre personas serias\r\nUsted estÃ¡ en Alemania, Suiza, Francia, CanadÃ¡ y otros paÃ­ses y hay que prestar dinero para pagar por un coche, alquilar una casa, un proyecto y otras necesidades importantes. Yo soy de expertos financieros individuales capaces de hacer un prÃ©stamo a la cantidad que necesita y con las condiciones que hacen la vida mÃ¡s fÃ¡cil. Usted puede hacer uso del prÃ©stamo a partir de 2000 (â‚¬ CH) a 1,5 millones (â‚¬ CH) con un porcentaje del 3%. Para mÃ¡s informaciÃ³n ponerse en contacto conmigo por mail: marco10lori120@gmail.com\r\n', '20150708073440', '20150708073440b', '20150708073440c'),
(378, '2015-07-09 09:23:37', 0, 0, 'EL JUEVES 16 Y VIERNES 17 DE JUL', 'SN', '', 'Sevilla', 'salud', '', '', 0, 0, 0, 0, 'EL JUEVES 16 Y VIERNES 17 DE JULIO habrÃ¡ una campaÃ±a de donaciÃ³n de sangre en PILAS. SerÃ¡ en EL CENTRO DE SALUD en horario de 17.30 a 21.30 horas. Se necesita sangre de todos los grupos sanguÃ­neos.\r\n\r\nREQUISITOS PARA DONAR:\r\n\r\nPESAR MÃS DE 50 KILOS\r\nSER MAYOR DE EDAD\r\nGOZAR DE BUENA SALUD\r\nNO ACUDIR EN AYUNAS\r\n\r\nLa sangre es un "medicamento" vital que no se puede fabricar ni comprar.\r\n\r\nÂ· Entre donaciÃ³n y donaciÃ³n se debe respetar un plazo mÃ­nimo de 2 meses. Los hombres pueden donar sangre 4 veces al aÃ±o; las mujeres 3 veces al aÃ±o.\r\n\r\nÂ· Antes de donar, un mÃ©dico le examinarÃ¡ para determinar si puede hacerlo. De este modo, donar no implica riesgo para su salud. En este proceso estÃ¡ incluido un pequeÃ±o anÃ¡lisis de sangre para descartar una posible anemia.\r\n\r\nÂ· Una donaciÃ³n de sangre dura 15 minutos; 15 minutos que pueden salvar una vida.\r\n\r\nÂ· Todo el material que se utiliza en el proceso de donaciÃ³n de sangre es estÃ©ril y de un solo uso.\r\n\r\nÂ· Tras la donaciÃ³n, la sangre se repone con la ingestiÃ³n de alimentos, especialmente de lÃ­quidos y un leve descanso. Estos alimentos estarÃ¡n a disposiciÃ³n del donante en el lugar de donaciÃ³n.\r\n\r\nAVISO: El dÃ­a de la donaciÃ³n no se puede hacer deporte.\r\n\r\nLa pÃ¡gina web del Centro de TransfusiÃ³n SanguÃ­nea es: www.crtssevilla.org. En ella podrÃ¡n acceder al calendario de colectas, dispondrÃ¡n de informaciÃ³n Ãºtil para donantes de sangre, de tejidos y de mÃ©dula Ã³sea, enlaces, noticias, etc... TambiÃ©n se pueden enviar sugerencias, peticiones, etc...', '20150709112223', '20150709112223b', '20150709112223c'),
(379, '2015-07-09 09:26:53', 0, 0, 'La nueva ediciÃ³n del ciclo de C', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'La nueva ediciÃ³n del ciclo de Cine de Verano, organizado por la DelegaciÃ³n de Cultura y Fiestas Mayores y que comienza este jueves 9 de julio, viene marcado este aÃ±o por un carÃ¡cter solidario, ya que la forma de pago podrÃ¡ realizarse con un kilo de alimento no perecedero (azÃºcar, lentejas, garbanzos, aceite...), que irÃ¡ destinado a las Asociaciones y ONGs de Pilas.\r\n\r\nCada pelÃ­cula del mes de julio se proyectarÃ¡ en el Auditorio de la Casa de la Cultura a las 22.00 horas. Las personas que no aporten ningÃºn alimento, deberÃ¡n abonar el precio de la entrada -1 euro- en taquilla.', '20150709112517', '20150709112517b', '20150709112517c'),
(380, '2015-07-09 09:29:21', 0, 0, 'Si tienes entre 14 y 17 aÃ±os, a', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Si tienes entre 14 y 17 aÃ±os, ambos inclusive, y quieres venirte a Inglaterra del 22 al 27 de agosto, Â¡inscrÃ­bete ya!\r\n\r\nLa DelegaciÃ³n de PromociÃ³n Juvenil, Ocio y Tiempo Libre organiza este encuentro internacional para el prÃ³ximo mes de agosto. El plazo de inscripciÃ³n estÃ¡ abierto hasta el martes 14 de julio. Los jÃ³venes pileÃ±os interesados en participar en este encuentro para mejorar su inglÃ©s y vivir una experiencia en el extranjero, pueden informarse e inscribirse en la Casa de la Juventud, en horario de 9.00 a 14.00 horas (excepto el viernes 10 de julio), o a travÃ©s del telÃ©fono 955 753 873.', '20150709112832', '20150709112832b', '20150709112832c'),
(381, '2015-09-05 14:26:22', 47, 0, 'Hola. Vendo pollos y gallinas ra', '673519695', '', 'Alicante', 'animales', '', '', 0, 0, 0, 0, 'Hola. Vendo pollos y gallinas razas Brahma ArmideÃ±o blancos y Playmouth Rock Baradas crecidos 100% ecologico e incubados por gallinas. SIN INCUBADORA, y por tanto sin necesidad de vacunar o de suministrar antibioticos. Tienen diferentes edades y solamente les alimento con grano y pienso ecologico, lo cual puedo garantizar con facturas. Raza Brahma es en general muy resistente y de caracter muy tranquilo. Destacando que son las mejores madres y que debido al crecimiento rapido ha sido utilizada en cruces para broilers. Las Baradas son de doble proposito, ideal para iniciar su propia cria de pollos ecologicos y con huevos en abundancia y grandes . Estos pollos engordan aun mas rapido y su carne es excelente. Para mas fotos no duden en contactar conmigo.', '20150711122931', '20150711122931b', '20150711122931c'),
(382, '2015-07-14 09:03:36', 0, 0, 'El Grupo de Desarrollo Rural Alj', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'El Grupo de Desarrollo Rural Aljarafe-DoÃ±ana (ADAD) inicia el jueves 16 de julio -a las 12.30 horas estÃ¡ prevista su inauguraciÃ³n- una nueva acciÃ³n promocional de su Plan de DinamizaciÃ³n TurÃ­stica, que consiste en una exposiciÃ³n en el edificio del Ayuntamiento, que hasta el 30 de julio darÃ¡ a conocer entre la ciudadanÃ­a las contribuciones al desarrollo rural que viene realizando desde hace mÃ¡s de quince aÃ±os la entidad comarcal, especialmente en materia turÃ­stica.\r\n\r\nDe lunes a viernes desde las 8.00 a las 15.00 horas, las personas que visiten la muestra podrÃ¡n conocer, a travÃ©s de un itinerario de paneles, el trabajo del Grupo de Desarrollo Rural y la incidencia que los distintos programas gestionados por la entidad ha tenido en la zona, desde el punto de vista socioeconÃ³mico.\r\n\r\nEspecial relevancia tienen dentro de este itinerario los paneles dedicados al turismo, (Un sector que despierta), en el que ademÃ¡s de repasar las principales aportaciones de ADAD al despegue turÃ­stico del Aljarafe-DoÃ±ana, se exponen algunas de las acciones mÃ¡s relevantes llevadas a cabo recientemente dentro del Plan de DinamizaciÃ³n TurÃ­stica o la Red de Rutas y Senderos OrnitolÃ³gicos, ambas iniciativas financiadas en el marco del Programa LiderA (ConsejerÃ­a de Agricultura, Pesca y Desarrollo Rural y FEADER), al igual que esta nueva actividad ', '20150714105522', '20150714105522b', '20150714105522c'),
(383, '2015-07-15 14:04:40', 0, 0, 'Subvenciones para entidades sin ', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Subvenciones para entidades sin Ã¡nimo de lucro del Ã¡rea de CiudadanÃ­a, ParticipaciÃ³n y Cultura\r\n\r\nLa delegada de Desarrollo EconÃ³mico del Ayuntamiento de Pilas, MarÃ­a JosÃ© HernÃ¡ndez, informa sobre la apertura de convocatoria de subvenciones para entidades sin Ã¡nimo de lucro del Ã¡rea de CiudadanÃ­a, ParticipaciÃ³n y Cultura (BOP 149) de la DiputaciÃ³n de Sevilla.\r\n\r\nEn el Ã¡rea de Cultura del propio Consistorio se puede solicitar copia fÃ­sica de la misma, aunque tambiÃ©n se puede consultar en el siguiente enlace: http://www.dipusevilla.es/conoce_diputacion/areas/ciudadania_participacion_y_cultura/programas-convocatorias/subvenciones2015.html', '20150715040300', '20150715040300b', '20150715040300c'),
(384, '2015-07-17 12:27:04', 0, 0, 'Bases por las que se convocan ay', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Bases por las que se convocan ayudas formativas para jÃ³venes menores de 30 aÃ±os en el Ayuntamiento de Pilas\r\n\r\nPara consultar y/o descargar las bases, pinchar aquÃ­:  Bases ayuda formativa julio 2015.\r\n\r\nhttp://www.pilas.es/opencms/export/sites/default/pilas/galeriaFicheros/areas/trabajoyformacion/Bases_ayuda_formativa_julio_2015.pdf', '20150717022546', '20150717022546b', '20150717022546c'),
(385, '2015-07-20 11:25:53', 0, 0, '"Viajar en transporte colectivo ', 'SN', '', 'Sevilla', 'otras', '', '', 0, 0, 0, 0, '"Viajar en transporte colectivo o bicicleta en 500 palabras". El Consorcio de Transporte Metropolitano del Ãrea de Sevilla ha publicado recientemente las bases de esta nueva ediciÃ³n de su concurso literario. Puedes consultarlas aquÃ­ y en www.pilas.es:\r\n', '20150720012414', '20150720012414b', '20150720012414c'),
(386, '2015-07-20 12:46:43', 0, 0, 'El CorralÃ³n, Pilas.\r\nAv. Juan C', 'SN', '', 'Sevilla', 'hosteleria y turismo', '', '', 0, 0, 0, 0, 'El CorralÃ³n, Pilas.\r\nAv. Juan Carlos I, nÂº 7.', '20150720024434', '20150720024434b', '20150720024434c'),
(387, '2015-07-24 04:50:56', 0, 0, 'Horario de verano de la Bibliote', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Horario de verano de la Biblioteca Municipal', '20150724065024', '20150724065024b', '20150724065024c'),
(388, '2015-07-25 22:57:55', 0, 0, 'Abierto el plazo de inscripciÃ³n', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Abierto el plazo de inscripciÃ³n para los cursos del mes de agosto dedicados al uso de Twitter y a hojas de cÃ¡lculo.\r\n\r\nPueden inscribirse presencialmente en el centro Guadalinfo (calle MarquÃ©s de Santillana, 62), mediante llamada telefÃ³nica (955 752 303) o correo electrÃ³nico (guadalinfo.pilas@guadalinfo.es).', '20150726125720', '20150726125720b', '20150726125720c'),
(389, '2015-08-07 21:59:47', 0, 0, 'Festival solidario de cine.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Durante el mes de agosto continÃºa el Festival Solidario de Cine de Verano. En la cartelera podrÃ¡n ver las cintas que se van a proyectar en el patio del antiguo colegio Don Pedro, en la calle Pineda. Anunciamos que durante este mes las pelÃ­culas van dirigidas al pÃºblico adulto.', '20150807081617', '20150807081617b', '20150807081617c'),
(390, '2015-08-11 10:07:45', 0, 0, 'ITV ciclomotores.', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'ITV ciclomotores.', '20150811120706', '20150811120706b', '20150811120706c'),
(391, '2015-08-13 20:25:53', 0, 0, 'Esta noche a las 21.00 horas, la', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Esta noche a las 21.00 horas, la UD Pilas se enfrenta al Coria CF, un clÃ¡sico de la Tercera DivisiÃ³n, en el estadio municipal Manuel Leonardo Ventura en el que disputarÃ¡n una nueva ediciÃ³n del trofeo de fÃºtbol mÃ¡s antiguo de la provincia de Sevilla.\r\n\r\nA pesar de que estamos en pleno periodo vacacional, desde el club pileÃ±o se espera que la aficiÃ³n responda a la cita con el Trofeo, su Trofeo, el Villa de Pilas, que llevamos disfrutando en nuestro pueblo desde hace 43 aÃ±os de forma ininterrumpida.\r\n\r\nÂ¡Acude a animar a tu equipo! Colabora: Excmo. Ayuntamiento de Pilas.\r\n\r\nCartel y fuente: UniÃ³n Deportiva Pilas', '20150813102502', '20150813102502b', '20150813102502c'),
(392, '2015-08-17 14:44:22', 0, 0, 'ITV de vehÃ­culos agrÃ­colas en ', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'ITV de vehÃ­culos agrÃ­colas en Pilas', '20150817044400', '20150817044400b', '20150817044400c'),
(393, '2015-08-18 11:27:55', 0, 0, ' American Sniper (El francotirad', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, ' American Sniper (El francotirador) estÃ¡ basada en la novela homÃ³nima, American Sniper: The Autobiography of the Most Lethal Sniper in U.S. Military History, escrita por su propio protagonista, Chris Kyle, considerado el francotirador mÃ¡s letal de Estados Unidos que llegÃ³ a causar la muerte de hasta 255 insurgentes iraquÃ­es.\r\n\r\nDesde muy pequeÃ±o, Chris Kyle se ha sentido atraÃ­do por la armas y en 1999, en un segundo intento, consiguiÃ³ ingresar en la Marina de los Estados Unidos para formarse como SEAL (la principal fuerza de operaciones especiales del paÃ­s). En el mismo aÃ±o, Kyle es destinado a Ramadi, Anwar y Bagdag para combatir en la Guerra de Irak donde sufrirÃ¡ momentos aterradores que no serÃ¡ capaz de olvidar.\r\n\r\nJueves, 20 de agosto. Patio de la Casa Don Pedro, antiguo colegio El Centro, a las 22.00 horas.\r\n\r\nEntrada: 1 euro o 1 kg de alimentos no perecederos a beneficio de asociaciones y ONGs de nuestra localidad.', '20150818012640', '20150818012640b', '20150818012640c'),
(394, '2015-08-21 15:44:10', 0, 0, 'Vuelta de la Biblioteca Municipa', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Vuelta de la Biblioteca Municipal a su horario habitual', '20150821054342', '20150821054342b', '20150821054342c'),
(395, '2015-08-21 15:46:57', 0, 0, 'Feria de la cultura.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Feria de la cultura.', '20150821054429', '20150821054429b', '20150821054429c'),
(396, '2015-08-21 15:47:52', 0, 0, 'Gala del Deporte.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Gala del Deporte.', '20150821054657', '20150821054657b', '20150821054657c'),
(397, '2015-08-21 15:49:00', 0, 0, 'ProtecciÃ³n Civil, mÃ¡s informac', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'ProtecciÃ³n Civil, mÃ¡s informaciÃ³n en www.pilas.es', '20150821054752', '20150821054752b', '20150821054752c'),
(398, '2015-08-21 15:49:41', 0, 0, 'Festival de Flamenco.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Festival de Flamenco.', '20150821054900', '20150821054900b', '20150821054900c'),
(399, '2015-08-22 13:27:28', 0, 0, 'Basada en la novela de Markus Zu', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Basada en la novela de Markus Zusak, La ladrona de libros cuenta la historia de Liesel Mamminger, una niÃ±a de 9 aÃ±os adoptada por una familia obrera alemana durante la Segunda Guerra Mundial.\r\n\r\nAyudada por su padre adoptivo, la joven aprende a leer y compartir libros con sus vecinos y con Rudy, un hombre judÃ­o que vive escondico en su hogar. El partido de Hitler es muy poderoso y cada vez son mÃ¡s los adeptos que se unen a su causa. La niÃ±a logra distraerse de los bombardeos con la lectura de las novelas que roba, sin embargo, serÃ¡ la historia que ella misma estÃ¡ escribiendo la que le salve la vida.\r\n\r\nJueves, 27 de agosto. Patio de la Casa Don Pedro, antiguo colegio El Centro, a las 22.00 horas.\r\n\r\nEntrada: 1 euro o 1 kg de alimentos no perecederos a beneficio de asociaciones y ONGs de nuestra localidad.', '20150822032647', '20150822032647b', '20150822032647c'),
(400, '2015-08-25 10:44:24', 0, 0, 'Cursos adaptados para todos los ', 'SN', '', 'Sevilla', 'deportes', '', '', 0, 0, 0, 0, 'Cursos adaptados para todos los niveles, desde los 18 meses de edad, con descuentos en matrÃ­cula y mensualidad a partir del segundo hermano.\r\n\r\nA partir del prÃ³ximo lunes 31 de agosto, se abre el plazo de inscripciÃ³n en la Piscina Cubierta Municipal. Las personas interesadas podrÃ¡n informarse de lunes a viernes en horario de maÃ±ana y tarde o a travÃ©s del telÃ©fono 954 751 076.', '20150825124358', '20150825124358b', '20150825124358c'),
(401, '2015-08-26 15:09:59', 0, 0, 'La DelegaciÃ³n de Deportes del A', 'SN', '', 'Sevilla', 'deportes', '', '', 0, 0, 0, 0, 'La DelegaciÃ³n de Deportes del Ayuntamieno de Pilas ha firmado un convenio con la Escuela Oficial de Deporte Al Ãndalus, que ofrece titulaciones oficiales para distintas modalidades deportivas. A partir de noviembre, en Pilas se impartirÃ¡ el Curso de Nivel 1 de FÃºtbol.\r\n\r\nPara realizar la inscripciÃ³ o solicitar mÃ¡s informaciÃ³n contactar en la direcciÃ³n de email centrosalandalus.sevilla@gmail.com\r\n\r\nTambiÃ©n en los telÃ©fonos 664849256 y 954098348. \r\n\r\nDe igual forma, la propia escuela ofrece formaciÃ³n de prÃ¡cticas deportivas como fÃºtbol sala, judo, baloncesto, atletismo y balonmano. En caso de que se produjera demanda de ambas, se podrÃ­an llevar a cabo en nuestro municipio. ', '20150826050939', '20150826050939b', '20150826050939c'),
(402, '2015-08-29 05:59:41', 0, 0, 'A partir del prÃ³ximo mes de sep', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'A partir del prÃ³ximo mes de septiembre, niÃ±os y jÃ³venes de entre 5 y 18 aÃ±os podrÃ¡n disfrutar nuevamente de modalidades deportivas y otras actividades deportivas. En el dÃ­ptico que aparece a continuaciÃ³n aparece informaciÃ³n ampliada, asÃ­ como en la DelegaciÃ³n de Deportes del Ayuntamiento en horario de 9.00 a 14.00 h (lunes a viernes) o en el telÃ©fono 955754910.\r\n\r\nOrganizan: Club Deportivo TÃ©nisPÃ¡del, C. D. Tor del Rey, Club Deportivo Beatriz de Cabrera, Escuela de Ciclismo Villa de Pilas, Escuela de Waterpolo Pilas, Club Polideportivo Pilas y Club Deportivo Pilas&Mures.', '20150829075900', '20150829075900b', '20150829075900c'),
(403, '2015-09-01 16:53:46', 0, 0, 'Escuela municipal de mÃºsica y d', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Escuela municipal de mÃºsica y danza de Pilas.', '20150901065308', '20150901065308b', '20150901065308c'),
(404, '2015-09-06 19:05:55', 0, 0, 'Horario para el mes de septiembr', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Horario para el mes de septiembre del Cementerio Parroquial San JosÃ©', '20150906090526', '20150906090526b', '20150906090526c'),
(405, '2015-09-08 13:21:23', 0, 0, 'Pueden inscribirse presencialmen', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Pueden inscribirse presencialmente en el centro Guadalinfo (calle MarquÃ©s de Santillana, 62), mediante llamada telefÃ³nica (955 752 303) o correo electrÃ³nico (guadalinfo.pilas@guadalinfo.es).', '20150908032055', '20150908032055b', '20150908032055c'),
(406, '2015-09-08 13:23:59', 0, 0, 'Se recomienda asistir a la reuni', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Se recomienda asistir a la reuniÃ³n, ya que se ofrecerÃ¡ informaciÃ³n novedosa sobre el funcionamiento de los talleres, respecto a aÃ±os anteriores. PodrÃ¡n asistir a la misma todas las personas interesadas en participar en dichos talleres.\r\n\r\nPara cualquier aclaraciÃ³n pueden llamar al centro municipal de informaciÃ³n a la mujer, tlfnos: 955 754 891 / 954 751 688.', '20150908032334', '20150908032334b', '20150908032334c'),
(407, '2015-09-11 14:35:33', 0, 0, 'Desde la delegaciÃ³n de...', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Desde la delegaciÃ³n de PromociÃ³n Juvenil, Ocio y Tiempo Libre se pone a disposiciÃ³n de nuestros jÃ³venes una aplicaciÃ³n mÃ³vil, de uso fÃ¡cil, que les permitirÃ¡ localizar acompaÃ±antes de viaje con el objetivo de ahorrar en combustible y dinero, y de respetar lo mÃ¡ximo posible el medio ambiente.Cada dÃ­a, cientos de jÃ³venes pileÃ±os tienen que desplazarse hacia su lugar de estudio o trabajo. Conscientes de ello, desde esta delegaciÃ³n, encabezada por Antonio JosÃ© Cabello, se ha firmado un convenio de colaboraciÃ³n con AMOVENS, que ofrece una aplicaciÃ³n mÃ³vil con la que los usuarios pueden encontrar compaÃ±ero(s) de coche que salga de o vaya a Pilas con las rutas necesarias, y que puede descargarse (para Android y iPhone) a travÃ©s de este enlace: https://amovens.com/app. AdemÃ¡s, para seguir los movimientos y participar activamente en este nuevo servicio municipal, las personas interesadas pueden registrarse en el grupo que AMOVENS ha creado exclusivamente para los miembros pertenecientes a nuestra localidad: https://amovens.com/pilas', '20150909064403', '20150909064403b', '20150909064403c'),
(408, '2015-09-14 08:02:24', 0, 0, 'Compramos su vehÃ­culo.', 'SN', '', 'Sevilla', 'motor', '', '', 0, 0, 0, 0, 'Compramos su vehÃ­culo.', '20150914100136', '20150914100136b', '20150914100136c'),
(409, '2015-09-18 15:07:46', 0, 0, 'Nuevo servicio de transporte gra', 'SN', '', 'Sevilla', 'servicios', '', '', 0, 0, 0, 0, 'Nuevo servicio de transporte gratuito.', '20150918050634', '20150918050634b', '20150918050634c'),
(410, '2015-09-22 07:45:53', 0, 0, 'Suzuki B-king.', 'SN', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Suzuki B-king.', '20150922094459', '20150922094459b', '20150922094459c'),
(411, '2015-09-22 07:49:14', 0, 0, 'Kawasaki z750, 3300 â‚¬.', '615650152', '', 'Sevilla', 'motor_motos', '', '', 0, 0, 0, 0, 'Kawasaki z750, 3300 â‚¬.', '20150922094806', '20150922094806b', '20150922094806c'),
(412, '2015-09-22 08:06:46', 0, 0, 'DÃ­a solidario del deporte.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'DÃ­a solidario del deporte.', '20150922100607', '20150922100607b', '20150922100607c'),
(413, '2015-09-23 18:53:33', 0, 0, 'La asociaciÃ³n Alborada, en cola', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'La asociaciÃ³n Alborada, en colaboraciÃ³n con el Ayuntamiento de Pilas, presenta la obra de teatro escrita por la pileÃ±a BelÃ©n Anguas y dirigida por JosÃ© LÃ³pez (La familia, bien gracias), que se representarÃ¡ en la Casa de la Cultura los dÃ­as 7, 8 (20.30 h) y 10 de octubre (19.00 h).\r\n\r\nEl elenco de la obra estÃ¡ formado por actores y actrices jÃ³venes de nuestra localidad, que aseguran un rato de risas para el espectador. Las entradas -con precio de 2 euros- pueden conseguirse en la sede de Alborada -Centro Social Antonio JosÃ© Diago- sita en la Plaza Ntra. Sra. de los Reyes, en horario de 9.30 a 14.00 horas. TambiÃ©n se pueden encargar a alguien que estÃ© relacionado con la obra o con la asociaciÃ³n.', '20150923085247', '20150923085247b', '20150923085247c'),
(414, '2015-09-25 11:44:21', 0, 0, 'Ruta de la tapa.', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'Ruta de la tapa.', '20150925014348', '20150925014348b', '20150925014348c'),
(415, '2015-09-29 15:40:14', 0, 0, 'PICOR7, VII Festival Internacion', 'SN', '', 'Sevilla', 'actos y eventos', '', '', 0, 0, 0, 0, 'PICOR7, VII Festival Internacional de Cortometrajes -Pilas en Corto-\r\n\r\nMÃ¡s informaciÃ³n en www.pilas.es y www.festivalpilasencorto.com', '20150929053903', '20150929053903b', '20150929053903c'),
(416, '2015-09-30 15:10:21', 0, 0, 'Taller de  internet y correo ele', 'SN', '', 'Sevilla', 'formacion', '', '', 0, 0, 0, 0, 'Taller de  internet y correo electrÃ³nico, mÃ¡s informaciÃ³n en www.pilas.es', '20150930050841', '20150930050841b', '20150930050841c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `remote_addr` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `device_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8_unicode_ci,
  `visited_at` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `IDX_VALUE_ID` (`value_id`),
  KEY `FK_APPLICATION_APPLICATION_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loyalty_card`
--

CREATE TABLE IF NOT EXISTS `loyalty_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_points` smallint(5) NOT NULL,
  `advantage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conditions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`card_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loyalty_card_customer`
--

CREATE TABLE IF NOT EXISTS `loyalty_card_customer` (
  `customer_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  `number_of_points` smallint(5) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validate_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `last_error` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_card_id`),
  KEY `KEY_CARD_ID` (`card_id`),
  KEY `KEY_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loyalty_card_customer_log`
--

CREATE TABLE IF NOT EXISTS `loyalty_card_customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `card_id` int(11) NOT NULL,
  `password_id` int(11) NOT NULL,
  `number_of_points` smallint(5) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `KEY_CUSTOMER_ID` (`customer_id`),
  KEY `KEY_CARD_ID` (`card_id`),
  KEY `KEY_PASSWORD_ID` (`password_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loyalty_card_password`
--

CREATE TABLE IF NOT EXISTS `loyalty_card_password` (
  `password_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`password_id`),
  KEY `FK_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_image`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('picasa','custom','instagram') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`gallery_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_image_custom`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image_custom` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `KEY_GALLERY_ID` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_image_instagram`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image_instagram` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `param_instagram` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` enum('updated') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_image_picasa`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image_picasa` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('album','search') COLLATE utf8_unicode_ci DEFAULT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `album_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` enum('updated') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_video`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('youtube','itunes','vimeo') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`gallery_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_video_itunes`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video_itunes` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `param` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_video_vimeo`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video_vimeo` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('user','group','channel','album') COLLATE utf8_unicode_ci NOT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery_video_youtube`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video_youtube` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('user','channel','search','favorite','playlist') COLLATE utf8_unicode_ci NOT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` enum('updated') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_library`
--

CREATE TABLE IF NOT EXISTS `media_library` (
  `library_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `media_library`
--

INSERT INTO `media_library` (`library_id`, `name`) VALUES
(1, 'Images'),
(2, 'Videos'),
(3, 'Booking'),
(4, 'Catalog'),
(5, 'Custom Page'),
(6, 'Newswall'),
(7, 'Contact'),
(8, 'Calendar'),
(9, 'Folders'),
(10, 'Form'),
(11, 'Loyalty Card'),
(12, 'Padlock'),
(13, 'Discount'),
(14, 'Push'),
(15, 'RSS Feed'),
(16, 'Facebook'),
(17, 'Contest'),
(18, 'Weblink'),
(19, 'Wordpress');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_library_image`
--

CREATE TABLE IF NOT EXISTS `media_library_image` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_id` int(11) unsigned NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `app_id` int(11) unsigned DEFAULT NULL,
  `can_be_colorized` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `KEY_LIBRARY_ID` (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=112 ;

--
-- Volcado de datos para la tabla `media_library_image`
--

INSERT INTO `media_library_image` (`image_id`, `library_id`, `link`, `secondary_link`, `thumbnail`, `option_id`, `app_id`, `can_be_colorized`, `position`) VALUES
(1, 1, '/images/image1.png', NULL, NULL, NULL, NULL, 1, 0),
(2, 1, '/images/image2.png', NULL, NULL, NULL, NULL, 1, 0),
(3, 1, '/images/image3.png', NULL, NULL, NULL, NULL, 1, 0),
(4, 1, '/images/image4.png', NULL, NULL, NULL, NULL, 1, 0),
(5, 1, '/images/image5.png', NULL, NULL, NULL, NULL, 1, 0),
(6, 1, '/images/image6.png', NULL, NULL, NULL, NULL, 1, 0),
(7, 1, '/images/image7.png', NULL, NULL, NULL, NULL, 1, 0),
(8, 2, '/videos/video1.png', NULL, NULL, NULL, NULL, 1, 0),
(9, 2, '/videos/video2.png', NULL, NULL, NULL, NULL, 1, 0),
(10, 2, '/videos/video3.png', NULL, NULL, NULL, NULL, 1, 0),
(11, 2, '/videos/video4.png', NULL, NULL, NULL, NULL, 1, 0),
(12, 2, '/videos/video5.png', NULL, NULL, NULL, NULL, 1, 0),
(13, 2, '/videos/video6.png', NULL, NULL, NULL, NULL, 1, 0),
(14, 3, '/booking/booking1.png', NULL, NULL, NULL, NULL, 1, 0),
(15, 3, '/booking/booking2.png', NULL, NULL, NULL, NULL, 1, 0),
(16, 3, '/booking/booking3.png', NULL, NULL, NULL, NULL, 1, 0),
(17, 3, '/booking/booking4.png', NULL, NULL, NULL, NULL, 1, 0),
(18, 3, '/booking/booking5.png', NULL, NULL, NULL, NULL, 1, 0),
(19, 3, '/booking/booking6.png', NULL, NULL, NULL, NULL, 1, 0),
(20, 3, '/booking/booking7.png', NULL, NULL, NULL, NULL, 1, 0),
(21, 3, '/booking/booking8.png', NULL, NULL, NULL, NULL, 1, 0),
(22, 3, '/booking/booking9.png', NULL, NULL, NULL, NULL, 1, 0),
(23, 3, '/booking/booking10.png', NULL, NULL, NULL, NULL, 1, 0),
(24, 3, '/booking/booking11.png', NULL, NULL, NULL, NULL, 1, 0),
(25, 4, '/catalog/catalog1.png', NULL, NULL, NULL, NULL, 1, 0),
(26, 4, '/catalog/catalog2.png', NULL, NULL, NULL, NULL, 1, 0),
(27, 4, '/catalog/catalog3.png', NULL, NULL, NULL, NULL, 1, 0),
(28, 4, '/catalog/catalog4.png', NULL, NULL, NULL, NULL, 1, 0),
(29, 4, '/catalog/catalog5.png', NULL, NULL, NULL, NULL, 1, 0),
(30, 4, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(31, 4, '/catalog/catalog7.png', NULL, NULL, NULL, NULL, 1, 0),
(32, 4, '/promotion/discount4.png', NULL, NULL, NULL, NULL, 1, 0),
(33, 4, '/catalog/catalog8.png', NULL, NULL, NULL, NULL, 1, 0),
(34, 4, '/catalog/catalog9.png', NULL, NULL, NULL, NULL, 1, 0),
(35, 4, '/catalog/catalog10.png', NULL, NULL, NULL, NULL, 1, 0),
(36, 4, '/catalog/catalog11.png', NULL, NULL, NULL, NULL, 1, 0),
(37, 5, '/custom_page/custom1.png', NULL, NULL, NULL, NULL, 1, 0),
(38, 5, '/loyalty/loyalty6.png', NULL, NULL, NULL, NULL, 1, 0),
(39, 5, '/newswall/newswall1.png', NULL, NULL, NULL, NULL, 1, 0),
(40, 5, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(41, 5, '/newswall/newswall3.png', NULL, NULL, NULL, NULL, 1, 0),
(42, 5, '/newswall/newswall4.png', NULL, NULL, NULL, NULL, 1, 0),
(43, 5, '/push_notifications/push1.png', NULL, NULL, NULL, NULL, 1, 0),
(44, 5, '/push_notifications/push2.png', NULL, NULL, NULL, NULL, 1, 0),
(45, 5, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(46, 5, '/catalog/catalog8.png', NULL, NULL, NULL, NULL, 1, 0),
(47, 5, '/catalog/catalog9.png', NULL, NULL, NULL, NULL, 1, 0),
(48, 6, '/newswall/newswall1.png', NULL, NULL, NULL, NULL, 1, 0),
(49, 6, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(50, 6, '/newswall/newswall3.png', NULL, NULL, NULL, NULL, 1, 0),
(51, 6, '/newswall/newswall4.png', NULL, NULL, NULL, NULL, 1, 0),
(52, 7, '/contact/contact1.png', NULL, NULL, NULL, NULL, 1, 0),
(53, 7, '/contact/contact2.png', NULL, NULL, NULL, NULL, 1, 0),
(54, 7, '/contact/contact3.png', NULL, NULL, NULL, NULL, 1, 0),
(55, 7, '/contact/contact4.png', NULL, NULL, NULL, NULL, 1, 0),
(56, 7, '/contact/contact5.png', NULL, NULL, NULL, NULL, 1, 0),
(57, 7, '/contact/contact6.png', NULL, NULL, NULL, NULL, 1, 0),
(58, 7, '/contact/contact7.png', NULL, NULL, NULL, NULL, 1, 0),
(59, 7, '/contact/contact8.png', NULL, NULL, NULL, NULL, 1, 0),
(60, 7, '/contact/contact9.png', NULL, NULL, NULL, NULL, 1, 0),
(61, 7, '/contact/contact10.png', NULL, NULL, NULL, NULL, 1, 0),
(62, 7, '/contact/contact11.png', NULL, NULL, NULL, NULL, 1, 0),
(63, 8, '/calendar/calendar1.png', NULL, NULL, NULL, NULL, 1, 0),
(64, 8, '/calendar/calendar2.png', NULL, NULL, NULL, NULL, 1, 0),
(65, 8, '/calendar/calendar3.png', NULL, NULL, NULL, NULL, 1, 0),
(66, 9, '/folders/folder1.png', NULL, NULL, NULL, NULL, 1, 0),
(67, 9, '/folders/folder2.png', NULL, NULL, NULL, NULL, 1, 0),
(68, 9, '/folders/folder3.png', NULL, NULL, NULL, NULL, 1, 0),
(69, 9, '/folders/folder4.png', NULL, NULL, NULL, NULL, 1, 0),
(70, 9, '/folders/folder5.png', NULL, NULL, NULL, NULL, 1, 0),
(71, 10, '/form/form1.png', NULL, NULL, NULL, NULL, 1, 0),
(72, 10, '/form/form2.png', NULL, NULL, NULL, NULL, 1, 0),
(73, 10, '/form/form3.png', NULL, NULL, NULL, NULL, 1, 0),
(74, 10, '/calendar/calendar1.png', NULL, NULL, NULL, NULL, 1, 0),
(75, 10, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(76, 11, '/loyalty/loyalty1.png', NULL, NULL, NULL, NULL, 1, 0),
(77, 11, '/loyalty/loyalty2.png', NULL, NULL, NULL, NULL, 1, 0),
(78, 11, '/loyalty/loyalty3.png', NULL, NULL, NULL, NULL, 1, 0),
(79, 11, '/loyalty/loyalty4.png', NULL, NULL, NULL, NULL, 1, 0),
(80, 11, '/loyalty/loyalty5.png', NULL, NULL, NULL, NULL, 1, 0),
(81, 11, '/loyalty/loyalty6.png', NULL, NULL, NULL, NULL, 1, 0),
(82, 12, '/padlock/padlock.png', NULL, NULL, NULL, NULL, 1, 0),
(83, 13, '/discount/discount1.png', NULL, NULL, NULL, NULL, 1, 0),
(84, 13, '/discount/discount2.png', NULL, NULL, NULL, NULL, 1, 0),
(85, 13, '/discount/discount3.png', NULL, NULL, NULL, NULL, 1, 0),
(86, 13, '/discount/discount4.png', NULL, NULL, NULL, NULL, 1, 0),
(87, 13, '/discount/discount5.png', NULL, NULL, NULL, NULL, 1, 0),
(88, 13, '/loyalty/loyalty6.png', NULL, NULL, NULL, NULL, 1, 0),
(89, 14, '/push_notifications/push1.png', NULL, NULL, NULL, NULL, 1, 0),
(90, 14, '/push_notifications/push2.png', NULL, NULL, NULL, NULL, 1, 0),
(91, 14, '/push_notifications/push3.png', NULL, NULL, NULL, NULL, 1, 0),
(92, 14, '/push_notifications/push4.png', NULL, NULL, NULL, NULL, 1, 0),
(93, 14, '/push_notifications/push5.png', NULL, NULL, NULL, NULL, 1, 0),
(94, 14, '/loyalty/loyalty6.png', NULL, NULL, NULL, NULL, 1, 0),
(95, 15, '/rss_feed/rss1.png', NULL, NULL, NULL, NULL, 1, 0),
(96, 15, '/rss_feed/rss2.png', NULL, NULL, NULL, NULL, 1, 0),
(97, 15, '/rss_feed/rss3.png', NULL, NULL, NULL, NULL, 1, 0),
(98, 15, '/newswall/newswall1.png', NULL, NULL, NULL, NULL, 1, 0),
(99, 15, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(100, 15, '/newswall/newswall3.png', NULL, NULL, NULL, NULL, 1, 0),
(101, 15, '/newswall/newswall4.png', NULL, NULL, NULL, NULL, 1, 0),
(102, 16, '/social_facebook/facebook1.png', NULL, NULL, NULL, NULL, 1, 0),
(103, 17, '/contest/contest1.png', NULL, NULL, NULL, NULL, 1, 0),
(104, 17, '/contest/contest2.png', NULL, NULL, NULL, NULL, 1, 0),
(105, 17, '/contest/contest3.png', NULL, NULL, NULL, NULL, 1, 0),
(106, 17, '/contest/contest4.png', NULL, NULL, NULL, NULL, 1, 0),
(107, 17, '/contest/contest5.png', NULL, NULL, NULL, NULL, 1, 0),
(108, 18, '/weblink/link1.png', NULL, NULL, NULL, NULL, 1, 0),
(109, 18, '/weblink/link2.png', NULL, NULL, NULL, NULL, 1, 0),
(110, 18, '/weblink/link3.png', NULL, NULL, NULL, NULL, 1, 0),
(111, 19, '/wordpress/wordpress1.png', NULL, NULL, NULL, NULL, 1, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=52 ;

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
(16, 'babu', '965b38734b55904903e3f2e1589b99b7697a4546', NULL, '2014-12-01 20:47:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'loli_morena_88@hotmail.com', 'ad5c1b96d606cd31f8b2d68d4e38b613bb2122b3', NULL, '2014-12-29 12:30:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'ayusete', '66aa1cb9a469f74f6057878a4dcaaf9dbabd9529', NULL, '2015-01-09 17:42:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'hugo', 'e22cd461c068aea5dff1c3462214880d76b3e39c', NULL, '2015-01-26 07:43:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(0, 'admin', 'faa414d679fc9185effcc6e5122a67066657c338', NULL, '2015-07-28 15:28:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'jirizo', 'aa5728ef1be070ab5b44f2a86a8660a607134b6c', NULL, '2015-02-01 07:11:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'prueba2015', '9cdda67ded3f25811728276cefa76b80913b4c54', NULL, '2015-02-03 18:46:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'antonioreyes', 'eb49dc1097eb13b32c84191d07ca3ffc2cc23c4f', NULL, '2015-02-05 07:02:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'elchata69', 'cda8f3de7249b6a422f7b37561deb35ea1071226', NULL, '2015-02-05 09:32:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'cristobal lara gil', '880f2628df7f407c898c8995f4378e2c693cd67c', NULL, '2015-02-08 12:01:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'cristobal', '880f2628df7f407c898c8995f4378e2c693cd67c', NULL, '2015-02-08 20:00:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'claudia436', 'f351e52f8131e543a3dabf03b9487579cd0bda6f', NULL, '2015-02-09 09:48:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'GALLINEROS BARROS', '382435e7f8ae841c6a5adcd1997069a02200ca3a', NULL, '2015-03-05 20:36:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'AUTOESCUELA EUROCAP', '7da429eb4a7d65aad98c7bf89bac6a5bb4d4a6b3', NULL, '2015-03-05 20:39:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'JOSÃ‰', '5127bec3677ec606d9e0e93a815ebd89cfe5160b', NULL, '2015-03-05 23:03:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'construmader.es', 'b9a21c2df2705910ddd3c25a6771afe8ea62747f', NULL, '2015-03-06 10:53:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'scania', '97b51c9f7a80f7be84379aa3f0ba6496be0f3c35', NULL, '2015-03-11 12:19:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'MERCEDES', '5dee60d71f9a1d22ab48b32d0f7d4c66a4f70a93', NULL, '2015-03-18 14:52:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'pedro', '93ee12e112bae593edcf7aecca59464c6afcc832', NULL, '2015-03-25 19:43:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '27289930Q', '579d29fdd4bbf56b16955b72025af0c529a09ec2', NULL, '2015-03-25 22:01:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'ESCAYOLAS DAVID', '4694b0057cbf51a2de6065840cdf0128b2abfaa2', NULL, '2015-03-28 21:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Marko_asi', '5bb1be8d6caf771e33ced598cfdcf771f4dc7f1c', NULL, '2015-04-21 10:51:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'jotacem', '8b3ec9123aa2c8b339eccfbf9686bd7766f6c4f2', NULL, '2015-04-28 16:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'madelucas06@gmail.com', '977d93f80cc6b874a7dfc76879907de8687d406e', NULL, '2015-05-17 02:26:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'baldomero', '4f81f23887bac163348df81baf2abf24a385c4d1', NULL, '2015-05-27 00:55:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'homemulti3040@hotmail.com', '2c63aeed05b74fe25cdcb8783c9f013d39ff10d8', NULL, '2015-05-28 04:08:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'CIGARRILLOSELECTRONICOS', '6bf5e8db0932704380aa54191307a324c5184a38', NULL, '2015-06-01 12:11:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'ramona', '99d7adc29422f86b9a80018bd3e4d1931cb647db', NULL, '2015-06-03 01:44:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'baldomero telecomunicaciones', 'b84569c0be6d1c38b9278f03e38dbba5d266c111', NULL, '2015-06-18 02:17:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'JOSIMAR74', '2c63aeed05b74fe25cdcb8783c9f013d39ff10d8', NULL, '2015-06-25 23:01:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'marco10', '5a9f0b941939a3ff492bd40bc102b305e613d1d1', NULL, '2015-07-08 18:58:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'david', '7812156aca8393c21faf53c228f4f69f4dbcd521', NULL, '2015-07-11 12:27:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'catalinavarela', 'e97bdeb8b5b57c98ef72bca842cf799cd27c87bd', NULL, '2015-07-24 17:41:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Juan', '568e7b2776cb6678ed6ce754b5475369dfeedd32', NULL, '2015-09-25 07:17:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'manumarqz', '275778340404b093d8bc8a87b3ac1fba5927ea60', NULL, '2015-09-26 13:54:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `module`
--

INSERT INTO `module` (`module_id`, `name`, `version`, `created_at`, `updated_at`) VALUES
(1, 'Core', '1.0.2', '2015-06-08 00:57:37', '2015-06-08 00:57:37'),
(2, 'Application', '2.5.0', '2015-06-08 00:57:37', '2015-06-08 00:57:38'),
(3, 'Media', '1.2.0', '2015-06-08 00:57:39', '2015-06-08 00:57:39'),
(4, 'Admin', '1.1.1', '2015-06-08 00:57:40', '2015-06-08 00:57:40'),
(5, 'Api', '1.1.0', '2015-06-08 00:57:40', '2015-06-08 00:57:40'),
(6, 'Backoffice', '1.1.1', '2015-06-08 00:57:41', '2015-06-08 00:57:41'),
(7, 'Booking', '1.2.0', '2015-06-08 00:57:41', '2015-06-08 00:57:41'),
(8, 'Catalog', '1.2.0', '2015-06-08 00:57:42', '2015-06-08 00:57:42'),
(9, 'Cms', '1.2.5', '2015-06-08 00:57:43', '2015-06-08 00:57:43'),
(10, 'Comment', '2.6.0', '2015-06-08 00:57:43', '2015-06-08 00:57:43'),
(11, 'Contact', '1.2.0', '2015-06-08 00:57:44', '2015-06-08 00:57:44'),
(12, 'Customer', '1.0.1', '2015-06-08 00:57:44', '2015-06-08 00:57:44'),
(13, 'Event', '1.2.0', '2015-06-08 00:57:45', '2015-06-08 00:57:45'),
(14, 'Folder', '1.2.0', '2015-06-08 00:57:46', '2015-06-08 00:57:46'),
(15, 'Form', '1.2.0', '2015-06-08 00:57:46', '2015-06-08 00:57:46'),
(16, 'LoyaltyCard', '1.2.0', '2015-06-08 00:57:47', '2015-06-08 00:57:47'),
(17, 'Padlock', '1.0.1', '2015-06-08 00:57:48', '2015-06-08 00:57:48'),
(18, 'Promotion', '1.2.0', '2015-06-08 00:57:49', '2015-06-08 00:57:49'),
(19, 'Push', '2.9.0', '2015-06-08 00:57:49', '2015-06-08 00:57:50'),
(20, 'Rss', '1.2.0', '2015-06-08 00:57:50', '2015-06-08 00:57:50'),
(21, 'Social', '1.2.0', '2015-06-08 00:57:51', '2015-06-08 00:57:51'),
(22, 'Socialgaming', '2.9.0', '2015-06-08 00:57:51', '2015-06-08 00:57:51'),
(23, 'System', '1.0.4', '2015-06-08 00:57:52', '2015-06-08 00:57:52'),
(24, 'Template', '1.0.1', '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(25, 'Translation', '1.0.0', '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(26, 'Weblink', '1.2.0', '2015-06-08 00:57:54', '2015-06-08 00:57:54'),
(27, 'Wordpress', '1.2.0', '2015-06-08 00:57:54', '2015-06-08 00:57:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padlock`
--

CREATE TABLE IF NOT EXISTS `padlock` (
  `padlock_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`padlock_id`),
  KEY `FK_PADLOCK_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padlock_value`
--

CREATE TABLE IF NOT EXISTS `padlock_value` (
  `padlock_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `value_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`padlock_value_id`),
  KEY `FK_PADLOCK_VALUE_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `conditions` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `end_at` date DEFAULT NULL,
  `force_validation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `condition_type` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition_number_of_points` tinyint(2) DEFAULT NULL,
  `condition_period_number` tinyint(2) DEFAULT NULL,
  `condition_period_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_shared` tinyint(1) NOT NULL DEFAULT '0',
  `owner` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`promotion_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotion_customer`
--

CREATE TABLE IF NOT EXISTS `promotion_customer` (
  `promotion_customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) NOT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  `is_used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `number_of_error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `last_error` datetime DEFAULT NULL,
  PRIMARY KEY (`promotion_customer_id`),
  KEY `KEY_PROMOTION_ID` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_apns_devices`
--

CREATE TABLE IF NOT EXISTS `push_apns_devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_version` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_known_latitude` decimal(11,8) DEFAULT NULL,
  `last_known_longitude` decimal(11,8) DEFAULT NULL,
  `device_token` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `device_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `device_version` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `push_badge` enum('disabled','enabled') COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `push_alert` enum('disabled','enabled') COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `push_sound` enum('disabled','enabled') COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `status` enum('active','uninstalled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`device_id`),
  UNIQUE KEY `UNIQUE_KEY_APP_NAME_APP_VERSION_DEVICE_UID` (`app_name`,`app_version`,`device_uid`),
  KEY `KEY_DEVICE_TOKEN` (`device_token`),
  KEY `KEY_STATUS` (`status`),
  KEY `FK_APPLICATION_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_certificate`
--

CREATE TABLE IF NOT EXISTS `push_certificate` (
  `certificate_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_delivered_message`
--

CREATE TABLE IF NOT EXISTS `push_delivered_message` (
  `deliver_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `device_uid` text COLLATE utf8_unicode_ci NOT NULL,
  `device_type` tinyint(1) NOT NULL,
  `message_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_displayed` int(11) NOT NULL DEFAULT '0',
  `delivered_at` datetime NOT NULL,
  PRIMARY KEY (`deliver_id`),
  KEY `KEY_DEVICE_ID` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_gcm_devices`
--

CREATE TABLE IF NOT EXISTS `push_gcm_devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registration_id` text COLLATE utf8_unicode_ci,
  `development` enum('production','sandbox') CHARACTER SET latin1 NOT NULL DEFAULT 'production',
  `status` enum('active','uninstalled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`device_id`),
  KEY `FK_APPLICATION_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_messages`
--

CREATE TABLE IF NOT EXISTS `push_messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `radius` decimal(7,2) DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `send_until` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `status` enum('queued','delivered','sending','failed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queued',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `FK_APPLICATION_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rss_feed`
--

CREATE TABLE IF NOT EXISTS `rss_feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picture` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`feed_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`session_id`, `modified`, `lifetime`, `data`) VALUES
('0d1d02a8dc2f52fd38871c59d1a6af3e', 1442084552, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('111923b35b0e62c957077a4e91dea58d', 1441906023, 432000, 'mobile|a:2:{s:16:"current_language";s:2:"en";s:12:"current_type";N;}'),
('170ef00b8f01a35a38b80a740269b93f', 1442514814, 432000, 'mobile|a:2:{s:16:"current_language";s:2:"en";s:12:"current_type";N;}'),
('3b122a3fb27ae1eabd8ef3f1722d7f88', 1442815835, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('74aba3dbe2c8e91bc270d3dfca4d3261', 1441906022, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('78b0614df9c7526a433425c8c1c9aa89', 1442907146, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('82d3f307450954216b423b117fa7ba50', 1441817037, 432000, 'mobile|a:2:{s:16:"current_language";s:2:"en";s:12:"current_type";N;}'),
('9094c8adcd50ba5b8b5682ac0404e9b0', 1442514813, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('9c1206e4812217f51c5bbaad6abec9a0', 1441996418, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('9fb34d4b9cf6a60cb3e55432a208c668', 1442907147, 432000, 'mobile|a:2:{s:16:"current_language";s:2:"en";s:12:"current_type";N;}'),
('b8de4ecef799ea710b85bdd7ae9aeefb', 1442815836, 432000, 'mobile|a:2:{s:16:"current_language";s:2:"en";s:12:"current_type";N;}'),
('bead514f03312f96fa297a8155e168af', 1441817037, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('c912a214a94c2232e8a35afd3f77e4c0', 1442084475, 432000, 'front|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";N;s:8:"messages";N;}'),
('fa83beaec9626c3c7c6fc1478c0f2163', 1441996419, 432000, 'mobile|a:2:{s:16:"current_language";s:2:"en";s:12:"current_type";N;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_facebook`
--

CREATE TABLE IF NOT EXISTS `social_facebook` (
  `facebook_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `fb_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`facebook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialgaming_game`
--

CREATE TABLE IF NOT EXISTS `socialgaming_game` (
  `game_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `period_id` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gift` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `end_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `FK_APPLICATION_OPTION_VALUE_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_config`
--

CREATE TABLE IF NOT EXISTS `system_config` (
  `config_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNIQUE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `system_config`
--

INSERT INTO `system_config` (`config_id`, `code`, `label`, `value`) VALUES
(1, 'company_name', 'Name', NULL),
(2, 'company_phone', 'Phone', NULL),
(3, 'company_address', 'Address', NULL),
(4, 'company_country', 'Country', NULL),
(5, 'company_vat_number', 'VAT Number', NULL),
(6, 'system_territory', 'Timezone', NULL),
(7, 'system_timezone', 'Timezone', NULL),
(8, 'system_currency', 'Currency', NULL),
(9, 'support_email', 'Support Email Address', NULL),
(10, 'support_link', 'Support Link', NULL),
(11, 'logo', 'Logo', NULL),
(12, 'favicon', 'Favicon', NULL),
(13, 'support_name', 'Name', NULL),
(14, 'platform_name', 'Platform Name', NULL),
(15, 'system_default_language', 'Default Languages', NULL),
(16, 'application_try_apk', 'Try to generate the apk when downloading the Android source', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_block`
--

CREATE TABLE IF NOT EXISTS `template_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `background_color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `template_block`
--

INSERT INTO `template_block` (`block_id`, `code`, `name`, `color`, `background_color`, `image_color`, `position`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header', '#00377a', '#739c03', NULL, 10, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(2, 'subheader', 'Subheader', '#00377a', '#739c03', NULL, 20, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(3, 'connect_button', 'Connect Button', '#233799', '#f2f2f2', NULL, 30, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(4, 'background', 'Background', '#ffffff', '#0c6ec4', NULL, 40, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(5, 'discount', 'Discount Zone', '#fcfcfc', '#739c03', NULL, 50, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(6, 'button', 'Button', '#fcfcfc', '#00377a', NULL, 60, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(7, 'news', 'News', '#fcfcfc', '#00377a', NULL, 70, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(8, 'comments', 'Comments', '#ffffff', '#4d5d8a', NULL, 80, '2015-06-08 00:57:53', '2015-06-08 00:57:53'),
(9, 'tabbar', 'Tabbar', '#ffffff', '#739c03', '#ffffff', 90, '2015-06-08 00:57:53', '2015-06-08 00:57:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_block_app`
--

CREATE TABLE IF NOT EXISTS `template_block_app` (
  `block_id` int(11) NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `background_color` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `image_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`block_id`,`app_id`),
  KEY `FK_APPLICATION_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `template_block_app`
--

INSERT INTO `template_block_app` (`block_id`, `app_id`, `color`, `background_color`, `image_color`) VALUES
(1, 1, '#FFFFFF', '#56718E', NULL),
(2, 1, '#56718E', '#FFFFFF', NULL),
(3, 1, '#FFFFFF', '#56718E', NULL),
(4, 1, '#FFFFFF', '#56718E', NULL),
(5, 1, '#FFFFFF', '#56718E', NULL),
(6, 1, '#FFFFFF', '#56718E', NULL),
(7, 1, '#FFFFFF', '#56718E', NULL),
(8, 1, '#56718e', '#FFFFFF', NULL),
(9, 1, '#FFFFFF', '#56718E', '#FFFFFF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_design`
--

CREATE TABLE IF NOT EXISTS `template_design` (
  `design_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) unsigned NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background_image_retina` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`design_id`),
  KEY `KEY_LAYOUT_ID` (`layout_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `template_design`
--

INSERT INTO `template_design` (`design_id`, `layout_id`, `code`, `name`, `overview`, `background_image`, `background_image_retina`) VALUES
(1, 1, 'zenstitut', 'Zenstitut', '/zenstitut/overview.jpg', '/zenstitut/background.jpg', '/zenstitut/background-568h@2x.jpg'),
(2, 2, 'hairdresser', 'Hairdresser', '/hairdresser/overview.jpg', '/hairdresser/background.jpg', '/hairdresser/background-568h@2x.jpg'),
(3, 3, 'fall_wedding', 'Wedding', '/wedding/overview.jpg', '/wedding/background.jpg', '/wedding/background-568h@2x.jpg'),
(4, 4, 'purple_croco', 'Violet', '/purple_croco/overview.jpg', '/purple_croco/background.jpg', '/purple_croco/background-568h@2x.jpg'),
(5, 5, 'grand_palace', 'Grand Palace', '/grand_palace/overview.jpg', '/grand_palace/background.jpg', '/grand_palace/background-568h@2x.jpg'),
(6, 6, 'white_shadow', 'White Shadow', '/white_shadow/overview.jpg', '/white_shadow/background.jpg', '/white_shadow/background-568h@2x.jpg'),
(7, 7, 'side_brown', 'Marron', '/side_brown/overview.jpg', '/side_brown/background.jpg', '/side_brown/background-568h@2x.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template_design_block`
--

CREATE TABLE IF NOT EXISTS `template_design_block` (
  `design_block_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `design_id` int(11) unsigned NOT NULL,
  `block_id` int(11) NOT NULL,
  `background_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`design_block_id`),
  KEY `KEY_DESIGN_ID` (`design_id`),
  KEY `KEY_BLOCK_ID` (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Volcado de datos para la tabla `template_design_block`
--

INSERT INTO `template_design_block` (`design_block_id`, `design_id`, `block_id`, `background_color`, `color`, `image_color`) VALUES
(1, 1, 1, '#CB0052', '#FFFFFF', NULL),
(2, 1, 2, '#FFFFFF', '#CB0052', NULL),
(3, 1, 3, '#CB0052', '#FFFFFF', NULL),
(4, 1, 4, '#CB0052', '#FFFFFF', NULL),
(5, 1, 5, '#CB0052', '#FFFFFF', NULL),
(6, 1, 6, '#CB0052', '#FFFFFF', NULL),
(7, 1, 7, '#2B8901', '#000000', NULL),
(8, 1, 8, '#FFFFFF', '#CB0052', NULL),
(9, 1, 9, '#2B8901', '#000000', '#000000'),
(10, 2, 1, '#56718E', '#FFFFFF', NULL),
(11, 2, 2, '#FFFFFF', '#56718E', NULL),
(12, 2, 3, '#56718E', '#FFFFFF', NULL),
(13, 2, 4, '#56718E', '#FFFFFF', NULL),
(14, 2, 5, '#56718E', '#FFFFFF', NULL),
(15, 2, 6, '#56718E', '#FFFFFF', NULL),
(16, 2, 7, '#56718E', '#FFFFFF', NULL),
(17, 2, 8, '#FFFFFF', '#56718e', NULL),
(18, 2, 9, '#56718E', '#FFFFFF', '#FFFFFF'),
(19, 3, 1, '#BA5521', '#5B371F', NULL),
(20, 3, 2, '#5B371F', '#BA5521', NULL),
(21, 3, 3, '#BA5521', '#5B371F', NULL),
(22, 3, 4, '#BA5521', '#5B371F', NULL),
(23, 3, 5, '#BA5521', '#5B371F', NULL),
(24, 3, 6, '#BA5521', '#5B371F', NULL),
(25, 3, 7, '#BA5521', '#5B371F', NULL),
(26, 3, 8, '#5B371F', '#BA5521', NULL),
(27, 3, 9, '#BA5521', '#5B371F', '#5B371F'),
(28, 4, 1, '#2E2E2E', '#FFFFFF', NULL),
(29, 4, 2, '#734957', '#FFFFFF', NULL),
(30, 4, 3, '#734957', '#000000', NULL),
(31, 4, 4, '#2E2E2E', '#FFFFFF', NULL),
(32, 4, 5, '#2E2E2E', '#FFFFFF', NULL),
(33, 4, 6, '#2E2E2E', '#FFFFFF', NULL),
(34, 4, 7, '#FFFFFF', '#2E2E2E', NULL),
(35, 4, 8, '#734957', '#FFFFFF', NULL),
(36, 4, 9, '#FFFFFF', '#2E2E2E', '#2E2E2E'),
(37, 5, 1, '#000000', '#FFFFFF', NULL),
(38, 5, 2, '#FFFFFF', '#000000', NULL),
(39, 5, 3, '#000000', '#FFFFFF', NULL),
(40, 5, 4, '#FFFFFF', '#000000', NULL),
(41, 5, 5, '#FFFFFF', '#000000', NULL),
(42, 5, 6, '#FFFFFF', '#000000', NULL),
(43, 5, 7, '#FFFFFF', '#000000', NULL),
(44, 5, 8, '#000000', '#FFFFFF', NULL),
(45, 5, 9, '#FFFFFF', '#FFFFFF', '#FFFFFF'),
(46, 6, 1, '#1F6FAA', '#FFFFFF', NULL),
(47, 6, 2, '#FFFFFF', '#1f6faa', NULL),
(48, 6, 3, '#1F6FAA', '#FFFFFF', NULL),
(49, 6, 4, '#FFFFFF', '#1F6FAA', NULL),
(50, 6, 5, '#FFFFFF', '#1F6FAA', NULL),
(51, 6, 6, '#FFFFFF', '#1F6FAA', NULL),
(52, 6, 7, '#FFFFFF', '#1F6FAA', NULL),
(53, 6, 8, '#FFFFFF', '#1F6FAA', NULL),
(54, 6, 9, '#FFFFFF', '#FFFFFF', '#FFFFFF'),
(55, 7, 1, '#FFFFFF', '#43352A', NULL),
(56, 7, 2, '#43352A', '#FFFFFF', NULL),
(57, 7, 3, '#FFFFFF', '#43352A', NULL),
(58, 7, 4, '#43352A', '#FFFFFF', NULL),
(59, 7, 5, '#43352A', '#FFFFFF', NULL),
(60, 7, 6, '#43352A', '#FFFFFF', NULL),
(61, 7, 7, '#FFFFFF', '#43352A', NULL),
(62, 7, 8, '#43352A', '#FFFFFF', NULL),
(63, 7, 9, '#FFFFFF', '#43352A', '#43352A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weblink`
--

CREATE TABLE IF NOT EXISTS `weblink` (
  `weblink_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`weblink_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `weblink`
--

INSERT INTO `weblink` (`weblink_id`, `value_id`, `type_id`, `cover`, `created_at`, `updated_at`) VALUES
(2, 11, 2, NULL, '2015-08-26 07:07:57', '2015-08-26 07:07:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weblink_link`
--

CREATE TABLE IF NOT EXISTS `weblink_link` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weblink_id` int(11) unsigned NOT NULL,
  `picto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `KEY_WEBLINK_ID` (`weblink_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `weblink_link`
--

INSERT INTO `weblink_link` (`link_id`, `weblink_id`, `picto`, `title`, `url`, `position`) VALUES
(2, 2, '', 'anunciospilas', 'http://www.anunciospilas.es', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wordpress`
--

CREATE TABLE IF NOT EXISTS `wordpress` (
  `wp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`wp_id`),
  KEY `KEY_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wordpress_category`
--

CREATE TABLE IF NOT EXISTS `wordpress_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wp_id` int(11) unsigned NOT NULL,
  `wp_category_id` int(11) NOT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  KEY `KEY_WP_ID` (`wp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `api_key_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `api_provider` (`provider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `application_device`
--
ALTER TABLE `application_device`
  ADD CONSTRAINT `APPLICATION_DEVICE_APP_ID` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `application_option`
--
ALTER TABLE `application_option`
  ADD CONSTRAINT `application_option_ibfk_1` FOREIGN KEY (`library_id`) REFERENCES `media_library` (`library_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `application_option_value`
--
ALTER TABLE `application_option_value`
  ADD CONSTRAINT `application_option_value_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_option_value_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `application_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `catalog_category`
--
ALTER TABLE `catalog_category`
  ADD CONSTRAINT `catalog_category_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD CONSTRAINT `catalog_product_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `catalog_product_format`
--
ALTER TABLE `catalog_product_format`
  ADD CONSTRAINT `catalog_product_format_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page`
--
ALTER TABLE `cms_application_page`
  ADD CONSTRAINT `cms_application_page_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_address`
--
ALTER TABLE `cms_application_page_block_address`
  ADD CONSTRAINT `cms_application_page_block_address_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_image`
--
ALTER TABLE `cms_application_page_block_image`
  ADD CONSTRAINT `cms_application_page_block_image_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_text`
--
ALTER TABLE `cms_application_page_block_text`
  ADD CONSTRAINT `cms_application_page_block_text_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_video`
--
ALTER TABLE `cms_application_page_block_video`
  ADD CONSTRAINT `cms_application_page_block_video_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_video_link`
--
ALTER TABLE `cms_application_page_block_video_link`
  ADD CONSTRAINT `cms_application_page_block_video_link_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `cms_application_page_block_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_video_podcast`
--
ALTER TABLE `cms_application_page_block_video_podcast`
  ADD CONSTRAINT `cms_application_page_block_video_podcast_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `cms_application_page_block_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cms_application_page_block_video_youtube`
--
ALTER TABLE `cms_application_page_block_video_youtube`
  ADD CONSTRAINT `cms_application_page_block_video_youtube_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `cms_application_page_block_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comment_answer`
--
ALTER TABLE `comment_answer`
  ADD CONSTRAINT `comment_answer_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comment_like`
--
ALTER TABLE `comment_like`
  ADD CONSTRAINT `comment_like_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `customer_social`
--
ALTER TABLE `customer_social`
  ADD CONSTRAINT `customer_social_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `customer_social_post`
--
ALTER TABLE `customer_social_post`
  ADD CONSTRAINT `customer_social_post_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `event_custom`
--
ALTER TABLE `event_custom`
  ADD CONSTRAINT `event_custom_ibfk_1` FOREIGN KEY (`agenda_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `folder`
--
ALTER TABLE `folder`
  ADD CONSTRAINT `folder_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `folder_ibfk_2` FOREIGN KEY (`root_category_id`) REFERENCES `folder_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `folder_category`
--
ALTER TABLE `folder_category`
  ADD CONSTRAINT `folder_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `folder_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `loyalty_card`
--
ALTER TABLE `loyalty_card`
  ADD CONSTRAINT `loyalty_card_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `loyalty_card_customer`
--
ALTER TABLE `loyalty_card_customer`
  ADD CONSTRAINT `loyalty_card_customer_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `loyalty_card` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `loyalty_card_customer_log`
--
ALTER TABLE `loyalty_card_customer_log`
  ADD CONSTRAINT `loyalty_card_customer_log_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `loyalty_card` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `loyalty_card_password`
--
ALTER TABLE `loyalty_card_password`
  ADD CONSTRAINT `loyalty_card_password_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_image`
--
ALTER TABLE `media_gallery_image`
  ADD CONSTRAINT `media_gallery_image_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_image_custom`
--
ALTER TABLE `media_gallery_image_custom`
  ADD CONSTRAINT `media_gallery_image_custom_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_image` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_image_picasa`
--
ALTER TABLE `media_gallery_image_picasa`
  ADD CONSTRAINT `media_gallery_image_picasa_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_image` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_video`
--
ALTER TABLE `media_gallery_video`
  ADD CONSTRAINT `media_gallery_video_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_video_itunes`
--
ALTER TABLE `media_gallery_video_itunes`
  ADD CONSTRAINT `media_gallery_video_itunes_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_video` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_video_vimeo`
--
ALTER TABLE `media_gallery_video_vimeo`
  ADD CONSTRAINT `media_gallery_video_vimeo_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_video` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_gallery_video_youtube`
--
ALTER TABLE `media_gallery_video_youtube`
  ADD CONSTRAINT `media_gallery_video_youtube_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_video` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media_library_image`
--
ALTER TABLE `media_library_image`
  ADD CONSTRAINT `media_library_image_ibfk_1` FOREIGN KEY (`library_id`) REFERENCES `media_library` (`library_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `padlock`
--
ALTER TABLE `padlock`
  ADD CONSTRAINT `padlock_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `padlock_value`
--
ALTER TABLE `padlock_value`
  ADD CONSTRAINT `padlock_value_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `promotion_customer`
--
ALTER TABLE `promotion_customer`
  ADD CONSTRAINT `promotion_customer_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `push_apns_devices`
--
ALTER TABLE `push_apns_devices`
  ADD CONSTRAINT `push_apns_devices_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `push_gcm_devices`
--
ALTER TABLE `push_gcm_devices`
  ADD CONSTRAINT `push_gcm_devices_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `push_messages`
--
ALTER TABLE `push_messages`
  ADD CONSTRAINT `push_messages_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rss_feed`
--
ALTER TABLE `rss_feed`
  ADD CONSTRAINT `rss_feed_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `socialgaming_game`
--
ALTER TABLE `socialgaming_game`
  ADD CONSTRAINT `socialgaming_game_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `template_block_app`
--
ALTER TABLE `template_block_app`
  ADD CONSTRAINT `template_block_app_ibfk_1` FOREIGN KEY (`block_id`) REFERENCES `template_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `template_block_app_ibfk_2` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `template_design`
--
ALTER TABLE `template_design`
  ADD CONSTRAINT `template_design_ibfk_1` FOREIGN KEY (`layout_id`) REFERENCES `application_layout_homepage` (`layout_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `template_design_block`
--
ALTER TABLE `template_design_block`
  ADD CONSTRAINT `template_design_block_ibfk_1` FOREIGN KEY (`design_id`) REFERENCES `template_design` (`design_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `template_design_block_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `template_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `weblink_link`
--
ALTER TABLE `weblink_link`
  ADD CONSTRAINT `weblink_link_ibfk_1` FOREIGN KEY (`weblink_id`) REFERENCES `weblink` (`weblink_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `wordpress`
--
ALTER TABLE `wordpress`
  ADD CONSTRAINT `wordpress_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `wordpress_category`
--
ALTER TABLE `wordpress_category`
  ADD CONSTRAINT `wordpress_category_ibfk_1` FOREIGN KEY (`wp_id`) REFERENCES `wordpress` (`wp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
