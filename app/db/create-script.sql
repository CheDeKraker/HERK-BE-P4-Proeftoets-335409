-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 13 jun 2023 om 11:23
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-herkansing`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Leerling`
--

DROP TABLE IF EXISTS `Leerling`;
CREATE TABLE IF NOT EXISTS `Leerling` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(30) NOT NULL,
  `Tussenvoegsel` varchar(10) DEFAULT NULL,
  `Achternaam` varchar(30) NOT NULL,
  `Mobiel` varchar(12) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Leerling`
--

INSERT INTO `Leerling` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`) VALUES
(1, 'Bas', 'De', 'Bakker', '06-28493827'),
(2, 'Terence', NULL, 'Draaijer', '06-39398734'),
(3, 'Samuel', NULL, 'Werchter', '06-24383291'),
(4, 'Sharida', NULL, 'Tetehuka', '06-48293823'),
(5, 'Fatma', NULL, 'Yilmaz', '06-34291234');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `LeerlingPerLesPakket`
--

DROP TABLE IF EXISTS `LeerlingPerLesPakket`;
CREATE TABLE IF NOT EXISTS `LeerlingPerLesPakket` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LesPakketId` int(11) NOT NULL,
  `LeerlingId` int(11) NOT NULL,
  `StartDatumRijlessen` varchar(12) NOT NULL,
  `DatumRijbewijsBehaald` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `LesPakketId` (`LesPakketId`),
  KEY `LeerlingId` (`LeerlingId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `LeerlingPerLesPakket`
--

INSERT INTO `LeerlingPerLesPakket` (`Id`, `LesPakketId`, `LeerlingId`, `StartDatumRijlessen`, `DatumRijbewijsBehaald`) VALUES
(1, 1, 5, '23-05-2023', NULL),
(2, 4, 1, '3-06-2022', '5-8-2022'),
(3, 1, 1, '2-06-2023', NULL),
(4, 3, 4, '1-01-2023', NULL),
(5, 1, 2, '30-11-2022', '23-05-2023'),
(6, 2, 3, '06-06-2022', '06-06-2023');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `LesPakket`
--

DROP TABLE IF EXISTS `LesPakket`;
CREATE TABLE IF NOT EXISTS `LesPakket` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pakket Naam` varchar(30) NOT NULL,
  `AantalLessen` int(3) NOT NULL,
  `Rijbewijscategorie` varchar(3) NOT NULL,
  `Prijs` int(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `LesPakket`
--

INSERT INTO `LesPakket` (`Id`, `Pakket Naam`, `AantalLessen`, `Rijbewijscategorie`, `Prijs`) VALUES
(1, 'Personeauto Extra', 40, 'B', 2700),
(2, 'Vrachtwagen Subliem', 60, 'C', 5400),
(3, 'Bus Extraordinaire', 80, 'D', 7300),
(4, 'Bromfiets Deluxe', 10, 'AM', 230);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `LeerlingPerLesPakket`
--
ALTER TABLE `LeerlingPerLesPakket`
  ADD CONSTRAINT `leerlingperlespakket_ibfk_1` FOREIGN KEY (`LesPakketId`) REFERENCES `LesPakket` (`Id`),
  ADD CONSTRAINT `leerlingperlespakket_ibfk_2` FOREIGN KEY (`LeerlingId`) REFERENCES `Leerling` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
