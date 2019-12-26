-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Gru 2019, 20:00
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'Kto jest królem Nowodworka? (możesz zaznaczyć wszystkich, żeby nikt nie czył się urażony)', 1, 'Halina Tyliba_Zofia Mazur_Pan Ryszard', 'a_b_c', ''),
(2, 'Które słowo z tego bardzo znanego zdania uważasz za najważniejsze?', 0, 'Lorem_ipsum_dolor', 'a_b_c', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `qa`
--
ALTER TABLE `qa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
