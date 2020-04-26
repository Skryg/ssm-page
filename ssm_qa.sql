-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Kwi 2020, 10:54
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ssm_qa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cdata`
--

CREATE TABLE `cdata` (
  `id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `cdata`
--

INSERT INTO `cdata` (`id`, `points`) VALUES
(1, 0),
(2, 28),
(3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qa`
--

CREATE TABLE `qa` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_polish_ci NOT NULL,
  `type` int(11) NOT NULL,
  `answers` text COLLATE utf8_polish_ci NOT NULL,
  `ansvalues` text COLLATE utf8_polish_ci NOT NULL,
  `hidden` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `qa`
--

INSERT INTO `qa` (`id`, `content`, `type`, `answers`, `ansvalues`, `hidden`) VALUES
(1, 'Która z tych osób nie była prezydentem Polski po 1989r.?', 0, 'Lech Wałęsa_Bronisław Komorowski_Władysław Gomułka_Aleksander Kwaśniewski', 'a_b_c_d', 'c'),
(2, 'Która z tych parti politycznych nie istnieje?', 0, 'Komunistyczna Partia Polski_Ślonzoki Razem_Faszyści Polscy_Sami Swoi', 'a_b_c_d', 'c'),
(3, 'Od kiedy Polska jest członkiem Unii Europejskiej?', 0, '1 maja 2004_3 maja 2007_1 maja 2002_2 maja 2003', 'a_b_c_d', 'a'),
(4, 'W którym roku Polska została przyjęta do NATO?', 0, '1997_1999_2001_2005', 'a_b_c_d', 'b'),
(5, 'W którym roku weszła w życie reforma walutowa, w wyniku której 1 nowy zł zastąpił 10 000 starych zł', 0, '1993_1995_1998_2000', 'a_b_c_d', 'b'),
(6, 'Kto był współzałożycielem i pierwszym przewodniczącym NSZZ \"Solidarność\"?', 0, 'Wojciech Jaruzelski_Lech Kaczyński_Lech Wałęsa_Aleksander Kwaśniewski', 'a_b_c_d', 'b'),
(7, 'Czy Polska to państwo ustawowo katolickie?', 0, 'Tak_Nie', 'p_f', 'f'),
(8, 'Ile trwa kadencja prezydenta miasta?', 0, '4 lata_5 lat_6 lat_dożywotnio', 'a_b_c_d', 'b'),
(9, 'Ilu jest posłów oraz senatorów w polskim parlamencie?', 0, '400_460_500_560', 'a_b_c_d', 'b'),
(10, 'Ministrem Cyfryzacji jest:', 0, 'Marek Zagórski_Zbigniew Ziobro_Dariusz Piontkowski_Tadeusz Kościński', 'a_b_c_d', 'a'),
(11, 'Kto jest polskim premierem?', 0, 'Andrzej Duda_Beata Szydło_Mateusz Morawiecki_Ewa Kopacz', 'a_b_c_d', 'c'),
(12, 'Który z tych członów władzy nie zalicza sie do trójpodziału władzy?', 0, 'władza ustawodawcza_władza demokratyczna_władza sądowicza_władza wykonawcza', 'a_b_c_d', 'b'),
(13, 'Ile podpisów trzeba zebrać pod ustawą obywatelską?', 0, '100tyś_1mln_300tyś._50tyś', 'a_b_c_d', 'a'),
(14, 'Czy polski paszport jest silny? (tzn. czy pozwala na wjazd do większości państw)', 0, 'Tak_Nie', 'p_f', 'p'),
(15, 'Ile jest ministerstw?', 0, '8_12_20_37', 'a_b_c_d', 'c'),
(16, 'Który rodzaj wojsk RP jest nieprawdziwy?', 0, 'Wojska Obrony Terytorialnej_Wojska Specjalne_Wojska Rakietowe_Wojska Lądowe', 'a_b_c_d', 'c'),
(17, 'Ile województw jest w Polsce?', 0, '13_16_17_49', 'a_b_c_d', 'b'),
(18, 'Które z tych państw należy do Grupy Wyszehradzkiej?', 0, 'Serbia_Austria_Niemcy_Czechy', 'a_b_c_d', 'd'),
(19, 'Kto może nadać obywatelstwo polskie?', 0, 'Wojewoda_Prezes Rady Ministrów_Prezydent_Starosta powiatowy', 'a_b_c_d', 'c'),
(20, 'Które z podanych państw nie należy do Trójkąta Weimarskiego?', 0, 'Francja_Szwajcaria_Polska_Niemcy', 'a_b_c_d', 'b'),
(21, 'Który z podanych to podatek pośredni?', 0, 'od spadków i darowizn_leśny_rolny_akcyzowy', 'a_b_c_d', 'd'),
(22, 'Który akt prawny jest ważniejszy?', 0, 'Dekalog_Pakty Międzynarodowe_Akty prawa miejscowego_Konstytucja', 'a_b_c_d', 'd'),
(23, 'Czy można mieć jednoczesnie obywatelstwo polskie i amerykańskie?', 0, 'Tak_Nie', 'p_f', 'p'),
(24, 'Co to jest Żandarmeria Wojskowa?', 0, 'Część NATO, która pomaga innym państwon członkowskim w razie potrzeby i wysyła swoich żołnierzy_Oddział specjalny Wojska Polskiego ds. szpiegów obcych państw_Organ ścigania w Wojsku Polskim ds. wojskowych_Część Wojska Polskiego zajmująca się dostarczaniem żywności i zapewnianiem noclegów żołnierzom podczas ćwiczeń i misji', 'a_b_c_d', 'c'),
(25, 'Ile lat należy mieć ukończone aby móc kandydować na prezydenta?', 0, '30 lat_35 lat_38 lat_40 lat', 'a_b_c_d', 'b'),
(26, 'Jaki jest próg wyborczy do Sejmu RP dla koalicji?', 0, '0,05_0,06_0,07_0,08', 'a_b_c_d', 'd'),
(27, 'Ile wyniósł polski budżet na 2020r.?', 0, '350 mld zł_435mld zł_505 mld zł_600 mld zł', 'a_b_c_d', 'b'),
(28, 'Jaka mniejszość narodowa jest w Polsce najliczniejsza?', 0, 'Ukraińcy_Białorusini_Rosjanie_Niemcy', 'a_b_c_d', 'd');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cdata`
--
ALTER TABLE `cdata`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `cdata`
--
ALTER TABLE `cdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `qa`
--
ALTER TABLE `qa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
