-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 avr. 2022 à 15:01
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd`
--
CREATE DATABASE IF NOT EXISTS `bdd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdd`;

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

DROP TABLE IF EXISTS `bien`;
CREATE TABLE IF NOT EXISTS `bien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtype` int(8) NOT NULL,
  `jardin` tinyint(1) NOT NULL,
  `prix` int(8) NOT NULL,
  `rue` varchar(50) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `nbpieces` int(2) DEFAULT NULL,
  `nbetages` int(2) DEFAULT NULL,
  `nbappartements` int(3) DEFAULT NULL,
  `superficie` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDTYPE` (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `idtype`, `jardin`, `prix`, `rue`, `ville`, `nbpieces`, `nbetages`, `nbappartements`, `superficie`) VALUES
(1, 1, 0, 200000, 'Rue de Lannoy', 'Hem', 5, 0, 0, 65),
(2, 1, 0, 140000, 'Rue Jules Guesde', 'Croix', 4, 0, 0, 55),
(3, 1, 0, 170000, 'Rue de l\'Alma', 'Roubaix', 3, 0, 0, 44),
(4, 1, 0, 90000, 'Rue Boileau', 'Roubaix', 3, 0, 0, 47),
(5, 1, 0, 320000, 'Rue du Marechale Delattre de Tassigny', 'Lille', 6, 0, 0, 86),
(6, 1, 0, 220000, 'Rue de la Gare', 'Lille', 3, 0, 0, 69),
(7, 1, 0, 230000, 'Rue Faidherbe', 'Croix', 4, 0, 0, 60),
(8, 1, 0, 600000, 'Rue Victoire', 'Croix', 7, 0, 0, 124),
(9, 1, 0, 90000, 'Rue de Tourcoing', 'Roubaix', 2, 0, 0, 26),
(10, 2, 0, 800000, 'Rue des Prés', 'Hem', 0, 5, 10, 400),
(11, 2, 0, 950000, 'Rue des Trois Fermes', 'Hem', 0, 5, 12, 424),
(12, 2, 0, 1200000, 'Rue du blé', '.Roubaix', 0, 3, 6, 200),
(13, 2, 0, 600000, 'Rue des Vaches', 'Roubaix', 0, 2, 4, 240),
(14, 2, 0, 400000, 'Rue des Fleurs', 'Croix', 0, 2, 3, 140),
(15, 2, 0, 750000, 'Rue des Ecoles', 'Wasquehal', 0, 4, 5, 225),
(16, 2, 1, 2000000, 'Rue Victoire', 'Croix', 0, 3, 3, 550),
(17, 2, 0, 300000, 'Rue Edouard Vaillant', 'Mouveaux', 0, 1, 2, 130),
(18, 2, 0, 340000, 'Rue Boileau', 'Roubaix', 0, 3, 6, 200),
(19, 3, 0, 130000, 'Rue des Fraisiers', 'Loos', 3, 0, 0, 40),
(20, 3, 0, 117000, 'Rue des Peupliers', 'Tourcoing', 2, 0, 0, 34),
(21, 3, 0, 200000, 'Rue de Paris', 'Lesquin', 3, 0, 0, 68),
(22, 3, 0, 650000, 'Rue Victoire', 'Croix', 6, 1, 0, 110),
(23, 3, 0, 90000, 'Rue Boileau', 'Roubaix', 1, 0, 0, 24),
(24, 3, 0, 150000, 'Rue Verte', 'Croix', 3, 0, 0, 63),
(25, 3, 0, 190000, 'Rue des Ecoles', 'Hem', 3, 0, 0, 49),
(26, 3, 0, 210000, 'Rue de Tourcoing', 'Tourcoing', 3, 0, 0, 59),
(27, 3, 0, 310000, 'Rue des Fleurs', 'Croix', 4, 0, 0, 89),
(30, 4, 1, 200000, 'Rue Moliere', 'Hem', 7, 1, 0, 200),
(31, 4, 0, 130000, 'Rue Boileau', 'Roubaix', 5, 1, 0, 100),
(32, 4, 1, 220000, 'Rue Racine', 'Hem', 7, 1, 0, 220),
(33, 4, 1, 330000, 'Rue Foret', 'Leers', 9, 2, 0, 300),
(34, 4, 0, 220000, 'Rue des Lievres', 'Lys les Lannoy', 7, 2, 0, 200),
(35, 4, 0, 160000, 'Rue de la Fontaine', 'Leers', 6, 1, 0, 120),
(36, 4, 1, 900000, 'Rue Victoire', 'Croix', 14, 3, 0, 400),
(37, 4, 1, 350000, 'Rue Verte', 'Croix', 10, 2, 0, 240),
(38, 4, 1, 270000, 'Rue Bleu', 'Roubaix', 8, 1, 0, 220),
(39, 5, 0, 500000, 'Rue des Champs', 'Hem', 0, 0, 0, 450),
(40, 5, 0, 240000, 'Rue Cadenas', 'Lille', 0, 0, 0, 100),
(41, 5, 0, 2000000, 'Rue Victoire', 'Croix', 0, 0, 0, 400),
(42, 5, 0, 600000, 'Rue Bassin', 'Tourcoing', 0, 0, 0, 350),
(43, 5, 0, 1500000, 'Rue des Ecoles', 'Hem', 0, 0, 0, 1200),
(44, 5, 0, 190000, 'Rue des Fleurs', 'Croix', 0, 0, 0, 340),
(45, 5, 0, 90000, 'Rue Boileau', 'Roubaix', 0, 0, 0, 75),
(46, 5, 0, 170000, 'Rue Bleu', 'Roubaix', 0, 0, 0, 120),
(47, 5, 0, 500000, 'Rue des Souris', 'Wattrelos', 0, 0, 0, 356);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `idImage` int(11) NOT NULL AUTO_INCREMENT,
  `idbien` int(8) NOT NULL,
  `numImage` int(11) NOT NULL,
  `libelle` varchar(20) NOT NULL,
  `chemin` varchar(50) NOT NULL,
  PRIMARY KEY (`idImage`),
  KEY `IDBIEN` (`idbien`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`idImage`, `idbien`, `numImage`, `libelle`, `chemin`) VALUES
(1, 1, 1, 'Image1RuedeLannoy', '/image/appartement/1/img1.jpg'),
(2, 1, 2, 'Image2RuedeLannoy', '/image/appartement/1/img2.jpg'),
(3, 1, 3, 'Image3RuedeLannoy', '/image/appartement/1/img3.jpg'),
(4, 1, 4, 'Image4RuedeLannoy', '/image/appartement/1/img4.jpg'),
(5, 1, 5, 'Image5RuedeLannoy', '/image/appartement/1/img5.jpg'),
(6, 2, 1, 'Image1RueJulesGuesde', '/image/appartement/2/img1.jpg'),
(7, 2, 2, 'Image2RueJulesGuesde', '/image/appartement/2/img2.jpg'),
(8, 2, 3, 'Image3RueJulesGuesde', '/image/appartement/2/img3.jpg'),
(9, 2, 4, 'Image4RueJulesGuesde', '/image/appartement/2/img4.jpg'),
(10, 2, 5, 'Image5RueJulesGuesde', '/image/appartement/2/img5.jpg'),
(11, 3, 1, 'Image1Ruedel\'Alma', '/image/appartement/3/img1.jpg'),
(12, 3, 2, 'Image2Ruedel\'Alma', '/image/appartement/3/img2.jpg'),
(13, 3, 3, 'Image3Ruedel\'Alma', '/image/appartement/3/img3.jpg'),
(14, 3, 4, 'Image4Ruedel\'Alma', '/image/appartement/3/img4.jpg'),
(15, 3, 5, 'Image5Ruedel\'Alma', '/image/appartement/3/img5.jpg'),
(16, 4, 1, 'Image1RueBoileau', '/image/appartement/4/img1.jpg'),
(17, 4, 2, 'Image2RueBoileau', '/image/appartement/4/img2.jpg'),
(18, 4, 3, 'Image3RueBoileau', '/image/appartement/4/img3.jpg'),
(19, 4, 4, 'Image4RueBoileau', '/image/appartement/4/img4.jpg'),
(20, 4, 5, 'Image5RueBoileau', '/image/appartement/4/img5.jpg'),
(21, 6, 1, 'Image1RuedelaGare', '/image/appartement/6/img1.jpg'),
(22, 6, 2, 'Image2RuedelaGare', '/image/appartement/6/img2.jpg'),
(23, 6, 3, 'Image3RuedelaGare', '/image/appartement/6/img3.jpg'),
(24, 6, 4, 'Image4RuedelaGare', '/image/appartement/6/img4.jpg'),
(25, 6, 5, 'Image5RuedelaGare', '/image/appartement/6/img5.jpg'),
(26, 7, 1, 'Image1RueFaidherbe', '/image/appartement/7/img1.jpg'),
(27, 7, 2, 'Image2RueFaidherbe', '/image/appartement/7/img2.jpg'),
(28, 7, 3, 'Image3RueFaidherbe', '/image/appartement/7/img3.jpg'),
(29, 7, 4, 'Image4RueFaidherbe', '/image/appartement/7/img4.jpg'),
(30, 7, 5, 'Image5RueFaidherbe', '/image/appartement/7/img5.jpg'),
(31, 8, 1, 'Image1RueVictoire', '/image/appartement/8/img1.jpg'),
(32, 8, 2, 'Image2RueVictoire', '/image/appartement/8/img2.jpg'),
(33, 8, 3, 'Image3RueVictoire', '/image/appartement/8/img3.jpg'),
(34, 8, 4, 'Image4RueVictoire', '/image/appartement/8/img4.jpg'),
(35, 8, 5, 'Image5RueVictoire', '/image/appartement/8/img5.jpg'),
(36, 9, 1, 'Image1RuedeTourcoing', '/image/appartement/9/img1.jpg'),
(37, 9, 2, 'Image2RuedeTourcoing', '/image/appartement/9/img2.jpg'),
(38, 9, 3, 'Image3RuedeTourcoing', '/image/appartement/9/img3.jpg'),
(39, 9, 4, 'Image4RuedeTourcoing', '/image/appartement/9/img4.jpg'),
(40, 9, 5, 'Image5RuedeTourcoing', '/image/appartement/9/img5.jpg'),
(41, 10, 1, 'Image1RuedesPrés', '/image/maison/10/img1.jpg'),
(42, 10, 2, 'Image2RuedesPrés', '/image/maison/10/img2.jpg'),
(43, 10, 3, 'Image3RuedesPrés', '/image/maison/10/img3.jpg'),
(44, 10, 4, 'Image4RuedesPrés', '/image/maison/10/img4.jpg'),
(45, 10, 5, 'Image5RuedesPrés', '/image/maison/10/img5.jpg'),
(46, 12, 1, 'Image1Ruedublé', '/image/maison/12/img1.jpg'),
(47, 12, 2, 'Image2Ruedublé', '/image/maison/12/img2.jpg'),
(48, 12, 3, 'Image3Ruedublé', '/image/maison/12/img3.jpg'),
(49, 12, 4, 'Image4Ruedublé', '/image/maison/12/img4.jpg'),
(50, 12, 5, 'Image5Ruedublé', '/image/maison/12/img5.jpg'),
(51, 13, 1, 'Image1RuedesVaches', '/image/maison/13/img1.jpg'),
(52, 13, 2, 'Image2RuedesVaches', '/image/maison/13/img2.jpg'),
(53, 13, 3, 'Image3RuedesVaches', '/image/maison/13/img3.jpg'),
(54, 13, 4, 'Image4RuedesVaches', '/image/maison/13/img4.jpg'),
(55, 13, 5, 'Image5RuedesVaches', '/image/maison/13/img5.jpg'),
(56, 14, 1, 'Image1RuedesFleurs', '/image/maison/14/img1.jpg'),
(57, 14, 2, 'Image2RuedesFleurs', '/image/maison/14/img2.jpg'),
(58, 14, 3, 'Image3RuedesFleurs', '/image/maison/14/img3.jpg'),
(59, 14, 4, 'Image4RuedesFleurs', '/image/maison/14/img4.jpg'),
(60, 14, 5, 'Image5RuedesFleurs', '/image/maison/14/img5.jpg'),
(61, 15, 1, 'Image1RuedesEcoles', '/image/maison/15/img1.jpg'),
(62, 15, 2, 'Image2RuedesEcoles', '/image/maison/15/img2.jpg'),
(63, 15, 3, 'Image3RuedesEcoles', '/image/maison/15/img3.jpg'),
(64, 15, 4, 'Image4RuedesEcoles', '/image/maison/15/img4.jpg'),
(65, 15, 5, 'Image5RuedesEcoles', '/image/maison/15/img5.jpg'),
(66, 16, 1, 'Image1RueVictoire', '/image/maison/16/img1.jpg'),
(67, 16, 2, 'Image2RueVictoire', '/image/maison/16/img2.jpg'),
(68, 16, 3, 'Image3RueVictoire', '/image/maison/16/img3.jpg'),
(69, 16, 4, 'Image4RueVictoire', '/image/maison/16/img4.jpg'),
(70, 16, 5, 'Image5RueVictoire', '/image/maison/16/img5.jpg'),
(71, 18, 1, 'Image1RueBoileau', '/image/maison/18/img1.jpg'),
(72, 18, 2, 'Image2RueBoileau', '/image/maison/18/img2.jpg'),
(73, 18, 3, 'Image3RueBoileau', '/image/maison/18/img3.jpg'),
(74, 18, 4, 'Image4RueBoileau', '/image/maison/18/img4.jpg'),
(75, 18, 5, 'Image5RueBoileau', '/image/maison/18/img5.jpg'),
(76, 21, 1, 'Image1RuedeParis', '/image/terrain/21/img1.jpg'),
(77, 21, 2, 'Image2RuedeParis', '/image/terrain/21/img2.jpg'),
(78, 21, 3, 'Image3RuedeParis', '/image/terrain/21/img3.jpg'),
(79, 21, 4, 'Image4RuedeParis', '/image/terrain/21/img4.jpg'),
(80, 21, 5, 'Image5RuedeParis', '/image/terrain/21/img5.jpg'),
(81, 22, 1, 'Image1RueVictoire', '/image/terrain/22/img1.jpg'),
(82, 22, 2, 'Image2RueVictoire', '/image/terrain/22/img2.jpg'),
(83, 22, 3, 'Image3RueVictoire', '/image/terrain/22/img3.jpg'),
(84, 22, 4, 'Image4RueVictoire', '/image/terrain/22/img4.jpg'),
(85, 22, 5, 'Image5RueVictoire', '/image/terrain/22/img5.jpg'),
(86, 23, 1, 'Image1RueBoileau', '/image/terrain/23/img1.jpg'),
(87, 23, 2, 'Image2RueBoileau', '/image/terrain/23/img2.jpg'),
(88, 23, 3, 'Image3RueBoileau', '/image/terrain/23/img3.jpg'),
(89, 23, 4, 'Image4RueBoileau', '/image/terrain/23/img4.jpg'),
(90, 23, 5, 'Image5RueBoileau', '/image/terrain/23/img5.jpg'),
(91, 24, 1, 'Image1RueVerte', '/image/terrain/24/img1.jpg'),
(92, 24, 2, 'Image2RueVerte', '/image/terrain/24/img2.jpg'),
(93, 24, 3, 'Image3RueVerte', '/image/terrain/24/img3.jpg'),
(94, 24, 4, 'Image4RueVerte', '/image/terrain/24/img4.jpg'),
(95, 24, 5, 'Image5RueVerte', '/image/terrain/24/img5.jpg'),
(96, 25, 1, 'Image1RuedesEcoles', '/image/terrain/25/img1.jpg'),
(97, 25, 2, 'Image2RuedesEcoles', '/image/terrain/25/img2.jpg'),
(98, 25, 3, 'Image3RuedesEcoles', '/image/terrain/25/img3.jpg'),
(99, 25, 4, 'Image4RuedesEcoles', '/image/terrain/25/img4.jpg'),
(100, 25, 5, 'Image5RuedesEcoles', '/image/terrain/25/img5.jpg'),
(101, 26, 1, 'Image1RuedeTourcoing', '/image/terrain/26/img1.jpg'),
(102, 26, 2, 'Image2RuedeTourcoing', '/image/terrain/26/img2.jpg'),
(103, 26, 3, 'Image3RuedeTourcoing', '/image/terrain/26/img3.jpg'),
(104, 26, 4, 'Image4RuedeTourcoing', '/image/terrain/26/img4.jpg'),
(105, 26, 5, 'Image5RuedeTourcoing', '/image/terrain/26/img5.jpg'),
(106, 27, 1, 'Image1RuedesFleurs', '/image/terrain/27/img1.jpg'),
(107, 27, 2, 'Image2RuedesFleurs', '/image/terrain/27/img2.jpg'),
(108, 27, 3, 'Image3RuedesFleurs', '/image/terrain/27/img3.jpg'),
(109, 27, 4, 'Image4RuedesFleurs', '/image/terrain/27/img4.jpg'),
(110, 27, 5, 'Image5RuedesFleurs', '/image/terrain/27/img5.jpg'),
(111, 30, 1, 'Image1RueMoliere', '/image/local/30/img1.jpg'),
(112, 30, 2, 'Image2RueMoliere', '/image/local/30/img2.jpg'),
(113, 30, 3, 'Image3RueMoliere', '/image/local/30/img3.jpg'),
(114, 30, 4, 'Image4RueMoliere', '/image/local/30/img4.jpg'),
(115, 30, 5, 'Image5RueMoliere', '/image/local/30/img5.jpg'),
(116, 31, 1, 'Image1RueBoileau', '/image/local/31/img1.jpg'),
(117, 31, 2, 'Image2RueBoileau', '/image/local/31/img2.jpg'),
(118, 31, 3, 'Image3RueBoileau', '/image/local/31/img3.jpg'),
(119, 31, 4, 'Image4RueBoileau', '/image/local/31/img4.jpg'),
(120, 31, 5, 'Image5RueBoileau', '/image/local/31/img5.jpg'),
(121, 32, 1, 'Image1RueRacine', '/image/local/32/img1.jpg'),
(122, 32, 2, 'Image2RueRacine', '/image/local/32/img2.jpg'),
(123, 32, 3, 'Image3RueRacine', '/image/local/32/img3.jpg'),
(124, 32, 4, 'Image4RueRacine', '/image/local/32/img4.jpg'),
(125, 32, 5, 'Image5RueRacine', '/image/local/32/img5.jpg'),
(126, 33, 1, 'Image1RueForet', '/image/local/33/img1.jpg'),
(127, 33, 2, 'Image2RueForet', '/image/local/33/img2.jpg'),
(128, 33, 3, 'Image3RueForet', '/image/local/33/img3.jpg'),
(129, 33, 4, 'Image4RueForet', '/image/local/33/img4.jpg'),
(130, 33, 5, 'Image5RueForet', '/image/local/33/img5.jpg'),
(131, 34, 1, 'Image1RuedesLievres', '/image/local/34/img1.jpg'),
(132, 34, 2, 'Image2RuedesLievres', '/image/local/34/img2.jpg'),
(133, 34, 3, 'Image3RuedesLievres', '/image/local/34/img3.jpg'),
(134, 34, 4, 'Image4RuedesLievres', '/image/local/34/img4.jpg'),
(135, 34, 5, 'Image5RuedesLievres', '/image/local/34/img5.jpg'),
(136, 36, 1, 'Image1RueVictoire', '/image/local/36/img1.jpg'),
(137, 36, 2, 'Image2RueVictoire', '/image/local/36/img2.jpg'),
(138, 36, 3, 'Image3RueVictoire', '/image/local/36/img3.jpg'),
(139, 36, 4, 'Image4RueVictoire', '/image/local/36/img4.jpg'),
(140, 36, 5, 'Image5RueVictoire', '/image/local/36/img5.jpg'),
(141, 37, 1, 'Image1RueVerte', '/image/immeuble/37/img1.jpg'),
(142, 37, 2, 'Image2RueVerte', '/image/immeuble/37/img2.jpg'),
(143, 37, 3, 'Image3RueVerte', '/image/immeuble/37/img3.jpg'),
(144, 37, 4, 'Image4RueVerte', '/image/immeuble/37/img4.jpg'),
(145, 37, 5, 'Image5RueVerte', '/image/immeuble/37/img5.jpg'),
(146, 38, 1, 'Image1RueBleu', '/image/immeuble/38/img1.jpg'),
(147, 38, 2, 'Image2RueBleu', '/image/immeuble/38/img2.jpg'),
(148, 38, 3, 'Image3RueBleu', '/image/immeuble/38/img3.jpg'),
(149, 38, 4, 'Image4RueBleu', '/image/immeuble/38/img4.jpg'),
(150, 38, 5, 'Image5RueBleu', '/image/immeuble/38/img5.jpg'),
(151, 39, 1, 'Image1RuedesChamps', '/image/immeuble/39/img1.jpg'),
(152, 39, 2, 'Image2RuedesChamps', '/image/immeuble/39/img2.jpg'),
(153, 39, 3, 'Image3RuedesChamps', '/image/immeuble/39/img3.jpg'),
(154, 39, 4, 'Image4RuedesChamps', '/image/immeuble/39/img4.jpg'),
(155, 39, 5, 'Image5RuedesChamps', '/image/immeuble/39/img5.jpg'),
(156, 40, 1, 'Image1RueCadenas', '/image/immeuble/40/img1.jpg'),
(157, 40, 2, 'Image2RueCadenas', '/image/immeuble/40/img2.jpg'),
(158, 40, 3, 'Image3RueCadenas', '/image/immeuble/40/img3.jpg'),
(159, 40, 4, 'Image4RueCadenas', '/image/immeuble/40/img4.jpg'),
(160, 40, 5, 'Image5RueCadenas', '/image/immeuble/40/img5.jpg'),
(161, 41, 1, 'Image1RueVictoire', '/image/immeuble/41/img1.jpg'),
(162, 41, 2, 'Image2RueVictoire', '/image/immeuble/41/img2.jpg'),
(163, 41, 3, 'Image3RueVictoire', '/image/immeuble/41/img3.jpg'),
(164, 41, 4, 'Image4RueVictoire', '/image/immeuble/41/img4.jpg'),
(165, 41, 5, 'Image5RueVictoire', '/image/immeuble/41/img5.jpg'),
(166, 42, 1, 'Image1RueBassin', '/image/immeuble/42/img1.jpg'),
(167, 42, 2, 'Image2RueBassin', '/image/immeuble/42/img2.jpg'),
(168, 42, 3, 'Image3RueBassin', '/image/immeuble/42/img3.jpg'),
(169, 42, 4, 'Image4RueBassin', '/image/immeuble/42/img4.jpg'),
(170, 42, 5, 'Image5RueBassin', '/image/immeuble/42/img5.jpg'),
(171, 43, 1, 'Image1RuedesEcoles', '/image/immeuble/43/img1.jpg'),
(172, 43, 2, 'Image2RuedesEcoles', '/image/immeuble/43/img2.jpg'),
(173, 43, 3, 'Image3RuedesEcoles', '/image/immeuble/43/img3.jpg'),
(174, 43, 4, 'Image4RuedesEcoles', '/image/immeuble/43/img4.jpg'),
(175, 43, 5, 'Image5RuedesEcoles', '/image/immeuble/43/img5.jpg'),
(176, 44, 1, 'Image1RuedesFleurs', '/image/immeuble/44/img1.jpg'),
(177, 44, 2, 'Image2RuedesFleurs', '/image/immeuble/44/img2.jpg'),
(178, 44, 3, 'Image3RuedesFleurs', '/image/immeuble/44/img3.jpg'),
(179, 44, 4, 'Image4RuedesFleurs', '/image/immeuble/44/img4.jpg'),
(180, 44, 5, 'Image5RuedesFleurs', '/image/immeuble/44/img5.jpg'),
(181, 45, 1, 'Image1RueBoileau', '/image/immeuble/45/img1.jpg'),
(182, 45, 2, 'Image2RueBoileau', '/image/immeuble/45/img2.jpg'),
(183, 45, 3, 'Image3RueBoileau', '/image/immeuble/45/img3.jpg'),
(184, 45, 4, 'Image4RueBoileau', '/image/immeuble/45/img4.jpg'),
(185, 45, 4, 'Image5RueBoileau', '/image/immeuble/45/img5.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `libelle` varchar(30) NOT NULL,
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`libelle`, `idtype`) VALUES
('Appartement', 1),
('Maison', 2),
('Terrain', 3),
('Local', 4),
('Immeuble', 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(6, 'admin', '$2y$10$./klwImoyhLde9t9kfH2sOE/322caCGEVz2sw49IpFGdIBDHFIWKu');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `bien_ibfk_1` FOREIGN KEY (`idtype`) REFERENCES `type` (`idtype`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`idbien`) REFERENCES `bien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
