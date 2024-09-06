-- SQLBook: Code
-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 17 Novembre 2020 à 09:10
-- Version du serveur :  5.7.32-0ubuntu0.18.04.1
-- Version de PHP :  7.2.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `film`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `id_film` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`id_film`, `id_genre`) VALUES
(1, 1),
(1, 2),
(4, 2),
(5, 2),
(6, 2),
(10, 2),
(1, 3),
(2, 4),
(4, 4),
(9, 4),
(2, 5),
(7, 5),
(3, 6),
(3, 7),
(7, 8),
(8, 9),
(8, 10),
(9, 10),
(10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `date_sortie` date NOT NULL,
  `realisateur` varchar(255) NOT NULL,
  `acteurs` text NOT NULL,
  `resume` text NOT NULL,
  `affiche` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `date_sortie`, `realisateur`, `acteurs`, `resume`, `affiche`) VALUES
(1, 'Forrest Gump', '1994-10-05', 'Robert Zemeckis', 'Tom Hanks, Gary Sinise, Robin Wright', 'Quelques décennies d\'histoire américaine, des années 1940 à la fin du XXème siècle, à travers le regard et l\'étrange odyssée d\'un homme simple et pur, Forrest Gump.', 'forrestgump.png'),
(2, 'La Ligne verte', '2000-03-01', 'Frank Darabont', 'Tom Hanks, Michael Clarke Duncan, David Morse', 'Paul Edgecomb, Gardien-chef du pénitencier de Cold Mountain en 1935, était chargé de veiller au bon déroulement des exécutions capitales. Parmi les prisonniers se trouvait un colosse du nom de John Coffey...', 'laligneverte.png'),
(3, 'La Liste de Schindler', '1994-03-02', 'Steven Spielberg', 'Liam Neeson, Ben Kingsley, Ralph Fiennes', 'Evocation des années de guerre d\'Oskar Schindler, industriel autrichien rentré à Cracovie en 1939 avec les troupes allemandes. Il va, tout au long de la guerre, protéger des juifs en les faisant travailler dans sa fabrique.', 'lalistedeschindler.png'),
(4, 'Le Parrain', '1972-10-18', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone marie sa fille à un bookmaker. Sollozzo, \"parrain\" de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue...', 'leparrain.png'),
(5, '12 hommes en colère', '1957-09-04', 'Sidney Lumet', 'Henry Fonda, Martin Balsam, John Fiedler', 'Lors d\'un procès, un juré émet l\'hypothèse que l\'homme qu\'il doit juger n\'est peut-être pas coupable. Il va tenter de convaincre les onze autres jurés.', '12hommesencolere.png'),
(6, 'Les Evadés', '1995-03-01', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'L\'amitié d\'un jeune banquier condamné à la prison à vie pour le meurtre de sa femme et d\'un vétéran de la prison de Shawshank, le pénitencier le plus sévère de l\'Etat du Maine.', 'lesevades.png'),
(7, 'Le Seigneur des anneaux : le retour du roi', '2003-12-17', 'Peter Jackson', 'Sean Astin, Elijah Wood, Viggo Mortensen', 'Tandis que les ténèbres se répandent sur la Terre du Milieu, Aragorn se révèle être l\'héritier caché des rois antiques. Quant à Frodon, toujours tenté par l\'Anneau, il voyage à travers les contrées ennemies, se reposant sur Sam et Gollum...', 'leretourduroi.png'),
(8, 'The Dark Knight, Le Chevalier Noir', '2008-08-13', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'Batman entreprend de démanteler les dernières organisations criminelles de Gotham. Mais il se heurte bientôt à un nouveau génie du crime qui répand la terreur et le chaos dans la ville : le Joker...', 'lechevaliernoir.png'),
(9, 'Pulp Fiction', '1994-10-26', 'Quentin Tarantino', 'John Travolta, Samuel L. Jackson, Uma Thurman', 'L\'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s\'entremêlent.', 'pulpfiction.png'),
(10, 'Gran Torino', '2009-02-25', 'Clint Eastwood', 'Clint Eastwood, Bee Vang, Ahney Her', 'Walt Kowalski est un ancien de la guerre de Corée, un homme inflexible, amer et pétri de préjugés surannés. Hormis sa chienne Daisy, il ne fait confiance qu\'à son M-1, toujours propre, toujours prêt à l\'usage...', 'grantorino.png');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(1, 'Comédie'),
(2, 'Drame'),
(3, 'Romance'),
(4, 'Policier'),
(5, 'Fantastique'),
(6, 'Historique'),
(7, 'Guerre'),
(8, 'Aventure'),
(9, 'Action'),
(10, 'Thriller');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`id_film`,`id_genre`),
  ADD KEY `appartenir_genre0_FK` (`id_genre`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `appartenir_film_FK` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  ADD CONSTRAINT `appartenir_genre0_FK` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
