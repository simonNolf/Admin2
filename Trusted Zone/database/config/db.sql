CREATE DATABASE dbwoody;

CREATE USER admin IDENTIFIED WITH mysql_native_password BY 'Password';

GRANT ALL PRIVILEGES ON dbwoody.* TO 'admin'@'%';

USE dbwoody;

--
-- Base de données : `dbwoody`
--

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

DROP TABLE IF EXISTS `objet`;
CREATE TABLE IF NOT EXISTS `objet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Déchargement des données de la table `objet`
--

INSERT INTO `objet` (`id`, `nom`, `prix`) VALUES
(1, 'toupie', 5),
(2, 'lego', 15),
(3, 'manette', 60);