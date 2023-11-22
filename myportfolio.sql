-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2023 at 02:58 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site configuration', 7, 'add_siteconfiguration'),
(26, 'Can change site configuration', 7, 'change_siteconfiguration'),
(27, 'Can delete site configuration', 7, 'delete_siteconfiguration'),
(28, 'Can view site configuration', 7, 'view_siteconfiguration'),
(29, 'Can add education', 8, 'add_education'),
(30, 'Can change education', 8, 'change_education'),
(31, 'Can delete education', 8, 'delete_education'),
(32, 'Can view education', 8, 'view_education'),
(33, 'Can add home', 9, 'add_home'),
(34, 'Can change home', 9, 'change_home'),
(35, 'Can delete home', 9, 'delete_home'),
(36, 'Can view home', 9, 'view_home'),
(37, 'Can add work', 10, 'add_work'),
(38, 'Can change work', 10, 'change_work'),
(39, 'Can delete work', 10, 'delete_work'),
(40, 'Can view work', 10, 'view_work'),
(41, 'Can add social links', 11, 'add_sociallinks'),
(42, 'Can change social links', 11, 'change_sociallinks'),
(43, 'Can delete social links', 11, 'delete_sociallinks'),
(44, 'Can view social links', 11, 'view_sociallinks');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$TxeVuNlpmHfPm9L52G70Mn$Y4SVMld81GIJuWfbCjxwRj8/sshnmLw4yNKDXMwWwLo=', '2023-11-14 07:38:37.000000', 1, 'admin', '', '', '', 1, 1, '2023-11-14 07:38:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-21 09:31:25.224462', '1', 'admin', 2, '[]', 4, 1),
(2, '2023-11-22 09:12:50.179354', '1', 'Alshafaraz Gazi', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-11-22 10:04:06.804546', '1', 'Alshafaraz Gazi', 2, '[{\"changed\": {\"fields\": [\"Greetings 2\", \"Picture\"]}}]', 9, 1),
(4, '2023-11-22 10:04:34.938229', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(5, '2023-11-22 10:13:35.499897', '2', 'Slide2', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-11-22 10:15:36.990716', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Greetings 2\"]}}]', 9, 1),
(7, '2023-11-22 10:41:26.689175', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Button name\", \"Button icon\"]}}]', 9, 1),
(8, '2023-11-22 10:41:33.022006', '1', 'Slide1', 2, '[]', 9, 1),
(9, '2023-11-22 10:42:12.248872', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Button name\", \"Button icon\"]}}]', 9, 1),
(10, '2023-11-22 11:43:06.103739', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(11, '2023-11-22 11:43:16.514235', '2', 'Slide2', 2, '[]', 9, 1),
(12, '2023-11-22 11:50:13.376689', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(13, '2023-11-22 11:58:30.330892', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Picture\"]}}]', 9, 1),
(14, '2023-11-22 12:01:15.696225', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Picture\"]}}]', 9, 1),
(15, '2023-11-22 12:06:17.138920', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(16, '2023-11-22 12:06:25.192322', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(17, '2023-11-22 12:16:20.604979', '1', 'Slide1', 2, '[]', 9, 1),
(18, '2023-11-22 12:22:37.382101', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(19, '2023-11-22 12:24:23.621539', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(20, '2023-11-22 12:29:28.710117', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(21, '2023-11-22 12:29:54.107243', '2', 'Slide2', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(22, '2023-11-22 12:31:21.863708', '1', 'Slide1', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(23, '2023-11-22 12:31:27.235315', '2', 'Slide2', 2, '[]', 9, 1),
(24, '2023-11-22 13:43:07.135634', '4', 'Site Configuration', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"social links\", \"object\": \"SocialLinks object (1)\"}}]', 7, 1),
(25, '2023-11-22 13:47:58.842388', '4', 'Site Configuration', 2, '[{\"added\": {\"name\": \"social links\", \"object\": \"SocialLinks object (2)\"}}, {\"added\": {\"name\": \"social links\", \"object\": \"SocialLinks object (3)\"}}, {\"added\": {\"name\": \"social links\", \"object\": \"SocialLinks object (4)\"}}]', 7, 1),
(26, '2023-11-22 14:06:33.887362', '4', 'Site Configuration', 2, '[{\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (1)\", \"fields\": [\"Social icon\"]}}, {\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (2)\", \"fields\": [\"Social icon\"]}}, {\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (3)\", \"fields\": [\"Social icon\"]}}, {\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (4)\", \"fields\": [\"Social icon\"]}}]', 7, 1),
(27, '2023-11-22 14:26:05.123660', '4', 'Site Configuration', 2, '[{\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (1)\", \"fields\": [\"Social icon\"]}}, {\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (2)\", \"fields\": [\"Social icon\"]}}, {\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (3)\", \"fields\": [\"Social icon\"]}}, {\"changed\": {\"name\": \"social links\", \"object\": \"SocialLinks object (4)\", \"fields\": [\"Social icon\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'myportapp', 'education'),
(9, 'myportapp', 'home'),
(7, 'myportapp', 'siteconfiguration'),
(11, 'myportapp', 'sociallinks'),
(10, 'myportapp', 'work'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-08 19:18:46.892281'),
(2, 'auth', '0001_initial', '2023-11-08 19:18:47.928211'),
(3, 'admin', '0001_initial', '2023-11-08 19:18:48.189384'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-08 19:18:48.202781'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-08 19:18:48.215001'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-08 19:18:48.353965'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-08 19:18:48.468802'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-08 19:18:48.501162'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-08 19:18:48.516257'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-08 19:18:48.603832'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-08 19:18:48.611378'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-08 19:18:48.624383'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-08 19:18:48.716435'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-08 19:18:48.821854'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-08 19:18:48.853190'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-08 19:18:48.865254'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-08 19:18:48.950496'),
(18, 'sessions', '0001_initial', '2023-11-08 19:18:49.010053'),
(19, 'myportapp', '0001_initial', '2023-11-21 10:03:46.914531'),
(20, 'myportapp', '0002_education_home_work', '2023-11-22 08:30:02.899758'),
(21, 'myportapp', '0003_alter_home_greetings_2_alter_home_picture', '2023-11-22 10:01:33.225858'),
(22, 'myportapp', '0004_alter_home_greetings_2', '2023-11-22 10:05:30.848836'),
(23, 'myportapp', '0005_home_description', '2023-11-22 10:34:21.392127'),
(24, 'myportapp', '0006_home_button_icon_home_button_name_and_more', '2023-11-22 10:38:26.384659'),
(25, 'myportapp', '0007_alter_home_description', '2023-11-22 11:23:29.980387'),
(26, 'myportapp', '0008_alter_home_description', '2023-11-22 12:29:11.904087'),
(27, 'myportapp', '0009_siteconfiguration_author_siteconfiguration_country_and_more', '2023-11-22 13:13:20.645041'),
(28, 'myportapp', '0010_alter_sociallinks_link_alter_sociallinks_social_icon', '2023-11-22 13:43:04.482796'),
(29, 'myportapp', '0011_alter_sociallinks_social_icon', '2023-11-22 13:46:53.091481'),
(30, 'myportapp', '0012_alter_sociallinks_social_icon', '2023-11-22 14:03:43.540887'),
(31, 'myportapp', '0013_alter_sociallinks_social_icon', '2023-11-22 14:05:42.871359');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('u4k1d0ltk2j7fsynjqwhr3euzx1743dr', '.eJxVjEEOwiAQRe_C2hCgU6Au3XsGMswMUjVtUtqV8e7apAvd_vfef6mE21rT1mRJI6uzsur0u2Wkh0w74DtOt1nTPK3LmPWu6IM2fZ1ZnpfD_Tuo2Oq37gL2LOgHg4WCt9mDLQJE7EwMJACxiwXY9yKRTGAXwRX0GTgMxjr1_gD2gjgL:1r2o0L:Livfkp6CSyoeLn991nCZO0IpBka92DWa-cS5qwS3Rcs', '2023-11-28 07:38:37.673757');

-- --------------------------------------------------------

--
-- Table structure for table `myportapp_education`
--

CREATE TABLE `myportapp_education` (
  `id` bigint NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myportapp_home`
--

CREATE TABLE `myportapp_home` (
  `id` bigint NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `greetings_1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `greetings_2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime(6) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3'Write a short description'),
  `button_icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myportapp_home`
--

INSERT INTO `myportapp_home` (`id`, `name`, `greetings_1`, `greetings_2`, `picture`, `updated`, `description`, `button_icon`, `button_name`) VALUES
(1, 'Slide1', 'Hi', 'I\'m Alshafaraz', 'home/MR1_0101-scaled.jpg', '2023-11-22 12:31:21.861219', 'My mission is to design and develop the best websites around.', 'icon-download4', 'Download CV'),
(2, 'Slide2', 'I am', 'a Full Stack Developer', 'home/IMG-9451d7e9077bc4c2c2751830aadcdfd6-V.jpg', '2023-11-22 12:31:27.234316', 'Let\'s start a cool project with me in a friendly way.', 'icon-briefcase3', 'View Portfolio');

-- --------------------------------------------------------

--
-- Table structure for table `myportapp_siteconfiguration`
--

CREATE TABLE `myportapp_siteconfiguration` (
  `id` bigint NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myportapp_siteconfiguration`
--

INSERT INTO `myportapp_siteconfiguration` (`id`, `logo`, `author`, `country`, `position`, `updated`) VALUES
(4, 'logos/me_AMNrTBC.jpg', 'Alshafaraz Gazi', 'New Zealand', 'Web Developer', '2023-11-22 14:26:05.117586');

-- --------------------------------------------------------

--
-- Table structure for table `myportapp_sociallinks`
--

CREATE TABLE `myportapp_sociallinks` (
  `id` bigint NOT NULL,
  `social_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_config_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myportapp_sociallinks`
--

INSERT INTO `myportapp_sociallinks` (`id`, `social_name`, `social_icon`, `link`, `site_config_id`) VALUES
(1, 'Facebook', 'fa-brands fa-facebook', 'https://www.facebook.com/al.h.ghaazi.90/', 4),
(2, 'X-Twitter', 'fa-brands fa-x-twitter', 'https://twitter.com/alshafaraz', 4),
(3, 'LinkedIn', 'fa-brands fa-linkedin', 'https://www.linkedin.com/in/gazi-ah/', 4),
(4, 'Github', 'fa-brands fa-github', 'https://github.com/gazi786', 4);

-- --------------------------------------------------------

--
-- Table structure for table `myportapp_work`
--

CREATE TABLE `myportapp_work` (
  `id` bigint NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myportapp_education`
--
ALTER TABLE `myportapp_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myportapp_home`
--
ALTER TABLE `myportapp_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myportapp_siteconfiguration`
--
ALTER TABLE `myportapp_siteconfiguration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myportapp_sociallinks`
--
ALTER TABLE `myportapp_sociallinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myportapp_sociallink_site_config_id_b9c57f7f_fk_myportapp` (`site_config_id`);

--
-- Indexes for table `myportapp_work`
--
ALTER TABLE `myportapp_work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `myportapp_education`
--
ALTER TABLE `myportapp_education`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myportapp_home`
--
ALTER TABLE `myportapp_home`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myportapp_siteconfiguration`
--
ALTER TABLE `myportapp_siteconfiguration`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myportapp_sociallinks`
--
ALTER TABLE `myportapp_sociallinks`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myportapp_work`
--
ALTER TABLE `myportapp_work`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myportapp_sociallinks`
--
ALTER TABLE `myportapp_sociallinks`
  ADD CONSTRAINT `myportapp_sociallink_site_config_id_b9c57f7f_fk_myportapp` FOREIGN KEY (`site_config_id`) REFERENCES `myportapp_siteconfiguration` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
