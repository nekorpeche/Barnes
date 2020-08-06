-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 06 août 2020 à 14:58
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `immo`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

DROP TABLE IF EXISTS `bien`;
CREATE TABLE IF NOT EXISTS `bien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `date` date NOT NULL,
  `descriptif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `nom`, `prix`, `date`, `descriptif`, `image`) VALUES
(1, 'Maison à vendre - Villemomble', 200000, '2020-08-05', 'Belle et pas cher', 'maison_villemomble.jpg'),
(2, 'Studio à vendre - Paris', 620000, '2020-08-02', 'Studio en bon état au cœur de Paris ! ', 'studio_paris.jpg'),
(7, 'Villa - Nanterre', 900000, '2020-07-13', 'Villa prestigieuse proche de la gare ! Acheteurs non sérieux s\'abstenir ', 'villa_nanterre.jpg'),
(10, 'Appartement - Saint-Ouen', 300000, '2020-08-01', 'Appartement de 5 pièces, bâtiment récent rien à prévoir !', 'appart_saintOuen.jpg'),
(11, 'Maison d\'Architecte - Vannes', 600000, '2020-07-05', 'Maison d\'architecte moderne avec panneaux solaires. 6 pièces, prix ferme.', 'maison_vannes.jpg'),
(12, 'Loft - Nanterre', 850000, '2020-07-20', 'Loft situé à Nanterre près de la gare de la Défense. Loft de 5 pièces.', 'loft_nanterre.jpg'),
(13, 'Villa Le Chêne - Nice', 3200000, '2020-05-04', 'Vue imprenable sur la mer. Villa composée de 7 chambres, deux salles de séjour et d\'un jardin de 100m². ', 'villa_chene.jpg'),
(14, 'Loft - Paris', 899000, '2020-06-01', 'Loft avec vue sur la Tour-Eiffel. 3 chambres, vue imprenable, à ne pas rater !', 'loft_paris.jpg'),
(15, 'Appartement - Clamart', 400000, '2020-07-06', 'Appartement 5 grandes pièces. Commerces et écoles à proximité, parfait pour une famille !', 'appartement_clamart.jpg'),
(16, 'Villa Brigitte - Paris XI', 4000000, '2020-05-11', 'Situé en plein coeur de Paris, la villa est composée de 3 étages accessibles en ascenseurs, dont 11 chambres réparties dans les trois étages.', 'villa_brigitte.png'),
(17, 'Maison - Montmorency', 800000, '2020-08-05', 'Maison de 7 pièces avec possibilité de garer 3 voitures dans la cour', 'maison_montmorency.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `bien_type`
--

DROP TABLE IF EXISTS `bien_type`;
CREATE TABLE IF NOT EXISTS `bien_type` (
  `bien_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`bien_id`,`type_id`),
  KEY `IDX_A791DB5BBD95B80F` (`bien_id`),
  KEY `IDX_A791DB5BC54C8C93` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bien_type`
--

INSERT INTO `bien_type` (`bien_id`, `type_id`) VALUES
(1, 1),
(2, 3),
(2, 4),
(7, 2),
(10, 4),
(11, 1),
(12, 4),
(12, 5),
(13, 2),
(14, 4),
(14, 5),
(15, 4),
(16, 2),
(17, 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200804213728', '2020-08-04 21:37:48', 200),
('DoctrineMigrations\\Version20200805194509', '2020-08-05 19:45:39', 245);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `nom`) VALUES
(1, 'Maison'),
(2, 'Villa'),
(3, 'Studio'),
(4, 'Appartement'),
(5, 'Loft');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bien_type`
--
ALTER TABLE `bien_type`
  ADD CONSTRAINT `FK_A791DB5BBD95B80F` FOREIGN KEY (`bien_id`) REFERENCES `bien` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A791DB5BC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
