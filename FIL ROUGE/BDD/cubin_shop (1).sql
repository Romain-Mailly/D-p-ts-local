-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 09 sep. 2021 à 15:01
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
(7, 'Megaminx');

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
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `pro_id` int(11) NOT NULL,
  `pro_cat_id` int(11) NOT NULL,
  `pro_fou_id` int(11) DEFAULT NULL,
  `pro_ref` varchar(30) NOT NULL,
  `pro_libelle` varchar(30) NOT NULL,
  `pro_desc` text,
  `pro_prix` decimal(6,2) NOT NULL,
  `pro_stock` int(11) DEFAULT NULL,
  `pro_couleur` varchar(30) NOT NULL,
  `pro_photo` varchar(10) NOT NULL,
  `pro_d_ajout` datetime DEFAULT NULL,
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
(19, 2, 4, 'YUXIN004', 'YUXIN Little Magic', '3x3', '4.99', 10, '', 'jpg', '2021-09-08 12:38:50', '2021-09-08 12:38:50'),
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
(70, 6, 1, 'GAN015', 'GAN MonsterGO', NULL, '11.99', 10, '', 'png', '2021-09-08 13:54:31', '2021-09-08 13:54:31'),
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
(86, 7, 5, 'XMAN013', 'XMAN Galaxy Megaminx V2', NULL, '19.99', 10, '', 'jpg', '2021-09-08 13:54:31', '2021-09-08 13:54:31');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_nom` varchar(30) NOT NULL,
  `user_prenom` varchar(30) NOT NULL,
  `user_ddn` date NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_login` varchar(30) NOT NULL,
  `user_mdp` varchar(60) NOT NULL,
  `user_pays` varchar(30) NOT NULL,
  `user_d_create` datetime NOT NULL,
  `user_d_last` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`user_id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
