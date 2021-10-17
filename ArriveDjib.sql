-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 11 oct. 2021 à 15:14
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ArriveDjib`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-09-16 04:00:14', '2021-09-16 04:00:14'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-09-16 04:00:14', '2021-09-16 04:00:14');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(77, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 8, 'nomcomplet', 'text', 'Nomcomplet', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 8, 'age', 'text', 'Age', 0, 1, 1, 1, 1, 1, '{}', 3),
(80, 8, 'nationalite', 'text', 'Nationalite', 0, 1, 1, 1, 1, 1, '{}', 4),
(81, 8, 'venant', 'text', 'Venant', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 8, 'sexe', 'text', 'Sexe', 0, 1, 1, 1, 1, 1, '{}', 6),
(83, 8, 'allant', 'text', 'Allant', 0, 1, 1, 1, 1, 1, '{}', 7),
(84, 8, 'itineraire', 'text', 'Itineraire', 0, 1, 1, 1, 1, 1, '{}', 8),
(85, 8, 'addresse_etranger', 'text', 'Addresse Etranger', 0, 1, 1, 1, 1, 1, '{}', 9),
(86, 8, 'numero_telephone', 'text', 'Numero Telephone', 0, 1, 1, 1, 1, 1, '{}', 10),
(87, 8, 'date_arrive', 'text', 'Date Arrive', 0, 1, 1, 1, 1, 1, '{}', 11),
(88, 8, 'contact_num', 'text', 'Contact Num', 0, 1, 1, 1, 1, 1, '{}', 12),
(89, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(90, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(91, 8, 'addresse_pays', 'text', 'Addresse Pays', 0, 1, 1, 1, 1, 1, '{}', 15),
(92, 8, 'motif', 'text', 'Motif', 0, 1, 1, 1, 1, 1, '{}', 16),
(93, 8, 'autre_motif', 'text', 'Autre Motif', 0, 1, 1, 1, 1, 1, '{}', 17),
(94, 8, 'voyage_mois', 'text', 'Voyage Mois', 0, 1, 1, 1, 1, 1, '{}', 18),
(95, 8, 'pays_dernier', 'text', 'Pays Dernier', 0, 1, 1, 1, 1, 1, '{}', 19),
(96, 8, 'vaccin', 'text', 'Vaccin', 0, 1, 1, 1, 1, 1, '{}', 20),
(97, 8, 'pcr', 'text', 'Pcr', 0, 1, 1, 1, 1, 1, '{}', 21),
(98, 8, 'vol', 'text', 'Vol', 0, 1, 1, 1, 1, 1, '{}', 22),
(99, 8, 'numero_passeport', 'text', 'Numero Passeport', 0, 1, 1, 1, 1, 1, '{}', 23);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-09-16 03:59:57', '2021-09-16 03:59:57'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-09-16 03:59:57', '2021-09-16 03:59:57'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-09-16 03:59:58', '2021-09-16 03:59:58'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-09-16 04:00:12', '2021-09-16 04:00:12'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-09-16 04:00:14', '2021-09-16 04:00:14'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(8, 'voyageurs', 'voyageurs', 'Voyageur', 'Voyageurs', NULL, 'App\\Models\\Voyageur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-10-11 07:34:06', '2021-10-11 07:34:06');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-09-16 04:00:00', '2021-09-16 04:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tableau de Bord', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2021-09-16 04:00:00', '2021-10-10 05:41:55', 'voyager.dashboard', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-09-16 04:00:00', '2021-09-16 04:00:00', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2021-09-16 04:00:00', '2021-10-10 05:51:28', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-09-16 04:00:01', '2021-10-10 05:51:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-09-16 04:00:01', '2021-10-10 05:51:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-09-16 04:00:01', '2021-10-10 05:51:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-09-16 04:00:01', '2021-10-10 05:51:28', 'voyager.bread.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2021-09-16 04:00:13', '2021-10-10 05:51:27', 'voyager.categories.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2021-09-16 04:00:17', '2021-10-10 05:51:27', 'voyager.pages.index', NULL),
(15, 1, 'Médiathèque', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-10-10 05:38:59', '2021-10-10 05:51:27', 'voyager.media.index', NULL),
(16, 1, 'Utilisateurs', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-10-10 05:38:59', '2021-10-10 05:38:59', 'voyager.users.index', NULL),
(18, 1, 'Créateur de menus', '', '_self', 'voyager-list', NULL, 17, 10, '2021-10-10 05:38:59', '2021-10-10 05:38:59', 'voyager.menus.index', NULL),
(19, 1, 'Base de données', '', '_self', 'voyager-data', NULL, 17, 11, '2021-10-10 05:39:00', '2021-10-10 05:39:00', 'voyager.database.index', NULL),
(20, 1, 'Paramètres', '', '_self', 'voyager-settings', NULL, NULL, 8, '2021-10-10 05:39:00', '2021-10-10 05:51:30', 'voyager.settings.index', NULL),
(22, 1, 'Voyageurs', '', '_self', NULL, NULL, NULL, 9, '2021-10-11 07:34:09', '2021-10-11 07:34:09', 'voyager.voyageurs.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-09-16 04:00:18', '2021-09-16 04:00:18');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(2, 'browse_bread', NULL, '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(3, 'browse_database', NULL, '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(4, 'browse_media', NULL, '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(5, 'browse_compass', NULL, '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(6, 'browse_menus', 'menus', '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(7, 'read_menus', 'menus', '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(8, 'edit_menus', 'menus', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(9, 'add_menus', 'menus', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(10, 'delete_menus', 'menus', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(11, 'browse_roles', 'roles', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(12, 'read_roles', 'roles', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(13, 'edit_roles', 'roles', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(14, 'add_roles', 'roles', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(15, 'delete_roles', 'roles', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(16, 'browse_users', 'users', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(17, 'read_users', 'users', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(18, 'edit_users', 'users', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(19, 'add_users', 'users', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(20, 'delete_users', 'users', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(21, 'browse_settings', 'settings', '2021-09-16 04:00:02', '2021-09-16 04:00:02'),
(22, 'read_settings', 'settings', '2021-09-16 04:00:03', '2021-09-16 04:00:03'),
(23, 'edit_settings', 'settings', '2021-09-16 04:00:03', '2021-09-16 04:00:03'),
(24, 'add_settings', 'settings', '2021-09-16 04:00:03', '2021-09-16 04:00:03'),
(25, 'delete_settings', 'settings', '2021-09-16 04:00:03', '2021-09-16 04:00:03'),
(26, 'browse_categories', 'categories', '2021-09-16 04:00:13', '2021-09-16 04:00:13'),
(27, 'read_categories', 'categories', '2021-09-16 04:00:13', '2021-09-16 04:00:13'),
(28, 'edit_categories', 'categories', '2021-09-16 04:00:13', '2021-09-16 04:00:13'),
(29, 'add_categories', 'categories', '2021-09-16 04:00:13', '2021-09-16 04:00:13'),
(30, 'delete_categories', 'categories', '2021-09-16 04:00:14', '2021-09-16 04:00:14'),
(31, 'browse_posts', 'posts', '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(32, 'read_posts', 'posts', '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(33, 'edit_posts', 'posts', '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(34, 'add_posts', 'posts', '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(35, 'delete_posts', 'posts', '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(36, 'browse_pages', 'pages', '2021-09-16 04:00:17', '2021-09-16 04:00:17'),
(37, 'read_pages', 'pages', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(38, 'edit_pages', 'pages', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(39, 'add_pages', 'pages', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(40, 'delete_pages', 'pages', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(46, 'browse_voyageurs', 'voyageurs', '2021-10-11 07:34:08', '2021-10-11 07:34:08'),
(47, 'read_voyageurs', 'voyageurs', '2021-10-11 07:34:08', '2021-10-11 07:34:08'),
(48, 'edit_voyageurs', 'voyageurs', '2021-10-11 07:34:08', '2021-10-11 07:34:08'),
(49, 'add_voyageurs', 'voyageurs', '2021-10-11 07:34:08', '2021-10-11 07:34:08'),
(50, 'delete_voyageurs', 'voyageurs', '2021-10-11 07:34:08', '2021-10-11 07:34:08');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-16 04:00:16', '2021-09-16 04:00:16'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-16 04:00:16', '2021-09-16 04:00:16');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-09-16 04:00:01', '2021-09-16 04:00:01'),
(2, 'user', 'Normal User', '2021-09-16 04:00:01', '2021-09-16 04:00:01');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-09-16 04:00:18', '2021-09-16 04:00:18'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-09-16 04:00:19', '2021-09-16 04:00:19'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-09-16 04:00:20', '2021-09-16 04:00:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-09-16 04:00:20', '2021-09-16 04:00:20');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$SY8M8NeD/0Kf4hDc/xOH2.aTKtB2yLIi7ymbqgJTpgCEnq10EFCEG', 'PsQD7XsuBAn0cbRTOrW5a36CIG8Zy3Jmgohrua0cNuIHkXGKXoo4EdgwKFN2', NULL, '2021-09-16 04:00:14', '2021-09-16 04:00:14'),
(2, 1, 'Ahmed Ibrahim Meraneh', 'ahmed.ibrahim@ansie.dj', 'users/default.png', NULL, '$2y$10$qjp6Y3DjHGp0inluM.I14.FEcimwn5P1dNeVEP94rZv6JQSX9Pipu', NULL, '{\"locale\":\"fr\"}', '2021-09-16 04:05:12', '2021-10-11 08:44:03'),
(3, 1, 'Amin', 'amin.ibrahim@ansie.gouv.dj', 'users/default.png', NULL, '$2y$10$ZIJrVXeaV/LqgxRYnz9AZOn6uSJipXbuAaLwwN9H.LOlzOt7LzVja', NULL, '{\"locale\":\"fr\"}', '2021-09-16 04:05:57', '2021-09-16 04:05:57');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyageurs`
--

CREATE TABLE `voyageurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomcomplet` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(10) UNSIGNED NOT NULL,
  `nationalite` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venant` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allant` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itineraire` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresse_etranger` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_telephone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_arrive` date DEFAULT NULL,
  `contact_num` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `addresse_pays` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motif` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autre_motif` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voyage_mois` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays_dernier` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaccin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_passeport` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voyageurs`
--

INSERT INTO `voyageurs` (`id`, `nomcomplet`, `age`, `nationalite`, `venant`, `sexe`, `allant`, `itineraire`, `addresse_etranger`, `numero_telephone`, `date_arrive`, `contact_num`, `created_at`, `updated_at`, `addresse_pays`, `motif`, `autre_motif`, `voyage_mois`, `pays_dernier`, `vaccin`, `pcr`, `vol`, `numero_passeport`) VALUES
(1, 'AMIN IBRAHIM KAYAD', 3, 'Barbade', 'Bangladesh', 'Féminin', 'Argentine', 'none', 'Cite maka 128', '77104927', '2021-09-07', '4', '2021-09-09 07:27:56', NULL, NULL, 'Resident', NULL, 'non', NULL, 'oui', 'oui', 'Air France', 'AEREYEJ43'),
(2, 'AMIN IBRAHIM KAYAD', 24, '2', '3', 'Feminin', '3', 'none', 'Cite maka 128', '77104927', NULL, '-1', NULL, NULL, NULL, 'Resident', 'hhh', 'non', NULL, 'non', 'non', NULL, NULL),
(3, 'AMIN IBRAHIM KAYAD', 3, 'Arménie', 'Albanie', 'Féminin', 'Albanie', 'jh', 'Cite maka 128', '77104927', '2021-09-08', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(4, 'AMIN IBRAHIM KAYAD', 3, 'Arménie', 'Albanie', 'Féminin', 'Albanie', 'jh', 'Cite maka 128', '77104927', '2021-09-08', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(5, 'AMIN IBRAHIM KAYAD', 3, 'Arménie', 'Albanie', 'Féminin', 'Albanie', 'jh', 'Cite maka 128', '77104927', '2021-09-08', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(6, 'AMIN IBRAHIM KAYAD', 3, 'Arménie', 'Albanie', 'Féminin', 'Albanie', 'jh', 'Cite maka 128', '77104927', NULL, '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(7, 'AMIN IBRAHIM KAYAD', 3, 'Arménie', 'Albanie', 'Féminin', 'Albanie', 'jh', 'Cite maka 128', '77104927', NULL, '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(8, 'AMIN IBRAHIM KAYAD', 3, 'Albanie', 'Bahamas', 'Masculin', 'Bahreïn', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-06', '3', NULL, NULL, NULL, 'Affaires', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(9, 'AMIN IBRAHIM KAYAD', 3, 'Albanie', 'Bahamas', 'Masculin', 'Bahreïn', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-06', '3', NULL, NULL, NULL, 'Affaires', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(10, 'AMIN IBRAHIM KAYAD', 3, 'Albanie', 'Bahamas', 'Masculin', 'Bahreïn', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-06', '3', NULL, NULL, NULL, 'Affaires', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(11, 'AMIN IBRAHIM KAYAD', 3, 'Antarctique', 'Bangladesh', 'Masculin', 'Bermudes', 'turquie djibouti emirat', 'Cite maka 128', '77104929', '2021-09-08', '25377104927', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(12, 'AMIN IBRAHIM KAYAD', 23, 'Djibouti', 'Éthiopie', 'Masculin', 'Australie', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-08', '25377104927', NULL, NULL, NULL, 'Conges', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(13, 'AMIN IBRAHIM KAYAD', 24, 'Algérie', 'Azerbaïdjan', 'Masculin', 'Bermudes', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-08', '771551', NULL, NULL, NULL, 'Affaires', 'hhh', 'non', NULL, 'non', 'non', NULL, NULL),
(14, 'AMIN IBRAHIM KAYAD', 24, 'Algérie', 'Azerbaïdjan', 'Masculin', 'Bermudes', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-08', '771551', NULL, NULL, NULL, 'Affaires', 'hhh', 'non', NULL, 'non', 'non', NULL, NULL),
(15, 'AMIN IBRAHIM KAYAD', 24, 'Algérie', 'Azerbaïdjan', 'Masculin', 'Bermudes', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-08', '771551', NULL, NULL, NULL, 'Affaires', 'hhh', 'non', NULL, 'non', 'non', NULL, NULL),
(16, 'AMIN IBRAHIM KAYAD', 24, 'Algérie', 'Azerbaïdjan', 'Masculin', 'Bermudes', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-08', '771551', NULL, NULL, NULL, 'Affaires', 'hhh', 'non', NULL, 'non', 'non', NULL, NULL),
(17, 'AMIN IBRAHIM KAYAD', 24, 'Algérie', 'Azerbaïdjan', 'Masculin', 'Bermudes', 'turquie djibouti emirat', 'Cite maka 128', '77104927', '2021-09-08', '771551', NULL, NULL, NULL, 'Affaires', 'hhh', 'non', NULL, 'non', 'non', NULL, NULL),
(27, 'AMIN IBRAHIM KAYAD', 24, 'Afghanistan', 'Afghanistan', 'Masculin', 'Bahamas', 'none', 'Cite maka 128', '77104926', '2021-09-14', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(28, 'AMIN IBRAHIM KAYAD', 24, 'Afghanistan', 'Afghanistan', 'Masculin', 'Bahamas', 'none', 'Cite maka 128', '77104926', '2021-09-14', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(29, 'AMIN IBRAHIM KAYAD', 24, 'Afghanistan', 'Afghanistan', 'Masculin', 'Bahamas', 'none', 'Cite maka 128', '77104926', '2021-09-14', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(30, 'AMIN IBRAHIM KAYAD', 24, 'Afghanistan', 'Afghanistan', 'Masculin', 'Bahamas', 'none', 'Cite maka 128', '77104926', '2021-09-14', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(31, 'AMIN IBRAHIM KAYAD', 24, 'Afghanistan', 'Afghanistan', 'Masculin', 'Bahamas', 'none', 'Cite maka 128', '77104926', '2021-09-14', '3', NULL, NULL, NULL, 'Resident', NULL, 'non', NULL, 'non', 'non', NULL, NULL),
(32, 'Amin', 23, 'Botswana', 'Albanie', 'Féminin', 'Angola', 'None', 'Djibouti', '77104927', '2021-09-13', '7755885', NULL, NULL, NULL, 'Etudes', NULL, 'non', NULL, 'non', 'oui', NULL, NULL),
(33, 'Amin', 23, 'Botswana', 'Albanie', 'Féminin', 'Angola', 'None', 'Djibouti', '77104927', '2021-09-13', '7755885', NULL, NULL, NULL, 'Etudes', NULL, 'non', NULL, 'non', 'oui', NULL, NULL),
(34, 'Amin', 23, 'Botswana', 'Albanie', 'Féminin', 'Angola', 'None', 'Djibouti', '77104927', '2021-09-13', '7755885', NULL, NULL, NULL, 'Etudes', NULL, 'non', NULL, 'non', 'oui', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `voyageurs`
--
ALTER TABLE `voyageurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `voyageurs`
--
ALTER TABLE `voyageurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
