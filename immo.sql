-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 06 août 2020 à 15:42
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
  `descriptif` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `nom`, `prix`, `date`, `descriptif`, `image`) VALUES
(1, 'Maison à vendre - Villemomble', 200000, '2020-08-05', 'Maison à étage de 87 m² avec garage intégré, comprenant au rez-de-chaussée une pièce de vie traversante de 35 m² avec une cuisine ouverte et un WC. A l\'étage, 3 chambres avec emplacements placards, une salle de bains spacieuse et un grand dressing. Maison basse consommation (RT 2012), équipée de détecteurs de fumée, une box domotique avec gestionnaire d\'énergie, chauffage par pompe à chaleur AIR/AIR et radiateurs à pilotage intelligent. ', 'maison_villemomble.jpg'),
(2, 'Studio à vendre - Paris', 620000, '2020-08-02', 'Charmant appartement meublé 2 pièces / grand studio, donnant sur le Sacrée Coeur. D\'une surface de 37 m³, le bien est situé au 7ème étage avec ascenseur, offrant une entrée, une cuisine équipée indépendante (plaques de cuisson, four/four à micro-ondes, réfrigérateur), un vaste séjour avec rangement, une salle de douche et un WC séparé.Calme. Box de rangement disponible à l\'étage. ', 'studio_paris.jpg'),
(7, 'Villa - Nanterre', 900000, '2020-07-13', 'NANTERRE à deux pas du Centre-Ville, dans une rue recherchée et résidentiel, à proximité immédiate des commerces, des écoles et de la gare de Nanterre Ville. Maison familiale baignée de lumière, au calme et non mitoyenne. Au rez-de-chaussée, entrée, pièce de vie traversante Est-Ouest avec cheminée, une cuisine ouverte, une véranda, une chambre parentale avec salle de bains avec baignoire et douche, un bureau et un WC.', 'villa_nanterre.jpg'),
(10, 'Appartement - Saint-Ouen', 300000, '2020-08-01', 'Dans une excellente copropriété récente de standing. A proximité de toutes commodités (Métro 13 et future Ligne 14, écoles, commerces), au pied du parc des DOCKS. Venez visiter ce charmant 3 pièces aux prestations de qualités. Calme et fonctionnel vous serez conquis par son agencement optimal et la qualité de ses finitions intérieur. Il se compose d\'une entrée, d\'un grand séjour donnant sur un agréable balcon, une belle cuisine US de qualité, deux chambres, une grande salle d\'eau et un WC séparé. ', 'appart_saintOuen.jpg'),
(11, 'Maison d\'Architecte - Vannes', 600000, '2020-07-05', 'Proche du centre ville de Vannes, des écoles, commerces et réseaux de bus, Pierres et Mer vous présente cette très belle maison d\'Architecte d\'environ 220 m² avec 6 grandes chambres.\r\nSur un terrain, d\'environ 515 m² orienté plein sud avec une piscine chauffée, dans un cadre bucolique, vous profiterez pleinement du calme en ville.\r\nVous serez séduits par les grands volumes, la luminosité et les prestations de qualité de cette maison conviviale et très agréable à vivre.', 'maison_vannes.jpg'),
(12, 'Loft - Nanterre', 850000, '2020-07-20', 'NANTERRE Préfecture proche RER A et Parc André MALRAUX\r\n\r\nDans une copropriété proche des commerces et transports, locaux indépendants sur 2 niveaux avec accès PMR..\r\n\r\n1er Niveau; accueil sous véranda, plusieurs pièces, bureaux, cuisine, WC.\r\n\r\n2e niveau accessible par escalier intérieur comprenant 2 terrasses et des bureaux.\r\n\r\nLes locaux sont divisibles avec 2 escaliers existants et 2 lots de copropriété pour la désignation.\r\n\r\nA rénover idéal profession et habitation', 'loft_nanterre.jpg'),
(13, 'Villa Le Chêne - Nice', 3200000, '2020-05-04', 'Luxueuse maison Grande maison avec des prestations et des finitions haut-de-gamme. Confort absolu avec grandes salles d\'eau, grandes cuisines, grandes pièces, électricité high-tech, piscine couverte, jacuzzi, salon d\'été, le tout avec des matériaux luxueux et recherchés. Un artiste réputé a d\'ailleurs participé à l\'aménagement de la maison, notamment pour les portes ainsi que pour des détails de décoration, tous signés bien évidemment. Nombreuses places de parking, cellier, double garage, alarme, volets roulants électriques, luxueuses baies vitrées, les portes extérieures sont blindées, tout est là pour faire de cette maison un produit d\'exception.', 'villa_chene.jpg'),
(14, 'Loft - Paris', 899000, '2020-06-01', ' Magnifique Loft industriel dans le quartier typique et prisé de la Butte-aux-Cailles. Grand loft de 215 m² habitables (201,27 m² Loi Carrez) avec une hauteur sous verrière à 11,50 m² sous faîtage. Dans sa composition actuelle il présente une cuisine ouverte sur un double séjour. Autour d\'un immense puits de lumière, se développent sur deux plateaux juxtaposés: 3 chambres disposant chacune leur salle de bains, un bureau, une buanderie, une chaufferie. Des rénovations importantes à prévoir (reprise de la verrière + rafraîchissement déco)., fort potentiel, possibilité d\'agrandir la surface habitable.', 'loft_paris.jpg'),
(15, 'Appartement - Clamart', 400000, '2020-07-06', 'Quartier Schneider, proche du bois, appartement 4 pièces en duplex, atypique et lumineux, en rez-de-jardin d\'une petite copropriété récente de 5 appartements. Cet appartement d\'environ 105 m² comprend un bel espace à vivre de 53 m² composé d\'un séjour et d\'une cuisine ouverte, de plain pied sur la grande terrasse en bois et le jardin, 3 chambres, une salle de bains (possibilité de créer une deuxième salle d\'eau). Excellent état général. ', 'appartement_clamart.jpg'),
(16, 'Villa Brigitte - Paris XI', 4000000, '2020-05-11', 'Verdure, calme et lumière. Maison entièrement écologique au coeur du 11ème arrondissement. Dans un design moderne, tout en bois et verrières, cette maison conçue entre ciel et verdure propose 2 espaces de réception dont un en mezzanine sous verrière baigné de lumière, 5 chambres haut de gamme dont 2 suites, 5 salles de bains et WC (japonais) privatifs, 1 bureau, 1 cuisine dînatoire. L\'ensemble donne sur un jardin de 350m² offrant une grande variété d\'arbres (chêne, figuier, pin, tilleul, érable du japon, néflier..). La toiture s\'articule en 3 parties, l\'une végétalisée, l\'autre abritant 5 ruches actives et la verrière photovoltaïque. ', 'villa_brigitte.png'),
(17, 'Maison - Montmorency', 800000, '2020-08-05', 'Idéalement située dans le centre-ville de Montmorency à proximité des écoles, transports et commerces, cette maison récente édifiée sur un terrain de 337 m² dispose de nombreux atouts pour vous séduire. Cette maison conforme à la RT2012 qui assure des performances énergétiques optimales des bâtiments est sortie de terre en 2020 et bénéficie d\'un ensoleillement maximal grâce à son exposition plein SUD. Au rez-de-chaussée, vous trouverez une entrée, un séjour double avec une cuisine ouverte à aménager d\'une belle surface de 46 m² ainsi qu\'un cellier.', 'maison_montmorency.jpg');

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
