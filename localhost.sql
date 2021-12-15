-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 15 déc. 2021 à 09:46
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cubin_shop`
--
CREATE DATABASE IF NOT EXISTS `cubin_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cubin_shop`;

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `cat_id` int(11) NOT NULL,
  `fou_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_nom`) VALUES
(1, '2x2'),
(2, '3x3'),
(3, '4x4'),
(4, '5x5'),
(5, 'Skewb'),
(6, 'Pyraminx'),
(7, 'Megaminx'),
(8, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `fou_id` int(11) NOT NULL,
  `fou_nom` varchar(30) NOT NULL,
  `fou_pays` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`fou_id`, `fou_nom`, `fou_pays`) VALUES
(1, 'Gan', 'Chine'),
(2, 'Moyu', 'Chine'),
(3, 'Qiyi / MoJangGe', 'Chine'),
(4, 'Yuxin', 'Chine'),
(5, 'X-Man', 'Chine'),
(6, 'Accesoires', 'N/A');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_09_28_132445_create_posts_table', 1),
(3, '2021_09_28_141704_create_users_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraphe` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `pro_id` int(11) NOT NULL,
  `pro_cat_id` int(11) NOT NULL,
  `pro_fou_id` int(11) NOT NULL,
  `pro_ref` varchar(30) NOT NULL,
  `pro_libelle` varchar(50) NOT NULL,
  `pro_desc` text,
  `pro_prix` decimal(6,2) NOT NULL,
  `pro_stock` int(11) DEFAULT NULL,
  `pro_couleur` varchar(30) NOT NULL,
  `pro_photo` varchar(10) NOT NULL,
  `pro_d_ajout` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pro_d_modif` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`pro_id`, `pro_cat_id`, `pro_fou_id`, `pro_ref`, `pro_libelle`, `pro_desc`, `pro_prix`, `pro_stock`, `pro_couleur`, `pro_photo`, `pro_d_ajout`, `pro_d_modif`) VALUES
(1, 2, 1, 'GAN001', 'GAN 356 RS', '3x3', '16.99', 10, '', 'jpg', '2021-09-08 11:54:29', '2021-09-08 11:54:29'),
(2, 2, 1, 'GAN002', 'GAN 356 X', '3x3', '49.99', 10, '', 'jpg', '2021-09-08 11:54:29', '2021-09-08 11:54:29'),
(3, 2, 1, 'GAN003', 'GAN 356 M', '3x3', '32.99', 10, '', 'jpg', '2021-09-08 11:58:23', '2021-09-08 11:58:23'),
(4, 2, 1, 'GAN004', 'GAN 356 AIR', '3x3', '24.99', 10, '', 'jpg', '2021-09-08 11:58:23', '2021-09-08 11:58:23'),
(5, 2, 1, 'GAN005', 'GAN 11 M PRO', '3x3', '64.99', 10, '', 'jpg', '2021-09-08 12:02:37', '2021-09-08 12:02:37'),
(6, 2, 2, 'MOYU001', 'MOYU Weilong GTS3 ', '3x3', '29.99', 10, '', 'jpg', '2021-09-08 12:02:37', '2021-09-08 12:02:37'),
(7, 2, 2, 'MOYU002', 'MOYU Weilong WR ', '3x3', '38.99', 10, '', 'jpg', '2021-09-08 12:02:37', '2021-09-08 12:02:37'),
(8, 2, 2, 'MOYU003', 'MOYU Weilong GTS3 LM', '3x3', '34.99', 10, '', 'jpg', '2021-09-08 12:02:37', '2021-09-08 12:02:37'),
(9, 2, 2, 'MOYU004', 'MOYU Weilong GTS2 M', '3x3', '26.99', 10, '', 'jpg', '2021-09-08 12:02:37', '2021-09-08 12:02:37'),
(10, 2, 2, 'MOYU005', 'MOYU RS3 M 2020', '3x3', '8.99', 10, '', 'jpg', '2021-09-08 12:02:37', '2021-09-08 12:02:37'),
(11, 2, 3, 'QIYI001', 'QIYI MS', '3x3', '7.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(12, 2, 3, 'QIYI002', 'QIYI Thunderclap V3 M', '3x3', '9.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(13, 2, 3, 'QIYI003', 'QIYI Wuwei', '3x3', '14.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(14, 2, 3, 'QIYI004', 'QIYI Thunderclap', '3x3', '8.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(15, 2, 3, 'QIYI005', 'QIYI Warrior jelly', '3x3', '7.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(16, 2, 4, 'YUXIN001', 'YUXIN HuangLong M', '3x3', '24.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(17, 2, 4, 'YUXIN002', 'YUXIN Angstrom Little Magic', '3x3', '17.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(18, 2, 4, 'YUXIN003', 'YUXIN Kylin V2 M', '3x3', '9.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(19, 2, 4, 'YUXIN004', 'YUXIN Little Magic', '3x3', '4.99', 10, 'Violet', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(20, 2, 4, 'YUXIN005', 'YUXIN Love Treasure BOX', '3x3', '24.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(21, 2, 5, 'XMAN001', 'XMAN Tornado V2', '3x3', '24.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(22, 3, 1, 'GAN006', 'GAN 460 M', '4x4', '55.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(23, 3, 2, 'MOYU006', 'MOYU Aosu GTS2 M', '4x4', '44.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(24, 3, 2, 'MOYU007', 'MOYU Aosu Angstrom GTS2 M', '4x4', '54.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(25, 3, 2, 'MOYU008', 'MOYU RS4 M', '4x4', '14.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(26, 3, 2, 'MOYU009', 'MOYU Aosu Celeritas GTS2 M', '4x4', '54.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(27, 3, 3, 'QIYI006', 'QIYI Valk 4 M', '4x4', '39.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(28, 3, 3, 'QIYI007', 'QIYI Wuque', '4x4', '21.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(29, 3, 3, 'QIYI008', 'QIYI Qiyuan S Jelly', '4x4', '8.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(30, 3, 4, 'YUXIN006', 'YUXIN Little Magic M', '4x4', '9.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(31, 3, 4, 'YUXIN007', 'YUXIN Black Kirin', '4x4', '5.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(32, 3, 4, 'YUXIN008', 'YUXIN Black Kirin V2', '4x4', '5.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(33, 3, 5, 'XMAN002', 'XMAN Ambition M', '4x4', '29.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(34, 3, 5, 'XMAN003', 'XMAN Angstrom Ambition M', '4x4', '39.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(35, 3, 5, 'XMAN004', 'XMAN MAX Ambition M', '4x4', '42.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
(36, 1, 1, 'GAN007', 'GAN 249 V2 M', '2x2', '22.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(37, 1, 1, 'GAN008', 'GAN 251 M Explorer', '2x2', '29.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(38, 1, 1, 'GAN009', 'GAN 251 M Pro', '2x2', '32.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(39, 1, 1, 'GAN010', 'GAN 249 V2', '2x2', '15.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(40, 1, 2, 'MYOU010', 'MOYU Weipo WR M', '2x2', '19.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(41, 1, 2, 'MYOU011', 'MOYU RS2 M', '2x2', '7.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(42, 1, 2, 'MYOU012', 'MOYU Weipo', '2x2', '12.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(43, 1, 3, 'QIYI009', 'QIYI Qidi S Jelly', '2x2', '5.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(44, 1, 3, 'QIYI010', 'QIYI Valk 2 M', '2x2', '19.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(45, 1, 3, 'QIYI011', 'QIYI Valk 2 LM', '2x2', '19.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(46, 1, 4, 'YUXIN009', 'YUXIN Little magic 2x2', '2x2', '4.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(47, 1, 5, 'XMAN005', 'XMAN Flare M', '2x2', '16.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(48, 1, 5, 'XMAN006', 'XMAN Mystic Flare', '2x2', '26.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(49, 1, 5, 'XMAN007', 'XMAN MAX Flare', '2x2', '26.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(50, 1, 5, 'XMAN008', 'XMAN Pro Shop Flare', '2x2', '23.99', 10, '', 'jpg', '2021-09-08 13:31:21', '2021-09-08 13:31:21'),
(51, 4, 2, 'MOYU013', 'MYOU Aochuang GTS M', '5x5', '39.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(52, 4, 2, 'MOYU014', 'MYOU Aochuang WR M', '5x5', '35.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(53, 4, 3, 'QIYI012', 'QIYI Valk 54 M', '5x5', '49.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(54, 4, 3, 'QIYI013', 'QIYI Wushuang', '5x5', '23.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(55, 4, 3, 'QIYI014', 'QIYI Qizheng S', '5x5', '8.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(56, 4, 4, 'YUXIN010', 'YUXIN Cloud', '5x5', '8.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(57, 4, 4, 'YUXIN011', 'YUXIN HuangLong 5x5', '5x5', '19.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(58, 5, 1, 'GAN011', 'GAN Skewb M', 'Skewb', '31.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(59, 5, 1, 'GAN012', 'GAN  Angstrom Skewb M', 'Skewb', '41.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(60, 5, 1, 'GAN013', 'GAN Pro Shop Skewb M', 'Skewb', '38.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(61, 5, 2, 'MOYU015', 'MOYU Aoyan Skewb', 'Skewb', '18.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(62, 5, 2, 'MOYU016', 'MOYU Fisher Skewb', 'Skewb', '5.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(63, 5, 3, 'QIYI015', 'QIYI Qicheng Skewb', 'Skewb', '7.50', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(64, 5, 3, 'QIYI016', 'QIYI Qicheng A Skewb', 'Skewb', '6.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(65, 5, 4, 'YUXIN012', 'YUXIN Little Magic Skewb', 'Skewb', '5.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(66, 5, 4, 'YUXIN013', 'YUXIN Multi-Skewb', 'Skewb', '34.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(67, 5, 5, 'XMAN009', 'XMAN Wingy Skewb', 'Skewb', '13.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(68, 5, 5, 'XMAN010', 'XMAN Pro Shop Wingy Skewb', 'Skewb', '19.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(69, 6, 1, 'GAN014', 'GAN Pyraminx M Enhanced', NULL, '28.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(70, 6, 1, 'GAN015', 'GAN MonsterGO', 'Pyraminx', '11.99', 10, 'Stickerless', 'png', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(71, 6, 1, 'GAN016', 'GAN Pyraminx M Explorer', NULL, '23.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(72, 6, 2, 'MOYU017', 'MOYU Magnetic Pyraminx', NULL, '13.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(73, 6, 2, 'MOYU018', 'MOYU Pyraminx Duo', NULL, '14.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(74, 6, 3, 'QIYI017', 'QIYI MS Pyraminx', NULL, '8.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(75, 6, 3, 'QIYI018', 'QIYI Pyraminx Jelly', NULL, '7.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(76, 6, 3, 'QIYI019', 'QIYI Pyraminx Pastel', NULL, '7.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(77, 6, 4, 'YUXIN014', 'YUXIN HuangLong Pyraminx', NULL, '14.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(78, 6, 4, 'YUXIN015', 'YUXIN Black Kirin Pyraminx', NULL, '5.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(79, 6, 4, 'YUXIN016', 'YUXIN Little Magic Pyraminx M', NULL, '19.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(80, 6, 5, 'XMAN011', 'XMAN Bell Pyraminx V2', NULL, '16.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(81, 6, 5, 'XMAN012', 'XMAN Pro Shop Bell Pyraminx', NULL, '23.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(82, 7, 1, 'GAN017', 'GAN Megaminx', NULL, '57.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(83, 7, 2, 'MOYU019', 'MOYU Aohun WR Megaminx', NULL, '26.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(84, 7, 3, 'QIYI020', 'QIYI Qihen S Megaminx', NULL, '7.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(85, 7, 4, 'YUXIN017', 'YUXIN Little Magic Magaminx V2', NULL, '7.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(86, 7, 5, 'XMAN013', 'XMAN Galaxy Megaminx V2', NULL, '19.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
(87, 8, 2, 'MOYU020', 'MOYU 21x21', '21x21', '1499.99', 10, 'Stickerless', 'jpg', '2021-09-13 09:28:06', '2021-09-14 09:46:21'),
(89, 2, 3, 'barb001', 'Zeus le barbecue', 'Il est gros zebi', '0.99', 1, 'Roux', 'jpg', '2021-10-05 13:27:51', NULL),
(91, 2, 3, 'barb005', 'Zeus le barbecues', 'hvhgcuygiytf', '99.99', 16, 'Mouge', 'jpg', '2021-10-06 10:01:48', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email_verified_at` timestamp NULL DEFAULT NULL,
  `user_mdp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`cat_id`,`fou_id`),
  ADD KEY `fou_id` (`fou_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`fou_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `pro_ref` (`pro_ref`),
  ADD UNIQUE KEY `pro_libelle` (`pro_libelle`),
  ADD KEY `fou_id` (`pro_fou_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`fou_id`) REFERENCES `fournisseurs` (`fou_id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`pro_fou_id`) REFERENCES `fournisseurs` (`fou_id`);
--
-- Base de données : `essai`
--
CREATE DATABASE IF NOT EXISTS `essai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `essai`;
--
-- Base de données : `gescom_afpa`
--
CREATE DATABASE IF NOT EXISTS `gescom_afpa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gescom_afpa`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(2, 'Outillage manuel', NULL),
(3, 'Outillage mÃ©canique', NULL),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'MatÃ©riaux', NULL),
(9, 'Tondeuses Ã©lectriques', 3),
(10, 'Tondeuses Ã  moteur thermique', 3),
(11, 'DÃ©broussailleuses', 3),
(12, 'SÃ©cateurs', 2),
(13, 'Brouettes', 2),
(14, 'Tomates', 4),
(15, 'Poireaux', 4),
(16, 'Salade', 4),
(17, 'Haricots', 4),
(18, 'Thuyas', 5),
(19, 'Oliviers', 5),
(20, 'Pommiers', 5),
(21, 'Pots de fleurs', 6),
(22, 'Soucoupes', 6),
(23, 'Supports', 6),
(24, 'Transats', 7),
(25, 'Parasols', 7),
(26, 'Tonnelles', 7),
(27, 'Barbecues', 7),
(28, 'Lames de terrasse', 8),
(29, 'Grillages', 8),
(30, 'Panneaux de clÃ´ture', 8);

-- --------------------------------------------------------

--
-- Structure de la table `commander_articles`
--

CREATE TABLE `commander_articles` (
  `codart_id` int(11) NOT NULL,
  `codart_qte` int(11) DEFAULT NULL,
  `codart_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `cou_id` char(2) NOT NULL,
  `cou_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Ã‰mirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'ArmÃ©nie'),
('AN', 'Antilles NÃ©erlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa AmÃ©ricaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'ÃŽles Ã…land'),
('AZ', 'AzerbaÃ¯djan'),
('BA', 'Bosnie-HerzÃ©govine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'BahreÃ¯n'),
('BI', 'Burundi'),
('BJ', 'BÃ©nin'),
('BM', 'Bermudes'),
('BN', 'BrunÃ©i Darussalam'),
('BO', 'Bolivie'),
('BR', 'BrÃ©sil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'ÃŽle Bouvet'),
('BW', 'Botswana'),
('BY', 'BÃ©larus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'ÃŽles Cocos (Keeling)'),
('CD', 'RÃ©publique DÃ©mocratique du Congo'),
('CF', 'RÃ©publique Centrafricaine'),
('CG', 'RÃ©publique du Congo'),
('CH', 'Suisse'),
('CI', 'CÃ´te d\'Ivoire'),
('CK', 'ÃŽles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-MontÃ©nÃ©gro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'ÃŽle Christmas'),
('CY', 'Chypre'),
('CZ', 'RÃ©publique TchÃ¨que'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'RÃ©publique Dominicaine'),
('DZ', 'AlgÃ©rie'),
('EC', 'Ã‰quateur'),
('EE', 'Estonie'),
('EG', 'Ã‰gypte'),
('EH', 'Sahara Occidental'),
('ER', 'Ã‰rythrÃ©e'),
('ES', 'Espagne'),
('ET', 'Ã‰thiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'ÃŽles (malvinas) Falkland'),
('FM', 'Ã‰tats FÃ©dÃ©rÃ©s de MicronÃ©sie'),
('FO', 'ÃŽles FÃ©roÃ©'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'GÃ©orgie'),
('GF', 'Guyane FranÃ§aise'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'GuinÃ©e'),
('GP', 'Guadeloupe'),
('GQ', 'GuinÃ©e Ã‰quatoriale'),
('GR', 'GrÃ¨ce'),
('GS', 'GÃ©orgie du Sud et les ÃŽles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'GuinÃ©e-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'ÃŽles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'HaÃ¯ti'),
('HU', 'Hongrie'),
('ID', 'IndonÃ©sie'),
('IE', 'Irlande'),
('IL', 'IsraÃ«l'),
('IM', 'ÃŽle de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'OcÃ©an Indien'),
('IQ', 'Iraq'),
('IR', 'RÃ©publique Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'JamaÃ¯que'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'RÃ©publique Populaire DÃ©mocratique de CorÃ©e'),
('KR', 'RÃ©publique de CorÃ©e'),
('KW', 'KoweÃ¯t'),
('KY', 'ÃŽles CaÃ¯manes'),
('KZ', 'Kazakhstan'),
('LA', 'RÃ©publique DÃ©mocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'LibÃ©ria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'RÃ©publique de Moldova'),
('MG', 'Madagascar'),
('MH', 'ÃŽles Marshall'),
('MK', 'L\'ex-RÃ©publique Yougoslave de MacÃ©doine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'ÃŽles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-CalÃ©donie'),
('NE', 'Niger'),
('NF', 'ÃŽle Norfolk'),
('NG', 'NigÃ©ria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'NorvÃ¨ge'),
('NP', 'NÃ©pal'),
('NR', 'Nauru'),
('NU', 'NiuÃ©'),
('NZ', 'Nouvelle-ZÃ©lande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'PÃ©rou'),
('PF', 'PolynÃ©sie FranÃ§aise'),
('PG', 'Papouasie-Nouvelle-GuinÃ©e'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien OccupÃ©'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'RÃ©union'),
('RO', 'Roumanie'),
('RU', 'FÃ©dÃ©ration de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'ÃŽles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'SuÃ¨de'),
('SG', 'Singapour'),
('SH', 'Sainte-HÃ©lÃ¨ne'),
('SI', 'SlovÃ©nie'),
('SJ', 'Svalbard etÃŽle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'SÃ©nÃ©gal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao TomÃ©-et-Principe'),
('SV', 'El Salvador'),
('SY', 'RÃ©publique Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'ÃŽles Turks et CaÃ¯ques'),
('TD', 'Tchad'),
('TF', 'Terres Australes FranÃ§aises'),
('TG', 'Togo'),
('TH', 'ThaÃ¯lande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'TurkmÃ©nistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'TrinitÃ©-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'TaÃ¯wan'),
('TZ', 'RÃ©publique-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'ÃŽles Mineures Ã‰loignÃ©es des Ã‰tats-Unis'),
('US', 'Ã‰tats-Unis'),
('UY', 'Uruguay'),
('UZ', 'OuzbÃ©kistan'),
('VA', 'Saint-SiÃ¨ge (Ã©tat de la CitÃ© du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'ÃŽles Vierges Britanniques'),
('VI', 'ÃŽles Vierges des Ã‰tats-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'YÃ©men'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(10) UNSIGNED NOT NULL,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) NOT NULL,
  `cus_phone` varchar(10) NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES
(1, 'Riviere', 'Romain', '2301 boulevard Alsace-Lorraine', '80000', 'Amiens', 'FR', 'risus.morbi@laposte.net', '201583083', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-01-02 23:47:20', '2020-05-06 00:01:53'),
(2, 'Bailly', 'Lilou', 'Ap #125-483 Fusce Street', '80300', 'Birmingham', 'GB', 'sagittis.placerat@Aliquam.co.uk', '700966695', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-12-14 06:52:52', '2020-05-18 00:00:00'),
(3, 'Muller', 'Alexandre', 'P.O. Box 149, 6931 Nulla. Rd.', '80100', 'Abbeville', 'FR', 'mauris.Morbi@Lorem.co.uk', '167413271', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-08-19 01:35:44', NULL),
(4, 'Lefebvre', 'Ã‰lisa', 'Ap #850-6013 Suscipit, Av.', '62000', 'Arras', 'FR', 'laplusbelledu62g@gmail.com', '710601863', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-01-11 02:58:51', NULL),
(5, 'Andre', 'MaÃ«lle', 'Ap #449-9035 Ac Street', '59133', 'Vieux-Genappe', 'FR', 'aliquam.adipiscing@fringilla.net', '296292567', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-03-24 17:09:33', NULL),
(6, 'Lemaire', 'Enzo', 'P.O. Box 771, 895 Libero Avenue', '31779', 'Sevastopol', 'FR', 'interdum.feugiat@a.edu', '395027964', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-08-16 15:18:39', NULL),
(7, 'Perez', 'Bienvenue', 'Ap #382-9259 Tincidunt, Rd.', '49960', 'Maastricht', 'FR', 'tempus.mauris@nonloremvitae.net', '735753221', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-02-19 12:25:51', NULL),
(8, 'Dumont', 'Emma', '299-2527 Blandit Road', '13011', 'Paternopoli', 'FR', 'tristique.ac@Sedmalesuadaaugue.com', '373682901', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-07-17 08:28:22', NULL),
(9, 'Riviere', 'Alice', 'P.O. Box 743, 4502 Dictum St.', '64066', 'Campbelltown', 'FR', 'fringilla.ornare.placerat@odioEtiam.edu', '962347562', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-06-26 23:05:17', NULL),
(10, 'Boucher', 'NoÃ«', '865-7652 Nibh. Ave', '75197', 'Fermont', 'CA', 'facilisi.Sed.neque@eteuismodet.ca', '527427380', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-01-24 12:00:27', NULL),
(11, 'Masson', 'Aaron', '680-7022 Sollicitudin Avenue', '68058', 'Renfrew', 'FR', 'felis.Nulla@ligulaAeneangravida.net', '325055764', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-06-02 00:22:39', NULL),
(12, 'Nazdorovie', 'SergueÃ¯', '592 Moskow road', '51769', 'Vladivostok', 'RU', 'serguei@nazdorovie.ru', '925855798', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-06-17 01:02:23', '2020-05-23 00:00:00'),
(13, 'Lemoine', 'Yasmine', '9317 Sodales Ave', '06190', 'Huntsville', 'FR', 'dolor.sit.amet@Seddiam.net', '857714507', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-08-29 21:44:14', NULL),
(14, 'Lopez', 'Marion', '292 Ligula. Road', '47589', 'Kota', 'FR', 'molestie.in@accumsannequeet.edu', '698455911', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-01-09 19:02:05', NULL),
(15, 'Blanchard', 'Ã‰milie', 'Ap #923-6845 Commodo Street', '90846', 'Rodgau', 'FR', 'consectetuer.adipiscing@risusDuisa.co.uk', '471496791', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-06-24 12:06:59', NULL),
(16, 'Philippe', 'LÃ©onard', '7315 Proin Street', '70095', 'Matamata', 'FR', 'sodales.elit.erat@Vivamusnibhdolor.org', '107172928', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-03-26 13:44:18', NULL),
(17, 'Girard', 'Kimberley', 'P.O. Box 184, 8937 Pretium Street', '30481', 'Kamalia', 'FR', 'Suspendisse.sed.dolor@enimNunc.org', '404189030', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-12-11 14:27:22', NULL),
(18, 'Morin', 'Ã‰lise', 'Ap #846-6229 Eu, St.', '27844', 'West Valley City', 'FR', 'Integer.vitae@lorem.edu', '254854268', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-04-28 23:38:36', NULL),
(19, 'Lefebvre', 'ZoÃ©', '677-3832 Dis St.', '94571', 'Caruaru', 'FR', 'Sed@odioAliquamvulputate.net', '639577658', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-05-17 18:12:34', NULL),
(20, 'Renault', 'Lilian', '163 Sed Avenue', '36652', 'La UniÃ³n', 'FR', 'erat.semper@est.co.uk', '255166898', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-04-11 05:47:10', NULL),
(21, 'Remy', 'Dimitri', 'Ap #801-6517 Eros Avenue', '78009', 'Frigento', 'FR', 'amet.dapibus.id@placerat.ca', '396036245', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-12-18 03:53:15', NULL),
(22, 'Guillaume', 'Lena', '1064 Donec St.', '78387', 'Anchorage', 'US', 'varius.orci@fermentum.com', '953782036', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-11-15 06:58:24', NULL),
(23, 'Maillard', 'Charlotte', '738 Euismod Avenue', '17914', 'Losino-Petrovsky', 'RU', 'Maecenas.libero@nunc.com', '817015812', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-05-09 13:47:48', '2020-05-13 00:00:00'),
(24, 'Albert', 'Diego', 'Ap #332-8162 Proin Road', '83410', 'Trois-RiviÃ¨res', 'CA', 'aliquam@vestibulum.edu', '255430951', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-10-08 11:56:34', NULL),
(25, 'Leclerc', 'Lauriane', 'Ap #661-6175 Turpis St.', '88100', 'PÃ©kin', 'CN', 'non@auctorveliteget.org', '498920916', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-05-06 10:22:02', NULL),
(26, 'Poirier', 'Paul', 'Ap #784-932 Quis Rd.', '42399', 'Flushing', 'FR', 'lectus.sit@ligulaAliquamerat.net', '763446742', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-05-09 06:32:53', NULL),
(27, 'Hubert', 'Marianne', '8 cours javascript', '80090', 'Amiens', 'FR', 'vitae.purus@curae.org', '206792150', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-11-03 04:53:14', '2020-06-01 00:00:00'),
(28, 'Caron', 'CÃ©dric', 'P.O. Box 643, 5476 Mi Rd.', '23735', 'Vanderhoof', 'FR', 'egestas.Duis.ac@eleifend.edu', '266232419', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-10-01 22:21:43', NULL),
(29, 'Fournier', 'CÃ©lia', 'P.O. Box 301, 1701 Neque. Street', '14711', 'Harrisburg', 'FR', 'ante.Nunc@porta.edu', '692615826', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-02-02 09:30:12', NULL),
(30, 'Hubert', 'Corentin', 'Ap #150-5696 Et, St.', '08762', 'Veldwezelt', 'FR', 'fringilla.euismod.enim@Namligula.ca', '539979021', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-10-08 04:53:40', NULL),
(31, 'Dupont', 'MacÃ©o', 'P.O. Box 580, 927 Amet Ave', '32275', 'Karachi', 'FR', 'Sed.auctor.odio@velitPellentesque.net', '758036455', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-11-24 08:24:31', NULL),
(32, 'Fabre', 'Maelys', 'P.O. Box 347, 5390 Sit St.', '04549', 'Francavilla Fontana', 'FR', 'Duis.cursus@Pellentesquehabitantmorbi.ca', '253671958', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2018-09-26 18:10:38', NULL),
(33, 'Henry', 'Florentin', '4750 Molestie Rd.', '91323', 'Heusden-Zolder', 'FR', 'a.sollicitudin@adipiscingfringilla.ca', '726936785', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-07-04 00:37:24', NULL),
(34, 'Pons', 'LÃ©onard', '6857 Scelerisque Ave', '52811', 'Antofagasta', 'FR', 'lectus@aliquet.edu', '941616307', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-08-10 13:20:15', NULL),
(35, 'Fleury', 'Solene', 'Ap #518-8977 Duis Street', '55043', 'OlmuÃ©', 'FR', 'mollis@laciniavitae.net', '808630903', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-09-05 16:06:49', NULL),
(36, 'Richard', 'RÃ©mi', 'P.O. Box 480, 2248 Ac Road', '09509', 'Bilbo', 'FR', 'bibendum.sed@semvitaealiquam.ca', '943962068', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-11-03 12:40:42', NULL),
(37, 'Blanc', 'Sarah', 'P.O. Box 535, 8956 Ut, Avenue', '61210', 'Joliet', 'FR', 'rutrum@nibh.com', '805575004', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-06-27 03:01:40', NULL),
(38, 'Evrard', 'Paul', 'P.O. Box 909, 6072 Nullam St.', '79346', 'Raiganj', 'FR', 'arcu.Vestibulum@elitpellentesquea.org', '401905237', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2000-03-31 09:57:34', NULL),
(39, 'Legrand', 'Romane', 'P.O. Box 567, 3645 Eu Rd.', '41510', 'Vilvoorde', 'FR', 'nunc@faucibus.org', '963165937', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-11-21 09:09:09', NULL),
(40, 'Huet', 'Julien', '285-395 Est, Rd.', '22174', 'Eschwege', 'FR', 'amet@eudolor.edu', '240881253', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-06-11 22:34:48', NULL),
(41, 'Dubois', 'Lamia', '145-1564 Vestibulum Rd.', '86306', 'Valleyview', 'FR', 'Pellentesque.habitant.morbi@musAenean.ca', '682183873', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-06-20 16:12:22', NULL),
(42, 'Carpentier', 'MaÃ¯wenn', 'P.O. Box 181, 3727 Sem Road', '77351', 'Farrukhabad-cum-Fatehgarh', 'FR', 'sem.magna@sedorci.org', '715511479', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-02-18 17:34:11', NULL),
(43, 'Perez', 'Florentin', '2114 Nisi. St.', '75209', 'Trivandrum', 'FR', 'velit.justo.nec@MaurisnullaInteger.com', '870041920', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-03-02 07:07:47', NULL),
(44, 'Dupont', 'ChaÃ¯ma', 'P.O. Box 576, 4207 Sociis Av.', '78616', 'Romeral', 'FR', 'lorem.ipsum@Praesenteunulla.edu', '399708266', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-08-26 02:39:06', NULL),
(45, 'Schneider', 'Alice', '548-7461 Nunc Av.', '18591', 'Marburg', 'FR', 'Aliquam.erat@eget.org', '297079661', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-07-05 07:36:55', NULL),
(46, 'Gautier', 'Rose', 'P.O. Box 705, 741 Integer Avenue', '73604', 'Kartaly', 'FR', 'ante@aliquet.com', '932461360', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-09-13 08:02:43', NULL),
(47, 'Guillot', 'Loevan', 'Ap #601-2284 Commodo Road', '54873', 'Gonnosfanadiga', 'FR', 'cursus.in@ultriciessem.ca', '314644035', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2020-11-19 14:41:00', NULL),
(48, 'Lefevre', 'ClÃ©mence', '476-8880 Suscipit, Rd.', '61563', 'VÃ¶cklabruck', 'FR', 'ut@sollicitudinadipiscing.co.uk', '457752971', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-12-09 16:42:16', NULL),
(49, 'Bouvier', 'Clara', 'P.O. Box 282, 9786 Tellus Street', '07517', 'Wilskerke', 'FR', 'Fusce.fermentum.fermentum@adipiscingfringillaporttitor.co.uk', '432914963', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2010-12-21 23:10:13', NULL),
(50, 'Blanchard', 'Adam', 'P.O. Box 259, 7958 Sem, St.', '82728', 'Roosbeek', 'FR', 'elementum@atfringillapurus.edu', '139672737', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-08-13 16:41:09', NULL),
(51, 'Pikatchien', 'Jessica', '92 rue de la plage', '22190', 'PlÃ©rin', 'FR', 'jessica.pikatchien@plerin.fr', '278564042', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-06-22 04:55:34', '2020-05-18 07:26:24'),
(52, 'Bailly', 'LÃ©o', '800-2734 Morbi Av.', '50231', 'Widooie', 'FR', 'ornare.lectus@hendreritDonec.edu', '734831721', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-02-01 18:54:35', NULL),
(53, 'Schneider', 'Florentin', 'P.O. Box 468, 4940 Cursus Rd.', '36508', 'Vaux-sur-Sure', 'FR', 'erat.vitae@aliquet.com', '821421997', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-03-16 09:28:03', NULL),
(54, 'Caron', 'Martin', '242-9793 Ipsum Road', '51877', 'Tain', 'FR', 'pharetra.sed@Etiambibendumfermentum.edu', '788393239', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-07-23 09:59:23', NULL),
(55, 'David', 'LutÃ©cia', '665-963 Donec Road', '44664', 'Westkapelle', 'FR', 'lorem@felispurusac.net', '792783693', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2005-05-25 12:33:45', NULL),
(56, 'Robert', 'Agathe', '6737 Ut, Road', '05249', 'Sandy', 'FR', 'nunc.sed.pede@consectetueradipiscing.com', '634450159', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-01-30 21:14:24', NULL),
(57, 'Rodriguez', 'MacÃ©o', 'P.O. Box 355, 2303 Vitae Street', '57821', 'Suncheon', 'FR', 'orci@ametornarelectus.org', '472684476', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-01-22 06:07:53', NULL),
(58, 'Humbert', 'Ã‰louan', 'P.O. Box 452, 8712 Purus, Av.', '05252', 'Alix', 'FR', 'quam.dignissim.pharetra@ornare.org', '682265107', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-07-24 01:49:50', NULL),
(59, 'Charpentier', 'Lucie', '9957 Morbi Rd.', '24752', 'Aschersleben', 'FR', 'ac.nulla@ante.net', '441099805', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-07-15 19:33:57', NULL),
(60, 'Colin', 'Yanis', '804-4641 Nunc. Avenue', '16829', 'Alness', 'FR', 'sit.amet.orci@turpisnec.co.uk', '812254447', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-06-19 11:55:02', NULL),
(61, 'Robert', 'Ã‰lise', 'Ap #872-7281 Amet Street', '09693', 'Rocky Mountain House', 'FR', 'erat.nonummy.ultricies@sapienAenean.ca', '407007247', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-12-08 10:54:13', NULL),
(62, 'Lucas', 'Laura', '976-2480 Turpis Ave', '58690', 'Alanya', 'FR', 'vel.mauris@massarutrummagna.ca', '405524344', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-01-11 10:45:30', NULL),
(63, 'Laurent', 'Quentin', '489-9653 Fermentum Rd.', '65691', 'Fort Resolution', 'FR', 'porttitor.interdum@dictum.co.uk', '707373852', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2008-06-08 17:58:44', NULL),
(64, 'Giraud', 'Kimberley', '7411 Ut Rd.', '51814', 'Stroud', 'FR', 'nec@nectempus.com', '103884425', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-06-28 21:35:30', NULL),
(65, 'Bailly', 'Julien', 'Ap #182-3848 Nunc St.', '82181', 'Laramie', 'FR', 'Morbi@feugiatLorem.org', '274508650', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-05-01 14:27:23', NULL),
(66, 'Chevalier', 'Gaspard', '8464 Blandit Rd.', '03869', 'Glain', 'FR', 'elit.sed.consequat@ultricies.co.uk', '466809005', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-04-06 14:32:34', NULL),
(67, 'Francois', 'Tatiana', 'Ap #961-9752 Vestibulum Rd.', '77822', 'Cap-de-la-Madeleine', 'FR', 'dictum.mi.ac@ametconsectetueradipiscing.org', '200147301', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-01-26 19:17:52', NULL),
(68, 'Mercier', 'Constant', 'Ap #706-6920 Amet Rd.', '49458', 'Haut-Ittre', 'FR', 'tellus.imperdiet@variusorciin.org', '296096563', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-03-14 09:41:04', NULL),
(69, 'Gomez', 'JÃ©rÃ©my', '70 avenue des travailleurs', '80000', 'Amiens', 'FR', 'lacus.Etiam@nibhco.net', '967938363', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-12-15 13:46:02', '2020-06-01 00:00:00'),
(70, 'Leroy', 'Benjamin', 'P.O. Box 202, 4157 Et, Avenue', '41799', 'EckernfÃ¶rde', 'FR', 'non.magna.Nam@ultriciesdignissim.com', '199309302', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2008-04-16 12:28:17', NULL),
(71, 'Rolland', 'Ethan', '907-4675 Pede Rd.', '32055', 'Enterprise', 'FR', 'dolor.Fusce.mi@dignissim.co.uk', '584704040', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2020-11-01 17:46:48', NULL),
(72, 'Meunier', 'Margaux', 'P.O. Box 461, 5531 In Rd.', '39165', 'Glimes', 'FR', 'morbi.tristique.senectus@Phasellusdolor.co.uk', '422001131', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-12-16 15:43:52', NULL),
(73, 'Roger', 'Thomas', 'P.O. Box 505, 6494 Vel Avenue', '06743', 'Fino Mornasco', 'FR', 'porttitor.vulputate@egetipsumSuspendisse.edu', '894398702', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-12-25 11:33:00', NULL),
(74, 'Renaud', 'AnaÃ«l', 'Ap #309-9136 Suspendisse St.', '45464', 'Westmount', 'FR', 'eget@ipsumcursusvestibulum.edu', '299244593', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-03-11 14:57:33', NULL),
(75, 'Morin', 'YÃ¼na', '8089 Erat St.', '07900', 'Shenkursk', 'FR', 'Integer@lectuspedeultrices.org', '230162777', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-07-28 04:31:18', NULL),
(76, 'Joly', 'Eva', '479-8537 Ipsum Ave', '42231', 'Bhimavaram', 'FR', 'et.nunc.Quisque@odiotristique.com', '917398026', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-11-09 23:09:40', NULL),
(77, 'Garnier', 'AnaÃ«l', '4703 Fringilla, Street', '66625', 'Kobbegem', 'FR', 'at.arcu@vitaeodio.org', '173395243', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-10-20 09:29:18', NULL),
(78, 'Martinez', 'Lina', 'Ap #466-9700 Pede. Avenue', '46174', 'My', 'FR', 'nisi.nibh.lacinia@nunc.com', '497067354', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-05-24 09:07:41', NULL),
(79, 'Le gall', 'Nathan', 'P.O. Box 792, 625 Libero Rd.', '40854', 'Ancaster Town', 'FR', 'Sed.nunc@sitamet.ca', '676975310', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-09-25 11:13:28', NULL),
(80, 'Martinez', 'Fanny', 'Ap #677-8255 Et Avenue', '14981', 'Rodgau', 'FR', 'tortor@maurissitamet.co.uk', '893683553', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2004-12-11 22:25:30', NULL),
(81, 'Clement', 'Lucas', '694-5524 Sit St.', '92268', 'Branchon', 'FR', 'luctus@vitaeorci.org', '786695746', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-04-01 19:01:57', NULL),
(82, 'Marchal', 'Thomas', '200-3480 A Road', '11669', 'Saint-Honorï¿½', 'FR', 'magna.Praesent.interdum@velit.edu', '225003361', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-01-15 06:06:53', NULL),
(83, 'Rey', 'Alicia', 'P.O. Box 606, 9603 Lorem Av.', '75377', 'l\'EscaillÂre', 'FR', 'Mauris.magna@est.co.uk', '413194483', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-09-23 11:03:28', NULL),
(84, 'Rey', 'Jeanne', 'P.O. Box 550, 3352 Vitae Avenue', '81795', 'OlmuÃ©', 'FR', 'auctor@sem.com', '585086153', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2020-09-11 17:17:01', NULL),
(85, 'Bouvier', 'LÃ©onie', '116-5083 Tortor. Ave', '67639', 'Chieti', 'FR', 'Duis.risus.odio@a.com', '164663188', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2006-11-02 11:42:08', NULL),
(86, 'Paul', 'Marwane', '249-1253 Odio Street', '70886', 'Wimmertingen', 'FR', 'sociis.natoque.penatibus@suscipit.org', '702449373', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-02-25 04:13:58', NULL),
(87, 'Collin', 'MacÃ©o', 'Ap #349-3573 Nibh St.', '04443', 'Terrance', 'FR', 'per@pellentesqueSed.ca', '197051563', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-05-23 08:50:39', NULL),
(88, 'Maillard', 'Maelys', '6013 Metus Avenue', '88526', 'Huancayo', 'FR', 'magnis@tristiquealiquet.net', '362978211', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-09-22 07:22:30', NULL),
(89, 'Maillard', 'Constant', 'Ap #403-2940 Egestas St.', '61695', 'Heidenheim', 'FR', 'parturient.montes.nascetur@luctussitamet.com', '301933055', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2007-03-16 17:11:53', NULL),
(90, 'Daniel', 'FÃ©lix', 'Ap #325-2095 Risus, Rd.', '12706', 'Chimay', 'FR', 'Donec.sollicitudin.adipiscing@Morbinon.net', '297199570', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2010-03-13 06:11:54', NULL),
(91, 'Bon', 'Jean', '30 rue de poulainville', '80080', 'Amiens', 'FR', 'adipiscing@gmail.com', '354213413', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-04-13 11:14:36', '2020-06-01 00:00:00'),
(92, 'Boulanger', 'Mathis', 'P.O. Box 595, 7563 Id Avenue', '92588', 'Bhatinda', 'FR', 'laoreet.ipsum@id.co.uk', '292792782', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2008-04-26 14:48:02', NULL),
(93, 'Boucher', 'Dorian', 'P.O. Box 795, 7040 Venenatis Ave', '82751', 'Jelenia GÃ³ra', 'FR', 'Curabitur@nonummy.com', '199164804', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-05-27 07:39:18', NULL),
(94, 'Bouvier', 'Marion', '1071 Molestie Ave', '38203', 'Limburg', 'FR', 'Suspendisse.aliquet@nibh.co.uk', '555750153', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2001-10-17 07:59:06', NULL),
(95, 'Maillard', 'Pauline', '4721 Nonummy Av.', '61225', 'Seilles', 'FR', 'magna.Praesent@pedeCum.edu', '743297591', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2019-08-28 15:49:08', NULL),
(96, 'Renaud', 'Rose', '7837 Hendrerit Rd.', '67206', 'Fremantle', 'FR', 'orci.in@ultriciesornareelit.edu', '817838763', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2014-07-17 14:27:43', NULL),
(97, 'Robert', 'Maelys', 'P.O. Box 393, 5911 Felis, St.', '06642', 'Casper', 'FR', 'malesuada.id.erat@velitCras.com', '643869652', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2003-10-29 11:53:49', NULL),
(98, 'Dupuis', 'Carla', 'Ap #874-1931 Iaculis Road', '69142', 'Virginia Plage', 'FR', 'nisi@neceuismod.ca', '913028975', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2012-05-06 03:59:39', NULL),
(99, 'Meunier', 'Angelina', 'Ap #784-906 Amet, Ave', '46591', 'Melle', 'FR', 'gravida.mauris@rutrumeu.edu', '797466269', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2013-10-20 11:20:59', NULL),
(100, 'Philippe', 'MaÃ¯wenn', '2585 In Street', '53983', 'Lumaco', 'FR', 'elit@Crassed.co.uk', '460749886', '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2009-09-21 15:57:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `dep_id` tinyint(3) UNSIGNED NOT NULL,
  `dep_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`dep_id`, `dep_name`) VALUES
(1, 'ComptabilitÃ©'),
(2, 'Ressources Humaines'),
(3, 'Logistique'),
(4, 'Maintenance'),
(5, 'Marketing'),
(6, 'Distribution'),
(7, 'Achat'),
(8, 'Direction'),
(10, 'Direction des SystÃ¨mes d\'Information');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(10) UNSIGNED NOT NULL,
  `emp_superior_id` int(10) UNSIGNED DEFAULT NULL,
  `emp_pos_id` int(10) UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_zipcode` varchar(5) NOT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_mail` varchar(255) NOT NULL,
  `emp_phone` varchar(10) NOT NULL,
  `emp_salary` decimal(8,2) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL,
  `emp_sho_id` tinyint(3) UNSIGNED NOT NULL,
  `emp_dep_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`, `emp_sho_id`, `emp_dep_id`) VALUES
(1, 17, 5, 'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', '0102030405', '18473.00', '2020-05-05', 'M', 8, 1, 4),
(2, 3, 2, 'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', '0102030405', '39576.00', '2015-03-27', 'F', 0, 1, 6),
(3, NULL, 1, 'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', '0102030405', '350000.78', '2000-01-01', 'M', 2, 1, 8),
(4, 17, 6, 'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', '0102030405', '18473.00', '2012-12-01', 'F', 1, 1, 6),
(5, 3, 35, 'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', '0102030405', '39576.00', '2007-11-04', 'M', 0, 1, 6),
(6, 5, 3, 'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', '0102030405', '30000.00', '2010-07-31', 'F', 2, 1, 6),
(7, 2, 3, 'AMAR', 'Yann', '4 rue du papillon de lumiÃ¨re', '62000', 'Arras', 'amar@azerty.com', '0102030405', '30000.00', '2008-05-28', 'M', 3, 2, 6),
(8, 14, 13, 'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', '0102030405', '18473.00', '2007-03-20', 'F', 5, 3, 6),
(9, 17, 34, 'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', '0102030405', '24000.00', '2016-12-17', 'M', 2, 1, 4),
(10, 38, 14, 'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', '0102030405', '20450.00', '2002-03-10', 'M', 2, 2, 6),
(11, 26, 27, 'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', '0102030405', '29500.00', '2015-05-03', 'M', 4, 1, 10),
(12, 17, 7, 'DECLAN', 'Richard', 'Appartement 870-7677 Magna Av.', '42980', 'Dornbirn', 'Mauris@amet.ca', '0102030405', '51802.00', '2003-06-25', 'M', 2, 1, 5),
(13, 38, 14, 'ABRAHAM', 'FranÃ§ois', '612-4178 Urna Chemin', '87784', 'Llanidloes', 'sodales@malesuadaInteger.com', '0102030405', '20450.00', '2012-09-08', 'M', 5, 3, 6),
(14, 22, 4, 'COOPER', 'Dale', '6954 Mauris Av.', '17543', 'Kalyan', 'Nunc.ullamcorper.velit@penatibuset.org', '0102030405', '39576.00', '2000-01-21', 'M', 4, 3, 6),
(15, 17, 8, 'FULLER', 'Christophe', '977-8389 Dui. Ave', '9229', 'Konstanz', 'semper@metus.edu', '0102030405', '18473.00', '2006-02-19', 'M', 1, 1, 2),
(16, 7, 17, 'TRON', 'Paul', '2323 Metus. Rue', '20403', 'Jumet', 'eu@gravidamauris.org', '0102030405', '51802.00', '2013-04-08', 'M', 1, 2, 6),
(17, 38, 14, 'HASZIC', 'Alec', '370-2193 Sed Rd.', '39132', 'Orangeville', 'cursus.Nunc@amet.edu', '0102030405', '20450.00', '2006-09-15', 'M', 4, 3, 6),
(18, 17, 10, 'VADENT', 'Sophie', 'CP 131, 8783 Nisi Impasse', '26972', 'Burnaby', 'a@vitaepurusgravida.org', '0102030405', '51802.00', '2014-06-26', 'F', 2, 1, 2),
(19, 38, 14, 'BALZAC', 'JÃ©rÃ©my', 'CP 630, 2906 Mollis Route', '0247', 'Colchester', 'penatibus.et@sempertellusid.net', '0102030405', '20450.00', '2009-07-29', 'M', 3, 3, 6),
(20, 38, 14, 'YETTA', 'Ahmed', '228-2670 Luctus. Route', '85726', 'Havillers', 'non@ac.edu', '0102030405', '20450.00', '2008-03-13', 'M', 0, 2, 6),
(21, 14, 3, 'CHERET', 'Philippe', '443 Non Rue', '58015', 'Dolcedo', 'placerat.augue.Sed@mi.net', '0102030405', '30000.00', '2002-06-30', 'M', 2, 3, 6),
(22, 5, 17, 'FERRIS', 'Anne', 'Appartement 172-7219 Ante Chemin', '5155 ', 'North Waziristan', 'Duis.risus.odio@at.com', '0102030405', '51802.00', '2015-05-21', 'F', 0, 3, 6),
(23, 34, 12, 'TERIEUR', 'Alex', 'Appartement 733-1291 Velit Av.', '60100', 'Creil', 'alex@integereu.edu', '0102030405', '30000.00', '2019-03-19', 'M', 3, 3, 6),
(24, 17, 4, 'JANA', 'Vincent', '1229 Laoreet Av.', '07789', 'Bad Ischl', 'lacus@iderat.org', '0102030405', '39576.00', '2008-06-06', 'M', 5, 2, 6),
(25, 4, 17, 'LABALLE', 'Willy', '113-6834 At Rd.', 'B4X 7', 'LabuissiÂre', 'Suspendisse@nec.ca', '0102030405', '51802.00', '2004-03-06', 'M', 1, 1, 6),
(26, 17, 8, 'COCU', 'StÃ©phanie', 'CP 382, 9910 Massa. Avenue', '50718', 'Regina', 'ac.metus.vitae@quamquisdiam.net', '0102030405', '18473.00', '2013-07-11', 'F', 4, 2, 2),
(27, 17, 13, 'DELISLE', 'StÃ©phane', 'Appartement 406-5833 Facilisis, Av.', '26986', 'Sainte-Flavie', 'natoque.penatibus.et@utnullaCras.edu', '0102030405', '18473.00', '2002-09-01', 'M', 4, 1, 6),
(28, 17, 7, 'FULTON', 'Bernard', 'Appartement 896-3857 Sit Rue', '78933', 'Versailles', 'elit.elit@blanditNamnulla.ca', '0102030405', '51802.00', '2011-04-23', 'M', 1, 1, 8),
(29, 14, 13, 'KELSIE', 'Kirsten', '5586 Mus. Ave', 'C2W 9', 'Kumluca', 'pharetra.Quisque@Suspendisse.net', '0102030405', '18473.00', '2000-03-30', 'M', 4, 3, 6),
(30, 17, 19, 'RHONDA', 'Bradley', '7331 Pede. Rue', '01971', 'Pishin Valley', 'Nunc.lectus@leoMorbi.co.uk', '0102030405', '18473.00', '2013-10-18', 'M', 0, 1, 5),
(31, 34, 12, 'ASPEN', 'Casey', '7026 Orci Route', '13075', 'Impe', 'enim@ornareelitelit.co.uk', '0102030405', '30000.00', '2018-03-01', 'F', 4, 3, 6),
(32, 17, 8, 'KELSIE', 'Nadia', '723 Orci Rd.', '9989', 'Isola del Gran Sasso d\'Italia', 'amet.risus.Donec@bibendumDonec.ca', '0102030405', '18473.00', '2003-10-17', 'F', 2, 1, 2),
(33, 17, 18, 'DUMOULIN', 'Isabelle', 'Appartement 235-4026 Maecenas Chemin', '77-30', 'Glovertown', 'amet@habitant.edu', '0102030405', '51802.00', '2009-04-07', 'F', 4, 1, 5),
(34, 14, 11, 'DRAKE', 'Ray', '902-1314 Ut Route', '93131', 'Sorbo Serpico', 'sapien.cursus@Donec.com', '0102030405', '39576.00', '2019-12-10', 'M', 1, 3, 6),
(35, 17, 11, 'RICHARD', 'Destiny', '5004 Tellus Ave', '39013', 'Ambon', 'consectetuer@laciniaSedcongue.com', '0102030405', '39576.00', '2009-06-30', 'F', 2, 1, 6),
(36, 39, 12, 'DUFOURD', 'Steve', '356-7367 Nec, Impasse', '30661', 'Bonnert', 'in@Nunc.edu', '0102030405', '30000.00', '2013-08-19', 'M', 5, 3, 6),
(37, 7, 2, 'BECK', 'Carl', '9194 Nulla Ave', '87-14', 'Paris', 'tellus@et.ca', '0102030405', '39576.00', '2004-02-09', 'M', 1, 2, 6),
(38, 4, 2, 'SIMONE', 'George', '700-7880 Gravida Av.', '52439', 'Allentown', 'nostra@fringillaest.ca', '0102030405', '21472.50', '2000-04-07', 'M', 2, 3, 6),
(39, 14, 11, 'DORIAN', 'Zelda', 'CP 315, 4816 Dui. Chemin', '13801', 'Saravena', 'vehicula@turpis.org', '0102030405', '39576.00', '2000-08-12', 'F', 1, 3, 6),
(40, 17, 13, 'FARINI', 'Jana', 'CP 578, 8898 Purus Impasse', '91148', 'Wiener Neustadt', 'cursus.in.hendrerit@egetvariusultrices.ca', '0102030405', '18473.00', '2016-09-19', 'M', 0, 2, 6),
(41, 17, 12, 'GINGER', 'Tara', 'Appartement 254-6736 Sit Route', '74002', 'Amstelveen', 'iaculis@rutrum.org', '0102030405', '30000.00', '2001-05-31', 'F', 5, 2, 6),
(42, 17, 13, 'CHARLOT', 'Elijah', '725-5577 Dictum Chemin', '63145', 'Annan', 'luctus.et@Nunc.net', '0102030405', '18473.00', '2001-04-10', 'M', 3, 1, 6),
(43, 17, 12, 'DUPOND', 'Adrian', 'CP 919, 5276 Leo. Rue', '18974', 'Perquenco', 'Lorem.ipsum@amagnaLorem.net', '0102030405', '30000.00', '2010-10-19', 'M', 3, 2, 6),
(44, 38, 14, 'ISAAC', 'Christine', 'Appartement 717-2181 Et Impasse', '88779', 'Roux', 'lacus@Donecnonjusto.co.uk', '0102030405', '20450.00', '2016-01-09', 'F', 1, 2, 6),
(45, 38, 14, 'QUAMAR', 'Allistair', 'Appartement 223-3446 Mollis Rd.', '55469', 'GÃ¼ssing', 'orci@ultricesiaculis.ca', '0102030405', '20450.00', '2016-10-30', 'M', 0, 3, 6),
(46, 17, 5, 'PRINCE', 'Laurent', '665 Nibh. Rd.', '75217', 'Driffield', 'Curae.Phasellus.ornare@quamdignissimpharetra.net', '0102030405', '18473.00', '2003-10-15', 'M', 2, 1, 4),
(47, 22, 2, 'DUMAS', 'Ingrid', '396-7762 Magna. Route', '50406', 'Frigento', 'in.molestie@anteipsumprimis.org', '0102030405', '39576.00', '2017-04-28', 'F', 1, 3, 6),
(48, 17, 19, 'RAMERY', 'Bruno', '863 Nec Ave', '21485', 'Sint-Kruis-Winkel', 'at.lacus.Quisque@maurisipsum.edu', '0102030405', '18473.00', '2000-06-14', 'M', 5, 1, 5),
(49, 17, 11, 'MALACHI', 'RenÃ©', 'Appartement 165-7157 Auctor Impasse', '40583', 'Wambeek', 'tincidunt.orci@dolorvitae.co.uk', '0102030405', '39576.00', '2002-07-15', 'M', 1, 1, 6),
(50, 14, 13, 'RENSTER', 'Jeannette', 'CP 758, 4652 Mauris Chemin', '85874', 'Gelbressee', 'iaculis@elementumat.ca', '0102030405', '18473.00', '2007-06-22', 'F', 5, 3, 6),
(51, 17, 12, 'BERTAUX', 'Marc', '1664 Bibendum Avenue', '3274', 'Allein', 'mauris.blandit@temporarcuVestibulum.org', '0102030405', '30000.00', '2014-05-10', 'M', 5, 1, 6),
(52, 14, 11, 'RIGEL', 'Armand', 'CP 694, 2496 Eget Rue', '1104', 'Drachten', 'Aenean.eget.metus@orciin.com', '0102030405', '39576.00', '2013-05-11', 'M', 4, 3, 6),
(53, 17, 12, 'WYLIE', 'Jean-Michel', 'CP 725, 3993 Nec Av.', '97875', 'Maule', 'ac.turpis@maurissapiencursus.co.uk', '0102030405', '30000.00', '2014-12-21', 'M', 5, 2, 6),
(54, 26, 27, 'HONORA', 'Anita', '414-9179 Phasellus Rue', '6971', 'Werder', 'Suspendisse.commodo.tincidunt@quispede.org', '0102030405', '29500.00', '2009-06-18', 'F', 5, 1, 10),
(55, 17, 29, 'LANNOY', 'Julia', 'Appartement 111-9165 Metus. Rue', '0521 ', 'Mata de PlÃ¡tano', 'Mauris.ut@urnajusto.co.uk', '0102030405', '18473.00', '2018-06-08', 'F', 0, 1, 5),
(56, 17, 19, 'RICHAUMONT', 'Kendall', '954-5221 Dictum Avenue', '45146', 'Gulfport', 'natoque.penatibus.et@ametconsectetueradipiscing.net', '0102030405', '18473.00', '2007-01-20', 'M', 1, 1, 5),
(57, 38, 14, 'MALIK', 'Keiko', 'Appartement 633-956 Quis, Rd.', '45000', 'OrlÃ©ans', 'pede.ultrices.a@lacusEtiam.org', '0102030405', '20450.00', '2003-03-21', 'F', 2, 2, 6),
(58, 17, 6, 'HECTOR', 'Macaulay', '2095 In Ave', '52-91', 'EmarÃ¨se', 'sem.Nulla.interdum@lobortis.ca', '0102030405', '18473.00', '2007-12-26', 'M', 3, 2, 6),
(59, 4, 36, 'HANNAH', 'Amity', '537-1971 Vestibulum Rd.', '8203 ', 'Palagano', 'fermentum@quisturpisvitae.co.uk', '0102030405', '39576.00', '2013-08-01', 'M', 2, 2, 6),
(60, 17, 8, 'HEDY', 'Katell', 'CP 850, 1578 In Rue', '9661', 'Connah\'s Quay', 'lorem.sit.amet@pellentesque.co.uk', '0102030405', '18473.00', '2010-07-26', 'M', 0, 2, 2),
(61, 17, 8, 'BELL', 'Oleg', 'Appartement 679-9483 Fringilla Route', 'B4 6E', 'Parndorf', 'Aenean.massa.Integer@dui.org', '0102030405', '18473.00', '2012-03-25', 'M', 2, 2, 2),
(62, 17, 13, 'PAULA', 'Tasha', 'Appartement 193-7862 Mollis. Rue', '24446', 'McCallum', 'adipiscing.lobortis.risus@semmolestiesodales.com', '0102030405', '18473.00', '2018-02-03', 'F', 1, 2, 6),
(63, 17, 12, 'POPOV', 'Yuri', '6111 Risus. Ave', '60214', 'CompiÃ¨gne', 'yuri@gmail.com', '0102030405', '30000.00', '2012-08-06', 'M', 5, 1, 6),
(64, 14, 6, 'DENIS', 'Jeanine', '8325 Ornare Avenue', '71414', 'Colico', 'Integer.id@blanditviverraDonec.edu', '0102030405', '18473.00', '2011-11-30', 'F', 4, 3, 6),
(65, 17, 20, 'KEELY', 'Nassim', '14 avenue Isabelle Herdhebaut', '94086', 'San Juan de Dios', 'n.keely@yahoo.fr', '0102030405', '27000.00', '2000-10-15', 'M', 4, 2, 1),
(66, 17, 22, 'FULTON', 'Michel', '245 avenue du PrÃ©sident Roosevelt', '80000', 'Amiens', 'faucibus@leoMorbi.org', '0102030405', '18473.00', '2001-02-16', 'M', 4, 1, 6),
(67, 38, 14, 'Cole', 'ALLISTAIR', '27 rue Denis Garnier', '58318', 'Sierning', 'vel@vitae.net', '0102030405', '20450.00', '2007-11-26', 'M', 3, 3, 6),
(68, 39, 12, 'JOEL', 'Rose', '855-6714 Metus. Rue', '00046', 'Lestizza', 'risus.a@odio.com', '0102030405', '39576.00', '2000-12-26', 'F', 2, 3, 6),
(69, 17, 5, 'PRAZART', 'Emmanuel', '8515 Nullam Av.', '80500', 'Montdidier', 'dolor.tempus@augueid.com', '0102030405', '18473.00', '2004-03-15', 'M', 0, 2, 6),
(70, 17, 23, 'GUERAFI', 'Hakim', '480-2381 Volutpat. Avenue', '41233', 'Porto Cesareo', 'hguerafi@laposte.net', '0102030405', '18473.00', '2017-04-16', 'M', 5, 1, 3),
(71, 17, 13, 'AIMEE', 'Germaine', '5466 Nec Avenue', '96176', 'Melipilla', 'lorem@sociis.edu', '0102030405', '18473.00', '2010-05-21', 'F', 2, 2, 6),
(72, 17, 23, 'CARTER', 'Robin', '497 Chemin Ante', '60195', 'Duncan', 'nisi@blandit.ca', '0102030405', '18473.00', '2012-01-20', 'M', 1, 2, 3),
(73, 7, 2, 'LIRMA', 'Hugues', '91 bis rue Jarno', '62000', 'Arras', 'hugues.lirma@jarditou.com', '0102030405', '39576.00', '2019-07-10', 'M', 5, 2, 6),
(74, 17, 22, 'FITZGERALD', 'Neil', 'CP 545, 2293 Aenean Rue', '4431', 'Algarrobo', 'Quisque.purus@Donectincidunt.org', '0102030405', '18473.00', '2014-06-25', 'M', 2, 2, 6),
(75, 17, 24, 'AINSLEY', 'Hayden', '633-8228 Et Av.', '6878', 'GÃ¼strow', 'Etiam@Cumsociis.ca', '0102030405', '18473.00', '2003-05-25', 'M', 3, 1, 3),
(76, 17, 12, 'HILARY', 'Zia', '2945 Volutpat. Av.', 'T0X 3', 'Rabbi', 'ut.quam.vel@semut.net', '0102030405', '30000.00', '2006-04-17', 'F', 2, 1, 6),
(77, 47, 24, 'MADELINE', 'Jonas', 'Appartement 521-8237 Ligula. Chemin', 'Z4232', 'Noginsk', 'ac.metus@tellusloremeu.net', '0102030405', '18473.00', '2016-04-06', 'M', 2, 3, 3),
(78, 38, 14, 'TIMON', 'Alyssa', 'CP 503, 6759 Ultricies Avenue', '79444', 'Rockhampton', 'Sed.et.libero@necorci.org', '0102030405', '20450.00', '2005-03-25', 'F', 3, 1, 6),
(79, 47, 24, 'PETER', 'Carly', 'Appartement 792-2242 Semper Rd.', '29429', 'Greater Sudbury', 'Etiam.imperdiet@Cumsociisnatoque.ca', '0102030405', '18473.00', '2017-11-16', 'F', 5, 3, 3),
(80, 17, 21, 'TEEGAN', 'Benjamin', '915-3308 Morbi Avenue', '8258', 'Bottidda', 'habitant.morbi.tristique@tempor.com', '0102030405', '18473.00', '2015-05-16', 'M', 5, 1, 1),
(81, 17, 12, 'WILLA', 'Nina', 'CP 708, 8796 Proin Avenue', '6562', 'Innsbruck', 'eros@sem.edu', '0102030405', '30000.00', '2009-03-12', 'F', 0, 1, 6),
(82, 17, 11, 'CHANEY', 'Irma', '4854 Proin Chemin', '22235', 'Fort Providence', 'ultricies.sem.magna@non.com', '0102030405', '39576.00', '2006-01-31', 'F', 2, 1, 6),
(83, 17, 24, 'LAITH', 'Ariel', 'CP 298, 9838 Porttitor Rue', '40182', 'Wilmington', 'non.bibendum@penatibus.co.uk', '0102030405', '18473.00', '2016-01-17', 'F', 3, 1, 3),
(84, 52, 12, 'CALDWELL', 'Megan', 'CP 183, 6687 Vel Ave', '71913', 'Leerbeek', 'Proin.sed@tellusPhaselluselit.ca', '0102030405', '30000.00', '2012-01-05', 'M', 0, 3, 6),
(85, 47, 22, 'HERMAN', 'Alan', 'CP 248, 4557 Augue. Route', '03002', 'Bridgeport', 'Phasellus@molestietortor.org', '0102030405', '18473.00', '2010-04-16', 'M', 0, 3, 6),
(86, 2, 2, 'MICHAEL', 'Quinn', '777-2337 Pretium Chemin', '6350', 'Bilaspur', 'tellus@Uttinciduntvehicula.edu', '0102030405', '39576.00', '2002-09-26', 'M', 5, 1, 6),
(87, 17, 13, 'DOLLE-RAYMOND', 'Christian', '3578 Fermentum Avenue', '69961', 'Greenwich', 'lobortis.quis@Phasellus.net', '0102030405', '18473.00', '2018-12-25', 'M', 0, 1, 6),
(88, 17, 25, 'CALLUM', 'Howard', '7637 Nisi Av.', '16638', 'Gagliano del Capo', 'Aliquam@euligulaAenean.net', '0102030405', '33020.40', '2017-10-23', 'M', 2, 2, 6),
(89, 6, 3, 'KEANE', 'Ashton', '772-9554 Ipsum Av.', '4095 ', 'Khanpur', 'metus@eratvel.edu', '0102030405', '30000.00', '2005-09-07', 'M', 4, 1, 6),
(90, 17, 12, 'RANA', 'Charles-Henri', '2425 Aliquam Impasse', '10892', 'La Roche-sur-Yon', 'nisi.nibh@diamSeddiam.ca', '0102030405', '30000.00', '2007-01-29', 'f', 1, 2, 6),
(91, 22, 20, 'CARDON', 'Yvonne', '986-8855 Lacus. Ave', '1865', 'Corozal', 'Integer@metuseu.edu', '0102030405', '27000.00', '2000-10-31', 'F', 5, 3, 1),
(92, 47, 23, 'MASON', 'Martin', 'Appartement 397-5505 Leo, Avenue', '83701', 'General Lagos', 'a.facilisis@mollis.com', '0102030405', '18473.00', '2003-12-29', 'M', 1, 3, 3),
(93, 17, 25, 'ADENA', 'DorothÃ©e', '5988 Varius Chemin', '1666', 'Bonvicino', 'sem.consequat.nec@sagittisDuis.co.uk', '0102030405', '33020.40', '2017-12-04', 'F', 5, 1, 6),
(94, 17, 19, 'ZELDA', 'Britney', '5 rue de la mine', '62300', 'Lens', 'pellentesque@neque.edu', '0102030405', '18473.00', '2018-07-15', 'F', 1, 2, 5),
(95, 52, 12, 'RENARD', 'Caroline', '142-9516 Sed Rd.', '5685', 'Ross-on-Wye', 'mauris.Integer@tristiquesenectuset.net', '0102030405', '39576.00', '2007-02-02', 'F', 1, 3, 6),
(96, 17, 34, 'GISELA', 'Guy', '440-6585 Risus. Route', '80800', 'Corbie', 'facilisis@nullamagnamalesuada.edu', '0102030405', '24000.00', '2009-11-29', 'M', 1, 1, 4),
(97, 17, 26, 'ROSOFT', 'Mike', '646-1281 Vestibulum, Route', '15948', 'Barranquilla', 'id.libero.Donec@idmagna.com', '0102030405', '28822.00', '2005-06-11', 'M', 2, 1, 10),
(98, 26, 28, 'MARAT', 'Hans', '8882 Sollicitudin Chemin', '45142', 'Solihull', 'ornare.sagittis@eleifendCras.net', '0102030405', '38459.27', '2009-08-14', 'M', 2, 2, 10),
(99, 26, 27, 'LEMAIRE', 'Pierre-Jean', 'CP 456, 6156 Orci Ave', '96335', 'Nottingham', 'nulla.at.sem@anteblandit.ca', '0102030405', '29500.00', '2008-05-21', 'M', 4, 1, 10),
(100, 26, 31, 'TRENET', 'Nathan', 'CP 286, 8977 Magna. Rue', '63661', 'Kasli', 'Lorem.ipsum.dolor@facilisis.ca', '0102030405', '20450.00', '2005-02-19', 'M', 2, 1, 10),
(101, 52, 12, 'MECHELLE', 'Leila', 'CP 295, 7493 Sit Avenue', '87341', 'Rosarno', 'mi@tempordiamdictum.org', '0102030405', '30000.00', '2001-02-26', 'M', 3, 3, 6),
(102, 26, 32, 'DEVIN', 'TimothÃ©e', 'Appartement 161-9249 Ac Rd.', '55053', 'Wismar', 'fringilla@orciDonec.ca', '0102030405', '24051.59', '2015-11-15', 'M', 4, 1, 10),
(103, 38, 14, 'PALMER', 'Mia', '1044 Vivamus Ave', 'K1K 9', 'Rajanpur', 'et@lectus.edu', '0102030405', '20450.00', '2015-10-05', 'M', 1, 2, 6),
(104, 17, 30, 'QUIN', 'Josiah', '1390 Sollicitudin Chemin', '07573', 'Kanpur Cantonment', 'tellus.imperdiet@cursuspurusNullam.org', '0102030405', '18473.00', '2010-10-07', 'M', 1, 1, 5),
(105, 17, 9, 'COHEN', 'David', '4687 Ullamcorper Avenue', '41-72', 'Augusta', 'faucibus.orci.luctus@faucibus.com', '0102030405', '51802.00', '2016-05-21', 'M', 5, 1, 1),
(106, 26, 32, 'XENOS', 'Illiana', '8543 Sed Impasse', '73070', 'Castelvecchio di Rocca Barbena', 'sem.mollis.dui@tinciduntadipiscingMauris.edu', '0102030405', '24051.59', '2001-10-05', 'M', 5, 1, 10),
(107, 26, 31, 'MANNICK', 'SÃ©bastien', 'CP 797, 7428 At, Av.', '53215', 'SÃ¶derhamn', 'Donec@quamafelis.edu', '0102030405', '20450.00', '2013-02-14', 'M', 2, 1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(10) UNSIGNED NOT NULL,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) DEFAULT NULL,
  `ord_cus_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) VALUES
(1, '2008-08-20', '2018-12-01', '2019-08-29', '2000-04-17', NULL, 19),
(2, '2016-01-22', '2011-02-02', '2013-04-13', '2004-10-29', 'Commande urgente', 67),
(3, '2019-12-25', '2000-03-28', '2009-08-04', '2021-03-24', NULL, 85),
(4, '2016-08-18', '2004-02-06', '2014-12-29', '2008-07-26', 'Commande urgente', 88),
(5, '2009-06-19', '2012-10-07', '2017-08-30', '2010-09-20', NULL, 27),
(6, '2012-08-18', '2006-09-05', '2018-02-08', '2001-05-04', NULL, 95),
(7, '2010-09-01', '2016-02-02', '2006-11-24', '2016-10-19', NULL, 78),
(8, '2021-04-01', '2016-02-05', '2004-08-13', '2016-01-07', NULL, 34),
(9, '2012-08-14', '2013-01-28', '2009-07-29', '2003-07-31', NULL, 51),
(10, '2014-06-19', '2005-09-12', '2016-09-04', '2002-05-21', 'Commande urgente', 28),
(11, '2015-09-21', '2012-09-08', '2003-04-21', '2019-05-31', NULL, 59),
(12, '2008-05-02', '2001-01-10', '2006-02-26', '2002-10-22', NULL, 36),
(13, '2005-08-19', '2014-06-17', '2020-06-14', '2000-07-13', NULL, 96),
(14, '2016-05-16', '2020-12-10', '2009-06-23', '2006-10-04', NULL, 79),
(15, '2007-06-03', '2014-11-21', '2012-07-09', '2001-07-09', NULL, 56),
(16, '2019-06-14', '2000-07-30', '2014-05-16', '2006-03-01', 'Commande annulÃ©e', 81),
(17, '2020-07-13', '2008-10-12', '2014-06-10', '2005-01-27', NULL, 34),
(19, '2021-01-12', '2009-05-28', '2004-07-02', '2010-11-02', NULL, 98),
(20, '2000-08-15', '2017-01-06', '2020-06-17', '2016-02-24', NULL, 1),
(21, '2020-08-18', '2005-02-15', '2007-08-11', '2016-07-03', 'Commande urgente', 36),
(22, '2016-03-24', '2002-04-15', '2002-11-10', '2015-11-04', 'Commande urgente', 67),
(23, '2002-11-13', '2011-08-24', '2000-03-24', '2013-11-03', NULL, 34),
(24, '2004-04-06', '2016-01-12', '2018-04-16', '2013-04-22', NULL, 38),
(25, '2020-05-07', '2013-03-20', '2001-08-08', '2007-03-26', 'Commande annulÃ©e', 30),
(26, '2009-03-20', '2010-02-06', '2002-02-18', '2009-10-27', NULL, 90),
(27, '2012-09-18', '2014-06-12', '2017-11-22', '2018-06-06', NULL, 9),
(28, '2006-11-03', '2005-05-28', '2012-12-09', '2020-07-29', NULL, 1),
(29, '2010-06-25', '2000-08-18', '2001-04-25', '2005-03-07', NULL, 24),
(30, '2006-10-23', '2012-07-19', '2009-07-18', '2009-08-25', NULL, 67),
(31, '2002-06-24', '2002-07-08', '2015-02-16', '2019-02-05', NULL, 12),
(32, '2016-08-13', '2017-07-25', '2016-07-27', '2011-04-26', NULL, 27),
(33, '2009-10-11', '2019-10-16', '2010-01-18', '2016-07-10', NULL, 85),
(34, '2016-01-08', '2012-07-11', '2005-10-27', '2008-08-23', NULL, 43),
(35, '2002-09-03', '2005-02-10', '2009-07-05', '2006-12-04', NULL, 52),
(36, '2014-03-28', '2005-01-25', '2010-07-29', '2012-06-15', NULL, 69),
(37, '2007-08-21', '2020-08-29', '2014-04-07', '2010-10-23', NULL, 10),
(38, '2002-04-01', '2012-11-25', '2009-06-13', '2002-10-14', NULL, 91),
(39, '2009-02-16', '2017-11-30', '2002-08-22', '2018-08-02', NULL, 64),
(40, '2016-02-21', '2014-04-07', '2015-04-29', '2020-05-19', NULL, 19),
(41, '2007-11-12', '2002-08-28', '2010-11-06', '2016-12-28', NULL, 19),
(42, '2020-04-09', '2000-09-08', '2001-06-09', '2014-09-22', NULL, 6),
(43, '2020-02-02', '2000-02-14', '2000-12-04', '2012-10-13', NULL, 57),
(45, '2015-11-01', '2010-08-15', '2015-03-28', '2017-09-05', NULL, 56),
(46, '2000-08-01', '2000-01-14', '2020-11-22', '2011-02-01', NULL, 84),
(47, '2004-01-31', '2006-07-01', '2009-02-18', '2010-04-01', NULL, 93),
(48, '2000-07-07', '2007-08-14', '2020-03-01', '2000-02-19', NULL, 43),
(49, '2013-12-23', '2007-11-04', '2003-01-01', '2013-01-20', NULL, 8),
(50, '2004-05-26', '2011-11-05', '2006-08-16', '2017-03-05', NULL, 33),
(51, '2001-09-08', '2009-04-01', '2014-11-14', '2013-07-14', NULL, 81),
(52, '2013-06-24', '2017-09-14', '2021-04-01', '2014-01-26', NULL, 44),
(53, '2012-12-05', '2014-04-21', '2016-02-18', '2006-03-26', NULL, 5),
(54, '2005-08-03', '2015-10-19', '2017-11-10', '2012-10-20', NULL, 11),
(55, '2013-05-11', '2010-09-20', '2002-06-04', '2008-01-02', NULL, 1),
(56, '2020-04-18', '2012-06-06', '2017-09-04', '2020-11-08', NULL, 94),
(57, '2001-09-30', '2009-02-13', '2012-09-16', '2010-04-14', NULL, 70),
(58, '2003-01-12', '2006-08-29', '2008-05-29', '2016-07-21', NULL, 87),
(59, '2001-11-23', '2012-10-28', '2000-05-14', '2001-03-17', NULL, 59),
(60, '2015-01-16', '2017-01-27', '2013-09-01', '2018-04-29', NULL, 35),
(61, '2006-10-06', '2019-02-01', '2002-02-18', '2005-08-23', NULL, 81),
(62, '2019-09-02', '2005-10-17', '2017-06-20', '2013-10-30', NULL, 38),
(63, '2006-06-07', '2005-08-07', '2014-11-12', '2013-07-05', NULL, 28),
(64, '2005-01-01', '2018-04-21', '2021-01-02', '2006-04-26', NULL, 77),
(65, '2006-12-31', '2016-05-07', '2007-11-24', '2002-02-10', NULL, 54),
(66, '2014-05-30', '2014-03-31', '2012-10-25', '2018-12-10', NULL, 87),
(67, '2013-12-25', '2019-03-03', '2012-11-27', '2006-08-15', NULL, 10),
(68, '2003-11-09', '2018-04-14', '2012-08-26', '2011-06-18', NULL, 95),
(69, '2019-07-26', '2003-11-10', '2019-06-03', '2006-09-05', NULL, 31),
(70, '2020-03-12', '2006-05-14', '2003-11-23', '2013-10-17', NULL, 46),
(71, '2016-10-08', '2013-01-14', '2009-10-27', '2009-12-01', NULL, 99),
(72, '2013-06-01', '2020-12-02', '2010-03-13', '2013-04-01', NULL, 39),
(73, '2011-07-06', '2002-03-29', '2005-04-28', '2003-11-23', NULL, 67),
(74, '2018-08-29', '2016-01-31', '2016-09-08', '2012-09-23', NULL, 26),
(75, '2007-07-26', '2006-07-09', '2001-06-27', '2000-04-12', NULL, 13),
(76, '2015-06-22', '2014-07-12', '2019-11-22', '2018-04-30', NULL, 43),
(77, '2002-09-20', '2008-06-26', '2011-04-15', '2005-10-25', NULL, 70),
(78, '2015-04-25', '2003-05-05', '2006-06-26', '2015-08-16', NULL, 83),
(79, '2013-01-17', '2015-07-15', '2011-04-14', '2010-04-01', NULL, 60),
(80, '2008-07-11', '2019-09-06', '2013-07-17', '2020-05-26', NULL, 83),
(81, '2013-11-28', '2001-04-11', '2019-10-20', '2006-01-25', NULL, 72),
(82, '2001-07-23', '2002-09-02', '2008-06-10', '2009-11-04', NULL, 39),
(83, '2000-02-19', '2015-05-15', '2013-07-23', '2004-08-12', NULL, 14),
(84, '2016-07-05', '2021-01-13', '2010-12-01', '2010-10-05', NULL, 46),
(85, '2011-01-14', '2009-05-21', '2016-11-27', '2009-08-26', NULL, 27),
(86, '2010-04-05', '2017-12-02', '2020-12-29', '2007-02-16', NULL, 3),
(87, '2001-11-20', '2001-12-31', '2006-07-13', '2014-09-23', NULL, 9),
(88, '2004-08-06', '2013-02-16', '2000-08-25', '2019-07-11', NULL, 77),
(89, '2000-11-14', '2008-02-28', '2014-05-19', '2017-06-21', NULL, 19),
(90, '2013-06-01', '2014-04-15', '2011-06-18', '2007-03-29', NULL, 45),
(91, '2017-06-12', '2004-09-22', '2017-12-26', '2007-05-10', NULL, 66),
(92, '2004-06-07', '2010-08-27', '2020-01-17', '2001-07-30', NULL, 49),
(93, '2020-04-18', '2000-08-03', '2000-04-07', '2009-11-28', NULL, 23),
(94, '2000-08-17', '2002-05-09', '2012-02-29', '2004-11-13', NULL, 10),
(95, '2015-02-15', '2010-10-04', '2020-12-01', '2001-04-08', NULL, 37),
(96, '2017-09-01', '2014-02-02', '2016-07-30', '2006-11-02', NULL, 14),
(97, '2018-11-12', '2017-07-21', '2004-10-30', '2009-12-26', NULL, 37),
(98, '2009-03-23', '2011-11-20', '2018-10-13', '2009-09-15', NULL, 99),
(99, '2000-06-18', '2019-04-26', '2014-01-29', '2001-07-22', NULL, 88),
(100, '2002-06-02', '2000-06-03', '2004-02-26', '2010-07-18', NULL, 47);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `ode_id` int(10) UNSIGNED NOT NULL,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int(5) NOT NULL,
  `ode_ord_id` int(10) UNSIGNED NOT NULL,
  `ode_pro_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, '14.99', '0.00', 1, 5, 10),
(2, '14.90', '0.00', 1, 53, 19),
(3, '499.99', '0.00', 1, 53, 22),
(4, '9.90', '0.00', 1, 17, 32),
(5, '88.00', '0.00', 1, 72, 12),
(6, '288.32', '0.00', 1, 20, 28),
(7, '32.50', '5.00', 1, 56, 29),
(8, '88.00', '0.00', 1, 74, 12),
(9, '110.00', '10.00', 1, 47, 7),
(10, '9.98', '0.00', 1, 16, 24),
(11, '157.00', '0.00', 1, 70, 25),
(12, '149.97', '0.00', 1, 37, 30),
(13, '49.00', '0.00', 1, 8, 13),
(14, '88.00', '0.00', 1, 32, 14),
(15, '245.00', '10.00', 1, 7, 31),
(16, '110.00', '10.00', 1, 75, 7),
(17, '245.00', '0.00', 1, 79, 31),
(18, '31.19', '0.00', 1, 29, 18),
(19, '149.97', '0.00', 1, 91, 30),
(20, '31.19', '0.00', 1, 54, 18),
(21, '88.00', '0.00', 1, 68, 12),
(22, '599.99', '0.00', 1, 35, 21),
(23, '49.00', '0.00', 1, 24, 13),
(24, '245.00', '0.00', 1, 78, 31),
(25, '299.40', '0.00', 1, 94, 26),
(26, '110.00', '10.00', 1, 35, 7),
(27, '135.90', '0.00', 1, 77, 11),
(28, '12.00', '0.00', 1, 83, 23),
(29, '157.00', '0.00', 1, 81, 25),
(30, '299.40', '0.00', 1, 48, 26),
(31, '288.32', '0.00', 1, 95, 28),
(32, '110.00', '10.00', 1, 75, 7),
(33, '49.00', '0.00', 1, 31, 13),
(34, '19.90', '0.00', 1, 97, 16),
(35, '49.00', '0.00', 1, 68, 13),
(36, '14.99', '0.00', 1, 47, 10),
(37, '245.00', '0.00', 1, 55, 31),
(38, '249.99', '0.00', 1, 63, 8),
(39, '49.00', '0.00', 1, 14, 13),
(40, '54.49', '0.00', 1, 40, 15),
(41, '49.00', '0.00', 1, 90, 13),
(42, '14.99', '0.00', 1, 63, 10),
(43, '245.00', '0.00', 1, 42, 31),
(44, '31.19', '0.00', 1, 66, 18),
(45, '89.00', '0.00', 1, 26, 27),
(46, '110.00', '10.00', 1, 87, 7),
(47, '9.90', '0.00', 1, 11, 32),
(48, '249.99', '0.00', 10, 9, 8),
(49, '599.99', '0.00', 1, 93, 21),
(50, '19.90', '0.00', 1, 81, 16),
(51, '135.90', '0.00', 1, 47, 11),
(52, '157.00', '10.00', 1, 70, 25),
(53, '110.00', '10.00', 1, 6, 7),
(54, '499.99', '0.00', 1, 61, 22),
(55, '32.50', '0.00', 1, 89, 29),
(56, '135.90', '0.00', 1, 67, 11),
(57, '49.00', '0.00', 1, 11, 13),
(58, '9.90', '0.00', 1, 96, 32),
(59, '157.00', '0.00', 1, 41, 25),
(60, '245.00', '0.00', 1, 60, 31),
(61, '19.90', '0.00', 1, 16, 16),
(62, '499.99', '0.00', 1, 8, 22),
(63, '249.99', '0.00', 1, 19, 8),
(64, '110.00', '10.00', 1, 54, 7),
(65, '299.40', '0.00', 1, 62, 26),
(66, '135.90', '0.00', 1, 56, 11),
(67, '149.97', '0.00', 1, 52, 30),
(68, '245.00', '0.00', 1, 53, 31),
(69, '19.90', '0.00', 1, 52, 16),
(70, '9.98', '50.00', 2, 21, 24),
(71, '9.90', '0.00', 1, 23, 32),
(72, '14.99', '0.00', 1, 37, 10),
(73, '149.97', '0.00', 1, 27, 30),
(74, '32.50', '0.00', 1, 60, 29),
(75, '32.50', '0.00', 1, 40, 29),
(76, '14.90', '0.00', 1, 54, 19),
(77, '88.00', '0.00', 1, 25, 14),
(78, '88.00', '0.00', 1, 85, 12),
(79, '599.99', '0.00', 1, 51, 21),
(80, '599.99', '0.00', 1, 2, 21),
(81, '14.99', '0.00', 1, 97, 10),
(82, '9.90', '0.00', 1, 37, 32),
(83, '9.98', '0.00', 1, 47, 24),
(84, '14.90', '0.00', 1, 70, 19),
(85, '49.00', '60.00', 1, 43, 13),
(86, '31.19', '25.00', 1, 56, 20),
(87, '19.90', '0.00', 1, 72, 16),
(88, '245.00', '0.00', 1, 20, 31),
(89, '31.19', '0.00', 1, 4, 20),
(90, '54.49', '0.00', 1, 86, 15),
(91, '24.90', '0.00', 1, 14, 17),
(92, '249.99', '0.00', 1, 67, 8),
(93, '288.32', '0.00', 1, 6, 28),
(94, '110.00', '10.00', 1, 58, 7),
(95, '110.00', '20.00', 2, 12, 7),
(96, '88.00', '0.00', 1, 100, 12),
(97, '88.00', '0.00', 1, 48, 12),
(98, '245.00', '0.00', 1, 17, 31),
(99, '88.00', '0.00', 1, 39, 12),
(100, '149.97', '0.00', 1, 15, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `pos_id` int(10) UNSIGNED NOT NULL,
  `pos_libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES
(1, 'PrÃ©sident-Directeur GÃ©nÃ©ral'),
(2, 'Manager(/geuse)'),
(3, 'Commercial(e)'),
(4, 'Responsable des ventes'),
(5, 'MÃ©canicien(ne)'),
(6, 'Assistant(e) commercial(e)'),
(7, 'Acheteur(/teuse)'),
(8, 'Assistant(e) RH'),
(9, 'Directeur(/trice) financier'),
(10, 'Directeur(/trice) des Ressources Humaines'),
(11, 'Chef(fe) de rayon'),
(12, 'Vendeur/(euse)'),
(13, 'HÃ´te(/esse) de caisse'),
(14, 'PÃ©piniÃ©riste'),
(17, 'Directeur(/trice) de magasin'),
(18, 'Directeur(/trice) du marketing'),
(19, 'Assistant(e) marketing'),
(20, 'Comptable'),
(21, 'Assistant(e) comptable'),
(22, 'Vigile'),
(23, 'Cariste'),
(24, 'PrÃ©parateur(/trice) de commandes'),
(25, 'Formateur(/trice)'),
(26, 'Directeur(/trice) des systÃ¨mes d\'information'),
(27, 'DÃ©veloppeur(/peuse)'),
(28, 'Chef(/fe) de projet informatique'),
(29, 'Community manager'),
(30, 'Graphiste'),
(31, 'Technicien(/ne) rÃ©seau'),
(32, 'Technicien(/ne) support informatique'),
(33, 'Electricien(/ne)'),
(34, 'Technicien(/ne) de maintenance'),
(35, 'Directeur(/trice) commercial'),
(36, 'Retraité(e)');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `pro_id` int(10) UNSIGNED NOT NULL,
  `pro_cat_id` int(10) UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) NOT NULL,
  `pro_ean` varchar(13) DEFAULT NULL,
  `pro_stock` int(5) UNSIGNED NOT NULL,
  `pro_stock_alert` int(5) UNSIGNED NOT NULL,
  `pro_color` varchar(30) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int(10) UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_cat_id`, `pro_price`, `pro_ref`, `pro_ean`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_name`, `pro_desc`, `pro_publish`, `pro_sup_id`, `pro_add_date`, `pro_update_date`, `pro_picture`) VALUES
(7, 27, '110.00', 'barb001', NULL, 2, 5, 'Brun', 'Aramis ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi. ', 0, 4, '2018-04-18 00:00:00', '2018-11-14 00:00:00', 'jpg'),
(8, 27, '249.99', 'barb002', NULL, 0, 5, 'Noir', 'Athos', 'Cu\'rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.', 0, 4, '2016-06-14 00:00:00', NULL, 'jpg'),
(10, 2, '14.99', 'SEC-B', NULL, 16, 5, 'Rouge', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', 0, 3, '2018-08-05 00:00:00', NULL, 'jpg'),
(11, 27, '135.90', 'barb003', NULL, 10, 5, 'Chrome', 'Clatronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', 0, 4, '2017-10-18 00:00:00', '2018-08-23 00:00:00', 'jpg'),
(12, 27, '100.00', 'barb004', NULL, 5, 5, 'Noir', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 4, '2018-08-20 00:00:00', NULL, 'jpg'),
(13, 13, '49.00', 'brou001', NULL, 25, 5, 'Verte', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', 0, 2, '2018-08-01 00:00:00', NULL, 'jpg'),
(14, 13, '88.00', 'brou002', NULL, 0, 5, 'Argent', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', 1, 2, '2018-08-09 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(15, 13, '54.49', 'brou003', NULL, 3, 5, 'Jaune', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(16, 2, '19.90', 'GA410', NULL, 50, 5, 'Gris', 'BÃªche GA 410', 'Nulla at consequat orci.', 0, 2, '2018-08-13 00:00:00', NULL, 'png'),
(17, 2, '24.90', 'beche002', NULL, 1, 5, 'Argent', 'BÃªche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', 0, 2, '2018-03-15 00:00:00', NULL, 'png'),
(18, 2, '31.19', 'scm0555', NULL, 0, 5, 'Bleue', 'Scie Ã  main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', 0, 2, '2018-08-19 00:00:00', NULL, 'png'),
(19, 2, '14.90', 'scm559', NULL, 4, 5, 'Bleu', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', 0, 2, '2018-04-13 00:00:00', NULL, 'png'),
(20, 2, '31.19', 'h0662', NULL, 0, 5, 'Noir', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', 0, 2, '2018-08-12 00:00:00', NULL, 'png'),
(21, 11, '599.99', 'DB0703', NULL, 4, 5, 'Bleue', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', 0, 3, '1999-08-26 00:00:00', NULL, 'png'),
(22, 11, '499.99', 'DB0755', NULL, 0, 5, 'Bleue', 'Attila', 'LÃ  oÃ¹ passe Attila, l\'herbe ne repousse pas.', 0, 3, '2018-05-16 00:00:00', NULL, 'png'),
(23, 28, '12.00', 'LAM121', NULL, 0, 5, 'Rouge', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(24, 28, '9.98', 'LAM233', NULL, 500, 5, 'Brun', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(25, 25, '100.00', 'PRS-01C', NULL, 5, 5, 'Brun', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', 0, 2, '2018-08-19 00:00:00', NULL, 'jpg'),
(26, 25, '605.40', 'PRS-38A', NULL, 4, 5, 'Rose', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(27, 25, '179.97', 'PRS-87F', NULL, 21, 5, 'Rouge', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', 0, 2, '2018-04-12 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(28, 21, '288.32', 'POT_001', NULL, 11, 5, 'Orange', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', 0, 1, '2017-11-12 00:00:00', NULL, 'jpg'),
(29, 21, '32.50', 'POT-002', NULL, 45, 5, 'Noir', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', 0, 1, '2018-08-19 00:00:00', NULL, 'jpg'),
(30, 21, '149.97', 'POT_003', NULL, 0, 5, 'Rose', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', 0, 1, '2018-03-04 00:00:00', NULL, 'jpg'),
(31, 6, '245.00', 'POT-381', NULL, 10, 5, 'Marron', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 0, 1, '2017-04-16 00:00:00', NULL, 'jpg'),
(32, 2, '9.90', 'SEC-A', NULL, 280, 5, 'Orange', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', 0, 3, '2018-08-14 00:00:00', NULL, 'jpg'),
(34, 10, '335.00', 'ENH0335', NULL, 1, 5, 'Rouge', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', 0, 4, '2018-05-17 00:00:00', NULL, 'jpg'),
(35, 10, '990.00', 'GRIZ_001', NULL, 1, 5, 'Chrome', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', 0, 4, '2018-08-05 00:00:00', '2020-05-05 00:00:00', 'jpg'),
(36, 9, '75.00', 'HERO', NULL, 7, 5, 'Vert', 'Hero', '', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(37, 9, '120.50', 'SL1280', NULL, 5, 5, 'Vert', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', 0, 4, '2018-08-05 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(38, 10, '348.00', '6cv', NULL, 2, 5, 'Rouge', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', 0, 4, '2018-08-16 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(39, 10, '497.00', 'TRIKE', NULL, 1, 5, 'Rouge', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', 0, 4, '2018-08-21 00:00:00', '2018-08-21 10:05:51', 'jpg'),
(41, 9, '49.80', 'ZOOM', NULL, 223, 5, 'Gris', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(42, 16, '1.20', 'Pronto1', NULL, 123, 5, 'Verte', 'Pronto', 'Roquette Pronto. 1400 graines potagÃ¨res.', 0, 2, '2020-07-21 00:00:00', NULL, 'jpg');

--
-- Déclencheurs `products`
--
DELIMITER $$
CREATE TRIGGER `after_products_update` AFTER UPDATE ON `products` FOR EACH ROW BEGIN
    DECLARE v_pro_id INT(10);
    DECLARE v_pro_stock INT(5);
    DECLARE v_pro_stock_alert INT(5);
    DECLARE v_codart INT(10);

    SET v_pro_id = NEW.pro_id;
    SET v_pro_stock = NEW.pro_stock;
    SET v_pro_stock_alert = NEW.pro_stock_alert;
    SET v_codart = (SELECT codart FROM commander_articles WHERE codart = v_pro_id);

    IF (v_pro_stock < v_pro_stock_alert)
    THEN
        IF ISNULL(v_codart)
        THEN
            INSERT INTO commander_articles 
            VALUES
            (v_pro_id, v_pro_stock_alert - v_pro_stock, now());
        ELSE
            UPDATE commander_articles
            SET
                qte = v_pro_stock_alert - v_pro_stock,
                date = now()
            WHERE codart = v_codart;
        END IF;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `sho_id` tinyint(3) UNSIGNED NOT NULL,
  `sho_name` varchar(26) NOT NULL,
  `sho_address` varchar(100) NOT NULL,
  `sho_zipcode` varchar(5) NOT NULL,
  `sho_city` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`sho_id`, `sho_name`, `sho_address`, `sho_zipcode`, `sho_city`) VALUES
(1, 'Jarditou SiÃ¨ge', '30 rue de Poulainville', '80080', 'Amiens'),
(2, 'JardiAll', '1 rue Marcel Amont', '62000', 'Arras'),
(3, 'Jarditou CompiÃ¨gne', '789 rue de Picardie', '60200', 'CompiÃ¨gne');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int(10) UNSIGNED NOT NULL,
  `sup_name` varchar(50) NOT NULL,
  `sup_city` varchar(50) NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) NOT NULL,
  `sup_mail` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) VALUES
(1, 'Plantage', 'Paris', 'FR', '1 avenue Cyril Hanouna', '75017', 'Nicolas Dujardin', '0102030405', 'contact@plantage.fr'),
(2, 'Jardi+', 'Amiens', 'FR', '200 boulevard Eve Angeli', '80090', 'Mike Anic', '0708091011', 'jardiplus@gmail.com'),
(3, 'Attila', 'Marseille', 'FR', '31 rue Nabilla Benattia', '13000', 'Elle Ephant', '0213141516', 'attila.tondeuses@laposte.net'),
(4, 'Barbeuc', 'Narbonne', 'FR', '56 avenue Donald Trump', '11000', 'GÃ©rard Menfaim', '0512345678', 'sales@barbeuc.com'),
(5, 'FOURNIRIEN', 'ShangaÃ¯', 'CN', '112 rue de PÃ©kin', '340', 'Chang Li', '0102030405', 'chang.li@fournirien.cn');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_catalogue`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_catalogue` (
`pro_id` int(10) unsigned
,`pro_ref` varchar(8)
,`pro_name` varchar(50)
,`cat_id` int(10) unsigned
,`cat_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la vue `v_catalogue`
--
DROP TABLE IF EXISTS `v_catalogue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_catalogue`  AS SELECT `products`.`pro_id` AS `pro_id`, `products`.`pro_ref` AS `pro_ref`, `products`.`pro_name` AS `pro_name`, `categories`.`cat_id` AS `cat_id`, `categories`.`cat_name` AS `cat_name` FROM (`products` join `categories` on((`products`.`pro_cat_id` = `categories`.`cat_id`))) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_parent_id` (`cat_parent_id`);

--
-- Index pour la table `commander_articles`
--
ALTER TABLE `commander_articles`
  ADD PRIMARY KEY (`codart_id`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD UNIQUE KEY `alpha2` (`cou_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `ibfk_customers_countries` (`cus_countries_id`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_superior_id` (`emp_superior_id`),
  ADD KEY `emp_pos_id` (`emp_pos_id`),
  ADD KEY `emp_shop_id` (`emp_sho_id`),
  ADD KEY `emp_dep_id` (`emp_dep_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cus_id` (`ord_cus_id`) USING BTREE;

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`ode_id`),
  ADD KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  ADD KEY `ode_pro_id` (`ode_pro_id`) USING BTREE;

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pos_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  ADD KEY `pro_cat_id` (`pro_cat_id`) USING BTREE;

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`sho_id`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`),
  ADD KEY `sup_countries_id` (`sup_countries_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `commander_articles`
--
ALTER TABLE `commander_articles`
  MODIFY `codart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `departments`
--
ALTER TABLE `departments`
  MODIFY `dep_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `ode_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `sho_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`emp_sho_id`) REFERENCES `shops` (`sho_id`),
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`emp_dep_id`) REFERENCES `departments` (`dep_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`sup_countries_id`) REFERENCES `countries` (`cou_id`);
--
-- Base de données : `gescom_struct`
--
CREATE DATABASE IF NOT EXISTS `gescom_struct` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gescom_struct`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(1, 'Catégorie 1', NULL),
(2, 'Sous-Catégorie 1', 1),
(3, 'Catégorie 2', NULL),
(4, 'Sous-Catégorie 2', 3);

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `cou_id` char(2) NOT NULL,
  `cou_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(10) UNSIGNED NOT NULL,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) NOT NULL,
  `cus_phone` int(10) UNSIGNED NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES
(1, 'Bomber', 'Jean', '3 Rue du Casse-croutte', '69069', 'Pain-ville', 'FR', 'jean.bomber@gladalle.fr', 1669696969, 'JeanBomber69', '2021-07-13 00:00:00', NULL),
(2, 'Némare', 'Jean', '3 Rue du Tibia-cassé', '00000', 'Foot-ville', 'FR', 'jean.némare@cafaitmal.fr', 1000000000, 'JeanNemaredavoirmal', '2021-07-13 00:00:00', NULL),
(3, 'Jackson', 'Michael', '4 boulevard du Billiejean', '01001', 'Cimetière', 'FR', 'michael.jackson@jsuismort.fr', 1698745632, 'RecussitezmoiSVP', '2021-07-13 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(10) UNSIGNED NOT NULL,
  `emp_superior_id` int(10) UNSIGNED DEFAULT NULL,
  `emp_pos_id` int(10) UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_zipcode` varchar(5) NOT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_mail` varchar(255) NOT NULL,
  `emp_phone` int(10) UNSIGNED NOT NULL,
  `emp_salary` int(10) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`) VALUES
(1, NULL, 1, 'Afonso', 'Florian', '30 Rue de Poulainville', '80000', 'Amiens', 'florian.afonso@afpa.fr', 123456789, NULL, '2021-05-10', 'M', 1),
(2, 1, 2, 'De Sinety', 'Vincent', '30 Rue de Poulainville', '80000', 'Amiens', 'vincent.desinety@afpa.fr', 123456789, NULL, '2021-05-10', 'M', 0),
(3, 1, 3, 'Mailly', 'Romain', '30 Rue de Poulainville', '80000', 'Amiens', 'romain.mailly@afpa.fr', 123456789, NULL, '2021-05-10', 'M', 0),
(4, 1, 3, 'Lefebvre', 'Rémi', '30 Rue de Poulainville', '80000', 'Amiens', 'remi.lefebvre@afpa.fr', 123456789, NULL, '2021-05-10', 'M', 0);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(10) UNSIGNED NOT NULL,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) NOT NULL,
  `ord_cus_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) VALUES
(1, '2021-05-10', '2021-05-10', '2021-05-12', '2021-05-15', 'delivred', 1),
(2, '2021-05-30', '2021-05-30', '2021-06-02', '2021-06-05', 'delivred', 2),
(3, '2021-06-27', '2021-05-10', '2021-06-30', '2021-07-02', 'delivred', 3);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `ode_id` int(10) UNSIGNED NOT NULL,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int(5) NOT NULL,
  `ode_ord_id` int(10) UNSIGNED NOT NULL,
  `ode_pro_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, '14.99', NULL, 1, 5, 10),
(2, '14.90', NULL, 1, 53, 19),
(3, '499.99', NULL, 1, 53, 22),
(4, '9.90', NULL, 1, 17, 32),
(5, '88.00', NULL, 1, 72, 12),
(6, '288.32', NULL, 1, 20, 28),
(7, '32.50', NULL, 1, 56, 29),
(8, '88.00', NULL, 1, 74, 12),
(9, '110.00', '10.00', 1, 47, 7),
(10, '9.98', NULL, 1, 16, 24),
(11, '157.00', NULL, 1, 70, 25),
(12, '149.97', NULL, 1, 37, 30),
(13, '49.00', NULL, 1, 8, 13),
(14, '88.00', NULL, 1, 32, 14),
(15, '245.00', '10.00', 1, 7, 31),
(16, '110.00', '10.00', 1, 75, 7),
(17, '245.00', NULL, 1, 79, 31),
(18, '31.19', NULL, 1, 29, 18),
(19, '149.97', NULL, 1, 91, 30),
(20, '31.19', NULL, 1, 54, 18),
(21, '88.00', NULL, 1, 68, 12),
(22, '599.99', NULL, 1, 35, 21),
(23, '49.00', NULL, 1, 24, 13),
(24, '245.00', NULL, 1, 78, 31),
(25, '299.40', NULL, 1, 94, 26),
(26, '110.00', '10.00', 1, 35, 7),
(27, '135.90', NULL, 1, 77, 11),
(28, '12.00', NULL, 1, 83, 23),
(29, '157.00', NULL, 1, 81, 25),
(30, '299.40', NULL, 1, 48, 26),
(31, '288.32', NULL, 1, 95, 28),
(32, '110.00', '10.00', 1, 75, 7),
(33, '49.00', NULL, 1, 31, 13),
(34, '19.90', NULL, 1, 97, 16),
(35, '49.00', NULL, 1, 68, 13),
(36, '14.99', NULL, 1, 47, 10),
(37, '245.00', NULL, 1, 55, 31),
(38, '249.99', NULL, 1, 63, 8),
(39, '49.00', NULL, 1, 14, 13),
(40, '54.49', NULL, 1, 40, 15),
(41, '49.00', NULL, 1, 90, 13),
(42, '14.99', NULL, 1, 63, 10),
(43, '245.00', NULL, 1, 42, 31),
(44, '31.19', NULL, 1, 66, 18),
(45, '89.00', NULL, 1, 26, 27),
(46, '110.00', '10.00', 1, 87, 7),
(47, '9.90', NULL, 1, 11, 32),
(48, '249.99', NULL, 10, 9, 8),
(49, '599.99', NULL, 1, 93, 21),
(50, '19.90', NULL, 1, 81, 16),
(51, '135.90', NULL, 1, 47, 11),
(52, '157.00', NULL, 1, 70, 25),
(53, '110.00', '10.00', 1, 6, 7),
(54, '499.99', NULL, 1, 61, 22),
(55, '32.50', NULL, 1, 89, 29),
(56, '135.90', NULL, 1, 67, 11),
(57, '49.00', NULL, 1, 11, 13),
(58, '9.90', NULL, 1, 96, 32),
(59, '157.00', NULL, 1, 41, 25),
(60, '245.00', NULL, 1, 60, 31),
(61, '19.90', NULL, 1, 16, 16),
(62, '499.99', NULL, 1, 8, 22),
(63, '249.99', NULL, 1, 19, 8),
(64, '110.00', '10.00', 1, 54, 7),
(65, '299.40', NULL, 1, 62, 26),
(66, '135.90', NULL, 1, 56, 11),
(67, '149.97', NULL, 1, 52, 30),
(68, '245.00', NULL, 1, 53, 31),
(69, '19.90', NULL, 1, 52, 16),
(70, '9.98', NULL, 1, 21, 24),
(71, '9.90', NULL, 1, 23, 32),
(72, '14.99', NULL, 1, 37, 10),
(73, '149.97', NULL, 1, 27, 30),
(74, '32.50', NULL, 1, 60, 29),
(75, '32.50', NULL, 1, 40, 29),
(76, '14.90', NULL, 1, 54, 19),
(77, '88.00', NULL, 1, 25, 14),
(78, '88.00', NULL, 1, 85, 12),
(79, '599.99', NULL, 1, 51, 21),
(80, '599.99', NULL, 1, 2, 21),
(81, '14.99', NULL, 1, 97, 10),
(82, '9.90', NULL, 1, 37, 32),
(83, '9.98', NULL, 1, 47, 24),
(84, '14.90', NULL, 1, 70, 19),
(85, '49.00', NULL, 1, 43, 13),
(86, '31.19', NULL, 1, 56, 20),
(87, '19.90', NULL, 1, 72, 16),
(88, '245.00', NULL, 1, 20, 31),
(89, '31.19', NULL, 1, 4, 20),
(90, '54.49', NULL, 1, 86, 15),
(91, '24.90', NULL, 1, 14, 17),
(92, '249.99', NULL, 1, 67, 8),
(93, '288.32', NULL, 1, 6, 28),
(94, '110.00', '10.00', 1, 58, 7),
(95, '110.00', '20.00', 2, 12, 7),
(96, '88.00', NULL, 1, 100, 12),
(97, '88.00', NULL, 1, 48, 12),
(98, '245.00', NULL, 1, 17, 31),
(99, '88.00', NULL, 1, 39, 12),
(100, '149.97', NULL, 1, 15, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `pos_id` int(10) UNSIGNED NOT NULL,
  `pos_libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES
(1, 'CEO'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `pro_id` int(10) UNSIGNED NOT NULL,
  `pro_cat_id` int(10) UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) NOT NULL,
  `pro_ean` varchar(13) DEFAULT NULL,
  `pro_stock` int(5) UNSIGNED NOT NULL,
  `pro_stock_alert` int(5) UNSIGNED NOT NULL,
  `pro_color` varchar(30) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int(10) UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_cat_id`, `pro_price`, `pro_ref`, `pro_ean`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_name`, `pro_desc`, `pro_publish`, `pro_sup_id`, `pro_add_date`, `pro_update_date`, `pro_picture`) VALUES
(7, 27, '110.00', 'barb001', NULL, 2, 5, 'Brun', 'Aramis ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi. ', 0, 4, '2018-04-18 00:00:00', '2018-11-14 00:00:00', 'jpg'),
(8, 27, '249.99', 'barb002', NULL, 0, 5, 'Noir', 'Athos', 'Cu\'rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.', 0, 4, '2016-06-14 00:00:00', NULL, 'jpg'),
(10, 2, '14.99', 'SEC-B', NULL, 16, 5, 'Rouge', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', 0, 3, '2018-08-05 00:00:00', NULL, 'jpg'),
(11, 27, '135.90', 'barb003', NULL, 10, 5, 'Chrome', 'Clatronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', 0, 4, '2017-10-18 00:00:00', '2018-08-23 00:00:00', 'jpg'),
(12, 27, '88.00', 'barb004', NULL, 5, 5, 'Noir', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 4, '2018-08-20 00:00:00', NULL, 'jpg'),
(13, 13, '49.00', 'brou001', NULL, 25, 5, 'Verte', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', 0, 2, '2018-08-01 00:00:00', NULL, 'jpg'),
(14, 13, '88.00', 'brou002', NULL, 0, 5, 'Argent', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', 1, 2, '2018-08-09 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(15, 13, '54.49', 'brou003', NULL, 3, 5, 'Jaune', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(16, 2, '19.90', 'GA410', NULL, 50, 5, 'Gris', 'Bêche GA 410', 'Nulla at consequat orci.', 0, 2, '2018-08-13 00:00:00', NULL, 'png'),
(17, 2, '24.90', 'beche002', NULL, 1, 5, 'Argent', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', 0, 2, '2018-03-15 00:00:00', NULL, 'png'),
(18, 2, '31.19', 'scm0555', NULL, 0, 5, 'Bleue', 'Scie à main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', 0, 2, '2018-08-19 00:00:00', NULL, 'png'),
(19, 2, '14.90', 'scm559', NULL, 4, 5, 'Bleu', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', 0, 2, '2018-04-13 00:00:00', NULL, 'png'),
(20, 2, '31.19', 'h0662', NULL, 0, 5, 'Noir', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', 0, 2, '2018-08-12 00:00:00', NULL, 'png'),
(21, 11, '599.99', 'DB0703', NULL, 4, 5, 'Bleue', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', 0, 3, '1999-08-26 00:00:00', NULL, 'png'),
(22, 11, '499.99', 'DB0755', NULL, 0, 5, 'Bleue', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', 0, 3, '2018-05-16 00:00:00', NULL, 'png'),
(23, 28, '12.00', 'LAM121', NULL, 0, 5, 'Rouge', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(24, 28, '9.98', 'LAM233', NULL, 500, 5, 'Brun', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(25, 25, '157.00', 'PRS-01C', NULL, 5, 5, 'Brun', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', 0, 2, '2018-08-19 00:00:00', NULL, 'jpg'),
(26, 25, '299.40', 'PRS-38A', NULL, 4, 5, 'Rose', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(27, 25, '89.00', 'PRS-87F', NULL, 21, 5, 'Rouge', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', 0, 2, '2018-04-12 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(28, 21, '288.32', 'POT_001', NULL, 11, 5, 'Orange', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', 0, 1, '2017-11-12 00:00:00', NULL, 'jpg'),
(29, 21, '32.50', 'POT-002', NULL, 45, 5, 'Noir', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', 0, 1, '2018-08-19 00:00:00', NULL, 'jpg'),
(30, 21, '149.97', 'POT_003', NULL, 0, 5, 'Rose', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', 0, 1, '2018-03-04 00:00:00', NULL, 'jpg'),
(31, 6, '245.00', 'POT-381', NULL, 10, 5, 'Marron', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 0, 1, '2017-04-16 00:00:00', NULL, 'jpg'),
(32, 2, '9.90', 'SEC-A', NULL, 280, 5, 'Orange', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', 0, 3, '2018-08-14 00:00:00', NULL, 'jpg'),
(34, 10, '335.00', 'ENH0335', NULL, 1, 5, 'Rouge', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', 0, 4, '2018-05-17 00:00:00', NULL, 'jpg'),
(35, 10, '990.00', 'GRIZ_001', NULL, 1, 5, 'Chrome', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', 0, 4, '2018-08-05 00:00:00', '2020-05-05 00:00:00', 'jpg'),
(36, 9, '75.00', 'HERO', NULL, 7, 5, 'Vert', 'Hero', '', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(37, 9, '120.50', 'SL1280', NULL, 5, 5, 'Vert', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', 0, 4, '2018-08-05 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(38, 10, '348.00', '6cv', NULL, 2, 5, 'Rouge', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', 0, 4, '2018-08-16 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(39, 10, '497.00', 'TRIKE', NULL, 1, 5, 'Rouge', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', 0, 4, '2018-08-21 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(41, 9, '49.80', 'ZOOM', NULL, 223, 5, 'Gris', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(42, 10, '1.20', 'waz1', NULL, 123, 5, 'rouge', 'wazaa', 'azerty', 0, 4, '2019-05-03 00:00:00', NULL, 'jpg');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int(10) UNSIGNED NOT NULL,
  `sup_name` varchar(50) NOT NULL,
  `sup_city` varchar(50) NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) NOT NULL,
  `sup_mail` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) VALUES
(1, 'Fournisseur 1', 'Amiens', 'FR', '31 Rue de Poulainville', '80000', 'Monsieur X', '0123456789', 'fournisseur1@afpa.fr'),
(2, 'Fournisseur 2', 'Amiens', 'FR', '32 Rue de Poulainville', '80000', 'Monsieur Y', '0123456789', 'fournisseur2@afpa.fr'),
(3, 'Fournisseur 3', 'Amiens', 'FR', '33 Rue de Poulainville', '80000', 'Monsieur Z', '0123456789', 'fournisseur3@afpa.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_parent_id` (`cat_parent_id`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD UNIQUE KEY `alpha2` (`cou_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `ibfk_customers_countries` (`cus_countries_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_superior_id` (`emp_superior_id`),
  ADD KEY `emp_pos_id` (`emp_pos_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cus_id` (`ord_cus_id`) USING BTREE;

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`ode_id`),
  ADD KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  ADD KEY `ode_pro_id` (`ode_pro_id`) USING BTREE;

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pos_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  ADD KEY `pro_cat_id` (`pro_cat_id`) USING BTREE;

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`),
  ADD KEY `sup_countries_id` (`sup_countries_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `ode_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`sup_countries_id`) REFERENCES `countries` (`cou_id`);
--
-- Base de données : `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `cha_id` int(11) NOT NULL,
  `cha_hot_id` int(11) NOT NULL,
  `cha_numero` int(11) NOT NULL,
  `cha_capacite` int(11) NOT NULL,
  `cha_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`cha_id`, `cha_hot_id`, `cha_numero`, `cha_capacite`, `cha_type`) VALUES
(1, 1, 1, 2, 1),
(2, 1, 2, 3, 1),
(3, 1, 3, 2, 1),
(4, 1, 101, 1, 1),
(5, 1, 102, 2, 1),
(6, 1, 103, 3, 1),
(7, 1, 201, 2, 1),
(8, 1, 202, 7, 1),
(9, 1, 203, 1, 1),
(10, 2, 1, 2, 1),
(11, 2, 2, 2, 1),
(12, 2, 3, 1, 1),
(13, 2, 101, 2, 1),
(14, 2, 102, 1, 1),
(15, 2, 103, 3, 1),
(16, 2, 201, 2, 1),
(17, 2, 202, 4, 1),
(18, 2, 203, 4, 1),
(19, 3, 1, 3, 1),
(20, 3, 2, 1, 1),
(21, 3, 3, 2, 1),
(22, 3, 101, 2, 1),
(23, 3, 102, 2, 1),
(24, 3, 103, 2, 1),
(25, 3, 201, 2, 1),
(26, 3, 202, 4, 1),
(27, 3, 203, 4, 1),
(28, 4, 1, 4, 1),
(29, 4, 2, 2, 1),
(30, 4, 3, 4, 1),
(31, 4, 101, 1, 1),
(32, 4, 102, 2, 1),
(33, 4, 103, 2, 1),
(34, 4, 201, 2, 1),
(35, 4, 202, 2, 1),
(36, 4, 203, 3, 1),
(37, 5, 1, 3, 1),
(38, 5, 2, 2, 1),
(39, 5, 3, 2, 1),
(40, 5, 101, 1, 1),
(41, 5, 102, 4, 1),
(42, 5, 103, 1, 1),
(43, 5, 201, 2, 1),
(44, 5, 202, 4, 1),
(45, 5, 203, 4, 1),
(46, 6, 1, 1, 1),
(47, 6, 2, 1, 1),
(48, 6, 3, 1, 1),
(49, 6, 101, 1, 1),
(50, 6, 102, 1, 1),
(51, 6, 103, 1, 1),
(52, 6, 201, 1, 1),
(53, 6, 202, 1, 1),
(54, 6, 203, 1, 1),
(55, 7, 1, 1, 1),
(56, 7, 2, 5, 1),
(57, 7, 3, 5, 1),
(58, 7, 101, 5, 1),
(59, 7, 102, 5, 1),
(60, 7, 103, 5, 1),
(61, 7, 201, 5, 1),
(62, 7, 202, 5, 1),
(63, 7, 203, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `cli_id` int(11) NOT NULL,
  `cli_nom` varchar(50) DEFAULT NULL,
  `cli_prenom` varchar(50) DEFAULT NULL,
  `cli_adresse` varchar(50) DEFAULT NULL,
  `cli_ville` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`cli_id`, `cli_nom`, `cli_prenom`, `cli_adresse`, `cli_ville`) VALUES
(1, 'Doe', 'John', '', 'LA'),
(2, 'Homme', 'Josh', '', 'Palm Desert'),
(3, 'Paul', 'Weller', '', 'Londre'),
(4, 'White', 'Jack', '', 'Detroit'),
(5, 'Claypool', 'Les', '', 'San Francisco'),
(6, 'Squire', 'Chris', '', 'Londre'),
(7, 'Wood', 'Ronnie', '', 'Londre');

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `hot_id` int(11) NOT NULL,
  `hot_sta_id` int(11) NOT NULL,
  `hot_nom` varchar(50) NOT NULL,
  `hot_categorie` int(11) NOT NULL,
  `hot_adresse` varchar(50) NOT NULL,
  `hot_ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`hot_id`, `hot_sta_id`, `hot_nom`, `hot_categorie`, `hot_adresse`, `hot_ville`) VALUES
(1, 1, 'Le Magnifique', 3, 'rue du bas', 'Pralo'),
(2, 1, 'Hotel du haut', 1, 'rue du haut', 'Pralo'),
(3, 2, 'Le Narval', 3, 'place de la liberation', 'Vonten'),
(4, 2, 'Les Pissenlis', 4, 'place du 14 juillet', 'Bretou'),
(5, 2, 'RR Hotel', 5, 'place du bas', 'Bretou'),
(6, 2, 'La Brique', 2, 'place du haut', 'Bretou'),
(7, 3, 'Le Beau Rivage', 3, 'place du centre', 'Toras');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `res_id` int(11) NOT NULL,
  `res_cha_id` int(11) NOT NULL,
  `res_cli_id` int(11) NOT NULL,
  `res_date` datetime NOT NULL,
  `res_date_debut` datetime NOT NULL,
  `res_date_fin` datetime NOT NULL,
  `res_prix` decimal(6,2) NOT NULL,
  `res_arrhes` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`res_id`, `res_cha_id`, `res_cli_id`, `res_date`, `res_date_debut`, `res_date_fin`, `res_prix`, `res_arrhes`) VALUES
(1, 1, 1, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '2400.00', '800.00'),
(2, 2, 2, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '3400.00', '100.00'),
(3, 1, 3, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '400.00', '50.00'),
(4, 2, 4, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '7200.00', '1800.00'),
(5, 3, 5, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '1400.00', '450.00'),
(6, 4, 6, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '2400.00', '780.00'),
(7, 4, 6, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '500.00', '80.00'),
(8, 4, 1, '2017-01-10 00:00:00', '2017-07-01 00:00:00', '2017-07-15 00:00:00', '40.00', '0.00');

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `sta_id` int(11) NOT NULL,
  `sta_nom` varchar(50) NOT NULL,
  `sta_altitude` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `station`
--

INSERT INTO `station` (`sta_id`, `sta_nom`, `sta_altitude`) VALUES
(1, 'La Montagne', 2500),
(2, 'Le Sud', 200),
(3, 'La Plage', 10);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_chambre_hotel`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_chambre_hotel` (
`cha_numero` int(11)
,`hot_nom` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_chambre_hotel_station`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_chambre_hotel_station` (
`cha_id` int(11)
,`hot_nom` varchar(50)
,`sta_nom` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_hotels_station_2`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_hotels_station_2` (
`hot_id` int(11)
,`hot_sta_id` int(11)
,`hot_nom` varchar(50)
,`hot_categorie` int(11)
,`hot_adresse` varchar(50)
,`hot_ville` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_reservation_client`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_reservation_client` (
`cli_nom` varchar(50)
,`res_date` datetime
,`res_date_debut` datetime
,`res_date_fin` datetime
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_reservation_client_hotel`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_reservation_client_hotel` (
`CONCAT(cli_prenom, ' ', cli_nom)` varchar(101)
,`res_date` datetime
,`res_date_debut` datetime
,`res_date_fin` datetime
,`hot_nom` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_station_hotel`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_station_hotel` (
`hot_nom` varchar(50)
,`sta_nom` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la vue `v_chambre_hotel`
--
DROP TABLE IF EXISTS `v_chambre_hotel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_chambre_hotel`  AS SELECT `chambre`.`cha_numero` AS `cha_numero`, `hot_nom` AS `hot_nom` FROM (`hotel` join `chambre` on((`hot_id` = `chambre`.`cha_hot_id`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_chambre_hotel_station`
--
DROP TABLE IF EXISTS `v_chambre_hotel_station`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_chambre_hotel_station`  AS SELECT `chambre`.`cha_id` AS `cha_id`, `hot_nom` AS `hot_nom`, `station`.`sta_nom` AS `sta_nom` FROM ((`hotel` join `chambre` on((`hot_id` = `chambre`.`cha_hot_id`))) join `station` on((`hot_sta_id` = `station`.`sta_id`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_hotels_station_2`
--
DROP TABLE IF EXISTS `v_hotels_station_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hotels_station_2`  AS SELECT `hot_id` AS `hot_id`, `hot_sta_id` AS `hot_sta_id`, `hot_nom` AS `hot_nom`, `hot_categorie` AS `hot_categorie`, `hot_adresse` AS `hot_adresse`, `hot_ville` AS `hot_ville` FROM `hotel` WHERE (`hot_sta_id` = 2) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_reservation_client`
--
DROP TABLE IF EXISTS `v_reservation_client`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_reservation_client`  AS SELECT `client`.`cli_nom` AS `cli_nom`, `reservation`.`res_date` AS `res_date`, `reservation`.`res_date_debut` AS `res_date_debut`, `reservation`.`res_date_fin` AS `res_date_fin` FROM (`reservation` join `client` on((`client`.`cli_id` = `reservation`.`res_cli_id`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_reservation_client_hotel`
--
DROP TABLE IF EXISTS `v_reservation_client_hotel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_reservation_client_hotel`  AS SELECT concat(`client`.`cli_prenom`,' ',`client`.`cli_nom`) AS `CONCAT(cli_prenom, ' ', cli_nom)`, `reservation`.`res_date` AS `res_date`, `reservation`.`res_date_debut` AS `res_date_debut`, `reservation`.`res_date_fin` AS `res_date_fin`, `hot_nom` AS `hot_nom` FROM (((`reservation` join `client` on((`client`.`cli_id` = `reservation`.`res_cli_id`))) join `chambre` on((`reservation`.`res_cha_id` = `chambre`.`cha_id`))) join `hotel` on((`hot_id` = `chambre`.`cha_hot_id`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_station_hotel`
--
DROP TABLE IF EXISTS `v_station_hotel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_station_hotel`  AS SELECT `hot_nom` AS `hot_nom`, `station`.`sta_nom` AS `sta_nom` FROM (`hotel` join `station` on((`hot_sta_id` = `station`.`sta_id`))) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`cha_id`),
  ADD KEY `cha_hot_id` (`cha_hot_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cli_id`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hot_id`),
  ADD KEY `hot_sta_id` (`hot_sta_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `res_cha_id` (`res_cha_id`),
  ADD KEY `res_cli_id` (`res_cli_id`);

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`sta_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `cha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `station`
--
ALTER TABLE `station`
  MODIFY `sta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`cha_hot_id`) REFERENCES `hotel` (`hot_id`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`hot_sta_id`) REFERENCES `station` (`sta_id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`res_cha_id`) REFERENCES `chambre` (`cha_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`res_cli_id`) REFERENCES `client` (`cli_id`);
--
-- Base de données : `jarditou`
--
CREATE DATABASE IF NOT EXISTS `jarditou` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jarditou`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL COMMENT 'Clé de la table catégorie',
  `cat_nom` varchar(200) NOT NULL COMMENT 'Nom de la catégorie',
  `cat_parent` int(10) UNSIGNED DEFAULT NULL COMMENT 'Catégorie parente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_nom`, `cat_parent`) VALUES
(1, 'Outillage', NULL),
(2, 'Outillage manuel', 1),
(3, 'Outillage mécanique', 2),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'Matériaux', NULL),
(9, 'Tondeuses éléctriques', 3),
(10, 'Tondeuses à moteur thermique', 3),
(11, 'Débroussailleuses', 3),
(12, 'Sécateurs', 2),
(13, 'Brouettes', 2),
(14, 'Tomates', 4),
(15, 'Poireaux', 4),
(16, 'Salade', 4),
(17, 'Haricots', 4),
(18, 'Thuyas', 5),
(19, 'Oliviers', 5),
(20, 'Pommiers', 5),
(21, 'Pots de fleurs', 6),
(22, 'Soucoupes', 6),
(23, 'Supports', 6),
(24, 'Transats', 7),
(25, 'Parasols', 7),
(26, 'Tonnelles', 7),
(27, 'Barbecues', 7),
(28, 'Lames de terrasse', 8),
(29, 'Grillages', 8),
(30, 'Panneaux de clôture', 8);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `pro_id` int(10) UNSIGNED NOT NULL COMMENT 'Clé de la table produits',
  `pro_cat_id` int(10) UNSIGNED NOT NULL COMMENT 'Catégorie du produit',
  `pro_ref` varchar(10) NOT NULL COMMENT 'Référence produit',
  `pro_libelle` varchar(200) NOT NULL COMMENT 'Nom du produit',
  `pro_description` varchar(1000) DEFAULT NULL COMMENT 'Description du produit',
  `pro_prix` decimal(6,2) UNSIGNED NOT NULL COMMENT 'Prix ',
  `pro_stock` int(11) NOT NULL DEFAULT '0' COMMENT 'Nombre d''unités en stock',
  `pro_couleur` varchar(30) DEFAULT NULL COMMENT 'Couleur',
  `pro_photo` varchar(4) DEFAULT 'jpg' COMMENT 'Extension de la photo',
  `pro_d_ajout` date NOT NULL COMMENT 'Date d''ajout',
  `pro_d_modif` datetime DEFAULT NULL COMMENT 'Date de modification',
  `pro_bloque` tinyint(1) DEFAULT NULL COMMENT 'Bloquer le produit à la vente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`pro_id`, `pro_cat_id`, `pro_ref`, `pro_libelle`, `pro_description`, `pro_prix`, `pro_stock`, `pro_couleur`, `pro_photo`, `pro_d_ajout`, `pro_d_modif`, `pro_bloque`) VALUES
(7, 27, 'barb001', 'Aramis ', '   Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi.                    ', '110.00', 1, 'JUYEN', 'png', '2018-04-18', '2021-09-06 13:53:10', 0),
(8, 27, 'barb002', 'Athos', '  Curabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.  ', '249.99', 0, 'Noir', 'png', '2016-06-14', '2021-08-24 10:10:56', 0),
(11, 27, 'barb11', 'ONZE', '  ONze demande pourquoi 11  ', '111.11', 11, 'Onze', 'png', '2017-10-18', '2021-09-01 11:11:11', 0),
(13, 13, 'brou001', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', '49.00', 25, 'Verte', 'png', '2018-08-01', NULL, NULL),
(14, 13, 'brou002', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', '88.00', 0, 'Argent', 'png', '2018-08-09', NULL, NULL),
(15, 13, 'brou003', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', '54.49', 3, 'Jaune', 'png', '2018-08-12', NULL, NULL),
(16, 2, 'GA410', 'Bêche GA 410', 'Nulla at consequat orci.', '19.90', 50, 'Gris', 'png', '2018-08-13', NULL, NULL),
(17, 2, 'beche002', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', '24.90', 1, 'Argent', 'png', '2018-03-15', NULL, NULL),
(18, 2, 'scm0555', 'Scie à main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', '31.19', 0, 'Bleue', 'png', '2018-08-19', NULL, NULL),
(19, 2, 'scm559', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', '14.90', 4, 'Bleu', 'png', '2018-04-13', NULL, NULL),
(20, 2, 'h0662', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', '31.19', 0, 'Noir', 'png', '2018-08-12', NULL, NULL),
(21, 11, 'DB0703', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', '599.99', 4, 'Bleue', 'png', '1999-08-26', NULL, NULL),
(22, 11, 'DB0755', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', '499.99', 0, 'Bleue', 'png', '2018-05-16', NULL, NULL),
(23, 28, 'LAM121', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', '12.00', 0, 'Rouge', 'png', '2018-03-17', NULL, NULL),
(24, 28, 'LAM233', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', '9.98', 500, 'Brun', 'png', '2018-03-17', NULL, NULL),
(25, 25, 'PRS-01C', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', '157.00', 5, 'Brun', 'png', '2018-08-19', NULL, NULL),
(26, 25, 'PRS-38A', 'Cannes', ' Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante. ', '299.40', 4, 'Rose', 'png', '2018-08-12', '2021-08-25 11:10:41', 0),
(27, 25, 'PRS-87F', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', '89.00', 21, 'Rouge', 'png', '2018-04-12', '2018-08-21 00:00:00', NULL),
(28, 21, 'POT_001', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', '288.32', 11, 'Orange', 'png', '2017-11-12', NULL, NULL),
(29, 21, 'POT-002', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', '32.50', 45, 'Noir', 'png', '2018-08-19', NULL, NULL),
(30, 21, 'POT_003', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', '149.97', 0, 'Rose', 'png', '2018-03-04', NULL, NULL),
(32, 2, 'SEC-A', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', '9.90', 280, 'Orange', 'png', '2018-08-14', NULL, NULL),
(33, 2, 'SEC-B', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', '14.99', 16, 'Rouge', 'png', '2018-08-05', NULL, NULL),
(34, 10, 'ENH0335', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', '335.00', 1, 'Rouge', 'png', '2018-05-17', NULL, NULL),
(35, 10, 'GRIZ_001', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', '990.00', 1, 'Chrome', 'png', '2018-08-05', NULL, NULL),
(36, 9, 'HERO', 'Hero', '  ', '75.00', 5, 'Vert', 'png', '2018-08-13', '2021-08-25 13:55:09', 0),
(37, 9, 'SL1280', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', '120.50', 5, 'Vert', 'png', '2018-08-05', '2018-08-22 00:00:00', NULL),
(38, 10, '6cv', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', '348.00', 2, 'Rouge', 'png', '2018-08-16', '2018-08-21 00:00:00', NULL),
(39, 10, 'TRIKE', 'Trike', ' Aenean ut tellus non risus varius bibendum quis vel ligula.  ', '497.00', 1, 'Rouge', 'png', '2018-08-21', '2021-08-24 08:56:07', 0),
(40, 9, 'WAZAA', 'Wazaa', NULL, '68.00', 14, 'Vert', 'png', '2018-04-27', NULL, NULL),
(41, 9, 'ZOOM', 'Zoom', '  Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.  ', '49.80', 223, 'Gris', 'png', '2018-08-13', '2021-08-30 14:06:39', 0),
(42, 4, 'barbatruc', 'Wesj', 'lbalba', '666.66', 2, 'Bleu', 'jpg', '2021-12-07', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_nom` varchar(30) DEFAULT NULL,
  `user_prenom` varchar(30) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_login` varchar(30) DEFAULT NULL,
  `user_mdp` varchar(60) DEFAULT NULL,
  `user_d_create` datetime DEFAULT NULL,
  `user_d_last` datetime DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_nom`, `user_prenom`, `user_email`, `user_login`, `user_mdp`, `user_d_create`, `user_d_last`, `user_role`) VALUES
(2, 'Mailly', 'Romain', 'romain.mailly4@gmail.com', 'admin', '$2y$10$8xmBgOxU6woOmeGy8Pj9RexCRVRZc.Z2JtiFszV.vkP2nbMBYutfm', '2021-09-02 09:21:36', '2021-12-07 14:03:59', 'chef'),
(3, 'Afonso', 'Florian', 'florian.afonso@gmail.com', 'flo', '$2y$10$q/lTPLDvGQuIPKYbEfBLhOOTS2mVC6tDFBzmcjImum8sC7VSXVrsu', '2021-09-02 13:49:56', '2021-09-06 13:56:04', 'client'),
(4, 'Lefebvre', 'Rémi', 'remi.lfb@gmail.com', 'remi', '$2y$10$qwYT61LoMyvIzFY1dLjfp.jiMyXyn0vH0eUZI5SDjkOA2OtV2VABq', '2021-09-02 14:45:09', '2021-09-03 10:12:28', 'admin'),
(5, 'Loper', 'Dave', 'dave.loper@afpa.fr', 'Dave_Loper', '$2y$10$u4UAZe9pUlfhJtZh.tINQORMJul5gcHznxnei151XMGMqjzJ1geMC', '2021-09-03 10:10:51', '2021-09-03 11:33:34', 'client');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `fk_categories_cat_parent` (`cat_parent`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `idx_pro_ref` (`pro_ref`),
  ADD KEY `fk_produits_cat_id` (`pro_cat_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table catégorie', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table produits', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_categories_cat_parent` FOREIGN KEY (`cat_parent`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `fk_produits_cat_id` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);
--
-- Base de données : `laravelformation`
--
CREATE DATABASE IF NOT EXISTS `laravelformation` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravelformation`;

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` timestamp NOT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_27_121736_create_posts_table', 1),
(6, '2021_11_29_101417_create_events_table', 2);

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
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'titre edité', 'Sit error necessitatibus non excepturi. Enim rem dolores molestias porro maiores aut earum molestias. Quisquam maiores doloribus consequatur. Fuga ut odio non praesentium sequi consequatur.', '2021-09-27 10:56:05', '2021-09-28 05:18:15'),
(2, 'Et neque deleniti illum necessitatibus est illum impedit.', 'Voluptas suscipit voluptatem error eos consequatur. Officiis est facilis maiores sunt. Nobis sit voluptas est.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(3, 'Qui odio quae eum nulla.', 'Id dolor voluptates in ut. Deleniti sint impedit omnis exercitationem porro. Magni rerum et eligendi non. Quia quod dicta quae eos.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(4, 'Accusamus soluta iusto et vitae voluptatibus.', 'Voluptatem iusto non adipisci ipsa quasi. Exercitationem maxime officiis inventore illo facere sapiente qui. Et eum molestiae fugit. Quis consectetur incidunt ducimus quam impedit.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(5, 'Et et fuga impedit error voluptas facilis.', 'Quia qui dolorem aperiam nesciunt error qui. Sequi voluptate voluptates placeat deleniti ut. Cupiditate qui dolorem sit aut necessitatibus et in earum.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(6, 'Rerum enim ea velit voluptatem cum porro vel et.', 'Laborum soluta esse perferendis explicabo. Facilis sunt nisi numquam iure quasi qui. Consequatur optio ea accusantium omnis.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(7, 'Voluptatem nihil ut aut aliquid quis voluptatem fuga iure.', 'Vitae sunt qui sequi maxime voluptates error laborum. Architecto qui labore corporis totam. Voluptatem tempora quia ut. Quos et adipisci fuga quod harum optio quia.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(8, 'Est facere perferendis in quae provident.', 'Ratione deleniti id sunt quam omnis velit. Est architecto hic sed molestias dolorem. Qui vel consequatur perferendis. Odio laudantium aspernatur incidunt fugiat molestiae.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(9, 'Illo tenetur nihil rerum sed.', 'Sequi est voluptatem non aliquam quidem temporibus. Est quidem eveniet accusamus libero consequatur aliquam et id. Voluptas nam quia et soluta velit vitae quia.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(10, 'Impedit numquam nam sed voluptate commodi id voluptatibus.', 'Voluptatibus qui asperiores et enim repudiandae aut sed omnis. Laboriosam eum voluptatem iure alias. Sequi aut necessitatibus non sint cum similique doloremque. Odio eos molestiae ducimus maxime nostrum tempora.', '2021-09-27 10:56:05', '2021-09-27 10:56:05'),
(11, 'mon super titre', 'mon super contenu', '2021-09-28 05:04:30', '2021-09-28 05:04:30');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `les_leups`
--
CREATE DATABASE IF NOT EXISTS `les_leups` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `les_leups`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-03 13:40:52', '2021-11-03 12:40:52', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:99/Wordpress', 'yes'),
(2, 'home', 'http://localhost:99/Wordpress', 'yes'),
(3, 'blogname', 'Les Leups', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'romain.mailly60@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'montheme', 'yes'),
(41, 'stylesheet', 'montheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '15', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1651495252', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1636033252;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1636072852;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636116052;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636116088;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636116089;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636634452;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(124, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635944092;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1636031452;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636031453;s:7:\"checked\";a:4:{s:8:\"montheme\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_timeout_browser_0305c34587db1c47ee2ed7c19b064d7f', '1636548089', 'no'),
(133, '_site_transient_browser_0305c34587db1c47ee2ed7c19b064d7f', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:12:\"80.0.4170.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_7bd88c463d18d1395429260aa0d9ef54', '1636548089', 'no'),
(135, '_site_transient_php_check_7bd88c463d18d1395429260aa0d9ef54', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1636058947', 'no'),
(138, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(153, 'current_theme', 'Mon theme', 'yes'),
(154, 'theme_mods_montheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(156, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'category_children', 'a:0:{}', 'yes'),
(180, '_transient_timeout_feed_0d2db5fea5a8633b56992c916819b198', '1636058933', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(181, '_transient_feed_0d2db5fea5a8633b56992c916819b198', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Blog | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://fr.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Nov 2021 08:46:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.9-alpha-52007\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"Déposer et gérer une extension sur WordPress.org : documentation en français\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://fr.wordpress.org/2021/10/24/deposer-et-gerer-une-extension-sur-wordpress-org-documentation-en-francais/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://fr.wordpress.org/2021/10/24/deposer-et-gerer-une-extension-sur-wordpress-org-documentation-en-francais/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Oct 2021 16:32:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:10:\"Contribuer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:13:\"Documentation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:5:\"Guide\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2208\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:368:\"Proposer une extension sur le répertoire WordPress.org, c&#8217;est une belle façon de faire profiter la communauté de ce que vous avez développé pour vos propres besoins, et de rendre la pareille à cette communauté tout en vous y faisant connaître. Ça tombe bien, l&#8217;équipe de documentation de WordPress en français vient de publier un guide [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3531:\"\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\" style=\"grid-template-columns:auto 40%\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"701\" src=\"https://fr.wordpress.org/files/2021/10/wordpress-documentation-fr-1024x701.png\" alt=\"\" class=\"wp-image-2210 size-full\" srcset=\"https://fr.wordpress.org/files/2021/10/wordpress-documentation-fr-1024x701.png 1024w, https://fr.wordpress.org/files/2021/10/wordpress-documentation-fr-300x205.png 300w, https://fr.wordpress.org/files/2021/10/wordpress-documentation-fr-768x525.png 768w, https://fr.wordpress.org/files/2021/10/wordpress-documentation-fr.png 1450w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<p>Proposer une extension sur le répertoire WordPress.org, c&rsquo;est une belle façon de faire profiter la communauté de ce que vous avez développé pour vos propres besoins, et de rendre la pareille à cette communauté tout en vous y faisant connaître.</p>\n</div></div>\n\n\n\n<p>Ça tombe bien, l&rsquo;équipe de documentation de WordPress en français vient de publier un guide pour apprendre aux développeurs et développeuses d&rsquo;extensions comment déposer et gérer dans la durée leurs extensions WordPress sur le <a href=\"https://fr.wordpress.org/plugins\">répertoire officiel des extensions WordPress.org</a>.</p>\n\n\n\n<p>Ce guide est accessible sur la <a href=\"https://fr.wordpress.org/support\">page d&rsquo;accueil de la documentation de WordPress en français</a>, rubrique « Développement ». Vous pouvez également y accéder en suivant ce lien :</p>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-background\" href=\"https://fr.wordpress.org/support/article/deposer-et-gerer-son-extension-sur-le-repertoire-wordpress-org/\">Déposer et gérer mon extension sur le répertoire WP.org</a></div>\n</div>\n\n\n\n<p>Vous y retrouverez les pré-requis nécessaires avant de déposer votre extension, de l&rsquo;aide concernant les bonnes pratiques de développement, et les instructions concernant le versionnement de votre extension.</p>\n\n\n\n<p>En effet, si GIT est bien connu aujourd&rsquo;hui, SVN reste relativement obscur pour beaucoup de développeurs et de développeuses alors qu&rsquo;il ne s&rsquo;agit que de 4 ou 5 commandes à connaître.</p>\n\n\n\n<p>Ce point est d&rsquo;ailleurs celui qui a justifié la mise en œuvre de ce travail de documentation car l&rsquo;utilisation de SVN pose parfois des difficultés à la communauté.</p>\n\n\n\n<p>Bref, vous retrouverez tout ce qu&rsquo;il faut savoir concernant le dépôt et la gestion de votre extension sur le répertoire WordPress.org sur <a href=\"https://fr.wordpress.org/support/article/deposer-et-gerer-son-extension-sur-le-repertoire-wordpress-org/\">cette documentation dédiée</a>.</p>\n\n\n\n<p>Nous prévoyons prochainement de proposer plusieurs nouveaux guides liés à la contribution open source&nbsp;: dépôt d&rsquo;un thème sur le répertoire officiel, création d&rsquo;un meetup WordPress local officiel pris en charge par la communauté, etc. Si ce travail de documentation vous intéresse, n&rsquo;hésitez pas à <a href=\"https://fr.wordpress.org/team/handbook/traduire-la-documentation-de-wordpress-en-francais/rejoindre-lequipe-de-traduction-de-la-documentation/\">rejoindre l&rsquo;équipe de documentation de WordPress en français</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://fr.wordpress.org/2021/10/24/deposer-et-gerer-une-extension-sur-wordpress-org-documentation-en-francais/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:79:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"Rendez-vous le 24 septembre 2021 pour le WordPress Translation Day !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://fr.wordpress.org/2021/09/06/rejoignez-nous-le-24-septembre-pour-le-wordpress-translation-day-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"https://fr.wordpress.org/2021/09/06/rejoignez-nous-le-24-septembre-pour-le-wordpress-translation-day-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Sep 2021 13:53:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:11:\"Évènement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:10:\"Contribuer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2186\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:371:\"Cette année encore, c&#8217;est le retour du WordPress Translation Day, un évènement mondial dédié à la traduction de WordPress et de son écosystème. Cet évènement réunit toutes les communautés de traductrices et de traducteurs à travers le monde afin de contribuer ensemble à la traduction de notre CMS favori. Cette année, le WP Translation Day [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3466:\"\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021.png\"><img loading=\"lazy\" width=\"1024\" height=\"553\" src=\"https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021-1024x553.png\" alt=\"\" class=\"wp-image-2187\" srcset=\"https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021-1024x553.png 1024w, https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021-300x162.png 300w, https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021-768x415.png 768w, https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021-1536x830.png 1536w, https://fr.wordpress.org/files/2021/09/wptranslationday-fr-2021-2048x1107.png 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>Cette année encore, c&rsquo;est le retour du WordPress Translation Day, un évènement mondial dédié à la traduction de WordPress et de son écosystème.</p>\n\n\n\n<p>Cet évènement réunit toutes les communautés de traductrices et de traducteurs à travers le monde afin de contribuer ensemble à la traduction de notre CMS favori. Cette année, le WP Translation Day se déroulera durant tout le mois de septembre, pour permettre à chaque communauté locale de pouvoir organiser ses évènements locaux comme elle l&rsquo;entend.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignright size-large is-resized\"><img loading=\"lazy\" src=\"https://fr.wordpress.org/files/2021/09/Polyglots-Wapuu-WPTD2021.png\" alt=\"\" class=\"wp-image-2190\" width=\"129\" height=\"121\" /></figure></div>\n\n\n\n<p class=\"has-text-color has-medium-font-size\" style=\"color:#c91e68\">L&rsquo;équipe de traduction de WordPress en français a le plaisir de vous convier à son évènement local en ligne, le vendredi 24 septembre 2021 de 14h à 19h&nbsp;!</p>\n\n\n\n<h2>Comment participer&nbsp;?</h2>\n\n\n\n<p>C’est très simple&nbsp;: rendez-vous à partir de 14 heures sur le canal <code>#traductions</code> du <a href=\"https://wpfr.net/slack\">Slack WordPress FR (inscrivez-vous gratuitement ici)</a>. Si vous ne pouvez pas vous libérer dès 14 heures, n’hésitez pas à nous rejoindre en cours de route&nbsp;! Un lien de visioconférence sera alors partagé, mais vous pourrez aussi suivre l&rsquo;évènement depuis Slack.</p>\n\n\n\n<p>Durant cette après-midi les 4 GTE (<em>General Translation Editors</em>) seront présents pour vous aider (<a href=\"https://profile.wordpress.org/jdy68\">Jenny Dupuy</a>,&nbsp;<a href=\"https://profile.wordpress.org/fxbenard\">FX Bénard</a>,&nbsp;<a href=\"https://profile.wordpress.org/wolforg\">Didier Demory</a>&nbsp;et&nbsp;<a href=\"https://profile.wordpress.org/audrasjb\">Jb Audras</a>) ainsi que les responsables de la documentation de WordPress en français (<a href=\"https://profile.wordpress.org/chaton666\">Marie Comet</a>&nbsp;et&nbsp;<a href=\"https://profile.wordpress.org/jdy68\">Jenny Dupuy</a>).</p>\n\n\n\n<p>L’objectif est d’accueillir, orienter et accompagner un maximum de nouvelles personnes pour les initier à la traduction du cœur de WordPress, mais aussi des thèmes, des extensions et de la documentation du CMS.</p>\n\n\n\n<p>On vous réservera aussi quelques petites surprises, avec notamment un petit jeu/quiz <img src=\"https://s.w.org/images/core/emoji/13.1.0/72x72/1f31f.png\" alt=\"🌟\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>N&rsquo;hésitez pas à partager cet article sur vos réseaux, on se retrouve vendredi 24 septembre&nbsp;!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://fr.wordpress.org/2021/09/06/rejoignez-nous-le-24-septembre-pour-le-wordpress-translation-day-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"WordPress 5.8 « Tatum »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://fr.wordpress.org/2021/07/20/wordpress-5-8-tatum/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://fr.wordpress.org/2021/07/20/wordpress-5-8-tatum/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 20 Jul 2021 17:44:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2168\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:382:\"Trois changements d’ampleur Gestion des widgets à l’aide des blocs Après des mois de travail acharné, la puissance des blocs a enfin atteint l’éditeur de widgets et l’outil de personnalisation. Vous pouvez maintenant ajouter des blocs dans tous les emplacements de widgets de votre site et même les prévisualiser en direct dans l’outil de personnalisation. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:50680:\"\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://wordpress.org/news/files/2021/07/5x8-Album-1-1024x683.jpg\" alt=\"\" class=\"wp-image-11042\" /></figure>\n\n\n\n<div class=\"wp-block-cover has-background-dim\"><img loading=\"lazy\" width=\"1978\" height=\"1254\" class=\"wp-block-cover__image-background wp-image-2126\" alt=\"\" src=\"https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover.png\" data-object-fit=\"cover\" srcset=\"https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover.png 1978w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-300x190.png 300w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-1024x649.png 1024w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-768x487.png 768w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-1536x974.png 1536w\" sizes=\"(max-width: 1978px) 100vw, 1978px\" /><div class=\"wp-block-cover__inner-container\">\n<h2>WordPress 5.8 «&nbsp;Tatum&nbsp;»</h2>\n\n\n\n<p>Nous vous présentons WordPress 5.8 «&nbsp;Tatum&nbsp;», nommée en l’honneur de Art Tatum, le pianiste de Jazz légendaire. Sa technique exceptionnelle et sa volonté de repousser les limites ont inspiré des milliers de musiciens.</p>\n\n\n\n<p>Lancez donc un de ses meilleurs morceaux – comme <em>«&nbsp;Tea for Two&nbsp;»</em>, <em>«&nbsp;Tiger Rag&nbsp;»</em>, <em>«&nbsp;Begin the Beguine»</em> ou encore <em>«&nbsp;Night and Day&nbsp;»</em> et découvrez les nouveautés de la dernière version de WordPress.</p>\n</div></div>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<span id=\"more-2168\"></span>\n\n\n\n<h2 class=\"has-text-align-center\">Trois changements d’ampleur</h2>\n\n\n\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.org/news/files/2021/07/about-widgets-blocks-1024x768.png\" alt=\"\" data-id=\"10985\" data-full-url=\"https://wordpress.org/news/files/2021/07/about-widgets-blocks.png\" data-link=\"https://wordpress.org/news/?attachment_id=10985\" class=\"wp-image-10985\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.org/news/files/2021/07/about-query-loop-1024x811.png\" alt=\"\" data-id=\"10986\" data-full-url=\"https://wordpress.org/news/files/2021/07/about-query-loop.png\" data-link=\"https://wordpress.org/news/?attachment_id=10986\" class=\"wp-image-10986\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.org/news/files/2021/07/about-template-1024x666.png\" alt=\"\" data-id=\"10987\" data-full-url=\"https://wordpress.org/news/files/2021/07/about-template.png\" data-link=\"https://wordpress.org/news/?attachment_id=10987\" class=\"wp-image-10987\" /></figure></li></ul></figure>\n\n\n\n<h3>Gestion des widgets à l’aide des blocs</h3>\n\n\n\n<p>Après des mois de travail acharné, la puissance des blocs a enfin atteint l’éditeur de widgets et l’outil de personnalisation. Vous pouvez maintenant ajouter des blocs dans tous les emplacements de widgets de votre site et même les prévisualiser en direct dans l’outil de personnalisation. Cela ouvre de nouvelles possibilités pour créer du contenu&nbsp;: des mises en page sans coder, des présentations avancées à l’aide des blocs fournis par le cœur de WordPress ou par les extensions tierces… tout est possible. Les développeurs et les développeuses trouveront plus d’informations dans la&nbsp;<a href=\"https://make.wordpress.org/core/2021/06/29/block-based-widgets-editor-in-wordpress-5-8/\">note de développement dédiée</a>.</p>\n\n\n\n<h3>De nouveaux blocs et compositions pour vos publications</h3>\n\n\n\n<p>Le bloc de boucle de requête permet d’afficher une liste de publications basée sur des paramètres définis, exactement comme une boucle PHP mais sans avoir à écrire la moindre ligne de code. Cela vous permet très facilement d’afficher les articles appartenant à une catégorie spécifique, de créer un portfolio ou encore une page présentant vos meilleures recettes de cuisine. C’est un peu comme le bloc «&nbsp;Derniers articles&nbsp;», mais en bien plus puissant&nbsp;! De plus, les suggestions de compositions rendent très facile la gestion de l’affichage de ces listes.</p>\n\n\n\n<h3>Modification des modèles de publications</h3>\n\n\n\n<p>Vous pouvez maintenant utiliser l’éditeur de blocs pour modifier les modèles qui permettent l’affichage de votre contenu. Il vous faut pour cela disposer d’un thème conçu sur la base des blocs, ou qui a intégré la prise en charge de cette fonctionnalité. Vous pourrez basculer de l’éditeur de publication vers l’éditeur de modèles et inversement, tout en restant dans l’interface de l’éditeur de blocs. Il y a plus de 20 nouveaux blocs dédiés à l’édition des modèles. Vous pourrez en apprendre davantage sur cette fonctionnalité en lisant le guide disponible en bas de cette page.</p>\n\n\n\n<div style=\"height:32px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"has-text-align-center\">Trois nouveautés utiles au quotidien</h2>\n\n\n\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.org/news/files/2021/07/about-list-view-1024x803.png\" alt=\"\" data-id=\"10988\" data-full-url=\"https://wordpress.org/news/files/2021/07/about-list-view.png\" data-link=\"https://wordpress.org/news/?attachment_id=10988\" class=\"wp-image-10988\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.org/news/files/2021/07/about-pattern-suggestions-1024x555.png\" alt=\"\" data-id=\"10989\" data-full-url=\"https://wordpress.org/news/files/2021/07/about-pattern-suggestions.png\" data-link=\"https://wordpress.org/news/?attachment_id=10989\" class=\"wp-image-10989\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.org/news/files/2021/07/about-duotone-1024x837.png\" alt=\"\" data-id=\"10990\" data-full-url=\"https://wordpress.org/news/files/2021/07/about-duotone.png\" data-link=\"https://wordpress.org/news/?attachment_id=10990\" class=\"wp-image-10990\" /></figure></li></ul></figure>\n\n\n\n<h3>Vue d’ensemble de la structure des pages</h3>\n\n\n\n<p>Parfois vous n’avez besoin que d’une mise en page simple. Mais il arrive aussi d’avoir besoin de quelque chose de plus complexe. À mesure que la quantité de blocs et de compositions disponibles s’étoffe dans l’éditeur, les options de création de contenu deviennent plus nombreuses. La vue sous forme de liste vous permet d’avoir une vue d’ensemble du contenu de l’éditeur et de naviguer rapidement d’un bloc à l’autre. Vous pouvez décider de l’afficher constamment ou au contraire de le masquer, à votre guise.</p>\n\n\n\n<h3>Des suggestions de compositions de blocs</h3>\n\n\n\n<p>À partir de cette version, l’outil de transformation des blocs vous suggérera des compositions de blocs basées sur les blocs utilisés sur la sélection courante. Dès maintenant, vous pouvez l’essayer avec le bloc «&nbsp;boucle de requête&nbsp;» ou le bloc «&nbsp;icônes de réseaux sociaux&nbsp;». Au fur et à mesure de l’ajout de nouvelles compositions, vous pourrez obtenir davantage de suggestions de mises en page sans même quitter l’éditeur&nbsp;!</p>\n\n\n\n<h3>Style et colorisation des images</h3>\n\n\n\n<p>Colorisez vos images et blocs bannières avec des filtres duotones&nbsp;! Cela vous permet de rendre vos images (et même vos vidéos&nbsp;!) bicolores pour qu’elles s’intègrent mieux au design de votre site. Bien entendu, le filtre duotone le plus utilisé est sans doute le noir et blanc, mais de nombreuses autres combinaisons sont également disponibles et vous pouvez même créer vos propres combinaisons en suivant la documentation technique de la fonctionnalité.</p>\n\n\n\n<div style=\"height:32px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"has-text-align-center\">Pour les développeurs et les développeuses</h2>\n\n\n\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://wordpress.org/news/files/2021/07/about-theme-json-2x-1024x613.png\" alt=\"\" class=\"wp-image-10992\" /></figure>\n\n\n\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h3>Un nouveau fichier theme.json</h3>\n\n\n\n<p>WordPress&nbsp;5.8 dévoile une nouvelle API dédiée aux styles et réglages globaux de votre site. Cette API vous permet de contrôler les réglages de l’éditeur, les outils de personnalisation disponibles pour chaque bloc, les styles disponibles pour chaque bloc, le tout dans un simple fichier theme.json déclaré dans votre thème. Ce fichier de configuration permet d’activer ou de désactiver les fonctionnalités de l’éditeur, et de mettre en place des styles par défaut pour l’ensemble de votre site et pour chaque bloc indépendamment. Si vous développez des thèmes, vous pouvez expérimenter cette nouvelle fonctionnalité dès maintenant. Pour en savoir davantage sur cette API,&nbsp;<a href=\"https://make.wordpress.org/core/2021/06/25/introducing-theme-json-in-wordpress-5-8/\">lisez la note de développement dédiée</a>.</p>\n\n\n\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<h3>Fin de la prise en charge d’IE&nbsp;11</h3>\n\n\n\n<p>La prise en charge d’Internet Explorer 11 est abandonnée à partir de WordPress&nbsp;5.8. Cela signifie que les bogues découverts sur ce navigateur ne seront plus corrigés à l’avenir. Si vous utilisez actuellement IE&nbsp;11, nous vous recommandons fortement de&nbsp;<a href=\"https://browsehappy.com/\">basculer vers un navigateur plus moderne</a>.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3>Prise en charge du format WebP</h3>\n\n\n\n<p>WebP est un format d’image moderne qui fournit une meilleure compression d’image sur le web, avec un poids bien plus léger. Les images WebP sont en moyenne 30&nbsp;% plus légères que leurs équivalents PNG ou JPEG, ce qui a pour résultat de rendre vos sites plus performants.</p>\n</div>\n</div>\n\n\n\n<h3>Nouvelles fonctionnalités liées aux blocs</h3>\n\n\n\n<p>À la suite des fonctionnalités introduites dans les versions&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/18/block-supports-in-wordpress-5-6/\">5.6</a>&nbsp;et&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/24/changes-to-block-editor-components-and-blocks/\">5.7</a>, WordPress&nbsp;5.8 ajoute plusieurs nouvelles fonctionnalités liées aux blocs, afin de plus simplement les déclarer ou les personnaliser. Pour en savoir plus, lisez la&nbsp;<a href=\"https://make.wordpress.org/core/2021/06/25/block-supports-api-updates-for-wordpress-5-8/\">note de développement dédiée</a>.</p>\n\n\n\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h3>Consultez le guide de la version pour en savoir plus&nbsp;!</h3>\n\n\n\n<p>Consultez le <a href=\"https://fr.wordpress.org/2021/07/04/guide-des-changements-techniques-a-venir-sur-wordpress-5-8/\" data-type=\"post\" data-id=\"2124\">guide des changements techniques de WordPress&nbsp;5.8</a>. Il met en avant les notes de développement pour chaque modification que vous souhaiteriez approfondir.</p>\n\n\n\n<h2>Contributrices et contributeurs</h2>\n\n\n\n<p>WordPress 5.8 était dirigée par&nbsp;<a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a> ainsi que l&rsquo;équipe suivante&nbsp;:</p>\n\n\n\n<ul><li><strong>Coordinateurs&nbsp;:</strong>&nbsp;Jeffrey Paul (<a href=\'https://profiles.wordpress.org/jeffpaul/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jeffpaul</a>) et Jonathan Desrosiers (<a href=\'https://profiles.wordpress.org/desrosj/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>desrosj</a>)</li><li><strong>Responsable technique de l’éditeur&nbsp;:</strong>&nbsp;Riad Benguella (<a href=\'https://profiles.wordpress.org/youknowriad/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>youknowriad</a>)</li><li><strong>Responsable du marketing et de la communication&nbsp;:</strong> Josepha Haden Chomphosy (<a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>)</li><li><strong>Responsable de la documentation&nbsp;:</strong> Milana Cap (<a href=\'https://profiles.wordpress.org/milana_cap/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>milana_cap</a>)</li><li><strong>Responsable des tests&nbsp;:</strong>&nbsp;Piotrek Boniu (<a href=\'https://profiles.wordpress.org/boniu91/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>boniu91</a>)</li><li><strong>Responsable du support&nbsp;:&nbsp;</strong>Mary Job (<a href=\'https://profiles.wordpress.org/mariaojob/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mariaojob</a>)</li></ul>\n\n\n\n<p>Cette version est le résultat du travail de 530 contributrices et contributeurs qui ont travaillé sur plus de <a href=\"https://core.trac.wordpress.org/query?milestone=5.8&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">320 tickets sur Trac</a> et sur plus de <a href=\"https://github.com/wordpress/gutenberg/compare/v10.0.0...v10.7.0\">1&nbsp;500 pull requests sur GitHub</a>&nbsp;:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/5ubliminal/\">5ubliminal</a>, <a href=\"https://profiles.wordpress.org/ninetyninew/\">99w</a>, <a href=\"https://profiles.wordpress.org/9primus/\">9primus</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/aaronrobertshaw/\">aaronrobertshaw</a>, <a href=\"https://profiles.wordpress.org/abderrahman/\">abderrahman</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">Abha Thakor</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas/\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/achbed/\">achbed</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/zieladam/\">Adam Zielinski</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/aduth/\">aduth</a>, <a href=\"https://profiles.wordpress.org/chaion07/\">Ahmed Chaion</a>, <a href=\"https://profiles.wordpress.org/engahmeds3ed/\">Ahmed Saeed</a>, <a href=\"https://profiles.wordpress.org/ajitbohra/\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alanjacobmathew/\">alanjacobmathew</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juhé Lluveras</a>, <a href=\"https://profiles.wordpress.org/aleperez92/\">Alejandro Perez</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/akirk/\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a>, <a href=\"https://profiles.wordpress.org/alexstine/\">alexstine</a>, <a href=\"https://profiles.wordpress.org/firewatch/\">allilevine</a>, <a href=\"https://profiles.wordpress.org/amandariu/\">Amanda Riu</a>, <a href=\"https://profiles.wordpress.org/amarinediary/\">amarinediary</a>, <a href=\"https://profiles.wordpress.org/gadgetroid/\">Amogh Harish</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey « Rarst » Savchenko</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">André Maneiro</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/andy/\">Andy Skelton</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">Ankit Gade</a>, <a href=\"https://profiles.wordpress.org/annalamprou/\">annalamprou</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>, <a href=\"https://profiles.wordpress.org/anotherdave/\">anotherdave</a>, <a href=\"https://profiles.wordpress.org/anotia/\">anotia</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/antonlukin/\">Anton Lukin</a>, <a href=\"https://profiles.wordpress.org/vanyukov/\">Anton Vanyukov</a>, <a href=\"https://profiles.wordpress.org/antonisme/\">Antonis Lilis</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/apokalyptik/\">apokalyptik</a>, <a href=\"https://profiles.wordpress.org/arena/\">arena</a>, <a href=\"https://profiles.wordpress.org/lephleg/\">Argyris Margaritis</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/ariskataoka/\">ariskataoka</a>, <a href=\"https://profiles.wordpress.org/arkrs/\">arkrs</a>, <a href=\"https://profiles.wordpress.org/aruphi/\">Armand</a>, <a href=\"https://profiles.wordpress.org/arnaudban/\">ArnaudBan</a>, <a href=\"https://profiles.wordpress.org/arthur791004/\">Arthur Chu</a>, <a href=\"https://profiles.wordpress.org/arunsathiya/\">Arun a11n</a>, <a href=\"https://profiles.wordpress.org/aspexi/\">Aspexi</a>, <a href=\"https://profiles.wordpress.org/atjn/\">atjn</a>, <a href=\"https://profiles.wordpress.org/aurooba/\">Aurooba Ahmed</a>, <a href=\"https://profiles.wordpress.org/filosofo/\">Austin Matzko</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/barry/\">Barry</a>, <a href=\"https://profiles.wordpress.org/bartkalisz/\">bartkalisz</a>, <a href=\"https://profiles.wordpress.org/beafialho/\">Beatriz Fialho</a>, <a href=\"https://profiles.wordpress.org/pixolin/\">Bego Mario Garde</a>, <a href=\"https://profiles.wordpress.org/utz119/\">Benachi</a>, <a href=\"https://profiles.wordpress.org/benoitchantre/\">Benoit Chantre</a>, <a href=\"https://profiles.wordpress.org/bernhard reiter/\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/bmcculley/\">bmcculley</a>, <a href=\"https://profiles.wordpress.org/boblinthorst/\">Bob Linthorst</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/bogdanpreda/\">Bogdan Preda</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bradt/\">Brad Touesnard</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brechtvds/\">Brecht</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/brettshumaker/\">Brett Shumaker</a>, <a href=\"https://profiles.wordpress.org/ribaricplusplus/\">Bruno Ribaric</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/cameronjonesweb/\">Cameron Jones</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/carike/\">Carike</a>, <a href=\"https://profiles.wordpress.org/carlalexander/\">Carl Alexander</a>, <a href=\"https://profiles.wordpress.org/carlomanf/\">carlomanf</a>, <a href=\"https://profiles.wordpress.org/carlosgprim/\">carlosgprim</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/caseymilne/\">Casey Milne</a>, <a href=\"https://profiles.wordpress.org/cenay/\">Cenay Nailor</a>, <a href=\"https://profiles.wordpress.org/ceyhun0/\">Ceyhun Ozugur</a>, <a href=\"https://profiles.wordpress.org/nhuja/\">Chandra M</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a>, <a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/chriscct7/\">chriscct7</a>, <a href=\"https://profiles.wordpress.org/vimes1984/\">Christopher Churchill</a>, <a href=\"https://profiles.wordpress.org/ryno267/\">Chuck Reynolds</a>, <a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>, <a href=\"https://profiles.wordpress.org/codeamp/\">Code Amp</a>, <a href=\"https://profiles.wordpress.org/design_dolphin/\">CodePoet</a>, <a href=\"https://profiles.wordpress.org/costdev/\">Colin Stewart</a>, <a href=\"https://profiles.wordpress.org/collizo4sky/\">Collins Agbonghama</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/cr0ybot/\">Cory Hughart</a>, <a href=\"https://profiles.wordpress.org/courane01/\">Courtney Engle Robertson</a>, <a href=\"https://profiles.wordpress.org/crazycoders/\">crazycoders</a>, <a href=\"https://profiles.wordpress.org/critterverse/\">critterverse</a>, <a href=\"https://profiles.wordpress.org/czapla/\">czapla</a>, <a href=\"https://profiles.wordpress.org/davidszabo/\">Dávid Szabó</a>, <a href=\"https://profiles.wordpress.org/daisyo/\">Daisy Olsen</a>, <a href=\"https://profiles.wordpress.org/damonganto/\">damonganto</a>, <a href=\"https://profiles.wordpress.org/danfarrow/\">Dan Farrow</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/danieldudzic/\">danieldudzic</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/vetyst/\">Danny</a>, <a href=\"https://profiles.wordpress.org/davilera/\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Biňovec</a>, <a href=\"https://profiles.wordpress.org/dpcalhoun/\">David Calhoun</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/davidkryzaniak/\">David Kryzaniak</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">David Smith</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/devle/\">devfle</a>, <a href=\"https://profiles.wordpress.org/devrekli/\">devrekli</a>, <a href=\"https://profiles.wordpress.org/dhruvkb/\">dhruvkb</a>, <a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>, <a href=\"https://profiles.wordpress.org/dingdang/\">dingdang</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/djbu/\">djbu</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">donmhico</a>, <a href=\"https://profiles.wordpress.org/donnapep/\">Donna Peplinskie</a>, <a href=\"https://profiles.wordpress.org/dougwollison/\">Doug Wollison</a>, <a href=\"https://profiles.wordpress.org/dpik/\">dpik</a>, <a href=\"https://profiles.wordpress.org/dragongate/\">dragongate</a>, <a href=\"https://profiles.wordpress.org/drebbitsweb/\">Dreb Bits</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/eatsleepcode/\">eatsleepcode</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/itsjusteileen/\">Eileen Violini</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/aliveic/\">Emil E</a>, <a href=\"https://profiles.wordpress.org/emarticor/\">Emilio Martinez</a>, <a href=\"https://profiles.wordpress.org/manooweb/\">Emmanuel Hesry</a>, <a href=\"https://profiles.wordpress.org/empatogen/\">empatogen</a>, <a href=\"https://profiles.wordpress.org/enej/\">Enej Bajgorić</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">epiqueras</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">etoledom</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian Kägy</a>, <a href=\"https://profiles.wordpress.org/fabianpimminger/\">Fabian Pimminger</a>, <a href=\"https://profiles.wordpress.org/gaambo/\">Fabian Todt</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/felixbaumgaertner/\">felixbaumgaertner</a>, <a href=\"https://profiles.wordpress.org/femkreations/\">Femy Praseeth</a>, <a href=\"https://profiles.wordpress.org/fijisunshine/\">fijisunshine</a>, <a href=\"https://profiles.wordpress.org/florianbrinkmann/\">Florian Brinkmann</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>, <a href=\"https://profiles.wordpress.org/bueltge/\">Frank Bueltge</a>, <a href=\"https://profiles.wordpress.org/frosso1/\">frosso1 (a11n)</a>, <a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>, <a href=\"https://profiles.wordpress.org/gab81/\">gab81</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/geekpress/\">GeekPress</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/geoffrey1963/\">Geoffrey</a>, <a href=\"https://profiles.wordpress.org/revgeorge/\">George Hotelling</a>, <a href=\"https://profiles.wordpress.org/mamaduka/\">George Mamadashvili</a>, <a href=\"https://profiles.wordpress.org/georgestephanis/\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>, <a href=\"https://profiles.wordpress.org/grantmkin/\">Grant M. Kinney</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gregorlove/\">gRegor Morrill</a>, <a href=\"https://profiles.wordpress.org/priethor/\">Héctor Prieto</a>, <a href=\"https://profiles.wordpress.org/hannahmalcolm/\">Hannah Malcolm</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">happiryu</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">hedgefield</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandí</a>, <a href=\"https://profiles.wordpress.org/hermpheus/\">Herm Martini</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/herrvigg/\">herrvigg</a>, <a href=\"https://profiles.wordpress.org/htmgarcia/\">htmgarcia</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/icopydoc/\">icopydoc</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/dragunoff/\">Ivaylo Draganov</a>, <a href=\"https://profiles.wordpress.org/wphound/\">Ivete Tecedor</a>, <a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jacklenox/\">Jack Lenox</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jamesbonham/\">James Bonham</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/pondermatic/\">James Richards</a>, <a href=\"https://profiles.wordpress.org/jamesros161/\">James Rosado</a>, <a href=\"https://profiles.wordpress.org/jamil95/\">jamil95</a>, <a href=\"https://profiles.wordpress.org/janak007/\">janak Kaneriya</a>, <a href=\"https://profiles.wordpress.org/janwoostendorp/\">janw.oostendorp</a>, <a href=\"https://profiles.wordpress.org/jsnjohnston/\">Jason Johnston</a>, <a href=\"https://profiles.wordpress.org/javiarce/\">Javier Arce</a>, <a href=\"https://profiles.wordpress.org/jaymanpandya/\">Jayman Pandya</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/jeffikus/\">Jeffrey Pearce</a>, <a href=\"https://profiles.wordpress.org/jdy68/\">Jenny Dupuy</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeremyyip/\">Jeremy Yip</a>, <a href=\"https://profiles.wordpress.org/jeremy80/\">jeremy80</a>, <a href=\"https://profiles.wordpress.org/jeroenreumkens/\">JeroenReumkens</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">jeryj</a>, <a href=\"https://profiles.wordpress.org/jillebehm/\">jillebehm</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/sephsekla/\">Joe Bailey-Roberts</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/jonkastonka/\">Johan Jonk Stenström</a>, <a href=\"https://profiles.wordpress.org/goaroundagain/\">Johannes Kinast</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnny5/\">John Godley</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/bhwebworks/\">John Sundberg</a>, <a href=\"https://profiles.wordpress.org/jb510/\">Jon Brown</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/joseeyoast/\">Josee Wouters</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/dkampdesign/\">JoshuaDoshua</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juan Aldasoro</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/k3nsai/\">k3nsai</a>, <a href=\"https://profiles.wordpress.org/kaavyaiyer/\">kaavyaiyer</a>, <a href=\"https://profiles.wordpress.org/kevin940726/\">Kai Hao</a>, <a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>, <a href=\"https://profiles.wordpress.org/vyskoczilova/\">Karolina Vyskocilova</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/kellychoffman/\">Kelly Hoffman</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>, <a href=\"https://profiles.wordpress.org/kishanjasani/\">Kishan Jasani</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kittmedia/\">KittMedia</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/klevyke/\">klevyke</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/vdwijngaert/\">Koen Van den Wijngaert</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/devnel/\">Kyle Nel</a>, <a href=\"https://profiles.wordpress.org/lakrisgubben/\">lakrisgubben</a>, <a href=\"https://profiles.wordpress.org/notlaura/\">Lara Schenck</a>, <a href=\"https://profiles.wordpress.org/lmurillom/\">Larissa Murillo</a>, <a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>, <a href=\"https://profiles.wordpress.org/lewiscowles/\">LewisCowles</a>, <a href=\"https://profiles.wordpress.org/lifeforceinst/\">lifeforceinst</a>, <a href=\"https://profiles.wordpress.org/linux4me2/\">linux4me2</a>, <a href=\"https://profiles.wordpress.org/lovor/\">Lovro Hrust</a>, <a href=\"https://profiles.wordpress.org/displaynone/\">Luis Sacristán</a>, <a href=\"https://profiles.wordpress.org/infolu/\">Luiz Araújo</a>, <a href=\"https://profiles.wordpress.org/lukecarbis/\">Luke Carbis</a>, <a href=\"https://profiles.wordpress.org/m0ze/\">m0ze</a>, <a href=\"https://profiles.wordpress.org/maedahbatool/\">Maedah Batool</a>, <a href=\"https://profiles.wordpress.org/onemaggie/\">Maggie Cabrera</a>, <a href=\"https://profiles.wordpress.org/travel_girl/\">Maja Benke</a>, <a href=\"https://profiles.wordpress.org/mciampini/\">Marco Ciampini</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekhrabe/\">Marek Hrabe</a>, <a href=\"https://profiles.wordpress.org/tyxla/\">Marin Atanasov</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/markparnell/\">Mark Parnell</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/m-e-h/\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/mariaojob/\">Mary Job</a>, <a href=\"https://profiles.wordpress.org/marylauc/\">marylauc</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">Matt Chowning</a>, <a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/maxpertici/\">Maxime Pertici</a>, <a href=\"https://profiles.wordpress.org/mblach/\">mblach</a>, <a href=\"https://profiles.wordpress.org/immeet94/\">Meet Makadia</a>, <a href=\"https://profiles.wordpress.org/meher/\">Meher Bala</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/meloniq/\">meloniq</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/mbabker/\">Michael Babker</a>, <a href=\"https://profiles.wordpress.org/tw2113/\">Michael Beckwith</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mikehansenme/\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/mike_cowobo/\">Mike Martel</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">Mikhail Kobzarev</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a>, <a href=\"https://profiles.wordpress.org/mkdgs/\">mkdgs</a>, <a href=\"https://profiles.wordpress.org/mmuyskens/\">mmuyskens</a>, <a href=\"https://profiles.wordpress.org/mmxxi/\">mmxxi</a>, <a href=\"https://profiles.wordpress.org/daddou/\">Mohamed El Amine DADDOU</a>, <a href=\"https://profiles.wordpress.org/mohamedfaragallah/\">Mohammed Faragallah</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/mrjoeldean/\">mrjoeldean</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/m_uysl/\">Mustafa Uysal</a>, <a href=\"https://profiles.wordpress.org/mweichert/\">mweichert</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\">Nalini Thakor</a>, <a href=\"https://profiles.wordpress.org/naoki0h/\">Naoki Ohashi</a>, <a href=\"https://profiles.wordpress.org/nao/\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/nayanchamp7/\">Nazrul Islam Nayan</a>, <a href=\"https://profiles.wordpress.org/dway/\">nderambure</a>, <a href=\"https://profiles.wordpress.org/krstarica/\">net</a>, <a href=\"https://profiles.wordpress.org/nicegamer7/\">nicegamer7</a>, <a href=\"https://profiles.wordpress.org/eidolonnight/\">Nicholas Garofalo</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a>, <a href=\"https://profiles.wordpress.org/ninanmnm/\">ninanmnm</a>, <a href=\"https://profiles.wordpress.org/pianist787/\">Noah Allen</a>, <a href=\"https://profiles.wordpress.org/nvartolomei/\">nvartolomei</a>, <a href=\"https://profiles.wordpress.org/oguzkocer/\">oguzkocer</a>, <a href=\"https://profiles.wordpress.org/olafklejnstrupjensen/\">olafklejnstrupjensen</a>, <a href=\"https://profiles.wordpress.org/olgabulat/\">Olga Bulat</a>, <a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a>, <a href=\"https://profiles.wordpress.org/otshelnik-fm/\">Otshelnik-Fm</a>, <a href=\"https://profiles.wordpress.org/oxyrealm/\">oxyrealm</a>, <a href=\"https://profiles.wordpress.org/ozh/\">Ozh</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/paaggeli/\">Panagiotis Angelidis</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/fantasy1125/\">Pascal Knecht</a>, <a href=\"https://profiles.wordpress.org/patkemper/\">Pat</a>, <a href=\"https://profiles.wordpress.org/patricklindsay/\">patricklindsay</a>, <a href=\"https://profiles.wordpress.org/kapilpaul/\">Paul</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pabline/\">Paul Bunkham</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/paulstonier/\">Paul Stonier</a>, <a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a>, <a href=\"https://profiles.wordpress.org/psrpinto/\">Paulo Pinto</a>, <a href=\"https://profiles.wordpress.org/pavelvisualcomposer/\">Pavel I</a>, <a href=\"https://profiles.wordpress.org/mrpauloen/\">Paweł</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/walbo/\">Petter Walbø Johnsgård</a>, <a href=\"https://profiles.wordpress.org/phena109/\">phena109</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/wppinar/\">Pinar</a>, <a href=\"https://profiles.wordpress.org/boniu91/\">Piotrek Boniu</a>, <a href=\"https://profiles.wordpress.org/mordauk/\">Pippin Williamson</a>, <a href=\"https://profiles.wordpress.org/ptahdunbar/\">Pirate Dunbar</a>, <a href=\"https://profiles.wordpress.org/promz/\">Pramod Jodhani</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/presstoke/\">presstoke</a>, <a href=\"https://profiles.wordpress.org/pwallner/\">pwallner</a>, <a href=\"https://profiles.wordpress.org/pyronaur/\">pyronaur</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rafhun/\">rafhun</a>, <a href=\"https://profiles.wordpress.org/rkradadiya/\">Rajesh Radadiya</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/rahmohn/\">Ramon Ahnert</a>, <a href=\"https://profiles.wordpress.org/ramonopoly/\">ramonopoly</a>, <a href=\"https://profiles.wordpress.org/jontyravi/\">Ravi Vaghela</a>, <a href=\"https://profiles.wordpress.org/ravipatel/\">ravipatel</a>, <a href=\"https://profiles.wordpress.org/rellect/\">Refael Iliaguyev</a>, <a href=\"https://profiles.wordpress.org/renehermi/\">Rene Hermenau</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>, <a href=\"https://profiles.wordpress.org/reynhartono/\">reynhartono</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/rima1889/\">Rima Prajapati</a>, <a href=\"https://profiles.wordpress.org/rinatkhaziev/\">Rinat</a>, <a href=\"https://profiles.wordpress.org/rnaby/\">Rnaby</a>, <a href=\"https://profiles.wordpress.org/robdxw/\">robdxw</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/miqrogroove/\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/rogertheriault/\">Roger Theriault</a>, <a href=\"https://profiles.wordpress.org/rogerlos/\">rogerlos</a>, <a href=\"https://profiles.wordpress.org/roo2/\">roo2</a>, <a href=\"https://profiles.wordpress.org/lev0/\">Roy</a>, <a href=\"https://profiles.wordpress.org/geekstreetwp/\">Russell Aaron</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/soean/\">Sören Wrede</a>, <a href=\"https://profiles.wordpress.org/stodorovic/\">Saša</a>, <a href=\"https://profiles.wordpress.org/sabrinazeidan/\">Sabrina Zeidan</a>, <a href=\"https://profiles.wordpress.org/sahilmepani/\">Sahil Mepani</a>, <a href=\"https://profiles.wordpress.org/solarissmoke/\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sandipmondal/\">Sandip Mondal</a>, <a href=\"https://profiles.wordpress.org/sannevndrmeulen/\">Sanne van der Meulen</a>, <a href=\"https://profiles.wordpress.org/sarahricker/\">sarahricker</a>, <a href=\"https://profiles.wordpress.org/sarayourfriend/\">sarayourfriend</a>, <a href=\"https://profiles.wordpress.org/sasagar/\">SASAPIYO</a>, <a href=\"https://profiles.wordpress.org/satrancali/\">satrancali</a>, <a href=\"https://profiles.wordpress.org/savicmarko1985/\">savicmarko1985</a>, <a href=\"https://profiles.wordpress.org/gmagicscott/\">Scott Lesovic</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/scottconnerly/\">scottconnerly</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/sean212/\">Sean Fisher</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sebbb/\">sebbb</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">SergioEstevao</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/shaunandrews/\">shaunandrews</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/silb3r/\">silb3r</a>, <a href=\"https://profiles.wordpress.org/siobhyb/\">Siobhan</a>, <a href=\"https://profiles.wordpress.org/sirstuey/\">SirStuey</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>, <a href=\"https://profiles.wordpress.org/spikeuk1/\">spikeuk1</a>, <a href=\"https://profiles.wordpress.org/spytzo/\">spytzo</a>, <a href=\"https://profiles.wordpress.org/stacimc/\">stacimc</a>, <a href=\"https://profiles.wordpress.org/khromov/\">Stanislav Khromov</a>, <a href=\"https://profiles.wordpress.org/deustron/\">Stefan Hüsges</a>, <a href=\"https://profiles.wordpress.org/stefanjoebstl/\">stefanjoebstl</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegrunwell/\">Steve Grunwell</a>, <a href=\"https://profiles.wordpress.org/stevehenty/\">Steve Henty</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/strategio/\">strategio</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sumaiyasiddika/\">Sumaiya Siddika</a>, <a href=\"https://profiles.wordpress.org/sumanm/\">Suman</a>, <a href=\"https://profiles.wordpress.org/sumitsingh/\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/5um17/\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/sushmak/\">sushmak</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/szaqal21/\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/tamlyn/\">tamlyn</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/terriann/\">Terri Ann</a>, <a href=\"https://profiles.wordpress.org/wildworks/\">Tetsuaki Hamano</a>, <a href=\"https://profiles.wordpress.org/themes-1/\">them.es</a>, <a href=\"https://profiles.wordpress.org/kraftner/\">Thomas Kräftner</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">Thomas Patrick Levy</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timotijhof/\">TimoTijhof</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tmdk/\">tmdk</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemerö</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/travisnorthcutt/\">Travis Northcutt</a>, <a href=\"https://profiles.wordpress.org/trejder/\">trejder</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a>, <a href=\"https://profiles.wordpress.org/vcanales/\">Vicente Canales</a>, <a href=\"https://profiles.wordpress.org/vipulc2/\">Vipul Chandel</a>, <a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T</a>, <a href=\"https://profiles.wordpress.org/wangql/\">wangql</a>, <a href=\"https://profiles.wordpress.org/webdragon/\">WebDragon</a>, <a href=\"https://profiles.wordpress.org/wendyjchen/\">Wendy Chen</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">williampatton</a>, <a href=\"https://profiles.wordpress.org/xavivars/\">Xavi Ivars</a>, <a href=\"https://profiles.wordpress.org/tikifez/\">Xristopher Anderton</a>, <a href=\"https://profiles.wordpress.org/y_kolev/\">Y_Kolev</a>, <a href=\"https://profiles.wordpress.org/yansern/\">Yan Sern</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/yuliyan/\">yuliyan</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\">Yvette Sonneveld</a>, <a href=\"https://profiles.wordpress.org/zackkrida/\">Zack Krida</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zkancs/\">zkancs</a>, and <a href=\"https://profiles.wordpress.org/sunxiyuan/\">孙锡源</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://fr.wordpress.org/2021/07/20/wordpress-5-8-tatum/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:77:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Guide des changements techniques à venir sur WordPress 5.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://fr.wordpress.org/2021/07/04/guide-des-changements-techniques-a-venir-sur-wordpress-5-8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://fr.wordpress.org/2021/07/04/guide-des-changements-techniques-a-venir-sur-wordpress-5-8/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 04 Jul 2021 10:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:5:\"Guide\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2124\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"La version 5.8 de WordPress prévue pour le 20 juillet 2021 n’apportera pas moins de 96 améliorations et nouvelles fonctionnalités, 170 correctifs de bugs et 24 autres modifications diverses. Cela correspond au total à 291 tickets sur Trac, l&#8217;outil que nous utilisons pour organiser le développement de WordPress. Dans ce guide, vous retrouverez tous les [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:84:\"https://fr.wordpress.org/files/2021/07/wordpress-5-8-delete-menus-maxime-pertici.mp4\";s:6:\"length\";s:6:\"410124\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:38080:\"\n<div class=\"wp-block-cover has-background-dim\"><img loading=\"lazy\" width=\"1978\" height=\"1254\" class=\"wp-block-cover__image-background wp-image-2126\" alt=\"\" src=\"https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover.png\" data-object-fit=\"cover\" srcset=\"https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover.png 1978w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-300x190.png 300w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-1024x649.png 1024w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-768x487.png 768w, https://fr.wordpress.org/files/2021/06/wp-5-8-about-page-cover-1536x974.png 1536w\" sizes=\"(max-width: 1978px) 100vw, 1978px\" /><div class=\"wp-block-cover__inner-container\">\n<h2>La sortie de WordPress 5.8 est<br>prévue pour le 20 juillet 2021</h2>\n\n\n\n<p>Découvrez dans ce guide les nouveautés techniques qui vous attendent pour cette nouvelle version de l’outil qui propulse plus de 42% du web&nbsp;!</p>\n</div></div>\n\n\n\n<p>La version 5.8 de WordPress prévue pour le 20 juillet 2021 n’apportera pas moins de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.8&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=priority&amp;order=priority\">96 améliorations et nouvelles fonctionnalités</a>, <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.8&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=priority&amp;order=priority\">170 correctifs de bugs</a> et <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=task+(blessed)&amp;milestone=5.8&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=priority&amp;order=priority\">24 autres modifications diverses</a>. Cela correspond au total à <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.8&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">291 tickets sur Trac</a>, l&rsquo;outil que nous utilisons pour organiser le développement de WordPress.</p>\n\n\n\n<p>Dans ce guide, vous retrouverez tous les changements majeurs apportés par la version 5.8 de WordPress.</p>\n\n\n\n<p>Pour chaque composant de WordPress concerné par un changement majeur, vous trouverez un paragraphe introductif en français suivi des notes de développement et autres ressources publiées par l&rsquo;équipe de développement de WordPress, en anglais.</p>\n\n\n\n<span id=\"more-2124\"></span>\n\n\n\n<h2>Un premier pas vers l&rsquo;édition complète de votre site avec Gutenberg</h2>\n\n\n\n<p>Toutes les versions de Gutenberg sorties entre WP 5.7 et aujourd&rsquo;hui ont été intégrées dans WordPress 5.8. Ainsi, la prochaine version de WordPress contiendra les versions <a href=\"https://make.wordpress.org/core/2021/02/17/whats-new-in-gutenberg-10-0-february/\">10.0</a>, <a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">10.1</a>, <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">10.2</a>, <a href=\"https://make.wordpress.org/core/2021/04/02/whats-new-in-gutenberg-10-3-31-march/\">10.3</a>, <a href=\"https://make.wordpress.org/core/2021/04/14/whats-new-in-gutenberg-10-4-14-april/\">10.4</a>, <a href=\"https://make.wordpress.org/core/2021/04/30/whats-new-in-gutenberg-10-5-28-april/\">10.5</a>, <a href=\"https://make.wordpress.org/core/2021/05/14/whats-new-in-gutenberg-10-6-12-may/\">10.6</a> et <a href=\"https://make.wordpress.org/core/2021/05/27/whats-new-in-gutenberg-10-7-26-may/\">10.7</a> de l&rsquo;extension Gutenberg. Par ailleurs, les correctifs et améliorations de performances des versions <a href=\"https://make.wordpress.org/core/2021/06/10/whats-new-in-gutenberg-10-8-9-june/\">10.8</a> et <a href=\"https://make.wordpress.org/core/2021/06/24/whats-new-in-gutenberg-10-9-23-june/\">10.9</a> seront également intégrées dans WP&nbsp;5.8.</p>\n\n\n\n<p><a href=\"https://wordpress.org/news/2021/06/wordpress-5-8-beta-1/\">L&rsquo;annonce de sortie de la version beta 1 de WordPress 5.8</a> présente de nombreuses améliorations et nouvelles fonctionnalités.</p>\n\n\n\n<p>WordPress 5.8 est une version un peu spéciale, car elle contient les premières briques de l&rsquo;édition complète de site, une fonctionnalité connue en anglais sous le nom de <em>«&nbsp;FSE&nbsp;»</em> pour <em>«&nbsp;Full Site Editing&nbsp;»</em>. Vous retrouverez ci-dessous les nouveautés apportées par cette nouvelle fonctionnalité, dont l&rsquo;arrivée dans WordPress sera répartie entre les versions 5.8 et 5.9 de WP.</p>\n\n\n\n<p>Premièrement, commençons par présenter l&rsquo;introduction du fichier <code>theme.json</code>, utilisable par les thèmes prenant en charge l&rsquo;édition complète de sites pour déclarer les fonctionnalités supportées par le thème.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"w8UV72ClgX\"><a href=\"https://make.wordpress.org/core/2021/06/25/introducing-theme-json-in-wordpress-5-8/\">Introducing theme.json in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing theme.json in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/25/introducing-theme-json-in-wordpress-5-8/embed/#?secret=w8UV72ClgX\" data-secret=\"w8UV72ClgX\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Cet article présente quant à lui le nouvel éditeur de modèles disponible à partir de WP 5.8, et comment rendre votre thème compatible&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"es1csQoiTx\"><a href=\"https://make.wordpress.org/core/2021/06/29/on-layout-and-content-width-in-wordpress-5-8/\">On layout and content width in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;On layout and content width in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/29/on-layout-and-content-width-in-wordpress-5-8/embed/#?secret=es1csQoiTx\" data-secret=\"es1csQoiTx\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Pour créer le nouvel éditeur de modèles basé sur Gutenberg, il a été nécessaire d&rsquo;isoler l&rsquo;éditeur dans un contexte autre que celui de l&rsquo;édition d&rsquo;une publication. Cet article présente la démarche qui a été suivie pour cette nouvelle fonctionnalité de WP 5.8.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"ShMB0FsNYJ\"><a href=\"https://make.wordpress.org/core/2021/06/16/introducing-the-template-editor-in-wordpress-5-8/\">Introducing the template editor in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing the template editor in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/16/introducing-the-template-editor-in-wordpress-5-8/embed/#?secret=ShMB0FsNYJ\" data-secret=\"ShMB0FsNYJ\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>La note de développement ci-dessous présente le nouvel éditeur de widgets embarqué dans WP 5.8. Si vous souhaitez garder l&rsquo;ancien écran de widgets de WordPress, vous pouvez installer l&rsquo;extension <a href=\"https://fr.wordpress.org/plugins/classic-widgets/\">Classic Widgets</a> dès à présent sur votre site.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"3MHyLuLV2p\"><a href=\"https://make.wordpress.org/core/2021/06/29/block-based-widgets-editor-in-wordpress-5-8/\">Block-based Widgets Editor in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Block-based Widgets Editor in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/29/block-based-widgets-editor-in-wordpress-5-8/embed/#?secret=3MHyLuLV2p\" data-secret=\"3MHyLuLV2p\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Cette note de développement décrit quant à elle les modifications faites sur l’API de l&rsquo;éditeur de blocs. Le fichier de métadonnées <code>block.json</code> devient la façon normale de déclarer un bloc Gutenberg, la spécification des métadonnées de blocs est lancée et sera développée de façon itérative dans les prochaines versions. Cet article propose aussi de nombreux exemples d&rsquo;implémentation très utiles si vous développez régulièrement des blocs Gutenberg.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"hxJO8ZqA05\"><a href=\"https://make.wordpress.org/core/2021/06/23/block-api-enhancements-in-wordpress-5-8/\">Block API Enhancements in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Block API Enhancements in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/23/block-api-enhancements-in-wordpress-5-8/embed/#?secret=hxJO8ZqA05\" data-secret=\"hxJO8ZqA05\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Un changement longtemps attendu : l&rsquo;écran de modification des publications n&rsquo;est plus le seul écran de l&rsquo;administration a pouvoir accueillir l&rsquo;éditeur de blocs. Ce sera dorénavant aussi le cas de l&rsquo;écran des widgets, et pour WordPress 5.9 de l&rsquo;écran des menus. Dans un futur proche, il sera possible d&rsquo;intégrer l&rsquo;éditeur sur n&rsquo;importe quelle écran de l&rsquo;administration. Ces évolutions demandent de revoir certaines parties du fonctionnement général de l&rsquo;éditeur de blocs et cet article présente les changements qui arrivent dans un premier temps sur WP 5.8.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"ME4MeIf0TJ\"><a href=\"https://make.wordpress.org/core/2021/06/16/block-editor-api-changes-to-support-multiple-admin-screens-in-wp-5-8/\">Block Editor API Changes to Support Multiple Admin Screens in WP 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Block Editor API Changes to Support Multiple Admin Screens in WP 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/16/block-editor-api-changes-to-support-multiple-admin-screens-in-wp-5-8/embed/#?secret=ME4MeIf0TJ\" data-secret=\"ME4MeIf0TJ\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Cette note de développement présente les fonctionnalités de Gutenberg qui ont été dépréciées dans WP 5.8. Pour éviter des avertissements et erreurs sur vos développements, consultez cette note de développement et mettez à jour votre code&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"gJoIVtykTI\"><a href=\"https://make.wordpress.org/core/2021/06/29/block-editor-api-removals-58/\">Various Block Editor API removals in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Various Block Editor API removals in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/29/block-editor-api-removals-58/embed/#?secret=gJoIVtykTI\" data-secret=\"gJoIVtykTI\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Cette note de développement présente la nouvelle API de réglages et de styles globaux. Cette API vous permet de définir dans votre thème des réglages et styles prédéfinis.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"ZwJIunoY2d\"><a href=\"https://make.wordpress.org/core/2021/06/29/blocks-in-an-iframed-template-editor/\">Blocks in an iframed (template) editor</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Blocks in an iframed (template) editor&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/29/blocks-in-an-iframed-template-editor/embed/#?secret=ZwJIunoY2d\" data-secret=\"ZwJIunoY2d\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Pour finir avec l&rsquo;éditeur, WordPress&nbsp;5.8 comprend aussi plusieurs améliorations concernant le chargement des styles CSS associés aux blocs, pour de meilleures performances et un meilleur contrôle des feuilles de styles associées </p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Pm4Aq7nwpg\"><a href=\"https://make.wordpress.org/core/2021/07/01/block-styles-loading-enhancements-in-wordpress-5-8/\">Block-styles loading enhancements in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Block-styles loading enhancements in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/07/01/block-styles-loading-enhancements-in-wordpress-5-8/embed/#?secret=Pm4Aq7nwpg\" data-secret=\"Pm4Aq7nwpg\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Médiathèque</h2>\n\n\n\n<p><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;component=Media&amp;milestone=5.8&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">Parmi toutes les modifications dans le composant «&nbsp;Médias&nbsp;» de WordPress</a>, c&rsquo;est sans aucun doute l&rsquo;arrivée de la prise en charge native du format WebP qui est le changement le plus important. Cette prise en charge du format WebP est complète, et tous les filtres et crochets d&rsquo;actions disponibles sur le reste des fichiers médias sont également disponibles pour vos médias au format WebP, qui est un format beaucoup plus performant que les «&nbsp;antiques&nbsp;» formats PNG ou JPEG. Accompagnés du nouveau filtre <code>image_editor_output_format</code>, ces changements posent les bases de bonnes améliorations de performances en perspective.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"WtrYvObnKA\"><a href=\"https://make.wordpress.org/core/2021/06/07/wordpress-5-8-adds-webp-support/\">WordPress 5.8 adds WebP support</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;WordPress 5.8 adds WebP support&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/07/wordpress-5-8-adds-webp-support/embed/#?secret=WtrYvObnKA\" data-secret=\"WtrYvObnKA\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Vous noterez également quelques améliorations sur l&rsquo;écran Médiathèque de l&rsquo;administration. Par exemple, le défilement infini au sein de la médiathèque posant un certain nombre de problèmes d&rsquo;accessibilité et d&rsquo;utilisabilité générale, nous l&rsquo;avons remplacé par un bouton de chargement dynamique en AJAX (tickets <a href=\"https://core.trac.wordpress.org/ticket/50105\">#50105</a> et <a href=\"https://core.trac.wordpress.org/ticket/40330\">#40330</a>). Nous avons aussi ajouté un bouton permettant de copier-coller rapidement le permalien vers les fichiers de la médiathèque après les avoir téléversés (ticket <a href=\"https://core.trac.wordpress.org/ticket/51754\">#51754</a>).</p>\n\n\n\n<h2>Menus</h2>\n\n\n\n<p>Une nouvelle fonctionnalité a été ajoutée sur l&rsquo;écran de gestion des menus. Celle-ci permet de sélectionner plusieurs éléments de menus afin de les supprimer en un clic, alors que cette opération était particulièrement longue à faire manuellement. Bravo au français <a href=\'https://profiles.wordpress.org/maxpertici/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>maxpertici</a> qui a travaillé sur le développement de cette nouvelle fonctionnalité intégrée dans WP&nbsp;5.8, résolvant ainsi <a href=\"https://core.trac.wordpress.org/ticket/21603\">un ticket datant de plus de 9 ans</a>.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://fr.wordpress.org/files/2021/07/wordpress-5-8-delete-menus-maxime-pertici.mp4\"></video></figure>\n\n\n\n<h2>Changement concernant la gestion des extensions</h2>\n\n\n\n<p>WordPress 5.8 introduit un nouveau champ d&rsquo;en-tête utilisable dans le fichier principal de vos extensions&nbsp;: le champ <code>Update URI</code>. Attendu depuis des années par les développeur et développeuses, cet en-tête permet aux personnes développant des extensions de définir la source depuis laquelle l&rsquo;extension peut être mise à jour. Cela permet d&rsquo;éviter que votre extension réalisée sur-mesure soit écrasée par une mise à jour d&rsquo;une extension portant le même nom et provenant du répertoire WordPress.org.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"ETv1k1T7tI\"><a href=\"https://make.wordpress.org/core/2021/06/29/introducing-update-uri-plugin-header-in-wordpress-5-8/\">Introducing &#8220;Update URI&#8221; plugin header in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing &#8220;Update URI&#8221; plugin header in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/29/introducing-update-uri-plugin-header-in-wordpress-5-8/embed/#?secret=ETv1k1T7tI\" data-secret=\"ETv1k1T7tI\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>À noter que ce changement ne sera pour l&rsquo;instant disponible que pour les extensions. Le même changement sera opéré sur les thèmes dans WordPress 5.9 si l&rsquo;expérience s&rsquo;avère concluante.</p>\n\n\n\n<h2>API REST</h2>\n\n\n\n<p>Cette note de développement présente toutes les modifications de l&rsquo;API REST ayant été faites sur WordPress&nbsp;5.8. La plupart de ces modifications concernent évidemment l&rsquo;éditeur de widget, qui a nécessité la création d&rsquo;un grand nombre de points de terminaison au sein de l&rsquo;API REST. Longtemps attendue par les développeuses et les développeurs utilisant l&rsquo;API REST, la prise en charge de l&rsquo;opérateur de comparaison <code>AND</code> a été ajouté à l&rsquo;API.<br>D&rsquo;autres changements mineurs sur l&rsquo;API REST sont également présentés.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"TjZRGpgbDw\"><a href=\"https://make.wordpress.org/core/2021/06/29/rest-api-changes-in-wordpress-5-8/\">REST API Changes in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;REST API Changes in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/29/rest-api-changes-in-wordpress-5-8/embed/#?secret=TjZRGpgbDw\" data-secret=\"TjZRGpgbDw\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Santé du site</h2>\n\n\n\n<p>Encore un changement attendu depuis longtemps&nbsp;! En utilisant quelques filtres, crochets d&rsquo;action, et fonctions PHP, les développeurs et développeuses d&rsquo;extensions ont maintenant la possibilité de créer leurs propres onglets au sein de l’écran de Santé du site.</p>\n\n\n\n<p>WordPress 5.8 propose aussi de nouvelles informations, notamment une liste des types de fichiers pris en charges par l&rsquo;installation pour le module PHP d’édition d’images actif sur le serveur (ticket <a href=\"https://core.trac.wordpress.org/ticket/53022\">#53022</a>).</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"jFT4GGBqsS\"><a href=\"https://make.wordpress.org/core/2021/06/22/extending-the-site-health-interface-in-wordpress-5-8/\">Extending the Site Health interface in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Extending the Site Health interface in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/22/extending-the-site-health-interface-in-wordpress-5-8/embed/#?secret=jFT4GGBqsS\" data-secret=\"jFT4GGBqsS\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Thèmes natifs proposés par WordPress</h2>\n\n\n\n<p>Avec l&rsquo;arrivée partielle de l&rsquo;édition complète de site sur WP 5.8, il était nécessaire de proposer davantage d&rsquo;exemples de compositions de blocs au sein des thèmes natifs proposés par le cœur de WordPress. Et c&rsquo;est chose faite, en attendant l&rsquo;arrivée du prochain thème natif qui sera traditionnellement proposé par la dernière version de l&rsquo;année –WordPress 5.9– et qui sera évidemment nommé <em>Twenty&nbsp;Twenty-Two</em>&nbsp;!</p>\n\n\n\n<p>Notons également l’arrivée de deux nouveaux crochets d’action,&nbsp;<code>delete_theme</code>&nbsp;et&nbsp;<code>deleted_theme</code>&nbsp;(ticket <a href=\"https://core.trac.wordpress.org/ticket/16401\">#16401</a>), de plusieurs améliorations de l’interface de gestion des thèmes pour mieux mettre en évidence les thèmes enfants&nbsp;(ticket <a href=\"https://core.trac.wordpress.org/ticket/30240\">#30240</a>), du compteur de mises à jour disponibles dans le menu de l&rsquo;administration (ticket <a href=\"https://core.trac.wordpress.org/ticket/43697\">#43697</a>), et la suppression de l’onglet «&nbsp;Mis en avant&nbsp;» de l’écran d’ajout de thèmes (ticket <a href=\"https://core.trac.wordpress.org/ticket/49487\">#49487</a>).</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"p8kO9fNBXg\"><a href=\"https://make.wordpress.org/core/2021/06/21/bundled-themes-changes-in-wordpress-5-8/\">Bundled themes changes in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Bundled themes changes in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/21/bundled-themes-changes-in-wordpress-5-8/embed/#?secret=p8kO9fNBXg\" data-secret=\"p8kO9fNBXg\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Fin de la prise en charge d&rsquo;Internet Explorer&nbsp;11</h2>\n\n\n\n<p>Hé oui&nbsp;! WordPress cesse définitivement de prendre en charge Internet Explorer 11 (et donc Internet Explorer tout court). Du moins, en ce qui concerne l&rsquo;interface d&rsquo;administration. Un choix logique pris à l&rsquo;unanimité de l&rsquo;équipe de développement. En effet, ce navigateur en fin de vie représente depuis début 2021 moins de 1% de parts de marché des navigateurs. L&rsquo;arrêt de la prise en charge de cet ancien navigateur permettra d&rsquo;améliorer grandement les performances d&rsquo;affichage de l&rsquo;administration sur l&rsquo;ensemble des autres navigateurs, en débarrassant WordPress des règles CSS et <em>polyfills</em> JavaScript nécessaires à la prise en charge d&rsquo;IE&nbsp;11. Ces changements ne concernent que l&rsquo;interface d&rsquo;administration. Les thèmes seront quant à eux libres de prendre en charge ou non l&rsquo;antique IE&nbsp;11. </p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-wordpress-news wp-block-embed-wordpress-news\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"ITMmCNTUqZ\"><a href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\">Dropping support for Internet Explorer 11</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Dropping support for Internet Explorer 11&#8221; &#8212; WordPress News\" src=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/embed/#?secret=ITMmCNTUqZ\" data-secret=\"ITMmCNTUqZ\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Autres changements techniques notables</h2>\n\n\n\n<p>Le composant Bootstrap/Load correspond à tout ce qui se passe lors du processus d&rsquo;initialisation et de chargement de WordPress. Dans cette note de développement, vous en saurez davantage sur les quelques changements associés à ce composant.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"o4kX1ByqXv\"><a href=\"https://make.wordpress.org/core/2021/06/09/bootstrap-load-changes-in-5-8/\">Bootstrap/Load Changes in 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Bootstrap/Load Changes in 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/09/bootstrap-load-changes-in-5-8/embed/#?secret=o4kX1ByqXv\" data-secret=\"o4kX1ByqXv\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Enfin, voici une note de développement regroupant différents changements qui n&rsquo;avaient pas besoin d&rsquo;avoir leur propre note individuelle. Les changements abordés sont les suivants&nbsp;:</p>\n\n\n\n<ul><li>Outils de compilation et de test&nbsp;: suppression d’IE11 de la liste des navigateurs pris en charges (cela signifie qu’il n&rsquo;y aura plus de tests de non-regression sur IE11 à l’avenir)</li><li>Formatage&nbsp;: meilleure cohérence et contrôle du rendu de <code>wp_get_document_title()</code></li><li>Général&nbsp;: cohérence de la déclaration du type des propriétés des classes <code>WP_Post</code>, <code>WP_Term</code>, <code>WP_User</code></li><li>Publications et types de publications&nbsp;: utilisation de&nbsp;<code>_prime_post_caches()</code>&nbsp;pour de meilleures performances pour les appels à la fonction&nbsp;<code>get_pages()</code></li><li>Comptes&nbsp;: les actions et filtres associés à la fonction <code>wp_insert_user()</code> reçoivent maintenant le contenu des métadonnées de l’utilisateur·ice via la variable&nbsp;<code>$userdata</code></li><li>Médiathèque&nbsp;: ajout du filtre&nbsp;<code>image_editor_output_format</code></li><li>Général&nbsp;: tous les filtres de type&nbsp;<code>*_url</code>&nbsp;reçoivent maintenant le schéma d&rsquo;URL demandé</li><li>Publications et types de publications&nbsp;:&nbsp;améliorations de performances sur la fonction&nbsp;<code>post_exists()</code></li><li>Thèmes&nbsp;: ajout des crochets d’action <code>delete_theme</code>&nbsp;et&nbsp;<code>deleted_theme</code>&nbsp;</li><li>Publications et types de publications&nbsp;:&nbsp;les révisions sont maintenant disponibles par défaut pour le type de publication «&nbsp;blocs réutilisables&nbsp;» – <code>wp_block</code>&nbsp;</li><li>Publications et types de publications&nbsp;: amélioration de l&rsquo;extensibilité du filtre <code>the_password_form</code></li></ul>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Ugc9GmEfsF\"><a href=\"https://make.wordpress.org/core/2021/06/28/miscellaneous-developer-focused-changes-in-wordpress-5-8/\">Miscellaneous developer focused changes in WordPress 5.8</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Miscellaneous developer focused changes in WordPress 5.8&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/06/28/miscellaneous-developer-focused-changes-in-wordpress-5-8/embed/#?secret=Ugc9GmEfsF\" data-secret=\"Ugc9GmEfsF\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Et bien plus encore…</h2>\n\n\n\n<p>WordPress&nbsp;5.8 contient bien d’autres améliorations et modifications !<br>Plus de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.8&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">170 bugs</a> ont été corrigés,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.8&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">96 améliorations et nouvelles fonctionnalités</a> ont été implémentées et <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=task+(blessed)&amp;milestone=5.8&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">24 tâches courantes</a> ont été&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">clôturées dans WordPress 5.8</a>.</p>\n\n\n\n<p>Voici d’autres modifications qui n’ont pas été évoquées dans les notes de développement listées ci-dessus&nbsp;:</p>\n\n\n\n<ul><li>Outils de compilation et de test&nbsp;: remplacement de la bibliothèque&nbsp;<code>@babel/polyfill</code>&nbsp;par&nbsp;<code>core-js/stable</code>, ce qui nécessite l&rsquo;ajout de&nbsp;<code>regenerator-runtime</code>&nbsp;en tant que dépendance si la prise en charge d’IE11 est souhaitée sur votre site (<a href=\"https://core.trac.wordpress.org/ticket/52941\">#52941</a>)</li><li>Thèmes natifs&nbsp;: ajout de compositions de blocs sur les thèmes Twenty Ten à Twenty Fifteen (<a href=\"https://core.trac.wordpress.org/ticket/51107\">#51107</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51106\">#51106</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51105\">#51105</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51104\">#51104</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51103\">#51103</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/51102\">#51102</a>)</li><li>Commentaires&nbsp;: ajout de la fonction manquante&nbsp;<code>comments_pagination_base</code>&nbsp;dans la fonction&nbsp;<code>get_comment_reply_link()</code> (<a href=\"https://core.trac.wordpress.org/ticket/51189\">#51189</a>)</li><li>Commentaires&nbsp;: dans l’administration, ajout du lien vers l’article seul sur la liste des articles (<a href=\"https://core.trac.wordpress.org/ticket/52353\">#52353</a>)</li><li>Contenus embarqués&nbsp;: implémentation des contenus embarqués sur les blocs de widgets (<a href=\"https://core.trac.wordpress.org/ticket/51566\">#51566</a>)</li><li>Emojis&nbsp;: mise à jour de la bibliothèque <code>Twemoji</code>&nbsp;de 13.0.1 vers 13.1.0 (<a href=\"https://core.trac.wordpress.org/ticket/52852\">#52852</a>)</li><li>Bibliothèques externes&nbsp;: mise à jour de la bibliothèque&nbsp;<code>jQuery</code>&nbsp;de 3.5.1 vers 3.6.0 (<a href=\"https://core.trac.wordpress.org/ticket/52707\">#52707</a>)</li><li>Bibliothèques externes&nbsp;: mise à jour de la bibliothèque&nbsp;<code>Moment.js</code>&nbsp;de 2.27.0 vers 2.29.1 (<a href=\"https://core.trac.wordpress.org/ticket/52853\">#52853</a>)</li><li>Bibliothèques externes&nbsp;: mise à jour de la bibliothèque&nbsp;<code>Requests</code>&nbsp;de 1.7.0 vers 1.8.1 (<a href=\"https://core.trac.wordpress.org/ticket/53101\">#53101</a>&nbsp;and&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/53334\">#53334</a>)</li><li>Bibliothèques externes&nbsp;: mise à jour de la bibliothèque&nbsp;<code>Underscore</code>&nbsp;de 1.8.3 vers 1.13.1 (<a href=\"https://core.trac.wordpress.org/ticket/45785\">#45785</a>)</li><li>Médias&nbsp;: suppression de comportement de défilement infini de la bibliothèque de médias (<a href=\"https://core.trac.wordpress.org/ticket/50105\">#50105</a>)</li><li>Médias&nbsp;: ajout d&rsquo;un lien de copier-coller de la source d&rsquo;un média accessible après son téléversement (<a href=\"https://core.trac.wordpress.org/ticket/51754\">#51754</a>)</li><li>Menus&nbsp;: ajout de la possibilité de supprimer de multiples éléments de menus d&rsquo;un coup (<a href=\"https://core.trac.wordpress.org/ticket/21603\">#21603</a>)</li><li>Révisions&nbsp;: un nouveau filtre dynamique est disponible pour spécifier le nombre de révisions à conserver pour chaque type de publication,&nbsp;<code>wp_{$post-&gt;post_type}_revisions_to_keep</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51550\">#51550</a>)</li><li>Rôle/permissions&nbsp;:&nbsp;<code>user_can()</code>&nbsp;propose maintenant la permission&nbsp;<code>exist</code>&nbsp;afin d&rsquo;identifier les comptes anonymes (<a href=\"https://core.trac.wordpress.org/ticket/52076\">#52076</a>)</li><li>Mise à niveau/installation&nbsp;: suppression du parcours des fichiers&nbsp;<code>readme.txt</code> de la fonction <code>validate_plugin_requirements()</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/48520\">#48520</a>)</li><li>Mise à niveau/installation&nbsp;: suppression d&rsquo;une erreur fatale PHP pouvant survenir si l’extension Gutenberg était activée et lorsque le site était mis à jour vers WP&nbsp;5.8 (<a href=\"https://core.trac.wordpress.org/ticket/53432\">#53432</a>)</li><li>Widgets&nbsp;: ajout d&rsquo;une sécurité permettant de s&rsquo;assurer que le constructeur&nbsp;<code>WP_Widget</code>&nbsp;créé bien une valeur correcte pour <code>classname</code>&nbsp;sur les classes de widgets disposant d&rsquo;un espace de nom (<a href=\"https://core.trac.wordpress.org/ticket/44098\">#44098</a>)</li><li>…et bien plus encore&nbsp;!</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Pour rappel, la sortie de WordPress 5.8 est prévue le 20 juillet 2021. Vous pouvez d’ores et déjà la tester en version&nbsp;<em>Release Candidate</em>&nbsp;en installant l’extension officielle&nbsp;<em>WordPress Beta Tester</em>&nbsp;puis en allant dans ses réglages et en cochant la case&nbsp;Beta / Version de développement puis en mettant à jour votre installation de façon classique.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-plugin-directory wp-block-embed-plugin-directory\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"zv9jX9AbIL\"><a href=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"« WordPress Beta Tester » &#8212; Plugin Directory\" src=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/embed/#?secret=zv9jX9AbIL\" data-secret=\"zv9jX9AbIL\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p class=\"has-text-align-right\"><em>Merci à&nbsp;<a href=\'https://profiles.wordpress.org/jdy68/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jdy68</a> pour la relecture de ce guide.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://fr.wordpress.org/2021/07/04/guide-des-changements-techniques-a-venir-sur-wordpress-5-8/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"WordPress fête ses 18 ans !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://fr.wordpress.org/2021/05/27/wordpress-fete-ses-18-ans/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://fr.wordpress.org/2021/05/27/wordpress-fete-ses-18-ans/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 May 2021 09:26:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Évènement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:13:\"WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2117\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"Aujourd&#8217;hui est un grand jour pour la communauté WordPress, car il s’agit du dix-huitième anniversaire de notre CMS favori&#160;! Il y a à peine 3 ans, nous célébrions nos quinze ans en organisant des évènements un peu partout dans le monde entier, et voilà que nous arrivons aujourd&#8217;hui à l&#8217;age de la majorité 😎 WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"\n<p>Aujourd&rsquo;hui est un grand jour pour la communauté WordPress, car il s’agit du dix-huitième anniversaire de notre CMS favori&nbsp;!</p>\n\n\n\n<p>Il y a à peine 3 ans, nous célébrions nos quinze ans <a href=\"https://wp15.wordpress.net/\">en organisant des évènements</a> un peu partout dans le monde entier, et voilà que nous arrivons aujourd&rsquo;hui à l&rsquo;age de la majorité <img src=\"https://s.w.org/images/core/emoji/13.1.0/72x72/1f60e.png\" alt=\"😎\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>WordPress propulse désormais plus de 40 % du web. Une belle façon de fêter nos 18 ans !</p>\n\n\n\n<p>Nous vous proposons de redécouvrir le chemin parcouru en toutes ces années sur cette petite <a href=\"https://fr.wordpress.org/40-percent-of-web/\">frise chronologique</a>.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-francais wp-block-embed-francais\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"YPOlv6WP3r\"><a href=\"https://fr.wordpress.org/40-percent-of-web/\">WordPress and the Journey to 40% of the Web</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"« WordPress and the Journey to 40% of the Web » &#8212; Français\" src=\"https://fr.wordpress.org/40-percent-of-web/embed/#?secret=YPOlv6WP3r\" data-secret=\"YPOlv6WP3r\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://fr.wordpress.org/2021/05/27/wordpress-fete-ses-18-ans/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"Le 30 avril 2021, rejoignez-nous pour un nouveau WordPress Translation Day FR !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Apr 2021 10:33:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Évènement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=2028\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:372:\"Les WordCamps et Meetups ne sont toujours pas à l&#8217;ordre du jour… mais la communauté WordPress s&#8217;organise&#160;! Cette année, les équipes de traduction et de documentation de WP en français vous proposent de participer à un nouveau WordPress Translation Day FR en ligne le vendredi 30 avril 2021. Cet évènement se déroulera donc le vendredi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2462:\"\n<p>Les WordCamps et Meetups ne sont toujours pas à l&rsquo;ordre du jour… mais la communauté WordPress s&rsquo;organise&nbsp;!</p>\n\n\n\n<p>Cette année, les équipes de traduction et de documentation de WP en français vous proposent de participer à un nouveau WordPress Translation Day FR en ligne le vendredi 30 avril 2021.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1.png\"><img loading=\"lazy\" width=\"1024\" height=\"487\" src=\"https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-1024x487.png\" alt=\"\" class=\"wp-image-2038\" srcset=\"https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-1024x487.png 1024w, https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-300x143.png 300w, https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1-768x365.png 768w, https://fr.wordpress.org/files/2021/04/wp-translation-day-fr-avril-2021-1.png 1467w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>Cet évènement se déroulera donc le vendredi 30 avril de 14h à 18h, en visioconférence via Zoom.</p>\n\n\n\n<p>Durant cette après-midi 4 GTE (<em>General Translation Editors</em>) seront présents pour vous aider (<a href=\"https://profile.wordpress.org/jdy68\">Jenny Dupuy</a>, <a href=\"https://profile.wordpress.org/fxbenard\">FX Bénard</a>, <a href=\"https://profile.wordpress.org/wolforg\">Didier Wolforg</a> et <a href=\"https://profile.wordpress.org/audrasjb\">Jb Audras</a>) ainsi que les responsables de la documentation de WordPress en français (<a href=\"https://profile.wordpress.org/chaton666\">Marie Comet</a> et <a href=\"https://profile.wordpress.org/jdy68\">Jenny Dupuy</a>).</p>\n\n\n\n<p>L’objectif est d’accueillir, orienter et accompagner un maximum de nouvelles personnes pour les initier à la traduction du cœur de WordPress, mais aussi des thèmes, des extensions et de la documentation relative au fonctionnement de ce CMS.</p>\n\n\n\n<p>Tout au long de l’après-midi nous accueillerons les personnes désireuses de participer et si besoin, nous organiserons des mini-formations pour aider les personnes débutantes.</p>\n\n\n\n<p>Nous vous attendons nombreuses et nombreux ! Alors rendez-vous sur le Slack de la communauté WordPress-fr&nbsp;:&nbsp;<a href=\"https://wpfr.net/slack/\">https://wpfr.net/slack/</a>&nbsp;puis dans le canal&nbsp;<strong>#wptranslationday</strong></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:74:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 5.7 « Esperanza »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 Mar 2021 21:42:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1996\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:409:\"Souhaitez la bienvenue à «&#160;Esperanza&#160;», la première version de WordPress de l&#8217;année 2021. Elle a été nommée ainsi en l&#8217;honneur de la bassiste de jazz Esperanza Spalding. Son chemin de musicienne est varié et inspirant — apprenez-en plus sur elle&#160;et n’hésitez pas écouter l&#8217;un de ses albums&#160;! Avec cette nouvelle version, WordPress vous propose de [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://s.w.org/images/core/5.7/about-57-drag-drop-image.mp4\";s:6:\"length\";s:6:\"183815\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:45063:\"\n<div class=\"wp-block-cover\" style=\"background-color:#0a5b89\"><img loading=\"lazy\" width=\"1000\" height=\"517\" class=\"wp-block-cover__image-background wp-image-1997\" alt=\"\" src=\"https://fr.wordpress.org/files/2021/03/about-header-brushes.png\" style=\"object-position:52% 67%\" data-object-fit=\"cover\" data-object-position=\"52% 67%\" srcset=\"https://fr.wordpress.org/files/2021/03/about-header-brushes.png 1000w, https://fr.wordpress.org/files/2021/03/about-header-brushes-300x155.png 300w, https://fr.wordpress.org/files/2021/03/about-header-brushes-768x397.png 768w\" sizes=\"(max-width: 1000px) 100vw, 1000px\" /><div class=\"wp-block-cover__inner-container\">\n<p class=\"has-text-align-center has-large-font-size\"><strong>WordPress&nbsp;5.7</strong> <br><strong><em>«&nbsp;Esperanza&nbsp;»</em></strong></p>\n\n\n\n<p>Rafraîchissement des couleurs de l&rsquo;administration, simplifications des interactions dans l’éditeur, des outils placés là où vous en avez besoin, WordPress&nbsp;5.7 vous permet de vous concentrer sur le contenu que vous créez.</p>\n\n\n\n<div style=\"height:220px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\n\n\n<p>Souhaitez la bienvenue à «&nbsp;Esperanza&nbsp;», la première version de WordPress de l&rsquo;année 2021. Elle a été nommée ainsi en l&rsquo;honneur de la bassiste de jazz Esperanza Spalding. Son chemin de musicienne est varié et inspirant — <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://en.wikipedia.org/wiki/Esperanza_Spalding\">apprenez-en plus sur elle</a>&nbsp;et n’hésitez pas écouter l&rsquo;un de ses albums&nbsp;!</p>\n\n\n\n<p>Avec cette nouvelle version, WordPress vous propose de nouvelles couleurs et son éditeur vous aidera à accomplir des actions que vous ne pouviez pas envisager auparavant — du moins, pas sans écrire du code ou engager un pro. Les réglages que vous utilisez le plus souvent, comme celui de la taille des caractères, sont présents sur davantage de blocs. Et des modifications de mise en page telles que le passage des images en pleine hauteur deviennent enfin plus simples à réaliser.</p>\n\n\n\n<span id=\"more-1996\"></span>\n\n\n\n<h2>Maintenant, l’éditeur est plus simple à utiliser</h2>\n\n\n\n<p><strong>Plus d’endroits pour gérer la taille des polices&nbsp;:</strong>&nbsp;les contrôles de la taille des polices sont maintenant disponibles là où vous en avez besoin, notamment sur les blocs liste et code. Plus besoin de se rendre sur un autre écran pour effectuer cette simple modification&nbsp;!</p>\n\n\n\n<p><strong><strong>Blocs réutilisables&nbsp;:</strong>&nbsp;</strong>plusieurs améliorations rendent les blocs réutilisables plus stables et plus faciles à utiliser. Et maintenant, ils s’enregistrent automatiquement lorsque vous sauvegardez une publication.</p>\n\n\n\n<p><strong>Outil d’insertion de blocs en glisser-déposer&nbsp;:</strong>&nbsp;glissez les blocs et les compositions de blocs de l’outil d’insertion directement dans votre publication.</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://s.w.org/images/core/5.7/about-57-drag-drop-image.mp4\"></video></figure>\n\n\n\n<h2>Vous pouvez faire plus, sans écrire la moindre ligne de code</h2>\n\n\n\n<p><strong>Alignement en hauteur&nbsp;:</strong>&nbsp;avez-vous déjà voulu donner au bloc bannière une hauteur égale à la hauteur de la fenêtre&nbsp;? Maintenant, vous pouvez.</p>\n\n\n\n<p><strong>Bloc Boutons&nbsp;:</strong>&nbsp;vous pouvez désormais choisir entre une disposition verticale ou horizontale des boutons. Et vous pouvez régler la largeur des boutons à un pourcentage prédéfini.</p>\n\n\n\n<p><strong>Bloc d’icônes de réseaux sociaux&nbsp;:</strong>&nbsp;vous pouvez maintenant modifier la taille des icônes.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.7/about-57-cover.jpg\" alt=\"\" /></figure>\n\n\n\n<h2>Simplification de la palette de couleurs par défaut</h2>\n\n\n\n<p>Cette nouvelle palette de couleurs simplifiée réduit le nombre de couleurs qui se trouvaient auparavant dans le cœur de WordPress à sept couleurs principales et un jeu de 56 nuances conformes au rapport de contraste&nbsp;<a href=\"https://www.w3.org/WAI/WCAG2AAA-Conformance\">WCAG 2.0 AA recommandé</a>.</p>\n\n\n\n<p>En terme de perception, les variations de couleurs sont uniformes du clair au foncé dans chaque gamme de couleur ce qui signifie qu’elles vont du plus clair vers le plus foncé avec les mêmes paliers.</p>\n\n\n\n<p>La moitié de la gamme de couleurs a un rapport de contraste de 4,5 ou plus par rapport au noir, et l’autre moitié propose le même rapport de contraste par rapport au blanc.</p>\n\n\n\n<p>Vous découvrirez cette nouvelle palette de couleurs par défaut sur votre tableau de bord WordPress. Si vous créez des thèmes, des extensions ou tout autre composant, pensez à l’utiliser. Pour plus de détails,&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7\">consultez la note de développement concernant cette palette de couleurs (en anglais)</a>.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/03/frise-color-wp57.png\"><img loading=\"lazy\" width=\"1024\" height=\"20\" src=\"https://fr.wordpress.org/files/2021/03/frise-color-wp57-1024x20.png\" alt=\"\" class=\"wp-image-2008\" srcset=\"https://fr.wordpress.org/files/2021/03/frise-color-wp57-1024x20.png 1024w, https://fr.wordpress.org/files/2021/03/frise-color-wp57-300x6.png 300w, https://fr.wordpress.org/files/2021/03/frise-color-wp57-768x15.png 768w, https://fr.wordpress.org/files/2021/03/frise-color-wp57-1536x30.png 1536w, https://fr.wordpress.org/files/2021/03/frise-color-wp57.png 1808w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<h3>De HTTP à HTTPS en un clic</h3>\n\n\n\n<p>Le passage d’un site de HTTP à HTTPS se fait maintenant en un clic. WordPress mettra automatiquement à jour les URL en base de données lorsque vous passerez au HTTPS. Ne perdez plus votre temps à chercher les URL à modifier&nbsp;!</p>\n\n\n\n<h3>Nouvelle API Robots</h3>\n\n\n\n<p>La nouvelle API Robots vous permet d’inclure des directives de filtrage dans la balise méta «&nbsp;robots&nbsp;», et l’API intègre par défaut la directive&nbsp;<code>max-image-preview: large</code>. Cela signifie que les moteurs de recherche peuvent maintenant afficher de plus grandes images de prévisualisation (à moins que le site ne soit pas public), ce qui peut améliorer votre trafic.</p>\n\n\n\n<h3>Poursuite du nettoyage nécessaire après la mise à jour vers jQuery 3.5.1</h3>\n\n\n\n<p>Pendant des années, jQuery a aidé à animer les choses à l’écran de façon très efficace — mais les choses évoluent sans cesse, et jQuery n’est pas en reste.</p>\n\n\n\n<p>Avec WP&nbsp;5.7, jQuery devient moins intrusif et retourne moins de messages dans la console de votre navigateur.</p>\n\n\n\n<h3>Chargez vos iframes en différé</h3>\n\n\n\n<p>Dorénavant, les iframes pourront se charger en différé. Par défaut, WordPress ajoutera un attribut&nbsp;<code>loading=\"lazy\"</code>&nbsp;aux balises iframe lorsque leur largeur et leur hauteur seront spécifiées.</p>\n\n\n\n<h3>Consultez le guide technique de la version pour en savoir plus&nbsp;!</h3>\n\n\n\n<p>Consultez le guide des changements techniques de WordPress&nbsp;5.7. Il met en avant les notes de développement pour chaque modification que vous souhaiteriez approfondir&nbsp;:&nbsp;<a href=\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/\">guide des changements techniques de WordPress 5.7</a></p>\n\n\n\n<h2>L&rsquo;équipe de direction de WordPress 5.7</h2>\n\n\n\n<p>La version 5.7 de WordPress a été dirigée par une équipe réduite mais expérimentée&nbsp;:</p>\n\n\n\n<ul><li><strong>Responsable de la version&nbsp;:</strong>&nbsp;Matt Mullenweg (<a href=\'https://profiles.wordpress.org/matt/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>matt</a>)</li><li><strong>Coordinatrice de la version&nbsp;:</strong>&nbsp;Ebonie Butler (<a href=\'https://profiles.wordpress.org/metalandcoffee/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>metalandcoffee</a>)</li><li><strong>Responsable des tickets&nbsp;:</strong>&nbsp;Tonya Mork (<a href=\'https://profiles.wordpress.org/hellofromtonya/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hellofromtonya</a>)</li><li><strong style=\", sans-serif\">Responsable technique côté cœur&nbsp;:</strong><span style=\", sans-serif\">&nbsp;Sergey Biryukov (<a href=\'https://profiles.wordpress.org/sergeybiryukov/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sergeybiryukov</a>)</span></li><li><strong>Responsable technique côté éditeur&nbsp;:</strong>&nbsp;Robert Anderson (<a href=\'https://profiles.wordpress.org/noisysocks/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>noisysocks</a>)</li><li><strong>Responsable du design&nbsp;:</strong>&nbsp;Tim Hengeveld (<a href=\'https://profiles.wordpress.org/hedgefield/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hedgefield</a>)</li><li><strong>Responsable accessibilité&nbsp;:</strong>&nbsp;Sarah Ricker (@sarahricke<strong>r</strong>)</li><li><strong>Responsable de la documentation&nbsp;:&nbsp;</strong>Jb Audras (<a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a>)</li><li><strong>Responsable des tests&nbsp;:</strong>&nbsp;Monika Rao (<a href=\'https://profiles.wordpress.org/monikarao/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>monikarao</a>)</li></ul>\n\n\n\n<p>Cette version est le résultat du dur labeur de 481 contributrices et contributeurs. Cela représente environ 250 tickets sur Trac et plus de 950 <em>pull requests</em> sur GitHub.</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/7studio/\">7studio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aaribaud/\">aaribaud</a>,&nbsp;<a href=\"https://profiles.wordpress.org/technosailor/\">Aaron Brazell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aaronrobertshaw/\">aaronrobertshaw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/abagtcs/\">abagtcs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/acerempel/\">acerempel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/activecoder/\">activecoder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ad7six/\">ad7six</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bosconiandynamics/\">Adam Bosco</a>,&nbsp;<a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>,&nbsp;<a href=\"https://profiles.wordpress.org/adamboro/\">adamboro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/addiestavlo/\">Addison Stavlo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrahmadawais/\">Ahmad Awais</a>,&nbsp;<a href=\"https://profiles.wordpress.org/engahmeds3ed/\">Ahmed Saeed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juhé Lluveras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/albertomake/\">albertomake</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexwoollam/\">Alex Woollam</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alex27/\">alex27</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chemiker/\">Alexander Lueken</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexstine/\">alexstine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>,&nbsp;<a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>,&nbsp;<a href=\"https://profiles.wordpress.org/almendron/\">almendron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/amandariu/\">Amanda Riu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ambienthack/\">ambienthack</a>,&nbsp;<a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>,&nbsp;<a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nosolosw/\">André Maneiro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antonlukin/\">Anton Lukin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>,&nbsp;<a href=\"https://profiles.wordpress.org/anyssa/\">Anyssa Ferreira</a>,&nbsp;<a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/artpi/\">Artur Piszek</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maigret/\">Aurélien Denis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bartosz777/\">bartosz777</a>,&nbsp;<a href=\"https://profiles.wordpress.org/basscan/\">basscan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bduclos/\">bduclos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/becdetat/\">becdetat</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pixolin/\">Bego Mario Garde</a>,&nbsp;<a href=\"https://profiles.wordpress.org/scruffian/\">Ben Dwyer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bernhard%20reiter/\">Bernhard Reiter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bhanusinghkre/\">bhanusinghkre</a>,&nbsp;<a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bonniebeeman/\">bonniebeeman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibdz/\">Boy Witthaya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>,&nbsp;<a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>,&nbsp;<a href=\"https://profiles.wordpress.org/brijeshb42/\">brijeshb42</a>,&nbsp;<a href=\"https://profiles.wordpress.org/burnuser/\">burnuser</a>,&nbsp;<a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carike/\">Carike</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carloscastilloadhoc/\">carloscastilloadhoc</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carlosgprim/\">carlosgprim</a>,&nbsp;<a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>,&nbsp;<a href=\"https://profiles.wordpress.org/celendesign/\">celendesign</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cenay/\">Cenay Nailor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ceyhun0/\">ceyhun0</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chexwarrior/\">chexwarrior</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/amethystanswers/\">Christina Workman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cfinke/\">Christopher Finke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clayray/\">clayray</a>,&nbsp;<a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/codeamp/\">Code Amp</a>,&nbsp;<a href=\"https://profiles.wordpress.org/collizo4sky/\">Collins Agbonghama</a>,&nbsp;<a href=\"https://profiles.wordpress.org/copons/\">Copons</a>,&nbsp;<a href=\"https://profiles.wordpress.org/coreyw/\">Corey</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cristinasoponar/\">cristinasoponar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dam6pl/\">Damian Nowak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/danfarrow/\">Dan Farrow</a>,&nbsp;<a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dvankooten/\">Danny van Kooten</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dariak/\">Daria</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dpcalhoun/\">David Calhoun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davecpage/\">David Page</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidbinda/\">david.binda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dbtedg/\">dbtedg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dd32/\">dd32</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>,&nbsp;<a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/denishua/\">denishua</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>,&nbsp;<a href=\"https://profiles.wordpress.org/donmhico/\">donmhico</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dratwas/\">dratwas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidszabo/\">Dávid Szabó</a>,&nbsp;<a href=\"https://profiles.wordpress.org/e_baker/\">e_baker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iseulde/\">Ella van Durpe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van&nbsp;Durpe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/erichmond/\">Elliott Richmond</a>,&nbsp;<a href=\"https://profiles.wordpress.org/enej/\">Enej Bajgorić</a>,&nbsp;<a href=\"https://profiles.wordpress.org/enricocarraro/\">Enrico Carraro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/epicfaace/\">epicfaace</a>,&nbsp;<a href=\"https://profiles.wordpress.org/epiqueras/\">epiqueras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericlewis/\">Eric Andrew Lewis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ebinnion/\">Eric Binnion</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericmann/\">Eric Mann</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kebbet/\">Erik Betshammar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/folletto/\">Erin &lsquo;Folletto&rsquo; Casali</a>,&nbsp;<a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/etoledom/\">etoledom</a>,&nbsp;<a href=\"https://profiles.wordpress.org/eventualo/\">eventualo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian Kägy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>,&nbsp;<a href=\"https://profiles.wordpress.org/florianziegler/\">Florian Ziegler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/floriswt/\">floriswt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>,&nbsp;<a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ecgan/\">Gan Eng Chin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geekpress/\">GeekPress</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geekzebre/\">geekzebre</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geoffguillain/\">Geoff Guillain</a>,&nbsp;<a href=\"https://profiles.wordpress.org/georgestephanis/\">George Stephanis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gkibria69/\">gKibria</a>,&nbsp;<a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gmariani405/\">gmariani405</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alinod/\">Gord</a>,&nbsp;<a href=\"https://profiles.wordpress.org/greatsaltlake/\">greatsaltlake</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/grzim/\">grzim</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gumacahin/\">gumacahin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gunnard/\">gunnard</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bordoni/\">Gustavo Bordoni</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hansjovisyoast/\">Hans-Christiaan Braun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hardeepasrani/\">Hardeep Asrani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hauvong/\">hauvong</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/helmutwalker/\">helmutwalker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tejwanihemant/\">Hemant Tejwani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nonverbla/\">hirasso</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hmabpera/\">hmabpera</a>,&nbsp;<a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hsingyuc7/\">hsingyuc7</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibiza69/\">ibiza69</a>,&nbsp;<a href=\"https://profiles.wordpress.org/igorradovanov/\">Igor Radovanov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ingereck/\">ingereck</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iprg/\">iprg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ismailelkorchi/\">Ismail El Korchi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iviweb/\">iviweb</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jadeddragoon/\">jadeddragoon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jakeparis/\">jakeparis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jakubtyrcha/\">jakub.tyrcha</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jamesgol/\">James Golovich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/macmanx/\">James Huff</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jamesros161/\">James Rosado</a>,&nbsp;<a href=\"https://profiles.wordpress.org/janthiel/\">Jan Thiel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jason_the_adams/\">Jason Adams</a>,&nbsp;<a href=\"https://profiles.wordpress.org/madtownlems/\">Jason LeMahieu (MadtownLems)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/viablethought/\">Jason Ryan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jaymanpandya/\">Jayman Pandya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeffr0/\">Jeff Chandler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jmdodd/\">Jennifer M. Dodd</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jdy68/\">Jenny Dupuy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremyyip/\">Jeremy Yip</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jessplease/\">Jessica Duarte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joanrho/\">joanrho</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joelclimbsthings/\">joelclimbsthings</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/goaroundagain/\">Johannes Kinast</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>,&nbsp;<a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jonathanstegall/\">Jonathan Stegall</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jordesign/\">jordesign</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jomisica/\">José Miguel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jose64/\">Jose Luis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/accessiblejoe/\">Joseph Karr O&rsquo;Connor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joshuatf/\">joshuatf</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tai/\">JOTAKI, Taisuke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jsmoriss/\">JS Morisset</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/justinsainton/\">Justin Sainton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jtsternberg/\">Justin Sternberg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kafleg/\">kafleg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kevin940726/\">Kai Hao</a>,&nbsp;<a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>,&nbsp;<a href=\"https://profiles.wordpress.org/karamcnair/\">kara.mcnair</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vyskoczilova/\">Karolina Vyskocilova</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tmfespresso/\">kimdcottrell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kirilzh/\">Kiril Zhelyazkov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kburgoine/\">Kirsty Burgoine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>,&nbsp;<a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hwk-fr/\">Konrad Chmielewski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kurtpayne/\">Kurt Payne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kbjohnson90/\">Kyle B. Johnson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/notlaura/\">Lara Schenck</a>,&nbsp;<a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>,&nbsp;<a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>,&nbsp;<a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/levdbas/\">Levdbas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oellin/\">Lihä</a>,&nbsp;<a href=\"https://profiles.wordpress.org/litemotiv/\">litemotiv</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lovor/\">lovor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lucasbustamante/\">lucasbustamante</a>,&nbsp;<a href=\"https://profiles.wordpress.org/_luigi/\">Luigi Cavalieri</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lpawlik/\">Lukas Pawlik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lukecarbis/\">Luke Carbis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/happiryu/\">Luke Walczak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/magnuswebdesign/\">magnuswebdesign</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mahfuz01/\">Mahafuz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/akramipro/\">Mahdi Akrami</a>,&nbsp;<a href=\"https://profiles.wordpress.org/malinajirka/\">malinajirka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mallorydxw/\">mallorydxw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tomdxw/\">mallorydxw-old</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manzurahammed/\">Manzur Ahammed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcelo2605/\">marcelo2605</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/netweblogic/\">Marcus</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chaton666/\">Marie Comet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marijnkoopman/\">Marijn Koopman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tyxla/\">Marin Atanasov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mdwolinski/\">Mark D Wolinski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/markhowellsmead/\">Mark Howells-Mead</a>,&nbsp;<a href=\"https://profiles.wordpress.org/markscottrobson/\">Mark Robson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vindl/\">Marko Andrijasevic</a>,&nbsp;<a href=\"https://profiles.wordpress.org/flootr/\">Markus</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mberard/\">Mathieu Berard Smartfire</a>,&nbsp;<a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mattchowning/\">Matt Chowning</a>,&nbsp;<a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maxpertici/\">Maxime Pertici</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mayankmajeji/\">Mayank Majeji</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mdrockwell/\">mdrockwell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/megphillips91/\">Meg Phillips</a>,&nbsp;<a href=\"https://profiles.wordpress.org/megabyterose/\">megabyterose</a>,&nbsp;<a href=\"https://profiles.wordpress.org/meher/\">Meher Bala</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mehrshaddarzi/\">Mehrshad Darzi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mehulkaklotar/\">Mehul Kaklotar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mendezcode/\">mendezcode</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mgol/\">mgol</a>,&nbsp;<a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mbabker/\">Michael Babker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>,&nbsp;<a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>,&nbsp;<a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a>,&nbsp;<a href=\"https://profiles.wordpress.org/0mirka00/\">mirka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/daddou/\">Mohamed El Amine DADDOU</a>,&nbsp;<a href=\"https://profiles.wordpress.org/monika/\">Monika</a>,&nbsp;<a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>,&nbsp;<a href=\"https://profiles.wordpress.org/morenaf/\">morenaf</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrjoeldean/\">mrjoeldean</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mzorz/\">mzorz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/naveen17797/\">Naveen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/krstarica/\">net</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nre/\">nicky</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nico23/\">Nico</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nico_martin/\">Nico Martin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicolalaserra/\">Nicola Laserra</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicolaskulka/\">NicolasKulka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/noahtallen/\">Noah Allen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nwjames/\">nwjames</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ovidiul/\">ovidiul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/oxyc/\">oxyc</a>,&nbsp;<a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>,&nbsp;<a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pabline/\">Paul Bunkham</a>,&nbsp;<a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pawki07/\">pawki07</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbking/\">pbking</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendonça</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gungeekatx/\">Pete Nelson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/psmits1567/\">Peter Smits</a>,&nbsp;<a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pinkalbeladiya/\">Pinkal Devani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boniu91/\">Piotrek Boniu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/freewebmentor/\">Prem Tiwari</a>,&nbsp;<a href=\"https://profiles.wordpress.org/presstoke/\">presstoke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/prettyboymp/\">prettyboymp</a>,&nbsp;<a href=\"https://profiles.wordpress.org/princeahmed/\">Prince</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pypwalters/\">pypwalters</a>,&nbsp;<a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a>,&nbsp;<a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rafaelgalani/\">Rafael Galani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rafhun/\">rafhun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rahmohn/\">Ramon Ahnert</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ratneshk/\">ratneshk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jontyravi/\">Ravi Vaghela</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ravipatel/\">ravipatel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>,&nbsp;<a href=\"https://profiles.wordpress.org/reardestani/\">Reza Ardestani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iamfriendly/\">Richard Tape</a>,&nbsp;<a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rodrigosprimo/\">Rodrigo Primo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/roger995/\">roger995</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rolfsiebers/\">Rolf Siebers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/romain-d/\">Romain</a>,&nbsp;<a href=\"https://profiles.wordpress.org/burtrw/\">Ronnie Burt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/magicroundabout/\">Ross Wintle</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastienserre/\">Sébastien SERRE</a>,&nbsp;<a href=\"https://profiles.wordpress.org/soean/\">Sören Wrede</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stodorovic/\">Saša</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sanketchodavadiya/\">Sanket Chodavadiya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sarahricker/\">Sarah Ricker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sarayourfriend/\">sarayourfriend</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebsz/\">SeBsZ</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shahinsid07/\">Shahin Sid</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shaunandrews/\">shaunandrews</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>,&nbsp;<a href=\"https://profiles.wordpress.org/slaffik/\">Slava Abakumov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>,&nbsp;<a href=\"https://profiles.wordpress.org/souri_wpaustria/\">souri_wpaustria</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>,&nbsp;<a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/quadthemes/\">Sunny</a>,&nbsp;<a href=\"https://profiles.wordpress.org/t-p/\">t-p</a>,&nbsp;<a href=\"https://profiles.wordpress.org/inc2734/\">Takashi Kitajima</a>,&nbsp;<a href=\"https://profiles.wordpress.org/patopaiar/\">Tami</a>,&nbsp;<a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tanvirul/\">Tanvirul Haque</a>,&nbsp;<a href=\"https://profiles.wordpress.org/voboghure/\">Tapan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/teamdnk/\">TeamDNK</a>,&nbsp;<a href=\"https://profiles.wordpress.org/utz119/\">TeBenachi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tweetythierry/\">Thierry Muller</a>,&nbsp;<a href=\"https://profiles.wordpress.org/thorlentz/\">thorlentz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tnolte/\">Tim Nolte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sippis/\">Timi Wahalahti</a>,&nbsp;<a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tinodidriksen/\">tinodidriksen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemerö</a>,&nbsp;<a href=\"https://profiles.wordpress.org/arcangelini/\">Tony A</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tonysandwich/\">tonysandwich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>,&nbsp;<a href=\"https://profiles.wordpress.org/transl8or/\">transl8or</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tylertork/\">Tyler Tork</a>,&nbsp;<a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/umangvaghela123/\">Umang Vaghela</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vandestouwe/\">vandestouwe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vcanales/\">vcanales</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vipulc2/\">Vipul Chandel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T.</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webcommsat/\">webcommsat AbhaNonStopNewsUK</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design | Oliver Juhas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wendyjchen/\">Wendy Chen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wesselvandenberg/\">wesselvandenberg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wallstead/\">Willis Allstead</a>,&nbsp;<a href=\"https://profiles.wordpress.org/worldedu/\">worldedu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wponlinesupport/\">WP OnlineSupport</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tikifez/\">Xristopher Anderton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yannkozon/\">Yann Kozon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yscik/\">yscik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yuliyan/\">yuliyan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a> et&nbsp;<a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a>.</p>\n\n\n\n<p><em>Merci <a href=\"https://profiles.wordpress.org/chaton666\">Marie Comet</a> pour la relecture de ce communiqué.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://fr.wordpress.org/2021/03/09/wordpress-5-7-esperanza/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:74:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Les changements techniques à venir sur WordPress 5.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 24 Feb 2021 10:04:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1939\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"&#160; La sortie de WordPress 5.7 est prévue pour le 9 mars 2021. Avec maintenant plus de 40&#160;% de parts de marché, le logiciel libre WordPress poursuit son ascension impressionnante au sein de l&#8217;écosystème des CMS. Découvrez dans cet article les nouveautés qui vous attendent pour cette nouvelle version de l’outil de création de sites [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:78:\"https://fr.wordpress.org/files/2021/02/send-password-reset-profile-setting.mp4\";s:6:\"length\";s:6:\"222292\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:31223:\"\n<div class=\"wp-block-group has-background\" style=\"background-color:#0d5a89\"><div class=\"wp-block-group__inner-container\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner.png\"><img loading=\"lazy\" width=\"1024\" height=\"458\" src=\"https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-1024x458.png\" alt=\"\" class=\"wp-image-1940\" srcset=\"https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-1024x458.png 1024w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-300x134.png 300w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-768x344.png 768w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner-1536x688.png 1536w, https://fr.wordpress.org/files/2021/02/wp-5-7-RC1-banner.png 1568w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<div class=\"wp-block-group has-white-color has-text-color\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:2%\">\n<p>&nbsp;</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:96%\">\n<p class=\"has-normal-font-size\">La sortie de WordPress 5.7 est prévue pour le 9 mars 2021.</p>\n\n\n\n<p class=\"has-small-font-size\">Avec maintenant plus de 40&nbsp;% de parts de marché, le logiciel libre WordPress poursuit son ascension impressionnante au sein de l&rsquo;écosystème des CMS.</p>\n\n\n\n<p class=\"has-small-font-size\">Découvrez dans cet article les nouveautés qui vous attendent pour cette nouvelle version de l’outil de création de sites web le plus populaire au monde&nbsp;!</p>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:2px\">&nbsp;</p>\n</div>\n</div>\n</div></div>\n</div></div>\n\n\n\n<span id=\"more-1939\"></span>\n\n\n\n<p>Dans ces temps difficiles, WordPress 5.7 vous propose de nouvelles fonctionnalités et des améliorations pour vous aider à démarrer cette année 2021 sur une note positive ! Pour cette nouvelle version de WordPress, une <a href=\"https://make.wordpress.org/core/2020/12/21/wordpress-5-7-planning-roundup/\">petite équipe – mais expérimentée –</a> a été mise sur pied afin de diriger le développement de cette nouvelle version embarquant un paquet de nouvelles fonctionnalités techniques et des corrections attendues par les développeurs et développeuses.</p>\n\n\n\n<p>En tant qu’utilisatrice ou utilisateur de WordPress, vous retrouverez un éditeur de blocs encore plus efficace, l&rsquo;arrivée du chargement différé des iframes, un outil de migration vous permettant de passer de HTTP à HTTPS en un clic, de nouvelles couleurs standardisées pour l&rsquo;administration de votre site WordPress, une nouvelle API destinée à la gestion des instructions pour les robots d&rsquo;indexation.</p>\n\n\n\n<p>En tant que développeuse ou développeur, vous retrouverez <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=milestone&amp;col=owner&amp;col=status&amp;col=priority&amp;order=priority\">66 améliorations et nouvelles fonctionnalités</a>,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.7&amp;max=500&amp;col=id&amp;col=summary&amp;col=type&amp;col=milestone&amp;col=owner&amp;col=status&amp;col=priority&amp;order=priority\">127 corrections de bugs</a>, et bien plus encore&nbsp;! Les personnes qui s&rsquo;intéressent à la technique seront sûrement attentives <a href=\"https://core.trac.wordpress.org/ticket/51812\">à la tâche de nettoyage des erreurs JavaScript qui a été conduite après la mise à niveau vers jQuery 3.5.1 en tant qu’étape 3 de notre processus de mise à niveau de la bibliothèque jQuery</a>.</p>\n\n\n\n<p>Dans ce guide technique, vous trouverez tous les changements qui pourront vous concerner en tant que personne utilisant WordPress au quotidien. Les liens proposés mènent tous à des ressources en anglais.</p>\n\n\n\n<h2>Administration&nbsp;: une nouvelle palette de couleurs standardisée</h2>\n\n\n\n<p>Il s&rsquo;agit de la première partie d&rsquo;un projet plus large visant à nettoyer les feuilles de styles de l&rsquo;administration de WP. Avec WP 5.7, toutes les couleurs déclarées en CSS sont regroupées au sein de l&rsquo;une des 12 variations de bleu, vert, rouge et jaune, ou dans l&rsquo;une des 13 variations de gris, noir et le blanc. Cela peut paraître encore présenter trop de variations, mais il faut savoir qu&rsquo;il y en avait bien plus auparavant, et surtout qu&rsquo;elles n&rsquo;obéissaient pas du tout à des variations strictes et prévisibles.</p>\n\n\n\n<p>La nouvelle palette de couleurs regroupe donc toutes les couleurs du code source de WordPress dans une palette de 56 couleurs qui permettent de satisfaire les ratios de contrastes demandés par les <a href=\"https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html\">Règles d&rsquo;accessibilités des contenus web (WCAG)</a> au niveau AA entre ces couleurs, et le blanc ou le noir.</p>\n\n\n\n<p>La standardisation de la palette de couleurs de l&rsquo;administration pourra aider les personnes contribuant à WordPress à prendre des décisions de conception accessibles. Les développeuses et développeurs de thèmes sont encouragé·e·s à utiliser cette nouvelle palette de couleurs afin de proposer une meilleur cohérence entre leur produit et le cœur de WordPress.</p>\n\n\n\n<p>Dans la note de développement liée ci-dessous, vous trouverez toutes les indications techniques pour vous permettre de rendre le code de vos développements conforme à la palette de couleurs de l&rsquo;administration de WP.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"1C0xgLs7Cz\"><a href=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7/\">Standardization of WP-Admin colors in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Standardization of WP-Admin colors in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/standardization-of-wp-admin-colors-in-wordpress-5-7/embed/#?secret=1C0xgLs7Cz\" data-secret=\"1C0xgLs7Cz\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>L&rsquo;éditeur de blocs – Gutenberg</h2>\n\n\n\n<p>L&rsquo;éditeur de blocs Gutenberg poursuit ses itérations rapides.&nbsp;La version 9.9 de Gutenberg est pleinement intégrée à  WordPress 5.7, ce qui représente 7 nouvelles versions supplémentaires de Gutenberg (les versions&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/04/whats-new-in-gutenberg-4-november/\">9.3</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/19/whats-new-in-gutenberg-18-november-2/\">9.4</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/12/02/whats-new-in-gutenberg-2-december/\">9.5</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2020/12/23/whats-new-in-gutenberg-23-december/\">9.6</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2021/01/07/whats-new-in-gutenberg-6-january/\">9.7</a>,&nbsp;<a href=\"https://make.wordpress.org/core/2021/01/20/whats-new-in-gutenberg-9-8-20-january/\">9.8</a> et&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/05/whats-new-in-gutenberg-9-9-5-february/\">9.9</a>), toutes comprises dans cette nouvelle version de WP. Des correctifs de bogues et des améliorations de performances provenant des versions&nbsp;<a href=\"https://make.wordpress.org/core/2021/02/17/whats-new-in-gutenberg-10-0-february/\">10.0</a>&nbsp;et 10.1 font aussi partie de WP 5.7.</p>\n\n\n\n<p>Il y a un paquet de nouvelles fonctionnalités liées à Gutenberg dans WP 5.7. Citons par exemple le glisser-déposer depuis l&rsquo;outil d&rsquo;insertion de blocs, l&rsquo;alignement en pleine hauteur pour certains blocs, l&rsquo;affichage des variations de styles dans l&rsquo;inspecteur, des améliorations d&rsquo;utilisabilité et de stabilité sur les blocs réutilisables, les alignements verticaux dans les blocs boutons, la possibilité de modifier la taille des icônes dans le bloc icônes de réseaux sociaux, ou encore la possibilité de modifier la taille de police dans les blocs de liste ou d&rsquo;affichage de bouts de code.</p>\n\n\n\n<p>Pour les mises à jour techniques, voici quelques notes de développement (en anglais)&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"J3inin7OuR\"><a href=\"https://make.wordpress.org/core/2021/02/18/wordpress-5-7-a-new-dynamic-hook-to-filter-the-content-of-a-single-block/\">WordPress 5.7: A new dynamic hook to filter the content of a single block</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;WordPress 5.7: A new dynamic hook to filter the content of a single block&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/18/wordpress-5-7-a-new-dynamic-hook-to-filter-the-content-of-a-single-block/embed/#?secret=J3inin7OuR\" data-secret=\"J3inin7OuR\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"J94wgc0nlt\"><a href=\"https://make.wordpress.org/core/2021/02/22/changes-in-wordpress-data-api/\">Changes in @wordpress/data API</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Changes in @wordpress/data API&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/changes-in-wordpress-data-api/embed/#?secret=J94wgc0nlt\" data-secret=\"J94wgc0nlt\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"cRxoDVWHgL\"><a href=\"https://make.wordpress.org/core/2021/02/22/new-block-variation-apis-in-5-7/\">New block variation APIs in 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;New block variation APIs in 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/new-block-variation-apis-in-5-7/embed/#?secret=cRxoDVWHgL\" data-secret=\"cRxoDVWHgL\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"vc2JDHxqEZ\"><a href=\"https://make.wordpress.org/core/2021/02/23/inner-blocks-api-changes/\">Inner Blocks API Changes</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Inner Blocks API Changes&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/inner-blocks-api-changes/embed/#?secret=vc2JDHxqEZ\" data-secret=\"vc2JDHxqEZ\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Y8C8DE5CAV\"><a href=\"https://make.wordpress.org/core/2021/02/23/new-i18n-filters-createi18n-changes/\">New i18n filters &amp; createI18n() changes</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;New i18n filters &amp; createI18n() changes&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/new-i18n-filters-createi18n-changes/embed/#?secret=Y8C8DE5CAV\" data-secret=\"Y8C8DE5CAV\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Outils d&rsquo;importation et d&rsquo;exportation</h2>\n\n\n\n<p>Plusieurs changements importants impactent les outils d&rsquo;importation et d&rsquo;exportation&nbsp;: un crochet a été créé pour filtrer le titre des publications avant exportation&nbsp;; la date de dernière modification a été ajoutée dans les données d&rsquo;exportation&nbsp;; des améliorations significatives de performances ont été apportées pour une importation plus rapide des menus de navigation. Ces éléments sont détaillés dans la note de développement dédiée&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"VyczrpHE2F\"><a href=\"https://make.wordpress.org/core/2021/02/23/enhancements-to-the-import-export-feature-in-wordpress-5-7/\">Enhancements to the Import/Export feature in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Enhancements to the Import/Export feature in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/enhancements-to-the-import-export-feature-in-wordpress-5-7/embed/#?secret=VyczrpHE2F\" data-secret=\"VyczrpHE2F\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Gestion des médias</h2>\n\n\n\n<p>La principale amélioration concernant les médias est la mise en place du chargement différé par défaut des iframes. Cela fera gagner à votre sites quelques précieux dixièmes de secondes de temps de chargement. D&rsquo;autres changements relatifs à la médiathèque sont listés plus bas dans les améliorations diverses, mais cette nouvelle fonctionnalité méritait sa rubrique dédiée&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"24vK7JdlIB\"><a href=\"https://make.wordpress.org/core/2021/02/19/lazy-loading-iframes-in-5-7/\">Lazy-loading iframes in 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Lazy-loading iframes in 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/19/lazy-loading-iframes-in-5-7/embed/#?secret=24vK7JdlIB\" data-secret=\"24vK7JdlIB\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Gestion des comptes des utilisatrices et utilisateurs de votre site</h2>\n\n\n\n<p>À partir de WordPress 5.7, il est possible pour les administratrices et administrateurs de sites WordPress de générer facilement l&rsquo;envoi de l&rsquo;e-mail de réinitialisation de mot de passe à n&rsquo;importe quel compte déjà inscrit sur le site. Pour cela, il suffit de se rendre sur l&rsquo;écran de modification du compte et de cliquer sur le bouton d&rsquo;envoi de l&rsquo;e-mail contenant le lien de réinitialisation, comme décrit dans cette petite vidéo (montrant l&rsquo;interface en anglais)&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://fr.wordpress.org/files/2021/02/send-password-reset-profile-setting.mp4\"></video></figure>\n\n\n\n<p>Il est aussi possible d&rsquo;utiliser les liens d&rsquo;accès rapide présents dans la liste des comptes du site sur chaque ligne correspondant à un utilisateur ou une utilisatrice, ou encore d&rsquo;envoyer ce lien de réinitialisation à un grand nombre de comptes en utilisant l&rsquo;outil de traitement par lots. Consultez l&rsquo;article d&rsquo;origine en anglais pour plus de détails&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"V84RfcthGK\"><a href=\"https://make.wordpress.org/core/2021/02/22/send-reset-password-links-in-wordpress-5-7/\">Send reset password links in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Send reset password links in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/send-reset-password-links-in-wordpress-5-7/embed/#?secret=V84RfcthGK\" data-secret=\"V84RfcthGK\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>API REST</h2>\n\n\n\n<p>Des modifications ont été apportées à l’API REST, notamment concernant des changements de points de terminaison, des changements de paramètres disponibles ou acceptés, ou encore des changements concernant la gestion des mots de passe d&rsquo;application.</p>\n\n\n\n<p>Ces changements sont récapitulés sur cet article en anglais&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"LkKIGqGLiv\"><a href=\"https://make.wordpress.org/core/2021/02/23/rest-api-changes-in-wordpress-5-7/\">REST API Changes in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;REST API Changes in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/rest-api-changes-in-wordpress-5-7/embed/#?secret=LkKIGqGLiv\" data-secret=\"LkKIGqGLiv\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>API Robots</h2>\n\n\n\n<p>Une nouvelle API fait son arrivée dans WordPress&nbsp;! L’API Robots permet de gérer de façon précise et contrôlée l&rsquo;affichage des balises méta <code>robots</code> sur les pages de votre site. Pour tout savoir sur cette amélioration destinées aux personnes souhaitant optimiser leur site aux petits oignons pour le référencement, consultez cette note de développement&nbsp;: </p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"Cjzdm2rSaO\"><a href=\"https://make.wordpress.org/core/2021/02/19/robots-api-and-max-image-preview-directive-in-wordpress-5-7/\">Robots API and max-image-preview directive in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Robots API and max-image-preview directive in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/19/robots-api-and-max-image-preview-directive-in-wordpress-5-7/embed/#?secret=Cjzdm2rSaO\" data-secret=\"Cjzdm2rSaO\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Sécurité</h2>\n\n\n\n<p>Pas de correctif de faille de sécurité dans cette version car rappelons-le&nbsp;: ce n&rsquo;est pas le but des versions majeures&nbsp;! Mais en revanche, plusieurs améliorations intéressantes&nbsp;: tout d&rsquo;abord, l&rsquo;outil de contrôle de la santé de votre site (Outils &gt; Santé du site) sera maintenant à même de vérifier si votre site dispose d&rsquo;un certificat SSL (permettant le passage de votre site en HTTPS) et le cas échéant de vous proposer de migrer votre site de HTTP à HTTPS. Il fera également un état des lieux de la migration et vous permettra de corriger les erreurs éventuelles. Enfin, un premier pas vers l&rsquo;intégration des entêtes Content-Security-Policy (CSP) est fait avec la mise en place d&rsquo;outils permettant aux développeurs et développeuses d&rsquo;utiliser des attributs dédiés sur les scripts qu&rsquo;ils et elles ajoutent sur WordPress afin notamment d&rsquo;en vérifier l&rsquo;origine. Pour plus de détails&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"onU2eWtR2Z\"><a href=\"https://make.wordpress.org/core/2021/02/22/improved-https-detection-and-migration-in-wordpress-5-7/\">Improved HTTPS detection and migration in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Improved HTTPS detection and migration in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/22/improved-https-detection-and-migration-in-wordpress-5-7/embed/#?secret=onU2eWtR2Z\" data-secret=\"onU2eWtR2Z\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"xYibzHZ3Es\"><a href=\"https://make.wordpress.org/core/2021/02/23/introducing-script-attributes-related-functions-in-wordpress-5-7/\">Introducing script attributes related functions in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing script attributes related functions in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/introducing-script-attributes-related-functions-in-wordpress-5-7/embed/#?secret=xYibzHZ3Es\" data-secret=\"xYibzHZ3Es\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Autres mises à jour techniques de WordPress&nbsp;5.7</h2>\n\n\n\n<p>Des modifications concernant les écrans de connexion et d&rsquo;inscription on également été faites&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"SQskB7miUR\"><a href=\"https://make.wordpress.org/core/2021/02/16/login-registration-screens-changes-in-wordpress-5-7/\">Login &amp; registration screens changes in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Login &amp; registration screens changes in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/16/login-registration-screens-changes-in-wordpress-5-7/embed/#?secret=SQskB7miUR\" data-secret=\"SQskB7miUR\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Utile pour les développeuses et développeurs de thèmes, un nouveau marqueur de modèle et un nouveau marqueur conditionnel permettant de récupérer ou tester les publications parentes d&rsquo;une publication donnée&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"5eT1aLYOGx\"><a href=\"https://make.wordpress.org/core/2021/02/10/introducing-new-post-parent-related-functions-in-wordpress-5-7/\">Introducing new Post Parent related functions in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing new Post Parent related functions in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/10/introducing-new-post-parent-related-functions-in-wordpress-5-7/embed/#?secret=5eT1aLYOGx\" data-secret=\"5eT1aLYOGx\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Deux nouvelles fonctions ont été ajoutées dans WP 5.7 afin de déterminer si une publication est visualisable publiquement ou non. Le marqueur conditionnel <code>is_post_publicly_viewable()</code> est notamment particulièrement intéressant car il combine plusieurs vérifications en une seule fonction. Pour plus de détails (en anglais)&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"o95wmnzqCC\"><a href=\"https://make.wordpress.org/core/2021/02/18/introducing-additional-functions-to-check-if-a-post-is-publicly-viewable-in-wordpress-5-7/\">Introducing additional functions to check if a post is publicly viewable in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Introducing additional functions to check if a post is publicly viewable in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/18/introducing-additional-functions-to-check-if-a-post-is-publicly-viewable-in-wordpress-5-7/embed/#?secret=o95wmnzqCC\" data-secret=\"o95wmnzqCC\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p>Pour finir, voici une note de développement contenant pêle-mêle une liste de toutes les petites améliorations notables destinées aux développeuses et développeurs&nbsp;:</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-make-wordpress-core wp-block-embed-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"x30T5MYHjK\"><a href=\"https://make.wordpress.org/core/2021/02/23/miscellaneous-developer-focused-changes-in-wordpress-5-7/\">Miscellaneous developer focused changes in WordPress 5.7</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"&#8220;Miscellaneous developer focused changes in WordPress 5.7&#8221; &#8212; Make WordPress Core\" src=\"https://make.wordpress.org/core/2021/02/23/miscellaneous-developer-focused-changes-in-wordpress-5-7/embed/#?secret=x30T5MYHjK\" data-secret=\"x30T5MYHjK\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>Et bien plus encore…</h2>\n\n\n\n<p>WordPress&nbsp;5.7 contient bien d&rsquo;autres améliorations et modifications !<br>Plus de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=defect+(bug)&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">127</a>&nbsp;bugs ont été corrigés,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">66</a>&nbsp;améliorations et nouvelles fonctionnalités ont été implémentées et <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=task+(blessed)&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=owner&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">29</a>&nbsp;tâches courantes ont été&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.7&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">clôturées dans WordPress 5.7</a>. Voici une poignée d&rsquo;autres modifications qui n&rsquo;ont pas été évoquées dans les notes de développement listées ci-dessus&nbsp;:</p>\n\n\n\n<ul><li>Éditeur&nbsp;: prise en charge du filtrage des paramètres dans l&rsquo;enregistrement de nouveaux types de blocs à partir de métadonnées (<a href=\"https://core.trac.wordpress.org/ticket/52138\">#52138</a>)</li><li>Menus&nbsp;: ajout d&rsquo;un pied de section épinglé au gestionnaire d&rsquo;éléments de menus afin d&rsquo;éviter de dupliquer les boutons de sauvegarde (<a href=\"https://core.trac.wordpress.org/ticket/51631\">#51631</a>)</li><li>Mises à jour&nbsp;: affichage du numéro de la version qui sera réinstallée sur le bouton de réinstallation disponible sur la page de mise à jour de WP (<a href=\"https://core.trac.wordpress.org/ticket/51774\">#51774</a>)</li><li>Mises à jour&nbsp;: prise en charge de la valeur <code>development</code>&nbsp;pour la constante&nbsp;<code>WP_AUTO_UPDATE_CORE</code>&nbsp;(<a href=\"https://core.trac.wordpress.org/ticket/51978\">#51978</a>)</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Pour rappel, la sortie de WordPress 5.7 est prévue le 9 mars 2021. Vous pouvez d’ores et déjà la tester en version&nbsp;<em>Release Candidate</em>&nbsp;en installant l’extension officielle&nbsp;<em>WordPress Beta Tester</em>&nbsp;puis en allant dans ses réglages et en cochant la case&nbsp;Beta / Version de développement puis en mettant à jour votre installation de façon classique.</p>\n\n\n\n<figure class=\"wp-block-embed is-type-wp-embed is-provider-plugin-directory wp-block-embed-plugin-directory\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"wUWSt9zkGg\"><a href=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a></blockquote><iframe class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" title=\"« WordPress Beta Tester » &#8212; Plugin Directory\" src=\"https://fr.wordpress.org/plugins/wordpress-beta-tester/embed/#?secret=wUWSt9zkGg\" data-secret=\"wUWSt9zkGg\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<p><em>Merci à <a href=\'https://profiles.wordpress.org/jdy68/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jdy68</a>, <a href=\'https://profiles.wordpress.org/wolforg/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wolforg</a>, <a href=\'https://profiles.wordpress.org/chaton666/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chaton666</a> et <a href=\'https://profiles.wordpress.org/crash_47/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>crash_47</a> pour leur relecture de ce guide.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://fr.wordpress.org/2021/02/24/les-changements-techniques-a-venir-sur-wordpress-5-7/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress 5.6 « Simone »\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://fr.wordpress.org/2020/12/09/wordpress-5-6-simone/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://fr.wordpress.org/2020/12/09/wordpress-5-6-simone/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Dec 2020 23:53:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1899\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:398:\"Voici « Simone », la dernière version de WordPress. Nommée en l’honneur de la légendaire interprète de jazz Nina Simone, connue pour des tubes tels que « Feeling Good », « Young, Gifted and Black » ou encore « Four Women ». Lancez quelques-unes de ses chansons phares en fond sonore et découvrez les nouveautés que nous vous avons réservé. Partager vos histoires [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:78679:\"\n<p>Voici « Simone », la dernière version de WordPress. Nommée en l’honneur de la légendaire interprète de jazz Nina Simone, connue pour des tubes tels que <em>« Feeling Good »</em>, <em>« Young, Gifted and Black »</em> ou encore <em>« Four Women »</em>. Lancez quelques-unes de ses <a rel=\"noreferrer noopener\" href=\"https://youtu.be/D5Y11hwjMNs\" target=\"_blank\">chansons phares</a> en fond sonore et découvrez les nouveautés que nous vous avons réservé.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/12/wordpress-5-6_cover-03.jpg?resize=632%2C633&amp;ssl=1\" alt=\"WordPress 5.6 Simone with a photo of Nina Simone\" class=\"wp-image-9385\" /></figure>\n\n\n\n<span id=\"more-1899\"></span>\n\n\n\n<h3>Partager vos histoires n’a jamais été aussi facile</h3>\n\n\n\n<p>WordPress 5.6 vous apporte de nombreuses façons de donner vie à vos idées. Avec un tout nouveau thème par défaut comme toile vierge, cette version prend en charge une collection de blocs toujours plus grande. Peignez avec des mots, des images, des sons… et des médias embarqués enrichis.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/12/WordPress5-6-1.jpeg?resize=632%2C234&amp;ssl=1\" alt=\"colored circles\" class=\"wp-image-9346\" /></figure>\n\n\n\n<h3>Une plus grande flexibilité de mise en page</h3>\n\n\n\n<p>Donnez vie à vos histoires avec encore plus d’outils pour modifier vos mises en page avec ou sans code. Blocs avec une seule colonne, mises en page utilisant des largeurs mixtes et des colonnes, en-têtes en pleine largeur, bannières vidéos… faites de petits changements ou révolutionnez vos mises en page avec la même facilité.</p>\n\n\n\n<h3>Plus de compositions de blocs</h3>\n\n\n\n<p>Les compositions de blocs pré-configurées sur les thèmes facilitent la mise en place de pages standards sur votre site. Testez la force des compositions pour rendre votre flux de travail plus efficace et partagez cela facilement en vous épargnant quelques clics.</p>\n\n\n\n<h3>Un sous-titrage vidéo directement dans l’éditeur</h3>\n\n\n\n<p>Pour vous aider à ajouter des sous-titres ou des légendes à vos vidéos, vous pouvez désormais les téléverser dans vos articles et vos pages. Il est maintenant très simple de rendre vos vidéos accessibles à toute personne ayant besoin ou préférant utiliser des sous-titres.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/12/WordPress5-6-2.jpeg?resize=632%2C120&amp;ssl=1\" alt=\"black vertical line\" class=\"wp-image-9347\" /></figure>\n\n\n\n<h2>Twenty Twenty-One est là&nbsp;!</h2>\n\n\n\n<p>Twenty Twenty-One est une toile vierge pour exprimer vos idées, et l’éditeur de blocs sera votre meilleur pinceau. Ce thème est construit pour l’éditeur de blocs et embarque de nouvelles compositions de blocs dédiées. Essayez différentes mises en page en quelques secondes, et laissez le design intemporel de ce thème faire briller vos contenus.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/12/WordPress-5-6-5.jpeg?resize=632%2C231&amp;ssl=1\" alt=\"examples of what WordPress 5.6 could look like\" class=\"wp-image-9348\" /></figure>\n\n\n\n<p>De plus, ce thème par défaut place l’accessibilité au cœur de votre site. Il est conforme aux&nbsp;<a href=\"https://make.wordpress.org/themes/handbook/review/accessibility/\">Règles d’accessibilité de WordPress</a>&nbsp;et à la plupart des règles de standards tels que les&nbsp;<a href=\"https://www.w3.org/WAI/WCAG2AAA-Conformance\">Règles pour l’accessibilité des contenus web (WCAG) 2.1 au niveau AAA</a>. Cela vous aidera à atteindre les plus hauts niveaux des standards internationaux d’accessibilité… dans la mesure où vous créerez des contenus accessibles et où vous choisirez des extensions également accessibles&nbsp;!</p>\n\n\n\n<h3>Un arc-en-ciel de couleurs pastel</h3>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2020/12/WordPress-5-6-6.jpeg?resize=632%2C631&amp;ssl=1\" alt=\"Examples of block patterns available in select default themes.\" class=\"wp-image-9349\" /></figure>\n\n\n\n<p>Parfait pour la nouvelle année, Twenty Twenty-One vous propose une palette de couleurs pastel présélectionnées, toutes conformes aux normes de contraste AAA. Vous pouvez également choisir votre propre couleur d’arrière-plan pour le thème, et le thème choisit pour vous des couleurs de texte adaptées à l’accessibilité &#8211; automatiquement&nbsp;!</p>\n\n\n\n<p>Besoin de plus de flexibilité que cela&nbsp;? Vous pouvez également choisir votre propre palette de couleurs à partir du sélecteur de couleurs.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/12/WordPress5-6-3.jpeg?resize=632%2C151&amp;ssl=1\" alt=\"colored circles\" class=\"wp-image-9351\" /></figure>\n\n\n\n<h2>Des améliorations pour tout le monde</h2>\n\n\n\n<h3>Extension des mises à jour automatiques</h3>\n\n\n\n<p>Depuis des années, les mises à jour automatiques de WordPress n’étaient accessibles que via un développement spécifique. Maintenant, cette option est disponible directement dans votre tableau de bord. S’il s’agit de votre premier site, les mises à jour automatiques sont déjà en place. Si vous avez mis à jour un site déjà existant alors tout est resté comme avant. L’option d’activation/désactivation des mises à jour automatiques est disponible sur l’écran Tableau de bord &gt; Mises à jour.</p>\n\n\n\n<h3>Modèle de déclaration d’accessibilité</h3>\n\n\n\n<p>Même sans disposer d’une grande expertise à ce sujet, vous pouvez faire connaître les engagements pris par votre site en termes d’accessibilité juste en cliquant sur un bouton. Une nouvelle&nbsp;<a href=\"https://github.com/10degrees/accessibility-statement-plugin\">extension de fonctionnalités</a>&nbsp;comprend un modèle de texte que vous n’avez qu’à réadapter et à publier. Il a été écrit pour prendre en charge différents contextes et juridictions.</p>\n\n\n\n<h3>Des compositions de blocs intégrées</h3>\n\n\n\n<p>Si vous n’avez pas encore eu l’occasion de jouer avec les compositions de blocs, sachez que tous les thèmes natifs comprennent maintenant une sélection de compositions de blocs qui vous permet de créer des mises en pages complexes. Ces compositions peuvent être personnalisées à votre gré avec les textes, images ou couleurs qui conviennent à votre contenu ou à votre image de marque.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/12/WordPress-5-6-4.jpeg?resize=632%2C185&amp;ssl=1\" alt=\"colored and textured rectangles\" class=\"wp-image-9352\" /></figure>\n\n\n\n<h2>Pour les développeurs et les développeuses</h2>\n\n\n\n<h3>Authentification sur l’API REST avec les mots de passe d’application</h3>\n\n\n\n<p>Grâce à la nouvelle API de mots de passe d’application, les applications tierces peuvent se connecter de façon transparente et sécurisée à votre site. Cette nouvelle fonctionnalité de l’API REST vous permet de surveiller les applications qui se connectent à votre site et de contrôler ce qu’elles font.</p>\n\n\n\n<h3>Une meilleure prise en charge de PHP&nbsp;8</h3>\n\n\n\n<p>WordPress 5.6 marque le premier pas vers la prise en charge de PHP&nbsp;8 par WordPress. Il est grand temps de commencer à planifier la façon dont vos produits, services et sites tournant sur WordPress prennent en charge la dernière version de PHP. Pour plus d’information, lisez&nbsp;<a href=\"https://make.wordpress.org/core/2020/11/23/wordpress-and-php-8-0/\">la note de développement concernant PHP&nbsp;8 (en anglais)</a>.</p>\n\n\n\n<h3>jQuery</h3>\n\n\n\n<p>La mise à jour de la bibliothèque jQuery se déroule sur trois versions de WordPress&nbsp;: 5.5, 5.6 et 5.7. Comme nous arrivons à mi-chemin du processus, vous pouvez lancer&nbsp;<a href=\"https://fr.wordpress.org/plugins/wp-jquery-update-test/\">l’extension de test de mise à jour</a>&nbsp;pour vérifier par avance d’éventuelles erreurs sur vos sites.</p>\n\n\n\n<p>Si vous rencontrez des problèmes d’affichage sur votre site (ex&nbsp;: un diaporama qui ne fonctionne plus, un bouton qui n’a aucun effet), installez&nbsp;<a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">l’extension jQuery Migrate</a>.</p>\n\n\n\n<p>Nous vous recommandons également la lecture de <a href=\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/\" data-type=\"post\" data-id=\"1835\">cet article complet en français concernant les changements sur jQuery sur WordPress 5.6</a> et comment les gérer en tant que responsable d&rsquo;un site internet WordPress.</p>\n\n\n\n<h3>Consultez le guide de la version pour en savoir plus</h3>\n\n\n\n<p>Consultez le guide des changements techniques de WordPress 5.6. Il met en avant les notes de développement de chaque modification que vous souhaiteriez connaître&nbsp;:&nbsp;<a href=\"https://fr.wordpress.org/2020/11/24/les-changements-techniques-a-venir-sur-wordpress-5-6/\" data-type=\"post\" data-id=\"1766\">Guide des changements techniques de WordPress 5.6</a>.</p>\n\n\n\n<h3>Changements dans la traduction de WordPress en français</h3>\n\n\n\n<p>La traduction de WordPress en français devient plus inclusive&nbsp;! Consultez les <a href=\"https://fr.wordpress.org/2020/11/26/wordpress-5-6-des-changements-visant-a-ameliorer-linclusivite-de-linterface-dadministration/\" data-type=\"post\" data-id=\"1801\">détails de ces changements de traduction visant à rendre WordPress plus inclusif sur notre article dédié</a>.</p>\n\n\n\n<figure class=\"wp-block-pullquote\"><blockquote><p>It’s a new day, it’s a new life for me<br>…and I’m feeling good.</p><cite>~Nina Simone</cite></blockquote></figure>\n\n\n\n<h2>L’équipe de direction de WordPress&nbsp;5.6 «&nbsp;Simone&nbsp;»</h2>\n\n\n\n<p>Pour la première fois dans l&rsquo;écosystème WordPress, cette version majeure a été dirigée par une équipe 100&nbsp;% féminine&nbsp;: </p>\n\n\n\n<ul><li><strong>Direction&nbsp;:</strong> Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>). Aidée de Chloé Bringmann (<a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>) et Angela Jin (<a href=\"https://profiles.wordpress.org/angelasjin/\">@angelasjin</a>).</li><li><strong>Coordination&nbsp;:</strong> Dee Teal (<a href=\"https://profiles.wordpress.org/thewebprincess/\">@thewebprincess</a>).&nbsp;Aidée de Thelma Mutete (<a href=\"https://profiles.wordpress.org/thelmachido/\">@thelmachido</a>) et Laura Nelson (<a href=\"https://profiles.wordpress.org/laurora/\">@laurora</a>).</li><li><strong>Suivi&nbsp;:</strong> Tonya Mork (<a href=\"https://profiles.wordpress.org/hellofromtonya/\">@hellofromtonya</a>).&nbsp;</li><li><strong>Direction technique du cœur WP&nbsp;:</strong> Helen Hou-Sandì (<a href=\"https://profiles.wordpress.org/helen/\">@helen</a>).&nbsp;Aidée de Amy Kamala (<a href=\"https://profiles.wordpress.org/amykamala/\">@amykamala</a>) et Ebonie Butler (<a href=\"https://profiles.wordpress.org/metalandcoffee/\">@metalandcoffee</a>).</li><li><strong>Direction technique de l’éditeur Gutenberg&nbsp;:</strong> Isabel Brison (<a href=\"https://profiles.wordpress.org/isabel_brison/\">@isabel_brison</a>).&nbsp;Aidée de Chandrika Guntur (<a href=\"https://profiles.wordpress.org/cguntur/\">@cguntur</a>), Anchen le Roux (<a href=\"https://profiles.wordpress.org/anchenlr/\">@anchenlr</a>), et Rebecca Hum (<a href=\"https://profiles.wordpress.org/rebasaurus/\">@rebasauru<strong>s</strong></a>).</li><li><strong>Direction artistique&nbsp;:</strong> Ellen Bauer (<a href=\"https://profiles.wordpress.org/elmastudio/\">@elmastudio</a>) et Tammie Lister (<a href=\"https://profiles.wordpress.org/karmatosed/\">@karmatosed</a>).&nbsp;Aidées de Anyssa Ferreira (<a href=\"https://profiles.wordpress.org/anyssa/\">@anyssa</a>), Estela Rueda (<a href=\"https://profiles.wordpress.org/estelaris/\">@estelaris</a>), Tracy Apps (<a href=\"https://profiles.wordpress.org/tray/\">@tray</a>), et Sophia DeRosia (<a href=\"https://profiles.wordpress.org/eringoblog/\">@eringoblog</a>).</li><li><strong>Accompagnement technique de la direction artistique&nbsp;:</strong> Shital Marakana (<a href=\"https://profiles.wordpress.org/shital-patel/\">@shital-patel</a>).</li><li><strong>Directrice du focus accessibilité&nbsp;:</strong> Sarah Ricker (<a href=\"https://profiles.wordpress.org/sarahricker/\">@sarahricke<strong>r</strong></a>).&nbsp;Aidée de Hauwa Abashiya (<a href=\"https://profiles.wordpress.org/azhiyadev/\">@azhiyadev</a>).</li><li><strong>Direction du marketing et de la communications&nbsp;:</strong> Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>) et Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\">@yvettesonneveld</a>).&nbsp;Aidées de Nalini Thakor (<a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\">@nalininonstopnewsuk</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>), Olga Gleckler (<a href=\"https://profiles.wordpress.org/oglekler/\">@ogleckler</a>), Larissa Murrillo (<a href=\"https://profiles.wordpress.org/lmurillom/\">@lmurillom</a>), Michelle Frechette (<a href=\"https://profiles.wordpress.org/michelleames/\">@michelleames</a>), Breann McDede (<a href=\"https://profiles.wordpress.org/bmcdede/\">@bmcdede</a>), et Afshana Diya (<a href=\"https://profiles.wordpress.org/afshanadiya/\">@afshanadiya</a>).</li><li><strong>Direction de la documentation&nbsp;: </strong>Shawntelle Coker (<a href=\"https://profiles.wordpress.org/sncoker/\">@sncoker</a>). Aidée de Daisy Olsen (<a href=\"https://wordpress.slack.com/team/U8D7JFA3X\">@DaisyO</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>) et Winstina Hughes (<a href=\"https://profiles.wordpress.org/planningwrite/\">@planningwrite</a>).</li><li><strong>Relecture et validation de la documentation&nbsp;:</strong> Michele Butcher-Jones (<a href=\"https://profiles.wordpress.org/m_butcher/\">@m_butcher</a>).&nbsp;Aidée de Nidhi Jain (<a href=\"https://profiles.wordpress.org/jainnidhi/\">@jainnidhi</a>) et Laura Byrne Cristiano (<a href=\"https://wordpress.org/support/users/newyorkerlaura/\">@newyorkerlaura</a>).</li><li><strong>Direction artistique du nouveau thème natif&nbsp;:</strong> Mel Choyce-Dwan (<a href=\"https://profiles.wordpress.org/melchoyce/\">@melchoyce</a>).&nbsp;Aidée de Ellen Bauer (<a href=\"https://profiles.wordpress.org/elmastudio/\">@elmastudio</a>).</li><li><strong>Direction technique du nouveau thème natif&nbsp;:</strong> Carolina Nymark (<a href=\"https://profiles.wordpress.org/poena/\">@poena</a>).&nbsp;Aidée de Kelly Choyce-Dwan (<a href=\"https://profiles.wordpress.org/ryelle/\">@ryelle</a>) et Jessica Lyschik (<a href=\"https://profiles.wordpress.org/luminuu/\">@luminuu</a>).</li><li><strong>Suivi du développement du nouveau thème natif&nbsp;:</strong> Jessica Lyschik (<a href=\"https://profiles.wordpress.org/luminuu/\">@luminuu</a>).</li><li><strong>Direction de l’équipe de test&nbsp;:</strong> Monika Rao (<a href=\"https://profiles.wordpress.org/monikarao/\">@monikarao</a>). Aidée de Allie Nimmons (<a href=\"https://profiles.wordpress.org/alliennimmons/\">@alliennimmons</a>).</li><li><strong>Direction du support à destination des utilisatrices et utilisateurs finaux&nbsp;:</strong> Bet Hannon (<a href=\"https://profiles.wordpress.org/bethannon1/\">@bethannon1</a>).</li></ul>\n\n\n\n<p>Comme toujours, cette nouvelle version est surtout le reflet du travail de centaines de formidables contributrices et contributeurs&nbsp;:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/a2hosting/\">A2 Hosting</a>, <a href=\"https://profiles.wordpress.org/a4jpcom/\">a4jp . com</a>, <a href=\"https://profiles.wordpress.org/a6software/\">a6software</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abderrahman/\">abderrahman</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">Abha Thakor</a>, <a href=\"https://profiles.wordpress.org/ibachal/\">Achal Jain</a>, <a href=\"https://profiles.wordpress.org/achbed/\">achbed</a>, <a href=\"https://profiles.wordpress.org/achyuthajoy/\">Achyuth Ajoy</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/acsnaterse/\">acsnaterse</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/addiestavlo/\">Addie</a>, <a href=\"https://profiles.wordpress.org/addyosmani/\">addyosmani</a>, <a href=\"https://profiles.wordpress.org/adnanlimdi/\">adnan.limdi</a>, <a href=\"https://profiles.wordpress.org/adrian/\">adrian</a>, <a href=\"https://profiles.wordpress.org/airamerica/\">airamerica</a>, <a href=\"https://profiles.wordpress.org/ajayghaghretiya1/\">Ajay Ghaghretiya</a>, <a href=\"https://profiles.wordpress.org/ajitbohra/\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/akbarhusen/\">akbarhusen</a>, <a href=\"https://profiles.wordpress.org/akbarhusen429/\">akbarhusen429</a>, <a href=\"https://profiles.wordpress.org/akhileshsabharwal/\">Akhilesh Sabharwal</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juhé Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/akirk/\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/alishanvr/\">Ali Shan</a>, <a href=\"https://profiles.wordpress.org/ali11007/\">ali11007</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/amaschas/\">amaschas</a>, <a href=\"https://profiles.wordpress.org/wpamitkumar/\">Amit Dudhat</a>, <a href=\"https://profiles.wordpress.org/anbumz/\">anbumz</a>, <a href=\"https://profiles.wordpress.org/andfinally/\">andfinally</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/dontdream/\">Andrea Tarantini</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey « Rarst » Savchenko</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andrés Maneiro</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a>, <a href=\"https://profiles.wordpress.org/akissz/\">Angel Hess</a>, <a href=\"https://profiles.wordpress.org/angelasjin/\">Angela Jin</a>, <a href=\"https://profiles.wordpress.org/la-geek/\">Angelika Reisiger</a>, <a href=\"https://profiles.wordpress.org/rilwis/\">Anh Tran</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">Ankit Gade</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta/\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/ahortin/\">Anthony Hortin</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/antonisme/\">Antonis Lilis</a>, <a href=\"https://profiles.wordpress.org/apedog/\">apedog</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/argentite/\">argentite</a>, <a href=\"https://profiles.wordpress.org/arpitgshah/\">Arpit G Shah</a>, <a href=\"https://profiles.wordpress.org/passoniate/\">Arslan Ahmed</a>, <a href=\"https://profiles.wordpress.org/asalce/\">asalce</a>, <a href=\"https://profiles.wordpress.org/ashiagr/\">ashiagr</a>, <a href=\"https://profiles.wordpress.org/ashour/\">ashour</a>, <a href=\"https://profiles.wordpress.org/tacitonic/\">Atharva Dhekne</a>, <a href=\"https://profiles.wordpress.org/ajoah/\">Aurélien Joahny</a>, <a href=\"https://profiles.wordpress.org/aussi/\">aussi</a>, <a href=\"https://profiles.wordpress.org/automaton/\">automaton</a>, <a href=\"https://profiles.wordpress.org/avixansa/\">avixansa</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backups/\">BackuPs</a>, <a href=\"https://profiles.wordpress.org/barry/\">Barry</a>, <a href=\"https://profiles.wordpress.org/barryceelen/\">Barry Ceelen</a>, <a href=\"https://profiles.wordpress.org/bartczyz/\">Bart Czyz</a>, <a href=\"https://profiles.wordpress.org/bartekcholewa/\">bartekcholewa</a>, <a href=\"https://profiles.wordpress.org/bartkalisz/\">bartkalisz</a>, <a href=\"https://profiles.wordpress.org/bastho/\">Bastien Ho</a>, <a href=\"https://profiles.wordpress.org/bmartinent/\">Bastien Martinent</a>, <a href=\"https://profiles.wordpress.org/bcworkz/\">bcworkz</a>, <a href=\"https://profiles.wordpress.org/bdbch/\">bdbch</a>, <a href=\"https://profiles.wordpress.org/bdcstr/\">bdcstr</a>, <a href=\"https://profiles.wordpress.org/empireoflight/\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/grapestain/\">Bence Szalai</a>, <a href=\"https://profiles.wordpress.org/bencroskery/\">bencroskery</a>, <a href=\"https://profiles.wordpress.org/benjamingosset/\">Benjamin Gosset</a>, <a href=\"https://profiles.wordpress.org/benoitchantre/\">Benoit Chantre</a>, <a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernhard Reiter</a>, <a href=\"https://profiles.wordpress.org/bettyjj/\">BettyJJ</a>, <a href=\"https://profiles.wordpress.org/bgermann/\">bgermann</a>, <a href=\"https://profiles.wordpress.org/bigcloudmedia/\">bigcloudmedia</a>, <a href=\"https://profiles.wordpress.org/bigdawggi/\">bigdawggi</a>, <a href=\"https://profiles.wordpress.org/billerickson/\">Bill Erickson</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bbrdaric/\">Boris Brdarić</a>, <a href=\"https://profiles.wordpress.org/ibdz/\">Boy Witthaya</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/brianhogg/\">Brian Hogg</a>, <a href=\"https://profiles.wordpress.org/krogsgard/\">Brian Krogsgard</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/bruandet/\">bruandet</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90/\">Bunty</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/caiocrcosta/\">caiocrcosta</a>, <a href=\"https://profiles.wordpress.org/cvoell/\">Cameron Voell</a>, <a href=\"https://profiles.wordpress.org/cameronamcintyre/\">cameronamcintyre</a>, <a href=\"https://profiles.wordpress.org/carike/\">Carike</a>, <a href=\"https://profiles.wordpress.org/stuffradio/\">Carl Wuensche</a>, <a href=\"https://profiles.wordpress.org/carloslfu/\">Carlos Galarza</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/sixhours/\">Caroline Moore</a>, <a href=\"https://profiles.wordpress.org/carriganvb/\">Carrigan</a>, <a href=\"https://profiles.wordpress.org/ceyhun/\">ceyhun</a>, <a href=\"https://profiles.wordpress.org/shireling/\">Chad</a>, <a href=\"https://profiles.wordpress.org/cbutlerjr/\">Chad Butler</a>, <a href=\"https://profiles.wordpress.org/mackensen/\">Charles Fulton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a>, <a href=\"https://profiles.wordpress.org/chipsnyder/\">Chip Snyder</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a>, <a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/chriscct7/\">chriscct7</a>, <a href=\"https://profiles.wordpress.org/christian1012/\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/cjbj/\">Christian Jongeneel</a>, <a href=\"https://profiles.wordpress.org/pixelverbieger/\">Christian Sabo</a>, <a href=\"https://profiles.wordpress.org/needle/\">Christian Wach</a>, <a href=\"https://profiles.wordpress.org/christophherr/\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/vimes1984/\">Christopher Churchill</a>, <a href=\"https://profiles.wordpress.org/chunkysteveo/\">chunkysteveo</a>, <a href=\"https://profiles.wordpress.org/cklee/\">cklee</a>, <a href=\"https://profiles.wordpress.org/clayray/\">clayray</a>, <a href=\"https://profiles.wordpress.org/claytoncollie/\">Clayton Collie</a>, <a href=\"https://profiles.wordpress.org/cliffpaulick/\">Clifford Paulick</a>, <a href=\"https://profiles.wordpress.org/codeforest/\">codeforest</a>, <a href=\"https://profiles.wordpress.org/commeuneimage/\">Commeuneimage</a>, <a href=\"https://profiles.wordpress.org/copons/\">Copons</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/cpasqualini/\">cpasqualini</a>, <a href=\"https://profiles.wordpress.org/cristovaov/\">Cristovao Verstraeten</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/curtisbelt/\">Curtis Belt</a>, <a href=\"https://profiles.wordpress.org/clarinetlord/\">Cyrus Collier</a>, <a href=\"https://profiles.wordpress.org/dperonne/\">D.PERONNE</a>, <a href=\"https://profiles.wordpress.org/dsixinetu/\">d6</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danielhuesken/\">Daniel Hüsken</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/confridin/\">Daniel Roch</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">danieltj</a>, <a href=\"https://profiles.wordpress.org/dboy1988/\">Danny</a>, <a href=\"https://profiles.wordpress.org/darkog/\">Darko G.</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/dmchale/\">Dave McHale</a>, <a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davilera/\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/dartiss/\">David Artiss</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dbrumbaugh10up/\">David Brumbaugh</a>, <a href=\"https://profiles.wordpress.org/desmith/\">David E. Smith</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dryanpress/\">David Ryan</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">David Smith</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">david.binda</a>, <a href=\"https://profiles.wordpress.org/davidvee/\">davidvee</a>, <a href=\"https://profiles.wordpress.org/davisshaver/\">Davis Shaver</a>, <a href=\"https://profiles.wordpress.org/dchymko/\">dchymko</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/deepaklalwani/\">Deepak Lalwani</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">dekervit</a>, <a href=\"https://profiles.wordpress.org/delowardev/\">Delowar Hossain</a>, <a href=\"https://profiles.wordpress.org/demetris/\">demetris (Demetris Kikizas)</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/derekakelly/\">derekakelly</a>, <a href=\"https://profiles.wordpress.org/pcfreak30/\">Derrick Hammer</a>, <a href=\"https://profiles.wordpress.org/emrikol/\">Derrick Tennant</a>, <a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/dimitrism/\">Dimitris Mitsis</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dency/\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/djennez/\">djennez</a>, <a href=\"https://profiles.wordpress.org/dmenard/\">dmenard</a>, <a href=\"https://profiles.wordpress.org/dmethvin/\">dmethvin</a>, <a href=\"https://profiles.wordpress.org/doc987/\">doc987</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">donmhico</a>, <a href=\"https://profiles.wordpress.org/dono12/\">Dono12</a>, <a href=\"https://profiles.wordpress.org/doobeedoo/\">Doobeedoo</a>, <a href=\"https://profiles.wordpress.org/dossy/\">Dossy Shiobara</a>, <a href=\"https://profiles.wordpress.org/dpacks/\">dpacks</a>, <a href=\"https://profiles.wordpress.org/dratwas/\">dratwas</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/drlightman/\">DrLightman</a>, <a href=\"https://profiles.wordpress.org/drprotocols/\">DrProtocols</a>, <a href=\"https://profiles.wordpress.org/dsifford/\">dsifford</a>, <a href=\"https://profiles.wordpress.org/dudo/\">dudo</a>, <a href=\"https://profiles.wordpress.org/dushakov/\">dushakov</a>, <a href=\"https://profiles.wordpress.org/dustinbolton/\">Dustin Bolton</a>, <a href=\"https://profiles.wordpress.org/dvershinin/\">dvershinin</a>, <a href=\"https://profiles.wordpress.org/cyberhobo/\">Dylan Kuhn</a>, <a href=\"https://profiles.wordpress.org/elrae/\">Earle Davies</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">Ebonie Butler</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">ecotechie</a>, <a href=\"https://profiles.wordpress.org/eddiemoya/\">Eddie Moya</a>, <a href=\"https://profiles.wordpress.org/eddystile/\">Eddy</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">ehtis</a>, <a href=\"https://profiles.wordpress.org/itsjusteileen/\">Eileen Violini</a>, <a href=\"https://profiles.wordpress.org/ekatherine/\">Ekaterina</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elmastudio/\">elmastudio</a>, <a href=\"https://profiles.wordpress.org/emanuel_blagonic/\">Emanuel Blagonic</a>, <a href=\"https://profiles.wordpress.org/emlebrun/\">Emilie LEBRUN</a>, <a href=\"https://profiles.wordpress.org/manooweb/\">Emmanuel Hesry</a>, <a href=\"https://profiles.wordpress.org/enej/\">Enej Bajgoric</a>, <a href=\"https://profiles.wordpress.org/enricosorcinelli/\">Enrico Sorcinelli</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a>, <a href=\"https://profiles.wordpress.org/shamai/\">Eric</a>, <a href=\"https://profiles.wordpress.org/ericlewis/\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/ebinnion/\">Eric Binnion</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik Betshammar</a>, <a href=\"https://profiles.wordpress.org/folletto/\">Erin &lsquo;Folletto&rsquo; Casali</a>, <a href=\"https://profiles.wordpress.org/esemlabel/\">esemlabel</a>, <a href=\"https://profiles.wordpress.org/esoj/\">esoj</a>, <a href=\"https://profiles.wordpress.org/espiat/\">espiat</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">etoledom</a>, <a href=\"https://profiles.wordpress.org/etruel/\">etruel</a>, <a href=\"https://profiles.wordpress.org/ev3rywh3re/\">Ev3rywh3re</a>, <a href=\"https://profiles.wordpress.org/circlecube/\">Evan Mullins</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian Kägy</a>, <a href=\"https://profiles.wordpress.org/gaambo/\">Fabian Todt</a>, <a href=\"https://profiles.wordpress.org/fftfaisal/\">Faisal Ahmed</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/felix-edelmann/\">Felix Edelmann</a>, <a href=\"https://profiles.wordpress.org/ferdiesletering/\">ferdiesletering</a>, <a href=\"https://profiles.wordpress.org/finomeno/\">finomeno</a>, <a href=\"https://profiles.wordpress.org/florianbrinkmann/\">Florian Brinkmann</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/truchot/\">Florian Truchot</a>, <a href=\"https://profiles.wordpress.org/florianatwhodunit/\">florianatwhodunit</a>, <a href=\"https://profiles.wordpress.org/foliovision/\">FolioVision</a>, <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>, <a href=\"https://profiles.wordpress.org/francoist/\">Francois Thibaud</a>, <a href=\"https://profiles.wordpress.org/futtta/\">Frank Goossens</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/frankprendergast/\">Frank.Prendergast</a>, <a href=\"https://profiles.wordpress.org/fjarrett/\">Frankie Jarrett</a>, <a href=\"https://profiles.wordpress.org/franzarmas/\">Franz Armas</a>, <a href=\"https://profiles.wordpress.org/fullofcaffeine/\">fullofcaffeine</a>, <a href=\"https://profiles.wordpress.org/mintindeed/\">Gabriel Koen</a>, <a href=\"https://profiles.wordpress.org/gma992/\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/gmays/\">Gabriel Mays</a>, <a href=\"https://profiles.wordpress.org/gadgetroid/\">gadgetroid</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garavani/\">Garavani</a>, <a href=\"https://profiles.wordpress.org/garethgillman/\">garethgillman</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyc40/\">Gary Cao</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/gchtr/\">gchtr</a>, <a href=\"https://profiles.wordpress.org/geertdd/\">Geert De Deckere</a>, <a href=\"https://profiles.wordpress.org/geminilabs/\">Gemini Labs</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/geriux/\">geriux</a>, <a href=\"https://profiles.wordpress.org/giorgio25b/\">Giorgio25b</a>, <a href=\"https://profiles.wordpress.org/gisselfeldt/\">gisselfeldt</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">glendaviesnz</a>, <a href=\"https://profiles.wordpress.org/goldsounds/\">goldsounds</a>, <a href=\"https://profiles.wordpress.org/gh640/\">Goto Hayato</a>, <a href=\"https://profiles.wordpress.org/gkloveweb/\">Govind Kumar</a>, <a href=\"https://profiles.wordpress.org/greglone/\">Grégory Viguier</a>, <a href=\"https://profiles.wordpress.org/gradina/\">gradina</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gregmulhauser/\">gregmulhauser</a>, <a href=\"https://profiles.wordpress.org/grierson/\">grierson</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/gsmumbo/\">gsmumbo</a>, <a href=\"https://profiles.wordpress.org/wido/\">Guido Scialfa</a>, <a href=\"https://profiles.wordpress.org/guidobras/\">guidobras</a>, <a href=\"https://profiles.wordpress.org/netsurfer2705/\">Gunther Pilz</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hvar/\">H-var</a>, <a href=\"https://profiles.wordpress.org/hakre/\">hakre</a>, <a href=\"https://profiles.wordpress.org/halgatewood/\">Hal Gatewood</a>, <a href=\"https://profiles.wordpress.org/hankthetank/\">hankthetank</a>, <a href=\"https://profiles.wordpress.org/psdtohtmlguru/\">Hapiuc Robert</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>, <a href=\"https://profiles.wordpress.org/haukep/\">haukep</a>, <a href=\"https://profiles.wordpress.org/azhiyadev/\">Hauwa Abashiya</a>, <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a>, <a href=\"https://profiles.wordpress.org/h71/\">Hector Farahani</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">Herre Groen</a>, <a href=\"https://profiles.wordpress.org/hlanggo/\">hlanggo</a>, <a href=\"https://profiles.wordpress.org/hommealone/\">hommealone</a>, <a href=\"https://profiles.wordpress.org/ryanshoover/\">Hoover</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/hronak/\">Hronak Nahar</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/huntlyc/\">huntlyc</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/iandstewart/\">Ian Stewart</a>, <a href=\"https://profiles.wordpress.org/ianjvr/\">ianjvr</a>, <a href=\"https://profiles.wordpress.org/ifrins/\">ifrins</a>, <a href=\"https://profiles.wordpress.org/igorradovanov/\">Igor Radovanov</a>, <a href=\"https://profiles.wordpress.org/infinum/\">infinum</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ishitaka/\">ishitaka</a>, <a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jackfungi/\">jackfungi</a>, <a href=\"https://profiles.wordpress.org/jacklinkers/\">jacklinkers</a>, <a href=\"https://profiles.wordpress.org/jadonn/\">Jadon N</a>, <a href=\"https://profiles.wordpress.org/jadpm/\">jadpm</a>, <a href=\"https://profiles.wordpress.org/jagirbahesh/\">jagirbahesh</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/twentyzerotwo/\">Jake Whiteley</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/foack/\">Jan Koch</a>, <a href=\"https://profiles.wordpress.org/janr/\">Jan Reilink</a>, <a href=\"https://profiles.wordpress.org/janthiel/\">Jan Thiel</a>, <a href=\"https://profiles.wordpress.org/javidalkaruzi/\">Janvo Aldred</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/jason_the_adams/\">Jason Adams</a>, <a href=\"https://profiles.wordpress.org/strangerstudios/\">Jason Coleman</a>, <a href=\"https://profiles.wordpress.org/boogah/\">Jason Cosper</a>, <a href=\"https://profiles.wordpress.org/coolmann/\">Jason Crouse</a>, <a href=\"https://profiles.wordpress.org/madtownlems/\">Jason LeMahieu (MadtownLems)</a>, <a href=\"https://profiles.wordpress.org/jaz_on/\">Jason Rouet</a>, <a href=\"https://profiles.wordpress.org/jaswsinc/\">JasWSInc</a>, <a href=\"https://profiles.wordpress.org/javiercasares/\">Javier Casares</a>, <a href=\"https://profiles.wordpress.org/shiki/\">Jayson Basanes</a>, <a href=\"https://profiles.wordpress.org/jbinda/\">jbinda</a>, <a href=\"https://profiles.wordpress.org/jbouganim/\">jbouganim</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jean-david/\">Jean-David Daviet</a>, <a href=\"https://profiles.wordpress.org/jeffr0/\">Jeff Chandler</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/jenmylo/\">Jen</a>, <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jeherve/\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jeremyyip/\">Jeremy Yip</a>, <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a>, <a href=\"https://profiles.wordpress.org/jeryj/\">jeryj</a>, <a href=\"https://profiles.wordpress.org/jesin/\">Jesin A</a>, <a href=\"https://profiles.wordpress.org/jigneshnakrani/\">Jignesh Nakrani</a>, <a href=\"https://profiles.wordpress.org/jim_panse/\">Jim_Panse</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/jivanpal/\">jivanpal</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johannadevos/\">Johanna de Vos</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/jdorner/\">John Dorner</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">John P. Green</a>, <a href=\"https://profiles.wordpress.org/rastaban/\">John Richards II</a>, <a href=\"https://profiles.wordpress.org/johnwatkins0/\">John Watkins</a>, <a href=\"https://profiles.wordpress.org/johnnyb/\">johnnyb</a>, <a href=\"https://profiles.wordpress.org/jb510/\">Jon Brown</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Jon Quach</a>, <a href=\"https://profiles.wordpress.org/jonsurrell/\">Jon Surrell</a>, <a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a>, <a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>, <a href=\"https://profiles.wordpress.org/jchristopher/\">Jonathan Christopher</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jonathanstegall/\">Jonathan Stegall</a>, <a href=\"https://profiles.wordpress.org/jonkolbert/\">jonkolbert</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonnybot/\">jonnybot</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/josephdickson/\">Joseph Dickson</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/procifer/\">Josh Smith</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/juanlopez4691/\">juanlopez4691</a>, <a href=\"https://profiles.wordpress.org/jules-colle/\">Jules Colle</a>, <a href=\"https://profiles.wordpress.org/julianm/\">julianm</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/jgrodel/\">Julka Grodel</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/devesine/\">Justin de Vesine</a>, <a href=\"https://profiles.wordpress.org/greenshady/\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/justlevine/\">justlevine</a>, <a href=\"https://profiles.wordpress.org/justnorris/\">justnorris</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kaggdesign/\">kaggdesign</a>, <a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kaira/\">Kaira</a>, <a href=\"https://profiles.wordpress.org/kaitlin414/\">Kaitlin Bolling</a>, <a href=\"https://profiles.wordpress.org/akabarikalpesh/\">Kalpesh Akabari</a>, <a href=\"https://profiles.wordpress.org/kamataryo/\">KamataRyo</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/kasparsd/\">Kaspars</a>, <a href=\"https://profiles.wordpress.org/properlypurple/\">Kavya Gokul</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer/\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kellybleck/\">kellybleck</a>, <a href=\"https://profiles.wordpress.org/kennethroberson5556/\">kennethroberson5556</a>, <a href=\"https://profiles.wordpress.org/khag7/\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/itzmekhokan/\">Khokan Sardar</a>, <a href=\"https://profiles.wordpress.org/kinjaldalwadi/\">kinjaldalwadi</a>, <a href=\"https://profiles.wordpress.org/kirilzh/\">Kiril Zhelyazkov</a>, <a href=\"https://profiles.wordpress.org/kburgoine/\">Kirsty Burgoine</a>, <a href=\"https://profiles.wordpress.org/kishanjasani/\">Kishan Jasani</a>, <a href=\"https://profiles.wordpress.org/kitchin/\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kittmedia/\">KittMedia</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/ksoares/\">ksoares</a>, <a href=\"https://profiles.wordpress.org/kthmd/\">KT Cheung</a>, <a href=\"https://profiles.wordpress.org/sainthkh/\">Kukhyeon Heo</a>, <a href=\"https://profiles.wordpress.org/kbjohnson90/\">Kyle B. Johnson</a>, <a href=\"https://profiles.wordpress.org/lalitpendhare/\">lalitpendhare</a>, <a href=\"https://profiles.wordpress.org/landau/\">landau</a>, <a href=\"https://profiles.wordpress.org/laternastudio/\">Laterna Studio</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/offereins/\">Laurens Offereins</a>, <a href=\"https://profiles.wordpress.org/laxman-prajapati/\">Laxman Prajapati</a>, <a href=\"https://profiles.wordpress.org/gamerz/\">Lester Chan</a>, <a href=\"https://profiles.wordpress.org/levdbas/\">Levdbas</a>, <a href=\"https://profiles.wordpress.org/layotte/\">Lew Ayotte</a>, <a href=\"https://profiles.wordpress.org/lex_robinson/\">Lex Robinson</a>, <a href=\"https://profiles.wordpress.org/linyows/\">linyows</a>, <a href=\"https://profiles.wordpress.org/lipathor/\">lipathor</a>, <a href=\"https://profiles.wordpress.org/lschuyler/\">Lisa Schuyler</a>, <a href=\"https://profiles.wordpress.org/liuhaibin/\">liuhaibin</a>, <a href=\"https://profiles.wordpress.org/ljharb/\">ljharb</a>, <a href=\"https://profiles.wordpress.org/logig/\">logig</a>, <a href=\"https://profiles.wordpress.org/lucasbustamante/\">lucasbustamante</a>, <a href=\"https://profiles.wordpress.org/lwill/\">luiswill</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/happiryu/\">Luke Walczak</a>, <a href=\"https://profiles.wordpress.org/lukestramasonder/\">lukestramasonder</a>, <a href=\"https://profiles.wordpress.org/asif2bd/\">M Asif Rahman</a>, <a href=\"https://profiles.wordpress.org/msafi/\">M.K. Safi</a>, <a href=\"https://profiles.wordpress.org/cloudstek/\">Maarten de Boer</a>, <a href=\"https://profiles.wordpress.org/aladin02dz/\">Mahfoudh Arous</a>, <a href=\"https://profiles.wordpress.org/mailnew2ster/\">mailnew2ster</a>, <a href=\"https://profiles.wordpress.org/manojlovic/\">manojlovic</a>, <a href=\"https://profiles.wordpress.org/targz-1/\">Manuel Schmalstieg</a>, <a href=\"https://profiles.wordpress.org/neodjandre/\">maraki</a>, <a href=\"https://profiles.wordpress.org/iworks/\">Marcin Pietrzak</a>, <a href=\"https://profiles.wordpress.org/marcio-zebedeu/\">Marcio Zebedeu</a>, <a href=\"https://profiles.wordpress.org/pereirinha/\">Marco Pereirinha</a>, <a href=\"https://profiles.wordpress.org/marcoz/\">MarcoZ</a>, <a href=\"https://profiles.wordpress.org/netweblogic/\">Marcus</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek Dědič</a>, <a href=\"https://profiles.wordpress.org/marekhrabe/\">Marek Hrabe</a>, <a href=\"https://profiles.wordpress.org/mariovalney/\">Mario Valney</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/machouinard/\">Mark Chouinard</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/markparnell/\">Mark Parnell</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markdubois/\">markdubois</a>, <a href=\"https://profiles.wordpress.org/markgoho/\">markgoho</a>, <a href=\"https://profiles.wordpress.org/vindl/\">Marko Andrijasevic</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/markrh/\">MarkRH</a>, <a href=\"https://profiles.wordpress.org/markshep/\">markshep</a>, <a href=\"https://profiles.wordpress.org/markusthiel/\">markusthiel</a>, <a href=\"https://profiles.wordpress.org/martijn-van-der-kooij/\">Martijn van der Kooij</a>, <a href=\"https://profiles.wordpress.org/martychc23/\">martychc23</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/matheusfd/\">Matheus Martins</a>, <a href=\"https://profiles.wordpress.org/imath/\">Mathieu Viet</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/matjack1/\">matjack1</a>, <a href=\"https://profiles.wordpress.org/webdevmattcrom/\">Matt Cromwell</a>, <a href=\"https://profiles.wordpress.org/gothickgothickorguk/\">Matt Gibson</a>, <a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/mattrad/\">Matt Radford</a>, <a href=\"https://profiles.wordpress.org/veraxus/\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">mattchowning</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheweppelsheimer/\">Matthew Eppelsheimer</a>, <a href=\"https://profiles.wordpress.org/beatpanda/\">Matthew Gerring</a>, <a href=\"https://profiles.wordpress.org/pfefferle/\">Matthias Pfefferle</a>, <a href=\"https://profiles.wordpress.org/matthieumota/\">Matthieu Mota</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maximeculea/\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/maxpertici/\">Maxime Pertici</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mayankmajeji/\">Mayank Majeji</a>, <a href=\"https://profiles.wordpress.org/mcshane/\">mcshane</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/menakas/\">Menaka S.</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/lilmike/\">Michael</a>, <a href=\"https://profiles.wordpress.org/michaelarestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/tw2113/\">Michael Beckwith</a>, <a href=\"https://profiles.wordpress.org/mfields/\">Michael Fields</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/m_butcher/\">Michele Butcher-Jones</a>, <a href=\"https://profiles.wordpress.org/marktimemedia/\">Michelle</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mikaumoto/\">mikaumoto</a>, <a href=\"https://profiles.wordpress.org/mihai2u/\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mdgl/\">Mike Glendinning</a>, <a href=\"https://profiles.wordpress.org/mike-haydon-swo/\">Mike Haydon</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeyarce/\">Mikey Arce</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a>, <a href=\"https://profiles.wordpress.org/milindmore22/\">Milind More</a>, <a href=\"https://profiles.wordpress.org/mimitips/\">mimi</a>, <a href=\"https://profiles.wordpress.org/mislavjuric/\">mislavjuric</a>, <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/opurockey/\">Mohammad Rockeybul Alam</a>, <a href=\"https://profiles.wordpress.org/mohsinrasool/\">Mohsin Rasool</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/gwendydd/\">Morgan Kay</a>, <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mt8biz/\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mrgrt/\">mrgrt</a>, <a href=\"https://profiles.wordpress.org/mrmist/\">mrmist</a>, <a href=\"https://profiles.wordpress.org/mrtall/\">mrTall</a>, <a href=\"https://profiles.wordpress.org/msaggiorato/\">msaggiorato</a>, <a href=\"https://profiles.wordpress.org/musamamasood/\">Muhammad Usama Masood</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/nabilmoqbel/\">Nabil Moqbel</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Nadir Seghir</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/nalininonstopnewsuk/\">Nalini Thakor</a>, <a href=\"https://profiles.wordpress.org/nao/\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/narwen/\">narwen</a>, <a href=\"https://profiles.wordpress.org/nateinaction/\">Nate Gay</a>, <a href=\"https://profiles.wordpress.org/nathanrice/\">Nathan Rice</a>, <a href=\"https://profiles.wordpress.org/navidos/\">Navid</a>, <a href=\"https://profiles.wordpress.org/neonkowy/\">neonkowy</a>, <a href=\"https://profiles.wordpress.org/krstarica/\">net</a>, <a href=\"https://profiles.wordpress.org/netpassprodsr/\">netpassprodsr</a>, <a href=\"https://profiles.wordpress.org/nextendweb/\">Nextendweb</a>, <a href=\"https://profiles.wordpress.org/calvin_ngan/\">Ngan Tengyuen</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/vadimnicolai/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nicolaskulka/\">NicolasKulka</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/nielsdeblaauw/\">Niels de Blaauw</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nigrosimone/\">nigro.simone</a>, <a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a>, <a href=\"https://profiles.wordpress.org/nikhilbhansi/\">Nikhil Bhansi</a>, <a href=\"https://profiles.wordpress.org/nbachiyski/\">Nikolay Bachiyski</a>, <a href=\"https://profiles.wordpress.org/nilovelez/\">Nilo Velez</a>, <a href=\"https://profiles.wordpress.org/niresh12495/\">Niresh</a>, <a href=\"https://profiles.wordpress.org/nmenescardi/\">nmenescardi</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">Noah Allen</a>, <a href=\"https://profiles.wordpress.org/numidwasnotavailable/\">NumidWasNotAvailable</a>, <a href=\"https://profiles.wordpress.org/oakesjosh/\">oakesjosh</a>, <a href=\"https://profiles.wordpress.org/obliviousharmony/\">obliviousharmony</a>, <a href=\"https://profiles.wordpress.org/ockham/\">ockham</a>, <a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a>, <a href=\"https://profiles.wordpress.org/alshakero/\">Omar Alshaker</a>, <a href=\"https://profiles.wordpress.org/omarreiss/\">Omar Reiss</a>, <a href=\"https://profiles.wordpress.org/onokazu/\">onokazu</a>, <a href=\"https://profiles.wordpress.org/optimizingmatters/\">Optimizing Matters</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/ovann86/\">ovann86</a>, <a href=\"https://profiles.wordpress.org/overclokk/\">overclokk</a>, <a href=\"https://profiles.wordpress.org/p_enrique/\">p_enrique</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/pablohoneyhoney/\">Pablo Honey</a>, <a href=\"https://profiles.wordpress.org/paddy/\">Paddy</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/paresh07/\">Paresh Shinde</a>, <a href=\"https://profiles.wordpress.org/parvand/\">Parvand</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pdfernhout/\">Paul Fernhout</a>, <a href=\"https://profiles.wordpress.org/djpaul/\">Paul Gibbs</a>, <a href=\"https://profiles.wordpress.org/figureone/\">Paul Ryan</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/paulstonier/\">Paul Stonier</a>, <a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a>, <a href=\"https://profiles.wordpress.org/pavelevap/\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendonça</a>, <a href=\"https://profiles.wordpress.org/pentatonicfunk/\">pentatonicfunk</a>, <a href=\"https://profiles.wordpress.org/pputzer/\">pepe</a>, <a href=\"https://profiles.wordpress.org/pessoft/\">Peter « Pessoft » Kolínek</a>, <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pderksen/\">Phil Derksen</a>, <a href=\"https://profiles.wordpress.org/johnstonphilip/\">Phil Johnston</a>, <a href=\"https://profiles.wordpress.org/philipmjackson/\">Philip Jackson</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pigdog234/\">pigdog234</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/wppinar/\">Pinar</a>, <a href=\"https://profiles.wordpress.org/pingram3541/\">pingram</a>, <a href=\"https://profiles.wordpress.org/pionect/\">Pionect</a>, <a href=\"https://profiles.wordpress.org/piyushmca/\">Piyush Patel</a>, <a href=\"https://profiles.wordpress.org/pkarjala/\">pkarjala</a>, <a href=\"https://profiles.wordpress.org/pkvillanueva/\">pkvillanueva</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/pratik028/\">pratik028</a>, <a href=\"https://profiles.wordpress.org/pravinparmar2404/\">Pravin Parmar</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/presslabs/\">Presslabs</a>, <a href=\"https://profiles.wordpress.org/priyankkpatel/\">Priyank Patel</a>, <a href=\"https://profiles.wordpress.org/priyomukul/\">Priyo Mukul</a>, <a href=\"https://profiles.wordpress.org/prografika/\">ProGrafika</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/puneetsahalot/\">Puneet Sahalot</a>, <a href=\"https://profiles.wordpress.org/punitsoftac/\">punitsoftac</a>, <a href=\"https://profiles.wordpress.org/pvogel2/\">pvogel2</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/raajtram/\">Raaj Trambadia</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/raineorshine/\">raine</a>, <a href=\"https://profiles.wordpress.org/rajeshsingh520/\">rajeshsingh520</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/ravatparmar/\">Ravat Parmar</a>, <a href=\"https://profiles.wordpress.org/ravenswd/\">ravenswd</a>, <a href=\"https://profiles.wordpress.org/rawrly/\">rawrly</a>, <a href=\"https://profiles.wordpress.org/rebasaurus/\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/redsand/\">Red Sand Media Group</a>, <a href=\"https://profiles.wordpress.org/regankhadgi/\">Regan Khadgi</a>, <a href=\"https://profiles.wordpress.org/tabrisrp/\">Remy Perona</a>, <a href=\"https://profiles.wordpress.org/remzicavdar/\">Remzi Cavdar</a>, <a href=\"https://profiles.wordpress.org/renathoc/\">Renatho</a>, <a href=\"https://profiles.wordpress.org/renggo888/\">renggo888</a>, <a href=\"https://profiles.wordpress.org/retlehs/\">retlehs</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>, <a href=\"https://profiles.wordpress.org/riaanlom/\">riaanlom</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/riasat/\">riasat</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>, <a href=\"https://profiles.wordpress.org/ringisha/\">Ringisha</a>, <a href=\"https://profiles.wordpress.org/ritterml/\">ritterml</a>, <a href=\"https://profiles.wordpress.org/rnaby/\">Rnaby</a>, <a href=\"https://profiles.wordpress.org/rcutmore/\">Rob Cutmore</a>, <a href=\"https://profiles.wordpress.org/dhrrob/\">Rob Migchels</a>, <a href=\"https://profiles.wordpress.org/rob006/\">rob006</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/miqrogroove/\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/robertpeake/\">Robert Peake</a>, <a href=\"https://profiles.wordpress.org/nullbyte/\">Robert Windisch</a>, <a href=\"https://profiles.wordpress.org/kreppar/\">Rodrigo Arias</a>, <a href=\"https://profiles.wordpress.org/ronalfy/\">Ronald Huereca</a>, <a href=\"https://profiles.wordpress.org/costasovo/\">Rostislav Wolný</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/rtagliento/\">rtagliento</a>, <a href=\"https://profiles.wordpress.org/ruxandra/\">Ruxandra</a>, <a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a>, <a href=\"https://profiles.wordpress.org/ryankienstra/\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/ryotasakamoto/\">Ryota Sakamoto</a>, <a href=\"https://profiles.wordpress.org/ryotsun/\">ryotsun</a>, <a href=\"https://profiles.wordpress.org/soean/\">Sören Wrede</a>, <a href=\"https://profiles.wordpress.org/sorenbronsted/\">Søren Brønsted</a>, <a href=\"https://profiles.wordpress.org/sachittandukar/\">Sachit Tandukar</a>, <a href=\"https://profiles.wordpress.org/sagarjadhav/\">Sagar Jadhav</a>, <a href=\"https://profiles.wordpress.org/sajjad67/\">Sajjad Hossain Sagor</a>, <a href=\"https://profiles.wordpress.org/salcode/\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/salvatoreformisano/\">Salvatore Formisano</a>, <a href=\"https://profiles.wordpress.org/salvoaranzulla/\">salvoaranzulla</a>, <a href=\"https://profiles.wordpress.org/samful/\">Sam Fullalove</a>, <a href=\"https://profiles.wordpress.org/sswebster/\">Sam Webster</a>, <a href=\"https://profiles.wordpress.org/solarissmoke/\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/samueljseay/\">samueljseay</a>, <a href=\"https://profiles.wordpress.org/pacifika/\">Sander van Dragt</a>, <a href=\"https://profiles.wordpress.org/sanzeeb3/\">Sanjeev Aryal</a>, <a href=\"https://profiles.wordpress.org/progremzion/\">Sanket Mehta</a>, <a href=\"https://profiles.wordpress.org/sarahricker/\">sarahricker</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">Sathiyamoorthy V</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/scarolan/\">scarolan</a>, <a href=\"https://profiles.wordpress.org/scholdstrom/\">scholdstrom</a>, <a href=\"https://profiles.wordpress.org/sc0ttkclark/\">Scott Kingsley Clark</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/scottsmith/\">Scott Smith</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scribu/\">scribu</a>, <a href=\"https://profiles.wordpress.org/scruffian/\">scruffian</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/seanpaulrasmussen/\">seanpaulrasmussen</a>, <a href=\"https://profiles.wordpress.org/seayou/\">seayou</a>, <a href=\"https://profiles.wordpress.org/senatorman/\">senatorman</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/vjik/\">Sergey Predvoditelev</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">Sergio de Falco</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/functionalrhyme/\">Shannon Smith</a>, <a href=\"https://profiles.wordpress.org/wpshades/\">Shantanu Desai</a>, <a href=\"https://profiles.wordpress.org/shaunandrews/\">shaunandrews</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/shawnz/\">shawnz</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/shulard/\">shulard</a>, <a href=\"https://profiles.wordpress.org/siliconforks/\">siliconforks</a>, <a href=\"https://profiles.wordpress.org/simonwheatley/\">Simon Wheatley</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/sinatrateam/\">sinatrateam</a>, <a href=\"https://profiles.wordpress.org/sjmur/\">sjmur</a>, <a href=\"https://profiles.wordpress.org/skarabeq/\">skarabeq</a>, <a href=\"https://profiles.wordpress.org/skorasaurus/\">skorasaurus</a>, <a href=\"https://profiles.wordpress.org/skoskie/\">skoskie</a>, <a href=\"https://profiles.wordpress.org/slushman/\">slushman</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>, <a href=\"https://profiles.wordpress.org/seth17/\">SpearsMarketing</a>, <a href=\"https://profiles.wordpress.org/sphakka/\">sphakka</a>, <a href=\"https://profiles.wordpress.org/squarecandy/\">squarecandy</a>, <a href=\"https://profiles.wordpress.org/sreedoap/\">sreedoap</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/garubi/\">Stefano Garuti</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/sswells/\">Steph Wells</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/stephencronin/\">Stephen Cronin</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/stevegibson12/\">stevegibson12</a>, <a href=\"https://profiles.wordpress.org/sterndata/\">Steven Stern (sterndata)</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/stevenkussmaul/\">stevenkussmaul</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/stiofansisland/\">Stiofan</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sum1/\">SUM1</a>, <a href=\"https://profiles.wordpress.org/quadthemes/\">Sunny</a>, <a href=\"https://profiles.wordpress.org/sunnyratilal/\">Sunny Ratilal</a>, <a href=\"https://profiles.wordpress.org/sushyant/\">Sushyant Zavarzadeh</a>, <a href=\"https://profiles.wordpress.org/suzylah/\">suzylah</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/smub/\">Syed Balkhi</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/szaqal21/\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tangrufus/\">Tang Rufus</a>, <a href=\"https://profiles.wordpress.org/utz119/\">TeBenachi</a>, <a href=\"https://profiles.wordpress.org/tessawatkinsllc/\">Tessa Watkins LLC</a>, <a href=\"https://profiles.wordpress.org/wildworks/\">Tetsuaki Hamano</a>, <a href=\"https://profiles.wordpress.org/themiked/\">theMikeD</a>, <a href=\"https://profiles.wordpress.org/theolg/\">theolg</a>, <a href=\"https://profiles.wordpress.org/tweetythierry/\">Thierry Muller</a>, <a href=\"https://profiles.wordpress.org/thimalw/\">Thimal Wickremage</a>, <a href=\"https://profiles.wordpress.org/webzunft/\">Thomas M</a>, <a href=\"https://profiles.wordpress.org/tfrommen/\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith/\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/tiagohillebrandt/\">Tiago Hillebrandt</a>, <a href=\"https://profiles.wordpress.org/tillkruess/\">Till Krüss</a>, <a href=\"https://profiles.wordpress.org/sippis/\">Timi Wahalahti</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tkama/\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tmdesigned/\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tmoore41/\">tmoore41</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/tofandel/\">Tofandel</a>, <a href=\"https://profiles.wordpress.org/tomdude/\">tomdude</a>, <a href=\"https://profiles.wordpress.org/tferry/\">Tommy Ferry</a>, <a href=\"https://profiles.wordpress.org/starbuck/\">Tony G</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul I Chowdhury</a>, <a href=\"https://profiles.wordpress.org/travisnorthcutt/\">Travis Northcutt</a>, <a href=\"https://profiles.wordpress.org/treecutter/\">treecutter</a>, <a href=\"https://profiles.wordpress.org/truongwp/\">truongwp</a>, <a href=\"https://profiles.wordpress.org/tsimmons/\">tsimmons</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/vagios/\">Vagios Vlachos</a>, <a href=\"https://profiles.wordpress.org/valchovski/\">valchovski</a>, <a href=\"https://profiles.wordpress.org/valentinbora/\">Valentin Bora</a>, <a href=\"https://profiles.wordpress.org/vayu/\">Vayu Robins</a>, <a href=\"https://profiles.wordpress.org/veromary/\">veromary</a>, <a href=\"https://profiles.wordpress.org/szepeviktor/\">Viktor Szépe</a>, <a href=\"https://profiles.wordpress.org/vinayakanivase/\">Vinayak Anivase</a>, <a href=\"https://profiles.wordpress.org/vinkla/\">vinkla</a>, <a href=\"https://profiles.wordpress.org/virginienacci/\">virginienacci</a>, <a href=\"https://profiles.wordpress.org/planvova/\">Vladimir</a>, <a href=\"https://profiles.wordpress.org/vabrashev/\">Vladislav Abrashev</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/voyager131/\">voyager131</a>, <a href=\"https://profiles.wordpress.org/vtieu/\">vtieu</a>, <a href=\"https://profiles.wordpress.org/webaware/\">webaware</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">williampatton</a>, <a href=\"https://profiles.wordpress.org/planningwrite/\">Winstina Hughes</a>, <a href=\"https://profiles.wordpress.org/wittich/\">wittich</a>, <a href=\"https://profiles.wordpress.org/wpdesk/\">wpdesk</a>, <a href=\"https://profiles.wordpress.org/wpdo5ea/\">WPDO</a>, <a href=\"https://profiles.wordpress.org/alexandreb3/\">WPMarmite</a>, <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>, <a href=\"https://profiles.wordpress.org/yashrs/\">yashrs</a>, <a href=\"https://profiles.wordpress.org/yoancutillas/\">yoancutillas</a>, <a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/yohannp/\">yohannp</a>, <a href=\"https://profiles.wordpress.org/yuhin/\">yuhin</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/ysalame/\">Yuri Salame</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\">Yvette Sonneveld</a>, <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/zaheerahmad/\">zaheerahmad</a>, <a href=\"https://profiles.wordpress.org/zakkath/\">zakkath</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a>, and <a href=\"https://profiles.wordpress.org/chesio/\">Česlav Przywara</a>.</p>\n\n\n\n<p>Pour finir, un grand merci à celles et ceux qui ont participé à la traduction de WordPress 5.6 en français&nbsp;:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/anthonychaussin\">Anthony Chaussin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ajoah\">Aurélien Joahny</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bastho\">Bastien Ho</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bonaldi\">Bonaldi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/btpub\">Bruno Tritsch</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clementpolito\">Clément Polito</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cryptrz\">cryptrz</a>, <a href=\"https://profiles.wordpress.org/wolforg\">Didier Demory / Wolforg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drixe\">drixe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/emlebrun\">Emilie LEBRUN</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fxbenard\">FX Bénard</a>, <a href=\"https://profiles.wordpress.org/jdy68\">Jenny Dupuy</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeherve\">Jeremy Herve</a>,&nbsp;<a href=\"https://profiles.wordpress.org/leprincenoir\">Kantari Samy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/peexy\">Laurent Naudier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webaxones\">Loïc Antignac</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chaton666\">Marie Comet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maximejobin\">Maxime Jobin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maxpertici\">Maxime Pertici</a>,&nbsp;<a href=\"https://profiles.wordpress.org/momo-fr\">momo-fr</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicolasricher\">Nicolas Richer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/papicx\">papicx</a>,&nbsp;<a href=\"https://profiles.wordpress.org/casiepa\">Pascal Casier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pixxxel\">Pierre Bichet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/larrach\">Rachel Peter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastienserre\">Sébastien SERRE</a>,&nbsp;<a href=\"https://profiles.wordpress.org/crash_47\">Thomas Piron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spaceshipone\">Timothée Brosille</a>,&nbsp;<a href=\"https://profiles.wordpress.org/translationsbyautomattic\">Translations by Automattic</a>, et&nbsp;<a href=\"https://profiles.wordpress.org/wptranslationsorg\">WP-Translations</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://fr.wordpress.org/2020/12/09/wordpress-5-6-simone/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"Gestion des problèmes potentiels liés à la mise à jour de jQuery dans WordPress 5.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Dec 2020 16:29:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:5:\"Guide\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:31:\"Nouvelles versions de WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://fr.wordpress.org/?p=1835\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:350:\"En août 2020, WordPress 5.5 a cessé d&#8217;utiliser le script jQuery Migrate par défaut. Avec la sortie prochaine de WordPress 5.6, la version embarquée de jQuery sera mise à jour de la version 1.12.4-wp à la version 3.5.1. Il est important de préciser que cette mise à jour de jQuery est aujourd&#8217;hui indispensable, car cette [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Justin Ahinon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:14872:\"\n<p>En août 2020, WordPress 5.5 a cessé d&rsquo;utiliser le script jQuery Migrate par défaut. <strong>Avec la sortie prochaine de WordPress 5.6, la version embarquée de jQuery sera mise à jour de la version <code>1.12.4-wp</code> à la version <code>3.5.1</code>.</strong></p>\n\n\n\n<p>Il est important de préciser que cette mise à jour de jQuery est aujourd&rsquo;hui indispensable, car cette ancienne version n&rsquo;est plus prise en charge par jQuery et la conserver pose des problèmes de sécurité sur le long terme.</p>\n\n\n\n<p>Dans cet article, vous trouverez l&rsquo;ensemble des préconisations pour réduire au maximum les risques lors de la mise à jour de votre site vers WordPress 5.6 et sa nouvelle version de jQuery.</p>\n\n\n\n<span id=\"more-1835\"></span>\n\n\n\n<p>Ainsi, avec la mise à jour majeure WordPress 5.6, qui elle-même met à jour la version de jQuery, certaines extensions ou certains thèmes qui s&rsquo;appuient sur du code jQuery obsolète risquent de présenter des problèmes, allant de simples avertissement affichés uniquement sur la console du navigateur à des problèmes plus graves pouvant générer des erreurs fatales d&rsquo;exécution du code JavaScript.</p>\n\n\n\n<h2>La solution utilisée lors de la sortie de WordPress 5.5</h2>\n\n\n\n<p>Pour la sortie de WordPress 5.5, l’extension <a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">Enable jQuery Migrate Helper</a> a été publiée sur le répertoire officiel des extensions WordPress. Elle permettait de réactiver le script jQuery Migrate et de mettre en évidence les éléments à corriger sur l&rsquo;interface d&rsquo;administration de WordPress.</p>\n\n\n\n<p>Initialement, cette extension devait être une solution temporaire pour donner aux personnes développant des extensions ou des thèmes un peu plus de temps pour faire les mises à jour au cas où les changements de la version 5.5 les prendraient au dépourvu.</p>\n\n\n\n<p>Malheureusement, de nombreuses extensions et thèmes (au moment de la publication de cet article, avant la sortie de WordPress 5.6) présents sur le répertoire officiel WordPress.org sont encore basés sur un code obsolète, sans parler des extensions et thèmes payants proposés sur les places de marché premium.</p>\n\n\n\n<p>Cette extension est donc encore massivement utilisée dans l&rsquo;écosystème.</p>\n\n\n\n<h2>Anticiper les problèmes de compatibilité jQuery pour WordPress 5.6</h2>\n\n\n\n<p>Compte tenu de ces éléments, l’extension <a href=\"https://fr.wordpress.org/plugins/enable-jquery-migrate-helper/\">Enable jQuery Migrate Helper</a> a été mise à jour pour la sortie de WordPress 5.6, afin que votre site puisse continuer à utiliser les anciennes versions de jQuery en cas de besoin.</p>\n\n\n\n<p class=\"has-background has-medium-font-size\" style=\"background-color:#b4d9dd\">Nous vous conseillons donc d&rsquo;installer (ou si vous l&rsquo;avez déjà, de conserver) l’extension Enable jQuery Migrate Helper sur votre site lors de votre passage à WordPress 5.6.</p>\n\n\n\n<p>Cette solution doit cependant être considérée comme étant provisoire, car les anciennes versions de jQuery ne reçoivent plus de mises à jour de sécurité, et qu&rsquo;elles pourront donc à l&rsquo;avenir compromettre la sécurité de votre site.</p>\n\n\n\n<h2>Présentation de l&rsquo;extension <em>Enable jQuery Migrate Helper</em></h2>\n\n\n\n<p>Cette extension propose des fonctionnalités et des outils permettant de passer d&rsquo;une version de jQuery à une autre, soit par le biais d&rsquo;une mise à jour du code des extensions ou des thèmes par leurs auteurs, soit en donnant au propriétaire du site le temps de trouver des alternatives.</p>\n\n\n\n<h3>Remontée des éléments posant problème</h3>\n\n\n\n<p>L&rsquo;extension permet de détecter les problèmes rencontrés sur votre site&nbsp;: lorsque vous naviguez sur votre site avec l&rsquo;extension active, elle identifie les dépréciations relatives à du code jQuery obsolète et vous les affiche, si vous être connecté·e avec votre compte d&rsquo;administration du site.</p>\n\n\n\n<p>Les dépréciations sont des avertissements liés à une utilisation de code obsolète, mais qui sera encore pris en charge pendant une période de transition. Toute fonctionnalité marquée comme étant dépréciée doit être remplacée par du code moderne dès que possible, afin de s&rsquo;assurer que tout fonctionne correctement sur le long terme.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress.png\"><img loading=\"lazy\" width=\"920\" height=\"32\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress.png\" alt=\"\" class=\"wp-image-1837\" srcset=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress.png 920w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress-300x10.png 300w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Tableau-de-bord-‹-WordPress-Trunk-—-WordPress-768x27.png 768w\" sizes=\"(max-width: 920px) 100vw, 920px\" /></a><figcaption><small>Ci-dessus, la barre d&rsquo;administration affichant les avertissements de dépréciation. Cliquez sur l&rsquo;image pour l&rsquo;ouvrir en taille originale dans un nouvel onglet.</small></figcaption></figure>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>Le premier emplacement où vous rencontrerez ces avertissements de dépréciations sera la barre d&rsquo;administration située en haut de page lorsque vous êtes connecté·e en tant qu&rsquo;administrateur ou administratrice.</p>\n\n\n\n<p>Vous y trouverez le nombre de problèmes rencontrés sur la page courante. Les avertissements de dépréciations sur la partie publique du site sont enregistrés et visualisables sur une page dédiée à cela et uniquement visible par les admins. Sur l&rsquo;interface d&rsquo;administration, les avertissements sont directement affichés à l&rsquo;écran, et sont également enregistrés, la configuration choisie au niveau des réglages de l&rsquo;extension.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Outils-‹-WordPress-Trunk-—-WordPress.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"160\" height=\"274\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-Outils-‹-WordPress-Trunk-—-WordPress.png\" alt=\"\" class=\"wp-image-1838\" /></a></figure></div>\n\n\n\n<p>Si des dépréciations ont déjà été enregistrées, elles peuvent également afficher dans le menu d’administration un indicateur du nombre d&rsquo;éléments enregistrés comme le montre la capture d&rsquo;écran ci-contre.</p>\n\n\n\n<p>Ces éléments resteront marqués jusqu&rsquo;à ce que vous effaciez les enregistrements concernés.</p>\n\n\n\n<figure class=\"wp-block-image size-full\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress.png\" target=\"_blank\" rel=\"noopener\"><img loading=\"lazy\" width=\"1152\" height=\"368\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress.png\" alt=\"\" class=\"wp-image-1839\" srcset=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress.png 1152w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress-300x96.png 300w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress-1024x327.png 1024w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress-768x245.png 768w\" sizes=\"(max-width: 1152px) 100vw, 1152px\" /></a><figcaption><small>Ci-dessus, un aperçu des journaux de dépréciations, avec des exemples d&rsquo;extensions contenant du code déprécié. Cliquez sur l&rsquo;image pour l&rsquo;afficher en grand dans un nouvel onglet.</small></figcaption></figure>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>La page du journal des dépréciations permet d’avoir dans la console JavaScript une représentation visuelle des avertissements souvent cachés et destinés aux développeurs et développeuses.</p>\n\n\n\n<p>Elle contient aussi un lien direct vers le site web de l’extension ou du thème, ou vers le site de la personne qui développe l&rsquo;extension ou le thème, si aucun autre lien n&rsquo;est disponible. Ce type d&rsquo;accès direct aidera, nous l&rsquo;espérons, les utilisateurs et utilisatrices de WordPress à obtenir des versions mises à jour ou à remonter les problèmes rencontrés aux développeurs et développeuses d&rsquo;extensions et de thèmes.</p>\n\n\n\n<h2>Basculer sur l&rsquo;ancienne version de jQuery</h2>\n\n\n\n<figure class=\"wp-block-image size-full\"><a href=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1.png\"><img loading=\"lazy\" width=\"1181\" height=\"471\" src=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1.png\" alt=\"\" class=\"wp-image-1841\" srcset=\"https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1.png 1181w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1-300x120.png 300w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1-1024x408.png 1024w, https://fr.wordpress.org/files/2020/12/Screenshot_2020-12-07-jQuery-Migrate-‹-WordPress-Trunk-—-WordPress1-768x306.png 768w\" sizes=\"(max-width: 1181px) 100vw, 1181px\" /></a><figcaption><small>La page de réglages de l&rsquo;extension, avec les options pour changer les versions de jQuery. Cliquer sur l&rsquo;image pour l&rsquo;ouvrir en grand dans un nouvel onglet.</small></figcaption></figure>\n\n\n\n<div style=\"height:10px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>La page des réglages de l&rsquo;extension permet aux administrateurs et administratrices de sites de choisir entre l&rsquo;utilisation de l&rsquo;ancienne version de jQuery (avec un avertissement visible par les admins sur chaque page avec les erreurs remontées), et une option permettant d&rsquo;activer l&rsquo;enregistrement des dépréciations générées par les personnes visitant le site (option nommée «&nbsp;journalisation publique&nbsp;»).</p>\n\n\n\n<p>La journalisation publique peut entraîner une charge supplémentaire sur votre serveur, car toute personne qui consulte une page présentant des erreurs générera automatiquement une nouvelle entrée dans le journal des erreurs. Cette option n&rsquo;est a activer que si le support de WordPress ou d&rsquo;une extension vous le demande</p>\n\n\n\n<h3>Changement automatique de version de jQuery</h3>\n\n\n\n<p>Nous sommes conscients que le public cible du logiciel WordPress est largement constitué de personnes n&rsquo;ayant pas forcément les connaissances techniques permettant de prendre les bonnes décisions.</p>\n\n\n\n<p>C&rsquo;est pourquoi un mécanisme automatisé a été mis en place sur l&rsquo;extension <em>Enable jQuery Migrate Helper</em> afin de basculer automatiquement sur l&rsquo;ancienne version de jQuery dans le cas où le site ne serait pas fonctionnel sur la nouvelle version. Un e-mail de notification sera alors envoyé au propriétaire du site pour l&rsquo;informer de cela.</p>\n\n\n\n<h2>Envoi de notifications e-mail automatisées</h2>\n\n\n\n<figure class=\"wp-block-image size-full\"><a href=\"https://fr.wordpress.org/files/2020/12/image-6.png\"><img loading=\"lazy\" width=\"1643\" height=\"471\" src=\"https://fr.wordpress.org/files/2020/12/image-6.png\" alt=\"\" class=\"wp-image-1843\" srcset=\"https://fr.wordpress.org/files/2020/12/image-6.png 1643w, https://fr.wordpress.org/files/2020/12/image-6-300x86.png 300w, https://fr.wordpress.org/files/2020/12/image-6-1024x294.png 1024w, https://fr.wordpress.org/files/2020/12/image-6-768x220.png 768w, https://fr.wordpress.org/files/2020/12/image-6-1536x440.png 1536w\" sizes=\"(max-width: 1643px) 100vw, 1643px\" /></a><figcaption><small>Exemple de notification e-mail envoyée lors de l&rsquo;utilisation d&rsquo;une ancienne version de jQuery.</small></figcaption></figure>\n\n\n\n<p>Une fois par semaine, l&rsquo;extension enverra un e-mail à la personne chargée de l&rsquo;administration du site pour l&rsquo;informer de l&rsquo;état actuel de son site. Cette notification contient des informations sur les problèmes liés à jQuery qui ont été enregistrés au cours de la semaine écoulée.</p>\n\n\n\n<p>Nous espérons ainsi que les personnes chargées de l’administration de leur site pourront ainsi prendre en main la résolution des problèmes touchant leur site, notamment en mettant à jour les extensions et thèmes générant des erreurs sur le site.</p>\n\n\n\n<p>Dans ces mêmes e-mails, nous encourageons également la suppression de l&rsquo;extension jQuery Migrate Helper si aucune dépréciation n&rsquo;a été enregistrée au cours de la semaine écoulée. Cela permettra aux équipes de WordPress.org d&rsquo;avoir un aperçu en temps réel des problèmes de compatibilité jQuery, en observant le nombre d&rsquo;installations actives de l&rsquo;extension.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Si vous avez des questions ou si vous avez besoin d&rsquo;aide, n&rsquo;hésitez pas à vous inscrire sur le <a href=\"https://wpfr.net/support\">forum d&rsquo;entraide de l&rsquo;association WordPress Francophone</a> ou à <a href=\"https://wpfr.net/slack\">rejoindre le Slack WordPress-Fr</a>.</p>\n\n\n\n<p>Cet article est une traduction par <a href=\'https://profiles.wordpress.org/justinahinon/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>justinahinon</a> de l’article <em><a href=\"https://make.wordpress.org/support/2020/12/handling-potential-jquery-issues-in-wordpress-5-6/\">Handling potential jQuery issues in WordPress 5.6</a></em><a href=\"https://make.wordpress.org/support/2020/12/handling-potential-jquery-issues-in-wordpress-5-6/\"> (article en anglais)</a>, initialement publié par <a href=\'https://profiles.wordpress.org/clorith/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>clorith</a> sur le blog de développement du cœur WordPress. Relu et adapté par <a href=\'https://profiles.wordpress.org/audrasjb/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>audrasjb</a> et <a href=\'https://profiles.wordpress.org/fxbenard/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>fxbenard</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:125:\"https://fr.wordpress.org/2020/12/07/gestion-des-problemes-potentiels-lies-a-la-mise-a-jour-de-jquery-dans-wordpress-5-6/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://fr.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 04 Nov 2021 08:48:51 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 29 Oct 2021 15:51:45 GMT\";s:4:\"link\";s:61:\"<https://fr.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20201016172007\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(182, '_transient_timeout_feed_mod_0d2db5fea5a8633b56992c916819b198', '1636058933', 'no'),
(183, '_transient_feed_mod_0d2db5fea5a8633b56992c916819b198', '1636015733', 'no'),
(184, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1636058935', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(186, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1636058935', 'no'),
(187, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1636015735', 'no'),
(188, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1636058935', 'no'),
(189, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://fr.wordpress.org/2021/10/24/deposer-et-gerer-une-extension-sur-wordpress-org-documentation-en-francais/\'>Déposer et gérer une extension sur WordPress.org : documentation en français</a></li><li><a class=\'rsswidget\' href=\'https://fr.wordpress.org/2021/09/06/rejoignez-nous-le-24-septembre-pour-le-wordpress-translation-day-2021/\'>Rendez-vous le 24 septembre 2021 pour le WordPress Translation Day !</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/birmingham-to-host-first-in-person-wordcamp-february-4-5-2022?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=birmingham-to-host-first-in-person-wordcamp-february-4-5-2022\'>WPTavern: Birmingham to Host First In-Person WordCamp, February 4-5, 2022</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-has-never-offered-an-ideal-writing-experience?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=wordpress-has-never-offered-an-ideal-writing-experience\'>WPTavern: WordPress Has Never Offered an Ideal Writing Experience</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/podcast/9-tara-king-on-encouraging-developers-towards-a-gutenberg-future?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=9-tara-king-on-encouraging-developers-towards-a-gutenberg-future\'>WPTavern: #9 – Tara King on Encouraging Developers Towards a Gutenberg Future</a></li></ul></div>', 'no'),
(196, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(200, '_site_transient_timeout_theme_roots', '1636033010', 'no'),
(201, '_site_transient_theme_roots', 'a:4:{s:8:\"montheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(203, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636031454;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1635948504:1'),
(4, 5, '_edit_lock', '1636015618:1'),
(7, 7, '_edit_lock', '1635948285:1'),
(8, 9, '_wp_attached_file', '2021/11/Pascal-Duquenne-web.jpg'),
(9, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:448;s:6:\"height\";i:299;s:4:\"file\";s:31:\"2021/11/Pascal-Duquenne-web.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Pascal-Duquenne-web-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Pascal-Duquenne-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 5, '_thumbnail_id', '9'),
(17, 13, '_edit_lock', '1636015915:1'),
(18, 15, '_edit_lock', '1636015931:1'),
(19, 17, '_menu_item_type', 'post_type'),
(20, 17, '_menu_item_menu_item_parent', '0'),
(21, 17, '_menu_item_object_id', '13'),
(22, 17, '_menu_item_object', 'page'),
(23, 17, '_menu_item_target', ''),
(24, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 17, '_menu_item_xfn', ''),
(26, 17, '_menu_item_url', ''),
(27, 17, '_menu_item_orphaned', '1636017189'),
(28, 18, '_menu_item_type', 'post_type'),
(29, 18, '_menu_item_menu_item_parent', '0'),
(30, 18, '_menu_item_object_id', '15'),
(31, 18, '_menu_item_object', 'page'),
(32, 18, '_menu_item_target', ''),
(33, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 18, '_menu_item_xfn', ''),
(35, 18, '_menu_item_url', ''),
(36, 18, '_menu_item_orphaned', '1636017189'),
(37, 19, '_menu_item_type', 'post_type'),
(38, 19, '_menu_item_menu_item_parent', '0'),
(39, 19, '_menu_item_object_id', '2'),
(40, 19, '_menu_item_object', 'page'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', ''),
(45, 19, '_menu_item_orphaned', '1636017189'),
(46, 20, '_menu_item_type', 'post_type'),
(47, 20, '_menu_item_menu_item_parent', '0'),
(48, 20, '_menu_item_object_id', '13'),
(49, 20, '_menu_item_object', 'page'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', ''),
(55, 21, '_menu_item_type', 'post_type'),
(56, 21, '_menu_item_menu_item_parent', '0'),
(57, 21, '_menu_item_object_id', '15'),
(58, 21, '_menu_item_object', 'page'),
(59, 21, '_menu_item_target', ''),
(60, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 21, '_menu_item_xfn', ''),
(62, 21, '_menu_item_url', ''),
(64, 22, '_menu_item_type', 'post_type'),
(65, 22, '_menu_item_menu_item_parent', '0'),
(66, 22, '_menu_item_object_id', '2'),
(67, 22, '_menu_item_object', 'page'),
(68, 22, '_menu_item_target', ''),
(69, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 22, '_menu_item_xfn', ''),
(71, 22, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-03 13:40:52', '2021-11-03 12:40:52', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2021-11-03 13:40:52', '2021-11-03 12:40:52', '', 0, 'http://localhost:99/Wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-03 13:40:52', '2021-11-03 12:40:52', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:99/Wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2021-11-03 13:40:52', '2021-11-03 12:40:52', '', 0, 'http://localhost:99/Wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-03 13:40:52', '2021-11-03 12:40:52', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:99/Wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2021-11-03 13:40:52', '2021-11-03 12:40:52', '', 0, 'http://localhost:99/Wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-11-03 13:41:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-03 13:41:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:99/Wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2021-11-03 15:07:04', '2021-11-03 14:07:04', '<!-- wp:paragraph -->\n<p>Pudding apple pie cheesecake croissant tootsie roll gummi bears pastry candy. Oat cake ice cream tiramisu chupa chups jujubes tiramisu gummi bears chocolate bar tootsie roll. Halvah soufflé pudding wafer candy canes dragée chocolate bar candy canes. Chocolate bar marzipan powder oat cake soufflé carrot cake chupa chups. Oat cake cotton candy gummies biscuit bear claw jujubes pie jujubes pudding. Fruitcake powder sugar plum gummies bonbon chocolate cake brownie biscuit jujubes. Liquorice jelly powder soufflé cotton candy toffee sweet roll candy. Jujubes lemon drops sweet bear claw chupa chups. Candy cotton candy topping gummies chocolate cake tootsie roll ice cream candy jujubes. Biscuit muffin topping lollipop sugar plum icing cheesecake sweet marshmallow. Tiramisu candy oat cake fruitcake apple pie. Ice cream jujubes lollipop tootsie roll cupcake sugar plum chupa chups sugar plum. Lollipop oat cake powder pudding cookie dessert. Caramels dessert dragée sugar plum candy carrot cake muffin cotton candy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Topping tart dragée brownie oat cake carrot cake gummies sugar plum. Cake sesame snaps cookie sugar plum gummies cookie danish fruitcake dessert. Croissant dessert liquorice toffee apple pie pudding halvah chocolate bar. Gummies chupa chups candy canes gummies tiramisu jujubes pastry donut. Tiramisu brownie fruitcake sesame snaps biscuit fruitcake. Croissant soufflé topping liquorice gummies cupcake gummi bears carrot cake. Muffin danish lollipop cheesecake gingerbread topping apple pie. Fruitcake cheesecake wafer marzipan fruitcake cake chocolate bar. Croissant cake sesame snaps muffin tiramisu pudding jelly marshmallow. Topping candy canes donut apple pie shortbread. Macaroon biscuit topping tiramisu marzipan gingerbread cake macaroon. Candy canes brownie powder bonbon soufflé. Lollipop danish toffee sweet roll gummies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tart cookie muffin cheesecake jelly beans cupcake muffin ice cream oat cake. Jujubes cotton candy macaroon apple pie shortbread pastry cheesecake sesame snaps jelly-o. Lollipop tootsie roll shortbread sweet roll pudding cake. Macaroon gummies chocolate bar carrot cake tiramisu biscuit tiramisu. Chocolate pastry liquorice cookie gummies sesame snaps chocolate cake cake liquorice. Bear claw cake wafer lemon drops croissant. Fruitcake dessert chocolate cake pudding jelly tiramisu carrot cake donut. Cotton candy fruitcake candy bonbon candy canes. Danish wafer gingerbread apple pie gummies. Oat cake brownie sweet roll chocolate sugar plum pie. Ice cream bonbon cupcake tart cotton candy carrot cake. Donut powder muffin chupa chups muffin lemon drops sweet sesame snaps lollipop. Oat cake shortbread ice cream powder halvah danish shortbread brownie sweet roll.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chupa chups gummies pudding jelly-o apple pie chocolate cookie lemon drops. Cupcake fruitcake tiramisu powder sugar plum. Biscuit lemon drops cupcake croissant pie. Sweet roll fruitcake chocolate bar liquorice pudding gummi bears cupcake cookie. Gummies oat cake brownie sweet dragée gummi bears. Cheesecake jujubes sesame snaps ice cream danish marzipan. Sugar plum cake soufflé gingerbread liquorice cheesecake wafer donut. Marzipan candy gummi bears shortbread cake ice cream bonbon soufflé candy. Chocolate jelly sugar plum jujubes candy canes apple pie. Ice cream tootsie roll chocolate chocolate chocolate cake bonbon. Sesame snaps wafer sweet roll halvah dessert marshmallow jelly candy sweet. Croissant cake candy canes cupcake marshmallow candy sugar plum dessert. Muffin candy dragée soufflé powder chocolate bar icing. Soufflé gummi bears biscuit bear claw dessert chocolate bonbon caramels.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jelly beans sugar plum cake jelly halvah toffee toffee. Cheesecake ice cream toffee lemon drops jelly pastry jelly-o bear claw caramels. Lemon drops sesame snaps candy canes lemon drops cake macaroon gingerbread cookie soufflé. Fruitcake sesame snaps chocolate cupcake sesame snaps dessert gummies liquorice tart. Cheesecake cake gingerbread sugar plum jelly-o lemon drops jelly-o carrot cake. Brownie pudding donut pudding fruitcake gummi bears candy canes marshmallow. Sesame snaps oat cake danish tootsie roll topping tiramisu carrot cake. Jujubes sugar plum wafer fruitcake danish chocolate cake ice cream. Pastry chocolate dragée sweet roll jujubes dessert. Cookie dessert ice cream halvah caramels brownie. Soufflé jujubes donut marzipan ice cream. Oat cake sweet sweet tiramisu chupa chups. Pudding sweet chupa chups jujubes cupcake ice cream chocolate. Cookie brownie halvah dessert macaroon fruitcake soufflé pie.</p>\n<!-- /wp:paragraph -->', 'Mon article de test', '', 'publish', 'open', 'open', '', 'mon-article-de-test', '', '', '2021-11-04 09:25:36', '2021-11-04 08:25:36', '', 0, 'http://localhost:99/Wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2021-11-03 15:07:04', '2021-11-03 14:07:04', '<!-- wp:paragraph -->\n<p>Mon texte</p>\n<!-- /wp:paragraph -->', 'Mon article de test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-03 15:07:04', '2021-11-03 14:07:04', '', 5, 'http://localhost:99/Wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-11-03 15:07:08', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-03 15:07:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:99/Wordpress/?p=7', 0, 'post', '', 0),
(9, 1, '2021-11-03 15:31:37', '2021-11-03 14:31:37', '', 'Pascal-Duquenne-web', '', 'inherit', 'open', 'closed', '', 'pascal-duquenne-web', '', '', '2021-11-03 15:31:37', '2021-11-03 14:31:37', '', 5, 'http://localhost:99/Wordpress/wp-content/uploads/2021/11/Pascal-Duquenne-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2021-11-03 15:31:41', '2021-11-03 14:31:41', '<!-- wp:paragraph -->\n<p>Pudding apple pie cheesecake croissant tootsie roll gummi bears pastry candy. Oat cake ice cream tiramisu chupa chups jujubes tiramisu gummi bears chocolate bar tootsie roll. Halvah soufflé pudding wafer candy canes dragée chocolate bar candy canes. Chocolate bar marzipan powder oat cake soufflé carrot cake chupa chups. Oat cake cotton candy gummies biscuit bear claw jujubes pie jujubes pudding. Fruitcake powder sugar plum gummies bonbon chocolate cake brownie biscuit jujubes. Liquorice jelly powder soufflé cotton candy toffee sweet roll candy. Jujubes lemon drops sweet bear claw chupa chups. Candy cotton candy topping gummies chocolate cake tootsie roll ice cream candy jujubes. Biscuit muffin topping lollipop sugar plum icing cheesecake sweet marshmallow. Tiramisu candy oat cake fruitcake apple pie. Ice cream jujubes lollipop tootsie roll cupcake sugar plum chupa chups sugar plum. Lollipop oat cake powder pudding cookie dessert. Caramels dessert dragée sugar plum candy carrot cake muffin cotton candy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Topping tart dragée brownie oat cake carrot cake gummies sugar plum. Cake sesame snaps cookie sugar plum gummies cookie danish fruitcake dessert. Croissant dessert liquorice toffee apple pie pudding halvah chocolate bar. Gummies chupa chups candy canes gummies tiramisu jujubes pastry donut. Tiramisu brownie fruitcake sesame snaps biscuit fruitcake. Croissant soufflé topping liquorice gummies cupcake gummi bears carrot cake. Muffin danish lollipop cheesecake gingerbread topping apple pie. Fruitcake cheesecake wafer marzipan fruitcake cake chocolate bar. Croissant cake sesame snaps muffin tiramisu pudding jelly marshmallow. Topping candy canes donut apple pie shortbread. Macaroon biscuit topping tiramisu marzipan gingerbread cake macaroon. Candy canes brownie powder bonbon soufflé. Lollipop danish toffee sweet roll gummies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tart cookie muffin cheesecake jelly beans cupcake muffin ice cream oat cake. Jujubes cotton candy macaroon apple pie shortbread pastry cheesecake sesame snaps jelly-o. Lollipop tootsie roll shortbread sweet roll pudding cake. Macaroon gummies chocolate bar carrot cake tiramisu biscuit tiramisu. Chocolate pastry liquorice cookie gummies sesame snaps chocolate cake cake liquorice. Bear claw cake wafer lemon drops croissant. Fruitcake dessert chocolate cake pudding jelly tiramisu carrot cake donut. Cotton candy fruitcake candy bonbon candy canes. Danish wafer gingerbread apple pie gummies. Oat cake brownie sweet roll chocolate sugar plum pie. Ice cream bonbon cupcake tart cotton candy carrot cake. Donut powder muffin chupa chups muffin lemon drops sweet sesame snaps lollipop. Oat cake shortbread ice cream powder halvah danish shortbread brownie sweet roll.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chupa chups gummies pudding jelly-o apple pie chocolate cookie lemon drops. Cupcake fruitcake tiramisu powder sugar plum. Biscuit lemon drops cupcake croissant pie. Sweet roll fruitcake chocolate bar liquorice pudding gummi bears cupcake cookie. Gummies oat cake brownie sweet dragée gummi bears. Cheesecake jujubes sesame snaps ice cream danish marzipan. Sugar plum cake soufflé gingerbread liquorice cheesecake wafer donut. Marzipan candy gummi bears shortbread cake ice cream bonbon soufflé candy. Chocolate jelly sugar plum jujubes candy canes apple pie. Ice cream tootsie roll chocolate chocolate chocolate cake bonbon. Sesame snaps wafer sweet roll halvah dessert marshmallow jelly candy sweet. Croissant cake candy canes cupcake marshmallow candy sugar plum dessert. Muffin candy dragée soufflé powder chocolate bar icing. Soufflé gummi bears biscuit bear claw dessert chocolate bonbon caramels.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jelly beans sugar plum cake jelly halvah toffee toffee. Cheesecake ice cream toffee lemon drops jelly pastry jelly-o bear claw caramels. Lemon drops sesame snaps candy canes lemon drops cake macaroon gingerbread cookie soufflé. Fruitcake sesame snaps chocolate cupcake sesame snaps dessert gummies liquorice tart. Cheesecake cake gingerbread sugar plum jelly-o lemon drops jelly-o carrot cake. Brownie pudding donut pudding fruitcake gummi bears candy canes marshmallow. Sesame snaps oat cake danish tootsie roll topping tiramisu carrot cake. Jujubes sugar plum wafer fruitcake danish chocolate cake ice cream. Pastry chocolate dragée sweet roll jujubes dessert. Cookie dessert ice cream halvah caramels brownie. Soufflé jujubes donut marzipan ice cream. Oat cake sweet sweet tiramisu chupa chups. Pudding sweet chupa chups jujubes cupcake ice cream chocolate. Cookie brownie halvah dessert macaroon fruitcake soufflé pie.</p>\n<!-- /wp:paragraph -->', 'Mon article de test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-03 15:31:41', '2021-11-03 14:31:41', '', 5, 'http://localhost:99/Wordpress/?p=10', 0, 'revision', '', 0),
(12, 1, '2021-11-04 09:23:38', '2021-11-04 08:23:38', '<!-- wp:paragraph -->\n<p>Pudding apple pie cheesecake croissant tootsie roll gummi bears pastry candy. Oat cake ice cream tiramisu chupa chups jujubes tiramisu gummi bears chocolate bar tootsie roll. Halvah soufflé pudding wafer candy canes dragée chocolate bar candy canes. Chocolate bar marzipan powder oat cake soufflé carrot cake chupa chups. Oat cake cotton candy gummies biscuit bear claw jujubes pie jujubes pudding. Fruitcake powder sugar plum gummies bonbon chocolate cake brownie biscuit jujubes. Liquorice jelly powder soufflé cotton candy toffee sweet roll candy. Jujubes lemon drops sweet bear claw chupa chups. Candy cotton candy topping gummies chocolate cake tootsie roll ice cream candy jujubes. Biscuit muffin topping lollipop sugar plum icing cheesecake sweet marshmallow. Tiramisu candy oat cake fruitcake apple pie. Ice cream jujubes lollipop tootsie roll cupcake sugar plum chupa chups sugar plum. Lollipop oat cake powder pudding cookie dessert. Caramels dessert dragée sugar plum candy carrot cake muffin cotton candy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Topping tart dragée brownie oat cake carrot cake gummies sugar plum. Cake sesame snaps cookie sugar plum gummies cookie danish fruitcake dessert. Croissant dessert liquorice toffee apple pie pudding halvah chocolate bar. Gummies chupa chups candy canes gummies tiramisu jujubes pastry donut. Tiramisu brownie fruitcake sesame snaps biscuit fruitcake. Croissant soufflé topping liquorice gummies cupcake gummi bears carrot cake. Muffin danish lollipop cheesecake gingerbread topping apple pie. Fruitcake cheesecake wafer marzipan fruitcake cake chocolate bar. Croissant cake sesame snaps muffin tiramisu pudding jelly marshmallow. Topping candy canes donut apple pie shortbread. Macaroon biscuit topping tiramisu marzipan gingerbread cake macaroon. Candy canes brownie powder bonbon soufflé. Lollipop danish toffee sweet roll gummies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tart cookie muffin cheesecake jelly beans cupcake muffin ice cream oat cake. Jujubes cotton candy macaroon apple pie shortbread pastry cheesecake sesame snaps jelly-o. Lollipop tootsie roll shortbread sweet roll pudding cake. Macaroon gummies chocolate bar carrot cake tiramisu biscuit tiramisu. Chocolate pastry liquorice cookie gummies sesame snaps chocolate cake cake liquorice. Bear claw cake wafer lemon drops croissant. Fruitcake dessert chocolate cake pudding jelly tiramisu carrot cake donut. Cotton candy fruitcake candy bonbon candy canes. Danish wafer gingerbread apple pie gummies. Oat cake brownie sweet roll chocolate sugar plum pie. Ice cream bonbon cupcake tart cotton candy carrot cake. Donut powder muffin chupa chups muffin lemon drops sweet sesame snaps lollipop. Oat cake shortbread ice cream powder halvah danish shortbread brownie sweet roll.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chupa chups gummies pudding jelly-o apple pie chocolate cookie lemon drops. Cupcake fruitcake tiramisu powder sugar plum. Biscuit lemon drops cupcake croissant pie. Sweet roll fruitcake chocolate bar liquorice pudding gummi bears cupcake cookie. Gummies oat cake brownie sweet dragée gummi bears. Cheesecake jujubes sesame snaps ice cream danish marzipan. Sugar plum cake soufflé gingerbread liquorice cheesecake wafer donut. Marzipan candy gummi bears shortbread cake ice cream bonbon soufflé candy. Chocolate jelly sugar plum jujubes candy canes apple pie. Ice cream tootsie roll chocolate chocolate chocolate cake bonbon. Sesame snaps wafer sweet roll halvah dessert marshmallow jelly candy sweet. Croissant cake candy canes cupcake marshmallow candy sugar plum dessert. Muffin candy dragée soufflé powder chocolate bar icing. Soufflé gummi bears biscuit bear claw dessert chocolate bonbon caramels.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jelly beans sugar plum cake jelly halvah toffee toffee. Cheesecake ice cream toffee lemon drops jelly pastry jelly-o bear claw caramels. Lemon drops sesame snaps candy canes lemon drops cake macaroon gingerbread cookie soufflé. Fruitcake sesame snaps chocolate cupcake sesame snaps dessert gummies liquorice tart. Cheesecake cake gingerbread sugar plum jelly-o lemon drops jelly-o carrot cake. Brownie pudding donut pudding fruitcake gummi bears candy canes marshmallow. Sesame snaps oat cake danish tootsie roll topping tiramisu carrot cake. Jujubes sugar plum wafer fruitcake danish chocolate cake ice cream. Pastry chocolate dragée sweet roll jujubes dessert. Cookie dessert ice cream halvah caramels brownie. Soufflé jujubes donut marzipan ice cream. Oat cake sweet sweet tiramisu chupa chups. Pudding sweet chupa chups jujubes cupcake ice cream chocolate. Cookie brownie halvah dessert macaroon fruitcake soufflé pie.</p>\n<!-- /wp:paragraph -->', 'Mon article de test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-04 09:23:38', '2021-11-04 08:23:38', '', 5, 'http://localhost:99/Wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-11-04 09:54:13', '2021-11-04 08:54:13', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-11-04 09:54:13', '2021-11-04 08:54:13', '', 0, 'http://localhost:99/Wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-11-04 09:54:13', '2021-11-04 08:54:13', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-11-04 09:54:13', '2021-11-04 08:54:13', '', 13, 'http://localhost:99/Wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-11-04 09:54:33', '2021-11-04 08:54:33', '', 'Actualités', '', 'publish', 'closed', 'closed', '', 'actualites', '', '', '2021-11-04 09:54:33', '2021-11-04 08:54:33', '', 0, 'http://localhost:99/Wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-11-04 09:54:33', '2021-11-04 08:54:33', '', 'Actualités', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-11-04 09:54:33', '2021-11-04 08:54:33', '', 15, 'http://localhost:99/Wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-11-04 10:13:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-04 10:13:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:99/Wordpress/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-11-04 10:13:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-04 10:13:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:99/Wordpress/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2021-11-04 10:13:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-04 10:13:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:99/Wordpress/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-11-04 10:13:16', '2021-11-04 09:13:16', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2021-11-04 10:13:16', '2021-11-04 09:13:16', '', 0, 'http://localhost:99/Wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-11-04 10:13:16', '2021-11-04 09:13:16', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-11-04 10:13:16', '2021-11-04 09:13:16', '', 0, 'http://localhost:99/Wordpress/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2021-11-04 10:13:16', '2021-11-04 09:13:16', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-11-04 10:13:16', '2021-11-04 09:13:16', '', 0, 'http://localhost:99/Wordpress/?p=22', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'VTTLESLEUPSS'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"a3736f72f96d001edf555ad88a5fdc4bb674daa014c662189d8fd0309f090842\";a:4:{s:10:\"expiration\";i:1637152888;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 OPR/80.0.4170.61\";s:5:\"login\";i:1635943288;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1635950124'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'VTTLESLEUPSS', '$P$BWIFyHM3KcKzxZc7bWdagtorG/M8lb0', 'vttlesleupss', 'romain.mailly60@gmail.com', 'http://localhost:99/Wordpress', '2021-11-03 12:40:52', '', 0, 'VTTLESLEUPSS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données : `login-test`
--
CREATE DATABASE IF NOT EXISTS `login-test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login-test`;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, '$2y$10$UE6sOYeD/cQdpBqa0SzzIeFBAC0X6W8C6hCWtu49xpDA6flV8jZRK', NULL, '2021-11-17 09:11:56', '2021-11-17 09:11:56');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données : `oto`
--
CREATE DATABASE IF NOT EXISTS `oto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `oto`;

-- --------------------------------------------------------

--
-- Structure de la table `accessories`
--

CREATE TABLE `accessories` (
  `acc_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `acc_sale` decimal(12,2) NOT NULL,
  `acc_installing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `car_condition` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

CREATE TABLE `commercial` (
  `com_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `com_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_category` tinyint(1) NOT NULL,
  `cus_payment` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `opt_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `opt_sale` decimal(12,2) NOT NULL,
  `opt_installing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `requirement`
--

CREATE TABLE `requirement` (
  `req_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `req_type` varchar(50) NOT NULL,
  `req_repair` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Index pour la table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Index pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`opt_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Index pour la table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `opt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Contraintes pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD CONSTRAINT `commercial_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Contraintes pour la table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Contraintes pour la table `requirement`
--
ALTER TABLE `requirement`
  ADD CONSTRAINT `requirement_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);
--
-- Base de données : `papyrus`
--
CREATE DATABASE IF NOT EXISTS `papyrus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `papyrus`;

-- --------------------------------------------------------

--
-- Structure de la table `entcom`
--

CREATE TABLE `entcom` (
  `numcom` int(11) NOT NULL,
  `obscom` varchar(50) DEFAULT NULL,
  `datcom` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numfou` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entcom`
--

INSERT INTO `entcom` (`numcom`, `obscom`, `datcom`, `numfou`) VALUES
(70010, '', '2018-04-23 13:59:51', 120),
(70011, 'Commande urgente', '2018-04-23 13:59:51', 540),
(70020, '', '2018-04-23 13:59:51', 9120),
(70025, 'Commande urgente', '2018-04-23 13:59:51', 9150),
(70210, 'Commande cadencée', '2018-04-23 13:59:51', 120),
(70250, 'Commande cadencée', '2018-04-23 13:59:51', 8700),
(70300, '', '2018-04-23 13:59:51', 9120),
(70620, '', '2018-04-23 13:59:51', 540),
(70625, '', '2018-04-23 13:59:51', 120),
(70629, '', '2018-04-23 13:59:51', 9180);

-- --------------------------------------------------------

--
-- Structure de la table `fournis`
--

CREATE TABLE `fournis` (
  `numfou` int(11) NOT NULL,
  `nomfou` varchar(25) NOT NULL,
  `ruefou` varchar(50) NOT NULL,
  `posfou` char(5) NOT NULL,
  `vilfou` varchar(30) NOT NULL,
  `confou` varchar(15) NOT NULL,
  `satisf` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournis`
--

INSERT INTO `fournis` (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES
(120, 'GROBRIGAND', '20 rue du papier', '92200', 'papercity', 'Georges', 8),
(540, 'ECLIPSE', '53 rue laisse flotter les rubans', '78250', 'Bugbugville', 'Nestor', 7),
(8700, 'MEDICIS', '120 rue des plantes', '75014', 'Paris', 'Lison', 0),
(9120, 'DISCOBOL', '11 rue des sports', '85100', 'La Roche sur Yon', 'Hercule', 8),
(9150, 'DEPANPAP', '26 avenue des locomotives', '59987', 'Coroncountry', 'Pollux', 5),
(9180, 'HURRYTAPE', '68 boulevard des octets', '4044', 'Dumpville', 'Track', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ligcom`
--

CREATE TABLE `ligcom` (
  `numcom` int(11) NOT NULL,
  `numlig` tinyint(4) NOT NULL,
  `codart` char(4) NOT NULL,
  `qtecde` int(11) NOT NULL,
  `priuni` decimal(5,0) NOT NULL,
  `qteliv` int(11) DEFAULT NULL,
  `derliv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligcom`
--

INSERT INTO `ligcom` (`numcom`, `numlig`, `codart`, `qtecde`, `priuni`, `qteliv`, `derliv`) VALUES
(70010, 1, 'I100', 3000, '470', 3000, '2007-03-15'),
(70010, 2, 'I105', 2000, '485', 2000, '2007-07-05'),
(70010, 3, 'I108', 1000, '680', 1000, '2007-08-20'),
(70010, 4, 'D035', 200, '40', 250, '2007-02-20'),
(70010, 5, 'P220', 6000, '3500', 6000, '2007-03-31'),
(70010, 6, 'P240', 6000, '2000', 2000, '2007-03-31'),
(70011, 1, 'I105', 1000, '600', 1000, '2007-05-16'),
(70011, 2, 'P220', 10000, '3500', 10000, '2007-08-31'),
(70020, 1, 'B001', 200, '140', 0, '2007-12-31'),
(70020, 2, 'B002', 200, '140', 0, '2007-12-31'),
(70025, 1, 'I100', 1000, '590', 1000, '2007-05-15'),
(70025, 2, 'I105', 500, '590', 500, '2007-03-15'),
(70210, 1, 'I100', 1000, '470', 1000, '2007-07-15'),
(70250, 1, 'P230', 15000, '4900', 12000, '2007-12-15'),
(70250, 2, 'P220', 10000, '3350', 10000, '2007-11-10'),
(70300, 1, 'I100', 50, '790', 50, '2007-10-31'),
(70620, 1, 'I105', 200, '600', 200, '2007-11-01'),
(70625, 1, 'I100', 1000, '470', 1000, '2007-10-15'),
(70625, 2, 'P220', 10000, '3500', 10000, '2007-10-31'),
(70629, 1, 'B001', 200, '140', 0, '2007-12-31'),
(70629, 2, 'B002', 200, '140', 0, '2007-12-31');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `codart` char(4) NOT NULL,
  `libart` varchar(30) NOT NULL,
  `stkale` int(11) NOT NULL,
  `stkphy` int(11) NOT NULL,
  `qteann` int(11) NOT NULL,
  `unimes` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES
('B001', 'Bande magnétique 1200', 20, 87, 240, 'unite'),
('B002', 'Bande magnétique 6250', 20, 12, 410, 'unite'),
('D035', 'CD R slim 80 mm', 40, 42, 150, 'B010'),
('D050', 'CD R-W 80mm', 50, 4, 0, 'B010'),
('I100', 'Papier 1 ex continu', 100, 557, 3500, 'B1000'),
('I105', 'Papier 2 ex continu', 75, 5, 2300, 'B1000'),
('I108', 'Papier 3 ex continu', 200, 557, 3500, 'B500'),
('I110', 'Papier 4 ex continu', 10, 12, 63, 'B400'),
('P220', 'Pré-imprimé commande', 500, 2500, 24500, 'B500'),
('P230', 'Pré-imprimé facture', 500, 250, 12500, 'B500'),
('P240', 'Pré-imprimé bulletin paie', 500, 3000, 6250, 'B500'),
('P250', 'Pré-imprimé bon livraison', 500, 2500, 24500, 'B500'),
('P270', 'Pré-imprimé bon fabrication', 500, 2500, 24500, 'B500'),
('R080', 'ruban Epson 850', 10, 2, 120, 'unite'),
('R132', 'ruban impl 1200 lignes', 25, 200, 182, 'unite');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `codart` char(4) NOT NULL,
  `numfou` int(11) NOT NULL,
  `delliv` smallint(6) NOT NULL,
  `qte1` int(11) NOT NULL,
  `prix1` decimal(5,0) NOT NULL,
  `qte2` int(11) DEFAULT NULL,
  `prix2` decimal(5,0) DEFAULT NULL,
  `qte3` int(11) DEFAULT NULL,
  `prix3` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES
('B001', 8700, 15, 0, '150', 50, '145', 100, '140'),
('B002', 8700, 15, 0, '210', 50, '200', 100, '185'),
('D035', 120, 0, 0, '40', 0, '0', 0, '0'),
('D035', 9120, 5, 0, '40', 100, '30', 0, '0'),
('I100', 120, 90, 0, '700', 50, '600', 120, '500'),
('I100', 540, 70, 0, '710', 60, '630', 100, '600'),
('I100', 9120, 60, 0, '800', 70, '600', 90, '500'),
('I100', 9150, 90, 0, '650', 90, '600', 200, '590'),
('I100', 9180, 30, 0, '720', 50, '670', 100, '490'),
('I105', 120, 90, 10, '705', 50, '630', 120, '500'),
('I105', 540, 70, 0, '810', 60, '645', 100, '600'),
('I105', 8700, 30, 0, '720', 50, '670', 100, '510'),
('I105', 9120, 60, 0, '920', 70, '800', 90, '700'),
('I105', 9150, 90, 0, '685', 90, '600', 200, '590'),
('I108', 120, 90, 5, '795', 30, '720', 100, '680'),
('I108', 9120, 60, 0, '920', 70, '820', 100, '780'),
('I110', 9120, 60, 0, '950', 70, '850', 90, '790'),
('I110', 9180, 90, 0, '900', 70, '870', 90, '835'),
('P220', 120, 15, 0, '3700', 100, '3500', 0, '0'),
('P220', 8700, 20, 50, '3500', 100, '3350', 0, '0'),
('P230', 120, 30, 0, '5200', 100, '5000', 0, '0'),
('P230', 8700, 60, 0, '5000', 50, '4900', 0, '0'),
('P240', 120, 15, 0, '2200', 100, '2000', 0, '0'),
('P250', 120, 30, 0, '1500', 100, '1400', 500, '1200'),
('P250', 9120, 30, 0, '1500', 100, '1400', 500, '1200'),
('R080', 9120, 10, 0, '120', 100, '100', 0, '0'),
('R132', 9120, 5, 0, '275', 0, '0', 0, '0');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entcom`
--
ALTER TABLE `entcom`
  ADD PRIMARY KEY (`numcom`),
  ADD KEY `numfou` (`numfou`);

--
-- Index pour la table `fournis`
--
ALTER TABLE `fournis`
  ADD PRIMARY KEY (`numfou`);

--
-- Index pour la table `ligcom`
--
ALTER TABLE `ligcom`
  ADD PRIMARY KEY (`numcom`,`numlig`),
  ADD KEY `codart` (`codart`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`codart`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`codart`,`numfou`),
  ADD KEY `numfou` (`numfou`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entcom`
--
ALTER TABLE `entcom`
  MODIFY `numcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70630;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `entcom`
--
ALTER TABLE `entcom`
  ADD CONSTRAINT `entcom_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`);

--
-- Contraintes pour la table `ligcom`
--
ALTER TABLE `ligcom`
  ADD CONSTRAINT `ligcom_ibfk_1` FOREIGN KEY (`numcom`) REFERENCES `entcom` (`numcom`),
  ADD CONSTRAINT `ligcom_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`);

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`),
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`);
--
-- Base de données : `suisse`
--
CREATE DATABASE IF NOT EXISTS `suisse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `suisse`;
--
-- Base de données : `vtt-les-leups`
--
CREATE DATABASE IF NOT EXISTS `vtt-les-leups` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vtt-les-leups`;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2021_12_08_141829_add_admin_column_to_users_table', 3);

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
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ddn` date DEFAULT NULL,
  `adhesion` date DEFAULT NULL,
  `licence` int(20) DEFAULT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp` int(5) DEFAULT NULL,
  `tel1` int(10) DEFAULT NULL,
  `tel2` int(10) DEFAULT NULL,
  `email1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiant` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `prenom`, `ddn`, `adhesion`, `licence`, `adresse`, `ville`, `cp`, `tel1`, `tel2`, `email1`, `email2`, `identifiant`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@hotmail.fr', NULL, '$2y$10$Yr5973rKVpov2IXz73nLc.282uLsgN3gZF1zkbY6PaH9pce66jwNO', NULL, '2021-12-07 08:19:43', '2021-12-07 08:19:43', 1),
(3, 'Mailly', 'Romain', '2001-06-27', '2021-12-07', 43070021, '30 rue de Poulainville', 'Amiens', 80000, 627041421, 687565487, 'romain.mailly4@gmail.com', 'jonhy.cafe@hotmail.fr', 'RM202112', 'romain.mailly4@gmail.com', NULL, '$2y$10$A657J5Rj/KauYauNDWWIX.PZQnoVtQf1sZM9sNzLUAYkgu0IjShOO', NULL, '2021-12-07 09:28:46', '2021-12-07 09:28:46', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `util_id` bigint(20) UNSIGNED NOT NULL,
  `util_nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_ddn` date NOT NULL,
  `util_adhesion` date NOT NULL,
  `util_licence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_cp` int(5) NOT NULL,
  `util_tel1` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_tel2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `util_email1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_email2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `util_identifiant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `util_mdp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`util_id`, `util_nom`, `util_prenom`, `util_ddn`, `util_adhesion`, `util_licence`, `util_adresse`, `util_ville`, `util_cp`, `util_tel1`, `util_tel2`, `util_email1`, `util_email2`, `util_identifiant`, `util_mdp`, `created_at`, `updated_at`) VALUES
(2, 'Café', 'Johny', '1964-10-17', '1975-01-01', '5485645454', '30 rue du Café', 'Seattle', 87922, '0689875654', '0687565487', 'johny.cafe@gmail.com', 'jonhy.cafe@hotmail.fr', 'JC197501', '$2y$10$uxmNr6SfTgp9s7rsLMHe0ey1.dspwwFKtWXHeDXUnKbJTyet89gUS', '2021-11-16 08:32:47', NULL),
(3, 'Afonso', 'Floria', '1999-09-21', '2021-11-16', '130725445', '31 rue de Poulainville', 'Amiens', 89000, '0698784587', NULL, 'floria.afonso@gmail.com', NULL, 'FA202111', '$2y$10$QUHhOugV.6aHgLVV82LMVe8C78FR/jx7vU5wMJwe7jTRMhRG0302C', '2021-11-16 13:16:52', NULL),
(5, 'Herault', 'Loucas', '1995-08-25', '2021-11-25', '5854854855', '30 rue de Poulainville', 'Amiens', 80000, '0698781256', NULL, 'loucas.herault@gmail.com', NULL, 'LH202111', '$2y$10$KWwylGx2UA3i1V3hpnaFN.rKZhvPZ9qdz/AliYyFOQ84RuMIT.WMm', '2021-11-25 08:20:26', NULL),
(6, 'Sacquet', 'Bilbo', '1994-11-18', '2002-11-29', '51464641', '30 rue de Lille', 'Cambrai', 59750, '0645287149', NULL, 'bilbo.sacquet@nain.fr', NULL, 'BS200211', '$2y$10$1jjM/nzDHxZfX1EEVg.hL.DJzHm8ud6qsXfsaCLztUf0osXrjsmd6', '2021-11-29 11:22:16', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`util_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `util_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;