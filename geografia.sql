-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Sie 2022, 01:22
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `geografia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bary`
--

CREATE TABLE `bary` (
  `id_baru` int(11) NOT NULL,
  `nazwabaru` varchar(60) NOT NULL,
  `adres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunkipiwa`
--

CREATE TABLE `gatunkipiwa` (
  `id_piwa` int(11) NOT NULL,
  `nazwapiwa` varchar(60) NOT NULL,
  `rodzaj` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `piwosze`
--

CREATE TABLE `piwosze` (
  `idPiwosza` int(11) NOT NULL,
  `Nick` varchar(60) NOT NULL,
  `Płeć` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bary`
--
ALTER TABLE `bary`
  ADD PRIMARY KEY (`id_baru`);

--
-- Indeksy dla tabeli `gatunkipiwa`
--
ALTER TABLE `gatunkipiwa`
  ADD PRIMARY KEY (`id_piwa`);

--
-- Indeksy dla tabeli `piwosze`
--
ALTER TABLE `piwosze`
  ADD PRIMARY KEY (`idPiwosza`),
  ADD KEY `idPiwosza` (`idPiwosza`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `gatunkipiwa`
--
ALTER TABLE `gatunkipiwa`
  ADD CONSTRAINT `gatunkipiwa_ibfk_1` FOREIGN KEY (`id_piwa`) REFERENCES `bary` (`id_baru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
