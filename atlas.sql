-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2019 a las 18:14:58
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `atlas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-04 02:19:14', '2019-09-04 02:19:14', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Atlas', 'yes'),
(2, 'home', 'http://localhost/Atlas', 'yes'),
(3, 'blogname', 'Atlas Media', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lluuiss1299@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"html5-blank/?$\";s:31:\"index.php?post_type=html5-blank\";s:44:\"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:39:\"html5-blank/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:31:\"html5-blank/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=html5-blank&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"html5-blank/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"html5-blank/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"html5-blank/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"html5-blank/(.+?)/embed/?$\";s:44:\"index.php?html5-blank=$matches[1]&embed=true\";s:30:\"html5-blank/(.+?)/trackback/?$\";s:38:\"index.php?html5-blank=$matches[1]&tb=1\";s:50:\"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:45:\"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:38:\"html5-blank/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&paged=$matches[2]\";s:45:\"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&cpage=$matches[2]\";s:34:\"html5-blank/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?html5-blank=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=56&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'html5blank-stable', 'yes'),
(41, 'stylesheet', 'html5blank-stable', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '2', 'yes'),
(84, 'page_on_front', '56', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_MX', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-1\";a:0:{}s:13:\"widget-area-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1568823557;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568859556;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568859557;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568859583;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568859586;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567563993;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'HTML5 Blank', 'yes'),
(144, 'theme_mods_html5blank-stable', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"header-menu\";i:4;s:12:\"sidebar-menu\";i:0;s:10:\"extra-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(171, 'recently_activated', 'a:0:{}', 'yes'),
(177, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.3-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1568820396;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(178, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1568820403;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(179, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1568820402;s:7:\"checked\";a:4:{s:17:\"html5blank-stable\";s:5:\"1.4.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(180, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1567586732;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(222, '_site_transient_timeout_theme_roots', '1568822202', 'no'),
(223, '_site_transient_theme_roots', 'a:4:{s:17:\"html5blank-stable\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(225, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1567586571:1'),
(6, 7, '_edit_lock', '1567566732:1'),
(27, 11, '_menu_item_type', 'taxonomy'),
(28, 11, '_menu_item_menu_item_parent', '0'),
(29, 11, '_menu_item_object_id', '3'),
(30, 11, '_menu_item_object', 'category'),
(31, 11, '_menu_item_target', ''),
(32, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 11, '_menu_item_xfn', ''),
(34, 11, '_menu_item_url', ''),
(36, 12, '_menu_item_type', 'taxonomy'),
(37, 12, '_menu_item_menu_item_parent', '0'),
(38, 12, '_menu_item_object_id', '2'),
(39, 12, '_menu_item_object', 'category'),
(40, 12, '_menu_item_target', ''),
(41, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 12, '_menu_item_xfn', ''),
(43, 12, '_menu_item_url', ''),
(45, 13, '_edit_lock', '1567566718:1'),
(48, 15, '_edit_lock', '1568820394:1'),
(59, 17, '_edit_lock', '1567589984:1'),
(66, 22, '_form', '<label> Tu Nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu Mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(67, 22, '_mail', 'a:8:{s:7:\"subject\";s:28:\"Atlas Media \"[your-subject]\"\";s:6:\"sender\";s:35:\"Atlas Media <lluuiss1299@gmail.com>\";s:4:\"body\";s:193:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\";s:9:\"recipient\";s:21:\"lluuiss1299@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(68, 22, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"Atlas Media \"[your-subject]\"\";s:6:\"sender\";s:35:\"Atlas Media <lluuiss1299@gmail.com>\";s:4:\"body\";s:138:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:31:\"Reply-To: lluuiss1299@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(69, 22, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:51:\"Gracias por tu mensaje. El mensaje ha sido enviado.\";s:12:\"mail_sent_ng\";s:77:\"Hubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\";s:16:\"validation_error\";s:70:\"Uno o más campos tienen un error. Por favor revíselo y reinténtelo.\";s:4:\"spam\";s:77:\"Hubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\";s:12:\"accept_terms\";s:68:\"Debe aceptar los términos y condiciones antes de enviar su mensaje.\";s:16:\"invalid_required\";s:24:\"Este campo es requerido.\";s:16:\"invalid_too_long\";s:32:\"El texto del campo es muy largo.\";s:17:\"invalid_too_short\";s:32:\"El texto del campo es muy corto.\";}'),
(70, 22, '_additional_settings', NULL),
(71, 22, '_locale', 'es_MX'),
(72, 23, '_form', '<label><span>Nombre</span>\n    <input type=\"text\" name=\"name\"> </label>\n\n<label><span>Email</span>\n    <input type=\"email\" name=\"email\"> </label>\n\n<label> <span>Mensaje</span>\n    <textarea name=\"message\" ></textarea> </label>\n\n<button type=\"submit\" class=\"btn right\">Enviar</button>'),
(73, 23, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:11:\"Atlas Media\";s:6:\"sender\";s:35:\"Atlas Media <lluuiss1299@gmail.com>\";s:9:\"recipient\";s:21:\"lluuiss1299@gmail.com\";s:4:\"body\";s:193:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\";s:18:\"additional_headers\";s:32:\"Reply-To: lluuiiss1299@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(74, 23, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"Atlas Media \"[your-subject]\"\";s:6:\"sender\";s:35:\"Atlas Media <lluuiss1299@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:138:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\";s:18:\"additional_headers\";s:31:\"Reply-To: lluuiss1299@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(75, 23, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:51:\"Gracias por tu mensaje. El mensaje ha sido enviado.\";s:12:\"mail_sent_ng\";s:77:\"Hubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\";s:16:\"validation_error\";s:70:\"Uno o más campos tienen un error. Por favor revíselo y reinténtelo.\";s:4:\"spam\";s:77:\"Hubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\";s:12:\"accept_terms\";s:68:\"Debe aceptar los términos y condiciones antes de enviar su mensaje.\";s:16:\"invalid_required\";s:24:\"Este campo es requerido.\";s:16:\"invalid_too_long\";s:32:\"El texto del campo es muy largo.\";s:17:\"invalid_too_short\";s:32:\"El texto del campo es muy corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:36:\"La fecha es anterior a la permitida.\";s:13:\"date_too_late\";s:37:\"La fecha es posterior a la permitida.\";s:13:\"upload_failed\";s:50:\"Sucedió un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:45:\"No se le permite subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:25:\"El archivo es muy pesado.\";s:23:\"upload_failed_php_error\";s:38:\"Ocurrió un error al subir el archivo.\";s:14:\"invalid_number\";s:36:\"El formato del número es inválido.\";s:16:\"number_too_small\";s:41:\"El número es menor al mínimo permitido.\";s:16:\"number_too_large\";s:41:\"El número es mayor al máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:35:\"La respuesta al quiz es incorrecta.\";s:17:\"captcha_not_match\";s:36:\"Tu código introducido es incorrecto\";s:13:\"invalid_email\";s:45:\"La dirección de email ingresada es invalida.\";s:11:\"invalid_url\";s:20:\"La URL es inválida.\";s:11:\"invalid_tel\";s:37:\"El número de teléfono es inválido.\";}'),
(76, 23, '_additional_settings', ''),
(77, 23, '_locale', 'es_MX'),
(78, 24, '_edit_lock', '1567595970:1'),
(84, 27, '_edit_lock', '1567590029:1'),
(87, 29, '_edit_lock', '1567590104:1'),
(90, 31, '_edit_lock', '1567590127:1'),
(93, 33, '_edit_lock', '1567590156:1'),
(98, 35, '_edit_lock', '1567590214:1'),
(101, 37, '_edit_lock', '1567590250:1'),
(104, 39, '_edit_lock', '1567590271:1'),
(107, 41, '_edit_lock', '1567590296:1'),
(111, 44, '_edit_lock', '1567593778:1'),
(116, 46, '_edit_lock', '1567594291:1'),
(123, 50, '_edit_lock', '1567594894:1'),
(129, 15, '_wp_trash_meta_status', 'publish'),
(130, 15, '_wp_trash_meta_time', '1568820539'),
(131, 15, '_wp_desired_post_slug', 'contacto'),
(132, 13, '_wp_trash_meta_status', 'publish'),
(133, 13, '_wp_trash_meta_time', '1568820550'),
(134, 13, '_wp_desired_post_slug', 'servicio'),
(135, 7, '_wp_trash_meta_status', 'publish'),
(136, 7, '_wp_trash_meta_time', '1568820553'),
(137, 7, '_wp_desired_post_slug', 'nosotros'),
(138, 5, '_wp_trash_meta_status', 'publish'),
(139, 5, '_wp_trash_meta_time', '1568820556'),
(140, 5, '_wp_desired_post_slug', 'inicio'),
(141, 54, '_menu_item_type', 'taxonomy'),
(142, 54, '_menu_item_menu_item_parent', '0'),
(143, 54, '_menu_item_object_id', '6'),
(144, 54, '_menu_item_object', 'category'),
(145, 54, '_menu_item_target', ''),
(146, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 54, '_menu_item_xfn', ''),
(148, 54, '_menu_item_url', ''),
(150, 55, '_menu_item_type', 'taxonomy'),
(151, 55, '_menu_item_menu_item_parent', '0'),
(152, 55, '_menu_item_object_id', '8'),
(153, 55, '_menu_item_object', 'category'),
(154, 55, '_menu_item_target', ''),
(155, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 55, '_menu_item_xfn', ''),
(157, 55, '_menu_item_url', ''),
(159, 56, '_edit_lock', '1568820975:1'),
(160, 56, '_wp_page_template', 'page-home.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-04 02:19:14', '2019-09-04 02:19:14', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-09-04 02:19:14', '2019-09-04 02:19:14', '', 0, 'http://localhost/Atlas/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-04 02:19:14', '2019-09-04 02:19:14', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/Atlas/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2019-09-04 02:19:14', '2019-09-04 02:19:14', '', 0, 'http://localhost/Atlas/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-04 02:19:14', '2019-09-04 02:19:14', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/Atlas.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-09-04 02:19:14', '2019-09-04 02:19:14', '', 0, 'http://localhost/Atlas/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-09-04 03:03:31', '2019-09-04 03:03:31', '', 'Inicio', '', 'trash', 'open', 'open', '', 'inicio__trashed', '', '', '2019-09-18 15:29:16', '2019-09-18 15:29:16', '', 0, 'http://localhost/Atlas/?p=5', 0, 'post', '', 0),
(6, 1, '2019-09-04 03:03:31', '2019-09-04 03:03:31', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-04 03:03:31', '2019-09-04 03:03:31', '', 5, 'http://localhost/Atlas/2019/09/04/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-09-04 03:03:56', '2019-09-04 03:03:56', '', 'Nosotros', '', 'trash', 'open', 'open', '', 'nosotros__trashed', '', '', '2019-09-18 15:29:13', '2019-09-18 15:29:13', '', 0, 'http://localhost/Atlas/?p=7', 0, 'post', '', 0),
(8, 1, '2019-09-04 03:03:56', '2019-09-04 03:03:56', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-09-04 03:03:56', '2019-09-04 03:03:56', '', 7, 'http://localhost/Atlas/2019/09/04/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-09-04 03:05:19', '2019-09-04 03:05:19', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2019-09-18 16:02:17', '2019-09-18 16:02:17', '', 0, 'http://localhost/Atlas/?p=11', 4, 'nav_menu_item', '', 0),
(12, 1, '2019-09-04 03:05:18', '2019-09-04 03:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-09-18 16:02:17', '2019-09-18 16:02:17', '', 0, 'http://localhost/Atlas/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2019-09-04 03:12:47', '2019-09-04 03:12:47', '', 'Servicio', '', 'trash', 'open', 'open', '', 'servicio__trashed', '', '', '2019-09-18 15:29:10', '2019-09-18 15:29:10', '', 0, 'http://localhost/Atlas/?p=13', 0, 'post', '', 0),
(14, 1, '2019-09-04 03:12:47', '2019-09-04 03:12:47', '', 'Servicio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-04 03:12:47', '2019-09-04 03:12:47', '', 13, 'http://localhost/Atlas/2019/09/04/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-09-04 03:13:05', '2019-09-04 03:13:05', '', 'Contacto', '', 'trash', 'open', 'open', '', 'contacto__trashed', '', '', '2019-09-18 15:28:59', '2019-09-18 15:28:59', '', 0, 'http://localhost/Atlas/?p=15', 0, 'post', '', 0),
(16, 1, '2019-09-04 03:13:05', '2019-09-04 03:13:05', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-09-04 03:13:05', '2019-09-04 03:13:05', '', 15, 'http://localhost/Atlas/2019/09/04/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-09-04 08:24:54', '2019-09-04 08:24:54', '<!-- wp:html -->\n<section class=\"inner\">\n     <div>\n     <h1 class=\"animated fadeInUp\">Make <span>likes</span>,<br>not war<span>. \n     </span></h1>\n        <h2 class=\"animated fadeInUp\"><span>And don\'t forget</span> Amor</h2>\n     </div>\n</section>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'open', 'open', '', 'inicio-2', '', '', '2019-09-04 09:42:14', '2019-09-04 09:42:14', '', 0, 'http://localhost/Atlas/?p=17', 0, 'post', '', 0),
(18, 1, '2019-09-04 08:20:09', '2019-09-04 08:20:09', '<!-- wp:heading -->\n<h2>likes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>, not war  </h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2> . </h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>And don\'t forget </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nAmor\n\n</p>\n<!-- /wp:paragraph -->', 'Make', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-09-04 08:20:09', '2019-09-04 08:20:09', '', 17, 'http://localhost/Atlas/2019/09/04/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-09-04 08:24:54', '2019-09-04 08:24:54', '<!-- wp:html -->\n<section class=\"inner\">\n     <div>\n     <h1 class=\"animated fadeInUp\">Make <span>likes</span>,<br>not war<span>. \n     </span></h1>\n        <h2 class=\"animated fadeInUp\"><span>And don\'t forget</span> Amor</h2>\n     </div>\n</section>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-09-04 08:24:54', '2019-09-04 08:24:54', '', 17, 'http://localhost/Atlas/2019/09/04/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-09-04 08:29:11', '2019-09-04 08:29:11', '<!-- wp:html -->\n<section class=\"inner\">\n     <div>\n     <h1 class=\"animated fadeInUp\">Make <span>likes</span>,<br>not war<span>. \n     </span></h1>\n        <h2 class=\"animated fadeInUp\"><span>And don\'t forget</span> Amor</h2>\n     </div>\n</section>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-09-04 08:29:11', '2019-09-04 08:29:11', '', 17, 'http://localhost/Atlas/2019/09/04/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-09-04 08:45:31', '2019-09-04 08:45:31', '<label> Tu Nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu Mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]\nAtlas Media \"[your-subject]\"\nAtlas Media <lluuiss1299@gmail.com>\nDe: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\nlluuiss1299@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nAtlas Media \"[your-subject]\"\nAtlas Media <lluuiss1299@gmail.com>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\n[your-email]\nReply-To: lluuiss1299@gmail.com\n\n0\n0\nGracias por tu mensaje. El mensaje ha sido enviado.\nHubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\nUno o más campos tienen un error. Por favor revíselo y reinténtelo.\nHubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\nDebe aceptar los términos y condiciones antes de enviar su mensaje.\nEste campo es requerido.\nEl texto del campo es muy largo.\nEl texto del campo es muy corto.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2019-09-04 08:45:31', '2019-09-04 08:45:31', '', 0, 'http://localhost/Atlas/?post_type=wpcf7_contact_form&p=22', 0, 'wpcf7_contact_form', '', 0),
(23, 1, '2019-09-04 08:47:07', '2019-09-04 08:47:07', '<label><span>Nombre</span>\r\n    <input type=\"text\" name=\"name\"> </label>\r\n\r\n<label><span>Email</span>\r\n    <input type=\"email\" name=\"email\"> </label>\r\n\r\n<label> <span>Mensaje</span>\r\n    <textarea name=\"message\" ></textarea> </label>\r\n\r\n<button type=\"submit\" class=\"btn right\">Enviar</button>\n1\nAtlas Media\nAtlas Media <lluuiss1299@gmail.com>\nlluuiss1299@gmail.com\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\nReply-To: lluuiiss1299@gmail.com\n\n\n\n\nAtlas Media \"[your-subject]\"\nAtlas Media <lluuiss1299@gmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Atlas Media (http://localhost/Atlas)\nReply-To: lluuiss1299@gmail.com\n\n\n\nGracias por tu mensaje. El mensaje ha sido enviado.\nHubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\nUno o más campos tienen un error. Por favor revíselo y reinténtelo.\nHubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\nDebe aceptar los términos y condiciones antes de enviar su mensaje.\nEste campo es requerido.\nEl texto del campo es muy largo.\nEl texto del campo es muy corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la permitida.\nLa fecha es posterior a la permitida.\nSucedió un error desconocido al subir el archivo.\nNo se le permite subir archivos de este tipo.\nEl archivo es muy pesado.\nOcurrió un error al subir el archivo.\nEl formato del número es inválido.\nEl número es menor al mínimo permitido.\nEl número es mayor al máximo permitido.\nLa respuesta al quiz es incorrecta.\nTu código introducido es incorrecto\nLa dirección de email ingresada es invalida.\nLa URL es inválida.\nEl número de teléfono es inválido.', 'Formulario Atlas', '', 'publish', 'closed', 'closed', '', 'sin-titulo', '', '', '2019-09-04 11:23:16', '2019-09-04 11:23:16', '', 0, 'http://localhost/Atlas/?post_type=wpcf7_contact_form&#038;p=23', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2019-09-04 08:48:07', '2019-09-04 08:48:07', '<!-- wp:shortcode -->\n[contact-form-7 id=\"23\" title=\"Formulario Atlas\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'open', 'open', '', '24', '', '', '2019-09-04 11:14:55', '2019-09-04 11:14:55', '', 0, 'http://localhost/Atlas/?p=24', 0, 'post', '', 0),
(25, 1, '2019-09-04 08:48:07', '2019-09-04 08:48:07', '<!-- wp:shortcode -->\n[contact-form-7 id=\"23\" title=\"Sin título\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-09-04 08:48:07', '2019-09-04 08:48:07', '', 24, 'http://localhost/Atlas/2019/09/04/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-09-04 09:42:49', '2019-09-04 09:42:49', '', 'Estrategia Digital', 'Unimos inteligencia, data e innovación para conectar  tu marca con tu audiencia', 'publish', 'open', 'open', '', 'estrategia-digital', '', '', '2019-09-04 09:42:49', '2019-09-04 09:42:49', '', 0, 'http://localhost/Atlas/?p=27', 0, 'post', '', 0),
(28, 1, '2019-09-04 09:42:49', '2019-09-04 09:42:49', '', 'Estrategia Digital', 'Unimos inteligencia, data e innovación para conectar  tu marca con tu audiencia', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-09-04 09:42:49', '2019-09-04 09:42:49', '', 27, 'http://localhost/Atlas/2019/09/04/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-09-04 09:44:05', '2019-09-04 09:44:05', '', 'Desarrollo Web', 'Somos expertos en desarrollar sitios web, tiendas online y  apps móviles', 'publish', 'open', 'open', '', 'desarrollo-web', '', '', '2019-09-04 09:44:05', '2019-09-04 09:44:05', '', 0, 'http://localhost/Atlas/?p=29', 0, 'post', '', 0),
(30, 1, '2019-09-04 09:44:05', '2019-09-04 09:44:05', '', 'Desarrollo Web', 'Somos expertos en desarrollar sitios web, tiendas online y  apps móviles', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-04 09:44:05', '2019-09-04 09:44:05', '', 29, 'http://localhost/Atlas/2019/09/04/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-09-04 09:44:28', '2019-09-04 09:44:28', '', 'SEO y SEM', 'Sabemos cómo hacer que tus clientes potenciales te vean primero', 'publish', 'open', 'open', '', 'seo-y-sem', '', '', '2019-09-04 09:44:28', '2019-09-04 09:44:28', '', 0, 'http://localhost/Atlas/?p=31', 0, 'post', '', 0),
(32, 1, '2019-09-04 09:44:28', '2019-09-04 09:44:28', '', 'SEO y SEM', 'Sabemos cómo hacer que tus clientes potenciales te vean primero', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-09-04 09:44:28', '2019-09-04 09:44:28', '', 31, 'http://localhost/Atlas/2019/09/04/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-09-04 09:44:53', '2019-09-04 09:44:53', '', 'Contenidos Multiplataforma', 'Nuestro principal motor es el contenido: contamos historias que inspiran', 'publish', 'open', 'open', '', 'contenidos-multiplataforma', '', '', '2019-09-04 09:45:06', '2019-09-04 09:45:06', '', 0, 'http://localhost/Atlas/?p=33', 0, 'post', '', 0),
(34, 1, '2019-09-04 09:44:53', '2019-09-04 09:44:53', '', 'Contenidos Multiplataforma', 'Nuestro principal motor es el contenido: contamos historias que inspiran', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-09-04 09:44:53', '2019-09-04 09:44:53', '', 33, 'http://localhost/Atlas/2019/09/04/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-09-04 09:45:55', '2019-09-04 09:45:55', '', 'Social Media', 'Conquistamos audiencias escuchándolos y analizando datos', 'publish', 'open', 'open', '', 'social-media', '', '', '2019-09-04 09:45:55', '2019-09-04 09:45:55', '', 0, 'http://localhost/Atlas/?p=35', 0, 'post', '', 0),
(36, 1, '2019-09-04 09:45:55', '2019-09-04 09:45:55', '', 'Social Media', 'Conquistamos audiencias escuchándolos y analizando datos', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-09-04 09:45:55', '2019-09-04 09:45:55', '', 35, 'http://localhost/Atlas/2019/09/04/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-09-04 09:46:32', '2019-09-04 09:46:32', '', 'Dirección de Arte', 'Nuestros diseñadores son artistas de experiencias creativas', 'publish', 'open', 'open', '', 'direccion-de-arte', '', '', '2019-09-04 09:46:32', '2019-09-04 09:46:32', '', 0, 'http://localhost/Atlas/?p=37', 0, 'post', '', 0),
(38, 1, '2019-09-04 09:46:32', '2019-09-04 09:46:32', '', 'Dirección de Arte', 'Nuestros diseñadores son artistas de experiencias creativas', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-09-04 09:46:32', '2019-09-04 09:46:32', '', 37, 'http://localhost/Atlas/2019/09/04/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-09-04 09:46:53', '2019-09-04 09:46:53', '', 'Producción Audiovisual', 'Somos creadores de videos y streamings en vivo de primer nivel', 'publish', 'open', 'open', '', 'produccion-audiovisual', '', '', '2019-09-04 09:46:53', '2019-09-04 09:46:53', '', 0, 'http://localhost/Atlas/?p=39', 0, 'post', '', 0),
(40, 1, '2019-09-04 09:46:53', '2019-09-04 09:46:53', '', 'Producción Audiovisual', 'Somos creadores de videos y streamings en vivo de primer nivel', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-04 09:46:53', '2019-09-04 09:46:53', '', 39, 'http://localhost/Atlas/2019/09/04/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-09-04 09:47:13', '2019-09-04 09:47:13', '', 'Media Buying', 'Invertimos de forma eficiente para convertir a usuarios en clientes', 'publish', 'open', 'open', '', 'media-buying', '', '', '2019-09-04 09:47:13', '2019-09-04 09:47:13', '', 0, 'http://localhost/Atlas/?p=41', 0, 'post', '', 0),
(42, 1, '2019-09-04 09:47:13', '2019-09-04 09:47:13', '', 'Media Buying', 'Invertimos de forma eficiente para convertir a usuarios en clientes', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-09-04 09:47:13', '2019-09-04 09:47:13', '', 41, 'http://localhost/Atlas/2019/09/04/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-09-04 10:45:03', '2019-09-04 10:45:03', '', 'No somos una Agencia de Marketing Digital.', 'OK si, pero también más que eso.', 'publish', 'open', 'open', '', 'no-somos-una-agencia-de-marketing-digital', '', '', '2019-09-04 10:45:25', '2019-09-04 10:45:25', '', 0, 'http://localhost/Atlas/?p=44', 0, 'post', '', 0),
(45, 1, '2019-09-04 10:45:03', '2019-09-04 10:45:03', '', 'No somos una Agencia de Marketing Digital.', 'OK si, pero también más que eso.', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-09-04 10:45:03', '2019-09-04 10:45:03', '', 44, 'http://localhost/Atlas/2019/09/04/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-09-04 10:46:16', '2019-09-04 10:46:16', '', 'Somos una fábrica de Innovación y Creatividad.', 'Nuestro equipo está conformado por mentes inquietas y expertas que crean experiencias digitales únicas.', 'publish', 'open', 'open', '', 'somos-una-fabrica-de-innovacion-y-creatividad', '', '', '2019-09-04 10:52:51', '2019-09-04 10:52:51', '', 0, 'http://localhost/Atlas/?p=46', 0, 'post', '', 0),
(47, 1, '2019-09-04 10:46:16', '2019-09-04 10:46:16', '', 'Somos una fábrica de Innovación y Creatividad.', 'Nuestro equipo está conformado por mentes inquietas y expertas que crean experiencias digitales únicas.', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-09-04 10:46:16', '2019-09-04 10:46:16', '', 46, 'http://localhost/Atlas/2019/09/04/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-09-04 10:55:04', '2019-09-04 10:55:04', '', 'Tu dinos, ¿cuándo nos vemos?', 'El postre va por nuestra cuenta.', 'publish', 'open', 'open', '', 'tu-dinos-cuando-nos-vemos', '', '', '2019-09-04 10:55:04', '2019-09-04 10:55:04', '', 0, 'http://localhost/Atlas/?p=50', 0, 'post', '', 0),
(51, 1, '2019-09-04 10:55:04', '2019-09-04 10:55:04', '', 'Tu dinos, ¿cuándo nos vemos?', 'El postre va por nuestra cuenta.', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-09-04 10:55:04', '2019-09-04 10:55:04', '', 50, 'http://localhost/Atlas/2019/09/04/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-09-04 10:55:11', '2019-09-04 10:55:11', '', 'Tu dinos, ¿cuándo nos vemos?', 'El postre va por nuestra cuenta.', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2019-09-04 10:55:11', '2019-09-04 10:55:11', '', 50, 'http://localhost/Atlas/2019/09/04/50-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2019-09-04 11:14:55', '2019-09-04 11:14:55', '<!-- wp:shortcode -->\n[contact-form-7 id=\"23\" title=\"Formulario Atlas\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-09-04 11:14:55', '2019-09-04 11:14:55', '', 24, 'http://localhost/Atlas/2019/09/04/24-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-09-18 15:31:13', '2019-09-18 15:31:13', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2019-09-18 16:02:17', '2019-09-18 16:02:17', '', 0, 'http://localhost/Atlas/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2019-09-18 15:31:14', '2019-09-18 15:31:14', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2019-09-18 16:02:17', '2019-09-18 16:02:17', '', 0, 'http://localhost/Atlas/?p=55', 3, 'nav_menu_item', '', 0),
(56, 1, '2019-09-18 15:38:10', '2019-09-18 15:38:10', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-18 15:38:10', '2019-09-18 15:38:10', '', 0, 'http://localhost/Atlas/?page_id=56', 0, 'page', '', 0),
(57, 1, '2019-09-18 15:38:10', '2019-09-18 15:38:10', '', 'home', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-09-18 15:38:10', '2019-09-18 15:38:10', '', 56, 'http://localhost/Atlas/2019/09/18/56-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Servicios', 'servicios', 0),
(3, 'Contacto', 'contacto', 0),
(4, 'Menú Principal', 'menu-principal', 0),
(6, 'inicio', 'inicio', 0),
(7, 'izquierda', 'izquierda', 0),
(8, 'Nosotros', 'nosotros', 0),
(9, 'derecha', 'derecha', 0),
(10, 'arriba', 'arriba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(7, 1, 0),
(11, 4, 0),
(12, 4, 0),
(13, 1, 0),
(15, 1, 0),
(17, 6, 0),
(24, 3, 0),
(27, 2, 0),
(29, 2, 0),
(31, 2, 0),
(33, 2, 0),
(35, 2, 0),
(37, 2, 0),
(39, 2, 0),
(41, 2, 0),
(44, 3, 0),
(44, 7, 0),
(46, 3, 0),
(46, 9, 0),
(50, 3, 0),
(50, 10, 0),
(54, 4, 0),
(55, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 8),
(3, 3, 'category', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4),
(6, 6, 'category', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'AtlasMedia'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:25:\"add-post-type-html5-blank\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 1, 'session_tokens', 'a:1:{s:64:\"ef4ff38ce2e01cdd7a4d0b4599a3209de56a7deaf702cff55c15041932921dc3\";a:4:{s:10:\"expiration\";i:1568993272;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1568820472;}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'AtlasMedia', '$P$BBqIgwZyVe1U12f4/O0jhLctSPAAP3.', 'atlasmedia', 'lluuiss1299@gmail.com', '', '2019-09-04 02:19:13', '', 0, 'AtlasMedia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
