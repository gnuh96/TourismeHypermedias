-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 27, 2023 at 08:13 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-omeka`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key`
--

INSERT INTO `api_key` (`id`, `owner_id`, `label`, `credential_hash`, `last_ip`, `last_accessed`, `created`) VALUES
('QxZtBGKiEApx6I1qbEQMTWYlZj5Syqr5', 1, 'Macbookpro14', '$2y$10$xThMWoHS3pBNKxKyKBFS4emLh22DIyOH8Aef5n9bC.BnDmA8wo6Qm', 0x00000000000000000000000000000001, '2023-11-27 00:21:43', '2023-11-13 08:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`id`, `owner_id`, `name`, `media_type`, `storage_id`, `extension`, `alt_text`) VALUES
(1, 1, '28965_w1024h1024c1cx1500cy1000.jpg', 'image/jpeg', '78ab02aa1be049de84b3b293324cc3541a0ff67c', 'jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(4, 'items', 1, 1, 'Shang Palace', 'Shang Palace\n10 avenue d\'Iéna, Paris, 75116, France\n66€ - 157€\nCuisine chinoise\nSaveurs cantonaises authentiques\n0\n0'),
(5, 'items', 1, 1, 'Cuisine chinoise', 'Cuisine chinoise'),
(6, 'items', 1, 1, 'Saveurs cantonaises authentiques', 'Saveurs cantonaises authentiques '),
(7, 'items', 1, 1, 'Cuisine japonaise', 'Cuisine japonaise'),
(8, 'items', 1, 1, 'Cuisine cambodgienne', 'Cuisine cambodgienne'),
(9, 'items', 1, 1, 'Cuisine Vietnamienne', 'Cuisine Vietnamienne'),
(10, 'items', 1, 1, 'Cuisine coréenne', 'Cuisine coréenne'),
(11, 'items', 1, 1, 'Cuisine thaïlandaise', 'Cuisine thaïlandaise'),
(12, 'items', 1, 1, 'Saveurs de Hongkong', 'Saveurs de Hongkong'),
(13, 'items', 1, 1, 'Saveurs de Sichuan', 'Saveurs de Sichuan'),
(14, 'items', 1, 1, 'Sichuan hot pot', ' Sichuan hot pot'),
(15, 'items', 1, 1, 'Grillades', 'Grillades'),
(16, 'items', 1, 1, 'Soupe chaud', 'Soupe chaud'),
(17, 'items', 1, 1, 'Pho', 'Pho'),
(18, 'media', 1, 1, NULL, ''),
(19, 'items', 1, 1, 'Mongkok', 'Mongkok\n23 Rue Juge, 75015 Paris\n11€ - 33€\nCuisine chinoise\nSaveurs de Hongkong\n0\n0'),
(20, 'media', 1, 1, NULL, ''),
(21, 'items', 1, 1, 'Le Pont de Sichuan', 'Le Pont de Sichuan\n86 Rue de Richelieu 75002 Paris\n10€ - 30€\nCuisine chinoise\nSaveurs de Sichuan\n0\n0'),
(22, 'media', 1, 1, NULL, ''),
(23, 'items', 1, 1, 'Shu', 'Shu\n8 rue Suger, Paris, 75006, France\n60€ - 70€\nCuisine japonaise\n0\n0'),
(24, 'media', 1, 1, NULL, ''),
(25, 'items', 1, 1, 'Thaï Spices', 'Thaï Spices\n5-7 rue de l\'Ave-Maria, Paris, 75004, France\n30€ - 50€\nCuisine thaïlandaise\n0\n0'),
(26, 'media', 1, 1, NULL, ''),
(27, 'items', 1, 1, 'Sagan', 'Sagan\n8 rue Casimir-Delavigne, Paris, 75006, France\n28€ - 57€\nCuisine japonaise\n0\n0'),
(28, 'media', 1, 1, NULL, ''),
(29, 'items', 1, 1, 'Kushikatsu Bon', 'Kushikatsu Bon\n24 rue Jean-Pierre Timbaud 75011 Paris\n65 € - 75 €\nCuisine japonaise\n0\n0'),
(30, 'media', 1, 1, NULL, ''),
(31, 'items', 1, 1, 'My Noodles', 'My Noodles\n129 Boulevard du Montparnasse\n75006 Paris\n10€ - 20€\nCuisine chinoise\nNouille\n0\n0'),
(32, 'media', 1, 1, NULL, ''),
(33, 'items', 1, 1, 'Nouille', 'Nouille'),
(34, 'items', 1, 1, 'Fondue dragon', 'Fondue dragon\n5 Rue Étienne Marcel 75001 Paris\n20€ - 50€\nCuisine chinoise\nSichuan hot pot / fondue\n0\n0'),
(35, 'media', 1, 1, NULL, ''),
(36, 'items', 1, 1, 'Le Cambodge', 'Le Cambodge\n10, avenue Richerand 75010 Paris, France\n10€ - 20€\nCuisine cambodgienne\nSoupe chaud\n0\n0'),
(37, 'media', 1, 1, NULL, ''),
(38, 'items', 1, 1, 'Comme Au Vietnam', 'Comme Au Vietnam\n195 Avenue de Choisy, 75013 Paris\n15€ - 30€\nPho\nSoupe chaud\nCuisine Vietnamienne\n0\n0'),
(39, 'media', 1, 1, NULL, ''),
(40, 'items', 1, 1, 'Soon Grill', 'Soon Grill\n78 rue des Tournelles, 75003 Paris France\n20€ - 80€\nCuisine coréenne\nGrillades\n0\n0'),
(41, 'media', 1, 1, NULL, ''),
(42, 'items', 1, 1, 'Pho 14', 'Pho 14\n129 avenue de Choisy, 75013 Paris France\n10€ - 20€\nCuisine Vietnamienne\nPho\nSoupe chaud\n0\n0'),
(43, 'media', 1, 1, NULL, ''),
(44, 'items', 1, 1, 'Bonjour vietnam', 'Bonjour vietnam\n6 Rue Thouin, 75005 Paris\n14€ - 27€\nCuisine Vietnamienne\nSoupe chaud\n0\n0'),
(45, 'media', 1, 1, NULL, ''),
(46, 'items', 1, 1, 'Lac Hong', 'Lac Hong\n67 Rue Lauriston, 75116 Paris\n20€ - 60€\nCuisine Vietnamienne\nSoupe chaud\n0\n0'),
(47, 'media', 1, 1, NULL, ''),
(48, 'items', 1, 1, 'Rachiny T', 'Rachiny T\n49 Rue De Lappe 75011 Paris\n9€ - 33€\nCuisine thaïlandaise\nSoupe chaud\n0\n0'),
(49, 'media', 1, 1, NULL, ''),
(50, 'items', 1, 1, 'Dokkebi14', 'Dokkebi14\n 121 Rue Raymond Losserand, 75014 Paris France\n10€ - 20€\nCuisine coréenne\n0\n0'),
(51, 'media', 1, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(21, NULL),
(23, NULL),
(25, NULL),
(27, NULL),
(29, NULL),
(33, NULL),
(34, NULL),
(36, NULL),
(38, NULL),
(40, NULL),
(42, NULL),
(44, NULL),
(46, NULL),
(48, NULL),
(50, NULL),
(4, 18),
(19, 20),
(31, 32);

-- --------------------------------------------------------

--
-- Table structure for table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `item_id`, `ingester`, `renderer`, `data`, `source`, `media_type`, `storage_id`, `extension`, `sha256`, `size`, `has_original`, `has_thumbnails`, `position`, `lang`, `alt_text`) VALUES
(18, 4, 'upload', 'file', NULL, 'image 1.png', 'image/png', '4b9c86beb2a038f8a9aa47129debff64bc4984e5', 'png', '531f563ed1b604cbbc706f27ffc2f25bebc8733da361929ae5acb72d8e464207', 189360, 1, 1, 1, NULL, NULL),
(20, 19, 'upload', 'file', NULL, 'Screenshot 2023-11-26 at 22.09.58.png', 'image/png', 'c3813f0432f8b15a8fc361af8b784c62bbc87052', 'png', '8763fffd6d765255057b9d7411ea345b7a03e66b5d1fc45d9588a98ddd782284', 27404, 1, 1, 1, NULL, NULL),
(22, 21, 'upload', 'file', NULL, 'Sichuan Bridge.png', 'image/jpeg', '2ae63c87e1c520af8774b9e4a2d77c02cb9d6ba2', 'png', 'c5e902d732dc5d1f748cd36f14a4aa30a478a6cadb865e834391469ed73c9b44', 4581, 1, 1, 1, NULL, NULL),
(24, 23, 'upload', 'file', NULL, 'Shu Restaurant.jpeg', 'image/jpeg', '253fbda99496ea821a9d713b9db9bbed54df2d86', 'jpeg', '801df9067f14dbdc2c9d6821b053fdbb8eb3b847b38b3c2930324a789a329313', 7424, 1, 1, 1, NULL, NULL),
(26, 25, 'upload', 'file', NULL, 'Thaï Spices restaurant.jpeg', 'image/jpeg', 'd379b64a554750df771c07d873a26887132ed74c', 'jpeg', '8b0c977fab79362e03fded127030b2876d2aa920c0732e6a8fc49770799c3475', 15543, 1, 1, 1, NULL, NULL),
(28, 27, 'upload', 'file', NULL, 'download.jpeg', 'image/jpeg', 'b42f0f5ed286257786f57b2870404aa3b982b7b5', 'jpeg', 'af9b8d083309ce862394b8378074c7dddf6a149bd9c7782c2611e7af8450d4e2', 16545, 1, 1, 1, NULL, NULL),
(30, 29, 'upload', 'file', NULL, 'Kushikatsu Bon restaurant.jpeg', 'image/jpeg', 'fa11946536bf7b3258242ee3909eb25156a90a3a', 'jpeg', 'fe7ccebabb7a6e936069833e228b593911eb57800dddf2f49197b16f5c1135c4', 9043, 1, 1, 1, NULL, NULL),
(32, 31, 'upload', 'file', NULL, 'My Noodles restaurant.jpeg%0A```  So, the new filename is \'My Noodles restaurant.jpeg\'. This includes helpful information from the tab title and makes the filename more descriptive.jpeg', 'image/jpeg', 'd60e5f1299bb281ab266b9c876cdce361adeef3e', 'jpeg', '48fc1f4584f3c538757d956ebd07cabfec17331bb07ad091521a12c80fcc4c8f', 12262, 1, 1, 1, NULL, NULL),
(35, 34, 'upload', 'file', NULL, 'Fondue Dragon Restaurant.jpeg', 'image/jpeg', '017ea503a8d581ec05214cebf3206a27378782b8', 'jpeg', 'f8471e52fedda4d4551acc4c485972919d3ddc7547eb3b92bf971be3265bdebf', 14641, 1, 1, 1, NULL, NULL),
(37, 36, 'upload', 'file', NULL, 'Le Cambodge restaurant photo.jpeg%0A```  So, the new filename is \'Le Cambodge restaurant photo.jpeg\'. This includes the name of the restaurant and the type of file for better context.jpeg', 'image/jpeg', '75044e6710273d9d9c915bc267a6802cbd4ed8d7', 'jpeg', '6571cdeee2a2fcd9b01769b66e44f3af6866551d0a200bb407b8827c23323799', 15346, 1, 1, 1, NULL, NULL),
(39, 38, 'upload', 'file', NULL, 'download (1).jpeg', 'image/jpeg', 'a9e567e4bc1b8fc825ba83b6e136bb4a049d09c1', 'jpeg', '114ebcd80afd3c0047eaf116a03e74d2186b44fae3343db4cf62fd00a722f002', 13307, 1, 1, 1, NULL, NULL),
(41, 40, 'upload', 'file', NULL, 'Soon Grill Restaurant.jpeg```  So the new filename is %22Soon Grill Restaurant.jpeg%22 based on the source tab title.jpeg', 'image/jpeg', 'f48fd7b1e23d4d31fb1f7cff6488c01d3289cdea', 'jpeg', '75af9847e48e48744770ec7a29c4d2de57d69fed42a0a57aa724279467d7a434', 11880, 1, 1, 1, NULL, NULL),
(43, 42, 'upload', 'file', NULL, 'Pho 14 Restaurant.jpeg```  (add info from tab title, capitalize restaurant)  🍜📸🔍  Enjoy your meal!  If you need anything else, feel free to ask.jpeg', 'image/jpeg', '766a4e088a9c6042a3f26ff6053d2ff41ed850fc', 'jpeg', '48e9b1ff6fcd577f972a81078c5ba547df9ec8ceaadfc4d573640178d7e6da00', 12506, 1, 1, 1, NULL, NULL),
(45, 44, 'upload', 'file', NULL, 'Bonjour Vietnam Restaurant.jpeg', 'image/jpeg', 'f0cc74025e755f7fa03ddb412e4bd9fb244c5f52', 'jpeg', 'd36446d44588bedad767c70014bc98276d8f1a9e939ad1a0a5c9c463e70e5391', 10729, 1, 1, 1, NULL, NULL),
(47, 46, 'upload', 'file', NULL, 'Lac Hong Restaurant Paris.jpeg', 'image/jpeg', '95c2351f727fd57f13c5f59150370f09b79e4fc1', 'jpeg', 'a0219b25267141360de7cfa2195abe4975c0d03726994e6292490db5b8e93356', 12297, 1, 1, 1, NULL, NULL),
(49, 48, 'upload', 'file', NULL, 'Rachiny T restaurant Paris.jpeg', 'image/jpeg', '8be945bff52c2be567f43d380a11d6cc13b053e4', 'jpeg', '59eb6cb105b54ae7d18f902ed48058cafbd49e937f826092fd4f4b561f8fbf59', 16328, 1, 1, 1, NULL, NULL),
(51, 50, 'upload', 'file', NULL, 'Dokkebi14 Restaurant Paris.jpeg', 'image/jpeg', 'c5c26e81d2ae5cb898f6229871181589a77511b5', 'jpeg', 'e0f31a27b51bdcfba7ee7ae9b247af222b00b2d9f6ccfb165c7cb3bbf4e00caa', 12150, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230601060113'),
('20230713101012');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(185, 1, 5, 'nblike', 'nblike', NULL),
(186, 1, 5, 'nbdislike', 'nbdislike', NULL),
(187, 1, 5, 'first_name', 'first_name', NULL),
(188, 1, 5, 'last_name', 'last_name', NULL),
(189, 1, 5, 'mail', 'mail', NULL),
(190, 1, 5, 'commentaire', 'commentaire', NULL),
(191, NULL, 5, 'time_stamp', 'time_stamp', NULL),
(192, NULL, 5, 'address', 'address', NULL),
(193, NULL, 5, 'tags', 'tags', NULL),
(194, NULL, 5, 'price', 'price', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(4, 1, 106, 2, NULL, 'Shang Palace', 1, '2023-11-26 20:17:47', '2023-11-26 21:15:48', 'Omeka\\Entity\\Item'),
(5, 1, 107, 3, NULL, 'Cuisine chinoise', 1, '2023-11-26 20:19:42', '2023-11-26 20:19:42', 'Omeka\\Entity\\Item'),
(6, 1, 107, 3, NULL, 'Saveurs cantonaises authentiques', 1, '2023-11-26 20:20:28', '2023-11-26 20:20:28', 'Omeka\\Entity\\Item'),
(7, 1, 107, 3, NULL, 'Cuisine japonaise', 1, '2023-11-26 20:22:44', '2023-11-26 20:22:44', 'Omeka\\Entity\\Item'),
(8, 1, 107, 3, NULL, 'Cuisine cambodgienne', 1, '2023-11-26 20:23:11', '2023-11-26 20:23:11', 'Omeka\\Entity\\Item'),
(9, 1, 107, 3, NULL, 'Cuisine Vietnamienne', 1, '2023-11-26 20:23:27', '2023-11-26 20:23:27', 'Omeka\\Entity\\Item'),
(10, 1, 107, 3, NULL, 'Cuisine coréenne', 1, '2023-11-26 20:23:53', '2023-11-26 20:23:53', 'Omeka\\Entity\\Item'),
(11, 1, 107, 3, NULL, 'Cuisine thaïlandaise', 1, '2023-11-26 20:24:09', '2023-11-26 20:24:09', 'Omeka\\Entity\\Item'),
(12, 1, 107, 3, NULL, 'Saveurs de Hongkong', 1, '2023-11-26 20:25:17', '2023-11-26 20:25:17', 'Omeka\\Entity\\Item'),
(13, 1, 107, 3, NULL, 'Saveurs de Sichuan', 1, '2023-11-26 20:25:39', '2023-11-26 20:25:39', 'Omeka\\Entity\\Item'),
(14, 1, 107, 3, NULL, 'Sichuan hot pot', 1, '2023-11-26 20:26:01', '2023-11-26 22:25:27', 'Omeka\\Entity\\Item'),
(15, 1, 107, 3, NULL, 'Grillades', 1, '2023-11-26 20:26:18', '2023-11-26 22:25:39', 'Omeka\\Entity\\Item'),
(16, 1, 107, 3, NULL, 'Soupe chaud', 1, '2023-11-26 20:26:59', '2023-11-26 20:26:59', 'Omeka\\Entity\\Item'),
(17, 1, 107, 3, NULL, 'Pho', 1, '2023-11-26 20:27:20', '2023-11-26 20:27:20', 'Omeka\\Entity\\Item'),
(18, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 20:31:36', '2023-11-26 20:31:36', 'Omeka\\Entity\\Media'),
(19, 1, 106, 2, NULL, 'Mongkok', 1, '2023-11-26 21:11:03', '2023-11-26 21:16:13', 'Omeka\\Entity\\Item'),
(20, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 21:11:03', '2023-11-26 21:11:03', 'Omeka\\Entity\\Media'),
(21, 1, 106, 2, NULL, 'Le Pont de Sichuan', 1, '2023-11-26 22:11:19', '2023-11-26 22:11:19', 'Omeka\\Entity\\Item'),
(22, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:11:19', '2023-11-26 22:11:19', 'Omeka\\Entity\\Media'),
(23, 1, 106, 2, NULL, 'Shu', 1, '2023-11-26 22:13:29', '2023-11-26 22:13:29', 'Omeka\\Entity\\Item'),
(24, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:13:29', '2023-11-26 22:13:29', 'Omeka\\Entity\\Media'),
(25, 1, 106, 2, NULL, 'Thaï Spices', 1, '2023-11-26 22:16:34', '2023-11-26 22:16:34', 'Omeka\\Entity\\Item'),
(26, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:16:34', '2023-11-26 22:16:34', 'Omeka\\Entity\\Media'),
(27, 1, 106, 2, NULL, 'Sagan', 1, '2023-11-26 22:18:16', '2023-11-26 22:18:16', 'Omeka\\Entity\\Item'),
(28, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:18:16', '2023-11-26 22:18:16', 'Omeka\\Entity\\Media'),
(29, 1, 106, 2, NULL, 'Kushikatsu Bon', 1, '2023-11-26 22:21:10', '2023-11-26 22:21:10', 'Omeka\\Entity\\Item'),
(30, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:21:10', '2023-11-26 22:21:10', 'Omeka\\Entity\\Media'),
(31, 1, 106, 2, NULL, 'My Noodles', 1, '2023-11-26 22:22:24', '2023-11-26 22:23:13', 'Omeka\\Entity\\Item'),
(32, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:22:24', '2023-11-26 22:22:24', 'Omeka\\Entity\\Media'),
(33, 1, 107, 3, NULL, 'Nouille', 1, '2023-11-26 22:22:36', '2023-11-26 22:22:36', 'Omeka\\Entity\\Item'),
(34, 1, 106, 2, NULL, 'Fondue dragon', 1, '2023-11-26 22:24:54', '2023-11-26 22:24:54', 'Omeka\\Entity\\Item'),
(35, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:24:54', '2023-11-26 22:24:54', 'Omeka\\Entity\\Media'),
(36, 1, 106, 2, NULL, 'Le Cambodge', 1, '2023-11-26 22:27:33', '2023-11-26 22:27:33', 'Omeka\\Entity\\Item'),
(37, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:27:33', '2023-11-26 22:27:33', 'Omeka\\Entity\\Media'),
(38, 1, 106, 2, NULL, 'Comme Au Vietnam', 1, '2023-11-26 22:29:32', '2023-11-26 22:29:32', 'Omeka\\Entity\\Item'),
(39, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:29:32', '2023-11-26 22:29:32', 'Omeka\\Entity\\Media'),
(40, 1, 106, 2, NULL, 'Soon Grill', 1, '2023-11-26 22:31:02', '2023-11-26 22:31:02', 'Omeka\\Entity\\Item'),
(41, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:31:02', '2023-11-26 22:31:02', 'Omeka\\Entity\\Media'),
(42, 1, 106, 2, NULL, 'Pho 14', 1, '2023-11-26 22:32:45', '2023-11-26 22:32:45', 'Omeka\\Entity\\Item'),
(43, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:32:45', '2023-11-26 22:32:45', 'Omeka\\Entity\\Media'),
(44, 1, 106, 2, NULL, 'Bonjour vietnam', 1, '2023-11-26 22:35:12', '2023-11-26 22:35:12', 'Omeka\\Entity\\Item'),
(45, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:35:12', '2023-11-26 22:35:12', 'Omeka\\Entity\\Media'),
(46, 1, 106, 2, NULL, 'Lac Hong', 1, '2023-11-26 22:38:07', '2023-11-26 22:38:07', 'Omeka\\Entity\\Item'),
(47, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:38:07', '2023-11-26 22:38:07', 'Omeka\\Entity\\Media'),
(48, 1, 106, 2, NULL, 'Rachiny T', 1, '2023-11-26 22:39:48', '2023-11-26 22:39:48', 'Omeka\\Entity\\Item'),
(49, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:39:48', '2023-11-26 22:39:48', 'Omeka\\Entity\\Media'),
(50, 1, 106, 2, NULL, 'Dokkebi14', 1, '2023-11-26 22:40:49', '2023-11-26 22:40:49', 'Omeka\\Entity\\Item'),
(51, 1, NULL, NULL, NULL, NULL, 1, '2023-11-26 22:40:49', '2023-11-26 22:40:49', 'Omeka\\Entity\\Media');

-- --------------------------------------------------------

--
-- Table structure for table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'Restaurant', 'Restaurant', NULL),
(107, 1, 5, 'Tag', 'Tag', NULL),
(108, 1, 5, 'Avis', 'Avis', NULL),
(109, 1, 5, 'User', 'User', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 106, NULL, NULL, 'Restaurant'),
(3, 1, 107, NULL, NULL, 'Tag'),
(4, 1, 109, NULL, NULL, 'User'),
(5, 1, 108, NULL, NULL, 'Avis');

-- --------------------------------------------------------

--
-- Table structure for table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL),
(21, 2, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(23, 2, 186, NULL, NULL, 5, NULL, 0, 0, NULL),
(24, 2, 185, NULL, NULL, 6, NULL, 0, 0, NULL),
(25, 3, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(26, 4, 187, NULL, NULL, 1, NULL, 0, 0, NULL),
(27, 4, 188, NULL, NULL, 2, NULL, 0, 0, NULL),
(28, 4, 189, NULL, NULL, 3, NULL, 0, 0, NULL),
(29, 5, 190, NULL, NULL, 1, NULL, 0, 0, NULL),
(30, 5, 191, NULL, NULL, 2, NULL, 0, 0, NULL),
(31, 2, 192, NULL, NULL, 2, NULL, 0, 0, NULL),
(32, 2, 193, NULL, NULL, 4, NULL, 0, 0, NULL),
(34, 2, 194, NULL, NULL, 3, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('8g24rmdbov9omq2krvqgphtmbn', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313034333330302e3930383931313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2238673234726d64626f76396f6d71326b727671677068746d626e223b7d7d, 1701043300),
('c1fjpdmleqkju9fl0332gvtp32', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730303738333537372e3636343730353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e6d63373374647275706d6b6a3033736a3875647363396b3562223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303738343538343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303738373133353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313730303738373136383b7d7d72656469726563745f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223338373038396138656337393337653334646163356264383665303734613830223b733a33323a226434653939323135346433363839363537313165353363393861366430333764223b7d733a343a2268617368223b733a36353a2264346539393231353464333638393635373131653533633938613664303337642d3338373038396138656337393337653334646163356264383665303734613830223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31383a7b733a33323a223335376231663435663063356665626130396638346639386461363333386235223b733a33323a223638653762626332633566386131393363633337393738663965353734636134223b733a33323a223733616639343661623865313432346462666365393061306534626137353930223b733a33323a223264626466383632353861393136393135383462313036613431623534303537223b733a33323a226330636566643865316438333361653834663435346637343861653865663263223b733a33323a226463346239643036316562666536666332313930303235613230386436653831223b733a33323a226533653136313739346365396338613537326462396634376335353166303466223b733a33323a223866356362613436396632666531643131353232316339646163363234383733223b733a33323a223939363632623739336563633233326130353032383961303733306234343962223b733a33323a223836303863656436386236636433326535653963656638616235386130366135223b733a33323a226663623131363931633134313164613364636161303130363535303735313566223b733a33323a226334663766333935373265373264636365316637323766333664366563643261223b733a33323a223832653362623535356130626634366565623934613737343532393432343662223b733a33323a226536633639386334356130353231316438613962646265386634633033313831223b733a33323a223438336265323136633433323136613338643064373335386262306234653231223b733a33323a223662643433323033386163336538356138663364396331613037646365626262223b733a33323a226538356337663532633161316364303133653233373032616466613062383064223b733a33323a223734663734363234663463366533353532633563653939623362343436663239223b733a33323a223132623635653334663763633837623836643739383634353761363561363465223b733a33323a226662353436353039663734326239336635306633656637356166393335363336223b733a33323a226262386630363365336431636166366462643666363362313664656161383836223b733a33323a223066636365336334636161333837363366626634326635313364386264623335223b733a33323a223634373635643164373766333430313864376363346335633465623437613034223b733a33323a226164323865306563303239393363653434313236393537613164623537363961223b733a33323a223333663134323665303430643330376430643266336433653534346335646230223b733a33323a223037353837646637313633616362366237393432663863373438363037326331223b733a33323a223232336231356433646133306533353561373263393831653836653330336664223b733a33323a226534356333383138363938363463396336303737373131336463363037303461223b733a33323a223436623535333332623339306266306662356234663163393832626566623164223b733a33323a226265313733396331623963316238633763363738333261623630363666393139223b733a33323a226666373464306363336336353564663261653631363230613532333261333134223b733a33323a226663343539363934396132383236666435383263643866636166616430306565223b733a33323a226630613739343039636264326636353564316565346666343038653634383162223b733a33323a226163363033383363306565353934346532653361386562383834323031313763223b733a33323a223333393739313132666430636362376166623433323734616461313366623530223b733a33323a223865303932353662626664326332316236396661333532633231636462653063223b7d733a343a2268617368223b733a36353a2238653039323536626266643263323162363966613335326332316364626530632d3333393739313132666430636362376166623433323734616461313366623530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a223465356566336261323636323439633935663230343836336135323530323466223b733a33323a226231616534626234303436653938383931316261396632386163666530363563223b733a33323a223961313733633437363939356364613933376230336464383731373934353564223b733a33323a223235666164316561383638643739623565613030343033316137353837363765223b733a33323a226239323634663665333632666361643338323934643035643835623930343561223b733a33323a223732656434663165663531303462643937353236396430646638356138613638223b733a33323a226232653431356132396265393836366161386533626162336564306432663037223b733a33323a223638643534306332666634396662303939373138383562663533333133663161223b733a33323a223135613935373136323036633563313239643066666234623166326338333065223b733a33323a223064396538303939333031623463313130646134353533636233313265616630223b733a33323a226265653531626130643564626239363338363064663764346237313939633830223b733a33323a226236643833653266643861333038343965646363623233353734333338313034223b733a33323a226238626635383432653061333932376161383132313438613330653436623663223b733a33323a226238373438613865393838613862616361346565613133626534303931653336223b733a33323a223863323665366439616137636461393262333632343832613265383333373032223b733a33323a223665616132383065393230353233333361643963336234393032336131666564223b733a33323a226232653364663532346166633035666564313436626130393266656638326130223b733a33323a223334303161646232343430653666623039373563636533363436613635373666223b7d733a343a2268617368223b733a36353a2233343031616462323434306536666230393735636365333634366136353736662d6232653364663532346166633035666564313436626130393266656638326130223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1700783577),
('fr80321aphhdvrja7103m4cvgk', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730303436393434322e3538313335393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22366d697639353766723063723163396c67716e3436766475656d223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303336303238313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303437333034323b7d7d72656469726563745f75726c7c733a34303a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612d732f61646d696e2f6974656d223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223432643665383463376164313738373563353835373133396364323932313635223b733a33323a226338316564323734666431306264326439346366663332613438353264353236223b7d733a343a2268617368223b733a36353a2263383165643237346664313062643264393463666633326134383532643532362d3432643665383463376164313738373563353835373133396364323932313635223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226139336137633132313530323630643761613434306534383238643539353566223b733a33323a223365623264633565396166353364616534616265306461653564646439646366223b733a33323a223239626536613035626366666363373934613133353533366234613365333661223b733a33323a226466653736303965643433393632613062323533313039636466323361363530223b7d733a343a2268617368223b733a36353a2264666537363039656434333936326130623235333130396364663233613635302d3239626536613035626366666363373934613133353533366234613365333661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1700469442),
('kfe8r3a0dn70r7l5qirmoibceq', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730303738333538332e3236303631363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2272736d656f706a34317065653763646d766931326532326a676c223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303738373137373b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223734333432643961633234653135613364626130666266373665626263656233223b733a33323a226663333634376232326665343836646539363166383836626636343932373035223b7d733a343a2268617368223b733a36353a2266633336343762323266653438366465393631663838366266363439323730352d3734333432643961633234653135613364626130666266373665626263656233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b, 1700783583),
('l93gkh3evspd3lrsbur3lb9iap', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313639393836343136302e3430383936393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e347534656376346b30746f7272316935747369753039327369223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393735333538393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393836373634303b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393735343430323b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393735343431383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313639393735343431313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313639393836373736303b7d7d72656469726563745f75726c7c733a34303a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612d732f61646d696e2f6974656d223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226638623736306436383132363438643566333738663064333330613233316538223b733a33323a223031353836616637653832376432633735666339633963653534353564636663223b7d733a343a2268617368223b733a36353a2230313538366166376538323764326337356663396339636535343535646366632d6638623736306436383132363438643566333738663064333330613233316538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223162393432626265663038643865336538626532316665616132666663643863223b733a33323a226131366564626233656166373861633231653738333133336365373765633134223b733a33323a223939333234393264613133396462393737663064323061386466393162356337223b733a33323a223762386233393364383435373635393134666339376436643163323038306130223b733a33323a226663613138353063336534386430396132306534653633313462366261643566223b733a33323a223862306164343439353233653161643263343434393066653731646430663565223b733a33323a223237386633336236333636633161346433646635376239396366643837643338223b733a33323a223038316539326532353561643064306630633161373433363633326462636330223b7d733a343a2268617368223b733a36353a2230383165393265323535616430643066306331613734333636333264626363302d3237386633336236333636633161346433646635376239396366643837643338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226437303237383832636631613463666564393131663264346362346465366630223b733a33323a226361636661393934623234613332653461626234383436396434353933643437223b733a33323a223663623233323439343162636435626363316534613337616230643131646164223b733a33323a223563353430616139383937646163353632343939323937306131653430343633223b733a33323a226234643638643162323536386463323538353361303762366230363736343063223b733a33323a223034646537363130376437356366323562666333666266383263666232643731223b7d733a343a2268617368223b733a36353a2230346465373631303764373563663235626663336662663832636662326437312d6234643638643162323536386463323538353361303762366230363736343063223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226139376334653166616133313363626433323436613738306634613964383162223b733a33323a226130366564653134643462333366346536313339636432616665326430336137223b733a33323a223662633739343033656561333731653331383066613661323034353666663836223b733a33323a226462343364653535656165323936313263626438353030316533323661636437223b733a33323a223833313637393235376138323733396364393833396164646532613637323263223b733a33323a226264613863623166353965626131633030333338386465636266323138326135223b733a33323a223661343561333565303036656639313330316336323264613063636435613231223b733a33323a223536623738313936633639623030366262633135653263343032316265316336223b733a33323a223034623063396531353536306531383237303330666161633663393766613665223b733a33323a226432306531333765626263323832633263653430373533393363363063636564223b733a33323a223466326335643834333434383230663436373531393931613664663034323238223b733a33323a226639363565633732353062326530646336306134653565626564396231626130223b7d733a343a2268617368223b733a36353a2266393635656337323530623265306463363061346535656265643962316261302d3466326335643834333434383230663436373531393931613664663034323238223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223136396633636630356564666166643039633432323233323234623237636438223b733a33323a226161353265373438613665623361386565326139633135653031386263616537223b733a33323a226539303832623765316534396338663431383764393036346135663138366664223b733a33323a223437643462626264333364343339396132653664366566333435613062373836223b7d733a343a2268617368223b733a36353a2234376434626262643333643433393961326536643665663334356130623738362d6539303832623765316534396338663431383764393036346135663138366664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223231383662386336633032393631316565323039386333393664336262366333223b733a33323a223133663838376531313432623266373631636263323738323733663464393161223b733a33323a223664306135666261623838353436333062393665653633336333363138643837223b733a33323a223936623362663035663739636361626636636561346166623232303931333961223b733a33323a226134356631306630393433646138333835363263623034613734656136356431223b733a33323a223130616239366636303133333438383965356164333063346632366436376331223b7d733a343a2268617368223b733a36353a2231306162393666363031333334383839653561643330633466323664363763312d6134356631306630393433646138333835363263623034613734656136356431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1699864160),
('qh9tpmq5ucq6pk8gsntkrb0mu7', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313730313037323734352e3737303331353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e313666326a6d357533623034613132377174636d3939367566223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730303934383434343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313037363239363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313730313034323030303b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313033363838333b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313033363839383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313730313033363935343b7d7d72656469726563745f75726c7c733a34303a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612d732f61646d696e2f6974656d223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223932383166636365373137643833376237656262343233636231313639356333223b733a33323a226264303465343432643736346563383965363765313839633633343532333635223b7d733a343a2268617368223b733a36353a2262643034653434326437363465633839653637653138396336333435323336352d3932383166636365373137643833376237656262343233636231313639356333223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223335396334383965633731656362626339616431626665616162646334393961223b733a33323a226331616264303266376635623366383538666134373163663761336566373634223b733a33323a223236343131323066343966643433356463353138306530323431663935656262223b733a33323a226534373830383930613731396563613236386237646362366132613261386139223b7d733a343a2268617368223b733a36353a2265343738303839306137313965636132363862376463623661326132613861392d3236343131323066343966643433356463353138306530323431663935656262223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34393a7b733a33323a223064343231623132646562386234396134366361316462633863646633646130223b733a33323a226239623065353466663635373839353937373066636361376162343636383132223b733a33323a226130323161383634303835613737613739336136303636316162393032633065223b733a33323a223864666264373939383235376137393935616435633761366430646163623139223b733a33323a226162326236666137653734316537353466633337376539373036626565323462223b733a33323a223736616632653462343730643139633433633732393165333339653337646464223b733a33323a226537376363613931613564373833613731393562616266306238313330396562223b733a33323a223161393433333262313537636137363263656633353133386133326534326235223b733a33323a226133636637343265393739333333623037653133326433633366323038383935223b733a33323a223531393430383862663838333264393838643837363136353064666438656539223b733a33323a223463366339383539386631633436633331393861626263643239306262353464223b733a33323a223134333531353035356362356364373533323463626462386137343864386337223b733a33323a226166333662303734333364376165313330646466636336373430313937346137223b733a33323a223566376564643932346536656338643236333764346136303634363430633734223b733a33323a223263656261633234663035326230383862336238653832363461623130303938223b733a33323a226162626237323366383431643034386264363335656161643763613663633032223b733a33323a223665623434393733333366346231333064373839363338333237323931626265223b733a33323a226461623039343138303038653962616366323233373366363764656630373332223b733a33323a223539653366376161373330316237626436613536643363336139373739626664223b733a33323a226131626135626130356437623837353137656365393730303836396265623362223b733a33323a223432393462376262393862366137636537636462303362306233623736613335223b733a33323a226531666631323938636162386637356130376365626336373039343032396435223b733a33323a226165323461616637633634333436633664363432613438666564323034363536223b733a33323a226339313633336461623634616333353764616239393165656436363363363361223b733a33323a223739656564393033366238333366343538366434376362386463633337613634223b733a33323a226662316165333130366639363462353037626235613833356665613937363632223b733a33323a223664333434393665653764383966383937666537326633343432336463353366223b733a33323a226532633966383732653139653336356336353738373435376537326139633637223b733a33323a223265613066616236323265303433353433343837643464656363626366383365223b733a33323a223338643233633866323435343930653035653564643966306237333761383731223b733a33323a223364366166626664653731643733353435323832656238313361313739366534223b733a33323a226234636233393335303363656334306637363239393336663237356535646632223b733a33323a226561363037643339353231333766643337363363336537663333653462633432223b733a33323a223033376139663037623037633435306334623030386631343337316232646164223b733a33323a223937623963356264623638663831363337646231333037626239306133373434223b733a33323a226562303733316465376466666638323938346365636630613162656564366466223b733a33323a223139303365616163646636313234653639373262656535346463636235353764223b733a33323a226630353364353831393634623365613235653939323137626532306336346263223b733a33323a226433393361613232366661643631613530616364353561326139343537326238223b733a33323a223432336437663764346236303837363531646364376437323965653339323663223b733a33323a226338656437343365623061366430313736383333663830343166313633316163223b733a33323a226463333336646138666537336632373064626262616163393032613062643637223b733a33323a226361396533643964343161356462346630643761383865366137393966376436223b733a33323a223336656563613663653539363136353430646666353364633165393862343338223b733a33323a223532393131373464323865356139376537633537373137363364336631386634223b733a33323a226137663832643466376432336666346532326639636664326166393731316463223b733a33323a223833383036383135366237633964393164613464633837613738646235366336223b733a33323a223165336130333236363636613465373262393462346431663834663336623461223b733a33323a223164373930313937373364336235653431373466343536346331333733346265223b733a33323a223764663736323238616464653936623761343563346262386130356337666537223b733a33323a223432393265376436326465313365613035373530323332663461373435336162223b733a33323a226664646163363261363639343433336561363033656533383834393438623030223b733a33323a223134376437643064626162326337333163383231333130323138616336376363223b733a33323a226237336131306666366136313035373530646333346634376633333430306633223b733a33323a223264663732616262353631616563333265633439653961623037373762313263223b733a33323a223037633337393865353065636265303362396666333938346132356265393361223b733a33323a226134646637363065303764663235613139383730663436383466323335663264223b733a33323a226530323736386362393634316435326337336335666132376233303562656165223b733a33323a223237333534636666383537633939306637613565326534653733386235623061223b733a33323a226137633535656465643462613261383531366632393635633937326537383339223b733a33323a226439383663373431386664383931306666376432643265373336396436376533223b733a33323a223236386332616535366539313939396464616139376437383832363535383630223b733a33323a223336343137643232356433303639656538353231373037393835336562306437223b733a33323a223662303866326666656161616135376137363230633161343136353236373833223b733a33323a223233663962386564323830626263636166313766303438626538333830303835223b733a33323a223937306165616130633138653538333033623361646662636663653633343130223b733a33323a223236313366643931346261643861343633636133626433346234633431653738223b733a33323a226166656664316163363739306433643635393966313562336634646266383961223b733a33323a226263373434663661653562353437653539343361313433623535366461343832223b733a33323a223936323132666636333431346363616563316464363163316166653632353032223b733a33323a223639396364306265366136653561323833396337336437313832376339366666223b733a33323a223831323436373935636665363963383537653966326139623262383139663236223b733a33323a226531383264366562336134373566333032626535663139643664386561643764223b733a33323a223330636166393534613839666236353063623736646331376461646166653564223b733a33323a223563353130326434356539656664383861313965353561376230663332663564223b733a33323a223434346438353565396565333234303362356264386239656364333230396136223b733a33323a223863623537303137346433323964323165616634663431623230343636356231223b733a33323a226366633934323836393864616133376663656162633336353635646235303539223b733a33323a226534353232663434643063323161643331313530366133626137313464623034223b733a33323a223638643639326439363033313533663430353761646562363261643961353165223b733a33323a223664663039366365643235646234353464656261386232343166333339643832223b733a33323a223535316634376237643635306563643461303336393538303665613863353164223b733a33323a226230393330336237383138393238386661316464343330643533346366656161223b733a33323a223630326363383966386136346331653832666565386437643166356564313763223b733a33323a226530383862643831313764616466613466643432323363623733656563613737223b733a33323a223537616663643934366136366437383034313332626665663931386634383561223b733a33323a223363643064623436386435306533386262373331366134383135646636616332223b733a33323a223962323331373638656239373163366433353737656564363138383735613633223b733a33323a223661386430353130623139396439366438363064306130363838633361623437223b733a33323a226131643861623031356264373934656639616264396365383532323662633164223b733a33323a223766343136653362303839646161616565393066643833646362393232626132223b733a33323a223562336662356439623565303966396333363830356238656536383266653662223b733a33323a226633343037623462393931373839666532663865363061303930643765303732223b733a33323a223730656163393165346263353763356432666562656661613936336361303134223b733a33323a223432653532333334653562356230633036653334303538323766346339373331223b733a33323a226561656534353139643735326663363739373134633936646333373061306438223b733a33323a226537333962313465666436616666663839383862653036323633653334666331223b733a33323a226461393039343530336165386364633339366137646263663363346364626436223b7d733a343a2268617368223b733a36353a2264613930393435303361653863646333393661376462636633633463646264362d6537333962313465666436616666663839383862653036323633653334666331223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226537353431343066376161356133333839386666346462336363316136666539223b733a33323a223637303461363330386164666133333765653330306461313631373336356338223b7d733a343a2268617368223b733a36353a2236373034613633303861646661333337656533303064613136313733363563382d6537353431343066376161356133333839386666346462336363316136666539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223835633132386533313863366536356139646430343463643330366232306461223b733a33323a226266643831346132386339373334656666366535326136643465303235313935223b733a33323a223432346232666164653864373338316332353263656336613931373866353263223b733a33323a223034613233313137353061646632643831383530356463323266636134666233223b733a33323a226534373237323735643438383965323733623930363833333263653761636431223b733a33323a223861393363313761356431653539666538373137306635646162366339333539223b733a33323a223337373835666635363266633731626531356134376561623638316361643964223b733a33323a223838613433373865303737636233653763336364373638393165626535373861223b7d733a343a2268617368223b733a36353a2238386134333738653037376362336537633363643736383931656265353738612d3337373835666635363266633731626531356134376561623638316361643964223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223636333133343034616439616262396232636162393538613461343235633264223b733a33323a223035656165626531326166306434623636626638626435336236306635323934223b733a33323a226533646533303234396136323564623935386432626466343335636531396361223b733a33323a223233666436393832636265306463336637343361656137323964616239316331223b733a33323a226163633662643664326233633561613164383435316433323861356137333232223b733a33323a226565663966646239663936623033343363626137613761363464353830633738223b733a33323a223534323834363132646336646630386535316565613237333334383866393534223b733a33323a223530313732393231393036373462303761323239373537396663626333356534223b733a33323a223537306639383039363233356339346362383036393031303130383439383665223b733a33323a226330313366656230346264633264373062343232383433363436656462323330223b733a33323a226137623535346564653330623865313064323838643130623138643833313833223b733a33323a223766383864303631356239313963373937326462353938343833656162363239223b733a33323a223235666530353039653634613534613331313964336162346165623736666262223b733a33323a226436626439363261653565316633623061323764313233323965633336313564223b733a33323a223366363330306264396635656666656633633530313061653137633966666662223b733a33323a223230313561653136643536363365636162633134353236636363363131383265223b7d733a343a2268617368223b733a36353a2232303135616531366435363633656361626331343532366363633631313832652d3366363330306264396635656666656633633530313061653137633966666662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1701072745);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"ntuanhung.96@gmail.com\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"OmekaS\"'),
('locale', '\"en_US\"'),
('media_alt_text_property', '\"\"'),
('media_type_whitelist', '{\"0\":\"application\\/msword\",\"1\":\"application\\/ogg\",\"2\":\"application\\/pdf\",\"3\":\"application\\/rtf\",\"4\":\"application\\/vnd.ms-access\",\"5\":\"application\\/vnd.ms-excel\",\"6\":\"application\\/vnd.ms-powerpoint\",\"7\":\"application\\/vnd.ms-project\",\"8\":\"application\\/vnd.ms-write\",\"9\":\"application\\/vnd.oasis.opendocument.chart\",\"10\":\"application\\/vnd.oasis.opendocument.database\",\"11\":\"application\\/vnd.oasis.opendocument.formula\",\"12\":\"application\\/vnd.oasis.opendocument.graphics\",\"13\":\"application\\/vnd.oasis.opendocument.presentation\",\"14\":\"application\\/vnd.oasis.opendocument.spreadsheet\",\"15\":\"application\\/vnd.oasis.opendocument.text\",\"16\":\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"17\":\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"18\":\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"19\":\"application\\/x-gzip\",\"20\":\"application\\/x-ms-wmp\",\"21\":\"application\\/x-msdownload\",\"22\":\"application\\/x-shockwave-flash\",\"23\":\"application\\/x-tar\",\"24\":\"application\\/zip\",\"25\":\"audio\\/midi\",\"26\":\"audio\\/mp4\",\"27\":\"audio\\/mpeg\",\"28\":\"audio\\/ogg\",\"29\":\"audio\\/x-aac\",\"30\":\"audio\\/x-aiff\",\"31\":\"audio\\/x-ms-wma\",\"32\":\"audio\\/x-ms-wax\",\"33\":\"audio\\/x-realaudio\",\"34\":\"audio\\/x-wav\",\"35\":\"image\\/bmp\",\"36\":\"image\\/gif\",\"37\":\"image\\/jp2\",\"38\":\"image\\/jpeg\",\"39\":\"image\\/pjpeg\",\"40\":\"image\\/png\",\"41\":\"image\\/tiff\",\"42\":\"image\\/x-icon\",\"43\":\"text\\/css\",\"44\":\"text\\/plain\",\"45\":\"text\\/richtext\",\"46\":\"video\\/divx\",\"47\":\"video\\/mp4\",\"48\":\"video\\/mpeg\",\"49\":\"video\\/ogg\",\"50\":\"video\\/quicktime\",\"51\":\"video\\/webm\",\"52\":\"video\\/x-ms-asf\",\"54\":\"video\\/x-msvideo\",\"55\":\"video\\/x-ms-wmv\"}'),
('pagination_per_page', '\"25\"'),
('property_label_information', '\"none\"'),
('recaptcha_secret_key', '\"\"'),
('recaptcha_site_key', '\"\"'),
('time_zone', '\"Europe\\/Paris\"'),
('use_htmlpurifier', '\"1\"'),
('value_languages', '[]'),
('version', '\"4.0.4\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'ntuanhung.96@gmail.com', 'gnuh96', '2023-10-25 21:59:21', '2023-10-25 21:59:21', '$2y$10$7NqKc95EqsBd2uukxKcsveLmkGkI9Wbb64ivAY9Qrz57WIP.PYJOa', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('browse_defaults_admin_item_sets', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_sites', 1, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('columns_admin_item_sets', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 1, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('default_resource_template', 1, '\"2\"'),
('locale', 1, '\"en_US\"');

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `uri` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(5, 4, 1, NULL, NULL, 'literal', '', 'Shang Palace', NULL, 1),
(6, 4, 192, NULL, NULL, 'literal', '', '10 avenue d\'Iéna, Paris, 75116, France', NULL, 1),
(7, 5, 1, NULL, NULL, 'literal', '', 'Cuisine chinoise', NULL, 1),
(8, 6, 1, NULL, NULL, 'literal', '', 'Saveurs cantonaises authentiques ', NULL, 1),
(9, 4, 194, NULL, NULL, 'literal', '', '66€ - 157€', NULL, 1),
(10, 4, 193, 5, NULL, 'resource', NULL, NULL, NULL, 1),
(11, 4, 193, 6, NULL, 'resource', NULL, NULL, NULL, 1),
(12, 4, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(13, 7, 1, NULL, NULL, 'literal', '', 'Cuisine japonaise', NULL, 1),
(14, 8, 1, NULL, NULL, 'literal', '', 'Cuisine cambodgienne', NULL, 1),
(15, 9, 1, NULL, NULL, 'literal', '', 'Cuisine Vietnamienne', NULL, 1),
(16, 10, 1, NULL, NULL, 'literal', '', 'Cuisine coréenne', NULL, 1),
(17, 11, 1, NULL, NULL, 'literal', '', 'Cuisine thaïlandaise', NULL, 1),
(18, 12, 1, NULL, NULL, 'literal', '', 'Saveurs de Hongkong', NULL, 1),
(19, 13, 1, NULL, NULL, 'literal', '', 'Saveurs de Sichuan', NULL, 1),
(20, 14, 1, NULL, NULL, 'literal', '', ' Sichuan hot pot', NULL, 1),
(21, 15, 1, NULL, NULL, 'literal', '', 'Grillades', NULL, 1),
(22, 16, 1, NULL, NULL, 'literal', 'fr', 'Soupe chaud', NULL, 1),
(23, 17, 1, NULL, NULL, 'literal', '', 'Pho', NULL, 1),
(25, 19, 1, NULL, NULL, 'literal', '', 'Mongkok', NULL, 1),
(26, 19, 192, NULL, NULL, 'literal', '', '23 Rue Juge, 75015 Paris', NULL, 1),
(27, 19, 194, NULL, NULL, 'literal', '', '11€ - 33€', NULL, 1),
(28, 19, 193, 5, NULL, 'resource', NULL, NULL, NULL, 1),
(29, 19, 193, 12, NULL, 'resource', NULL, NULL, NULL, 1),
(30, 19, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(31, 4, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(32, 19, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(33, 21, 1, NULL, NULL, 'literal', '', 'Le Pont de Sichuan', NULL, 1),
(34, 21, 192, NULL, NULL, 'literal', '', '86 Rue de Richelieu 75002 Paris', NULL, 1),
(35, 21, 194, NULL, NULL, 'literal', '', '10€ - 30€', NULL, 1),
(36, 21, 193, 5, NULL, 'resource', NULL, NULL, NULL, 1),
(37, 21, 193, 13, NULL, 'resource', NULL, NULL, NULL, 1),
(38, 21, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(39, 21, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(40, 23, 1, NULL, NULL, 'literal', '', 'Shu', NULL, 1),
(41, 23, 192, NULL, NULL, 'literal', '', '8 rue Suger, Paris, 75006, France', NULL, 1),
(42, 23, 194, NULL, NULL, 'literal', '', '60€ - 70€', NULL, 1),
(43, 23, 193, 7, NULL, 'resource', NULL, NULL, NULL, 1),
(44, 23, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(45, 23, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(46, 25, 1, NULL, NULL, 'literal', '', 'Thaï Spices', NULL, 1),
(47, 25, 192, NULL, NULL, 'literal', '', '5-7 rue de l\'Ave-Maria, Paris, 75004, France', NULL, 1),
(48, 25, 194, NULL, NULL, 'literal', '', '30€ - 50€', NULL, 1),
(49, 25, 193, 11, NULL, 'resource', NULL, NULL, NULL, 1),
(50, 25, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(51, 25, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(52, 27, 1, NULL, NULL, 'literal', '', 'Sagan', NULL, 1),
(53, 27, 192, NULL, NULL, 'literal', '', '8 rue Casimir-Delavigne, Paris, 75006, France', NULL, 1),
(54, 27, 194, NULL, NULL, 'literal', '', '28€ - 57€', NULL, 1),
(55, 27, 193, 7, NULL, 'resource', NULL, NULL, NULL, 1),
(56, 27, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(57, 27, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(58, 29, 1, NULL, NULL, 'literal', '', 'Kushikatsu Bon', NULL, 1),
(59, 29, 192, NULL, NULL, 'literal', '', '24 rue Jean-Pierre Timbaud 75011 Paris', NULL, 1),
(60, 29, 194, NULL, NULL, 'literal', '', '65 € - 75 €', NULL, 1),
(61, 29, 193, 7, NULL, 'resource', NULL, NULL, NULL, 1),
(62, 29, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(63, 29, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(64, 31, 1, NULL, NULL, 'literal', '', 'My Noodles', NULL, 1),
(65, 31, 192, NULL, NULL, 'literal', '', '129 Boulevard du Montparnasse\n75006 Paris', NULL, 1),
(66, 31, 194, NULL, NULL, 'literal', '', '10€ - 20€', NULL, 1),
(67, 31, 193, 5, NULL, 'resource', NULL, NULL, NULL, 1),
(68, 31, 193, 33, NULL, 'resource', NULL, NULL, NULL, 1),
(69, 31, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(70, 33, 1, NULL, NULL, 'literal', '', 'Nouille', NULL, 1),
(71, 31, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(72, 34, 1, NULL, NULL, 'literal', '', 'Fondue dragon', NULL, 1),
(73, 34, 192, NULL, NULL, 'literal', '', '5 Rue Étienne Marcel 75001 Paris', NULL, 1),
(74, 34, 194, NULL, NULL, 'literal', '', '20€ - 50€', NULL, 1),
(75, 34, 193, 5, NULL, 'resource', NULL, NULL, NULL, 1),
(76, 34, 193, 14, NULL, 'resource', NULL, NULL, NULL, 1),
(77, 34, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(78, 34, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(79, 36, 1, NULL, NULL, 'literal', '', 'Le Cambodge', NULL, 1),
(80, 36, 192, NULL, NULL, 'literal', '', '10, avenue Richerand 75010 Paris, France', NULL, 1),
(81, 36, 194, NULL, NULL, 'literal', '', '10€ - 20€', NULL, 1),
(82, 36, 193, 8, NULL, 'resource', NULL, NULL, NULL, 1),
(83, 36, 193, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(84, 36, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(85, 36, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(86, 38, 1, NULL, NULL, 'literal', '', 'Comme Au Vietnam', NULL, 1),
(87, 38, 192, NULL, NULL, 'literal', '', '195 Avenue de Choisy, 75013 Paris', NULL, 1),
(88, 38, 194, NULL, NULL, 'literal', '', '15€ - 30€', NULL, 1),
(89, 38, 193, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(90, 38, 193, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(91, 38, 193, 9, NULL, 'resource', NULL, NULL, NULL, 1),
(92, 38, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(93, 38, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(94, 40, 1, NULL, NULL, 'literal', '', 'Soon Grill', NULL, 1),
(95, 40, 192, NULL, NULL, 'literal', '', '78 rue des Tournelles, 75003 Paris France', NULL, 1),
(96, 40, 194, NULL, NULL, 'literal', '', '20€ - 80€', NULL, 1),
(97, 40, 193, 10, NULL, 'resource', NULL, NULL, NULL, 1),
(98, 40, 193, 15, NULL, 'resource', NULL, NULL, NULL, 1),
(99, 40, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(100, 40, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(101, 42, 1, NULL, NULL, 'literal', '', 'Pho 14', NULL, 1),
(102, 42, 192, NULL, NULL, 'literal', '', '129 avenue de Choisy, 75013 Paris France', NULL, 1),
(103, 42, 194, NULL, NULL, 'literal', '', '10€ - 20€', NULL, 1),
(104, 42, 193, 9, NULL, 'resource', NULL, NULL, NULL, 1),
(105, 42, 193, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(106, 42, 193, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(107, 42, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(108, 42, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(109, 44, 1, NULL, NULL, 'literal', '', 'Bonjour vietnam', NULL, 1),
(110, 44, 192, NULL, NULL, 'literal', '', '6 Rue Thouin, 75005 Paris', NULL, 1),
(111, 44, 194, NULL, NULL, 'literal', '', '14€ - 27€', NULL, 1),
(112, 44, 193, 9, NULL, 'resource', NULL, NULL, NULL, 1),
(113, 44, 193, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(114, 44, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(115, 44, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(116, 46, 1, NULL, NULL, 'literal', '', 'Lac Hong', NULL, 1),
(117, 46, 192, NULL, NULL, 'literal', '', '67 Rue Lauriston, 75116 Paris', NULL, 1),
(118, 46, 194, NULL, NULL, 'literal', '', '20€ - 60€', NULL, 1),
(119, 46, 193, 9, NULL, 'resource', NULL, NULL, NULL, 1),
(120, 46, 193, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(121, 46, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(122, 46, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(123, 48, 1, NULL, NULL, 'literal', '', 'Rachiny T', NULL, 1),
(124, 48, 192, NULL, NULL, 'literal', '', '49 Rue De Lappe 75011 Paris', NULL, 1),
(125, 48, 194, NULL, NULL, 'literal', '', '9€ - 33€', NULL, 1),
(126, 48, 193, 11, NULL, 'resource', NULL, NULL, NULL, 1),
(127, 48, 193, 16, NULL, 'resource', NULL, NULL, NULL, 1),
(128, 48, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(129, 48, 185, NULL, NULL, 'literal', '', '0', NULL, 1),
(130, 50, 1, NULL, NULL, 'literal', '', 'Dokkebi14', NULL, 1),
(131, 50, 192, NULL, NULL, 'literal', '', ' 121 Rue Raymond Losserand, 75014 Paris France', NULL, 1),
(132, 50, 194, NULL, NULL, 'literal', '', '10€ - 20€', NULL, 1),
(133, 50, 193, 10, NULL, 'resource', NULL, NULL, NULL, 1),
(134, 50, 186, NULL, NULL, 'literal', '', '0', NULL, 1),
(135, 50, 185, NULL, NULL, 'literal', '', '0', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `value_annotation`
--

CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'https://restauranttag.univ-paris8.fr/tagr#', 'tagr', 'Restaurant Tag', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Indexes for table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Indexes for table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Indexes for table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190));

--
-- Indexes for table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Indexes for table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Indexes for table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Indexes for table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Indexes for table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Indexes for table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Indexes for table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Indexes for table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Indexes for table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Constraints for table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Constraints for table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Constraints for table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Constraints for table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
