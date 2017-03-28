-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 28 Mars 2017 à 02:39
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `artboutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `oc_formates`
--

CREATE TABLE IF NOT EXISTS `oc_formates` (
  `formate_id` int(11) NOT NULL AUTO_INCREMENT,
  `formatename` varchar(32) NOT NULL,
  PRIMARY KEY (`formate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `oc_formates`
--

INSERT INTO `oc_formates` (`formate_id`, `formatename`) VALUES
(1, ' 19 x 19 cm'),
(2, ' 25 x 25 cm'),
(3, '36 x 36 cm'),
(4, ' 50 x 50 cm'),
(5, ' 40 x 120 / 120 x 40 cm'),
(6, ' 80 x 80 cm');

-- --------------------------------------------------------

--
-- Structure de la table `oc_membres`
--

CREATE TABLE IF NOT EXISTS `oc_membres` (
  `membre_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `style_id` int(11) NOT NULL,
  PRIMARY KEY (`membre_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `oc_membres`
--

INSERT INTO `oc_membres` (`membre_id`, `manufacturer_id`, `customer_id`, `style_id`) VALUES
(1, 1, 3, 1),
(2, 2, 2, 2),
(3, 3, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `oc_membres_article`
--

CREATE TABLE IF NOT EXISTS `oc_membres_article` (
  `membres_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `meta_article` varchar(10000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `oc_membres_article`
--

INSERT INTO `oc_membres_article` (`membres_id`, `language_id`, `meta_article`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Structure de la table `oc_nouvelles`
--

CREATE TABLE IF NOT EXISTS `oc_nouvelles` (
  `nouvelle_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL,
  `membre_id` int(11) NOT NULL,
  PRIMARY KEY (`nouvelle_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `oc_nouvelles`
--

INSERT INTO `oc_nouvelles` (`nouvelle_id`, `date_added`, `membre_id`) VALUES
(1, '2017-02-14 21:34:05', 1),
(2, '2017-03-14 21:34:05', 2);

-- --------------------------------------------------------

--
-- Structure de la table `oc_nouvelles_text`
--

CREATE TABLE IF NOT EXISTS `oc_nouvelles_text` (
  `nouvelle_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `meta_text` varchar(10000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `oc_nouvelles_text`
--

INSERT INTO `oc_nouvelles_text` (`nouvelle_id`, `language_id`, `meta_text`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Structure de la table `oc_oeuvres`
--

CREATE TABLE IF NOT EXISTS `oc_oeuvres` (
  `oeuvre_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `membre_id` int(11) NOT NULL,
  `formate_id` int(11) NOT NULL,
  `sujet_id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL,
  `technique_id` int(11) NOT NULL,
  PRIMARY KEY (`oeuvre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `oc_styles`
--

CREATE TABLE IF NOT EXISTS `oc_styles` (
  `style_id` int(11) NOT NULL AUTO_INCREMENT,
  `stylename` varchar(32) NOT NULL,
  PRIMARY KEY (`style_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `oc_styles`
--

INSERT INTO `oc_styles` (`style_id`, `stylename`) VALUES
(1, 'Traditionnel'),
(2, 'Contemporain'),
(3, 'Abstrait'),
(4, 'Figuratif'),
(5, 'Marine'),
(6, 'Photographie');

-- --------------------------------------------------------

--
-- Structure de la table `oc_sujets`
--

CREATE TABLE IF NOT EXISTS `oc_sujets` (
  `sujet_id` int(11) NOT NULL AUTO_INCREMENT,
  `sujetname` varchar(32) NOT NULL,
  PRIMARY KEY (`sujet_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `oc_sujets`
--

INSERT INTO `oc_sujets` (`sujet_id`, `sujetname`) VALUES
(1, 'Abstrait'),
(2, 'Animaux'),
(3, 'Nature Morte'),
(4, 'Paysage'),
(5, 'Personnage');

-- --------------------------------------------------------

--
-- Structure de la table `oc_techniques`
--

CREATE TABLE IF NOT EXISTS `oc_techniques` (
  `technique_id` int(11) NOT NULL AUTO_INCREMENT,
  `techniquename` varchar(32) NOT NULL,
  PRIMARY KEY (`technique_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `oc_techniques`
--

INSERT INTO `oc_techniques` (`technique_id`, `techniquename`) VALUES
(1, 'Acrylique'),
(2, 'Huile'),
(3, 'Aquarelle'),
(4, 'Collage'),
(5, 'Mixte'),
(6, 'Photographie');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
