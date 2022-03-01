-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 mrt 2022 om 08:52
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bier`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bier`
--

CREATE TABLE `bier` (
  `id` int(11) NOT NULL,
  `naam` varchar(40) DEFAULT NULL,
  `brouwer` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `gisting` varchar(40) DEFAULT NULL,
  `perc` float DEFAULT NULL,
  `inkoop_prijs` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `bier`
--

INSERT INTO `bier` (`id`, `naam`, `brouwer`, `type`, `gisting`, `perc`, `inkoop_prijs`) VALUES
(1, 'Abondance mirabellen', 'Brouwerij de Troch', 'overige', 'spontane', 0.035, '4.39'),
(2, 'Abondance pêche', 'Brouwerij de Troch', 'overige', 'spontane', 0.035, '4.34'),
(3, 'Adler', 'Brouwerij Haacht', 'dortmunder', 'lage', 0, '3.53'),
(4, 'Aerts 1900', 'Brouwerij Palm', 'overige', 'hoge met nof', 0.074, '2.66'),
(5, 'Affligem christmas', 'Brouwerij de Smedt', 'overige', 'hoge', 0.07, '3.68'),
(6, 'Affligem donker', 'Brouwerij de Smedt', 'dubbel', 'hoge met nof', 0.065, '2.44'),
(7, 'Affligem helder', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.065, '2.16'),
(8, 'Affligem rood', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.065, '4.49'),
(9, 'Affligem tripel', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', 0.09, '4.95'),
(10, 'Affligem van `t patersvat', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.065, '3.29'),
(11, 'Akila pils', 'Brouwerij Louwaege', 'pilsener', 'lage', 0.05, '2.59'),
(12, 'Alexander Rodenbach', 'Bierbrouwerij Rodenbach', 'overige', 'hoge+melkzure', 0.062, '4.08'),
(13, 'Alken export', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.045, '4.62'),
(14, 'Allard extra', 'Brasserie Allard et Groetembril', 'saison', 'hoge met nof', 0.07, '2.86'),
(15, 'Allard extra vieille', 'Brasserie Allard et Groetembril', 'saison', 'hoge met nof', 0.07, '4.46'),
(16, 'Ambiorix dubbel', 'Brouwerij Slagmuylder', 'dubbel', 'hoge met nof', 0.078, '2.70'),
(17, 'Anglo pils', 'Alken-Maes (zetel Waarloos)', 'pilsener', 'lage', 0.049, '4.14'),
(18, 'Anglo pils', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '4.59'),
(19, 'Antiek', 'Brouwerij Isebaert', 'overige', 'hoge', 0.08, '2.52'),
(20, 'Antigoon', 'Brouwerij Isebaert', 'overige', 'hoge', 0.08, '2.83'),
(21, 'Arabier', 'De Dolle Brouwers', 'overige', '?', 0, '4.60'),
(22, 'Aro pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '3.49'),
(23, 'Artevelde', 'Brouwerij L. Huyghe N.V.', 'ale', 'hoge', 0.067, '4.67'),
(24, 'Artevelde grand cru', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.064, '4.88'),
(25, 'Artevelde pils', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', 0.051, '2.39'),
(26, 'Artois export', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '4.33'),
(27, 'Artvelde grand cru op gist', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.064, '3.45'),
(28, 'Artvelde menta', 'Brouwerij L. Huyghe N.V.', 'overige', 'lage', 0.054, '2.29'),
(29, 'Artvelde op gist', 'Brouwerij L. Huyghe N.V.', 'ale', 'hoge', 0.067, '2.09'),
(30, 'Augustijn', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '4.56'),
(31, 'Augustijn grand cru', 'Brouwerij Bios', 'tripel', 'hoge met nof', 0.09, '2.53'),
(32, 'Avec les Bons Voeux de la brasserie Dupo', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.096, '2.98'),
(33, 'Bacchus', 'Brouwerij Van Honsebrouck', 'Vlaamse bruine', 'hoge', 0.048, '2.33'),
(34, 'Baf', 'Brouwerij de Smedt', 'Belgische ale', 'hoge', 0.05, '3.69'),
(35, 'Bailus', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.088, '3.44'),
(36, 'Bakelandt', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.075, '4.16'),
(37, 'Bass Old Barley Stout', 'Lamot (groep Interbrew)', 'stout', 'hoge', 0.064, '2.48'),
(38, 'Bass pale ale', 'Lamot (groep Interbrew)', 'pale ale', 'hoge', 0.052, '3.93'),
(39, 'Battin Edelpils', 'Brasserie Battin', 'pilsener', 'lage', 0.0475, '4.20'),
(40, 'Battin Gambrinus', 'Brasserie Battin', 'pilsener', 'lage', 0.058, '4.23'),
(41, 'Battin Gambrinus bock', 'Brasserie Battin', 'bokbier', 'lage', 0.07, '3.54'),
(42, 'Battin Gambrinus urtyp', 'Brasserie Battin', 'pilsener', 'lage', 0.06, '2.99'),
(43, 'Bavik super pils', 'Bavik - De Brabandere', 'pilsener', 'lage', 0.049, '2.34'),
(44, 'Belga pils', 'Brouwerij Leroy', 'pilsener', 'lage', 0.05, '3.72'),
(45, 'Belle Vue frambozen', 'Belle Vue', 'framboise', 'spontane', 0.054, '3.60'),
(46, 'Belle Vue gueuze lambic \"cuvée\"', 'Belle Vue', 'gueuze', 'spontane', 0.051, '4.83'),
(47, 'Belle Vue kriek lambic', 'Belle Vue', 'kriekenbier', 'spontane', 0.052, '2.37'),
(48, 'Belle Vue kriek lambic \"cuvée\"', 'Belle Vue', 'kriekenbier', 'spontane', 0.052, '4.33'),
(49, 'Benedict', 'Brouwerij De Kluis (groep Interbrew)', 'dubbel', 'hoge met nof', 0.07, '3.57'),
(50, 'Bergenbier', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '2.84'),
(51, '`n Seule', 'Brouwerij Slagmuylder', 'overige', 'hoge met nof', 0.06, '4.49'),
(52, '`t Paterke Achelse Kluis', 'Brouwerij R. Gielen', 'dubbel', 'hoge met nof', 0.06, '2.94'),
(53, '203 Hamse witten', 'Brouwerij Vieille Villers', 'witbier', 'lage', 0.053, '2.23'),
(54, '406 Wuitensbier', 'Brouwerij Vieille Villers', 'dubbel', 'hoge', 0.062, '3.32'),
(55, '1664 de Kronenbourg', 'Alken-Maes (zetel Alken)', 'superpils', 'lage', 0.055, '4.93'),
(56, 'A la ferme', 'Brouwerij Isebaert', 'overige', 'hoge', 0.08, '3.70'),
(57, 'Abbaye d`Aulne ADA 6° sur lie', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.065, '4.68'),
(58, 'Abbaye d`Aulne ADA 8° Selection', 'Brouwerij de Smedt', 'overige', 'hoge', 0.08, '4.33'),
(59, 'Abbaye d`Aulne ADA 10° superbe', 'Brouwerij de Smedt', 'gerstewijn', 'hoge', 0, '2.60'),
(60, 'Abbaye de Bonne Espérance', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.08, '3.99'),
(61, 'Abbaye de Brogne Tripel sur lie', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', 0.09, '4.17'),
(62, 'Abbaye de Cambron', 'Brasserie de Silly', 'saison', 'hoge', 0.058, '3.89'),
(63, 'Abbaye de Gembloux', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.08, '4.92'),
(64, 'Abbaye de la Moinette', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.92'),
(65, 'Abbaye de Saint-Ghislain', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.87'),
(66, 'Abbaye des Rocs', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge met nof', 0.09, '4.57'),
(67, 'Abbaye du Val St.-Lambert', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '3.24'),
(68, 'Abdij van Steenbrugge', 'Brouwerij De Gouden Boom', 'dubbel', 'hoge met nof', 0.065, '3.49'),
(69, 'Abdijbier Loo', 'Brouwerij Isebaert', 'tripel', 'hoge met nof', 0.075, '2.71'),
(70, 'Abondance banaan', 'Brouwerij de Troch', 'overige', 'spontane', 0.035, '4.11'),
(71, 'Abondance framboos', 'Brouwerij de Troch', 'framboise', 'spontane', 0.035, '4.43'),
(72, 'Abondance kriek', 'Brouwerij de Troch', 'overige', 'spontane', 0.035, '4.80'),
(73, 'Beyerd Speciaal', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '2.72'),
(74, 'Beyerd speciaal 150', 'Brouwerij Sterkens', 'tripel', 'hoge', 0.08, '3.20'),
(75, 'Bezebier', 'Brouwerij Van Honsebrouck', 'overige', 'spontane', 0.05, '2.84'),
(76, 'Bécasse gueuze', 'Brabrux (Groep Belle-Vue)', 'gueuze', 'spontane', 0.052, '2.61'),
(77, 'Biermarkt super pils', 'Brouwerij Verhaeghe', 'pilsener', 'lage', 0.04, '2.50'),
(78, 'Bière de la Commanderie de piéton', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '2.71'),
(79, 'Bière des Ducs Lothier', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.08, '4.01'),
(80, 'Bière des Sorcières d`Ellezelles', 'Brasserie Voisin', 'overige', 'hoge met nof', 0.068, '3.94'),
(81, 'Bière du Boucanier', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '2.68'),
(82, 'Bière la Pax chatelet', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.08, '2.57'),
(83, 'Bink', 'Huisbrouwerij Kerkom', 'overige', 'hoge met nof', 0.055, '2.80'),
(84, 'Bios export', 'Brouwerij Bios', 'pilsener', 'lage', 0.05, '4.30'),
(85, 'Bios Vlaamse bourgogne', 'Brouwerij Bios', 'Vlaamse bruine', 'hoge met nof', 0.06, '2.11'),
(86, 'Blanch-ke', 'Brouwerij Van Honsebrouck', 'witbier', 'hoge met nof', 0.05, '4.64'),
(87, 'Block export', 'Brouwerij de Block', 'pilsener', 'lage', 0.046, '2.87'),
(88, 'Blonde des pères Abbaye d`Aulne', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.075, '4.45'),
(89, 'Blonde des pères Abbaye de Brogne', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.075, '2.61'),
(90, 'Blonde du menhir', 'Brasserie Lefèbvre', 'saison', 'hoge met nof', 0.055, '3.70'),
(91, 'Bocholter Kwik Pils', 'Brouwerij Martens', 'pilsener', 'lage', 0.05, '2.68'),
(92, 'Bock pils', 'Brouwerij Palm', 'pilsener', 'lage', 0.053, '3.29'),
(93, 'Bockhauser pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '3.41'),
(94, 'Bockor', 'Brouwerij Bockor', 'pilsener', 'lage', 0.052, '2.18'),
(95, 'Bockor export', 'Brouwerij Bockor', 'pilsener', 'lage', 0.052, '4.67'),
(96, 'Bockor pils', 'Brouwerij Bockor', 'pilsener', 'lage', 0.052, '2.83'),
(97, 'Bokkereyer', 'Brouwerij St. Jozef', 'overige', 'lage', 0.06, '4.14'),
(98, 'Bokrijk tarwe beer', 'Brouwerij de Block', 'witbier', 'hoge met nof', 0.05, '4.19'),
(99, 'Bokrijks kruikenbier', 'Brouwerij Sterkens', 'tripel', 'hoge met nof', 0.072, '3.55'),
(100, 'Bolderbergs kluizenaarsbier', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '3.18'),
(101, 'Bornem dubbel', 'Brouwerij Bios', 'dubbel', 'hoge met nof', 0.08, '3.24'),
(102, 'Bornem St. Bernard', 'Brouwerij Bios', 'dubbel', 'hoge met nof', 0.08, '4.64'),
(103, 'Boskeun', 'De Dolle Brouwers', 'overige', 'hoge met nof', 0.08, '2.50'),
(104, 'Bourgogne des Flandres', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', 0.058, '2.59'),
(105, 'Boxer pils', 'Brouwerij Roman', 'pilsener', 'lage', 0.051, '3.46'),
(106, 'Brabants witbier', 'Brouwerij Palm', 'witbier', 'hoge met nof', 0.05, '4.51'),
(107, 'Brave broeder', 'Brasserie de Silly', 'saison', 'hoge', 0.058, '4.16'),
(108, 'Brigand', 'Brouwerij Van Honsebrouck', 'tripel', 'hoge met nof', 0.09, '2.29'),
(109, 'Brouwers abdijbier', 'Brouwerij de Smedt', 'dubbel', 'hoge met nof', 0.065, '2.95'),
(110, 'Brouwers Bier Belgisch Bier', 'Brouwerij Piedboeuf', 'pilsener', 'lage', 0.048, '2.88'),
(111, 'Brouwmeester', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '3.54'),
(112, 'Brug ale', 'Brasserie de Silly', 'Belgische ale', 'hoge', 0.052, '4.08'),
(113, 'Brugse straffe Hendrik', 'Huisbrouwerij Straffe Hendrik (groep Riv', 'overige', 'hoge met nof', 0.054, '4.75'),
(114, 'Bruinekuif', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', 0.058, '3.54'),
(115, 'Brunehaut 8', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '4.46'),
(116, 'Brunehaut 8 vieille réserve', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '3.65'),
(117, 'Buffalo', 'Brouwerij van den Bossche', 'overige', 'hoge', 0.051, '2.87'),
(118, 'Bush beer', 'Brasserie Dubuisson', 'gerstewijn', 'hoge', 0.12, '4.42'),
(119, 'Caeyman pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '2.50'),
(120, 'Cambrinus', 'Brouwerij Verhaeghe', 'Belgische ale', 'hoge', 0.056, '3.22'),
(121, 'Campbell`s christmas', 'Martinas (groep Interbrew)', 'scotch ale', 'hoge', 0.082, '3.60'),
(122, 'Campbell`s scotch', 'Martinas (groep Interbrew)', 'scotch ale', 'hoge', 0.076, '3.33'),
(123, 'Campus', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '3.84'),
(124, 'Cantillon druivenlambic', 'Brouwerij Cantillon', 'overige', 'spontane', 0.049, '4.24'),
(125, 'Cantillon framboise', 'Brouwerij Cantillon', 'framboise', 'spontane', 0.054, '4.66'),
(126, 'Cantillon Grand Cru', 'Brouwerij Cantillon', 'lambic', 'spontane', 0.054, '2.59'),
(127, 'Cantillon kriek', 'Brouwerij Cantillon', 'kriekenbier', 'spontane', 0.054, '2.95'),
(128, 'Cara pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '2.01'),
(129, 'Cara pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '2.17'),
(130, 'Cara pils', 'Brouwerij Martens', 'pilsener', 'lage', 0.05, '2.85'),
(131, 'Cardor', 'Brouwerij Riva', 'overige', 'hoge', 0.08, '2.71'),
(132, 'Carillon', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '3.02'),
(133, 'Catchpole blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '4.98'),
(134, 'Catchpole brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.088, '4.85'),
(135, 'Caves', 'Brouwerij Verhaeghe', 'overige', 'hoge', 0.051, '4.28'),
(136, 'Caves Bruegel gueuze lambic', 'Brabrux (Groep Belle-Vue)', 'gueuze', 'spontane', 0.052, '4.84'),
(137, 'Caves Bruegel kriek lambic', 'Brabrux (Groep Belle-Vue)', 'kriekenbier', 'spontane', 0.052, '3.38'),
(138, 'Cervesia', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.38'),
(139, 'Cervoise de l`Avouerie d`Anthisnes', 'Brasserie de Silly', 'Belgische ale', 'hoge', 0.052, '4.76'),
(140, 'Cervoise du Maca', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '2.67'),
(141, 'Charles Quint', 'Brouwerij Haacht', 'dubbel', 'hoge', 0.065, '3.06'),
(142, 'Christmas', 'Brouwerij Leroy', 'dubbel', 'hoge', 0.08, '2.30'),
(143, 'Christmas beer (Delhaize)', 'Brasserie du Bocq', 'scotch ale', 'hoge met nof', 0.09, '3.33'),
(144, 'Christmas Primus pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '4.73'),
(145, 'Class pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '2.68'),
(146, 'Contra pils', 'Brouwerij Contreras', 'pilsener', 'lage', 0.048, '3.21'),
(147, 'Coq hardi pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '2.99'),
(148, 'Corsendonk Agnus', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '3.34'),
(149, 'Corsendonk Agnus 75 cl.', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '2.73'),
(150, 'Corsendonk Agnus van het vat', 'Brouwerij de Smedt', 'overige', 'hoge', 0.065, '4.63'),
(151, 'Corsendonk Pater', 'Brouwerij Bios', 'dubbel', 'hoge met nof', 0.08, '3.97'),
(152, 'Coy`Heimsen', 'Brouwerij van Eecke', 'dubbel', 'hoge met nof', 0.065, '3.97'),
(153, 'Cristal Alken', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '2.92'),
(154, 'Cristmas van Roy', 'Brouwerij van Roy', 'bokbier', 'hoge', 0.073, '3.68'),
(155, 'Crom pils', 'Brouwerij Crombé', 'pilsener', 'lage', 0.05, '4.67'),
(156, 'Cupido', 'Brouwerij Bosteels', 'overige', 'hoge', 0.048, '4.30'),
(157, 'Cuvée Bosquétia', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.067, '2.47'),
(158, 'Cuvée Cervesia Tornacum', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '3.47'),
(159, 'Cuvée de Blatteux', 'Brouwerij Verhaeghe', 'Belgische ale', 'hoge', 0.056, '4.94'),
(160, 'Cuvée de Borq - la St. Hubert', 'Brasserie Maire', 'overige', 'hoge', 0.05, '3.30'),
(161, 'Cuvée de Briqville', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '2.65'),
(162, 'Cuvée de Ciney blonde', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', 0.066, '4.36'),
(163, 'Cuvée de Ciney brune', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', 0.0634, '2.87'),
(164, 'Cuvée de Ciney spéciale', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', 0.085, '2.27'),
(165, 'Cuvée de Huy', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '3.74'),
(166, 'Cuvée de l`Ascension', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge met nof', 0.09, '3.91'),
(167, 'Cuvée de l`Ermitage', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', 0.07, '3.29'),
(168, 'Cuvée de l`Ermitage christmas', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', 0.07, '2.74'),
(169, 'Cuvée de l`Escapade', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '4.83'),
(170, 'Cuvée de la Pucelette', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '4.95'),
(171, 'Cuvée de la Thyria', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '2.24'),
(172, 'Cuvée de Namur blonde', 'Brasserie du Bocq', '?', '?', 0, '3.34'),
(173, 'Cuvée de Namur blonde', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.075, '4.97'),
(174, 'Cuvée de St. Gilles blonde', 'Brouwerij Facon', 'overige', 'hoge', 0.075, '3.85'),
(175, 'Cuvée de St. Gilles brune', 'Brouwerij Facon', 'overige', 'hoge', 0.075, '2.32'),
(176, 'Cuvée des Blatteux', 'Brouwerij Verhaeghe', 'Belgische ale', 'hoge', 0.056, '4.06'),
(177, 'Cuvée des Forges', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '2.33'),
(178, 'Cuvée des Hauts Voués', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '3.46'),
(179, 'Cuvée des moissons blonde', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '2.31'),
(180, 'Cuvée des moissons rousse', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '2.17'),
(181, 'Cuvée du Brochon', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge', 0.068, '4.91'),
(182, 'Cuvée du P`tit Lu', 'Brasserie du Bocq', 'saison', 'hoge met nof', 0.061, '4.05'),
(183, 'Cuvée du Tchop', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '3.52'),
(184, 'Cuvée Gerpinoise', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '3.47'),
(185, 'Cuvée Li Crochon', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.088, '4.77'),
(186, 'Cuvée Piconrue', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '2.45'),
(187, 'Cuvée spéciale de Chèvremont', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '4.96'),
(188, 'Cuvée St. Antoine', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.088, '3.42'),
(189, 'Cuvée St. Berthuin', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '3.22'),
(190, 'Cuvée St.Amand', 'Bavik - De Brabandere', 'tripel', 'hoge', 0.075, '3.85'),
(191, 'Da Vinci', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '4.58'),
(192, 'Daiselnaere', 'Brouwerij De Gouden Boom', 'dubbel', 'hoge met nof', 0.065, '3.37'),
(193, 'De Brouwers van de Dijle', 'Lamot (groep Interbrew)', 'pilsener', 'lage', 0.0525, '4.11'),
(194, 'De Koninck', 'Brouwerij De Koninck', 'Belgische ale', 'hoge', 0.05, '2.43'),
(195, 'De Koninck gueuze', 'Gueuzestekerij De Koninck', 'gueuze', 'spontane nof', 0.05, '3.82'),
(196, 'De Koninck kriek', 'Gueuzestekerij De Koninck', 'kriekenbier', 'spontane', 0.052, '3.80'),
(197, 'De Neve frambozen', 'De Neve (groep Belle-Vue)', 'framboise', 'spontane', 0.052, '2.56'),
(198, 'De Neve gueuze gefilterd', 'De Neve (groep Belle-Vue)', 'gueuze', 'spontane', 0.052, '2.39'),
(199, 'De Neve gueuze met hergisting', 'De Neve (groep Belle-Vue)', 'gueuze', 'spontane nof', 0.052, '2.25'),
(200, 'De Neve kriek lambic', 'De Neve (groep Belle-Vue)', 'kriekenbier', 'spontane', 0.052, '2.10'),
(201, 'De Pompeschitter', 'Brouwerij Leroy', 'overige', 'hoge', 0.07, '4.74'),
(202, 'De Ryck christmas pale ale', 'Brouwerij de Ryck', 'ale', 'hoge', 0.054, '3.40'),
(203, 'De Troch banane-lambic', 'Brouwerij de Troch', 'overige', 'spontane', 0.05, '3.77'),
(204, 'De Troch framboise', 'Brouwerij de Troch', 'overige', 'spontane', 0.03, '3.65'),
(205, 'De Troch gueuze', 'Brouwerij de Troch', 'gueuze', 'spontane nof', 0.05, '4.94'),
(206, 'De Troch kriek', 'Brouwerij de Troch', 'kriekenbier', 'spontane nof', 0.055, '2.74'),
(207, 'De Troch mirabelle', 'Brouwerij de Troch', 'overige', 'spontane', 0.03, '2.88'),
(208, 'De Troch pêche', 'Brouwerij de Troch', 'overige', 'spontane', 0.03, '4.17'),
(209, 'De Verboden Vrucht', 'Brouwerij De Kluis (groep Interbrew)', 'overige', '?', 0, '4.24'),
(210, 'Deca pils', 'Brouwerij Isebaert', 'pilsener', 'lage', 0.048, '3.68'),
(211, 'Deconinck pils', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '3.68'),
(212, 'Den Bleeken Moriaan', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.1, '2.37'),
(213, 'Den Bruynen Moriaen', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.09, '4.78'),
(214, 'Dentergems witbier - Riva blanche', 'Brouwerij Riva', 'witbier', 'hoge met nof', 0.05, '2.82'),
(215, 'Derby pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '3.74'),
(216, 'Dikke', 'Brouwerij de Smet', 'overige', 'lage', 0.074, '2.24'),
(217, 'Dikke Mathile', 'Brouwerij Strubbe', 'ale', 'hoge', 0.06, '3.99'),
(218, 'Dilirium tremens', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.095, '2.25'),
(219, 'Dobbel Palm', 'Brouwerij Palm', 'Belgische ale', 'hoge', 0.055, '3.25'),
(220, 'Dobbelen bruinen', 'Brouwerij Roman', 'Vlaamse bruine', 'hoge met nof', 0.08, '4.51'),
(221, 'Dobbelken', 'Brouwerij Strubbe', 'Vlaamse bruine', 'hoge+melkzure', 0.05, '4.80'),
(222, 'Domein donker', 'Brouwerij Bios', 'dubbel', 'hoge met nof', 0.08, '2.47'),
(223, 'Domein licht', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '4.95'),
(224, 'Domus', 'Huisbrouwerij Domus', 'overige', 'lage', 0.04, '3.34'),
(225, 'Dorée', 'Brasserie Lefèbvre', 'saison', 'hoge met nof', 0.055, '2.85'),
(226, 'Dorp pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '2.24'),
(227, 'Double abbaye de flandres', 'Brouwerij Riva', 'dubbel', 'hoge', 0.062, '3.64'),
(228, 'Double Enghien Spéciale', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '3.49'),
(229, 'Double spéciale bière d`abbaye Enghien', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '4.50'),
(230, 'Doublette d`Enghien', 'Brasserie de Silly', 'saison', 'hoge', 0.058, '4.06'),
(231, 'Drie Fonteinen framboos', 'Gueuzestekerij Drie Fonteinen', 'framboise', 'spontane', 0.06, '4.80'),
(232, 'Drie Fonteinen gueuze', 'Gueuzestekerij Drie Fonteinen', 'gueuze', 'spontane+nof', 0.055, '3.83'),
(233, 'Drongens plezierke', 'Brouwerij Slagmuylder', 'dubbel', 'hoge met nof', 0.078, '2.72'),
(234, 'Dubbel Domus honingbier', 'Huisbrouwerij Domus', 'overige', 'lage', 0.06, '3.14'),
(235, 'Duivels bier', 'Brouwerij Vander Linden', 'overige', 'spontane+hoge', 0.055, '2.52'),
(236, 'Duvel pils', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.051, '4.17'),
(237, 'E noed`n pannenoare', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '2.32'),
(238, 'E.S.P. extra strong pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '3.08'),
(239, 'Echte kriek', 'Brouwerij Verhaeghe', 'kriekenbier', 'hoge', 0.058, '3.43'),
(240, 'Eksaardse Blauwbuik', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '2.92'),
(241, 'El Vert Doudou', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '2.30'),
(242, 'Elckerlyc', 'Brouwerij Callewaert', 'pale ale', 'hoge', 0.065, '3.74'),
(243, 'Engeltjesbier', 'Brouwerij `t Steedje', 'overige', 'hoge met nof', 0.1, '3.80'),
(244, 'Eupener export', 'Eupener Bierbrauerei', 'pilsener', 'lage', 0.043, '2.80'),
(245, 'Eupener kapuziner klosterbier', 'Eupener Bierbrauerei', 'overige', 'lage', 0.05, '3.59'),
(246, 'Eupener pils', 'Eupener Bierbrauerei', 'pilsener', 'lage', 0.046, '4.54'),
(247, 'Ever natuurbier', 'Brouwerij Neyt', 'pilsener', 'lage', 0.055, '3.95'),
(248, 'Extra pilsener', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.5, '4.11'),
(249, 'Extra stout', 'Brouwerij Callewaert', 'stout', 'lage', 0.05, '3.70'),
(250, 'Extra stout', 'Brasserie Lefèbvre', 'stout', 'hoge', 0.065, '4.17'),
(251, 'Ezel', 'Brouwerij Verhaeghe', 'overige', 'hoge', 0.06, '4.74'),
(252, 'Facon export', 'Brouwerij Facon', 'pilsener', 'lage', 0.04, '3.19'),
(253, 'Facon extra stout', 'Brouwerij Facon', 'stout', 'hoge', 0.075, '2.73'),
(254, 'Facon ouden bruin', 'Brouwerij Facon', 'Vlaamse bruine', 'hoge+melkzure', 0.049, '2.10'),
(255, 'Facon pils', 'Brouwerij Facon', 'pilsener', 'lage', 0.049, '3.31'),
(256, 'Facon scotch-christmas', 'Brouwerij Facon', 'scotch ale', 'hoge', 0.075, '2.25'),
(257, 'Fakir', 'Brasserie la Binchoise', 'overige', 'hoge met nof', 0.062, '2.31'),
(258, 'Fana Blonde', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '2.79'),
(259, 'Fana brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '2.02'),
(260, 'Fancy', 'Bavik - De Brabandere', 'stout', 'lage', 0.049, '2.73'),
(261, 'Fantôme', 'Brasserie Fantôme', 'overige', 'hoge met nof', 0.08, '2.62'),
(262, 'Faro extra', 'Brouwerij van Roy', 'faro', 'spontane', 0.049, '2.87'),
(263, 'Faro Lambic Lindemans', 'Brouwerij Lindemans', 'faro', 'spontane', 0.042, '4.51'),
(264, 'Faro Pertotale', 'Brouwerij Frank Boon N.V.', 'faro', 'spontane+hoge', 0.06, '2.94'),
(265, 'Faro Vieux Foudre', 'Brouwerij Vander Linden', 'faro', 'spontane', 0.055, '2.18'),
(266, 'Fausse Qau', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '3.06'),
(267, 'Felix kriek oud bruin', 'Brouwerij Clarysse', 'kriekenbier', 'hoge', 0.055, '3.78'),
(268, 'Felix kriekbier', 'Brouwerij Clarysse', 'kriekenbier', 'hoge', 0.055, '4.72'),
(269, 'Felix Oudenaards kriekbier', 'Brouwerij Clarysse', 'kriekenbier', 'hoge', 0.06, '4.25'),
(270, 'Felix Oudenaards oud bruin', 'Brouwerij Clarysse', 'Vlaamse bruine', 'hoge', 0.055, '2.10'),
(271, 'Felix speciaal Oudenaards', 'Brouwerij Clarysse', 'Vlaamse bruine', 'hoge', 0.048, '4.74'),
(272, 'Flandrien', 'Brouwerij Louwaege', 'Belgische ale', 'hoge', 0.05, '3.39'),
(273, 'Floreffe blond 7', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '3.74'),
(274, 'Floreffe double', 'Brasserie Lefèbvre', 'dubbel', 'hoge met nof', 0.07, '3.52'),
(275, 'Floreffe la Meilleure', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.09, '4.37'),
(276, 'Floreffe triple', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '3.32'),
(277, 'Fortuyn', 'Brasserie de Silly', 'saison', 'hoge', 0.058, '4.47'),
(278, 'Foudroyante pêche', 'Brouwerij Lindemans', 'perzikbier', 'spontane', 0.036, '4.40'),
(279, 'Framboise Boon', 'Brouwerij Frank Boon N.V.', 'framboise', 'spontane nof', 0.062, '3.59'),
(280, 'Frambozenbier', 'Brouwerij Vander Linden', 'framboise', 'hoge met nof', 0.07, '2.74'),
(281, 'Freutche', 'Brasserie Lefèbvre', 'saison', 'hoge', 0.05, '3.95'),
(282, 'Frissing christmas', 'Brouwerij van Roy', 'bokbier', 'hoge', 0.073, '3.54'),
(283, 'Frissing pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '3.81'),
(284, 'Gala pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '3.47'),
(285, 'Gapersbier', 'Brouwerij Verhaeghe', 'overige', 'hoge', 0.06, '3.90'),
(286, 'Géant Altas 8', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '4.09'),
(287, 'Géant Atlas 9', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', 0.105, '3.75'),
(288, 'Gildenbier', 'Brouwerij Haacht', 'overige', 'hoge', 0.068, '4.49'),
(289, 'Ginder ale', 'Martinas (groep Interbrew)', 'Belgische ale', 'hoge', 0.051, '3.18'),
(290, 'Girardin gueuze 1882', 'Brouwerij Girardin', 'gueuze', 'spontane', 0.05, '3.46'),
(291, 'Girardin kriek 1882', 'Brouwerij Girardin', 'kriekenbier', 'spontane', 0.052, '2.75'),
(292, 'Gluck pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '4.36'),
(293, 'Godefroy', 'Brouwerij Moortgat', 'overige', 'hoge met nof', 0.056, '2.55'),
(294, 'Gold pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '3.68'),
(295, 'Golden Girl pils', 'Brouwerij Isebaert', 'pilsener', 'lage', 0.048, '2.74'),
(296, 'Golden hop pils', 'Bavik - De Brabandere', '?', '?', 0, '3.68'),
(297, 'Golden Kenia', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', 0.051, '2.18'),
(298, 'Golding Campina', 'Brouwerij Campina', 'pilsener', 'lage', 0.05, '3.86'),
(299, 'Gouden Carolus', 'Brouwerij Het Anker', 'overige', 'hoge met nof', 0.07, '4.76'),
(300, 'Grimbergen dubbel', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', 0.06, '4.20'),
(301, 'Grimbergen optimo bruno', 'Union (groep Alken-Maes)', 'gerstewijn', 'hoge', 0.1, '4.72'),
(302, 'Grimbergen tripel', 'Union (groep Alken-Maes)', 'tripel', 'hoge', 0.08, '3.00'),
(303, 'Grisette bière du cayoteu', 'Brasserie de Silly', 'Belgische ale', 'hoge', 0.052, '4.84'),
(304, 'Gueuze F.Boon', 'Brouwerij Frank Boon N.V.', 'gueuze', 'spontane nof', 0.06, '4.21'),
(305, 'Gueuze F.Boon \"Mariage parfait\"', 'Brouwerij Frank Boon N.V.', 'gueuze', 'spontane nof', 0.06, '4.50'),
(306, 'Gueuze framboisée des Ardennes', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'framboise', 'spontane', 0.04, '4.91'),
(307, 'Gueuze lambic Eylenbosch', 'Brouwerij Eyelenbosch (groep Alken-Maes)', 'gueuze', 'spontane', 0.05, '3.03'),
(308, 'Gueuze Oud Beersel', 'Vandervelden', 'gueuze', 'spontane', 0.06, '4.42'),
(309, 'Gueuze Vieux Foudre', 'Brouwerij Vander Linden', 'gueuze', 'spontane nof', 0.055, '2.03'),
(310, 'Gulden Draak', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '3.87'),
(311, 'Haacht export', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '2.25'),
(312, 'Haecht tarwebier', 'Brouwerij Haacht', 'witbier', 'hoge met nof', 0.05, '3.64'),
(313, 'Hanssens gueuze', 'Gueuzestekerij Hanssens', 'gueuze', 'spontane', 0.055, '3.47'),
(314, 'Hanssens kriek', 'Gueuzestekerij Hanssens', 'kriekenbier', 'spontane', 0.06, '4.43'),
(315, 'Hapkin', 'Brouwerij Louwaege', 'overige', 'hoge met nof', 0.085, '3.73'),
(316, 'Hellestraatse bruine', 'Brouwerij de Smedt', 'Belgische ale', 'hoge', 0.05, '3.38'),
(317, 'Herbakkersbier', 'Brouwerij de Block', 'overige', 'hoge', 0.064, '3.70'),
(318, 'Hercule Poirot', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', 0.105, '3.36'),
(319, 'Hert ale', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'Belgische ale', 'hoge', 0.05, '3.72'),
(320, 'Hertog Jan Pilsener', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '3.49'),
(321, 'Het Kapittel abt', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.1, '4.28'),
(322, 'Het Kapittel dubbel', 'Brouwerij van Eecke', 'dubbel', 'hoge met nof', 0.075, '2.95'),
(323, 'Het Kapittel pater', 'Brouwerij van Eecke', 'dubbel', 'hoge met nof', 0.065, '2.92'),
(324, 'Het Kapittel prior', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.09, '3.72'),
(325, 'Hoegaarden grand cru', 'Brouwerij De Kluis (groep Interbrew)', 'tripel', 'hoge met nof', 0.087, '4.87'),
(326, 'Holtland lager bier', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '2.18'),
(327, 'Horse ale', 'Lamot (groep Interbrew)', 'Belgische ale', 'hoge', 0.049, '3.27'),
(328, 'Hotteuse grand cru', 'Brouwerij Roman', 'tripel', 'hoge met nof', 0.071, '4.84'),
(329, 'Houten kop', 'Brouwerij Strubbe', 'overige', 'hoge met nof', 0.065, '3.39'),
(330, 'Huyghe export', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', 0.045, '3.41'),
(331, 'Ichtegems oud bruin', 'Brouwerij Strubbe', 'Vlaamse bruine', 'hoge+melkzure', 0.05, '4.88'),
(332, 'Iguanodon', 'Brasserie la Binchoise', 'overige', 'hoge met nof', 0.062, '3.17'),
(333, 'Interpils', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '2.21'),
(334, 'Jack-Op', 'Brabrux (Groep Belle-Vue)', 'overige', 'hoge+spontane', 0.05, '2.54'),
(335, 'Jacobins frambozen', 'Brouwerij Bockor', 'framboise', 'hoge+melkzure', 0.057, '4.09'),
(336, 'Jacobins gueuze lambic', 'Brouwerij Bockor', 'gueuze', 'hoge+melkzure', 0.057, '4.83'),
(337, 'Jacobins kriek lambic', 'Brouwerij Bockor', 'kriekenbier', 'hoge+melkzure', 0.057, '3.87'),
(338, 'Jan Buuc', 'Brouwerij Leroy', 'overige', 'hoge', 0.07, '2.85'),
(339, 'Jean de Nivilles', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '3.64'),
(340, 'Jeunesse de St-Remy', 'Brouwerij Bios', 'tripel', 'hoge met nof', 0.09, '4.67'),
(341, 'Jobarde', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '4.43'),
(342, 'Jot-pils', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '3.14'),
(343, 'Judas', 'Brouwerij van Zulte', 'overige', 'hoge met nof', 0.085, '3.42'),
(344, 'Julius', 'Brouwerij De Kluis (groep Interbrew)', 'overige', 'hoge met nof', 0.87, '2.67'),
(345, 'Jupiler', 'Kruger (groep Interbrew)', 'pilsener', 'lage', 0.048, '4.09'),
(346, 'Kanterbräu', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '4.42'),
(347, 'Kapucienestraetebier', 'Brouwerij Verhaeghe', 'overige', 'hoge', 0.051, '4.85'),
(348, 'Karlsquell', 'Brouwerij Martens', 'pilsener', 'lage', 0.05, '3.00'),
(349, 'Kastaar', 'Brouwerij de Block', 'overige', 'hoge', 0.064, '4.43'),
(350, 'Kerelsbier donker', 'Brouwerij Leroy', 'overige', 'hoge', 0.07, '2.15'),
(351, 'Kerelsbier licht', 'Brouwerij Leroy', 'superpils', 'lage', 0.065, '4.47'),
(352, 'Kerstbier', 'Brouwerij van den Bossche', 'overige', 'hoge', 0.052, '4.88'),
(353, 'Kluyserbier', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '3.01'),
(354, 'Kob pilsener', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'pilsener', 'lage', 0.05, '4.41'),
(355, 'kriek', 'Brouwerij van Roy', 'kriekenbier', 'spontane', 0.048, '2.01'),
(356, 'Kriek F.Boon', 'Brouwerij Frank Boon N.V.', 'kriekenbier', 'spontane nof', 0.065, '3.82'),
(357, 'Kriek F.Boon \"mariage parfait\"', 'Brouwerij Frank Boon N.V.', 'kriekenbier', 'spontane nof', 0.065, '2.09'),
(358, 'Kriek lambic Eylenbosch', 'Brouwerij Eyelenbosch (groep Alken-Maes)', 'kriekenbier', 'spontane', 0.052, '2.97'),
(359, 'Kriek Oud Beersel', 'Brouwerij Museum Oud Beersel', 'kriekenbier', 'spontane', 0.07, '3.60'),
(360, 'Kriek Vieux Foudre', 'Brouwerij Vander Linden', 'kriekenbier', 'spontane nof', 0.055, '4.08'),
(361, 'Kriek-lambic Drie Fonteinen', 'Gueuzestekerij Drie Fonteinen', 'kriekenbier', 'spontane', 0.06, '4.58'),
(362, 'Kriekenbier', 'Brouwerij St. Jozef', 'kriekenbier', 'lage', 0.046, '2.68'),
(363, 'Kronenbourg', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '3.64'),
(364, 'Krüger export beer', 'Kruger (groep Interbrew)', 'pilsener', 'lage', 0.047, '2.17'),
(365, 'Krüger pils', 'Kruger (groep Interbrew)', 'pilsener', 'lage', 0.048, '3.91'),
(366, 'L`Anvinoise', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '2.05'),
(367, 'L`Arsouye blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '2.53'),
(368, 'L`Arsouye brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '4.48'),
(369, 'L`Eblouissante', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '3.84'),
(370, 'L`Eveil Wallon', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.73'),
(371, 'L`Gayette', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '2.15'),
(372, 'L`Vapeur en folie', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '3.55'),
(373, 'L`Vapeur rousse', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '3.32'),
(374, 'La Bergeotte', 'Brasserie du Bocq', 'saison', 'hoge met nof', 0.061, '3.94'),
(375, 'La Bergeotte', 'Brasserie du Bocq', 'saison', 'hoge met nof', 0.061, '4.73'),
(376, 'La bière du Grand monarque', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.067, '3.83'),
(377, 'La Boum 6', 'Brasserie Allard et Groetembril', 'saison', 'hoge met nof', 0.07, '2.96'),
(378, 'La Boum 8', 'Brasserie Allard et Groetembril', 'overige', 'hoge+melkzure', 0.095, '4.30'),
(379, 'La Boussutoise - Biére des fagnes', 'Brasserie du Bocq', '?', '?', 0, '4.62'),
(380, 'La Buxus', 'Brasserie la Binchoise', 'overige', 'hoge met nof', 0.083, '2.19'),
(381, 'La Cervoise de St. Gery', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.12'),
(382, 'La Cervoise des Fracs-Gaulois', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.01'),
(383, 'La Communiale', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '3.70'),
(384, 'La Condrusienne', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '4.45'),
(385, 'La Crupettoise', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '3.14'),
(386, 'La Cuvée des Purleux', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.39'),
(387, 'La Diva', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '2.50'),
(388, 'La Druide', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', 0.105, '3.32'),
(389, 'La Druide 10', 'Brasserie Allard et Groetembril', 'gerstewijn', 'hoge met nof', 0.105, '4.11'),
(390, 'La Durboyse', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '2.61'),
(391, 'La Fleurie de Wanze', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '4.69'),
(392, 'La Gauloise 8°', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.088, '4.63'),
(393, 'La Gaumaise', 'Brasserie Maire', 'overige', 'hoge', 0.05, '4.09'),
(394, 'La Gaumaise brune', 'Brasserie Maire', 'overige', 'hoge', 0.05, '4.55'),
(395, 'La Geldonia', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '2.47'),
(396, 'La Glorieuse', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '2.72'),
(397, 'La Hamaide', 'Brasserie Voisin', 'saison', 'hoge', 0.055, '4.19'),
(398, 'La Houlette', 'Brasserie du Bocq', 'saison', 'hoge met nof', 0.061, '4.80'),
(399, 'La Joyeuse (blonde)', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.42'),
(400, 'La Joyeuse (brune)', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.70'),
(401, 'La Laekenoise', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '3.22'),
(402, 'La Liègeoise blonde', 'Brouwerij Riva', 'overige', 'hoge', 0.08, '3.01'),
(403, 'La Liègeoise brune', 'Brouwerij Riva', 'dubbel', 'hoge met nof', 0.08, '3.38'),
(404, 'La Louvoise', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '2.87'),
(405, 'La Malmédy blonde', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '2.23'),
(406, 'La Malmédy brune', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '3.55'),
(407, 'La Marquise blonde', 'Brouwerij Riva', 'overige', 'hoge', 0.08, '3.03'),
(408, 'La Marquise brune', 'Brouwerij Riva', 'tripel', 'hoge', 0.08, '2.52'),
(409, 'La Moinette des Sorcières de Warquignies', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.51'),
(410, 'La Moneuse', 'Brasserie de Blaugies', 'overige', 'hoge met nof', 0, '4.00'),
(411, 'La Moneuse Spéciale Noël', 'Brasserie de Blaugies', 'overige', 'hoge met nof', 0, '4.47'),
(412, 'La Montagnarde', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge met nof', 0.08, '2.34'),
(413, 'La Naiade - Cuvée du Carnaval Tournai', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '2.28'),
(414, 'La Neuvilloise', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '2.37'),
(415, 'La Petite follie', 'Brasserie de Silly', 'overige', 'hoge met nof', 0.062, '3.04'),
(416, 'La Poiluchette blonde', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.075, '3.06'),
(417, 'La Poiluchette blonde', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.075, '4.18'),
(418, 'La Poiluchette brune', 'Brouwerij L. Huyghe N.V.', 'overige', 'hoge met nof', 0.075, '3.74'),
(419, 'La Poiluchette brune', 'Brouwerij L. Huyghe N.V.', 'dubbel', 'hoge met nof', 0.075, '4.13'),
(420, 'La Seigneurie', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '4.45'),
(421, 'La Vieille bon secours', 'Brouwerij Riva', 'tripel', 'hoge', 0.08, '4.86'),
(422, 'La Vieille Salme', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '2.94'),
(423, 'La Vieillotte du Hurlevent', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.13'),
(424, 'Lamoral Degmont', 'Brouwerij van den Bossche', 'tripel', 'hoge met nof', 0.08, '3.83'),
(425, 'Lamot export', 'Lamot (groep Interbrew)', 'pilsener', 'lage', 0.0525, '4.75'),
(426, 'Lamot pilsor', 'Lamot (groep Interbrew)', 'pilsener', 'lage', 0.0525, '4.24'),
(427, 'Le Cougnet', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '4.99'),
(428, 'Le Roy christmas', 'Brouwerij Leroy', 'overige', 'hoge', 0.08, '4.20'),
(429, 'Le Vaudrée', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '4.02'),
(430, 'Leffe bière russe', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', 0, '2.51'),
(431, 'Leffe blonde', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', 0.066, '4.50'),
(432, 'Leffe brune', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', 0.0634, '3.95'),
(433, 'Leffe radieuse', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', 0.085, '4.26'),
(434, 'Leffe triple', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '4.46'),
(435, 'Leffe vieille cuvée 8', 'St. Guibert (groep Interbrew)', 'overige', 'hoge', 0.084, '4.50'),
(436, 'Lekkerbek', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '4.13'),
(437, 'Li Pir`êye di Licint 6.5', 'Brasserie la Binchoise', 'overige', 'hoge met nof', 0.062, '2.17'),
(438, 'Lichtaartse Kwezel', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '2.43'),
(439, 'Liefmans', 'Brouwerij Liefmans (groep Riva)', 'Vlaamse bruine', 'hoge', 0.05, '3.64'),
(440, 'Liefmans frambozenbier', 'Brouwerij Liefmans (groep Riva)', 'framboise', '?', 0, '2.92'),
(441, 'Liefmans Goudenband', 'Brouwerij Liefmans (groep Riva)', 'Vlaamse bruine', '?', 0, '4.68'),
(442, 'Liefmans kriekbier', 'Brouwerij Liefmans (groep Riva)', 'kriekenbier', 'hoge', 0.071, '3.64'),
(443, 'Liezelse witte', 'Brouwerij Vieille Villers', 'witbier', 'lage', 0.053, '2.17'),
(444, 'Lilliput - elisir degli gnomi', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '3.93'),
(445, 'Lindemans cassis', 'Brouwerij Lindemans', 'cassisbier', 'spontane', 0.039, '2.15'),
(446, 'Lindemans framboise', 'Brouwerij Lindemans', 'framboise', 'spontane', 0.036, '2.94'),
(447, 'Lindemans gueuze gefilterd', 'Brouwerij Lindemans', 'gueuze', 'spontane', 0.05, '3.26'),
(448, 'Lindemans gueuze ongefilterd', 'Brouwerij Lindemans', 'gueuze', 'spontane nof', 0.055, '2.49'),
(449, 'Lindemans kriek', 'Brouwerij Lindemans', 'kriekenbier', 'spontane', 0.039, '3.68'),
(450, 'Livinus blonde', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.1, '2.92'),
(451, 'Livinus brune', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.09, '4.57'),
(452, 'Loburg', 'Artois (groep Interbrew)', 'superpils', 'lage', 0.058, '3.10'),
(453, 'Loteling (donker)', 'Brouwerij Vieille Villers', 'dubbel', 'hoge', 0.063, '2.79'),
(454, 'Loteling licht', 'Brouwerij Vieille Villers', 'overige', 'hoge', 0.069, '2.63'),
(455, 'Louwaege export', 'Brouwerij Louwaege', 'pilsener', 'lage', 0.045, '2.77'),
(456, 'Louwaege stout', 'Brouwerij Louwaege', 'stout', 'lage', 0.045, '3.98'),
(457, 'Louwaege`s pils', 'Brouwerij Louwaege', 'pilsener', 'lage', 0.05, '3.57'),
(458, 'Lowie Kators', 'Brasserie d`Achouffe', 'overige', 'hoge met nof', 0.08, '3.93'),
(459, 'Lucifer', 'Brouwerij Riva', 'overige', 'hoge', 0.08, '3.91'),
(460, 'Maartsen Tonneke', 'Brouwerij Contreras', 'ale', 'hoge met nof', 0.054, '2.79'),
(461, 'Madie', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '3.21'),
(462, 'Maes dubbel special', 'Alken-Maes (zetel Waarloos)', '?', '?', 0, '2.69'),
(463, 'Maes pils', 'Alken-Maes (zetel Waarloos)', 'pilsener', 'lage', 0.049, '4.80'),
(464, 'Majutte', 'Brouwerij Strubbe', 'ale', 'hoge', 0.06, '4.95'),
(465, 'Manneke pils', 'Bouwer Crombé', '?', 'hoge', 0.06, '2.34'),
(466, 'Maredsous 6 (vat)', 'Brouwerij Moortgat', 'dubbel', 'hoge met nof', 0.065, '3.84'),
(467, 'Maredsous 6° (fles)', 'Brouwerij Moortgat', 'dubbel', 'hoge met nof', 0.065, '4.20'),
(468, 'Maredsous 8 (vat)', 'Brouwerij Moortgat', '?', '?', 0, '4.49'),
(469, 'Maredsous 8° (fles)', 'Brouwerij Moortgat', 'dubbel', 'hoge', 0.08, '4.83'),
(470, 'Maredsous 9°', 'Brouwerij Moortgat', 'overige', 'hoge met nof', 0.09, '2.66'),
(471, 'Martens pils', 'Brouwerij Martens', 'pilsener', 'lage', 0.05, '2.85'),
(472, 'Masterbräu', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '4.24'),
(473, 'Mc Ewans christmas', 'Lamot (groep Interbrew)', 'overige', 'hoge', 0.085, '4.67'),
(474, 'Mc Ewans scotch ale', 'Lamot (groep Interbrew)', 'scotch ale', 'hoge', 0.072, '2.64'),
(475, 'Mechelse bruynen', 'Brouwerij Het Anker', 'overige', 'hoge met nof', 0.07, '3.17'),
(476, 'Meister extra lager', 'Brouwerij van Roy', '?', '?', 0, '2.96'),
(477, 'Minty', 'Brouwerij L. Huyghe N.V.', 'overige', 'lage', 0.054, '3.25'),
(478, 'Moeder Overste', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.08, '2.40'),
(479, 'Moinette (blonde)', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.25'),
(480, 'Moinette (brune)', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.05'),
(481, 'Moinette Athoise', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '2.48'),
(482, 'Monseigneur', 'Brouwerij Bios', 'dubbel', 'hoge met nof', 0.08, '4.26'),
(483, 'Monseigneur grand cru', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '2.85'),
(484, 'Moortgat extra pilsener (fles)', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.051, '2.50'),
(485, 'Moortgat extra pilsener (vat)', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.051, '4.91'),
(486, 'Moriau gueuze', 'Gueuzestekerij Moriau', 'gueuze', 'spontane', 0.055, '3.09'),
(487, 'Moriau kriek', 'Gueuzestekerij Moriau', 'kriekenbier', 'spontane', 0.055, '4.69'),
(488, 'Mort Subite cassis', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'cassisbier', 'spontane', 0.04, '3.20'),
(489, 'Mort Subite framboise', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'framboise', 'spontane', 0.04, '2.92'),
(490, 'Mort Subite gueuze gefilterd', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'gueuze', 'spontane', 0.05, '2.98'),
(491, 'Mort Subite gueuze ongefilterd', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'gueuze', 'spontane nof', 0.065, '4.17'),
(492, 'Mort Subite kriek', 'Brouwerij De Keersmaeker (groep Alken-Ma', 'kriekenbier', 'spontane', 0.045, '3.92'),
(493, 'Munck pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '2.07'),
(494, 'Myn`s pils', 'Brasserie de Silly', 'pilsener', 'lage', 0.049, '2.60'),
(495, 'Napoléon', 'Brouwerij de Smedt', 'overige', 'hoge', 0.074, '4.78'),
(496, 'Ne Flierefluiter', 'Brouwerij de Smedt', 'overige', 'hoge met nof', 0.065, '2.09'),
(497, 'Neyt export', 'Brouwerij Neyt', 'pilsener', 'lage', 0.047, '3.11'),
(498, 'Neyt pils', 'Brouwerij Neyt', 'pilsener', 'lage', 0.05, '4.31'),
(499, 'Noël-christmas-Weihnacht', 'Brouwerij Verhaeghe', 'tripel', 'hoge', 0.075, '4.19'),
(500, 'NouNou', 'Brouwerij Bios', 'Belgische ale', 'hoge', 0.05, '3.01'),
(501, 'Odnar', 'Brouwerij Liefmans (groep Riva)', 'Vlaamse bruine', 'hoge', 0.048, '3.51'),
(502, 'Oelens boerke', 'Brouwerij Leroy', 'superpils', 'lage', 0.065, '3.50'),
(503, 'Oeral', 'De Dolle Brouwers', 'overige', 'hoge met nof', 0.06, '4.99'),
(504, 'Old Musketeer', 'Brouwerij Leroy', 'overige', 'hoge', 0.08, '3.46'),
(505, 'Op-ale', 'Brouwerij de Smedt', 'Belgische ale', 'hoge', 0.05, '3.31'),
(506, 'Ops-ale', 'St. Jozef', 'pilsener', 'lage', 0.055, '4.19'),
(507, 'Oud Hoegaarden', 'Brouwerij De Kluis (groep Interbrew)', 'witbier', '?', 0, '3.02'),
(508, 'Oud Kriekenbier', 'Brouwerij Crombé', 'kriekenbier', 'hoge', 0.061, '3.52'),
(509, 'Oud Zottegems bier', 'Brouwerij Crombé', 'overige', 'hoge', 0.065, '3.54'),
(510, 'Oudenaards wit tarwebier', 'Brouwerij Clarysse', 'weizenbier', 'hoge met nof', 0.048, '2.15'),
(511, 'Palingbier', 'Brouwerij van Roy', 'tripel', 'hoge', 0.078, '4.13'),
(512, 'Pandoer', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', 0.058, '3.19'),
(513, 'Parel pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '4.55'),
(514, 'Pater Lieven', 'Brouwerij van den Bossche', 'Belgische ale', 'hoge', 0.054, '2.19'),
(515, 'Paulus', 'Brouwerij Leroy', 'Vlaamse bruine', 'hoge', 0.07, '4.30'),
(516, 'Pauwel Kwak', 'Brouwerij Bosteels', 'gerstewijn', 'hoge', 0.085, '3.91'),
(517, 'Pax pils', 'St. Jozef', 'pilsener', 'lage', 0.048, '4.67'),
(518, 'Pecheresse', 'Brouwerij Lindemans', 'perzikbier', 'spontane', 0.036, '3.60'),
(519, 'Peeterman', 'Brouwerij De Kluis (groep Interbrew)', 'witbier', 'hoge', 0.045, '2.02'),
(520, 'Perle d`Hastière', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '3.27'),
(521, 'Peter Benoit', 'Brouwerij Leroy', 'overige', 'hoge', 0.07, '2.31'),
(522, 'Petrus', 'Bavik - De Brabandere', 'Vlaamse bruine', 'hoge', 0.055, '2.73'),
(523, 'Pick-up pils', 'Brouwerij Walrave', 'pilsener', 'lage', 0.048, '4.73'),
(524, 'Pils', 'Brouwerij Callewaert', 'pilsener', 'lage', 0.05, '4.47'),
(525, 'Pils', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '3.14'),
(526, 'Pils artisanale', 'Brouwerij Lefebvre', 'pilsener', 'lage', 0.05, '3.28'),
(527, 'Pint`Cousse', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '4.98'),
(528, 'Piraat', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '4.05'),
(529, 'Poje', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '3.34'),
(530, 'Polderbier', 'Brouwerij `t Steedje', 'overige', 'hoge met nof', 0.09, '2.54'),
(531, 'Pony stout', 'Bavik - De Brabandere', 'stout', 'lage', 0.049, '3.66'),
(532, 'Poorter', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '2.69'),
(533, 'Poperings Hommelbier', 'Brouwerij van Eecke', 'overige', 'hoge met nof', 0.075, '3.46'),
(534, 'Postel Abdijbier', 'Brouwerij de Smedt', 'dubbel', 'hoge met nof', 0.065, '4.24'),
(535, 'Prik pils', 'Brouwerij Roman', 'pilsener', 'lage', 0.051, '2.80'),
(536, 'Primus Haacht pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '2.29'),
(537, 'Prisma pils', 'Brouwerij Haacht', 'pilsener', 'lage', 0.05, '4.03'),
(538, 'Privat', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '2.30'),
(539, 'Profi pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '3.40'),
(540, 'Prosit pils', 'Brouwerij Bosteels', 'pilsener', 'lage', 0.048, '2.12'),
(541, 'Pruver', 'Brouwerij R. Gielen', 'overige', 'hoge met nof', 0.052, '4.37'),
(542, 'Punch beer (blond)', 'Brouwerij Facon', 'overige', 'hoge', 0.075, '4.51'),
(543, 'Rafexport', 'Brouwerij Contreras', 'pilsener', 'lage', 0.048, '4.43'),
(544, 'Redor pils', 'Brasserie Dupont', 'pilsener', 'lage', 0.055, '3.63'),
(545, 'Reets brooikensbier', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '2.87'),
(546, 'Reinbräu', 'Alken-Maes (zetel Alken)', 'pilsener', 'lage', 0.048, '4.46'),
(547, 'Reuzen oud bier', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '2.70'),
(548, 'Régal Christmas', 'Brasserie du Bocq', 'scotch ale', 'hoge met nof', 0.09, '4.09'),
(549, 'Réserve Marie de Hongrie', 'Brasserie la Binchoise', 'overige', 'hoge met nof', 0.083, '4.38'),
(550, 'Rétro oude methode', 'Brouwerij L. Huyghe N.V.', 'ale', 'hoge', 0.067, '4.61'),
(551, 'Rétro pils oude methode', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', 0.051, '4.91'),
(552, 'Rijsels tripel', 'Brouwerij Bios', 'tripel', 'hoge met nof', 0.09, '2.71'),
(553, 'Riva 2000', 'Brouwerij Riva', 'superpils', 'lage', 0.061, '2.84'),
(554, 'Riva christmas', 'Brouwerij Riva', 'dubbel', 'hoge', 0.08, '4.06'),
(555, 'Riva pils', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '3.80'),
(556, 'Rochefort 6', 'Abbaye Notre Dame De St.Rémy', 'trappist/dubbel', 'hoge met nof', 0.075, '4.80'),
(557, 'Rochefort 8', 'Abbaye Notre Dame De St.Rémy', 'trappist/gerstewijn', 'hoge met nof', 0.092, '4.60'),
(558, 'Rochefort 10', 'Abbaye Notre Dame De St.Rémy', 'trappist/gerstewijn', 'hoge met nof', 0.113, '3.60'),
(559, 'Rochus', 'Brouwerij de Ryck', 'overige', 'hoge', 0.062, '2.22'),
(560, 'Rodal', 'De Neve (groep Belle-Vue)', 'overige', 'hoge+spontane', 0.05, '4.30'),
(561, 'Rodenbach grand cru', 'Bierbrouwerij Rodenbach', 'Vlaamse bruine', 'hoge+melkzure', 0.067, '3.84'),
(562, 'Roman export', 'Brouwerij Roman', 'pilsener', 'lage', 0.051, '4.28'),
(563, 'Roman Oudenaards', 'Brouwerij Roman', 'Vlaamse bruine', 'hoge', 0.05, '4.87'),
(564, 'Romy luxe', 'Brouwerij Roman', 'pilsener', 'lage', 0.056, '3.54'),
(565, 'Romy pils', 'Brouwerij Roman', 'pilsener', 'lage', 0.051, '4.08'),
(566, 'Rosé de Cambrinus', 'Brouwerij Cantillon', 'framboise', 'spontane', 0.054, '4.76'),
(567, 'Royal pils', 'Brouwerij Riva', 'pilsener', 'lage', 0.05, '3.59'),
(568, 'RUCA pils', 'Brouwerij Isebaert', 'pilsener', 'lage', 0.048, '4.66'),
(569, 'Safir pils', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '4.53'),
(570, 'Saison 1900', 'Brasserie Lefèbvre', 'saison', 'hoge', 0.05, '3.68'),
(571, 'Saison de Pipaux', 'Brasserie à Vapeur', 'saison', 'hoge met nof', 0.065, '2.81'),
(572, 'Saison de Silly', 'Brasserie de Silly', 'saison', 'hoge', 0.054, '4.01'),
(573, 'Saison Dupont', 'Brasserie Dupont', 'saison', 'hoge met nof', 0.065, '3.60'),
(574, 'Saison Regal', 'Brasserie du Bocq', 'saison', 'hoge met nof', 0.061, '3.96'),
(575, 'Salvator abdijbier', 'Brouwerij van Roy', 'bokbier', 'hoge', 0.073, '4.04'),
(576, 'Samwell pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '3.28'),
(577, 'Sanctus', 'Brouwerij Moortgat', 'dubbel', 'hoge met nof', 0.065, '2.31'),
(578, 'Sandersput pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '2.70'),
(579, 'Sas export', 'Brouwerij Leroy', 'pilsener', 'lage', 0.05, '4.58'),
(580, 'Sas pils', 'Brouwerij Leroy', 'pilsener', 'lage', 0.05, '3.77'),
(581, 'Sasbraü', 'Brouwerij Leroy', 'superpils', 'lage', 0.065, '3.15');
INSERT INTO `bier` (`id`, `naam`, `brouwer`, `type`, `gisting`, `perc`, `inkoop_prijs`) VALUES
(582, 'Satyre', 'Brouwerij de Block', 'dubbel', 'hoge', 0.08, '2.41'),
(583, 'Schavuit', 'Brouwerij Callewaert', 'Vlaamse bruine', 'hoge', 0.08, '3.60'),
(584, 'Scotch', 'Brasserie de Silly', 'scotch ale', 'hoge', 0.085, '2.77'),
(585, 'Sezoens', 'Brouwerij Martens', 'overige', 'hoge', 0.06, '4.06'),
(586, 'Si Boune (blonde)', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '3.98'),
(587, 'Si Boune (brune)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '2.73'),
(588, 'Silbrau dort', 'Brasserie de Silly', 'saison', 'hoge', 0.058, '2.73'),
(589, 'Silver pils', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.051, '3.43'),
(590, 'Simon Noël', 'Brasserie Simon', 'bokbier', 'lage', 0.07, '3.98'),
(591, 'Simon pils', 'Brasserie Simon', 'pilsener', 'lage', 0.048, '4.60'),
(592, 'Simon Régal', 'Brasserie Simon', 'dortmunder', 'lage', 0.055, '3.04'),
(593, 'Sinaaise bok', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.08, '2.43'),
(594, 'Ski-rodt biermuseum blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '4.03'),
(595, 'Ski-rodt biermuseum brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '4.86'),
(596, 'Slag lager', 'Brouwerij Slagmuylder', 'dortmunder', 'lage', 0.055, '4.20'),
(597, 'Slaghmuylder kerstbier', 'Brouwerij Slagmuylder', 'dortmunder', 'lage', 0.055, '4.40'),
(598, 'Slaghmuylder paasbier', 'Brouwerij Slagmuylder', 'dortmunder', 'lage', 0.055, '4.43'),
(599, 'Smash', 'Brouwerij Riva', 'tripel', 'hoge', 0.08, '3.92'),
(600, 'Soldaat', 'Brouwerij Sterkens', 'dubbel', 'hoge', 0.055, '4.33'),
(601, 'Soleilmont double', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '4.89'),
(602, 'Soleilmont triple', 'Brasserie de Silly', 'scotch ale', 'hoge', 0.085, '3.45'),
(603, 'Sparta pils', 'Brouwerij Bios', 'pilsener', 'lage', 0.05, '3.59'),
(604, 'Speciaal Natuurbier', 'Brouwerij Strubbe', 'dortmunder', 'lage', 0.045, '2.60'),
(605, 'Special 6', 'Brouwerij de Block', 'Belgische ale', 'hoge', 0.047, '3.25'),
(606, 'Special De Ryck', 'Brouwerij de Ryck', 'Belgische ale', 'hoge', 0.04, '3.43'),
(607, 'Special Drink center Shape', 'Brouwerij L. Huyghe N.V.', 'pilsener', 'lage', 0.051, '2.38'),
(608, 'Special Katje', 'Brouwerij Leroy', 'overige', 'hoge', 0.07, '2.64'),
(609, 'Special Roman', 'Brouwerij Roman', 'Vlaamse bruine', 'hoge', 0.055, '4.07'),
(610, 'Speciale Aerts', 'Brouwerij Palm', 'Belgische ale', 'hoge', 0.048, '4.41'),
(611, 'Speciale Palm', 'Brouwerij Palm', 'Belgische ale', 'hoge', 0.052, '4.84'),
(612, 'Speciale Stop', 'Bavik - De Brabandere', 'Belgische ale', 'hoge', 0.05, '2.98'),
(613, 'Spéciale de Fourquepire', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.38'),
(614, 'Spéciale des Géants', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '4.94'),
(615, 'Spéciale Villers Saint-Ghislain', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '3.56'),
(616, 'St. André', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '3.98'),
(617, 'St. Benoit blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '4.24'),
(618, 'St. Benoit brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '4.25'),
(619, 'St. Bernardus', 'Brouwerij St. Bernardus', 'dubbel', 'hoge met nof', 0.075, '3.52'),
(620, 'St. Denis dark', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '2.86'),
(621, 'St. Denise grand cru', 'Brouwerij Sterkens', 'tripel', 'hoge met nof', 0.072, '4.73'),
(622, 'St. Feuillien (blonde)', 'Brasserie Friart', 'overige', 'hoge met nof', 0.055, '4.08'),
(623, 'St. Feuillien (blonde)', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.055, '4.21'),
(624, 'St. Feuillien (brune)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '3.83'),
(625, 'St. Feuillien (brune)', 'Brasserie Friart', 'dubbel', 'hoge met nof', 0.074, '4.49'),
(626, 'St. Feuillien cuvée de noël', 'Brasserie du Bocq', 'scotch ale', 'hoge met nof', 0.09, '2.99'),
(627, 'St. Hubert', 'Brasserie de l`Abbaye des Rocs (Brasseri', 'overige', 'hoge', 0.068, '2.46'),
(628, 'St. Laurent', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '4.32'),
(629, 'St. Laurent triple', 'Brouwerij Sterkens', 'tripel', 'hoge met nof', 0.072, '3.25'),
(630, 'St. Léger', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '4.28'),
(631, 'St. Louis cassis kir royal', 'Brouwerij Van Honsebrouck', 'overige', 'spontane', 0.05, '3.65'),
(632, 'St. Louis framboisée', 'Brouwerij Van Honsebrouck', 'framboise', 'spontane', 0.05, '3.40'),
(633, 'St. Louis gueuze lambic', 'Brouwerij Van Honsebrouck', 'gueuze', 'spontane', 0.05, '4.04'),
(634, 'St. Louis kriek lambic', 'Brouwerij Van Honsebrouck', 'kriekenbier', 'spontane', 0.05, '2.03'),
(635, 'St. Louis pêche lambic', 'Brouwerij Van Honsebrouck', 'overige', 'spontane', 0.05, '2.00'),
(636, 'St. Mengold 25cl.', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '4.94'),
(637, 'St. Mengold Huy', 'Brasserie à Vapeur', 'overige', 'hoge met nof', 0.08, '4.67'),
(638, 'St. Sebastiaan', 'Brouwerij Sterkens', 'ale', 'hoge', 0.065, '3.53'),
(639, 'St. Sixtus Abdij Abt 12', 'Brouwerij St. Bernardus', 'gerstewijn', 'hoge met nof', 0.095, '4.66'),
(640, 'St. Sixtus Abdij Pater 6', 'Brouwerij St. Bernardus', 'dubbel', 'hoge met nof', 0.06, '4.72'),
(641, 'St. Sixtus Abdij Prior 8', 'Brouwerij St. Bernardus', 'dubbel', 'hoge met nof', 0.075, '4.59'),
(642, 'Steedje special', 'Brouwerij `t Steedje', 'overige', 'hoge met nof', 0.085, '3.81'),
(643, 'Steedje tripel', 'Brouwerij `t Steedje', 'tripel', 'hoge met nof', 0.08, '3.26'),
(644, 'Steenezel', 'Brouwerij Bios', 'gerstewijn', 'hoge met nof', 0.11, '2.89'),
(645, 'Stella Artois', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '2.64'),
(646, 'Stille Nacht', 'De Dolle Brouwers', 'gerstewijn', 'hoge met nof', 0.08, '2.56'),
(647, 'Stoere pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '2.86'),
(648, 'Stoeren Bonk', 'Brouwerij Bios', 'overige', 'hoge met nof', 0.063, '4.62'),
(649, 'Stout', 'Brouwerij Strubbe', 'stout', 'hoge', 0.05, '3.52'),
(650, 'Stout Leroy', 'Brouwerij Leroy', 'stout', 'lage', 0.06, '4.76'),
(651, 'Stropken', 'Brouwerij Slagmuylder', 'overige', 'hoge met nof', 0.06, '2.21'),
(652, 'Strubbe export', 'Brouwerij Strubbe', 'pilsener', 'lage', 0.045, '3.80'),
(653, 'Sublim', 'Brouwerij Piessens', 'overige', 'hoge met nof', 0.085, '4.35'),
(654, 'Suna pils', 'Brouwerij Leroy', 'pilsener', 'lage', 0.05, '2.34'),
(655, 'Super 64', 'Brasserie de Silly', 'Belgische ale', 'hoge', 0.052, '2.67'),
(656, 'Super des Fagnes', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '4.32'),
(657, 'Super Gueuze Cantillon', 'Brouwerij Cantillon', 'gueuze', 'spontane', 0.054, '2.60'),
(658, 'Super houblo', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0, '4.05'),
(659, 'Super Lait des Feuilles Mortes', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '4.44'),
(660, 'Super pils', 'Brouwerij Strubbe', 'pilsener', 'lage', 0.045, '2.07'),
(661, 'Supra pils', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '4.01'),
(662, 'Teutenbier', 'Brouwerij van Roy', 'overige', 'hoge met nof', 0.075, '2.83'),
(663, 'Thouroutenaere', 'Brouwerij Louwaege', 'overige', 'hoge met nof', 0.085, '3.13'),
(664, 'Timmermans cassis lambic', 'Brouwerij Timmermans N.V.', 'cassisbier', 'spontane', 0.052, '2.18'),
(665, 'Timmermans framboise lambic', 'Brouwerij Timmermans N.V.', 'framboise', 'spontane', 0.052, '2.49'),
(666, 'Timmermans gueuze caveau', 'Brouwerij Timmermans N.V.', 'gueuze', 'spontane nof', 0.052, '3.90'),
(667, 'Timmermans gueuze lambic', 'Brouwerij Timmermans N.V.', 'gueuze', 'spontane', 0.052, '4.05'),
(668, 'Timmermans kriek lambic', 'Brouwerij Timmermans N.V.', 'kriekenbier', 'spontane', 0.052, '3.54'),
(669, 'Timmermans pêche lambic', 'Brouwerij Timmermans N.V.', 'perzikbier', 'spontane', 0.052, '3.57'),
(670, 'Tongerlo dubbel', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', 0.0634, '2.20'),
(671, 'Tongerlo Norbertijnerbier', 'St. Guibert (groep Interbrew)', 'dubbel', 'hoge', 0.0634, '4.32'),
(672, 'Tonneke', 'Brouwerij Contreras', 'Belgische ale', 'hoge', 0.05, '3.99'),
(673, 'Tradition des Moines blonde', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '2.00'),
(674, 'Tradition des Moines brune', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '2.03'),
(675, 'Travelling', 'Brasserie du Bocq', 'overige', 'hoge met nof', 0.074, '2.16'),
(676, 'Triple', 'Brouwerij Riva', 'tripel', 'hoge', 0.076, '2.72'),
(677, 'Triple Abbaye d`Aulne', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', 0.09, '2.10'),
(678, 'Triple Aulne', 'Brouwerij de Smedt', 'tripel', 'hoge met nof', 0.075, '3.32'),
(679, 'Triple de Val-Dieu', 'Brouwerij Van Honsebrouck', 'tripel', 'hoge met nof', 0.09, '2.33'),
(680, 'Triple Moine', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '2.66'),
(681, 'Triple Petrus', 'Bavik - De Brabandere', 'tripel', 'hoge', 0.075, '4.34'),
(682, 'Triple saison Roland', 'Brasserie Lefèbvre', 'saison', 'hoge', 0.05, '2.73'),
(683, 'Triple Soleilmont', 'Brasserie de Silly', 'dubbel', 'hoge', 0.08, '4.61'),
(684, 'Triple St. Pierre', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.085, '3.85'),
(685, 'Triple Toison d`or', 'Brouwerij Het Anker', 'tripel', 'hoge met nof', 0.07, '3.41'),
(686, 'Triple Villers', 'Brouwerij Vieille Villers', 'tripel', 'hoge', 0.065, '3.51'),
(687, 'Trippel Bornem', 'Brouwerij Bios', 'tripel', 'hoge met nof', 0.09, '2.34'),
(688, 'Ulricher lager', 'Brouwerij Girardin', 'pilsener', 'lage', 0.05, '2.15'),
(689, 'Upper 19', 'Brouwerij van Roy', 'tripel', 'hoge', 0.078, '4.76'),
(690, 'V Keute di Nameur blonde', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '3.32'),
(691, 'Vaartlander', 'Brouwerij Bios', 'tripel', 'hoge met nof', 0.09, '3.32'),
(692, 'Val d`heure (blonde. 25 cl.)', 'Brasserie du Bocq', 'saison', 'hoge met nof', 0.061, '4.66'),
(693, 'Val d`heure (blonde. 75 cl.)', 'Brasserie du Bocq', 'tripel', 'hoge met nof', 0.081, '2.31'),
(694, 'Val d`Heure (brune. 25 cl.)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.074, '4.58'),
(695, 'Val d`Heure (brune. 75 cl.)', 'Brasserie du Bocq', 'dubbel', 'hoge met nof', 0.088, '4.99'),
(696, 'Val-Dieu triple', 'Brouwerij Van Honsebrouck', 'tripel', 'hoge met nof', 0.09, '3.20'),
(697, 'Van der Ghinste`s Tripel', 'Brouwerij Bockor', 'Vlaamse bruine', 'hoge+melkzure', 0.055, '2.03'),
(698, 'vander Linden lambik', 'Brouwerij Vander Linden', 'lambic', 'spontane', 0.055, '4.57'),
(699, 'Vedett', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.051, '2.74'),
(700, 'Vera pils', 'Brouwerij Verhaeghe', 'pilsener', 'lage', 0.04, '4.01'),
(701, 'Verabraü super pils', 'Brouwerij Verhaeghe', 'pilsener', 'lage', 0.04, '3.80'),
(702, 'Verabraü urtyp', 'Brouwerij Verhaeghe', 'pilsener', 'lage', 0.045, '4.98'),
(703, 'Verhaeghe export', 'Brouwerij Verhaeghe', 'pilsener', 'lage', 0.04, '2.49'),
(704, 'Vichtenaar', 'Brouwerij Verhaeghe', 'Vlaamse bruine', 'hoge', 0.058, '4.52'),
(705, 'Vieille des Estinnes', 'Brasserie Dupont', 'overige', 'hoge met nof', 0.075, '4.11'),
(706, 'Vieille Villers', 'Brouwerij Vieille Villers', 'dubbel', 'hoge', 0.062, '2.01'),
(707, 'Vieux Bruges gueuze lambic', 'Brouwerij Van Honsebrouck', 'gueuze', 'spontane', 0.05, '4.73'),
(708, 'Vieux Bruges framboisée', 'Brouwerij Van Honsebrouck', 'framboise', 'spontane', 0.05, '3.61'),
(709, 'Vieux Bruges gueuze lambic', 'Brouwerij Van Honsebrouck', 'gueuze', 'spontane', 0.05, '4.88'),
(710, 'Vieux Bruges kriek lambic', 'Brouwerij Van Honsebrouck', 'kriekenbier', 'spontane', 0.05, '2.54'),
(711, 'Vieux Temps', 'St. Guibert (groep Interbrew)', 'Belgische ale', 'hoge', 0.052, '2.08'),
(712, 'Villers tripel', 'Brouwerij Vieille Villers', 'overige', 'hoge', 0.069, '3.77'),
(713, 'Vlaske', 'Brouwerij de Block', 'overige', 'hoge', 0.064, '4.62'),
(714, 'Voisin saison', 'Brasserie Voisin', 'saison', 'hoge', 0.055, '3.80'),
(715, 'Voisin super', 'Brasserie Voisin', 'Belgische ale', 'hoge', 0.052, '3.12'),
(716, 'Vondel', 'Brouwerij Riva', 'tripel', 'hoge', 0.08, '2.22'),
(717, 'Walrave export', 'Brouwerij Walrave', 'pilsener', 'lage', 0.048, '2.72'),
(718, 'Watneys pale ale', 'Union (groep Alken-Maes)', 'pale ale', 'hoge', 0.054, '4.93'),
(719, 'Watneys red', 'Union (groep Alken-Maes)', 'ale', 'hoge', 0.056, '2.52'),
(720, 'Watneys scotch', 'Union (groep Alken-Maes)', 'scotch ale', 'hoge', 0.077, '4.80'),
(721, 'Watou`s wit bier', 'Brouwerij van Eecke', 'weizenbier', 'hoge met nof', 0.05, '2.43'),
(722, 'Wellington red lion', 'Union (groep Alken-Maes)', 'ale', 'hoge', 0.056, '4.74'),
(723, 'Wellington scotch ale', 'Union (groep Alken-Maes)', 'dubbel', 'hoge', 0.06, '2.44'),
(724, 'West pils', 'Brouwerij Leroy', 'pilsener', 'lage', 0.05, '4.96'),
(725, 'Westmalle tripel', 'Abdij der Trappisten van Westmalle', 'trappist/dubbel', '?', 0, '3.50'),
(726, 'Westmalle dubbel', 'Abdij der Trappisten van Westmalle', '?', '?', 0, '3.61'),
(727, 'Westmalle extra', 'Abdij der Trappisten van Westmalle', 'trappist/tripel', 'hoge met nof', 0.09, '2.57'),
(728, 'Westvleteren extra 8', 'Abdij St. Sixtus', 'trappist/gerstewijn', 'hoge met nof', 0.113, '3.01'),
(729, 'Westvleteren abt 12', 'Abdij St. Sixtus', 'trappist/dubbel', 'hoge met nof', 0.08, '2.32'),
(730, 'Westvleteren special 6', 'Abdij St. Sixtus', 'trappist/dubbel', 'hoge met nof', 0.06, '3.59'),
(731, 'Wets gueuze', 'Gueuzestekerij Wets', 'gueuze', 'spontane', 0.055, '2.99'),
(732, 'Wets kriek', 'Gueuzestekerij Wets', 'kriekenbier', 'spontane', 0.06, '2.17'),
(733, 'Whitbread extra stout', 'Martinas (groep Interbrew)', 'stout', 'hoge', 0.053, '2.86'),
(734, 'Whitbread pale ale', 'Martinas (groep Interbrew)', 'pale ale', 'hoge', 0.056, '2.83'),
(735, 'Wiel`s pils', 'Wielemans', 'pilsener', 'lage', 0.05, '3.55'),
(736, 'Wiels pils', 'Artois (groep Interbrew)', 'pilsener', 'lage', 0.051, '4.25'),
(737, 'Wieze christmas', 'Brouwerij van Roy', 'bokbier', 'hoge', 0.073, '2.59'),
(738, 'Wieze pils', 'Brouwerij van Roy', 'pilsener', 'lage', 0.05, '4.20'),
(739, 'Wilson mild stout', 'Brouwerij Bios', 'stout', 'lage', 0.05, '2.25'),
(740, 'Witkap pater dubbele pater', 'Brouwerij Slagmuylder', 'dubbel', 'hoge met nof', 0.074, '2.64'),
(741, 'Witkap pater stimulo', 'Brouwerij Slagmuylder', 'overige', 'hoge met nof', 0.062, '4.44'),
(742, 'Witkap pater tripel', 'Brouwerij Slagmuylder', 'tripel', 'hoge met nof', 0.076, '3.28'),
(743, 'Witte blonde kuif', 'Brouwerij Clarysse', 'weizenbier', 'hoge met nof', 0.048, '4.08'),
(744, 'Wittekop', 'Brouwerij Riva', 'witbier', 'hoge met nof', 0.05, '2.58'),
(745, 'Wonderbier', 'Brouwerij Moortgat', 'pilsener', 'lage', 0.051, '4.65'),
(746, 'Zafke 25cl.', 'Brasserie Lefèbvre', 'overige', 'hoge met nof', 0.07, '4.52'),
(747, 'Zedelgemse Martelaar', 'Brouwerij Strubbe', 'ale', 'hoge', 0.06, '3.64'),
(748, 'Zerewever', 'Brouwerij Verhaeghe', 'overige', 'hoge', 0.06, '2.64'),
(749, 'Zottegems bruin', 'Brouwerij Crombé', 'overige', 'hoge', 0.045, '3.29'),
(750, 'Zulte', 'Brouwerij van Zulte', 'Vlaamse bruine', 'hoge', 0.05, '3.53'),
(751, 'Hessel', 'Pietersma', 'syka', 'blyat', 100, '5.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `beer_id` int(11) NOT NULL,
  `ip_adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `likes`
--

INSERT INTO `likes` (`id`, `beer_id`, `ip_adress`) VALUES
(18, 1, '127.0.0.1'),
(21, 1, '127.0.0.1'),
(22, 2, '127.0.0.1'),
(23, 3, '127.0.0.1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `beer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `reviews`
--

INSERT INTO `reviews` (`id`, `beer_id`, `user_id`, `rating`, `review`) VALUES
(3, 2, 1, 4, 'goed te doen'),
(10, 1, 1, 5, 'goed biertje'),
(11, 1, 1, 4, 'zeer lekker biertje'),
(12, 5, 1, 2, 'matig biertje'),
(13, 1, 1, 2, 'matig'),
(14, 1, 1, 1, 'bgdbg'),
(15, 3, 1, 2, 'test'),
(16, 3, 1, 5, 'test');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2,
  `gebruikersnaam` varchar(255) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role`, `gebruikersnaam`, `wachtwoord`) VALUES
(1, 1, 'Hessel', 'Test123');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bier`
--
ALTER TABLE `bier`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `beer_id` (`beer_id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bier`
--
ALTER TABLE `bier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT voor een tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `role` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
