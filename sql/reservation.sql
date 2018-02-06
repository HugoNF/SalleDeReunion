-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 06 fév. 2018 à 16:44
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `reservation`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_reservation`
--

CREATE TABLE `t_reservation` (
  `ID_RESERVATION` int(11) NOT NULL,
  `DATERESERVATION` datetime DEFAULT NULL,
  `T_ROOMS_ID_ROOM` int(11) NOT NULL,
  `DUREE` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t_reservation`
--

INSERT INTO `t_reservation` (`ID_RESERVATION`, `DATERESERVATION`, `T_ROOMS_ID_ROOM`, `DUREE`) VALUES
(8, '2018-02-08 00:00:00', 1, '1h'),
(9, '2018-02-15 00:00:00', 2, '2h'),
(10, '2018-02-06 00:00:00', 3, '3h'),
(11, '2018-02-07 00:00:00', 4, '10h'),
(12, '2018-02-16 00:00:00', 4, '4h'),
(13, '2018-02-07 00:00:00', 4, '10h'),
(14, '2018-02-07 00:00:00', 4, '10h');

-- --------------------------------------------------------

--
-- Structure de la table `t_rooms`
--

CREATE TABLE `t_rooms` (
  `ID_ROOM` int(11) NOT NULL,
  `ROOMNAME` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `ROOMPLACE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `t_rooms`
--

INSERT INTO `t_rooms` (`ID_ROOM`, `ROOMNAME`, `ROOMPLACE`) VALUES
(1, 'Gilbert Montagné', 20),
(2, 'Claude François', 12),
(3, 'Patrick Sébastien', 35),
(4, 'Jul', 68);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD PRIMARY KEY (`ID_RESERVATION`,`T_ROOMS_ID_ROOM`),
  ADD KEY `fk_T_RESERVATION_T_ROOMS_idx` (`T_ROOMS_ID_ROOM`);

--
-- Index pour la table `t_rooms`
--
ALTER TABLE `t_rooms`
  ADD PRIMARY KEY (`ID_ROOM`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_reservation`
--
ALTER TABLE `t_reservation`
  MODIFY `ID_RESERVATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `t_rooms`
--
ALTER TABLE `t_rooms`
  MODIFY `ID_ROOM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_reservation`
--
ALTER TABLE `t_reservation`
  ADD CONSTRAINT `fk_T_RESERVATION_T_ROOMS` FOREIGN KEY (`T_ROOMS_ID_ROOM`) REFERENCES `t_rooms` (`ID_ROOM`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
