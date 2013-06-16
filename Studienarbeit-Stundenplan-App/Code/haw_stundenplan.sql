-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 08. Juni 2013 um 10:10
-- Server Version: 5.1.44
-- PHP-Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `haw_stundenplan`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pflichtvorlesung`
--

CREATE TABLE IF NOT EXISTS `pflichtvorlesung` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `wochentag` int(11) NOT NULL,
  `zeit` time NOT NULL,
  `ort` text COLLATE utf8_unicode_ci NOT NULL,
  `prof` text COLLATE utf8_unicode_ci NOT NULL,
  `studiengang_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Daten für Tabelle `pflichtvorlesung`
--

INSERT INTO `pflichtvorlesung` (`id`, `name`, `wochentag`, `zeit`, `ort`, `prof`, `studiengang_id`, `semester_id`) VALUES
(1, 'Grundlagen der DSV ', 1, '09:45:00', 'EI 301', 'Vogl', 1, 2),
(2, 'Medienlehre und -\r\ngestaltung ', 1, '11:30:00', 'EI 313', 'Thiermeyer', 1, 2),
(3, 'Elektrotechnik ', 3, '13:30:00', 'EI 303', 'Hauer', 1, 2),
(4, 'Elektrotechnik Übungen', 3, '15:15:00', 'EI 002', 'Hauer', 1, 2),
(6, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '09:45:00', 'EI 306/309', 'Grüger', 1, 2),
(9, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '09:45:00', 'EI 212', 'Thiermeyer', 1, 2),
(13, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '11:30:00', 'EI 306/309', 'Grüger', 1, 2),
(15, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '13:30:00', 'EI 306/309', 'Grüger', 1, 2),
(17, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '11:30:00', 'EI 212', 'Thiermeyer', 1, 2),
(19, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '13:30:00', 'EI 212', 'Thiermeyer', 1, 2),
(20, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '15:15:00', 'EI 212', 'Thiermeyer', 1, 2),
(22, 'Websysteme', 4, '08:00:00', 'EDV 224', 'Meiller', 1, 2),
(23, 'Websysteme', 4, '09:45:00', 'EDV 224', 'Meiller', 1, 2),
(24, 'Websysteme', 5, '11:30:00', 'EDV 224', 'Meiller', 1, 2),
(25, 'Englisch', 4, '09:45:00', 'EI 202', 'Mora', 1, 2),
(27, 'Medienproduktion u. -\r\ntechnik Grdlg. Vorlesung ', 4, '13:30:00', 'EI 313', 'Grüger', 1, 2),
(28, 'Websysteme\r\nVorlesung', 5, '08:00:00', 'EI 301', 'Meiller', 1, 2),
(29, 'Medienproduktion u.\r\n-technik Grdlg.\r\nVorlesung u. Übungen ', 5, '11:30:00', 'EI 313', 'Grüger', 1, 2),
(30, 'Websysteme und\r\nDatenbanken \r\nÜbung', 1, '08:00:00', 'EDV 224', 'Hofberger', 1, 4),
(32, 'Websysteme und\r\nDatenbanken \r\nÜbung', 3, '08:00:00', 'EDV 124', 'Hofberger', 1, 4),
(33, 'Content-Entwicklung\r\n', 1, '09:45:00', 'EI 214', 'Thiermeyer', 1, 4),
(34, 'Content-Entwicklung\r\nÜbungen', 3, '11:30:00', 'EI 212', 'Thiermeyer', 1, 4),
(35, 'Content-Entwicklung\r\nÜbungen', 3, '13:30:00', 'EI 212', 'Thiermeyer', 1, 4),
(36, 'Websysteme und\r\nDatenbanken\r\nVorlesung ', 3, '09:45:00', 'EI 002/EDV 224 ', 'Hofberger', 1, 4),
(38, 'Programmiertechniken f.\r\nMultimediaanwendungen \r\nPraktikum', 2, '13:30:00', 'EDV 224', 'Hoffmann', 1, 4),
(39, 'Programmiertechniken f.\r\nMultimediaanwendungen \r\nPraktikum', 2, '15:15:00', 'EDV 224', 'Hoffmann', 1, 4),
(40, 'Programmiertechniken f.\r\nMultimediaanwendungen \r\nVorlesung', 4, '15:15:00', 'EDV 224 \r\nEI 304', 'Hoffmann', 1, 4),
(41, 'Interaktive Systeme ', 1, '08:00:00', 'EI 313', 'Pösl', 1, 6),
(42, 'Bachlor Seminar', 1, '09:45:00', 'EI 013', 'Meiller', 1, 6),
(43, '', 2, '08:00:00', 'EI 113', 'Wagemann', 1, 6),
(44, 'Interaktive Systeme \r\nPraktikum', 2, '13:30:00', 'EDV 124', 'Pösl', 1, 6),
(45, 'Interaktive Systeme \r\nPraktikum', 4, '09:45:00', 'EDV 124', 'Pösl', 1, 6),
(46, 'Medienmarketing', 4, '15:15:00', 'EI 214', 'Kock', 1, 6),
(47, 'Audioproduktion', 3, '08:00:00', 'EI 214', 'Kock', 1, 6),
(49, 'Audioproduktion\r\nPraktikum', 3, '11:30:00', 'EI 306/ 309', 'Kock', 1, 6),
(50, 'Audioproduktion\r\nPraktikum', 4, '15:15:00', 'EI 306/ 309', 'Kock', 1, 6),
(52, 'Biologie', 1, '08:00:00', 'Audimax', 'Urban', 3, 16),
(53, 'Grundlagen der Elektro- und\r\nInformationstechnik', 1, '09:45:00', 'MBUT 205', 'Hauer', 3, 16),
(54, 'Angewandte Physik', 1, '11:30:00', 'Audimax', 'Mändl', 3, 16),
(55, 'Ingenieurmathematik', 1, '13:30:00', 'MBUT 206', 'Schmid', 3, 16),
(56, 'Konstruktion', 1, '15:15:00', 'MBUT 111', 'Müller', 3, 16),
(57, 'Grundlagen der Elektro- und\r\nInformationstechnik', 2, '08:00:00', 'MBUT 206', 'Hauer', 3, 16),
(58, 'Technische Thermodynamik', 2, '09:45:00', 'MBUT 206', 'Taschek', 3, 16),
(59, 'Biologie', 2, '11:30:00', 'Audimax', 'Urban', 3, 16),
(60, 'Ingeneurmathematik', 2, '13:30:00', 'MBUT 206', 'Schmid', 3, 16),
(61, 'Praktikum Physik', 2, '15:15:00', 'Physiklabor', 'Mändl', 3, 16),
(62, 'Technische Thermodynamik', 3, '09:45:00', 'MBUT 207', 'Taschek', 3, 16),
(63, 'Zusatzübung Mathematik', 3, '11:30:00', 'MBUT 207', 'Kammerdiener', 3, 16),
(64, 'Werkstofftechnik', 3, '13:30:00', 'MBUT 207', 'Hummich', 3, 16),
(65, 'Praktikum Physik', 4, '09:45:00', 'Physiklabor', 'Mändl', 3, 16),
(66, 'Strömungsmechanik', 4, '11:45:00', 'MBUT 207', 'Bischof', 3, 16),
(67, 'Praktikum Technische\r\nThermodynamik', 5, '08:00:00', 'MBUT 219', 'Taschek', 3, 16),
(68, 'Biotechnologie', 1, '13:30:00', 'MBUT 202', 'Urban', 3, 18),
(69, 'Messtechnik und Sensorik', 1, '15:15:00', 'Audimax', 'Wolfram', 3, 18),
(70, 'Thermische Verfahrenstechnik', 2, '09:45:00', 'MBUT 207', 'Prell', 3, 18),
(71, 'Messtechnik', 2, '13:30:00', 'Audimax', 'Wolfram', 3, 18),
(72, 'Umweltmanagement', 3, '08:00:00', 'MBUT 207', 'Beminger', 3, 18),
(73, 'Reglungs- und Steuerungstechnik', 3, '09:45:00', 'MBUT 206', 'Wolfram', 3, 18),
(74, 'Praktikum Thermische\r\nVerfahrenstechnik', 3, '13:30:00', 'Labor', 'Prell/Mocker', 3, 18),
(75, 'Umweltchemie ', 4, '08:00:00', 'Audimax', 'Kurzweil', 3, 18),
(76, 'Rationelle Energienutzung', 4, '13:30:00', 'MBUT 310', 'Mocker', 3, 18),
(77, 'Praktikum Biotechnologie', 4, '15:15:00', 'Labor Block', 'Urban', 3, 18),
(78, 'Biogastechnik', 1, '08:00:00', 'MBUT 202', 'Bischof', 3, 20),
(79, 'Wasser- und Abwasseraufbreitung', 1, '09:45:00', 'MBUT 219', 'Bischof', 3, 20),
(80, 'Klimaänderung: Strategien zur\r\nVermeidung', 2, '08:00:00', 'MBUT 302', 'Urban', 3, 20),
(81, 'Umweltanalytik und\r\n-messtechnik', 2, '09:45:00', 'MBUT 302', 'Mändl/Kurzweil', 3, 20),
(82, 'Umweltanalytik und\r\n-messtechnik', 2, '11:30:00', 'MBUT 302', 'Mändl/Kurzweil', 3, 20),
(83, 'Toxikologie und Gefahrstoffe', 3, '08:00:00', 'MBUT 302', 'Kurzweil', 3, 20),
(84, 'Luftreinhaltung', 3, '09:45:00', 'MBUT 221', 'Beer', 3, 20),
(85, 'Recycling und Abfalltechnik', 3, '11:30:00', 'MBUT 221', 'Beminger', 3, 20),
(86, 'Projekt', 3, '15:15:00', 'MBUT 206', 'Diverse', 3, 20),
(87, 'Praktikum Umweltanalytik', 4, '15:15:00', 'Labor', 'Mändl', 3, 20),
(88, 'Luftreinhaltung', 4, '09:45:00', 'MBUT 221', 'Beer', 3, 20),
(89, 'Energiemanagement', 4, '09:45:00', 'MBUT 221', 'Beminger', 3, 20),
(90, 'Wasserkraft', 5, '13:30:00', 'MBUT 221', 'Pfeffer', 3, 20),
(91, 'Windenergie', 5, '15:15:00', 'MBUT 219', 'Meier', 3, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pflichtvorlesung_backup`
--

CREATE TABLE IF NOT EXISTS `pflichtvorlesung_backup` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `wochentag` int(11) NOT NULL,
  `zeit` time NOT NULL,
  `ort` text COLLATE utf8_unicode_ci NOT NULL,
  `prof` text COLLATE utf8_unicode_ci NOT NULL,
  `studiengang_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Daten für Tabelle `pflichtvorlesung_backup`
--

INSERT INTO `pflichtvorlesung_backup` (`id`, `name`, `wochentag`, `zeit`, `ort`, `prof`, `studiengang_id`, `semester_id`) VALUES
(1, 'Grundlagen der DSV ', 1, '09:45:00', 'EI 301', 'Vogl', 1, 2),
(2, 'Medienlehre und -\r\ngestaltung ', 1, '11:30:00', 'EI 313', 'Thiermeyer', 1, 2),
(3, 'Elektrotechnik ', 3, '13:30:00', 'EI 303', 'Hauer', 1, 2),
(4, 'Elektrotechnik Übungen', 3, '15:15:00', 'EI 002', 'Hauer', 1, 2),
(6, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '09:45:00', 'EI 306/309', 'Grüger', 1, 2),
(9, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '09:45:00', 'EI 212', 'Thiermeyer', 1, 2),
(13, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '11:30:00', 'EI 306/309', 'Grüger', 1, 2),
(15, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '13:30:00', 'EI 306/309', 'Grüger', 1, 2),
(17, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '11:30:00', 'EI 212', 'Thiermeyer', 1, 2),
(19, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '13:30:00', 'EI 212', 'Thiermeyer', 1, 2),
(20, 'Medienproduktion u. -\r\ntechnik Grdlg.Prakt. ', 2, '15:15:00', 'EI 212', 'Thiermeyer', 1, 2),
(22, 'Websysteme', 4, '08:00:00', 'EDV 224', 'Meiller', 1, 2),
(23, 'Websysteme', 4, '09:45:00', 'EDV 224', 'Meiller', 1, 2),
(24, 'Websysteme', 5, '11:30:00', 'EDV 224', 'Meiller', 1, 2),
(25, 'Englisch', 4, '09:45:00', 'EI 202', 'Mora', 1, 2),
(27, 'Medienproduktion u. -\r\ntechnik Grdlg. Vorlesung ', 4, '13:30:00', 'EI 313', 'Grüger', 1, 2),
(28, 'Websysteme\r\nVorlesung', 5, '08:00:00', 'EI 301', 'Meiller', 1, 2),
(29, 'Medienproduktion u.\r\n-technik Grdlg.\r\nVorlesung u. Übungen ', 5, '11:30:00', 'EI 313', 'Grüger', 1, 2),
(30, 'Websysteme und\r\nDatenbanken \r\nÜbung', 1, '08:00:00', 'EDV 224', 'Hofberger', 1, 4),
(32, 'Websysteme und\r\nDatenbanken \r\nÜbung', 3, '08:00:00', 'EDV 124', 'Hofberger', 1, 4),
(33, 'Content-Entwicklung\r\n', 1, '09:45:00', 'EI 214', 'Thiermeyer', 1, 4),
(34, 'Content-Entwicklung\r\nÜbungen', 3, '11:30:00', 'EI 212', 'Thiermeyer', 1, 4),
(35, 'Content-Entwicklung\r\nÜbungen', 3, '13:30:00', 'EI 212', 'Thiermeyer', 1, 4),
(36, 'Websysteme und\r\nDatenbanken\r\nVorlesung ', 3, '09:45:00', 'EI 002/EDV 224 ', 'Hofberger', 1, 4),
(38, 'Programmiertechniken f.\r\nMultimediaanwendungen \r\nPraktikum', 2, '13:30:00', 'EDV 224', 'Hoffmann', 1, 4),
(39, 'Programmiertechniken f.\r\nMultimediaanwendungen \r\nPraktikum', 2, '15:15:00', 'EDV 224', 'Hoffmann', 1, 4),
(40, 'Programmiertechniken f.\r\nMultimediaanwendungen \r\nVorlesung', 4, '15:15:00', 'EDV 224 \r\nEI 304', 'Hoffmann', 1, 4),
(41, 'Interaktive Systeme ', 1, '08:00:00', 'EI 313', 'Pösl', 1, 6),
(42, 'Bachlor Seminar', 1, '09:45:00', 'EI 013', 'Meiller', 1, 6),
(43, '', 2, '08:00:00', 'EI 113', 'Wagemann', 1, 6),
(44, 'Interaktive Systeme \r\nPraktikum', 2, '13:30:00', 'EDV 124', 'Pösl', 1, 6),
(45, 'Interaktive Systeme \r\nPraktikum', 4, '09:45:00', 'EDV 124', 'Pösl', 1, 6),
(46, 'Medienmarketing', 4, '15:15:00', 'EI 214', 'Kock', 1, 6),
(47, 'Audioproduktion', 3, '08:00:00', 'EI 214', 'Kock', 1, 6),
(49, 'Audioproduktion\r\nPraktikum', 3, '11:30:00', 'EI 306/ 309', 'Kock', 1, 6),
(50, 'Audioproduktion\r\nPraktikum', 4, '15:15:00', 'EI 306/ 309', 'Kock', 1, 6),
(52, 'Biologie', 1, '08:00:00', 'Audimax', 'Urban', 3, 2),
(53, 'Grundlagen der Elektro- und\r\nInformationstechnik', 1, '09:45:00', 'MBUT 205', 'Hauer', 3, 2),
(54, 'Angewandte Physik', 1, '11:30:00', 'Audimax', 'Mändl', 3, 2),
(55, 'Ingenieurmathematik', 1, '13:30:00', 'MBUT 206', 'Schmid', 3, 2),
(56, 'Konstruktion', 1, '15:15:00', 'MBUT 111', 'Müller', 3, 2),
(57, 'Grundlagen der Elektro- und\r\nInformationstechnik', 2, '08:00:00', 'MBUT 206', 'Hauer', 3, 2),
(58, 'Technische Thermodynamik', 2, '09:45:00', 'MBUT 206', 'Taschek', 3, 2),
(59, 'Biologie', 2, '11:30:00', 'Audimax', 'Urban', 3, 2),
(60, 'Ingeneurmathematik', 2, '13:30:00', 'MBUT 206', 'Schmid', 3, 2),
(61, 'Praktikum Physik', 2, '15:15:00', 'Physiklabor', 'Mändl', 3, 2),
(62, 'Technische Thermodynamik', 3, '09:45:00', 'MBUT 207', 'Taschek', 3, 2),
(63, 'Zusatzübung Mathematik', 3, '11:30:00', 'MBUT 207', 'Kammerdiener', 3, 2),
(64, 'Werkstofftechnik', 3, '13:30:00', 'MBUT 207', 'Hummich', 3, 2),
(65, 'Praktikum Physik', 4, '09:45:00', 'Physiklabor', 'Mändl', 3, 2),
(66, 'Strömungsmechanik', 4, '11:45:00', 'MBUT 207', 'Bischof', 3, 2),
(67, 'Praktikum Technische\r\nThermodynamik', 5, '08:00:00', 'MBUT 219', 'Taschek', 3, 2),
(68, 'Biotechnologie', 1, '13:30:00', 'MBUT 202', 'Urban', 3, 4),
(69, 'Messtechnik und Sensorik', 1, '15:15:00', 'Audimax', 'Wolfram', 3, 4),
(70, 'Thermische Verfahrenstechnik', 2, '09:45:00', 'MBUT 207', 'Prell', 3, 4),
(71, 'Messtechnik', 2, '13:30:00', 'Audimax', 'Wolfram', 3, 4),
(72, 'Umweltmanagement', 3, '08:00:00', 'MBUT 207', 'Beminger', 3, 4),
(73, 'Reglungs- und Steuerungstechnik', 3, '09:45:00', 'MBUT 206', 'Wolfram', 3, 4),
(74, 'Praktikum Thermische\r\nVerfahrenstechnik', 3, '13:30:00', 'Labor', 'Prell/Mocker', 3, 4),
(75, 'Umweltchemie ', 4, '08:00:00', 'Audimax', 'Kurzweil', 3, 4),
(76, 'Rationelle Energienutzung', 4, '13:30:00', 'MBUT 310', 'Mocker', 3, 4),
(77, 'Praktikum Biotechnologie', 4, '15:15:00', 'Labor Block', 'Urban', 3, 4),
(78, 'Biogastechnik', 1, '08:00:00', 'MBUT 202', 'Bischof', 3, 6),
(79, 'Wasser- und Abwasseraufbreitung', 1, '09:45:00', 'MBUT 219', 'Bischof', 3, 6),
(80, 'Klimaänderung: Strategien zur\r\nVermeidung', 2, '08:00:00', 'MBUT 302', 'Urban', 3, 6),
(81, 'Umweltanalytik und\r\n-messtechnik', 2, '09:45:00', 'MBUT 302', 'Mändl/Kurzweil', 3, 6),
(82, 'Umweltanalytik und\r\n-messtechnik', 2, '11:30:00', 'MBUT 302', 'Mändl/Kurzweil', 3, 6),
(83, 'Toxikologie und Gefahrstoffe', 3, '08:00:00', 'MBUT 302', 'Kurzweil', 3, 6),
(84, 'Luftreinhaltung', 3, '09:45:00', 'MBUT 221', 'Beer', 3, 6),
(85, 'Recycling und Abfalltechnik', 3, '11:30:00', 'MBUT 221', 'Beminger', 3, 6),
(86, 'Projekt', 3, '15:15:00', 'MBUT 206', 'Diverse', 3, 6),
(87, 'Praktikum Umweltanalytik', 4, '15:15:00', 'Labor', 'Mändl', 3, 6),
(88, 'Luftreinhaltung', 4, '09:45:00', 'MBUT 221', 'Beer', 3, 6),
(89, 'Energiemanagement', 4, '09:45:00', 'MBUT 221', 'Beminger', 3, 6),
(90, 'Wasserkraft', 5, '13:30:00', 'MBUT 221', 'Pfeffer', 3, 6),
(91, 'Windenergie', 5, '15:15:00', 'MBUT 219', 'Meier', 3, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(11) NOT NULL,
  `studiengang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Daten für Tabelle `semester`
--

INSERT INTO `semester` (`id`, `semester`, `studiengang_id`) VALUES
(1, 1, 5),
(2, 2, 1),
(4, 4, 1),
(6, 6, 1),
(9, 2, 2),
(11, 4, 2),
(13, 6, 2),
(16, 2, 3),
(18, 4, 3),
(20, 6, 3),
(23, 2, 4),
(25, 4, 4),
(27, 6, 4),
(28, 5, 5),
(29, 6, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `studiengang`
--

CREATE TABLE IF NOT EXISTS `studiengang` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `studiengang`
--

INSERT INTO `studiengang` (`id`, `name`) VALUES
(1, 'Medientechnik BA\r\n'),
(2, 'Angewandte Informatik BA'),
(3, 'Umwelttechnik BA'),
(4, 'Erneuerbare Energien BA');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wahlfach`
--

CREATE TABLE IF NOT EXISTS `wahlfach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `zeit` time NOT NULL,
  `ort` text COLLATE utf8_unicode_ci NOT NULL,
  `prof` text COLLATE utf8_unicode_ci NOT NULL,
  `wochentag` int(11) NOT NULL,
  `studiengang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`studiengang_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `wahlfach`
--

INSERT INTO `wahlfach` (`id`, `name`, `zeit`, `ort`, `prof`, `wochentag`, `studiengang_id`) VALUES
(1, 'Content-\r\nEntwicklung\r\nAV-Medien ', '11:45:00', 'EI 212', 'Müller', 1, 1),
(2, 'Corporate\r\nPublishing ', '15:15:00', 'EI 202', 'Hladik ', 1, 1),
(3, 'Kreativität in\r\nder\r\nBeleuchtungstechnik', '15:15:00', 'EI 306', 'Breunig', 1, 1),
(4, 'Sounddesign bei AV-Medien ', '11:45:00', 'EI 306', 'Kock', 3, 1),
(5, 'Darstellungs-\r\ntechniken u.\r\nKonzeptfindung', '11:45:00', 'EI 212', 'Müller', 3, 1),
(7, 'Luftfahrttechnik', '11:45:00', 'MBUT Labor B16', 'Nordmeyer', 3, 4),
(8, 'Verfahrensrecht\r\n', '08:00:00', 'MBUT 114', 'Bertl/Klug', 5, 4),
(9, 'Ausgewählte Themen der\r\nKünstlichen Intelligenz ', '17:00:00', 'EI 202', 'Heckmann', 2, 2),
(10, 'Kryptologie', '11:45:00', 'EI 204', 'Aßmuth', 3, 2),
(11, 'Web-Engineering', '08:00:00', 'EDV 224', 'Meiller', 2, 2),
(12, 'Waldspielplatz erkunden für Fortgeschrittene', '08:00:00', 'MBUT 01', 'Dr. Förster', 1, 3),
(13, 'Extraterrestrische Klimafaktoren', '19:45:00', 'EI 401', 'Prof. Dr. von und Zu', 1, 4);
