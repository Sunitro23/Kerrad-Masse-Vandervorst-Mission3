-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 14 Mars 2022 à 15:12
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `krd`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `ID` int(11) NOT NULL,
  `IDTYPE` int(8) NOT NULL,
  `JARDIN` tinyint(1) NOT NULL,
  `PRIX` int(8) NOT NULL,
  `RUE` varchar(50) NOT NULL,
  `VILLE` varchar(30) NOT NULL,
  `NBPIECES` int(2) NOT NULL,
  `NBETAGES` int(2) NOT NULL,
  `NBAPPARTEMENTS` int(3) NOT NULL,
  `SUPERFICIE` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bien`
--

INSERT INTO `bien` (`ID`, `IDTYPE`, `JARDIN`, `PRIX`, `RUE`, `VILLE`, `NBPIECES`, `NBETAGES`, `NBAPPARTEMENTS`, `SUPERFICIE`) VALUES
(1, 1, 0, 200000, 'Rue de Lannoy', 'Hem', 5, 0, 0, 65),
(2, 1, 0, 140000, 'Rue Jules Guesde', 'Croix', 4, 0, 0, 55),
(3, 1, 0, 170000, 'Rue de l\'Alma', 'Roubaix', 3, 0, 0, 44),
(4, 1, 0, 90000, 'Rue Boileau', 'Roubaix', 3, 0, 0, 47),
(5, 1, 0, 320000, 'Rue du Marechale Delattre de Tassigny', 'Lille', 6, 0, 0, 86),
(6, 1, 0, 220000, 'Rue de la Gare', 'Lille', 3, 0, 0, 69),
(7, 1, 0, 230000, 'Rue Faidherbe', 'Croix', 4, 0, 0, 60),
(8, 1, 0, 600000, 'Rue Victoire', 'Croix', 7, 0, 0, 124),
(9, 1, 0, 90000, 'Rue de Tourcoing', 'Roubaix', 2, 0, 0, 26);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `IDBIEN` int(8) NOT NULL,
  `LIBELLE` varchar(20) NOT NULL,
  `CHEMIN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `Libelle` varchar(30) NOT NULL,
  `IDTYPE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`Libelle`, `IDTYPE`) VALUES
('Appartement', 1),
('Maison', 2),
('Terrain', 3),
('Local', 4),
('Immeuble', 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `IDUSER` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`IDUSER`, `USERNAME`, `PASSWORD`) VALUES
(3, 'Admin', '*D89A99106002D77C1D327FC41E005919505638B0');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDTYPE` (`IDTYPE`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD KEY `IDBIEN` (`IDBIEN`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`IDTYPE`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUSER`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `IDTYPE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `IDUSER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `bien_ibfk_1` FOREIGN KEY (`IDTYPE`) REFERENCES `type` (`IDTYPE`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`IDBIEN`) REFERENCES `bien` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
