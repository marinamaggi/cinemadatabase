-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 18, 2024 alle 10:01
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `actor`
--

INSERT INTO `actor` (`id`, `first_name`, `last_name`, `birthday_date`) VALUES
(1, 'Meryl', 'Streep', '1949-06-22'),
(2, 'Anne', 'Hathaway', '1982-11-12'),
(3, 'Emily', 'Blunt', '1983-02-23'),
(4, 'Stanley ', 'Tucci', '1960-11-11'),
(5, 'Adrian', 'Grenier', '1976-07-10'),
(6, 'Simon', 'Baker', '1969-07-30'),
(7, 'Daniel', 'Radcliffe', '1989-07-23'),
(8, 'Robert', 'Pattinson', '1986-05-13'),
(9, 'Jane', 'Doe', '1990-02-15'),
(10, 'Alice', 'Smith', '1985-11-20'),
(11, 'John', 'Doe', '1995-08-10'),
(12, 'Mary', 'Johnson', '1980-04-25'),
(13, 'Mark', 'Brown', '1982-09-30'),
(14, 'Lucas', 'White', '1978-06-12'),
(15, 'Giulia', 'Bianchi', '1988-03-05');

-- --------------------------------------------------------

--
-- Struttura della tabella `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `director`
--

INSERT INTO `director` (`id`, `first_name`, `last_name`, `birthday_date`) VALUES
(1, 'David ', 'Frankel', '1959-04-02'),
(2, 'Chris', 'Columbus', '1958-09-10'),
(3, 'David', 'Zellner', '1974-11-15'),
(4, 'Yoshitaka', 'Yamaguchi', '1972-02-28'),
(5, 'Timo', 'von Gunten', '1983-08-01'),
(6, 'Marco', 'Ponti', '1967-10-20'),
(7, 'Paolo', 'Genovese', '1966-08-20'),
(8, 'Gennaro', 'Nunziante', '1977-04-20'),
(9, 'Aldo', 'Baglio', '1967-05-16'),
(10, 'Gennaro', 'Nunziante', '1977-04-20');

-- --------------------------------------------------------

--
-- Struttura della tabella `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `genre`
--

INSERT INTO `genre` (`id`, `name`, `slug`) VALUES
(1, 'Comedy', NULL),
(2, 'Fantasy', NULL),
(3, 'Adventure', NULL),
(4, 'Drama', NULL),
(5, 'Romance', NULL),
(6, 'Romance', NULL),
(7, 'Comedy', NULL),
(8, 'Comedy', NULL),
(9, 'Comedy', NULL),
(10, 'Comedy', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `synopsis` text DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `released_year` date DEFAULT NULL,
  `poster` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `movie`
--

INSERT INTO `movie` (`id`, `synopsis`, `title`, `duration`, `released_year`, `poster`) VALUES
(1, 'Miranda giunge a New York dopo la laurea e trova lavoro come assistente di Miranda Priestly, direttrice di una delle più conosciute riviste di moda. Un posto da sogno, se non fosse per il carattere del suo capo, che sa renderle la vita un inferno.', 'Il diavolo veste Prada', 1, '2006-10-13', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.mymovies.it%2Ffilm%2F2006%2Fildiavolovesteprada%2F&psig=AOvVaw3UQCrQTJUBYcRzJHeAgAsr&ust=1712300987659000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPjzhLGAqIUDFQAAAAAdAAAAABAE'),
(2, 'Un giovane mago scopre di essere destinato a grandi cose quando viene invitato a frequentare una scuola di magia.', 'Harry Potter e la pietra filosofale', 152, '2001-11-16', 'poster_hp.jpg'),
(3, 'Un uomo si mette in viaggio per salvare la sua amata promessa sposa, ma il suo viaggio prende una serie di strane e imprevedibili svolte.', 'Damsel', 113, '2018-06-22', 'poster_damsel.jpg'),
(4, 'Un\'artista misterioso crea sculture incredibilmente realistiche di lacrime umane, portando chiunque le osservi a riflettere sul significato della tristezza.', 'Fabbricante di lacrime', 98, '2020-09-04', 'poster_fabbricante_di_lacrime.jpg'),
(5, 'Un dramma romantico che esplora le vite intrecciate di vari residenti di un edificio di appartamenti in una grande città.', 'Dalla mia finestra', 120, '2019-07-12', 'poster_dalla_mia_finestra.jpg'),
(6, 'Un giovane scrive una serie di lettere d\'amore, sperando che una di esse possa finalmente catturare il cuore della sua amata.', 'Tutte le volte che ho scritto ti amo', 105, '2021-03-05', 'poster_tutte_le_volte_che_ho_scritto_ti_amo.jpg'),
(7, 'Una commedia divertente che segue le disavventure di un gruppo di artisti di strada mentre cercano di mettere in scena uno spettacolo di successo.', 'La Sineretta', 96, '2017-12-08', 'poster_la_sineretta.jpg'),
(8, 'Un padre single cerca di bilanciare il lavoro e l\'essere genitore mentre affronta una serie di divertenti situazioni.', 'Sole a catinelle', 87, '2013-10-31', 'poster_sole_a_catinelle.jpg'),
(9, 'Una commedia classica che segue tre amici mentre cercano di superare una serie di ostacoli per restituire una gamba prosciugata alla sua proprietaria originale.', 'Tre uomini e una gamba', 100, '1997-12-12', 'poster_tre_uomini_e_una_gamba.jpg'),
(10, 'Un uomo decide di non mollare mai il suo lavoro sicuro, nonostante i tentativi del governo di eliminarlo.', 'Quo Vado?', 86, '2016-01-01', 'poster_quo_vado.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_actor`
--

CREATE TABLE `movie_actor` (
  `movie_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `movie_actor`
--

INSERT INTO `movie_actor` (`movie_id`, `actor_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_director`
--

CREATE TABLE `movie_director` (
  `movie_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `movie_director`
--

INSERT INTO `movie_director` (`movie_id`, `director_id`) VALUES
(1, 1),
(1, 1),
(1, 1),
(1, 1),
(1, 1),
(1, 1),
(1, 1),
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `movie_genre`
--

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indici per le tabelle `movie_director`
--
ALTER TABLE `movie_director`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indici per le tabelle `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`);

--
-- Limiti per la tabella `movie_director`
--
ALTER TABLE `movie_director`
  ADD CONSTRAINT `movie_director_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movie_director_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`);

--
-- Limiti per la tabella `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
