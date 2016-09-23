-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 23 Septembre 2016 à 16:34
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `test_mvc_crud`
--

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id_staff` int(128) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `user_group` varchar(128) NOT NULL,
  `userid` int(128) NOT NULL,
  `currentscore` int(128) NOT NULL,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `staff`
--

INSERT INTO `staff` (`id_staff`, `username`, `password`, `user_group`, `userid`, `currentscore`) VALUES
(1, 't', 'f', '2', 0, 0),
(2, 'gggs', 'scdds', '1', 0, 0),
(3, 'aaa', 'cccc', '4', 0, 0),
(4, 'dddd', 'mmmm', '3', 0, 0),
(5, 'dddd', 'mmmm', '3', 2, 5555555);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
