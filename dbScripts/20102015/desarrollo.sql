-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-10-2015 a las 17:16:42
-- Versión del servidor: 5.6.25-0ubuntu0.15.04.1
-- Versión de PHP: 5.6.4-4ubuntu6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `desarrollo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_assets`
--

CREATE TABLE IF NOT EXISTS `bonna_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Clave primaria',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas al conjunto padre.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'Nivel de la caché en el árbol anidado.',
  `name` varchar(50) NOT NULL COMMENT 'Nombre único para el activo.\n',
  `title` varchar(100) NOT NULL COMMENT 'Título descriptivo para el activo.',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.'
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_assets`
--

INSERT INTO `bonna_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 149, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 56, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 57, 58, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 59, 60, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 61, 62, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 63, 64, 1, 'com_login', 'com_login', '{}'),
(13, 1, 65, 66, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 67, 68, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 69, 70, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 71, 72, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 73, 74, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 75, 112, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 113, 116, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 117, 118, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 119, 120, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 121, 122, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 123, 124, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 125, 128, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 129, 132, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 133, 134, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 114, 115, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 130, 131, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 126, 127, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 135, 136, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 137, 138, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 139, 140, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 141, 142, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 143, 144, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 145, 146, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 76, 77, 2, 'com_modules.module.1', 'Menú Principal', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 18, 78, 79, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 80, 81, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 82, 83, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 84, 85, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 86, 87, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 88, 89, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 90, 91, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 92, 93, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 94, 95, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 96, 97, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 98, 99, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 100, 101, 2, 'com_modules.module.17', 'Ruta', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 102, 103, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 104, 105, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 147, 148, 1, 'com_jaextmanager', 'com_jaextmanager', '{}'),
(55, 27, 19, 20, 3, 'com_content.article.1', 'Historia', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 18, 106, 107, 2, 'com_modules.module.87', 'Buscar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 21, 22, 3, 'com_content.article.2', 'Bienvenido a Macrobiótica Bonna-Vita', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 108, 109, 2, 'com_modules.module.88', 'Slideshow CK', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 18, 110, 111, 2, 'com_modules.module.89', 'Copyright', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 27, 23, 24, 3, 'com_content.article.3', 'Misión - Visión', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 25, 26, 3, 'com_content.article.4', 'Nuestra Ubicación ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 8, 28, 55, 2, 'com_content.category.8', 'Productos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(63, 62, 29, 36, 3, 'com_content.category.9', 'Control de Peso', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 63, 30, 31, 4, 'com_content.article.5', 'Lipocrom 100', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 63, 32, 33, 4, 'com_content.article.6', 'Citrilight - Garcinia Cambogia', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 63, 34, 35, 4, 'com_content.article.7', 'Gel Sbela', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 62, 37, 44, 3, 'com_content.category.10', 'Tratamientos para el dolor', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(68, 67, 38, 39, 4, 'com_content.article.8', 'NATUFEN', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 67, 40, 41, 4, 'com_content.article.9', 'Rehumadaul', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 67, 42, 43, 4, 'com_content.article.10', 'Artrifin', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 62, 45, 52, 3, 'com_content.category.11', 'Limpiezas del cuerpo', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(72, 71, 46, 47, 4, 'com_content.article.11', 'Drenal Plus', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 71, 48, 49, 4, 'com_content.article.12', 'Moringa - Cápsulas', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 62, 53, 54, 3, 'com_content.category.12', 'Suplementos Deportivos', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(75, 71, 50, 51, 4, 'com_content.article.13', 'Colon Sano', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_associations`
--

CREATE TABLE IF NOT EXISTS `bonna_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_banners`
--

CREATE TABLE IF NOT EXISTS `bonna_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bonna_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bonna_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_categories`
--

CREATE TABLE IF NOT EXISTS `bonna_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'La meta descripción de la página.',
  `metakey` varchar(1024) NOT NULL COMMENT 'Las palabras clave para la página.',
  `metadata` varchar(2048) NOT NULL COMMENT 'Propiedades de metadatos codificados JSON.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_categories`
--

INSERT INTO `bonna_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 62, 1, 13, 22, 1, 'productos', 'com_content', 'Productos', 'productos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 220, '2015-10-20 16:29:59', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 63, 8, 14, 15, 2, 'productos/control-de-peso', 'com_content', 'Control de Peso', 'control-de-peso', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 220, '2015-10-20 16:30:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 67, 8, 16, 17, 2, 'productos/tratamientos-para-el-dolor', 'com_content', 'Tratamientos para el dolor', 'tratamientos-para-el-dolor', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 220, '2015-10-20 18:39:42', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 71, 8, 18, 19, 2, 'productos/limpiezas-del-cuerpo', 'com_content', 'Limpiezas del cuerpo', 'limpiezas-del-cuerpo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 220, '2015-10-20 20:00:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 74, 8, 20, 21, 2, 'productos/suplementos-deportivos', 'com_content', 'Suplementos Deportivos', 'suplementos-deportivos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 220, '2015-10-20 20:36:35', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_contact_details`
--

CREATE TABLE IF NOT EXISTS `bonna_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_content`
--

CREATE TABLE IF NOT EXISTS `bonna_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `language` char(7) NOT NULL COMMENT 'El código de idioma para el artículo.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_content`
--

INSERT INTO `bonna_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 55, 'Historia', 'historia', '<div><img style="float: right;" src="images/natural.jpg" alt="" width="277" height="184" />\r\n<div>\r\n<p style="text-align: justify;">Después de 15 años de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sueño. Un sueño que desde muy joven siempre se había añorado. La idea era brindar una opción a la comunidad y facilitarles productos naturales y servicios de excelente calidad.</p>\r\n<p style="text-align: justify;">Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobiótica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptación de los San Carleños ha sido excelente.<br /><br />Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.</p>\r\n</div>\r\n</div>', '', 1, 2, '2015-09-14 13:58:53', 220, '', '2015-09-14 17:18:23', 220, 0, '0000-00-00 00:00:00', '2015-09-14 13:58:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"0","show_intro":"","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 20, 3, '', '', 1, 67, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 57, 'Bienvenido a Macrobiótica Bonna-Vita', 'principal', '<div><img style="float: left;" src="images/capsulas.jpg" alt="" width="228" height="114" />\r\n<p style="text-align: justify;">En nombre de Macrobiótica Bonna-Vita, les damos la más sincera bienvenida a nuestra página web, en la que, esperamos, encontrarán toda la información que necesiten acerca de nuestros productos y servicios. <br /><br />El objetivo principal es brindar a la comunidad alternativas naturales de máxima calidad y junto con nuestra voluntad de servicio acércanos más a sus hogares, por medio de las ventajas que nos ofrece la tecnología. Todo ello tiene una presencia destacada en esta página web y en nuestro compromiso.</p>\r\n<p style="text-align: justify;">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger aún más su vida. Dentro de los múltiples servicios que le ofrecemos está el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.</p>\r\n<p style="text-align: justify;"><br />En el 2014 comenzó esta idea y gracias a usted hemos logrado continuar con este sueño para todos...</p>\r\n<p style="text-align: justify;"> </p>\r\n</div>', '', 1, 2, '2015-09-14 15:53:58', 220, '', '2015-09-14 17:18:40', 220, 0, '0000-00-00 00:00:00', '2015-09-14 15:53:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 20, 2, '', '', 1, 20, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(3, 60, 'Misión - Visión', 'mision-vision', '<p style="text-align: justify;"><strong><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;">Misión</span></strong></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;">Contribuir al bienestar de los ciudadanos,  ofreciendo el mejor servicio y productos naturales, con la más alta calidad para el cuidado de la salud de nuestros clientes. Contando con alternativas, profesionalidad y amabilidad de nuestro servicio.</span></p>\r\n<p style="text-align: justify;"><strong><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;">Visión</span></strong></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;">Ser una empresa líder, reconocida y distinguida en el mundo de productos naturales de todo San Carlos y Costa Rica, por proveer grandes facilidades y por el compromiso con la satisfacción de nuestros clientes, logrando así una mejor posición del mercado y poder enfrentar mercados nacionales e internacionales.</span></p>\r\n<p><strong><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;">Valores</span></strong></p>\r\n<ul>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Trabajo en equipo</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Humanidad</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Ética</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Excelencia</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Servicio excepcional</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Orden</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Cooperación mutua</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Puntualidad</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Responsabilidad</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Actitud positiva</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Imagen Positiva</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Lealtad a nuestra Misión</span></span></li>\r\n<li style="text-align: justify;"><span style="font-family: ''Droid Sans'', Arial, Verdana, sans-serif;"><span style="font-size: 13px; line-height: 19.5px;">Respeto de normas y políticas</span></span></li>\r\n</ul>', '', 1, 2, '2015-09-27 14:47:53', 220, '', '2015-09-27 15:29:26', 220, 0, '0000-00-00 00:00:00', '2015-09-27 14:47:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 1, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 61, 'Nuestra Ubicación ', 'nuestra-ubicacion', '<p style="text-align: center;">Macrobiotica Bonna Vita, se encuentra ubicada Frente a la Cadena Comercial San Carleña, Ciudad Quesada, San Carlos, Alajuela, Costa Rica</p>\r\n<p style="text-align: center;">{google_map}Macrobiótica Bonna Vita Av 5Cd Quesada Costa Rica{/google_map}</p>', '', 1, 2, '2015-09-27 15:02:47', 220, '', '2015-09-27 15:20:33', 220, 0, '0000-00-00 00:00:00', '2015-09-27 15:02:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 0, '', '', 1, 16, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 64, 'Lipocrom 100', 'lipocrom-100', '<div><img style="float: left;" src="images/lipocrom.png" alt="" />\r\n<p style="text-align: justify;">Lipocrom 100 es un complemento alimenticio que actua como quemagrasas. Estudios clínicos avalan la acción como quemagrasas de Sinetrol® Xpur, capaz de reducir 5kg en tres meses sin modificar hábitos de dieta o actividad física. Su contenido en Cromo ayuda a regular el metabolismo de los azúcares reduciendo así los procesos de formación de grasa corporal.<br /><br />Se recomienda tomar de 2 cápsulas al día, una en el desayuno y otra en la comida.<br /><br />Contiene 20 capsulas</p>\r\n</div>', '', 1, 9, '2015-10-20 16:31:02', 220, '', '2015-10-20 17:11:17', 220, 0, '0000-00-00 00:00:00', '2015-10-20 16:31:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 65, 'Citrilight - Garcinia Cambogia', 'citrilight-garcinia-cambogia', '<p style="text-align: justify;"><img style="float: left; margin: 20px;" src="images/citri.jpg" alt="" width="142" height="226" />Este producto disminuye la ansiedad y los antojos por los dulces.</p>\r\n<p style="text-align: justify;"><strong>Indicación</strong>: Co ayudante para el control de peso. Debe acompañarse por una dieta baja en energía y un adecuado programa de ejercicio físico.</p>\r\n<p style="text-align: justify;">La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las cédulas grasas. Su función principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.</p>\r\n<p style="text-align: justify;"><strong>Beneficios</strong>:</p>\r\n<ol style="text-align: justify;">\r\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionará la capacidad de consumir pequeñas porciones de comida sin sentir la necesidad de comer más.</li>\r\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.</li>\r\n<li>El compuesto de ácido hidroxicítrico bloquea la conversión de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.</li>\r\n<li>Ayuda a eliminar los niveles de colesterol alto.</li>\r\n</ol>\r\n<p style="text-align: justify;"><strong>Precauciones</strong>:</p>\r\n<ul style="text-align: justify;">\r\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipoglucémico oral o insulina.</li>\r\n</ul>\r\n<p style="text-align: justify;"><strong>Contenido</strong>:</p>\r\n<ul style="text-align: justify;">\r\n<li>60 capsulas</li>\r\n</ul>\r\n<p style="text-align: justify;"><strong>Dosis</strong>:</p>\r\n<ul>\r\n<li style="text-align: justify;">2 capsulas diarias (Cada media hora antes de las comidas)</li>\r\n</ul>', '', 1, 9, '2015-10-20 16:57:47', 220, '', '2015-10-20 17:38:21', 220, 0, '0000-00-00 00:00:00', '2015-10-20 16:57:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 10, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 66, 'Gel Sbela', 'gel-sbela', '<p style="text-align: justify;"><img style="float: left; margin: 20px;" src="images/sbelagel.jpg" alt="" width="205" height="331" />GEL SBELA, es un gel reafirmante para la definición de la silueta. Contiene la asociación de diversos ingredientes naturales que proporcionan una sensación astringente y de firmeza, ayudando a reafirmar y modificar el aspecto de la piel; obteniendo una bella figura con su uso constante. </p>\r\n<p style="text-align: justify;">GEL SBELA reafirma intensamente la piel, elimina grasa en lugares donde se acumula, tonifica la piel, remodela la figura, mejora la circulación.</p>\r\n<p style="text-align: justify;"><strong>Contiene</strong>: Aceite de romero, colágeno hidrolizado, extracto de algas marinas, extracto de sábila, eucalipto, cafeína</p>\r\n<p style="text-align: justify;"><strong>Dosis</strong>: Aplicar de 2 a 3 veces al día de manera uniforme en las zonas requeridas, antes de hacer ejercicio, después del baño y al acostarse.</p>\r\n<p style="text-align: justify;"><strong>Precauciones</strong>: Manténgase fuera del alcance de los niños. En caso de irritación cese su aplicación. Manténgase en lugar fresco y seco. Fuera de la luz solar directa.</p>', '', 1, 9, '2015-10-20 17:45:43', 220, '', '2015-10-20 18:36:16', 220, 0, '0000-00-00 00:00:00', '2015-10-20 17:45:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 68, 'NATUFEN', 'natufen', '<p style="text-align: justify;"><img style="float: left; margin: 20px;" src="images/natufeno.jpg" alt="" width="161" height="312" />NATUFEN® nació como alternativa para el manejo del dolor, la inflamación y la fiebre posterior al estudio realizado por varias universidades de Estados Unidos, alrededor del estudio profundo del estilo de vida de los nativos indio-americanos. Cuando analizaron la forma en que ellos manejaban algunas enfermedades como la fiebre, infecciones respiratorias y dolores de cabeza, se encontraron con una antigua fórmula que consistía en una tisana de la corteza de un árbol llamado “White willow” (Sauce blanco en español). Esto atrajo la atención de varias industrias farmacéuticas de renombre internacional, y culminó con el lanzamiento primeramente en Alemania del primer analgésico antiinflamatorio no esteroideo de origen 100% natural: el ASSALIX®. Los laboratorios GREEN LABS, posterior a una serie de investigaciones “tropicalizó” esta fórmula y la hizo disponible en el país.</p>\r\n<p style="text-align: justify;"><br />NATUFEN® posee todo un trasfondo científico que ha permitido determinar la forma en que funciona, garantizando el efecto para el manejo del dolor desde la primera cápsula, rompiendo entonces el paradigma de que “los productos naturales son lentos para actuar” o que “hay que tomar muchas cápsulas al día para ver el efecto”. Con NATUFEN®, desde la primera cápsula vas a tener alivio inmediato del dolor – cualquier tipo de dolor, desde una migraña, un dolor de espalda o una contractura muscular, hasta dolores crónicos como desgastes en articulaciones, fibromialgias o neuropatías de distinta naturaleza. Sólo debes tomar una o dos cápsulas al día y vas a poder seguir adelante con tu día.</p>\r\n<p style="text-align: justify;">NATUFEN® está disponible en cajas de 30 y de 90 cápsulas.</p>', '', 1, 10, '2015-10-20 18:49:54', 220, '', '2015-10-20 18:55:33', 220, 0, '0000-00-00 00:00:00', '2015-10-20 18:49:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 69, 'Rehumadaul', 'rehumadaul', '<div id="idTab1" class="rte">\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;"><img style="float: left; margin: 20px;" src="images/rano.jpg" alt="" width="267" height="202" />Producto fitoterapéutico a base de ortiga, ajo, apio, avena y complejo B que ayuda a aliviar dolores causados por espasmos musculares y aquellos asociados con la artritis y la artrosis.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;"><strong>Indicaciones</strong>: Tomar dos (2) cápsulas en la mañana y dos (2) en la tarde los tres (3) primeros días y continuar los siguientes días con una (1) cápsula en la mañana y una (1) en la tarde.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;"><strong>Contraindicaciones</strong>: </span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;">-Hipersensibilidad a sus componentes, no administrar durante embarazo o lactancia. </span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;">-Desiquilibrio electrolítico.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;">-Insuficiencia cardíaca.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;">-Insuficiencia renal.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;">-Gastritis y tromboflebitis.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 10pt; font-family: verdana, geneva;">-Pacientes con altos niveles de protombina en la sangre no lo deben consumir. </span></p>\r\n</div>', '', 1, 10, '2015-10-20 19:26:18', 220, '', '2015-10-20 19:41:58', 220, 0, '0000-00-00 00:00:00', '2015-10-20 19:26:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 4, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 70, 'Artrifin', 'artrifin', '<p>Artrifin® es el medicamento natural más potente y concentrado que alivia de manera eficiente los malestares, lesiones articulares, detiene de la degeneración articular, los problemas de artritis y osteoartritis.<br /><br />Formulado con estandarizados extractos de clorhidrato de glucosamina y sulfato de condroitina, con una elevada concentración de principios activos encargados de estimular el porcentaje de absorción, optimizando la reparación y regeneración continua de las estructuras cartilaginosas, reduce la erosión del cartílago en la artrosis, detiene la progresión del desgaste, manteniendo la salud y flexibilidad de los cartílagos en las articulaciones y el tejido conectivo.<br /><br /><strong>Descripción del producto</strong><br /><br /><img style="float: left; margin: 20px;" src="images/arti.png" alt="" width="193" height="353" /><strong>Presentación</strong>:<br />Frasco con 60 y 100 cápsulas.<br /><br /><strong>Indicación terapéutica</strong>:<br />Coadyuvante en el tratamiento de la osteoartritis.<br /><br /><strong>Dosis</strong>:<br />1 cápsula 3 veces al día.<br /><br /><strong>Composición</strong>:<br />Sulfato de glucosamina ….500 mg<br />Sulfato de condroitina…. 400 mg<br /><br /><strong>Efectos secundarios</strong>:<br />Podría presentarse diarrea, náuseas, flatulencias.<br /><br /><strong>Tiene alguna contraindicación</strong>:<br />No utilizar en pacientes sensibles algunos de los componentes o a los mariscos. No se recomienda su uso en mujeres embarazadas o en período de lactancia.<br /><br /><strong>Recomendación de uso</strong>:<br />No se recomienda su uso en mujeres embarazadas o en periodo de lactancia.<br /><br /><strong>Tiene interacciones</strong>:<br />Hipoglicemiantes orales: Puede disminuir el efecto de los hipogliceminates orales. Anticoagulantes: En pacientes en tratamiento con Artrifin® y anticoagulantes, puede aumentar el riesgo de sangrado.</p>', '', 1, 10, '2015-10-20 19:42:29', 220, '', '2015-10-20 19:48:50', 220, 0, '0000-00-00 00:00:00', '2015-10-20 19:42:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 72, 'Drenal Plus', 'drenal-plus', '<p style="text-align: justify;"><img style="float: left; margin: 20px;" src="images/drnal.png" alt="" width="146" height="225" />El alto contenido en potasio en la formulación de DRENAL PLUS lo faculta como remedio diurético para combatir la retención de líquidos, lo que resulta eficaz para combatir la obesidad y enfermedades reumáticas asociadas a la retención de líquidos.</p>\r\n<p style="text-align: justify;">La mezcla herbal de alcachofa y el diente de león y laurel contenida en DRENAL PLUS lo hacen un excelente depurativo y tónico hepatico que ayuda en la recuperación en casos de enfermedades hepáticas, debido a sus principios activos como la cinarina, esta favorece la función billiar ayudando a la digestión de las grasas. La virtud principal de la alcachofa radica en la capacidad que le proporcionan sus ácidos y la cinarina para reducir el nivel de colesterol en la sangre. El diente de león por su parte se utiliza para depurar la sangre de toxinas, acido úrico, diabetes y mala circulación</p>\r\n<p> </p>', '', 1, 11, '2015-10-20 20:01:05', 220, '', '2015-10-20 20:04:10', 220, 0, '0000-00-00 00:00:00', '2015-10-20 20:01:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 73, 'Moringa - Cápsulas', 'moringa-capsulas', '<p style="text-align: justify;"><img style="float: left; margin: 20px;" src="images/moringa.png" alt="" width="205" height="291" />Las cápsulas con extracto de moringa orgánica son ideales para combatir problemas con la anemia por su alto contenido de calcio, hierro. Ayuda también con problemas de diabetes, pues mejora la cicatrización de la piel, aporta más energía y apoya los niveles de azúcar en la sangre. Además de prevenir los síntomas más serios, como la ceguera por diabetes, así como la infantil. Ayuda en el funcionamiento correcto del cuerpo para evitar la aparición de algún tumor.</p>\r\n<p style="text-align: justify;">Las cápsulas con extracto de moringa orgánica promueve la estructura celular del cuerpo, convirtiendo a las cápsulas ideales para combatir problemas con la anemia por su alto contenido de hierro, mejorando la agilidad mental, contrarrestando el cansancio y calcio, ayudando en la coagulación de la sangre.</p>\r\n<p style="text-align: justify;">Ayuda también con problemas de diabetes, pues mejora la cicatrización de la piel, aporta más energía y apoya los niveles de azúcar en la sangre. Además de prevenir los síntomas más serios, como la ceguera por diabetes, así como la ceguera infantil.</p>\r\n<p style="text-align: justify;">Incrementa las defensas naturales del cuerpo. Por lo cual al tomar un producto de Moringa se reduce considerablemente la probabilidad de enfermarse, manteniendose la persona saludable y siempre con energía.</p>\r\n<p style="text-align: justify;"><strong>Capacidad</strong>:<br />90 Cap. De 500 mg<br /><br /><strong>Ingredientes</strong>:<br />Cápsula de hoja de Moringa Orgánica.<br /><br /><strong>Modo de empleo</strong>:<br />Dosis: 3 capsulas diarias. Una en cada alimento.</p>', '', 1, 11, '2015-10-20 20:07:58', 220, '', '2015-10-20 20:11:59', 220, 0, '0000-00-00 00:00:00', '2015-10-20 20:07:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 3, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 75, 'Colon Sano', 'colon-sano', '<p style="text-align: justify;"><img style="float: left; margin: 20px;" src="images/colondoble.jpg" alt="" width="224" height="244" />Las capsulas Colon Sano, tienen una función de laxante suave y a su vez de Coadyuvante para controlar estreñimiento, lo que provee en gran medida una limpieza natural del colon.</p>\r\n<p style="text-align: justify;"><strong>Recomendación:</strong></p>\r\n<p style="text-align: justify;">Es importante mencionar que, si se presenta algún tipo de reacción alérgica, debe suspenderse inmediatamente.</p>\r\n<p style="text-align: justify;"><strong>Dosis:</strong></p>\r\n<p style="text-align: justify;">Dos capsulas a la hora en la noche, antes de dormir.</p>', '', 1, 11, '2015-10-20 21:45:14', 220, '', '2015-10-20 21:48:35', 220, 0, '0000-00-00 00:00:00', '2015-10-20 21:45:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `bonna_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bonna_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_content_frontpage`
--

INSERT INTO `bonna_content_frontpage` (`content_id`, `ordering`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_content_rating`
--

CREATE TABLE IF NOT EXISTS `bonna_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_content_types`
--

CREATE TABLE IF NOT EXISTS `bonna_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_content_types`
--

INSERT INTO `bonna_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bonna_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_extensions`
--

CREATE TABLE IF NOT EXISTS `bonna_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_extensions`
--

INSERT INTO `bonna_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"es-ES","site":"es-ES"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"f92f775fa1a0f79a776b44428f5c5ec2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bonna_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 'Español (Formal Internacional)', 'language', 'es-ES', '', 1, 1, 1, 0, '{"name":"Espa\\u00f1ol (Formal Internacional)","type":"language","creationDate":"15-06-2014","author":"Proyecto Joomla! Spanish","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. Todos los derechos reservados.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"3.3.1","description":"es-ES idioma administrador para Joomla 3.3.1","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'Español (España)', 'language', 'es-ES', '', 0, 1, 1, 0, '{"name":"Espa\\u00f1ol (Espa\\u00f1a)","type":"language","creationDate":"15-06-2014","author":"Joomla! Spanish","copyright":"Copyright (C) 2005 - 2014 Open Source Matters & joomlaspanish.org. All rights reserved.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"3.3.1","description":"es-ES Idiomas parte frontend Joomla! 3.3 por www.joomlaspanish.org","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'ol_albos', 'template', 'ol_albos', '', 0, 1, 1, 0, '{"name":"ol_albos","type":"template","creationDate":"2013","author":"olwebdesign","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/www.olwebdesign.com","version":"1.0.9","description":"\\n<script src=\\"..\\/templates\\/ol_albos\\/admin\\/jscolor\\/jscolor.js\\" type=\\"text\\/javascript\\"><\\/script>\\n<link rel=\\"stylesheet\\" href=\\"..\\/templates\\/ol_albos\\/admin\\/params.css\\" type=\\"text\\/css\\" \\/>\\n<h1>olwebdesign Joomla 2.5 - 3.x Template.<\\/h1>\\n<a href=\\"http:\\/\\/www.olwebdesign.com\\/\\"><img src=\\"..\\/templates\\/ol_albos\\/template_thumbnail.png\\" style=\\"float:left;margin-bottom:10px;border:1px solid #ccc;padding:2px\\" \\/><\\/a><p style=\\"clear:left;margin:10px 0;font-size:110%;\\">ol_albos professional Joomla template form olwebdeisgn. This template is a fast loading and clean design.<\\/p>\\n<p style=\\"clear:left;margin:10px 0;font-size:110%;\\">For horizontal menu in your modules chose position mainmenu and in Advanced Options for Module Class Suffix write  _menu ol_smenu. <a href=\\"http:\\/\\/www.olwebdesign.com\\/images\\/stories\\/pdf\\/olweb_menu.pdf\\">Download the pdf file file<\\/a><\\/p>\\n","group":""}', '{"showDefaultLogo":"1","defaultLogo":"logo.png","showMediaLogo":"0","showTextLogo":"0","textLogo":"text here...","showSlogan":"0","slogan":"text here...","max_sitewidth":"940","headpos":"relative","top_height":"140","socialCode":"1","facebook_icon":"","twitter_icon":"","digg_icon":"","google_icon":"","myspace_icon":"","linkedin_icon":"","blogger_icon":"","flickr_icon":"","stumble_icon":"","pinterest_icon":"","rssfeed_icon":"","slides":"1","headHeigh":"500","banner":"on","menu":"bullet","navarrow":"nexttobullets","styles":"round","speed":"7000","text1Heigh":"200","text2Heigh":"270","text3Heigh":"320","jukenburn_thumb1":"","jukenburn_texts1":"","jukenburn_desc1":"","jukenburn_text1":"","jukenburn_thumb2":"","jukenburn_texts2":"","jukenburn_desc2":"","jukenburn_text2":"","jukenburn_thumb3":"","jukenburn_texts3":"","jukenburn_desc3":"","jukenburn_text3":"","jukenburn_thumb4":"","jukenburn_texts4":"","jukenburn_desc4":"","jukenburn_text4":"","jukenburn_thumb5":"","jukenburn_texts5":"","jukenburn_desc5":"","jukenburn_text5":"","bg1":"","bg2":"","bg3":"","bg4":"","bg5":"","bg6":"","bg7":"","bg8":"","bg9":"","bg10":"","bg11":"","responsiveCode":"1","show_menu_text":"Select a Page"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"September 09, 2015","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.5.1","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'com_jaextmanager', 'component', 'com_jaextmanager', '', 1, 1, 0, 0, '{"name":"com_jaextmanager","type":"component","creationDate":"Feb 2015","author":"JoomlArt","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.6.0","description":"JA Extension Manager Component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(704, 'purity_III', 'template', 'purity_iii', '', 0, 1, 1, 0, '{"name":"purity_III","type":"template","creationDate":"July 2015","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"1.1.5","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\" title=\\"Purity III Template demo\\">Live Demo<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\" title=\\"purity iii template documentation\\">Documentation<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\" title=\\"purity iii forum\\">Forum<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\" title=\\"Purity III template more info\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{"tpl_article_info_datetime_format":"d M Y"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'Slideshow CK', 'module', 'mod_slideshowck', '', 0, 1, 0, 0, '{"name":"Slideshow CK","type":"module","creationDate":"Avril 2012","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"1.4.21","description":"MOD_SLIDESHOWCK_XML_DESCRIPTION","group":""}', '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","skin":"camera_amber_skin","alignment":"center","loader":"pie","width":"auto","height":"62%","navigation":"2","thumbnails":"1","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","effect":"random","time":"7000","transperiod":"1500","captioneffect":"random","portrait":"0","autoAdvance":"1","hover":"1","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","usecaptionresponsive":"1","captionresponsiveresolution":"480","captionresponsivefontsize":"0.6em","captionresponsivehidecaption":"0","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(706, 'PLG_EMBED_GOOGLE_MAP', 'plugin', 'embed_google_map', 'content', 0, 1, 1, 0, '{"name":"PLG_EMBED_GOOGLE_MAP","type":"plugin","creationDate":"28 March 2015","author":"Petteri Kivim\\u00e4ki","copyright":"(C)2012-2015 Petteri Kivim\\u00e4ki","authorEmail":"dinky_jackson@hotmail.com","authorUrl":"","version":"2.0.1","description":"PLG_EMBED_GOOGLE_MAP_DESC","group":""}', '{"version":"new","map_type":"m","zoom":"14","language":"-","add_link":"1","link_label":"View Larger Map","link_full":"1","show_info":"0","height":"400","width":"300","border":"0","border_style":"solid","border_color":"#000000","https":"1","embed_api_key":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_finder_taxonomy`
--

INSERT INTO `bonna_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_finder_terms_common`
--

INSERT INTO `bonna_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_finder_types`
--

CREATE TABLE IF NOT EXISTS `bonna_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_jaem_log`
--

CREATE TABLE IF NOT EXISTS `bonna_jaem_log` (
`id` int(11) NOT NULL,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_jaem_services`
--

CREATE TABLE IF NOT EXISTS `bonna_jaem_services` (
`id` int(11) NOT NULL,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT '0',
  `ws_core` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_jaem_services`
--

INSERT INTO `bonna_jaem_services` (`id`, `ws_name`, `ws_mode`, `ws_uri`, `ws_user`, `ws_pass`, `ws_default`, `ws_core`) VALUES
(1, 'Local Service', 'local', '', '', '', 1, 1),
(2, 'JoomlArt Updates', 'remote', 'http://update.joomlart.com/service/', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_languages`
--

CREATE TABLE IF NOT EXISTS `bonna_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_languages`
--

INSERT INTO `bonna_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1),
(3, 'es-ES', 'Español (Formal Internacional) (ES)', 'Español (Formal Internacional) (ES)', 'es', 'es', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_menu`
--

CREATE TABLE IF NOT EXISTS `bonna_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_menu`
--

INSERT INTO `bonna_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 95, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 5, 14, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 6, 7, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categorías', '', 'Banners/Categorías', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 8, 9, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clientes', '', 'Banners/Clientes', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 10, 11, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 12, 13, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contactos', '', 'Contactos', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 49, 54, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contactos', '', 'Contactos/Contactos', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 50, 51, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categorías', '', 'Contactos/Categorías', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 52, 53, 0, '*', 1),
(10, 'menu', 'com_messages', 'Mensajes', '', 'Mensajes', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 55, 60, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'Nuevo mensaje privado', '', 'Mensajes/Nuevo mensaje privado', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 56, 57, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Leer mensaje privado', '', 'Mensajes/Leer mensaje privado', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 58, 59, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'Noticias Feeds', '', 'Noticias Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 61, 66, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'Noticias Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 62, 63, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categorías', '', 'Noticias Feeds/Categorías', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 64, 65, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redireccionar', '', 'Redireccionar', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 67, 68, 0, '*', 1),
(17, 'menu', 'com_search', 'Búsqueda básica', '', 'Búsqueda básica', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 69, 70, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Enlaces Web', '', 'Enlaces Web', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 71, 76, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Enlaces', '', 'Enlaces Web/Enlaces', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 72, 73, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categorías', '', 'Enlaces Web/Categorías', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 74, 75, 0, '*', 1),
(21, 'menu', 'com_finder', 'Búsqueda inteligente', '', 'Búsqueda inteligente', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 77, 78, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Actualizar Joomla!', '', 'Actualizar Joomla!', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 79, 80, 0, '*', 1),
(23, 'main', 'com_tags', 'Etiquetas', '', 'Etiquetas', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 81, 82, 0, '', 1),
(24, 'main', 'com_postinstall', 'Mensajes posteriores a la instalación', '', 'Mensajes posteriores a la instalación', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 83, 84, 0, '*', 1),
(101, 'mainmenu', 'Inicio', 'inicio', '', 'inicio', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_tags":"0","show_noauth":"0","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 3, 4, 1, '*', 0),
(102, 'main', 'COM_JAEXTMANAGER', 'com-jaextmanager', '', 'com-jaextmanager', 'index.php?option=com_jaextmanager', 'component', 0, 1, 1, 703, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '', 85, 86, 0, '', 1),
(103, 'mainmenu', 'Nosotros', '2015-09-14-13-05-50', '', '2015-09-14-13-05-50', '#', 'url', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 15, 26, 0, '*', 0),
(104, 'mainmenu', 'Misión - Visión', '2015-09-14-13-07-02', '', '2015-09-14-13-05-50/2015-09-14-13-07-02', 'index.php?option=com_content&view=article&id=3', 'component', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 18, 19, 0, '*', 0),
(105, 'mainmenu', 'Historia', '2015-09-14-13-08-42', '', '2015-09-14-13-05-50/2015-09-14-13-08-42', 'index.php?option=com_content&view=article&id=1', 'component', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"1","show_email_icon":"","show_hits":"0","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 16, 17, 0, '*', 0),
(106, 'mainmenu', '¿Donde estamos?', '2015-09-14-13-11-00', '', '2015-09-14-13-05-50/2015-09-14-13-11-00', 'index.php?option=com_content&view=article&id=4', 'component', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 22, 23, 0, '*', 0),
(107, 'mainmenu', 'Contacto', '2015-09-14-13-11-40', '', '2015-09-14-13-05-50/2015-09-14-13-11-40', '#', 'url', 1, 103, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 24, 25, 0, '*', 0),
(108, 'mainmenu', 'Visión', '2015-09-14-15-50-44', '', '2015-09-14-13-05-50/2015-09-14-15-50-44', '#', 'url', -2, 103, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 20, 21, 0, '*', 0),
(109, 'mainmenu', 'Productos', '2015-10-02-00-51-06', '', '2015-10-02-00-51-06', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 27, 46, 0, '*', 0),
(110, 'mainmenu', 'Control de Peso', '2015-10-09-00-30-29', '', '2015-10-02-00-51-06/2015-10-09-00-30-29', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"12","num_columns":"","num_links":"0","multi_column_order":"","show_subcategory_content":"-1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"0","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 28, 29, 0, '*', 0),
(111, 'mainmenu', 'Tratamiento para el Dolor', '2015-10-09-00-31-20', '', '2015-10-02-00-51-06/2015-10-09-00-31-20', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"12","num_columns":"","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"0","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 30, 31, 0, '*', 0),
(112, 'mainmenu', 'Limpiezas de Cuerpo', '2015-10-09-00-33-52', '', '2015-10-02-00-51-06/2015-10-09-00-33-52', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"0","show_intro":"","info_block_position":"","show_category":"","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 32, 33, 0, '*', 0),
(113, 'mainmenu', 'Supermercado Naturista', '2015-10-09-00-34-50', '', '2015-10-02-00-51-06/2015-10-09-00-34-50', '#', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 36, 37, 0, '*', 0),
(114, 'mainmenu', 'Cosméticos y Cuidado Personal', '2015-10-09-00-36-55', '', '2015-10-02-00-51-06/2015-10-09-00-36-55', '#', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 38, 39, 0, '*', 0),
(115, 'mainmenu', 'Golosinas para Diabéticos', '2015-10-09-00-37-34', '', '2015-10-02-00-51-06/2015-10-09-00-37-34', '#', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 40, 41, 0, '*', 0),
(116, 'mainmenu', 'Jarabes y Sistema Respiratorio', '2015-10-09-00-38-57', '', '2015-10-02-00-51-06/2015-10-09-00-38-57', '#', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 42, 43, 0, '*', 0),
(117, 'mainmenu', 'Sistema Digestivo', '2015-10-09-00-39-37', '', '2015-10-02-00-51-06/2015-10-09-00-39-37', '#', 'url', 1, 109, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 44, 45, 0, '*', 0),
(118, 'mainmenu', 'Publicaciones Naturistas de Interés', '2015-10-09-00-50-06', '', '2015-10-09-00-50-06', '#', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 47, 48, 0, '*', 0),
(119, 'mainmenu', 'Nutrición', '2015-10-09-00-51-14', '', '2015-10-09-00-51-14', '#', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 1, 2, 0, '*', 0),
(120, 'mainmenu', 'Nutrición', '2015-10-09-00-55-29', '', '2015-10-09-00-55-29', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 87, 92, 0, '*', 0),
(121, 'mainmenu', 'Publicaciones Naturistas de Interés', '2015-10-09-00-56-03', '', '2015-10-09-00-56-03', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 93, 94, 0, '*', 0),
(122, 'mainmenu', 'Información', '2015-10-09-01-54-37', '', '2015-10-09-00-55-29/2015-10-09-01-54-37', '#', 'url', 1, 120, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 88, 89, 0, '*', 0),
(123, 'mainmenu', 'Solicite una Cita', '2015-10-09-01-55-17', '', '2015-10-09-00-55-29/2015-10-09-01-55-17', '#', 'url', 1, 120, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"masthead-title":"","masthead-slogan":""}', 90, 91, 0, '*', 0),
(124, 'mainmenu', 'Suplementos Deportivos', 'suplementos-deportivos', '', '2015-10-02-00-51-06/suplementos-deportivos', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 34, 35, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_menu_types`
--

CREATE TABLE IF NOT EXISTS `bonna_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_menu_types`
--

INSERT INTO `bonna_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menú principal', 'El menú principal del sitio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_messages`
--

CREATE TABLE IF NOT EXISTS `bonna_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bonna_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_modules`
--

CREATE TABLE IF NOT EXISTS `bonna_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_modules`
--

INSERT INTO `bonna_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menú Principal', '', '', 1, 'mainnav', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 56, 'Acceso', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Artículos populares', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Últimos artículos creados', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Barra de herramientas', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Iconos rápidos', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Usuarios conectados', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Menú Administrador', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Submenú Administrador', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'Estado usuario', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Título', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 66, 'Formulario de acceso', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Ruta', '', '', 1, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 68, 'Estado Multilenguaje', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Versión de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 56, 'Buscar', '', '', 0, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"Buscar","width":"20","text":"","button":"0","button_pos":"left","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 58, 'Slideshow CK', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slideshowck', 1, 0, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|images\\/sabila_grande.jpg|qq|,|qq|imgcaption|qq|:|qq|8 beneficios de la s\\u00e1bila para tu salud|qq|,|qq|imgtitle|qq|:|qq|Aloe vera|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/bonna\\/images\\/sabila_grande.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/bonna\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/bonna\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|}]","theme":"default","skin":"camera_amber_skin","alignment":"bottomRight","loader":"pie","width":"auto","height":"100%","navigation":"2","thumbnails":"1","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","effect":["random"],"time":"7000","transperiod":"1500","captioneffect":"moveFromLeft","portrait":"0","autoAdvance":"1","hover":"1","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","usecaptionresponsive":"1","captionresponsiveresolution":"480","captionresponsivefontsize":"0.6em","captionresponsivehidecaption":"0","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 59, 'Copyright', '', '<p style="text-align: center;">Copyright - Macrobiótica Bonna Vita - Todos los Derechos Reservados 2015</p>', 1, 'position-5', 220, '2015-10-02 01:24:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bonna_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_modules_menu`
--

INSERT INTO `bonna_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 101),
(89, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bonna_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_overrider`
--

CREATE TABLE IF NOT EXISTS `bonna_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `bonna_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_postinstall_messages`
--

INSERT INTO `bonna_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bonna_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_schemas`
--

CREATE TABLE IF NOT EXISTS `bonna_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_schemas`
--

INSERT INTO `bonna_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.6-2014-09-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_session`
--

CREATE TABLE IF NOT EXISTS `bonna_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_session`
--

INSERT INTO `bonna_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('iu6hkmiul8974bq4gs67pt3573', 1, 1, '1445379321', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1445379321;s:18:"session.timer.last";i:1445379321;s:17:"session.timer.now";i:1445379321;s:22:"session.client.browser";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"9e34632eeec31daf5a8b0ec21201373f";}', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_tags`
--

CREATE TABLE IF NOT EXISTS `bonna_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_tags`
--

INSERT INTO `bonna_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_template_styles`
--

CREATE TABLE IF NOT EXISTS `bonna_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_template_styles`
--

INSERT INTO `bonna_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Predeterminada', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Predeterminada', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Predeterminada', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Predeterminada', '{"templateColor":"","logoFile":""}'),
(9, 'ol_albos', 0, '0', 'ol_albos - Defecto', '{"showDefaultLogo":"1","defaultLogo":"logo.png","showMediaLogo":"0","showTextLogo":"0","textLogo":"text here...","showSlogan":"0","slogan":"text here...","max_sitewidth":"940","headpos":"relative","top_height":"140","socialCode":"1","facebook_icon":"","twitter_icon":"","digg_icon":"","google_icon":"","myspace_icon":"","linkedin_icon":"","blogger_icon":"","flickr_icon":"","stumble_icon":"","pinterest_icon":"","rssfeed_icon":"","slides":"1","headHeigh":"500","banner":"on","menu":"bullet","navarrow":"nexttobullets","styles":"round","speed":"7000","text1Heigh":"200","text2Heigh":"270","text3Heigh":"320","jukenburn_thumb1":"","jukenburn_texts1":"","jukenburn_desc1":"","jukenburn_text1":"","jukenburn_thumb2":"","jukenburn_texts2":"","jukenburn_desc2":"","jukenburn_text2":"","jukenburn_thumb3":"","jukenburn_texts3":"","jukenburn_desc3":"","jukenburn_text3":"","jukenburn_thumb4":"","jukenburn_texts4":"","jukenburn_desc4":"","jukenburn_text4":"","jukenburn_thumb5":"","jukenburn_texts5":"","jukenburn_desc5":"","jukenburn_text5":"","bg1":"","bg2":"","bg3":"","bg4":"","bg5":"","bg6":"","bg7":"","bg8":"","bg9":"","bg10":"","bg11":"","responsiveCode":"1","show_menu_text":"Select a Page"}'),
(10, 'purity_iii', 0, '1', 'purity_III - Defecto', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"0","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"green","logotype":"image","sitename":"bonna-vita.com","slogan":"para todos...","logoimage":"images\\/logo2tiny.png","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"corporate","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"{\\"mainmenu\\":{\\"item-101\\":{\\"xicon\\":\\"fa fa-home \\"},\\"item-103\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":105,\\"width\\":12}]]},\\"xicon\\":\\"fa fa-users\\"},\\"item-109\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":110,\\"width\\":12}]]},\\"xicon\\":\\"fa fa-shopping-cart\\"},\\"item-120\\":{\\"xicon\\":\\"fa fa-heart\\"},\\"item-121\\":{\\"xicon\\":\\"fa fa-book\\"}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","mm_config_needupdate":""}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_ucm_base`
--

CREATE TABLE IF NOT EXISTS `bonna_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_ucm_content`
--

CREATE TABLE IF NOT EXISTS `bonna_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_ucm_history`
--

CREATE TABLE IF NOT EXISTS `bonna_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_ucm_history`
--

INSERT INTO `bonna_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(12, 1, 1, '', '2015-09-14 16:14:40', 220, 2229, 'a22eb4c5a216ff736d4deb95db541c0b4c3f062e', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div id=\\"lipsum\\" style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, inici\\u00e9 el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre hab\\u00eda a\\u00f1orado.<br \\/><br \\/>Hoy, gracias a nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. <br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa mejorada para contribuir con su salud.<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:14:40","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:07:41","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"27","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 1, 1, '', '2015-09-14 16:16:08', 220, 2349, '95f9a51916bcb453df4d2c6b07767dec19b4ea41', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div id=\\"lipsum\\" style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, inici\\u00e9 el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias a nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. <br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa mejorada para contribuir con su salud.<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:16:08","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:14:40","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"29","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 1, 1, '', '2015-09-14 16:18:15', 220, 2503, 'c23b5dde9f9d6696e7ed664b4591b62afdcfcfa7', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div id=\\"lipsum\\" style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, inici\\u00e9 el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias a nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa mejorada para contribuir con su salud.<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:18:15","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:16:08","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"31","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 1, 1, '', '2015-09-14 16:19:47', 220, 2501, 'f3611bbb43f381ae477fbdb4ca93f0e65e9fdf45', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div id=\\"lipsum\\" style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias a nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa mejorada para contribuir con su salud.<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:19:47","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:19:30","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":12,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"33","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 1, 1, '', '2015-09-14 16:20:37', 220, 2519, '7ef57dca08becd9d8213ea54acabc1d79734be0b', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div id=\\"lipsum\\" style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:20:37","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:19:47","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"33","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 2, 1, '', '2015-09-14 16:24:42', 220, 2899, 'bfc93e16fc399fa8abe9f88c569a7b85b0c11d28', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<p style=\\"text-align: justify;\\">En nombre de Macrobiotica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios.<br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:24:42","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:20:42","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(18, 2, 1, '', '2015-09-14 16:49:27', 220, 2995, '7162fc1f16ac658ed3f7c5e642543895bbcce375', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<p>En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <img class=\\"pull-right\\" style=\\"float: right;\\" src=\\"images\\/capsulas.jpg\\" alt=\\"\\" width=\\"262\\" height=\\"131\\" \\/><br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:49:27","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:47:15","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(19, 2, 1, '', '2015-09-14 16:50:17', 220, 3511, '900fca15ee62dd107f584a782b21d709f4ba15e8', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<p>\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <img class=\\"pull-right\\" style=\\"float: left;\\" src=\\"images\\/capsulas.jpg\\" alt=\\"\\" width=\\"262\\" height=\\"131\\" \\/><br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:50:17","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:49:27","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(20, 2, 1, '', '2015-09-14 16:50:48', 220, 2875, '98e41d13328798e59e2bf830de5af4a403e996b6', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<p>En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:50:48","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:50:25","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":13,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(21, 2, 1, '', '2015-09-14 16:54:00', 220, 3018, 'f2685b68ce3e930a64691fc9bc1289f034be6a7c', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<table style=\\"height: 305px;\\" width=\\"607\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\r\\n<p>En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>\\r\\n<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:54:00","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:50:48","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":14,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(22, 2, 1, '', '2015-09-14 16:54:17', 220, 3067, '241bde159680e6f2e7ffd66d75fbbffe863d2700', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<table style=\\"height: 305px;\\" width=\\"607\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\r\\n<p style=\\"text-align: justify;\\">En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>\\r\\n<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:54:17","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:54:00","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":15,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(23, 2, 1, '', '2015-09-14 16:55:09', 220, 3164, 'e52745c791b642b3b90df677d00b24ba3e2fe60f', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<table style=\\"height: 366px;\\" width=\\"881\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\r\\n<p style=\\"text-align: justify;\\">En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>\\r\\n<\\/td>\\r\\n<td><img class=\\"pull-center\\" src=\\"images\\/capsulas.jpg\\" alt=\\"\\" width=\\"300\\" height=\\"150\\" \\/>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:55:09","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:54:17","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":16,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(24, 2, 1, '', '2015-09-14 16:55:31', 220, 3164, 'dbd566b2c1413fa87266554cc90bf0d653c33d40', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<table style=\\"height: 366px;\\" width=\\"881\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\r\\n<p style=\\"text-align: justify;\\">En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>\\r\\n<\\/td>\\r\\n<td><img class=\\"pull-center\\" src=\\"images\\/capsulas.jpg\\" alt=\\"\\" width=\\"658\\" height=\\"329\\" \\/>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:55:31","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:55:09","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":17,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(25, 2, 1, '', '2015-09-14 16:59:43', 220, 3073, '19a20ca2317c2d69d7f5cbab23b86b97e9bd1804', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobitica Bonna-Vita","alias":"principal","introtext":"<div><img style=\\"float: left;\\" src=\\"images\\/capsulas.jpg\\" alt=\\"\\" width=\\"228\\" height=\\"114\\" \\/>\\r\\n<p style=\\"text-align: justify;\\">En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 16:59:43","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 16:55:31","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":18,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(26, 1, 1, '', '2015-09-14 17:05:33', 220, 2470, '962ba1b49431aa5ac6342dc754e046cc0ca61bbe', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<p>Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 17:05:33","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 17:00:37","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":15,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"36","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `bonna_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(27, 1, 1, '', '2015-09-14 17:06:18', 220, 2622, '86cae44f86a39b825e81333e151cec2b34b27be8', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<p style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.<\\/p>\\r\\n<p><img style=\\"display: block; margin-left: auto; margin-right: auto;\\" src=\\"images\\/savila.jpg\\" alt=\\"\\" \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 17:06:18","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 17:05:33","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":16,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"37","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 1, 1, '', '2015-09-14 17:07:52', 220, 2618, 'bc2fffa9e9d4d6217f3c1dbed6ccb12807267b24', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div><img style=\\"float: right;\\" src=\\"images\\/savila.jpg\\" alt=\\"\\" width=\\"317\\" height=\\"108\\" \\/>\\r\\n<p style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<br \\/><br \\/>Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 17:07:52","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 17:06:18","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":17,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"38","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 1, 1, '', '2015-09-14 17:11:56', 220, 2630, 'eb8b9e01951e97deaf7c2f01386b4695852550be', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div><img style=\\"float: right;\\" src=\\"URL_imagen\\" alt=\\"\\" \\/>\\r\\n<div>\\r\\n<p style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 17:11:56","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 17:09:32","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":18,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"39","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 1, 1, '', '2015-09-14 17:13:01', 220, 2668, '98ed9707d138e2317b9a472e6a190ccf18d6152e', '{"id":1,"asset_id":"55","title":"Historia","alias":"historia","introtext":"<div><img style=\\"float: right;\\" src=\\"images\\/natural.jpg\\" alt=\\"\\" width=\\"277\\" height=\\"184\\" \\/>\\r\\n<div>\\r\\n<p style=\\"text-align: justify;\\">Despu\\u00e9s de 15 a\\u00f1os de laborar en farmacias de la comunidad, iniciamos el proyecto de hacer realidad un sue\\u00f1o. Un sue\\u00f1o que desde muy joven siempre se hab\\u00eda a\\u00f1orado. La idea era brindar una opci\\u00f3n a la comunidad y facilitarles productos naturales y servicios de excelente calidad.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Hoy, gracias al apoyo de nuestros clientes y amigos, Macrobi\\u00f3tica Bonna-Vita es una realidad, desde marzo del 2014 abrimos nuestras puertas. El esfuerzo ha sido mucho, pero hemos logrado posicionarnos poco a poco en el mercado y la aceptaci\\u00f3n de los San Carle\\u00f1os ha sido excelente.<br \\/><br \\/>Con mucha responsabilidad y trabajo, brindamos una alternativa natural mejorada para contribuir con su salud.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 13:58:53","created_by":"220","created_by_alias":"","modified":"2015-09-14 17:13:01","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 17:11:56","publish_up":"2015-09-14 13:58:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":19,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"39","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 2, 1, '', '2015-09-14 17:18:40', 220, 3079, '8ababdd0bcebd13de41eb571eee9cba623228f36', '{"id":2,"asset_id":"57","title":"Bienvenido a Macrobi\\u00f3tica Bonna-Vita","alias":"principal","introtext":"<div><img style=\\"float: left;\\" src=\\"images\\/capsulas.jpg\\" alt=\\"\\" width=\\"228\\" height=\\"114\\" \\/>\\r\\n<p style=\\"text-align: justify;\\">En nombre de Macrobi\\u00f3tica Bonna-Vita, les damos la m\\u00e1s sincera bienvenida a nuestra p\\u00e1gina web, en la que, esperamos, encontrar\\u00e1n toda la informaci\\u00f3n que necesiten acerca de nuestros productos y servicios. <br \\/><br \\/>El objetivo principal es brindar a la comunidad alternativas naturales de m\\u00e1xima calidad y junto con nuestra voluntad de servicio ac\\u00e9rcanos m\\u00e1s a sus hogares, por medio de las ventajas que nos ofrece la tecnolog\\u00eda. Todo ello tiene una presencia destacada en esta p\\u00e1gina web y en nuestro compromiso.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Los invitamos a explorar nuestro sitio web, ofrecemos excelentes productos totalmente naturales para cualquier tipo de deficiencia en su salud y para proteger a\\u00fan m\\u00e1s su vida. Dentro de los m\\u00faltiples servicios que le ofrecemos est\\u00e1 el de consulta nutricional, contamos con profesionales altamente calificados en la materia. Aproveche y mejore su salud.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>En el 2014 comenz\\u00f3 esta idea y gracias a usted hemos logrado continuar con este sue\\u00f1o para todos...<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u00a0<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-09-14 15:53:58","created_by":"220","created_by_alias":"","modified":"2015-09-14 17:18:40","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-14 17:18:25","publish_up":"2015-09-14 15:53:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":20,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(32, 3, 1, '', '2015-09-27 14:47:53', 220, 5730, 'fc7bf1750115fc7e17c9e1c05efb81ccf2683a60', '{"id":3,"asset_id":60,"title":"Misi\\u00f3n - Visi\\u00f3n","alias":"mision-vision","introtext":"<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Misi\\u00f3n<\\/span><\\/p>\\r\\n<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Contribuir al bienestar de los ciudadanos, \\u00a0ofreciendo\\u00a0el mejor servicio y productos naturales,\\u00a0con la m\\u00e1s alta calidad para el cuidado de la salud de nuestros clientes. Contando con alternativas,\\u00a0profesionalidad y amabilidad de nuestro servicio.<\\/span><\\/p>\\r\\n<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Visi\\u00f3n<\\/span><\\/p>\\r\\n<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Ser una empresa\\u00a0l\\u00edder,\\u00a0reconocida y distinguida en el mundo de productos naturales\\u00a0de\\u00a0todo San Carlos y Costa Rica, por proveer grandes facilidades\\u00a0y por el compromiso con la satisfacci\\u00f3n de nuestros clientes, logrando as\\u00ed una mejor posici\\u00f3n del mercado y poder enfrentar mercados nacionales e internacionales.<\\/span><\\/p>\\r\\n<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Valores<\\/span><\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Trabajo en equipo<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Humanidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">\\u00c9tica<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Excelencia<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Servicio excepcional<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Orden<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Cooperaci\\u00f3n mutua<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Puntualidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Responsabilidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Actitud positiva<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Imagen Positiva<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Lealtad a nuestra Misi\\u00f3n<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Respeto de normas y pol\\u00edticas<\\/span><\\/span><\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"2","created":"2015-09-27 14:47:53","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-09-27 14:47:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 3, 1, '', '2015-09-27 14:51:46', 220, 5822, '3364c51a25687a17489cb18995eea243b7dbf252', '{"id":3,"asset_id":"60","title":"Misi\\u00f3n - Visi\\u00f3n","alias":"mision-vision","introtext":"<p><strong><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Misi\\u00f3n<\\/span><\\/strong><\\/p>\\r\\n<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Contribuir al bienestar de los ciudadanos, \\u00a0ofreciendo\\u00a0el mejor servicio y productos naturales,\\u00a0con la m\\u00e1s alta calidad para el cuidado de la salud de nuestros clientes. Contando con alternativas,\\u00a0profesionalidad y amabilidad de nuestro servicio.<\\/span><\\/p>\\r\\n<p><strong><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Visi\\u00f3n<\\/span><\\/strong><\\/p>\\r\\n<p><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Ser una empresa\\u00a0l\\u00edder,\\u00a0reconocida y distinguida en el mundo de productos naturales\\u00a0de\\u00a0todo San Carlos y Costa Rica, por proveer grandes facilidades\\u00a0y por el compromiso con la satisfacci\\u00f3n de nuestros clientes, logrando as\\u00ed una mejor posici\\u00f3n del mercado y poder enfrentar mercados nacionales e internacionales.<\\/span><\\/p>\\r\\n<p><strong><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Valores<\\/span><\\/strong><\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Trabajo en equipo<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Humanidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">\\u00c9tica<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Excelencia<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Servicio excepcional<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Orden<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Cooperaci\\u00f3n mutua<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Puntualidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Responsabilidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Actitud positiva<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Imagen Positiva<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Lealtad a nuestra Misi\\u00f3n<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Respeto de normas y pol\\u00edticas<\\/span><\\/span><\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"2","created":"2015-09-27 14:47:53","created_by":"220","created_by_alias":"","modified":"2015-09-27 14:51:46","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-27 14:51:29","publish_up":"2015-09-27 14:47:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 4, 1, '', '2015-09-27 15:02:47', 220, 1747, '10e8929a9c36491d6eec05809744ab032115e12e', '{"id":4,"asset_id":61,"title":"Nuestra Ubicaci\\u00f3n ","alias":"nuestra-ubicacion","introtext":"<p>{google_map}Sunset Boulevard West Hollywood{\\/google_map}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-27 15:02:47","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-09-27 15:02:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 4, 1, '', '2015-09-27 15:06:56', 220, 1808, 'f97d186187587d8898b63bd177237b82da5eefa3', '{"id":4,"asset_id":"61","title":"Nuestra Ubicaci\\u00f3n ","alias":"nuestra-ubicacion","introtext":"<p>{google_map}Macrobi\\u00f3tica Bonna Vita Av 5Cd Quesada Costa Rica{\\/google_map}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-27 15:02:47","created_by":"220","created_by_alias":"","modified":"2015-09-27 15:06:56","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-27 15:06:08","publish_up":"2015-09-27 15:02:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 4, 1, '', '2015-09-27 15:20:33', 220, 2021, 'cc19b1153d5265dbcd6718fadb8fa8f5dd31f191', '{"id":4,"asset_id":"61","title":"Nuestra Ubicaci\\u00f3n ","alias":"nuestra-ubicacion","introtext":"<p style=\\"text-align: center;\\">Macrobiotica Bonna Vita, se encuentra ubicada Frente a la Cadena Comercial San Carle\\u00f1a, Ciudad Quesada, San Carlos, Alajuela, Costa Rica<\\/p>\\r\\n<p style=\\"text-align: center;\\">{google_map}Macrobi\\u00f3tica Bonna Vita Av 5Cd Quesada Costa Rica{\\/google_map}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-09-27 15:02:47","created_by":"220","created_by_alias":"","modified":"2015-09-27 15:20:33","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-27 15:19:03","publish_up":"2015-09-27 15:02:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(37, 3, 1, '', '2015-09-27 15:29:26', 220, 5947, '322e44d42ec7a5b36e96649d41815f9bf667c89a', '{"id":3,"asset_id":"60","title":"Misi\\u00f3n - Visi\\u00f3n","alias":"mision-vision","introtext":"<p style=\\"text-align: justify;\\"><strong><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Misi\\u00f3n<\\/span><\\/strong><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Contribuir al bienestar de los ciudadanos, \\u00a0ofreciendo\\u00a0el mejor servicio y productos naturales,\\u00a0con la m\\u00e1s alta calidad para el cuidado de la salud de nuestros clientes. Contando con alternativas,\\u00a0profesionalidad y amabilidad de nuestro servicio.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Visi\\u00f3n<\\/span><\\/strong><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Ser una empresa\\u00a0l\\u00edder,\\u00a0reconocida y distinguida en el mundo de productos naturales\\u00a0de\\u00a0todo San Carlos y Costa Rica, por proveer grandes facilidades\\u00a0y por el compromiso con la satisfacci\\u00f3n de nuestros clientes, logrando as\\u00ed una mejor posici\\u00f3n del mercado y poder enfrentar mercados nacionales e internacionales.<\\/span><\\/p>\\r\\n<p><strong><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; text-align: justify;\\">Valores<\\/span><\\/strong><\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Trabajo en equipo<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Humanidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">\\u00c9tica<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Excelencia<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Servicio excepcional<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Orden<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Cooperaci\\u00f3n mutua<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Puntualidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Responsabilidad<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Actitud positiva<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Imagen Positiva<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Lealtad a nuestra Misi\\u00f3n<\\/span><\\/span><\\/li>\\r\\n<li style=\\"text-align: justify;\\"><span style=\\"font-family: ''Droid Sans'', Arial, Verdana, sans-serif;\\"><span style=\\"font-size: 13px; line-height: 19.5px;\\">Respeto de normas y pol\\u00edticas<\\/span><\\/span><\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"2","created":"2015-09-27 14:47:53","created_by":"220","created_by_alias":"","modified":"2015-09-27 15:29:26","modified_by":"220","checked_out":"220","checked_out_time":"2015-09-27 15:29:15","publish_up":"2015-09-27 14:47:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(38, 8, 6, '', '2015-10-20 16:29:59', 220, 543, '1e5935a2a59ad675bc70e2fc719ae9b033409661', '{"id":8,"asset_id":62,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Productos","alias":"productos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"220","created_time":"2015-10-20 16:29:59","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(39, 9, 6, '', '2015-10-20 16:30:13', 220, 555, '93b2280ea63f6257d58fbf5805901ee36f0577c2', '{"id":9,"asset_id":63,"parent_id":"8","lft":"14","rgt":15,"level":2,"path":null,"extension":"com_content","title":"Control de Peso","alias":"control-de-peso","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"220","created_time":"2015-10-20 16:30:13","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(40, 5, 1, '', '2015-10-20 16:31:02', 220, 2209, 'f03068aea369b7205d28194d0b025e7b9e606388', '{"id":5,"asset_id":64,"title":"Lipocrom 100","alias":"lipocrom-100","introtext":"<p>Lipocrom 100 es un complemento alimenticio que actua como quemagrasas. Estudios cl\\u00ednicos avalan la acci\\u00f3n como quemagrasas de Sinetrol\\u00ae Xpur, capaz de reducir 5kg en tres meses sin modificar h\\u00e1bitos de dieta o actividad f\\u00edsica. Su contenido en Cromo ayuda a regular el metabolismo de los az\\u00facares reduciendo as\\u00ed los procesos de formaci\\u00f3n de grasa corporal.<br \\/><br \\/>Se recomienda tomar de 2 c\\u00e1psulas al d\\u00eda, una en el desayuno y otra en la comida.<br \\/><br \\/>Contiene 20 capsulas<\\/p>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:31:02","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 16:31:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 5, 1, '', '2015-10-20 16:35:09', 220, 2278, '931bd57823becb03dfd62cc76ae914b0d93d66fe', '{"id":5,"asset_id":"64","title":"Lipocrom 100","alias":"lipocrom-100","introtext":"<p style=\\"text-align: justify;\\">Lipocrom 100 es un complemento alimenticio que actua como quemagrasas. Estudios cl\\u00ednicos avalan la acci\\u00f3n como quemagrasas de Sinetrol\\u00ae Xpur, capaz de reducir 5kg en tres meses sin modificar h\\u00e1bitos de dieta o actividad f\\u00edsica. Su contenido en Cromo ayuda a regular el metabolismo de los az\\u00facares reduciendo as\\u00ed los procesos de formaci\\u00f3n de grasa corporal.<br \\/><br \\/>Se recomienda tomar de 2 c\\u00e1psulas al d\\u00eda, una en el desayuno y otra en la comida.<br \\/><br \\/>Contiene 20 capsulas<\\/p>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:31:02","created_by":"220","created_by_alias":"","modified":"2015-10-20 16:35:09","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 16:35:00","publish_up":"2015-10-20 16:31:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `bonna_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(42, 6, 1, '', '2015-10-20 16:57:47', 220, 43540, 'f534b0e4b81c4b4d2759c0dd291d9085011522c8', '{"id":6,"asset_id":65,"title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]-->\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Indicaci\\u00f3n: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Beneficios:<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Precauciones:<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Contenido:<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Dosis:<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ul>\\r\\n<li>2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>\\r\\n<!-- [if gte mso 9]><xml>\\r\\n <w:WordDocument>\\r\\n  <w:View>Normal<\\/w:View>\\r\\n  <w:Zoom>0<\\/w:Zoom>\\r\\n  <w:TrackMoves\\/>\\r\\n  <w:TrackFormatting\\/>\\r\\n  <w:HyphenationZone>21<\\/w:HyphenationZone>\\r\\n  <w:PunctuationKerning\\/>\\r\\n  <w:ValidateAgainstSchemas\\/>\\r\\n  <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid>\\r\\n  <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent>\\r\\n  <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText>\\r\\n  <w:DoNotPromoteQF\\/>\\r\\n  <w:LidThemeOther>ES-CR<\\/w:LidThemeOther>\\r\\n  <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian>\\r\\n  <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript>\\r\\n  <w:Compatibility>\\r\\n   <w:BreakWrappedTables\\/>\\r\\n   <w:SnapToGridInCell\\/>\\r\\n   <w:WrapTextWithPunct\\/>\\r\\n   <w:UseAsianBreakRules\\/>\\r\\n   <w:DontGrowAutofit\\/>\\r\\n   <w:SplitPgBreakAndParaMark\\/>\\r\\n   <w:EnableOpenTypeKerning\\/>\\r\\n   <w:DontFlipMirrorIndents\\/>\\r\\n   <w:OverrideTableStyleHps\\/>\\r\\n  <\\/w:Compatibility>\\r\\n  <m:mathPr>\\r\\n   <m:mathFont m:val=\\"Cambria Math\\"\\/>\\r\\n   <m:brkBin m:val=\\"before\\"\\/>\\r\\n   <m:brkBinSub m:val=\\"&#45;-\\"\\/>\\r\\n   <m:smallFrac m:val=\\"off\\"\\/>\\r\\n   <m:dispDef\\/>\\r\\n   <m:lMargin m:val=\\"0\\"\\/>\\r\\n   <m:rMargin m:val=\\"0\\"\\/>\\r\\n   <m:defJc m:val=\\"centerGroup\\"\\/>\\r\\n   <m:wrapIndent m:val=\\"1440\\"\\/>\\r\\n   <m:intLim m:val=\\"subSup\\"\\/>\\r\\n   <m:naryLim m:val=\\"undOvr\\"\\/>\\r\\n  <\\/m:mathPr><\\/w:WordDocument>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 9]><xml>\\r\\n <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"false\\"\\r\\n  DefSemiHidden=\\"false\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"\\r\\n  LatentStyleCount=\\"371\\">\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"0\\" QFormat=\\"true\\" Name=\\"Normal\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"heading 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"toc 9\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footnote text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"header\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footer\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"index heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"35\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"caption\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"table of figures\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"envelope address\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"envelope return\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"footnote reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"line number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"page number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"endnote reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"endnote text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"table of authorities\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"macro\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"toa heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Bullet 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Number 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"10\\" QFormat=\\"true\\" Name=\\"Title\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Closing\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Signature\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"Default Paragraph Font\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"List Continue 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Message Header\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"11\\" QFormat=\\"true\\" Name=\\"Subtitle\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Salutation\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Date\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text First Indent\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text First Indent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Note Heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Body Text Indent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Block Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Hyperlink\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"FollowedHyperlink\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"22\\" QFormat=\\"true\\" Name=\\"Strong\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"20\\" QFormat=\\"true\\" Name=\\"Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Document Map\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Plain Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"E-mail Signature\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Top of Form\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Bottom of Form\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal (Web)\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Acronym\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Address\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Cite\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Code\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Definition\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Keyboard\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Preformatted\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Sample\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Typewriter\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"HTML Variable\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Normal Table\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"annotation subject\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"No List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Outline List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Simple 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Classic 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Colorful 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Columns 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Grid 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 7\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table List 8\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table 3D effects 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Contemporary\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Elegant\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Professional\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Subtle 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Subtle 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Web 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Balloon Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"Table Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" UnhideWhenUsed=\\"true\\"\\r\\n   Name=\\"Table Theme\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Placeholder Text\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" QFormat=\\"true\\" Name=\\"No Spacing\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" SemiHidden=\\"true\\" Name=\\"Revision\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"34\\" QFormat=\\"true\\"\\r\\n   Name=\\"List Paragraph\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"29\\" QFormat=\\"true\\" Name=\\"Quote\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"30\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Quote\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" Name=\\"Light Shading Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" Name=\\"Light List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" Name=\\"Light Grid Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" Name=\\"Medium Shading 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" Name=\\"Medium Shading 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" Name=\\"Medium List 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" Name=\\"Medium List 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" Name=\\"Medium Grid 1 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" Name=\\"Medium Grid 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" Name=\\"Medium Grid 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" Name=\\"Dark List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" Name=\\"Colorful Shading Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" Name=\\"Colorful List Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" Name=\\"Colorful Grid Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"19\\" QFormat=\\"true\\"\\r\\n   Name=\\"Subtle Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"21\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Emphasis\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"31\\" QFormat=\\"true\\"\\r\\n   Name=\\"Subtle Reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"32\\" QFormat=\\"true\\"\\r\\n   Name=\\"Intense Reference\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"33\\" QFormat=\\"true\\" Name=\\"Book Title\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"37\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" Name=\\"Bibliography\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" SemiHidden=\\"true\\"\\r\\n   UnhideWhenUsed=\\"true\\" QFormat=\\"true\\" Name=\\"TOC Heading\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"41\\" Name=\\"Plain Table 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"42\\" Name=\\"Plain Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"43\\" Name=\\"Plain Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"44\\" Name=\\"Plain Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"45\\" Name=\\"Plain Table 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"40\\" Name=\\"Grid Table Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"Grid Table 1 Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"Grid Table 6 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"Grid Table 7 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"Grid Table 1 Light Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"Grid Table 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"Grid Table 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"Grid Table 4 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"Grid Table 5 Dark Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"Grid Table 6 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"Grid Table 7 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\" Name=\\"List Table 1 Light\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\" Name=\\"List Table 6 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\" Name=\\"List Table 7 Colorful\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 1\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 2\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 3\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 4\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 5\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"46\\"\\r\\n   Name=\\"List Table 1 Light Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"47\\" Name=\\"List Table 2 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"48\\" Name=\\"List Table 3 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"49\\" Name=\\"List Table 4 Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"50\\" Name=\\"List Table 5 Dark Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"51\\"\\r\\n   Name=\\"List Table 6 Colorful Accent 6\\"\\/>\\r\\n  <w:LsdException Locked=\\"false\\" Priority=\\"52\\"\\r\\n   Name=\\"List Table 7 Colorful Accent 6\\"\\/>\\r\\n <\\/w:LatentStyles>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 10]>\\r\\n<style>\\r\\n \\/* Style Definitions *\\/\\r\\n table.MsoNormalTable\\r\\n\\t{mso-style-name:\\"Tabla normal\\";\\r\\n\\tmso-tstyle-rowband-size:0;\\r\\n\\tmso-tstyle-colband-size:0;\\r\\n\\tmso-style-noshow:yes;\\r\\n\\tmso-style-priority:99;\\r\\n\\tmso-style-parent:\\"\\";\\r\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\r\\n\\tmso-para-margin-top:0cm;\\r\\n\\tmso-para-margin-right:0cm;\\r\\n\\tmso-para-margin-bottom:8.0pt;\\r\\n\\tmso-para-margin-left:0cm;\\r\\n\\tline-height:107%;\\r\\n\\tmso-pagination:widow-orphan;\\r\\n\\tfont-size:11.0pt;\\r\\n\\tfont-family:\\"Calibri\\",sans-serif;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;\\r\\n\\tmso-fareast-language:EN-US;}\\r\\n<\\/style>\\r\\n<![endif]-->\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `bonna_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(43, 6, 1, '', '2015-10-20 16:58:32', 220, 3436, '61c3f157c355b51aeb7b1c3f91165de0ca97c8a5', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]-->\\r\\n<p>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p>Indicaci\\u00f3n: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico. <\\/p>\\r\\n<p>La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo. <\\/p>\\r\\n<p>Beneficios: <\\/p>\\r\\n<ol>\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto. <\\/li>\\r\\n<\\/ol>\\r\\n<p>Precauciones: <\\/p>\\r\\n<ul>\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina. <\\/li>\\r\\n<\\/ul>\\r\\n<p>Contenido: <\\/p>\\r\\n<ul>\\r\\n<li>60 capsulas <\\/li>\\r\\n<\\/ul>\\r\\n<p>Dosis: <\\/p>\\r\\n<ul>\\r\\n<li>2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 16:58:32","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 16:57:47","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 6, 1, '', '2015-10-20 16:58:37', 220, 3427, '099ec16a4f6a166679a4571e3e69de2c33706e28', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]-->\\r\\n<p>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p>Indicaci\\u00f3n: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p>La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p>Beneficios:<\\/p>\\r\\n<ol>\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p>Precauciones:<\\/p>\\r\\n<ul>\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Contenido:<\\/p>\\r\\n<ul>\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p>Dosis:<\\/p>\\r\\n<ul>\\r\\n<li>2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 16:58:37","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 16:58:32","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 6, 1, '', '2015-10-20 16:59:27', 220, 3535, 'c0f215c731e47016da069a502f39d8d0fcbb32a3', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<p>\\u00a0<\\/p>\\r\\n<!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]-->\\r\\n<p>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p><strong>Indicaci\\u00f3n<\\/strong>: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p>La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p><strong>Beneficios<\\/strong>:<\\/p>\\r\\n<ol>\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p><strong>Precauciones<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Contenido<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Dosis<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li>2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 16:59:27","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 16:58:37","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(46, 5, 1, '', '2015-10-20 17:11:17', 220, 2367, 'b23e7a29154a7359c1a5df55e463658468ed98e6', '{"id":5,"asset_id":"64","title":"Lipocrom 100","alias":"lipocrom-100","introtext":"<div><img style=\\"float: left;\\" src=\\"images\\/lipocrom.png\\" alt=\\"\\" \\/>\\r\\n<p style=\\"text-align: justify;\\">Lipocrom 100 es un complemento alimenticio que actua como quemagrasas. Estudios cl\\u00ednicos avalan la acci\\u00f3n como quemagrasas de Sinetrol\\u00ae Xpur, capaz de reducir 5kg en tres meses sin modificar h\\u00e1bitos de dieta o actividad f\\u00edsica. Su contenido en Cromo ayuda a regular el metabolismo de los az\\u00facares reduciendo as\\u00ed los procesos de formaci\\u00f3n de grasa corporal.<br \\/><br \\/>Se recomienda tomar de 2 c\\u00e1psulas al d\\u00eda, una en el desayuno y otra en la comida.<br \\/><br \\/>Contiene 20 capsulas<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:31:02","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:11:17","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:09:34","publish_up":"2015-10-20 16:31:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 6, 1, '', '2015-10-20 17:29:01', 220, 3467, 'b49e3773e2abf9b268ef829d2f85bd647fc97178', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<div><img style=\\"float: left;\\" src=\\"images\\/citri.jpg\\" alt=\\"\\" \\/>\\r\\n<p>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p><strong>Indicaci\\u00f3n<\\/strong>: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p>La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p><strong>Beneficios<\\/strong>:<\\/p>\\r\\n<ol>\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p><strong>Precauciones<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Contenido<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Dosis<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li>2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:29:01","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:27:28","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(48, 6, 1, '', '2015-10-20 17:30:07', 220, 3808, 'd04b2990fd32a80cc00a87b8c5821dea17556f4d', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<div><img style=\\"float: left;\\" src=\\"images\\/citri.jpg\\" alt=\\"\\" \\/>\\r\\n<p style=\\"text-align: justify;\\">Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Indicaci\\u00f3n<\\/strong>: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Beneficios<\\/strong>:<\\/p>\\r\\n<ol style=\\"text-align: justify;\\">\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p style=\\"text-align: justify;\\"><strong>Precauciones<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Contenido<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\">2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:30:07","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:29:01","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 6, 1, '', '2015-10-20 17:30:38', 220, 3809, 'fbe45599223347f96e995df98107953a867ca4da', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<div><img style=\\"float: right;\\" src=\\"images\\/citri.jpg\\" alt=\\"\\" \\/>\\r\\n<p style=\\"text-align: justify;\\">Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Indicaci\\u00f3n<\\/strong>: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Beneficios<\\/strong>:<\\/p>\\r\\n<ol style=\\"text-align: justify;\\">\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p style=\\"text-align: justify;\\"><strong>Precauciones<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Contenido<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\">2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:30:38","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:30:07","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(50, 6, 1, '', '2015-10-20 17:37:25', 220, 3831, 'fcb78d933a76cff247e690b7afcef01281351845', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/citri.jpg\\" alt=\\"\\" width=\\"191\\" height=\\"295\\" \\/>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Indicaci\\u00f3n<\\/strong>: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Beneficios<\\/strong>:<\\/p>\\r\\n<ol style=\\"text-align: justify;\\">\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p style=\\"text-align: justify;\\"><strong>Precauciones<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Contenido<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\">2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:37:25","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:34:40","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 6, 1, '', '2015-10-20 17:38:21', 220, 3832, 'c734c53a96be06061fdb2806a17e0404e8bca4c6', '{"id":6,"asset_id":"65","title":"Citrilight - Garcinia Cambogia","alias":"citrilight-garcinia-cambogia","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/citri.jpg\\" alt=\\"\\" width=\\"142\\" height=\\"226\\" \\/>Este producto disminuye la ansiedad y los antojos por los dulces.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Indicaci\\u00f3n<\\/strong>: Co ayudante para el control de peso. Debe acompa\\u00f1arse por una dieta baja en energ\\u00eda y un adecuado programa de ejercicio f\\u00edsico.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">La Garcinia Cambogia le garantiza bajar de peso de manera segura y eficaz, ya que ayuda a controlar y disminuir la ingesta de alimentos. Ayudando al cuerpo a eliminar de una vez por todas, las c\\u00e9dulas grasas. Su funci\\u00f3n principal es bloquear la enzima encargada de convertir los distintos carbohidratos en grasa que se suman al tejido adiposo.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Beneficios<\\/strong>:<\\/p>\\r\\n<ol style=\\"text-align: justify;\\">\\r\\n<li>Controla el apetito y la ansiedad, lo que significa que este suplemento proporcionar\\u00e1 la capacidad de consumir peque\\u00f1as porciones de comida sin sentir la necesidad de comer m\\u00e1s.<\\/li>\\r\\n<li>Aumenta los niveles de serotonina, en el cerebro, hormona que ayuda a mantener controlado los antojos desenfrenados a deshoras.<\\/li>\\r\\n<li>El compuesto de \\u00e1cido hidroxic\\u00edtrico bloquea la conversi\\u00f3n de los carbohidratos y azucares en grasa, quemando las grasas del tejido adiposo.<\\/li>\\r\\n<li>Ayuda a eliminar los niveles de colesterol alto.<\\/li>\\r\\n<\\/ol>\\r\\n<p style=\\"text-align: justify;\\"><strong>Precauciones<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>Mantener una hora de diferencia entre la toma de tratamiento hipogluc\\u00e9mico oral o insulina.<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Contenido<\\/strong>:<\\/p>\\r\\n<ul style=\\"text-align: justify;\\">\\r\\n<li>60 capsulas<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis<\\/strong>:<\\/p>\\r\\n<ul>\\r\\n<li style=\\"text-align: justify;\\">2 capsulas diarias (Cada media hora antes de las comidas)<\\/li>\\r\\n<\\/ul>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 16:57:47","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:38:21","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:37:25","publish_up":"2015-10-20 16:57:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(52, 7, 1, '', '2015-10-20 17:45:43', 220, 2671, '29aceee5de0da645b9f925942fb8935589c562dd', '{"id":7,"asset_id":66,"title":"Gel Sbela","alias":"gel-sbela","introtext":"<p>GEL SBELA, es un gel reafirmante para la definici\\u00f3n de la silueta. Contiene la asociaci\\u00f3n\\u00a0de diversos ingredientes naturales que proporcionan una sensaci\\u00f3n astringente y de firmeza, ayudando a reafirmar y modificar el aspecto de la piel; obteniendo una bella figura con su uso constante.\\u00a0<\\/p>\\r\\n<p>GEL SBELA reafirma\\u00a0intensamente la piel, elimina grasa en lugares donde se acumula, tonifica la piel, remodela la figura, mejora la circulaci\\u00f3n.<\\/p>\\r\\n<p>Contiene:\\u00a0Aceite de romero, col\\u00e1geno hidrolizado, extracto de algas marinas, extracto de s\\u00e1bila, eucalipto, cafe\\u00edna<\\/p>\\r\\n<p>Dosis:\\u00a0Aplicar de 2 a 3 veces al d\\u00eda de manera uniforme en las zonas requeridas, antes de hacer ejercicio, despu\\u00e9s del ba\\u00f1o y al acostarse.<\\/p>\\r\\n<p>Precauciones:\\u00a0Mant\\u00e9ngase fuera del alcance de los ni\\u00f1os. En caso de irritaci\\u00f3n cese su aplicaci\\u00f3n. Mant\\u00e9ngase en lugar fresco y seco. Fuera de la luz solar directa.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 17:45:43","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 17:45:43","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 7, 1, '', '2015-10-20 17:49:18', 220, 2864, 'e8ee4f4d96ccaa857badcb64e396bbfd85d4e12d', '{"id":7,"asset_id":"66","title":"Gel Sbela","alias":"gel-sbela","introtext":"<p style=\\"text-align: justify;\\">GEL SBELA, es un gel reafirmante para la definici\\u00f3n de la silueta. Contiene la asociaci\\u00f3n\\u00a0de diversos ingredientes naturales que proporcionan una sensaci\\u00f3n astringente y de firmeza, ayudando a reafirmar y modificar el aspecto de la piel; obteniendo una bella figura con su uso constante.\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">GEL SBELA reafirma\\u00a0intensamente la piel, elimina grasa en lugares donde se acumula, tonifica la piel, remodela la figura, mejora la circulaci\\u00f3n.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Contiene:\\u00a0Aceite de romero, col\\u00e1geno hidrolizado, extracto de algas marinas, extracto de s\\u00e1bila, eucalipto, cafe\\u00edna<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Dosis:\\u00a0Aplicar de 2 a 3 veces al d\\u00eda de manera uniforme en las zonas requeridas, antes de hacer ejercicio, despu\\u00e9s del ba\\u00f1o y al acostarse.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Precauciones:\\u00a0Mant\\u00e9ngase fuera del alcance de los ni\\u00f1os. En caso de irritaci\\u00f3n cese su aplicaci\\u00f3n. Mant\\u00e9ngase en lugar fresco y seco. Fuera de la luz solar directa.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 17:45:43","created_by":"220","created_by_alias":"","modified":"2015-10-20 17:49:18","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 17:45:43","publish_up":"2015-10-20 17:45:43","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 7, 1, '', '2015-10-20 18:36:16', 220, 3030, '7d2907e7655300833d133b55643e968fd340662d', '{"id":7,"asset_id":"66","title":"Gel Sbela","alias":"gel-sbela","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/sbelagel.jpg\\" alt=\\"\\" width=\\"205\\" height=\\"331\\" \\/>GEL SBELA, es un gel reafirmante para la definici\\u00f3n de la silueta. Contiene la asociaci\\u00f3n\\u00a0de diversos ingredientes naturales que proporcionan una sensaci\\u00f3n astringente y de firmeza, ayudando a reafirmar y modificar el aspecto de la piel; obteniendo una bella figura con su uso constante.\\u00a0<\\/p>\\r\\n<p style=\\"text-align: justify;\\">GEL SBELA reafirma\\u00a0intensamente la piel, elimina grasa en lugares donde se acumula, tonifica la piel, remodela la figura, mejora la circulaci\\u00f3n.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Contiene<\\/strong>:\\u00a0Aceite de romero, col\\u00e1geno hidrolizado, extracto de algas marinas, extracto de s\\u00e1bila, eucalipto, cafe\\u00edna<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis<\\/strong>:\\u00a0Aplicar de 2 a 3 veces al d\\u00eda de manera uniforme en las zonas requeridas, antes de hacer ejercicio, despu\\u00e9s del ba\\u00f1o y al acostarse.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Precauciones<\\/strong>:\\u00a0Mant\\u00e9ngase fuera del alcance de los ni\\u00f1os. En caso de irritaci\\u00f3n cese su aplicaci\\u00f3n. Mant\\u00e9ngase en lugar fresco y seco. Fuera de la luz solar directa.<\\/p>","fulltext":"","state":1,"catid":"9","created":"2015-10-20 17:45:43","created_by":"220","created_by_alias":"","modified":"2015-10-20 18:36:16","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 18:34:46","publish_up":"2015-10-20 17:45:43","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 10, 6, '', '2015-10-20 18:39:42', 220, 578, 'bf63cc2eb57e3043dc85b8005f9650af428638fe', '{"id":10,"asset_id":67,"parent_id":"8","lft":"16","rgt":17,"level":2,"path":null,"extension":"com_content","title":"Tratamientos para el dolor","alias":"tratamientos-para-el-dolor","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"220","created_time":"2015-10-20 18:39:42","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(56, 8, 1, '', '2015-10-20 18:49:54', 220, 3527, '457bbea26c5efc86b8bea8993399a5ae2ef6a573', '{"id":8,"asset_id":68,"title":"NATUFEN","alias":"natufen","introtext":"<p>NATUFEN\\u00ae naci\\u00f3 como alternativa para el manejo del dolor, la inflamaci\\u00f3n y la fiebre posterior al estudio realizado por varias universidades de Estados Unidos, alrededor del estudio profundo del estilo de vida de los nativos indio-americanos. Cuando analizaron la forma en que ellos manejaban algunas enfermedades como la fiebre, infecciones respiratorias y dolores de cabeza, se encontraron con una antigua f\\u00f3rmula que consist\\u00eda en una tisana de la corteza de un \\u00e1rbol llamado \\u201cWhite willow\\u201d (Sauce blanco en espa\\u00f1ol). Esto atrajo la atenci\\u00f3n de varias industrias farmac\\u00e9uticas de renombre internacional, y culmin\\u00f3 con el lanzamiento primeramente en Alemania del primer analg\\u00e9sico antiinflamatorio no esteroideo de origen 100% natural: el ASSALIX\\u00ae. Los laboratorios GREEN LABS, posterior a una serie de investigaciones \\u201ctropicaliz\\u00f3\\u201d esta f\\u00f3rmula y la hizo disponible en el pa\\u00eds.<\\/p>\\r\\n<p><br \\/>NATUFEN\\u00ae posee todo un trasfondo cient\\u00edfico que ha permitido determinar la forma en que funciona, garantizando el efecto para el manejo del dolor desde la primera c\\u00e1psula, rompiendo entonces el paradigma de que \\u201clos productos naturales son lentos para actuar\\u201d o que \\u201chay que tomar muchas c\\u00e1psulas al d\\u00eda para ver el efecto\\u201d. Con NATUFEN\\u00ae, desde la primera c\\u00e1psula vas a tener alivio inmediato del dolor \\u2013 cualquier tipo de dolor, desde una migra\\u00f1a, un dolor de espalda o una contractura muscular, hasta dolores cr\\u00f3nicos como desgastes en articulaciones, fibromialgias o neuropat\\u00edas de distinta naturaleza. S\\u00f3lo debes tomar una o dos c\\u00e1psulas al d\\u00eda y vas a poder seguir adelante con tu d\\u00eda.<\\/p>\\r\\n<p>NATUFEN\\u00ae est\\u00e1 disponible en cajas de 30 y de 90 c\\u00e1psulas.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 18:49:54","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 18:49:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `bonna_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(57, 8, 1, '', '2015-10-20 18:50:26', 220, 3658, '6e44bfad6695061b25d108109908d6be4bb3e900', '{"id":8,"asset_id":"68","title":"NATUFEN","alias":"natufen","introtext":"<p style=\\"text-align: justify;\\">NATUFEN\\u00ae naci\\u00f3 como alternativa para el manejo del dolor, la inflamaci\\u00f3n y la fiebre posterior al estudio realizado por varias universidades de Estados Unidos, alrededor del estudio profundo del estilo de vida de los nativos indio-americanos. Cuando analizaron la forma en que ellos manejaban algunas enfermedades como la fiebre, infecciones respiratorias y dolores de cabeza, se encontraron con una antigua f\\u00f3rmula que consist\\u00eda en una tisana de la corteza de un \\u00e1rbol llamado \\u201cWhite willow\\u201d (Sauce blanco en espa\\u00f1ol). Esto atrajo la atenci\\u00f3n de varias industrias farmac\\u00e9uticas de renombre internacional, y culmin\\u00f3 con el lanzamiento primeramente en Alemania del primer analg\\u00e9sico antiinflamatorio no esteroideo de origen 100% natural: el ASSALIX\\u00ae. Los laboratorios GREEN LABS, posterior a una serie de investigaciones \\u201ctropicaliz\\u00f3\\u201d esta f\\u00f3rmula y la hizo disponible en el pa\\u00eds.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>NATUFEN\\u00ae posee todo un trasfondo cient\\u00edfico que ha permitido determinar la forma en que funciona, garantizando el efecto para el manejo del dolor desde la primera c\\u00e1psula, rompiendo entonces el paradigma de que \\u201clos productos naturales son lentos para actuar\\u201d o que \\u201chay que tomar muchas c\\u00e1psulas al d\\u00eda para ver el efecto\\u201d. Con NATUFEN\\u00ae, desde la primera c\\u00e1psula vas a tener alivio inmediato del dolor \\u2013 cualquier tipo de dolor, desde una migra\\u00f1a, un dolor de espalda o una contractura muscular, hasta dolores cr\\u00f3nicos como desgastes en articulaciones, fibromialgias o neuropat\\u00edas de distinta naturaleza. S\\u00f3lo debes tomar una o dos c\\u00e1psulas al d\\u00eda y vas a poder seguir adelante con tu d\\u00eda.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">NATUFEN\\u00ae est\\u00e1 disponible en cajas de 30 y de 90 c\\u00e1psulas.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 18:49:54","created_by":"220","created_by_alias":"","modified":"2015-10-20 18:50:26","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 18:49:54","publish_up":"2015-10-20 18:49:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 8, 1, '', '2015-10-20 18:55:33', 220, 3770, '59269b94ac0e7dc5b11998c591936a40415c679c', '{"id":8,"asset_id":"68","title":"NATUFEN","alias":"natufen","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/natufeno.jpg\\" alt=\\"\\" width=\\"161\\" height=\\"312\\" \\/>NATUFEN\\u00ae naci\\u00f3 como alternativa para el manejo del dolor, la inflamaci\\u00f3n y la fiebre posterior al estudio realizado por varias universidades de Estados Unidos, alrededor del estudio profundo del estilo de vida de los nativos indio-americanos. Cuando analizaron la forma en que ellos manejaban algunas enfermedades como la fiebre, infecciones respiratorias y dolores de cabeza, se encontraron con una antigua f\\u00f3rmula que consist\\u00eda en una tisana de la corteza de un \\u00e1rbol llamado \\u201cWhite willow\\u201d (Sauce blanco en espa\\u00f1ol). Esto atrajo la atenci\\u00f3n de varias industrias farmac\\u00e9uticas de renombre internacional, y culmin\\u00f3 con el lanzamiento primeramente en Alemania del primer analg\\u00e9sico antiinflamatorio no esteroideo de origen 100% natural: el ASSALIX\\u00ae. Los laboratorios GREEN LABS, posterior a una serie de investigaciones \\u201ctropicaliz\\u00f3\\u201d esta f\\u00f3rmula y la hizo disponible en el pa\\u00eds.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><br \\/>NATUFEN\\u00ae posee todo un trasfondo cient\\u00edfico que ha permitido determinar la forma en que funciona, garantizando el efecto para el manejo del dolor desde la primera c\\u00e1psula, rompiendo entonces el paradigma de que \\u201clos productos naturales son lentos para actuar\\u201d o que \\u201chay que tomar muchas c\\u00e1psulas al d\\u00eda para ver el efecto\\u201d. Con NATUFEN\\u00ae, desde la primera c\\u00e1psula vas a tener alivio inmediato del dolor \\u2013 cualquier tipo de dolor, desde una migra\\u00f1a, un dolor de espalda o una contractura muscular, hasta dolores cr\\u00f3nicos como desgastes en articulaciones, fibromialgias o neuropat\\u00edas de distinta naturaleza. S\\u00f3lo debes tomar una o dos c\\u00e1psulas al d\\u00eda y vas a poder seguir adelante con tu d\\u00eda.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">NATUFEN\\u00ae est\\u00e1 disponible en cajas de 30 y de 90 c\\u00e1psulas.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 18:49:54","created_by":"220","created_by_alias":"","modified":"2015-10-20 18:55:33","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 18:54:42","publish_up":"2015-10-20 18:49:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(59, 9, 1, '', '2015-10-20 19:26:18', 220, 3448, 'dcbdb1c252dbcdbba230f40161a85c2a98ad82b0', '{"id":9,"asset_id":69,"title":"Rehumadaul","alias":"rehumadaul","introtext":"<div id=\\"idTab1\\" class=\\"rte\\">\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">Producto fitoterap\\u00e9utico a base de ortiga, ajo, apio, avena y complejo B que ayuda a aliviar dolores causados por espasmos musculares y aquellos asociados con la artritis y la artrosis.<\\/span> <\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">Indicaciones: Tomar dos (2) c\\u00e1psulas en la ma\\u00f1ana y dos (2) en la tarde los tres (3) primeros d\\u00edas y continuar los siguientes d\\u00edas con una (1) c\\u00e1psula en la ma\\u00f1ana y una (1) en la tarde.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">Contraindicaciones:\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Hipersensibilidad a sus componentes, no administrar durante embarazo o lactancia.\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Desiquilibrio electrol\\u00edtico.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Insuficiencia card\\u00edaca.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Insuficiencia renal.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Gastritis y tromboflebitis.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Pacientes con altos niveles de protombina en la sangre no lo deben consumir.\\u00a0<\\/span><\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 19:26:18","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 19:26:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(60, 9, 1, '', '2015-10-20 19:34:52', 220, 3593, 'f0e15969917226c1ec6097f1012f77901ac63e25', '{"id":9,"asset_id":"69","title":"Rehumadaul","alias":"rehumadaul","introtext":"<div id=\\"idTab1\\" class=\\"rte\\">\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/rano.jpg\\" alt=\\"\\" width=\\"267\\" height=\\"202\\" \\/>Producto fitoterap\\u00e9utico a base de ortiga, ajo, apio, avena y complejo B que ayuda a aliviar dolores causados por espasmos musculares y aquellos asociados con la artritis y la artrosis.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">Indicaciones: Tomar dos (2) c\\u00e1psulas en la ma\\u00f1ana y dos (2) en la tarde los tres (3) primeros d\\u00edas y continuar los siguientes d\\u00edas con una (1) c\\u00e1psula en la ma\\u00f1ana y una (1) en la tarde.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">Contraindicaciones:\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Hipersensibilidad a sus componentes, no administrar durante embarazo o lactancia.\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Desiquilibrio electrol\\u00edtico.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Insuficiencia card\\u00edaca.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Insuficiencia renal.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Gastritis y tromboflebitis.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Pacientes con altos niveles de protombina en la sangre no lo deben consumir.\\u00a0<\\/span><\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 19:26:18","created_by":"220","created_by_alias":"","modified":"2015-10-20 19:34:52","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 19:26:18","publish_up":"2015-10-20 19:26:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(61, 9, 1, '', '2015-10-20 19:35:27', 220, 3629, '8f2cb0c42c4dfbf247a0f5f80c7a47cd7e2dea1c', '{"id":9,"asset_id":"69","title":"Rehumadaul","alias":"rehumadaul","introtext":"<div id=\\"idTab1\\" class=\\"rte\\">\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/rano.jpg\\" alt=\\"\\" width=\\"267\\" height=\\"202\\" \\/>Producto fitoterap\\u00e9utico a base de ortiga, ajo, apio, avena y complejo B que ayuda a aliviar dolores causados por espasmos musculares y aquellos asociados con la artritis y la artrosis.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\"><strong>Indicaciones<\\/strong>: Tomar dos (2) c\\u00e1psulas en la ma\\u00f1ana y dos (2) en la tarde los tres (3) primeros d\\u00edas y continuar los siguientes d\\u00edas con una (1) c\\u00e1psula en la ma\\u00f1ana y una (1) en la tarde.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\"><strong>Contraindicaciones<\\/strong>:\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Hipersensibilidad a sus componentes, no administrar durante embarazo o lactancia.\\u00a0<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Desiquilibrio electrol\\u00edtico.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Insuficiencia card\\u00edaca.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Insuficiencia renal.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Gastritis y tromboflebitis.<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 10pt; font-family: verdana, geneva;\\">-Pacientes con altos niveles de protombina en la sangre no lo deben consumir.\\u00a0<\\/span><\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 19:26:18","created_by":"220","created_by_alias":"","modified":"2015-10-20 19:35:27","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 19:34:52","publish_up":"2015-10-20 19:26:18","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(62, 10, 1, '', '2015-10-20 19:42:29', 220, 3492, '12ebcc04960a9b8350cb5e341a8cbbda10eaf68d', '{"id":10,"asset_id":70,"title":"Artrifin","alias":"artrifin","introtext":"<p>Artrifin\\u00ae es el medicamento natural m\\u00e1s potente y concentrado que alivia de manera eficiente los malestares, lesiones articulares, detiene de la degeneraci\\u00f3n articular, los problemas de artritis y osteoartritis.<br \\/><br \\/>Formulado con estandarizados extractos de clorhidrato de glucosamina y sulfato de condroitina, con una elevada concentraci\\u00f3n de principios activos encargados de estimular el porcentaje de absorci\\u00f3n, optimizando la reparaci\\u00f3n y regeneraci\\u00f3n continua de las estructuras cartilaginosas, reduce la erosi\\u00f3n del cart\\u00edlago en la artrosis, detiene la progresi\\u00f3n del desgaste, manteniendo la salud y flexibilidad de los cart\\u00edlagos en las articulaciones y el tejido conectivo.<br \\/><br \\/>Descripci\\u00f3n del producto<br \\/><br \\/>Presentaci\\u00f3n:<br \\/>Frasco con 60 y 100 c\\u00e1psulas.<br \\/><br \\/>Indicaci\\u00f3n terap\\u00e9utica:<br \\/>Coadyuvante en el tratamiento de la osteoartritis.<br \\/><br \\/>Dosis:<br \\/>1 c\\u00e1psula 3 veces al d\\u00eda.<br \\/><br \\/>Composici\\u00f3n:<br \\/>Sulfato de glucosamina \\u2026.500 mg<br \\/>Sulfato de condroitina\\u2026. 400 mg<br \\/><br \\/>Efectos secundarios:<br \\/>Podr\\u00eda presentarse diarrea, n\\u00e1useas, flatulencias.<br \\/><br \\/>Tiene alguna contraindicaci\\u00f3n:<br \\/>No utilizar en pacientes sensibles algunos de los componentes o a los mariscos. No se recomienda su uso en mujeres embarazadas o en per\\u00edodo de lactancia.<br \\/><br \\/>Recomendaci\\u00f3n de uso:<br \\/>No se recomienda su uso en mujeres embarazadas o en periodo de lactancia.<br \\/><br \\/>Tiene interacciones:<br \\/>Hipoglicemiantes orales: Puede disminuir el efecto de los hipogliceminates orales. Anticoagulantes: En pacientes en tratamiento con Artrifin\\u00ae y anticoagulantes, puede aumentar el riesgo de sangrado.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 19:42:29","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 19:42:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(63, 10, 1, '', '2015-10-20 19:47:55', 220, 3638, 'e5629c172d07971fbf2b6b1a9246d91716037f55', '{"id":10,"asset_id":"70","title":"Artrifin","alias":"artrifin","introtext":"<p>Artrifin\\u00ae es el medicamento natural m\\u00e1s potente y concentrado que alivia de manera eficiente los malestares, lesiones articulares, detiene de la degeneraci\\u00f3n articular, los problemas de artritis y osteoartritis.<br \\/><br \\/>Formulado con estandarizados extractos de clorhidrato de glucosamina y sulfato de condroitina, con una elevada concentraci\\u00f3n de principios activos encargados de estimular el porcentaje de absorci\\u00f3n, optimizando la reparaci\\u00f3n y regeneraci\\u00f3n continua de las estructuras cartilaginosas, reduce la erosi\\u00f3n del cart\\u00edlago en la artrosis, detiene la progresi\\u00f3n del desgaste, manteniendo la salud y flexibilidad de los cart\\u00edlagos en las articulaciones y el tejido conectivo.<br \\/><br \\/>Descripci\\u00f3n del producto<br \\/><br \\/><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/arti.png\\" alt=\\"\\" width=\\"193\\" height=\\"353\\" \\/>Presentaci\\u00f3n:<br \\/>Frasco con 60 y 100 c\\u00e1psulas.<br \\/><br \\/>Indicaci\\u00f3n terap\\u00e9utica:<br \\/>Coadyuvante en el tratamiento de la osteoartritis.<br \\/><br \\/>Dosis:<br \\/>1 c\\u00e1psula 3 veces al d\\u00eda.<br \\/><br \\/>Composici\\u00f3n:<br \\/>Sulfato de glucosamina \\u2026.500 mg<br \\/>Sulfato de condroitina\\u2026. 400 mg<br \\/><br \\/>Efectos secundarios:<br \\/>Podr\\u00eda presentarse diarrea, n\\u00e1useas, flatulencias.<br \\/><br \\/>Tiene alguna contraindicaci\\u00f3n:<br \\/>No utilizar en pacientes sensibles algunos de los componentes o a los mariscos. No se recomienda su uso en mujeres embarazadas o en per\\u00edodo de lactancia.<br \\/><br \\/>Recomendaci\\u00f3n de uso:<br \\/>No se recomienda su uso en mujeres embarazadas o en periodo de lactancia.<br \\/><br \\/>Tiene interacciones:<br \\/>Hipoglicemiantes orales: Puede disminuir el efecto de los hipogliceminates orales. Anticoagulantes: En pacientes en tratamiento con Artrifin\\u00ae y anticoagulantes, puede aumentar el riesgo de sangrado.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 19:42:29","created_by":"220","created_by_alias":"","modified":"2015-10-20 19:47:55","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 19:42:29","publish_up":"2015-10-20 19:42:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(64, 10, 1, '', '2015-10-20 19:48:50', 220, 3800, '48704449d7a3cc00bd16550a9418f35c9e5dffae', '{"id":10,"asset_id":"70","title":"Artrifin","alias":"artrifin","introtext":"<p>Artrifin\\u00ae es el medicamento natural m\\u00e1s potente y concentrado que alivia de manera eficiente los malestares, lesiones articulares, detiene de la degeneraci\\u00f3n articular, los problemas de artritis y osteoartritis.<br \\/><br \\/>Formulado con estandarizados extractos de clorhidrato de glucosamina y sulfato de condroitina, con una elevada concentraci\\u00f3n de principios activos encargados de estimular el porcentaje de absorci\\u00f3n, optimizando la reparaci\\u00f3n y regeneraci\\u00f3n continua de las estructuras cartilaginosas, reduce la erosi\\u00f3n del cart\\u00edlago en la artrosis, detiene la progresi\\u00f3n del desgaste, manteniendo la salud y flexibilidad de los cart\\u00edlagos en las articulaciones y el tejido conectivo.<br \\/><br \\/><strong>Descripci\\u00f3n del producto<\\/strong><br \\/><br \\/><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/arti.png\\" alt=\\"\\" width=\\"193\\" height=\\"353\\" \\/><strong>Presentaci\\u00f3n<\\/strong>:<br \\/>Frasco con 60 y 100 c\\u00e1psulas.<br \\/><br \\/><strong>Indicaci\\u00f3n terap\\u00e9utica<\\/strong>:<br \\/>Coadyuvante en el tratamiento de la osteoartritis.<br \\/><br \\/><strong>Dosis<\\/strong>:<br \\/>1 c\\u00e1psula 3 veces al d\\u00eda.<br \\/><br \\/><strong>Composici\\u00f3n<\\/strong>:<br \\/>Sulfato de glucosamina \\u2026.500 mg<br \\/>Sulfato de condroitina\\u2026. 400 mg<br \\/><br \\/><strong>Efectos secundarios<\\/strong>:<br \\/>Podr\\u00eda presentarse diarrea, n\\u00e1useas, flatulencias.<br \\/><br \\/><strong>Tiene alguna contraindicaci\\u00f3n<\\/strong>:<br \\/>No utilizar en pacientes sensibles algunos de los componentes o a los mariscos. No se recomienda su uso en mujeres embarazadas o en per\\u00edodo de lactancia.<br \\/><br \\/><strong>Recomendaci\\u00f3n de uso<\\/strong>:<br \\/>No se recomienda su uso en mujeres embarazadas o en periodo de lactancia.<br \\/><br \\/><strong>Tiene interacciones<\\/strong>:<br \\/>Hipoglicemiantes orales: Puede disminuir el efecto de los hipogliceminates orales. Anticoagulantes: En pacientes en tratamiento con Artrifin\\u00ae y anticoagulantes, puede aumentar el riesgo de sangrado.<\\/p>","fulltext":"","state":1,"catid":"10","created":"2015-10-20 19:42:29","created_by":"220","created_by_alias":"","modified":"2015-10-20 19:48:50","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 19:47:55","publish_up":"2015-10-20 19:42:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(65, 11, 6, '', '2015-10-20 20:00:04', 220, 566, 'f8ba7e5392c3d1ca53bb98a6f241496d5d610915', '{"id":11,"asset_id":71,"parent_id":"8","lft":"18","rgt":19,"level":2,"path":null,"extension":"com_content","title":"Limpiezas del cuerpo","alias":"limpiezas-del-cuerpo","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"220","created_time":"2015-10-20 20:00:04","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(66, 11, 1, '', '2015-10-20 20:01:05', 220, 2629, '63eaa31199e2f7ae8fdb89cf8d850e00fea9e9cd', '{"id":11,"asset_id":72,"title":"Drenal Plus","alias":"drenal-plus","introtext":"<p>El alto contenido en potasio en la formulaci\\u00f3n de DRENAL PLUS lo faculta como remedio diur\\u00e9tico para combatir la retenci\\u00f3n de l\\u00edquidos, lo que resulta eficaz para combatir la obesidad y enfermedades reum\\u00e1ticas asociadas a la retenci\\u00f3n de l\\u00edquidos.<\\/p>\\r\\n<p>La mezcla herbal de alcachofa y el diente de le\\u00f3n y laurel contenida en DRENAL PLUS lo hacen un excelente depurativo y t\\u00f3nico hepatico que ayuda en la recuperaci\\u00f3n en casos de enfermedades hep\\u00e1ticas, debido a sus principios activos como la cinarina, esta favorece la funci\\u00f3n billiar ayudando a la digesti\\u00f3n de las grasas. La virtud principal de la alcachofa radica en la capacidad que le proporcionan sus \\u00e1cidos y la cinarina para reducir el nivel de colesterol en la sangre. El diente de le\\u00f3n por su parte se utiliza para depurar la sangre de toxinas, acido \\u00farico, diabetes y mala circulaci\\u00f3n<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 20:01:05","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 20:01:05","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(67, 11, 1, '', '2015-10-20 20:02:33', 220, 2776, 'b94e67dc05798b3f545dc1592b6c5a17d40f98b6', '{"id":11,"asset_id":"72","title":"Drenal Plus","alias":"drenal-plus","introtext":"<p><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/drnal.png\\" alt=\\"\\" width=\\"146\\" height=\\"225\\" \\/>El alto contenido en potasio en la formulaci\\u00f3n de DRENAL PLUS lo faculta como remedio diur\\u00e9tico para combatir la retenci\\u00f3n de l\\u00edquidos, lo que resulta eficaz para combatir la obesidad y enfermedades reum\\u00e1ticas asociadas a la retenci\\u00f3n de l\\u00edquidos.<\\/p>\\r\\n<p>La mezcla herbal de alcachofa y el diente de le\\u00f3n y laurel contenida en DRENAL PLUS lo hacen un excelente depurativo y t\\u00f3nico hepatico que ayuda en la recuperaci\\u00f3n en casos de enfermedades hep\\u00e1ticas, debido a sus principios activos como la cinarina, esta favorece la funci\\u00f3n billiar ayudando a la digesti\\u00f3n de las grasas. La virtud principal de la alcachofa radica en la capacidad que le proporcionan sus \\u00e1cidos y la cinarina para reducir el nivel de colesterol en la sangre. El diente de le\\u00f3n por su parte se utiliza para depurar la sangre de toxinas, acido \\u00farico, diabetes y mala circulaci\\u00f3n<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 20:01:05","created_by":"220","created_by_alias":"","modified":"2015-10-20 20:02:33","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 20:01:05","publish_up":"2015-10-20 20:01:05","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(68, 11, 1, '', '2015-10-20 20:04:10', 220, 2838, '95a72424e2dc722374a03dcff73e73f2376226dd', '{"id":11,"asset_id":"72","title":"Drenal Plus","alias":"drenal-plus","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/drnal.png\\" alt=\\"\\" width=\\"146\\" height=\\"225\\" \\/>El alto contenido en potasio en la formulaci\\u00f3n de DRENAL PLUS lo faculta como remedio diur\\u00e9tico para combatir la retenci\\u00f3n de l\\u00edquidos, lo que resulta eficaz para combatir la obesidad y enfermedades reum\\u00e1ticas asociadas a la retenci\\u00f3n de l\\u00edquidos.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">La mezcla herbal de alcachofa y el diente de le\\u00f3n y laurel contenida en DRENAL PLUS lo hacen un excelente depurativo y t\\u00f3nico hepatico que ayuda en la recuperaci\\u00f3n en casos de enfermedades hep\\u00e1ticas, debido a sus principios activos como la cinarina, esta favorece la funci\\u00f3n billiar ayudando a la digesti\\u00f3n de las grasas. La virtud principal de la alcachofa radica en la capacidad que le proporcionan sus \\u00e1cidos y la cinarina para reducir el nivel de colesterol en la sangre. El diente de le\\u00f3n por su parte se utiliza para depurar la sangre de toxinas, acido \\u00farico, diabetes y mala circulaci\\u00f3n<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 20:01:05","created_by":"220","created_by_alias":"","modified":"2015-10-20 20:04:10","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 20:04:03","publish_up":"2015-10-20 20:01:05","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(69, 12, 1, '', '2015-10-20 20:07:58', 220, 2221, '21bee81e71ef6908c678ff03cc8ab79fa245b6f6', '{"id":12,"asset_id":73,"title":"Moringa - C\\u00e1psulas","alias":"moringa-capsulas","introtext":"<p>Las c\\u00e1psulas con extracto de moringa org\\u00e1nica son ideales para combatir problemas con la anemia por su alto contenido de calcio, hierro. Ayuda tambi\\u00e9n con problemas de diabetes, pues mejora la cicatrizaci\\u00f3n de la piel, aporta m\\u00e1s energ\\u00eda y apoya los niveles de az\\u00facar en la sangre. Adem\\u00e1s de prevenir los s\\u00edntomas m\\u00e1s serios, como la ceguera por diabetes, as\\u00ed como la infantil. Ayuda en el funcionamiento correcto del cuerpo para evitar la aparici\\u00f3n de alg\\u00fan tumor.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 20:07:58","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 20:07:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(70, 12, 1, '', '2015-10-20 20:09:28', 220, 3543, '55bba86612f2f3beac90efc69f2b56ab24e11157', '{"id":12,"asset_id":"73","title":"Moringa - C\\u00e1psulas","alias":"moringa-capsulas","introtext":"<p style=\\"text-align: justify;\\">Las c\\u00e1psulas con extracto de moringa org\\u00e1nica son ideales para combatir problemas con la anemia por su alto contenido de calcio, hierro. Ayuda tambi\\u00e9n con problemas de diabetes, pues mejora la cicatrizaci\\u00f3n de la piel, aporta m\\u00e1s energ\\u00eda y apoya los niveles de az\\u00facar en la sangre. Adem\\u00e1s de prevenir los s\\u00edntomas m\\u00e1s serios, como la ceguera por diabetes, as\\u00ed como la infantil. Ayuda en el funcionamiento correcto del cuerpo para evitar la aparici\\u00f3n de alg\\u00fan tumor.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Las c\\u00e1psulas con extracto de moringa org\\u00e1nica promueve la estructura celular del cuerpo, convirtiendo a las c\\u00e1psulas ideales para combatir problemas con la anemia por su alto contenido de hierro, mejorando la agilidad mental, contrarrestando el cansancio y calcio, ayudando en la coagulaci\\u00f3n de la sangre.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ayuda tambi\\u00e9n con problemas de diabetes, pues mejora la cicatrizaci\\u00f3n de la piel, aporta m\\u00e1s energ\\u00eda y apoya los niveles de az\\u00facar en la sangre. Adem\\u00e1s de prevenir los s\\u00edntomas m\\u00e1s serios, como la ceguera por diabetes, as\\u00ed como la ceguera infantil.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Incrementa las defensas naturales del cuerpo. Por lo cual al tomar un producto de Moringa se reduce considerablemente la probabilidad de enfermarse, manteniendose la persona saludable y siempre con energ\\u00eda.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Capacidad<\\/strong>:<br \\/>90 Cap. De 500 mg<br \\/><br \\/><strong>Ingredientes<\\/strong>:<br \\/>C\\u00e1psula de hoja de Moringa Org\\u00e1nica.<br \\/><br \\/><strong>Modo de empleo<\\/strong>:<br \\/>Dosis: 3 capsulas diarias. Una en cada alimento.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 20:07:58","created_by":"220","created_by_alias":"","modified":"2015-10-20 20:09:28","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 20:07:58","publish_up":"2015-10-20 20:07:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `bonna_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(71, 12, 1, '', '2015-10-20 20:11:59', 220, 3654, '1bde99289bde8b8d6dec78bb124ecedc2ae5d022', '{"id":12,"asset_id":"73","title":"Moringa - C\\u00e1psulas","alias":"moringa-capsulas","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/moringa.png\\" alt=\\"\\" width=\\"205\\" height=\\"291\\" \\/>Las c\\u00e1psulas con extracto de moringa org\\u00e1nica son ideales para combatir problemas con la anemia por su alto contenido de calcio, hierro. Ayuda tambi\\u00e9n con problemas de diabetes, pues mejora la cicatrizaci\\u00f3n de la piel, aporta m\\u00e1s energ\\u00eda y apoya los niveles de az\\u00facar en la sangre. Adem\\u00e1s de prevenir los s\\u00edntomas m\\u00e1s serios, como la ceguera por diabetes, as\\u00ed como la infantil. Ayuda en el funcionamiento correcto del cuerpo para evitar la aparici\\u00f3n de alg\\u00fan tumor.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Las c\\u00e1psulas con extracto de moringa org\\u00e1nica promueve la estructura celular del cuerpo, convirtiendo a las c\\u00e1psulas ideales para combatir problemas con la anemia por su alto contenido de hierro, mejorando la agilidad mental, contrarrestando el cansancio y calcio, ayudando en la coagulaci\\u00f3n de la sangre.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Ayuda tambi\\u00e9n con problemas de diabetes, pues mejora la cicatrizaci\\u00f3n de la piel, aporta m\\u00e1s energ\\u00eda y apoya los niveles de az\\u00facar en la sangre. Adem\\u00e1s de prevenir los s\\u00edntomas m\\u00e1s serios, como la ceguera por diabetes, as\\u00ed como la ceguera infantil.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Incrementa las defensas naturales del cuerpo. Por lo cual al tomar un producto de Moringa se reduce considerablemente la probabilidad de enfermarse, manteniendose la persona saludable y siempre con energ\\u00eda.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Capacidad<\\/strong>:<br \\/>90 Cap. De 500 mg<br \\/><br \\/><strong>Ingredientes<\\/strong>:<br \\/>C\\u00e1psula de hoja de Moringa Org\\u00e1nica.<br \\/><br \\/><strong>Modo de empleo<\\/strong>:<br \\/>Dosis: 3 capsulas diarias. Una en cada alimento.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 20:07:58","created_by":"220","created_by_alias":"","modified":"2015-10-20 20:11:59","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 20:09:28","publish_up":"2015-10-20 20:07:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(72, 12, 6, '', '2015-10-20 20:36:35', 220, 570, 'd53e072aa8276e045d28a432d9e195443517472e', '{"id":12,"asset_id":74,"parent_id":"8","lft":"20","rgt":21,"level":2,"path":null,"extension":"com_content","title":"Suplementos Deportivos","alias":"suplementos-deportivos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"220","created_time":"2015-10-20 20:36:35","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(73, 13, 1, '', '2015-10-20 21:45:14', 220, 2411, '9bb007f03fbc5ad98f90995c134522b399091964', '{"id":13,"asset_id":75,"title":"Colon Sano","alias":"colon-sano","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/colosano.jpg\\" alt=\\"\\" width=\\"106\\" height=\\"240\\" \\/>Las capsulas Colon Sano, tienen una funci\\u00f3n de laxante suave y a su vez de Coadyuvante para controlar estre\\u00f1imiento, lo que provee en gran medida una limpieza natural del colon.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Recomendaci\\u00f3n:<\\/strong><\\/p>\\r\\n<p style=\\"text-align: justify;\\">Es importante mencionar que, si se presenta alg\\u00fan tipo de reacci\\u00f3n al\\u00e9rgica, debe suspenderse inmediatamente.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis:<\\/strong><\\/p>\\r\\n<p style=\\"text-align: justify;\\">Dos capsulas a la hora en la noche, antes de dormir.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 21:45:14","created_by":"220","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-10-20 21:45:14","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(74, 13, 1, '', '2015-10-20 21:48:35', 220, 2451, '9d8bddd129ccf7b295a941e6724b161aa8bb56ca', '{"id":13,"asset_id":"75","title":"Colon Sano","alias":"colon-sano","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"float: left; margin: 20px;\\" src=\\"images\\/colondoble.jpg\\" alt=\\"\\" width=\\"224\\" height=\\"244\\" \\/>Las capsulas Colon Sano, tienen una funci\\u00f3n de laxante suave y a su vez de Coadyuvante para controlar estre\\u00f1imiento, lo que provee en gran medida una limpieza natural del colon.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Recomendaci\\u00f3n:<\\/strong><\\/p>\\r\\n<p style=\\"text-align: justify;\\">Es importante mencionar que, si se presenta alg\\u00fan tipo de reacci\\u00f3n al\\u00e9rgica, debe suspenderse inmediatamente.<\\/p>\\r\\n<p style=\\"text-align: justify;\\"><strong>Dosis:<\\/strong><\\/p>\\r\\n<p style=\\"text-align: justify;\\">Dos capsulas a la hora en la noche, antes de dormir.<\\/p>","fulltext":"","state":1,"catid":"11","created":"2015-10-20 21:45:14","created_by":"220","created_by_alias":"","modified":"2015-10-20 21:48:35","modified_by":"220","checked_out":"220","checked_out_time":"2015-10-20 21:45:14","publish_up":"2015-10-20 21:45:14","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_updates`
--

CREATE TABLE IF NOT EXISTS `bonna_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_update_sites`
--

CREATE TABLE IF NOT EXISTS `bonna_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `bonna_update_sites`
--

INSERT INTO `bonna_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Directorio de Extensiones Joomla', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 0, 0, ''),
(5, 'Slideshow CK Update', 'extension', 'http://update.joomlack.fr/mod_slideshowck_update.xml', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bonna_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `bonna_update_sites_extensions`
--

INSERT INTO `bonna_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 702),
(4, 703),
(4, 704),
(5, 705);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_usergroups`
--

CREATE TABLE IF NOT EXISTS `bonna_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_usergroups`
--

INSERT INTO `bonna_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Publico'),
(2, 1, 8, 15, 'Registrado'),
(3, 2, 9, 14, 'Autor'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publicador'),
(6, 1, 4, 7, 'Gestor'),
(7, 6, 5, 6, 'Administrador'),
(8, 1, 16, 17, 'Super Usuarios'),
(9, 1, 2, 3, 'Invitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_users`
--

CREATE TABLE IF NOT EXISTS `bonna_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_users`
--

INSERT INTO `bonna_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(220, 'Super Usuario', 'arturohv', 'arturohv@gmail.com', '$2y$10$HNLEaUjpalln.RvxmS.VZ.bD2JuHWhfHM7oUt0GSm8DELaCTMpU/C', 0, 1, '2015-09-08 21:27:07', '2015-10-20 22:15:21', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(221, 'Baudilio Araya Soto', 'baudilioas', 'baudyara@hotmail.com', '$2y$10$Xifl/ziZlvdN4GjSW21l4Ocgbt8JlrtgnfI34Ssjn.xXy.wlSS15m', 0, 0, '2015-10-09 01:07:54', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_user_keys`
--

CREATE TABLE IF NOT EXISTS `bonna_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_user_notes`
--

CREATE TABLE IF NOT EXISTS `bonna_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bonna_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bonna_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_user_usergroup_map`
--

INSERT INTO `bonna_user_usergroup_map` (`user_id`, `group_id`) VALUES
(220, 8),
(221, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bonna_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bonna_viewlevels`
--

INSERT INTO `bonna_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Publico', 0, '[1]'),
(2, 'Registrado', 1, '[6,2,8]'),
(3, 'Especial', 2, '[6,3,8]'),
(5, 'Invitado', 0, '[9]'),
(6, 'Super usuarios', 0, '[8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonna_weblinks`
--

CREATE TABLE IF NOT EXISTS `bonna_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bonna_assets`
--
ALTER TABLE `bonna_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `bonna_associations`
--
ALTER TABLE `bonna_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `bonna_banners`
--
ALTER TABLE `bonna_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bonna_banner_clients`
--
ALTER TABLE `bonna_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indices de la tabla `bonna_banner_tracks`
--
ALTER TABLE `bonna_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `bonna_categories`
--
ALTER TABLE `bonna_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bonna_contact_details`
--
ALTER TABLE `bonna_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `bonna_content`
--
ALTER TABLE `bonna_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `bonna_contentitem_tag_map`
--
ALTER TABLE `bonna_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `bonna_content_frontpage`
--
ALTER TABLE `bonna_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `bonna_content_rating`
--
ALTER TABLE `bonna_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `bonna_content_types`
--
ALTER TABLE `bonna_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indices de la tabla `bonna_extensions`
--
ALTER TABLE `bonna_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `bonna_finder_filters`
--
ALTER TABLE `bonna_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `bonna_finder_links`
--
ALTER TABLE `bonna_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `bonna_finder_links_terms0`
--
ALTER TABLE `bonna_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms1`
--
ALTER TABLE `bonna_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms2`
--
ALTER TABLE `bonna_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms3`
--
ALTER TABLE `bonna_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms4`
--
ALTER TABLE `bonna_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms5`
--
ALTER TABLE `bonna_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms6`
--
ALTER TABLE `bonna_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms7`
--
ALTER TABLE `bonna_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms8`
--
ALTER TABLE `bonna_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_terms9`
--
ALTER TABLE `bonna_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_termsa`
--
ALTER TABLE `bonna_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_termsb`
--
ALTER TABLE `bonna_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_termsc`
--
ALTER TABLE `bonna_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_termsd`
--
ALTER TABLE `bonna_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_termse`
--
ALTER TABLE `bonna_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_links_termsf`
--
ALTER TABLE `bonna_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bonna_finder_taxonomy`
--
ALTER TABLE `bonna_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `bonna_finder_taxonomy_map`
--
ALTER TABLE `bonna_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `bonna_finder_terms`
--
ALTER TABLE `bonna_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indices de la tabla `bonna_finder_terms_common`
--
ALTER TABLE `bonna_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `bonna_finder_tokens`
--
ALTER TABLE `bonna_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indices de la tabla `bonna_finder_tokens_aggregate`
--
ALTER TABLE `bonna_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `bonna_finder_types`
--
ALTER TABLE `bonna_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `bonna_jaem_log`
--
ALTER TABLE `bonna_jaem_log`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ext_id` (`ext_id`);

--
-- Indices de la tabla `bonna_jaem_services`
--
ALTER TABLE `bonna_jaem_services`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bonna_languages`
--
ALTER TABLE `bonna_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `bonna_menu`
--
ALTER TABLE `bonna_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bonna_menu_types`
--
ALTER TABLE `bonna_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `bonna_messages`
--
ALTER TABLE `bonna_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `bonna_messages_cfg`
--
ALTER TABLE `bonna_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `bonna_modules`
--
ALTER TABLE `bonna_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bonna_modules_menu`
--
ALTER TABLE `bonna_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `bonna_newsfeeds`
--
ALTER TABLE `bonna_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `bonna_overrider`
--
ALTER TABLE `bonna_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bonna_postinstall_messages`
--
ALTER TABLE `bonna_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `bonna_redirect_links`
--
ALTER TABLE `bonna_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indices de la tabla `bonna_schemas`
--
ALTER TABLE `bonna_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `bonna_session`
--
ALTER TABLE `bonna_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indices de la tabla `bonna_tags`
--
ALTER TABLE `bonna_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bonna_template_styles`
--
ALTER TABLE `bonna_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indices de la tabla `bonna_ucm_base`
--
ALTER TABLE `bonna_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `bonna_ucm_content`
--
ALTER TABLE `bonna_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `bonna_ucm_history`
--
ALTER TABLE `bonna_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `bonna_updates`
--
ALTER TABLE `bonna_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `bonna_update_sites`
--
ALTER TABLE `bonna_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `bonna_update_sites_extensions`
--
ALTER TABLE `bonna_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `bonna_usergroups`
--
ALTER TABLE `bonna_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `bonna_users`
--
ALTER TABLE `bonna_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indices de la tabla `bonna_user_keys`
--
ALTER TABLE `bonna_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `bonna_user_notes`
--
ALTER TABLE `bonna_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `bonna_user_profiles`
--
ALTER TABLE `bonna_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `bonna_user_usergroup_map`
--
ALTER TABLE `bonna_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `bonna_viewlevels`
--
ALTER TABLE `bonna_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indices de la tabla `bonna_weblinks`
--
ALTER TABLE `bonna_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bonna_assets`
--
ALTER TABLE `bonna_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `bonna_banners`
--
ALTER TABLE `bonna_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_banner_clients`
--
ALTER TABLE `bonna_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_categories`
--
ALTER TABLE `bonna_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `bonna_contact_details`
--
ALTER TABLE `bonna_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_content`
--
ALTER TABLE `bonna_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `bonna_content_types`
--
ALTER TABLE `bonna_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `bonna_extensions`
--
ALTER TABLE `bonna_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=707;
--
-- AUTO_INCREMENT de la tabla `bonna_finder_filters`
--
ALTER TABLE `bonna_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_finder_links`
--
ALTER TABLE `bonna_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_finder_taxonomy`
--
ALTER TABLE `bonna_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `bonna_finder_terms`
--
ALTER TABLE `bonna_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_finder_types`
--
ALTER TABLE `bonna_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_jaem_log`
--
ALTER TABLE `bonna_jaem_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_jaem_services`
--
ALTER TABLE `bonna_jaem_services`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `bonna_languages`
--
ALTER TABLE `bonna_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `bonna_menu`
--
ALTER TABLE `bonna_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT de la tabla `bonna_menu_types`
--
ALTER TABLE `bonna_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `bonna_messages`
--
ALTER TABLE `bonna_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_modules`
--
ALTER TABLE `bonna_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT de la tabla `bonna_newsfeeds`
--
ALTER TABLE `bonna_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_overrider`
--
ALTER TABLE `bonna_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT de la tabla `bonna_postinstall_messages`
--
ALTER TABLE `bonna_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `bonna_redirect_links`
--
ALTER TABLE `bonna_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_tags`
--
ALTER TABLE `bonna_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `bonna_template_styles`
--
ALTER TABLE `bonna_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `bonna_ucm_content`
--
ALTER TABLE `bonna_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_ucm_history`
--
ALTER TABLE `bonna_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT de la tabla `bonna_updates`
--
ALTER TABLE `bonna_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_update_sites`
--
ALTER TABLE `bonna_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `bonna_usergroups`
--
ALTER TABLE `bonna_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `bonna_users`
--
ALTER TABLE `bonna_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT de la tabla `bonna_user_keys`
--
ALTER TABLE `bonna_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_user_notes`
--
ALTER TABLE `bonna_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bonna_viewlevels`
--
ALTER TABLE `bonna_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `bonna_weblinks`
--
ALTER TABLE `bonna_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
