-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 01 avr. 2022 à 09:15
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd`
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
  `idbien` int(8) NOT NULL,
  `libelle` varchar(20) NOT NULL,
  `chemin` varchar(50) NOT NULL,
  KEY `IDBIEN` (`idbien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`idbien`, `libelle`, `chemin`) VALUES
(1, 'Image1RuedeLannoy', '/image/appartement/1/img1.jpg'),
(1, 'Image2RuedeLannoy', '/image/appartement/1/img2.jpg'),
(1, 'Image3RuedeLannoy', '/image/appartement/1/img3.jpg'),
(1, 'Image4RuedeLannoy', '/image/appartement/1/img4.jpg'),
(1, 'Image5RuedeLannoy', '/image/appartement/1/img5.jpg'),
(2, 'Image1RueJulesGuesde', '/image/appartement/2/img1.jpg'),
(2, 'Image2RueJulesGuesde', '/image/appartement/2/img2.jpg'),
(2, 'Image3RueJulesGuesde', '/image/appartement/2/img3.jpg'),
(2, 'Image4RueJulesGuesde', '/image/appartement/2/img4.jpg'),
(2, 'Image5RueJulesGuesde', '/image/appartement/2/img5.jpg'),
(3, 'Image1Ruedel\'Alma', '/image/appartement/3/img1.jpg'),
(3, 'Image2Ruedel\'Alma', '/image/appartement/3/img2.jpg'),
(3, 'Image3Ruedel\'Alma', '/image/appartement/3/img3.jpg'),
(3, 'Image4Ruedel\'Alma', '/image/appartement/3/img4.jpg'),
(3, 'Image5Ruedel\'Alma', '/image/appartement/3/img5.jpg'),
(4, 'Image1RueBoileau', '/image/appartement/4/img1.jpg'),
(4, 'Image2RueBoileau', '/image/appartement/4/img2.jpg'),
(4, 'Image3RueBoileau', '/image/appartement/4/img3.jpg'),
(4, 'Image4RueBoileau', '/image/appartement/4/img4.jpg'),
(4, 'Image5RueBoileau', '/image/appartement/4/img5.jpg'),
(6, 'Image1RuedelaGare', '/image/appartement/6/img1.jpg'),
(6, 'Image2RuedelaGare', '/image/appartement/6/img2.jpg'),
(6, 'Image3RuedelaGare', '/image/appartement/6/img3.jpg'),
(6, 'Image4RuedelaGare', '/image/appartement/6/img4.jpg'),
(6, 'Image5RuedelaGare', '/image/appartement/6/img5.jpg'),
(7, 'Image1RueFaidherbe', '/image/appartement/7/img1.jpg'),
(7, 'Image2RueFaidherbe', '/image/appartement/7/img2.jpg'),
(7, 'Image3RueFaidherbe', '/image/appartement/7/img3.jpg'),
(7, 'Image4RueFaidherbe', '/image/appartement/7/img4.jpg'),
(7, 'Image5RueFaidherbe', '/image/appartement/7/img5.jpg'),
(8, 'Image1RueVictoire', '/image/appartement/8/img1.jpg'),
(8, 'Image2RueVictoire', '/image/appartement/8/img2.jpg'),
(8, 'Image3RueVictoire', '/image/appartement/8/img3.jpg'),
(8, 'Image4RueVictoire', '/image/appartement/8/img4.jpg'),
(8, 'Image5RueVictoire', '/image/appartement/8/img5.jpg'),
(9, 'Image1RuedeTourcoing', '/image/appartement/9/img1.jpg'),
(9, 'Image2RuedeTourcoing', '/image/appartement/9/img2.jpg'),
(9, 'Image3RuedeTourcoing', '/image/appartement/9/img3.jpg'),
(9, 'Image4RuedeTourcoing', '/image/appartement/9/img4.jpg'),
(9, 'Image5RuedeTourcoing', '/image/appartement/9/img5.jpg'),
(10, 'Image1RuedesPrés', '/image/maison/10/img1.jpg'),
(10, 'Image2RuedesPrés', '/image/maison/10/img2.jpg'),
(10, 'Image3RuedesPrés', '/image/maison/10/img3.jpg'),
(10, 'Image4RuedesPrés', '/image/maison/10/img4.jpg'),
(10, 'Image5RuedesPrés', '/image/maison/10/img5.jpg'),
(12, 'Image1Ruedublé', '/image/maison/12/img1.jpg'),
(12, 'Image2Ruedublé', '/image/maison/12/img2.jpg'),
(12, 'Image3Ruedublé', '/image/maison/12/img3.jpg'),
(12, 'Image4Ruedublé', '/image/maison/12/img4.jpg'),
(12, 'Image5Ruedublé', '/image/maison/12/img5.jpg'),
(13, 'Image1RuedesVaches', '/image/maison/13/img1.jpg'),
(13, 'Image2RuedesVaches', '/image/maison/13/img2.jpg'),
(13, 'Image3RuedesVaches', '/image/maison/13/img3.jpg'),
(13, 'Image4RuedesVaches', '/image/maison/13/img4.jpg'),
(13, 'Image5RuedesVaches', '/image/maison/13/img5.jpg'),
(14, 'Image1RuedesFleurs', '/image/maison/14/img1.jpg'),
(14, 'Image2RuedesFleurs', '/image/maison/14/img2.jpg'),
(14, 'Image3RuedesFleurs', '/image/maison/14/img3.jpg'),
(14, 'Image4RuedesFleurs', '/image/maison/14/img4.jpg'),
(14, 'Image5RuedesFleurs', '/image/maison/14/img5.jpg'),
(15, 'Image1RuedesEcoles', '/image/maison/15/img1.jpg'),
(15, 'Image2RuedesEcoles', '/image/maison/15/img2.jpg'),
(15, 'Image3RuedesEcoles', '/image/maison/15/img3.jpg'),
(15, 'Image4RuedesEcoles', '/image/maison/15/img4.jpg'),
(15, 'Image5RuedesEcoles', '/image/maison/15/img5.jpg'),
(16, 'Image1RueVictoire', '/image/maison/16/img1.jpg'),
(16, 'Image2RueVictoire', '/image/maison/16/img2.jpg'),
(16, 'Image3RueVictoire', '/image/maison/16/img3.jpg'),
(16, 'Image4RueVictoire', '/image/maison/16/img4.jpg'),
(16, 'Image5RueVictoire', '/image/maison/16/img5.jpg'),
(18, 'Image1RueBoileau', '/image/maison/18/img1.jpg'),
(18, 'Image2RueBoileau', '/image/maison/18/img2.jpg'),
(18, 'Image3RueBoileau', '/image/maison/18/img3.jpg'),
(18, 'Image4RueBoileau', '/image/maison/18/img4.jpg'),
(18, 'Image5RueBoileau', '/image/maison/18/img5.jpg'),
(21, 'Image1RuedeParis', '/image/terrain/21/img1.jpg'),
(21, 'Image2RuedeParis', '/image/terrain/21/img2.jpg'),
(21, 'Image3RuedeParis', '/image/terrain/21/img3.jpg'),
(21, 'Image4RuedeParis', '/image/terrain/21/img4.jpg'),
(21, 'Image5RuedeParis', '/image/terrain/21/img5.jpg'),
(22, 'Image1RueVictoire', '/image/terrain/22/img1.jpg'),
(22, 'Image2RueVictoire', '/image/terrain/22/img2.jpg'),
(22, 'Image3RueVictoire', '/image/terrain/22/img3.jpg'),
(22, 'Image4RueVictoire', '/image/terrain/22/img4.jpg'),
(22, 'Image5RueVictoire', '/image/terrain/22/img5.jpg'),
(23, 'Image1RueBoileau', '/image/terrain/23/img1.jpg'),
(23, 'Image2RueBoileau', '/image/terrain/23/img2.jpg'),
(23, 'Image3RueBoileau', '/image/terrain/23/img3.jpg'),
(23, 'Image4RueBoileau', '/image/terrain/23/img4.jpg'),
(23, 'Image5RueBoileau', '/image/terrain/23/img5.jpg'),
(24, 'Image1RueVerte', '/image/terrain/24/img1.jpg'),
(24, 'Image2RueVerte', '/image/terrain/24/img2.jpg'),
(24, 'Image3RueVerte', '/image/terrain/24/img3.jpg'),
(24, 'Image4RueVerte', '/image/terrain/24/img4.jpg'),
(24, 'Image5RueVerte', '/image/terrain/24/img5.jpg'),
(25, 'Image1RuedesEcoles', '/image/terrain/25/img1.jpg'),
(25, 'Image2RuedesEcoles', '/image/terrain/25/img2.jpg'),
(25, 'Image3RuedesEcoles', '/image/terrain/25/img3.jpg'),
(25, 'Image4RuedesEcoles', '/image/terrain/25/img4.jpg'),
(25, 'Image5RuedesEcoles', '/image/terrain/25/img5.jpg'),
(26, 'Image1RuedeTourcoing', '/image/terrain/26/img1.jpg'),
(26, 'Image2RuedeTourcoing', '/image/terrain/26/img2.jpg'),
(26, 'Image3RuedeTourcoing', '/image/terrain/26/img3.jpg'),
(26, 'Image4RuedeTourcoing', '/image/terrain/26/img4.jpg'),
(26, 'Image5RuedeTourcoing', '/image/terrain/26/img5.jpg'),
(27, 'Image1RuedesFleurs', '/image/terrain/27/img1.jpg'),
(27, 'Image2RuedesFleurs', '/image/terrain/27/img2.jpg'),
(27, 'Image3RuedesFleurs', '/image/terrain/27/img3.jpg'),
(27, 'Image4RuedesFleurs', '/image/terrain/27/img4.jpg'),
(27, 'Image5RuedesFleurs', '/image/terrain/27/img5.jpg'),
(30, 'Image1RueMoliere', '/image/local/30/img1.jpg'),
(30, 'Image2RueMoliere', '/image/local/30/img2.jpg'),
(30, 'Image3RueMoliere', '/image/local/30/img3.jpg'),
(30, 'Image4RueMoliere', '/image/local/30/img4.jpg'),
(30, 'Image5RueMoliere', '/image/local/30/img5.jpg'),
(31, 'Image1RueBoileau', '/image/local/31/img1.jpg'),
(31, 'Image2RueBoileau', '/image/local/31/img2.jpg'),
(31, 'Image3RueBoileau', '/image/local/31/img3.jpg'),
(31, 'Image4RueBoileau', '/image/local/31/img4.jpg'),
(31, 'Image5RueBoileau', '/image/local/31/img5.jpg'),
(32, 'Image1RueRacine', '/image/local/32/img1.jpg'),
(32, 'Image2RueRacine', '/image/local/32/img2.jpg'),
(32, 'Image3RueRacine', '/image/local/32/img3.jpg'),
(32, 'Image4RueRacine', '/image/local/32/img4.jpg'),
(32, 'Image5RueRacine', '/image/local/32/img5.jpg'),
(33, 'Image1RueForet', '/image/local/33/img1.jpg'),
(33, 'Image2RueForet', '/image/local/33/img2.jpg'),
(33, 'Image3RueForet', '/image/local/33/img3.jpg'),
(33, 'Image4RueForet', '/image/local/33/img4.jpg'),
(33, 'Image5RueForet', '/image/local/33/img5.jpg'),
(34, 'Image1RuedesLievres', '/image/local/34/img1.jpg'),
(34, 'Image2RuedesLievres', '/image/local/34/img2.jpg'),
(34, 'Image3RuedesLievres', '/image/local/34/img3.jpg'),
(34, 'Image4RuedesLievres', '/image/local/34/img4.jpg'),
(34, 'Image5RuedesLievres', '/image/local/34/img5.jpg'),
(36, 'Image1RueVictoire', '/image/local/36/img1.jpg'),
(36, 'Image2RueVictoire', '/image/local/36/img2.jpg'),
(36, 'Image3RueVictoire', '/image/local/36/img3.jpg'),
(36, 'Image4RueVictoire', '/image/local/36/img4.jpg'),
(36, 'Image5RueVictoire', '/image/local/36/img5.jpg'),
(37, 'Image1RueVerte', '/image/immeuble/37/img1.jpg'),
(37, 'Image2RueVerte', '/image/immeuble/37/img2.jpg'),
(37, 'Image3RueVerte', '/image/immeuble/37/img3.jpg'),
(37, 'Image4RueVerte', '/image/immeuble/37/img4.jpg'),
(37, 'Image5RueVerte', '/image/immeuble/37/img5.jpg'),
(38, 'Image1RueBleu', '/image/immeuble/38/img1.jpg'),
(38, 'Image2RueBleu', '/image/immeuble/38/img2.jpg'),
(38, 'Image3RueBleu', '/image/immeuble/38/img3.jpg'),
(38, 'Image4RueBleu', '/image/immeuble/38/img4.jpg'),
(38, 'Image5RueBleu', '/image/immeuble/38/img5.jpg'),
(39, 'Image1RuedesChamps', '/image/immeuble/39/img1.jpg'),
(39, 'Image2RuedesChamps', '/image/immeuble/39/img2.jpg'),
(39, 'Image3RuedesChamps', '/image/immeuble/39/img3.jpg'),
(39, 'Image4RuedesChamps', '/image/immeuble/39/img4.jpg'),
(39, 'Image5RuedesChamps', '/image/immeuble/39/img5.jpg'),
(40, 'Image1RueCadenas', '/image/immeuble/40/img1.jpg'),
(40, 'Image2RueCadenas', '/image/immeuble/40/img2.jpg'),
(40, 'Image3RueCadenas', '/image/immeuble/40/img3.jpg'),
(40, 'Image4RueCadenas', '/image/immeuble/40/img4.jpg'),
(40, 'Image5RueCadenas', '/image/immeuble/40/img5.jpg'),
(41, 'Image1RueVictoire', '/image/immeuble/41/img1.jpg'),
(41, 'Image2RueVictoire', '/image/immeuble/41/img2.jpg'),
(41, 'Image3RueVictoire', '/image/immeuble/41/img3.jpg'),
(41, 'Image4RueVictoire', '/image/immeuble/41/img4.jpg'),
(41, 'Image5RueVictoire', '/image/immeuble/41/img5.jpg'),
(42, 'Image1RueBassin', '/image/immeuble/42/img1.jpg'),
(42, 'Image2RueBassin', '/image/immeuble/42/img2.jpg'),
(42, 'Image3RueBassin', '/image/immeuble/42/img3.jpg'),
(42, 'Image4RueBassin', '/image/immeuble/42/img4.jpg'),
(42, 'Image5RueBassin', '/image/immeuble/42/img5.jpg'),
(43, 'Image1RuedesEcoles', '/image/immeuble/43/img1.jpg'),
(43, 'Image2RuedesEcoles', '/image/immeuble/43/img2.jpg'),
(43, 'Image3RuedesEcoles', '/image/immeuble/43/img3.jpg'),
(43, 'Image4RuedesEcoles', '/image/immeuble/43/img4.jpg'),
(43, 'Image5RuedesEcoles', '/image/immeuble/43/img5.jpg'),
(44, 'Image1RuedesFleurs', '/image/immeuble/44/img1.jpg'),
(44, 'Image2RuedesFleurs', '/image/immeuble/44/img2.jpg'),
(44, 'Image3RuedesFleurs', '/image/immeuble/44/img3.jpg'),
(44, 'Image4RuedesFleurs', '/image/immeuble/44/img4.jpg'),
(44, 'Image5RuedesFleurs', '/image/immeuble/44/img5.jpg'),
(45, 'Image1RueBoileau', '/image/immeuble/45/img1.jpg'),
(45, 'Image2RueBoileau', '/image/immeuble/45/img2.jpg'),
(45, 'Image3RueBoileau', '/image/immeuble/45/img3.jpg'),
(45, 'Image4RueBoileau', '/image/immeuble/45/img4.jpg'),
(45, 'Image5RueBoileau', '/image/immeuble/45/img5.jpg');

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
(6, 'admin', '$2y$10$SSSCLwStk.Q/d56grkRep.aOIF2NYi8UP1udBCJfTcTtAZKLECwSy');

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
