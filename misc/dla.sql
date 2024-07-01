-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2024 a las 23:07:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equipo_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equipo_id`, `nombre`) VALUES
(0, 'Desconocido'),
(1, 'Athletic Club'),
(2, 'Atlético'),
(3, 'Barcelona'),
(4, 'Betis'),
(5, 'Celta'),
(9, 'Getafe'),
(10, 'Granada'),
(11, 'Las Palmas'),
(14, 'Rayo Vallecano'),
(15, 'Real Madrid'),
(16, 'Real Sociedad'),
(17, 'Sevilla'),
(19, 'Valencia'),
(20, 'Villareal'),
(21, 'Almería'),
(48, 'Alavés'),
(50, 'Osasuna'),
(222, 'Girona'),
(408, 'Mallorca'),
(499, 'Cádiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `jornada_id` int(10) UNSIGNED NOT NULL,
  `numero_jornada` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`jornada_id`, `numero_jornada`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `jugador_id` int(10) UNSIGNED NOT NULL,
  `equipo_id` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Foto` varchar(50) DEFAULT NULL,
  `Posicion` varchar(200) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Altura` varchar(200) NOT NULL,
  `Peso` varchar(200) NOT NULL,
  `valor` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  `mediaPuntos` double NOT NULL,
  `partidos` int(11) NOT NULL,
  `goles` int(11) NOT NULL,
  `tarjetas` int(11) NOT NULL,
  `estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`jugador_id`, `equipo_id`, `Nombre`, `Foto`, `Posicion`, `Edad`, `Altura`, `Peso`, `valor`, `puntos`, `mediaPuntos`, `partidos`, `goles`, `tarjetas`, `estado`) VALUES
(5, 1, 'Marcos', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 35, '1,80m', '78kg', 8987, 104, 4, 25, 1, 5, 'Apto'),
(21, 1, 'Muniain', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 31, '1,69m', '64kg', 305, 43, 2, 18, 1, 1, 'Apto'),
(24, 14, 'López', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 28, '1,69m', '64kg', 1781, 115, 3, 30, 1, 7, 'Apto'),
(29, 1, 'Williams', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 29, '1,86m', '76kg', 20007, 188, 6, 30, 9, 4, 'Apto'),
(31, 2, 'Oblak', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Portero', 31, '1,89m', '84kg', 10070, 142, 4, 33, 0, 1, 'Apto'),
(34, 2, 'Giménez', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 29, '1,85m', '77kg', 1610, 62, 3, 19, 0, 4, 'Apto'),
(36, 5, 'Manquillo', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 29, '1,80m', '62kg', 160, 25, 3, 8, 0, 2, 'Apto'),
(37, 2, 'Savić', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 33, '1,86m', '80kg', 296, 57, 2, 20, 0, 7, 'Apto'),
(42, 2, 'Koke', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 32, '1,77m', '73kg', 8604, 124, 4, 30, 0, 4, 'Apto'),
(43, 17, 'Torres', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 29, '1,78m', '70kg', 734, 74, 2, 27, 0, 3, 'Operado del hombro · Baja hasta Junio.'),
(44, 1, 'García', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 37, '1,84m', '84kg', 188, 30, 2, 15, 0, 4, 'Apto'),
(46, 2, 'Ñíguez', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 29, '1,84m', '76kg', 2359, 102, 3, 32, 1, 8, 'Apto'),
(49, 2, 'Correa', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 29, '1,71m', '67kg', 6296, 127, 4, 27, 9, 3, 'Apto'),
(51, 2, 'Griezmann', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 33, '1,76m', '71kg', 24997, 187, 6, 29, 13, 5, 'Acumulación de tarjetas · Baja esta jornada.'),
(56, 4, 'Bravo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 41, '1,85m', '80kg', 177, 28, 4, 7, 0, 0, 'Apto'),
(58, 3, 'Stegen', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 32, '1,87m', '85kg', 13877, 108, 4, 23, 0, 3, 'Apto'),
(63, 4, 'Bartra', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Defensa', 33, '1,83m', '73kg', 160, 5, 1, 3, 0, 1, 'Operado del tendón de Aquiles · Baja hasta Diciembre.'),
(74, 3, 'Roberto', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Defensa', 32, '1,78m', '68kg', 3466, 60, 6, 10, 3, 3, 'Apto'),
(79, 11, 'Haddadi', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Delantero', 28, '1,75m', '69kg', 1894, 108, 3, 33, 3, 3, 'Apto'),
(82, 11, 'Sandro', 'https://cdn.gomister.com/file/cdn-common/players/8', 'Delantero', 28, '1,75m', '71kg', 4093, 93, 4, 22, 1, 2, 'Apto'),
(91, 4, 'Pezzella', 'https://cdn.gomister.com/file/cdn-common/players/9', 'Defensa', 32, '1,87m', '82kg', 12288, 143, 4, 31, 1, 7, 'Apto'),
(96, 15, 'Ceballos', 'https://cdn.gomister.com/file/cdn-common/players/9', 'Mediocentro', 27, '1,79m', '65kg', 511, 23, 1, 15, 0, 1, 'Apto'),
(130, 5, 'Aspas', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 36, '1,76m', '67kg', 20470, 167, 5, 30, 7, 7, 'Apto'),
(158, 1, 'García', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 33, '1,80m', '75kg', 164, 38, 2, 14, 1, 4, 'Apto'),
(162, 499, 'Escalante', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 31, '1,82m', '76kg', 209, 48, 2, 20, 1, 2, 'No convocado · Baja esta jornada.'),
(171, 48, 'Duarte', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 28, '1,80m', '75kg', 160, 93, 3, 24, 2, 6, 'Sobrecarga · Duda esta jornada.'),
(175, 408, 'Raíllo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 32, '1,86m', '77kg', 13296, 112, 5, 21, 3, 4, 'Apto'),
(185, 17, 'Jordan', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 29, '1,84m', '74kg', 160, 11, 1, 6, 0, 0, 'Apto'),
(192, 5, 'Guaita', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 37, '1,90m', '81kg', 10179, 113, 4, 24, 0, 2, 'Apto'),
(208, 50, 'Gómez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,74m', '65kg', 5331, 103, 4, 26, 3, 3, 'Molestias · Duda esta jornada.'),
(213, 14, 'Dimitrievski', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 30, '1,88m', '81kg', 4698, 134, 4, 33, 0, 2, 'Apto'),
(217, 19, 'Foulquier', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 31, '1,83m', '79kg', 2469, 87, 3, 28, 0, 2, 'Apto'),
(229, 499, 'Machís', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 31, '1,74m', '70kg', 160, 64, 3, 21, 4, 1, 'Apto'),
(268, 499, 'Mari', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 36, '1,81m', '75kg', 160, 3, 1, 3, 0, 0, 'Artroscopia · Baja indefinida.'),
(269, 0, 'Morales', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 36, '1,80m', '70kg', 160, 86, 3, 25, 6, 0, 'Apto'),
(270, 50, 'García', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,71m', '72kg', 1615, 94, 3, 26, 2, 0, 'Apto'),
(277, 499, 'Martí', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 33, '1,78m', '74kg', 200, 72, 3, 19, 2, 3, 'Apto'),
(298, 408, 'Darder', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,80m', '71kg', 9481, 112, 3, 31, 0, 4, 'Apto'),
(308, 50, 'Mojica', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 31, '1,85m', '73kg', 830, 79, 3, 25, 0, 1, 'Apto'),
(321, 14, 'Bebé', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 33, '1,90m', '78kg', 184, 47, 2, 17, 2, 1, 'Apto'),
(322, 21, 'Embarba', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 31, '1,73m', '66kg', 2373, 118, 3, 31, 3, 4, 'Apto'),
(328, 15, 'Carvajal', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 32, '1,73m', '73kg', 16309, 147, 5, 25, 4, 4, 'Apto'),
(332, 15, 'Fernández', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 34, '1,80m', '75kg', 4082, 55, 2, 24, 0, 5, 'Apto'),
(334, 17, 'Ramos', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 38, '1,84m', '75kg', 17134, 111, 4, 23, 3, 7, 'Apto'),
(340, 4, 'Isco', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 32, '1,76m', '74kg', 21306, 213, 7, 27, 7, 10, 'Acumulación de tarjetas · Baja esta jornada.'),
(343, 15, 'Kroos', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 34, '1,83m', '78kg', 19978, 164, 5, 30, 1, 3, 'Apto'),
(345, 15, 'Vázquez', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 32, '1,73m', '70kg', 6199, 101, 4, 26, 2, 0, 'Apto'),
(346, 15, 'Modrić', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 38, '1,73m', '65kg', 13967, 139, 5, 28, 2, 2, 'Apto'),
(354, 16, 'Elustondo', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 30, '1,78m', '72kg', 160, 37, 3, 11, 0, 2, 'Apto'),
(358, 3, 'Martínez', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 32, '1,81m', '77kg', 2575, 60, 3, 16, 0, 5, 'Apto'),
(361, 1, 'Berchiche', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 34, '1,81m', '77kg', 8735, 110, 4, 24, 3, 4, 'Lesión de tobillo · Baja esta jornada.'),
(362, 499, 'Zaldua', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 31, '1,76m', '70kg', 190, 14, 1, 8, 0, 1, 'Apto'),
(389, 16, 'Fernández', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 27, '1,86m', '82kg', 160, 37, 3, 10, 2, 2, 'Lesión en el sóleo · Baja hasta final de Mayo.'),
(392, 0, 'Suárez', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 30, '1,76m', '69kg', 204, 9, 2, 4, 0, 0, 'Operado del recto anteiror · Baja indefinida.'),
(402, 2, 'Vitolo', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 34, '1,85m', '80kg', 203, 0, 0, 0, 0, 0, 'Sin ficha · Baja indefinida.'),
(408, 408, 'Cuéllar', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Portero', 39, '1,87m', '76kg', 210, 0, 0, 0, 0, 0, 'Apto'),
(413, 499, 'Meré', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 27, '1,82m', '78kg', 160, 25, 2, 10, 0, 0, 'Rotura de ligamento cruzado · Baja indefinida.'),
(415, 499, 'Hernández', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 35, '1,82m', '75kg', 172, 36, 4, 9, 1, 4, 'Lesión de rodilla · Baja hasta Julio.'),
(431, 3, 'Cancelo', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 29, '1,82m', '74kg', 15004, 113, 4, 27, 2, 5, 'Apto'),
(432, 19, 'Gayà', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 28, '1,72m', '64kg', 8099, 109, 5, 22, 1, 2, 'Lesión en el cuádriceps · Baja esta jornada.'),
(444, 0, 'Parejo', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 35, '1,80m', '74kg', 15405, 121, 4, 28, 3, 4, 'Apto'),
(455, 0, 'Bailly', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 30, '1,87m', '77kg', 160, 24, 3, 7, 0, 3, 'Apto'),
(456, 408, 'Costa', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 36, '1,71m', '62kg', 182, 65, 2, 26, 0, 6, 'Apto'),
(464, 222, 'García', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 26, '1,73m', '61kg', 20018, 183, 5, 32, 3, 5, 'Apto'),
(465, 0, 'Pedraza', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 28, '1,84m', '73kg', 1049, 59, 3, 18, 1, 5, 'Apto'),
(474, 0, 'Trigueros', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 32, '1,78m', '71kg', 190, 26, 2, 12, 0, 0, 'Apto'),
(476, 0, 'Moreno', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 32, '1,80m', '75kg', 19607, 167, 5, 29, 10, 0, 'Molestias · Baja esta jornada.'),
(477, 21, 'Baptistão', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 31, '1,81m', '72kg', 294, 89, 3, 27, 5, 7, 'Apto'),
(492, 4, 'José', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 32, '1,89m', '87kg', 10326, 134, 4, 29, 10, 1, 'Apto'),
(519, 4, 'Bakambu', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 33, '1,82m', '73kg', 1566, 11, 2, 4, 0, 1, 'Lesión en el aductor · Baja esta jornada.'),
(536, 1, 'Lekue', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 30, '1,80m', '73kg', 809, 75, 3, 23, 0, 4, 'Apto'),
(551, 19, 'Doménech', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 33, '1,86m', '73kg', 420, 4, 4, 1, 0, 0, 'Apto'),
(556, 10, 'Gumbau', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 29, '1,87m', '77kg', 2775, 121, 4, 30, 0, 11, 'Apto'),
(557, 4, 'Fornals', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 28, '1,78m', '67kg', 15101, 60, 5, 11, 1, 2, 'Apto'),
(561, 2, 'Llorente', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 29, '1,84m', '71kg', 11533, 145, 4, 32, 6, 5, 'Apto'),
(564, 16, 'Oyarzabal', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 27, '1,81m', '75kg', 15213, 148, 5, 28, 9, 2, 'Apto'),
(607, 9, 'Mayoral', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Delantero', 27, '1,82m', '68kg', 11739, 175, 6, 27, 15, 2, 'Rotura de menisco · Baja lo que resta de temporada.'),
(609, 9, 'Soria', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Portero', 31, '1,92m', '85kg', 9784, 152, 4, 33, 0, 3, 'Apto'),
(611, 11, 'Escandell', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Portero', 28, '1,88m', '73kg', 160, 5, 2, 2, 0, 0, 'Apto'),
(1034, 499, 'Jiménez', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 30, '1,69m', '63kg', 4381, 46, 4, 11, 3, 3, 'Apto'),
(1684, 48, 'García', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 34, '1,86m', '79kg', 625, 108, 3, 30, 3, 3, 'Apto'),
(1689, 50, 'Peña', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 32, '1,70m', '65kg', 531, 79, 3, 24, 0, 2, 'Apto'),
(1708, 2, 'Morata', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 31, '1,89m', '85kg', 15610, 149, 5, 28, 14, 4, 'Apto'),
(1713, 14, 'Lejeune', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 32, '1,90m', '81kg', 12246, 152, 4, 32, 2, 5, 'Apto'),
(1718, 14, 'Hernández', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 35, '1,86m', '77kg', 191, 63, 3, 18, 0, 3, 'Molestias · Duda esta jornada.'),
(1719, 0, 'Mandi', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 32, '1,86m', '78kg', 602, 47, 3, 15, 1, 3, 'Apto'),
(1743, 10, 'Díaz', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 35, '1,83m', '72kg', 172, 6, 1, 4, 0, 1, 'Fin ficha · Baja indefinida.'),
(1756, 50, 'García', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 31, '1,82m', '81kg', 195, 19, 2, 8, 1, 4, 'Apto'),
(1759, 50, 'García', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 30, '1,85m', '72kg', 4910, 108, 4, 27, 0, 5, 'Lesión en el bíceps femoral · Baja hasta mitad de Mayo.'),
(1762, 1, 'Berenguer', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 28, '1,75m', '70kg', 6892, 123, 4, 30, 6, 4, 'Apto'),
(1773, 15, 'Arrizabalaga', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 29, '1,88m', '84kg', 592, 57, 4, 13, 0, 1, 'Apto'),
(1775, 499, 'Sobrino', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 32, '1,85m', '73kg', 160, 68, 2, 27, 0, 8, 'Apto'),
(3060, 17, 'Díaz', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 30, '1,80m', '79kg', 182, 10, 1, 6, 0, 1, 'Apto'),
(3117, 9, 'Rico', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 31, '1,81m', '76kg', 6946, 122, 4, 28, 0, 8, 'Apto'),
(3154, 1, 'Vesga', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 31, '1,91m', '84kg', 514, 87, 3, 24, 3, 2, 'Apto'),
(3720, 222, 'López', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 34, '1,85m', '81kg', 10514, 116, 5, 21, 3, 3, 'Apto'),
(3728, 4, 'Roca', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 27, '1,84m', '74kg', 3553, 113, 4, 24, 2, 5, 'Apto'),
(3729, 17, 'Nesyri', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 26, '1,90m', '73kg', 12558, 128, 4, 28, 12, 4, 'Apto'),
(3778, 15, 'Joselu', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 34, '1,91m', '80kg', 9337, 118, 3, 31, 8, 1, 'Apto'),
(4753, 1, 'Álvarez', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 29, '1,83m', '78kg', 5171, 56, 3, 15, 0, 1, 'Apto'),
(4886, 1, 'Villalibre', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 26, '1,83m', '80kg', 160, 31, 2, 14, 1, 0, 'Apto'),
(5642, 10, 'Melendo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,67m', '63kg', 188, 48, 2, 22, 0, 2, 'Apto'),
(5653, 408, 'Lato', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 26, '1,73m', '64kg', 191, 70, 2, 25, 0, 3, 'Apto'),
(5691, 16, 'Odriozola', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 28, '1,75m', '74kg', 287, 12, 2, 6, 0, 0, 'Apto'),
(5794, 10, 'Hongla', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,83m', 'Desconocido', 160, 24, 2, 10, 0, 0, 'Apto'),
(5795, 4, 'Silva', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 30, '1,89m', '85kg', 5794, 97, 4, 24, 0, 3, 'Apto'),
(5916, 48, 'Guridi', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 29, '1,79m', '64kg', 2540, 137, 4, 31, 1, 2, 'Apto'),
(5917, 16, 'Zubeldia', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 27, '1,80m', '75kg', 8625, 119, 4, 30, 0, 12, 'Acumulación de tarjetas · Baja esta jornada.'),
(5920, 9, 'Aleñá', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,80m', '73kg', 160, 64, 2, 24, 1, 4, 'Apto'),
(6025, 10, 'Fernández', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Portero', 36, '1,96m', '88kg', 160, 13, 3, 4, 0, 0, 'Apto'),
(6027, 11, 'Campaña', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Mediocentro', 30, '1,79m', '72kg', 174, 11, 2, 5, 0, 0, 'No convocado · Baja esta jornada.'),
(6032, 16, 'Remiro', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Portero', 29, '1,91m', '80kg', 8998, 143, 4, 32, 0, 3, 'Apto'),
(6035, 5, 'Villar', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Portero', 26, '1,83m', '76kg', 172, 31, 3, 10, 0, 1, 'Apto'),
(6040, 9, 'Maksimović', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Mediocentro', 29, '1,84m', '75kg', 10320, 152, 4, 32, 4, 3, 'Apto'),
(6041, 10, 'Vallejo', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Defensa', 27, '1,84m', '74kg', 203, 6, 2, 3, 0, 1, 'Apto'),
(6042, 499, 'Gómez', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Delantero', 27, '1,86m', '70kg', 197, 61, 2, 27, 0, 2, 'Apto'),
(6046, 222, 'García', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Mediocentro', 33, '1,75m', '65kg', 198, 0, 0, 0, 0, 0, 'Lesión en el cuádriceps · Baja hasta Junio.'),
(6049, 222, 'Portu', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Mediocentro', 31, '1,67m', '70kg', 9965, 130, 4, 31, 5, 3, 'Apto'),
(6053, 222, 'Juanpe', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Defensa', 33, '1,89m', '85kg', 160, 35, 2, 15, 0, 4, 'Fractura de nariz · Duda esta jornada.'),
(6057, 499, 'Alcaraz', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Mediocentro', 33, '1,80m', '76kg', 8781, 138, 4, 31, 2, 14, 'Apto'),
(6064, 21, 'Pozo', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Defensa', 25, '1,74m', 'Desconocido', 174, 33, 1, 17, 0, 3, 'Apto'),
(6068, 499, 'Alejo', 'https://cdn.gomister.com/file/cdn-common/players/6', 'Mediocentro', 29, '1,84m', '77kg', 160, 69, 2, 27, 0, 16, 'Apto'),
(7024, 15, 'Valverde', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Mediocentro', 25, '1,81m', '67kg', 21719, 180, 5, 33, 1, 2, 'Apto'),
(7025, 17, 'Dmitrović', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Portero', 32, '1,94m', '94kg', 174, 42, 3, 13, 0, 1, 'Apto'),
(7784, 5, 'Núñez', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Defensa', 27, '1,86m', '81kg', 6191, 121, 3, 32, 1, 4, 'Apto'),
(7843, 2, 'Hermoso', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Defensa', 28, '1,84m', '74kg', 5038, 98, 3, 26, 0, 8, 'Apto'),
(7845, 17, 'Januzaj', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Mediocentro', 29, '1,86m', '75kg', 209, 12, 1, 8, 0, 0, 'Apto'),
(7893, 48, 'Sivera', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Portero', 27, '1,84m', '75kg', 8212, 150, 4, 33, 0, 3, 'Apto'),
(7910, 222, 'Stuani', 'https://cdn.gomister.com/file/cdn-common/players/7', 'Delantero', 37, '1,84m', '74kg', 1523, 119, 4, 29, 8, 6, 'Molestias · Baja esta jornada.'),
(8171, 9, 'Djené', 'https://cdn.gomister.com/file/cdn-common/players/8', 'Defensa', 32, '1,78m', '71kg', 5963, 98, 3, 29, 0, 13, 'Apto'),
(8952, 17, 'Navas', 'https://cdn.gomister.com/file/cdn-common/players/8', 'Defensa', 38, '1,70m', '60kg', 1090, 67, 2, 25, 0, 6, 'Apto'),
(8953, 408, 'Maffeo', 'https://cdn.gomister.com/file/cdn-common/players/8', 'Defensa', 26, '1,73m', '68kg', 1000, 50, 2, 20, 0, 4, 'Apto'),
(10024, 9, 'Arambarri', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 28, '1,75m', '76kg', 208, 22, 3, 7, 0, 2, 'Rotura de ligamento cruzado y menisco · Baja hasta Junio.'),
(10212, 2, 'Paulista', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 33, '1,87m', '72kg', 328, 69, 3, 22, 0, 6, 'Esguince de tobillo · Duda esta jornada.'),
(10214, 408, 'Vidal', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 29, '1,80m', 'Desconocido', 160, 38, 3, 12, 1, 1, 'Apto'),
(10967, 0, 'Guedes', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 27, '1,79m', '68kg', 9739, 52, 4, 12, 2, 0, 'Apto'),
(11091, 16, 'Méndez', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 27, '1,84m', '76kg', 14763, 158, 5, 27, 4, 6, 'Apto'),
(11092, 48, 'Gorosabel', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 27, '1,74m', 'Desconocido', 10232, 134, 4, 32, 1, 6, 'Apto'),
(11250, 10, 'Miquel', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 31, '1,89m', '80kg', 796, 113, 3, 32, 1, 5, 'Apto'),
(11418, 0, 'Coquelin', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 32, '1,78m', '74kg', 162, 43, 3, 14, 0, 4, 'Apto'),
(11680, 21, 'Lozano', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 31, '1,83m', '79kg', 941, 43, 2, 15, 2, 2, 'Apto'),
(11697, 10, 'Boyé', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 28, '1,83m', '81kg', 1217, 89, 3, 26, 5, 8, 'Apto'),
(11700, 3, 'Torres', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 24, '1,85m', '77kg', 9572, 115, 4, 25, 7, 2, 'Apto'),
(11866, 19, 'Duro', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 24, '1,80m', 'Desconocido', 15714, 181, 5, 33, 13, 3, 'Apto'),
(11877, 10, 'Rubio', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 26, '1,91m', '86kg', 996, 61, 4, 15, 1, 4, 'Apto'),
(12900, 15, 'Júnior', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 23, '1,76m', '62kg', 22794, 155, 6, 23, 13, 6, 'Apto'),
(12902, 14, 'Tomás', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 29, '1,81m', '74kg', 160, 61, 2, 23, 1, 5, 'Apto'),
(12911, 21, 'Melero', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 30, '1,83m', '77kg', 176, 55, 2, 23, 0, 3, 'Apto'),
(12916, 4, 'Ávila', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 30, '1,71m', '81kg', 1120, 57, 2, 23, 2, 9, 'Lesión en los isquiotibiales · Baja hasta Mayo.'),
(12941, 14, 'Trejo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 36, '1,77m', '79kg', 686, 82, 3, 27, 0, 3, 'Apto'),
(12945, 5, 'Beltrán', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 25, '1,70m', '66kg', 1873, 88, 3, 28, 0, 2, 'Apto'),
(12946, 0, 'Comesaña', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 27, '1,87m', 'Desconocido', 3552, 87, 3, 23, 2, 8, 'Apto'),
(12947, 5, 'Vázquez', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 31, '1,73m', 'Desconocido', 160, 25, 2, 11, 0, 3, 'Apto'),
(12949, 2, 'Lemar', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 28, '1,70m', '58kg', 202, 2, 0, 3, 0, 0, 'Rotura del tendón de Aquiles · Baja esta jornada.'),
(12951, 9, 'Mata', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 35, '1,85m', '75kg', 1082, 103, 3, 30, 5, 10, 'Apto'),
(13004, 499, 'Guardiola', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 32, '1,85m', '77kg', 169, 40, 2, 20, 0, 1, 'Apto'),
(13005, 15, 'Lunin', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 25, '1,91m', '80kg', 12132, 108, 5, 20, 0, 2, 'Apto'),
(13014, 222, 'Villa', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 29, '1,71m', '63kg', 160, 1, 1, 1, 0, 0, 'Apto'),
(13015, 499, 'Ramos', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 27, '1,93m', 'Desconocido', 4348, 150, 4, 33, 5, 4, 'Apto'),
(13420, 19, 'Diakhaby', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 27, '1,92m', '74kg', 210, 59, 4, 14, 1, 6, 'Lesión de rodilla · Baja indefinida.'),
(13697, 16, 'Merino', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 27, '1,88m', '79kg', 17336, 146, 5, 28, 4, 9, 'Apto'),
(13700, 4, 'Carvalho', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 32, '1,87m', '83kg', 160, 54, 3, 18, 1, 2, 'Apto'),
(13702, 50, 'Arnaiz', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 29, '1,75m', '70kg', 382, 66, 3, 22, 2, 2, 'Apto'),
(13971, 11, 'Cardona', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 28, '1,82m', '68kg', 194, 69, 3, 22, 3, 3, 'Apto'),
(14379, 50, 'Fernández', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 33, '1,82m', '78kg', 188, 14, 2, 5, 0, 1, 'Apto'),
(14500, 14, 'Pozo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 28, '1,70m', '60kg', 160, 2, 1, 2, 0, 0, 'Apto'),
(14670, 15, 'Courtois', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 31, '2,00m', '94kg', 1067, 0, 0, 0, 0, 0, 'Apto'),
(14691, 17, 'Pedrosa', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 25, '1,76m', '69kg', 160, 90, 3, 27, 1, 1, 'Lesión en el recto anterior · Baja hasta mitad de Mayo.'),
(14762, 16, 'Silva', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 28, '1,85m', '79kg', 569, 37, 2, 16, 2, 1, 'Apto'),
(14789, 1, 'Sancet', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 24, '1,88m', 'Desconocido', 11463, 130, 4, 30, 4, 6, 'Lesión muscular · Baja hasta final de Mayo.'),
(14791, 1, 'Guruzeta', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 27, '1,88m', 'Desconocido', 18889, 191, 6, 32, 14, 2, 'Apto'),
(14796, 9, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 25, '1,74m', '68kg', 660, 65, 3, 20, 2, 8, 'Apto'),
(14803, 16, 'Merquelanz', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 28, '1,76m', 'Desconocido', 190, 0, 0, 0, 0, 0, 'Lesión de rodilla · Baja indefinida.'),
(14811, 1, 'Simón', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 26, '1,89m', '86kg', 10354, 149, 4, 32, 0, 2, 'Apto'),
(14839, 408, 'Morlanes', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 25, '1,78m', 'Desconocido', 590, 86, 3, 30, 0, 2, 'Apto'),
(14911, 14, 'García', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 31, '1,68m', '58kg', 5996, 132, 4, 27, 6, 8, 'Apto'),
(15338, 16, 'Normand', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 27, '1,87m', 'Desconocido', 10930, 119, 4, 26, 2, 12, 'Apto'),
(15339, 222, 'Fernández', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 24, '1,79m', 'Desconocido', 193, 64, 2, 23, 2, 1, 'Apto'),
(15342, 16, 'Barrenetxea', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 22, '1,74m', 'Desconocido', 9683, 110, 4, 24, 4, 1, 'Apto'),
(15344, 15, 'Díaz', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 24, '1,70m', '68kg', 15804, 142, 5, 28, 5, 0, 'Apto'),
(15345, 16, 'Muñoz', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 26, '1,75m', '72kg', 168, 66, 3, 21, 0, 2, 'Rotura de ligamento cruzado · Baja hasta Julio.'),
(15566, 222, 'Herrera', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 26, '1,84m', '75kg', 11942, 124, 5, 24, 4, 8, 'Apto'),
(15693, 16, 'Galán', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 29, '1,72m', '70kg', 7246, 62, 3, 17, 0, 3, 'Apto'),
(15756, 50, 'Catena', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 29, '1,94m', 'Desconocido', 1003, 77, 3, 25, 1, 7, 'Apto'),
(16779, 48, 'Sola', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 24, '1,78m', 'Desconocido', 284, 95, 3, 27, 0, 2, 'Apto'),
(16868, 48, 'Guevara', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 26, '1,80m', 'Desconocido', 1283, 123, 3, 32, 1, 7, 'Apto'),
(16976, 16, 'Zubimendi', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 25, '1,80m', '74kg', 15044, 169, 5, 31, 4, 5, 'Lesión en el bíceps femoral · Baja esta jornada.'),
(17290, 14, 'Camello', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 23, '1,77m', 'Desconocido', 521, 82, 2, 28, 3, 3, 'Apto'),
(17291, 5, 'Pérez', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 26, '1,72m', 'Desconocido', 1061, 46, 3, 14, 1, 3, 'Apto'),
(17450, 4, 'Ruibal', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 28, '1,76m', 'Desconocido', 1682, 72, 4, 17, 2, 4, 'Apto'),
(17452, 15, 'Militão', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 26, '1,86m', '78kg', 10343, 12, 3, 5, 0, 0, 'Apto'),
(17453, 3, 'Jong', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 26, '1,80m', '70kg', 17683, 113, 5, 20, 2, 7, 'Esguince de tobillo · Baja hasta Junio.'),
(17459, 15, 'Rodrygo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 23, '1,74m', '62kg', 20117, 167, 5, 31, 10, 2, 'Apto'),
(17461, 499, 'Emeterio', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 27, '1,74m', '68kg', 197, 8, 2, 4, 1, 2, 'Rotura de ligamento cruzado · Baja hasta Julio.'),
(17572, 11, 'Muñoz', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 29, '1,79m', '75kg', 3150, 120, 3, 32, 2, 6, 'Apto'),
(17614, 50, 'Barja', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 27, '1,78m', '69kg', 160, 33, 2, 16, 0, 3, 'Rotura de ligamento cruzado · Baja indefinida.'),
(17615, 50, 'Herrera', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Portero', 30, '1,92m', '82kg', 10021, 132, 4, 29, 0, 2, 'Apto'),
(17620, 10, 'Puertas', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 32, '1,83m', '72kg', 160, 45, 1, 26, 0, 3, 'Contusión · Duda esta jornada.'),
(17623, 15, 'Mendy', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 28, '1,78m', '73kg', 9100, 66, 3, 21, 0, 5, 'Apto'),
(17975, 408, 'Prats', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 31, '1,81m', '79kg', 570, 111, 3, 29, 6, 3, 'Apto'),
(17979, 408, 'Valjent', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 28, '1,87m', '70kg', 383, 82, 3, 24, 0, 4, 'Apto'),
(17980, 408, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 35, '1,77m', '71kg', 5069, 118, 3, 31, 2, 8, 'Apto'),
(17981, 21, 'Baba', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 28, '1,82m', 'Desconocido', 160, 63, 2, 24, 0, 5, 'Apto'),
(17989, 14, 'Frutos', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 27, '1,73m', 'Desconocido', 790, 85, 2, 31, 1, 0, 'Apto'),
(18004, 50, 'Budimir', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 32, '1,90m', '75kg', 17521, 204, 6, 31, 16, 4, 'Fractura en las costillas · Baja hasta final de Mayo.'),
(18109, 48, 'Rioja', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 30, '1,73m', 'Desconocido', 11499, 157, 4, 33, 5, 3, 'Apto'),
(18186, 3, 'Koundé', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 25, '1,80m', '70kg', 15368, 121, 4, 30, 1, 3, 'Apto'),
(18221, 3, 'Félix', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 24, '1,81m', '62kg', 15218, 130, 5, 26, 7, 3, 'Apto'),
(18223, 17, 'Ocampos', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 29, '1,87m', '84kg', 10353, 137, 4, 30, 4, 5, 'Apto'),
(18317, 0, 'Albiol', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 38, '1,90m', '82kg', 2231, 84, 3, 24, 0, 6, 'Apto'),
(18437, 0, 'Moreno', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 31, '1,71m', '65kg', 1297, 75, 3, 25, 1, 4, 'Apto'),
(18465, 5, 'Aidoo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 28, '1,84m', '80kg', 160, 18, 3, 6, 0, 0, 'Rotura del tendón de Aquiles · Baja indefinida.'),
(18532, 48, 'Sedlar', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 32, '1,80m', '79kg', 160, 44, 4, 11, 1, 2, 'Rotura de ligamento cruzado · Baja hasta Mayo.'),
(18555, 9, 'Duarte', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 29, '1,91m', '83kg', 160, 20, 1, 15, 0, 6, 'Molestias · Baja esta jornada.'),
(19146, 4, 'Fekir', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 30, '1,73m', '72kg', 13515, 61, 4, 15, 1, 0, 'Apto'),
(19168, 17, 'Gudelj', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 32, '1,87m', '73kg', 1221, 71, 3, 21, 1, 7, 'Rotura de menisco · Baja hasta Junio.'),
(19514, 10, 'Neva', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 27, '1,74m', 'Desconocido', 325, 93, 2, 32, 0, 3, 'Apto'),
(19527, 50, 'Moncayola', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 25, '1,82m', '73kg', 2090, 86, 3, 29, 0, 2, 'Apto'),
(19562, 16, 'Kubo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 22, '1,74m', '67kg', 20127, 184, 7, 26, 7, 2, 'Apto'),
(19727, 2, 'Riquelme', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Mediocentro', 24, '1,74m', 'Desconocido', 5181, 106, 3, 29, 2, 1, 'Apto'),
(19747, 19, 'Correia', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 25, '1,76m', 'Desconocido', 2476, 84, 3, 26, 0, 3, 'Apto'),
(19927, 50, 'Haro', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Delantero', 23, '1,92m', '70kg', 599, 89, 3, 30, 3, 3, 'Apto'),
(19977, 3, 'Araújo', 'https://cdn.gomister.com/file/cdn-common/players/1', 'Defensa', 25, '1,91m', '79kg', 15170, 119, 5, 23, 1, 5, 'Apto'),
(20107, 21, 'González', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 27, '1,93m', 'Desconocido', 329, 88, 3, 27, 2, 7, 'Apto'),
(20111, 17, 'Lamela', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 32, '1,83m', '80kg', 184, 39, 3, 12, 2, 3, 'Apto'),
(20131, 5, 'Sánchez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 23, '1,79m', 'Desconocido', 161, 87, 3, 25, 0, 3, 'Apto'),
(20320, 3, 'Peña', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 25, '1,85m', 'Desconocido', 196, 40, 4, 10, 0, 0, 'Apto'),
(20346, 4, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,85m', '80kg', 7802, 110, 5, 21, 2, 6, 'Apto'),
(20481, 17, 'Suso', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,76m', '70kg', 1665, 89, 3, 27, 1, 6, 'Acumulación de tarjetas · Baja esta jornada.'),
(21592, 19, 'Guillamón', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 24, '1,78m', 'Desconocido', 788, 74, 3, 24, 1, 6, 'Apto'),
(22455, 48, 'López', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 22, '1,83m', 'Desconocido', 1810, 106, 3, 28, 0, 3, 'Apto'),
(22459, 14, 'Pérez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 27, '1,84m', 'Desconocido', 160, 61, 2, 22, 1, 7, 'Molestias · Duda esta jornada.'),
(22471, 16, 'Pacheco', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 23, '1,84m', 'Desconocido', 518, 65, 3, 18, 1, 6, 'Apto'),
(22502, 0, 'Baena', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 22, '1,74m', 'Desconocido', 18772, 160, 5, 30, 2, 10, 'Apto'),
(22527, 50, 'Oroz', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 22, '1,77m', 'Desconocido', 1167, 112, 3, 29, 1, 3, 'Lesión en el recto anterior · Duda esta jornada.'),
(22543, 5, 'Tapia', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 28, '1,85m', '78kg', 1507, 67, 3, 19, 0, 5, 'Molestias · Duda esta jornada.'),
(22547, 3, 'Pedri', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 21, '1,74m', '60kg', 15783, 92, 4, 19, 2, 3, 'Apto'),
(22591, 17, 'Mir', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 26, '1,89m', '87kg', 160, 31, 2, 15, 2, 1, 'Apto'),
(22601, 19, 'Pepelu', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 25, '1,85m', '73kg', 20373, 200, 6, 33, 6, 4, 'Apto'),
(22612, 9, 'Milla', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,75m', 'Desconocido', 8735, 96, 4, 22, 0, 6, 'Apto'),
(22617, 499, 'Gil', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 30, '1,83m', '80kg', 172, 21, 5, 4, 0, 1, 'Apto'),
(22618, 499, 'Giménez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 30, '1,86m', '72kg', 178, 93, 3, 25, 0, 11, 'Apto'),
(22619, 499, 'Carcelén', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 31, '1,74m', '70kg', 2198, 93, 3, 31, 0, 2, 'Apto'),
(22620, 14, 'Espino', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 32, '1,72m', '70kg', 1121, 95, 3, 28, 0, 8, 'Apto'),
(22623, 499, 'Fernández', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 31, '1,83m', '74kg', 278, 59, 2, 24, 0, 3, 'Apto'),
(22668, 50, 'Torró', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,90m', '77kg', 207, 78, 3, 23, 0, 5, 'Apto'),
(22672, 21, 'Centelles', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,85m', 'Desconocido', 160, 25, 2, 10, 0, 2, 'Apto'),
(22720, 4, 'Miranda', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,85m', '79kg', 2197, 77, 3, 21, 1, 6, 'Apto'),
(22877, 50, 'Cruz', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 31, '1,80m', 'Desconocido', 160, 66, 2, 23, 0, 3, 'Apto'),
(22880, 11, 'Mfulu', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,82m', '70kg', 160, 7, 1, 5, 0, 0, 'Apto'),
(22930, 499, 'Ledesma', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 31, '1,86m', '85kg', 10095, 135, 4, 30, 0, 0, 'Apto'),
(23138, 17, 'Acuña', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 32, '1,72m', '72kg', 1360, 56, 3, 17, 0, 6, 'Apto'),
(23171, 11, 'Park', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 24, '1,77m', 'Desconocido', 179, 96, 3, 27, 0, 5, 'Apto'),
(23172, 16, 'González', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 23, '1,89m', 'Desconocido', 160, 8, 2, 4, 0, 1, 'Apto'),
(23173, 21, 'Arribas', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 22, '1,71m', 'Desconocido', 4563, 140, 4, 31, 6, 0, 'Apto'),
(23184, 0, 'Cuenca', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,90m', 'Desconocido', 2450, 90, 3, 24, 3, 6, 'Apto'),
(23327, 21, 'Suárez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 26, '1,85m', 'Desconocido', 168, 49, 4, 10, 4, 2, 'Fractura de peroné · Duda esta jornada.'),
(23369, 0, 'Foyth', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 26, '1,87m', '77kg', 292, 57, 4, 12, 1, 1, 'Operado del hombro · Baja indefinida.'),
(24691, 5, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 21, '1,79m', 'Desconocido', 185, 17, 1, 13, 0, 2, 'Apto'),
(24706, 0, 'Pino', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 21, '1,72m', 'Desconocido', 204, 26, 3, 7, 0, 4, 'Rotura de ligamento cruzado · Baja hasta Mayo.'),
(24726, 4, 'Sanchez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 23, '1,75m', 'Desconocido', 160, 72, 3, 24, 0, 0, 'Apto'),
(24739, 5, 'Mingueza', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,84m', 'Desconocido', 14153, 153, 4, 33, 2, 4, 'Apto'),
(24742, 14, 'Cárdenas', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 27, '1,85m', 'Desconocido', 189, 0, 0, 0, 0, 0, 'Apto'),
(24778, 499, 'Navarro', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 22, '1,78m', 'Desconocido', 9667, 88, 3, 23, 1, 1, 'Apto'),
(24789, 1, 'Williams', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 21, '1,80m', 'Desconocido', 20459, 150, 5, 27, 4, 6, 'Apto'),
(24790, 0, 'Capoue', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 35, '1,87m', '80kg', 323, 86, 3, 28, 1, 8, 'Apto'),
(24792, 9, 'Iglesias', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 25, '1,85m', 'Desconocido', 208, 75, 3, 23, 0, 3, 'Operado del hombro · Baja hasta Junio.'),
(25582, 10, 'Pellistri', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 22, '1,74m', 'Desconocido', 4447, 50, 5, 10, 2, 0, 'Apto'),
(25606, 222, 'Gazzaniga', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 32, '1,96m', '90kg', 9214, 142, 4, 33, 0, 2, 'Apto'),
(25621, 14, 'Rațiu', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 25, '1,83m', 'Desconocido', 189, 24, 2, 10, 0, 1, 'Apto'),
(25630, 499, 'Chust', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,82m', 'Desconocido', 2734, 57, 3, 18, 0, 3, 'Apto'),
(25631, 9, 'Moriba', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 21, '1,83m', 'Desconocido', 618, 28, 2, 10, 0, 3, 'Apto'),
(25657, 10, 'Sánchez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,75m', 'Desconocido', 160, 95, 3, 29, 3, 7, 'Apto'),
(25867, 48, 'Blanco', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 23, '1,76m', 'Desconocido', 405, 96, 3, 30, 0, 4, 'Apto'),
(25872, 222, 'Gutiérrez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 22, '1,80m', 'Desconocido', 15174, 153, 4, 31, 1, 4, 'Apto'),
(25885, 5, 'Dominguez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 23, '1,87m', 'Desconocido', 508, 58, 3, 19, 0, 2, 'Apto'),
(27298, 15, 'Alaba', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 31, '1,80m', '76kg', 177, 46, 3, 14, 0, 2, 'Rotura de ligamento cruzado · Baja hasta Junio.'),
(27333, 222, 'García', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 23, '1,82m', '79kg', 15588, 136, 5, 27, 3, 4, 'Apto'),
(27422, 19, 'Rivero', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 26, '1,88m', 'Desconocido', 192, 0, 0, 0, 0, 0, 'Apto'),
(27424, 21, 'Romero', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 19, '1,65m', 'Desconocido', 161, 34, 3, 9, 2, 1, 'Apto'),
(27425, 1, 'Galarreta', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,74m', '64kg', 9079, 127, 4, 26, 1, 5, 'Lesión muscular · Baja hasta mitad de Mayo.'),
(27428, 408, 'Sánchez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 27, '1,79m', 'Desconocido', 160, 93, 3, 26, 3, 3, 'Apto'),
(27510, 2, 'Depay', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 30, '1,76m', '78kg', 5187, 88, 4, 20, 5, 2, 'Lesión muscular · Baja esta jornada.'),
(27517, 14, 'Palazón', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,69m', '71kg', 12596, 147, 4, 32, 4, 8, 'Apto'),
(27518, 14, 'Valentín', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,77m', 'Desconocido', 5749, 124, 4, 30, 1, 6, 'Apto'),
(27520, 15, 'García', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,70m', 'Desconocido', 883, 71, 3, 22, 0, 2, 'Apto'),
(27523, 14, 'Pascual', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,90m', 'Desconocido', 210, 0, 0, 0, 0, 0, 'Apto'),
(27841, 4, 'Sabaly', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 31, '1,74m', '70kg', 546, 29, 3, 8, 0, 1, 'Apto'),
(27852, 1, 'Vivian', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,83m', 'Desconocido', 11644, 142, 4, 30, 0, 6, 'Lumbalgia · Baja esta jornada.'),
(27865, 50, 'Areso', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,83m', 'Desconocido', 7637, 116, 3, 32, 1, 3, 'Apto'),
(27871, 19, 'Mamardashvili', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 23, '2,00m', 'Desconocido', 13875, 159, 4, 33, 0, 4, 'Roja directa · Baja esta jornada.'),
(27874, 222, 'Martín', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 25, '1,78m', 'Desconocido', 10553, 146, 4, 31, 5, 5, 'Apto'),
(28279, 5, 'Cervi', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,65m', '62kg', 160, 33, 2, 15, 0, 1, 'Apto'),
(28280, 408, 'Greif', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 27, '1,97m', '82kg', 160, 9, 9, 1, 0, 0, 'Apto'),
(28611, 2, 'Paul', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 29, '1,80m', '67kg', 13368, 132, 4, 29, 2, 6, 'Apto'),
(28613, 9, 'Alderete', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 27, '1,87m', '77kg', 1418, 80, 3, 26, 0, 7, 'Apto'),
(28619, 14, 'Balliu', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 32, '1,75m', '68kg', 3313, 99, 3, 29, 0, 4, 'Apto'),
(28620, 48, 'Ropero', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 22, '1,88m', 'Desconocido', 202, 0, 0, 1, 0, 0, 'Apto'),
(28621, 48, 'Abqar', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 25, '1,88m', 'Desconocido', 778, 79, 3, 22, 0, 10, 'Apto'),
(28677, 1, 'Prados', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 23, '1,79m', 'Desconocido', 8714, 89, 4, 22, 0, 1, 'Apto'),
(28773, 1, 'Paredes', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 24, '1,86m', 'Desconocido', 8535, 122, 3, 31, 1, 7, 'Apto'),
(28774, 1, 'Agirrezabala', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 23, '1,87m', 'Desconocido', 165, 3, 3, 1, 0, 0, 'Apto'),
(28776, 16, 'Turrientes', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 22, '1,79m', 'Desconocido', 765, 79, 3, 24, 0, 3, 'Apto'),
(28778, 17, 'Sánchez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 20, '1,86m', 'Desconocido', 160, 67, 2, 23, 0, 2, 'Apto'),
(28784, 9, 'Carmona', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 22, '1,83m', 'Desconocido', 181, 56, 2, 25, 1, 8, 'Apto'),
(28787, 19, 'López', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 21, '1,72m', 'Desconocido', 5075, 126, 4, 31, 3, 2, 'Apto'),
(28790, 19, 'Marí', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 22, '1,83m', 'Desconocido', 201, 21, 1, 12, 0, 0, 'Apto'),
(28791, 19, 'Vázquez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 21, '1,82m', 'Desconocido', 742, 51, 2, 19, 1, 1, 'Apto'),
(28794, 0, 'Jörgensen', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Portero', 22, '1,90m', 'Desconocido', 11746, 152, 4, 32, 0, 4, 'Apto'),
(29111, 10, 'Torrente', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 22, '1,93m', 'Desconocido', 202, 29, 2, 14, 0, 3, 'Molestias · Duda esta jornada.'),
(29169, 50, 'Ibáñez', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 26, '1,79m', 'Desconocido', 161, 75, 2, 29, 1, 4, 'Apto'),
(29205, 3, 'Balde', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Defensa', 20, '1,75m', 'Desconocido', 195, 60, 3, 18, 0, 1, 'Rotura en el bíceps femoral · Baja hasta Mayo.'),
(29222, 48, 'Simeone', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 21, '1,78m', 'Desconocido', 744, 34, 3, 10, 1, 0, 'Apto'),
(29235, 3, 'Gavi', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 19, '1,73m', 'Desconocido', 160, 72, 6, 12, 1, 5, 'Rotura de ligamento cruzado · Baja hasta Julio.'),
(29402, 14, 'Nteka', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Delantero', 26, '1,90m', 'Desconocido', 160, 37, 2, 13, 1, 1, 'Apto'),
(29403, 14, 'Ciss', 'https://cdn.gomister.com/file/cdn-common/players/2', 'Mediocentro', 30, '1,83m', '71kg', 649, 98, 3, 27, 1, 10, 'Acumulación de tarjetas · Baja esta jornada.'),
(31213, 21, 'Maximiano', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Portero', 25, '1,90m', '74kg', 7384, 123, 4, 30, 0, 1, 'Apto'),
(31267, 408, 'Mascarell', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 31, '1,81m', '74kg', 207, 65, 2, 24, 0, 6, 'Apto'),
(31355, 0, 'Sørloth', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 28, '1,94m', '90kg', 17052, 189, 6, 29, 17, 3, 'Apto'),
(31484, 15, 'Camavinga', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 21, '1,82m', 'Desconocido', 15295, 124, 4, 26, 0, 8, 'Apto'),
(31496, 4, 'Bellerín', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 29, '1,78m', '74kg', 208, 48, 2, 20, 0, 1, 'Molestias · Baja esta jornada.'),
(33032, 14, 'Falcao', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 38, '1,77m', '72kg', 176, 48, 2, 19, 1, 2, 'Apto'),
(33726, 5, 'Álvarez', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 20, '1,76m', 'Desconocido', 3697, 29, 3, 8, 0, 1, 'Apto'),
(33734, 4, 'Ezzalzouli', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 22, '1,77m', 'Desconocido', 233, 71, 3, 23, 1, 1, 'Apto'),
(33896, 0, 'Akhomach', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 20, '1,75m', 'Desconocido', 1207, 98, 3, 26, 2, 4, 'Apto'),
(35434, 21, 'Pubill', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 20, '1,90m', 'Desconocido', 2290, 73, 3, 19, 1, 2, 'Apto'),
(35805, 19, 'Federico', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 21, '1,78m', 'Desconocido', 335, 28, 2, 10, 0, 1, 'Apto'),
(35924, 48, 'Owono', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Portero', 23, '1,81m', '67kg', 186, 0, 0, 0, 0, 0, 'Apto'),
(35943, 408, 'Llabrés', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 21, '1,74m', 'Desconocido', 160, 34, 2, 14, 1, 1, 'Apto'),
(36046, 10, 'Villar', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 26, '1,81m', 'Desconocido', 444, 104, 3, 30, 1, 7, 'Apto'),
(36048, 48, 'Tenaglia', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 28, '1,82m', '71kg', 672, 59, 3, 21, 1, 3, 'Apto'),
(36084, 19, 'Mosquera', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 19, '1,88m', 'Desconocido', 14437, 138, 4, 31, 0, 2, 'Trabajo al margen · Duda esta jornada.'),
(36321, 9, 'Álvarez', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 24, '1,84m', 'Desconocido', 2486, 101, 3, 30, 1, 6, 'Apto'),
(36332, 408, 'González', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 29, '1,75m', '70kg', 987, 97, 3, 30, 0, 6, 'Apto'),
(36371, 408, 'Muriqi', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 30, '1,94m', '92kg', 15127, 140, 5, 25, 6, 3, 'Apto');
INSERT INTO `jugadores` (`jugador_id`, `equipo_id`, `Nombre`, `Foto`, `Posicion`, `Edad`, `Altura`, `Peso`, `valor`, `puntos`, `mediaPuntos`, `partidos`, `goles`, `tarjetas`, `estado`) VALUES
(36375, 10, 'Arezo', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 21, '1,78m', '76kg', 167, 26, 2, 12, 0, 1, 'Apto'),
(36376, 2, 'Mandava', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Defensa', 30, '1,80m', '74kg', 2196, 43, 3, 11, 1, 1, 'Apto'),
(36377, 10, 'Uzuni', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Delantero', 28, '1,78m', 'Desconocido', 7596, 146, 4, 32, 11, 3, 'Molestias · Duda esta jornada.'),
(39847, 9, 'Santiago', 'https://cdn.gomister.com/file/cdn-common/players/3', 'Mediocentro', 19, '1,92m', 'Desconocido', 1137, 29, 2, 10, 1, 3, 'Apto'),
(40029, 9, 'Latasa', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 23, '1,91m', 'Desconocido', 429, 88, 3, 28, 2, 6, 'Apto'),
(40031, 19, 'Dominguez', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 20, '1,75m', 'Desconocido', 164, 4, 1, 3, 0, 0, 'Apto'),
(40032, 11, 'Mármol', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 22, '1,81m', 'Desconocido', 10058, 127, 4, 31, 0, 6, 'Apto'),
(40089, 16, 'Sadiq', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 27, '1,92m', '75kg', 1234, 74, 2, 26, 3, 4, 'Apto'),
(40090, 21, 'Ramazani', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 23, '1,67m', 'Desconocido', 1419, 105, 3, 29, 3, 11, 'Sanción disciplinaria · Baja esta jornada 2/5.'),
(40093, 21, 'Robertone', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 27, '1,73m', 'Desconocido', 4620, 114, 3, 29, 0, 10, 'Acumulación de tarjetas · Baja esta jornada.'),
(40095, 408, 'Costa', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 23, '1,83m', 'Desconocido', 3915, 125, 4, 31, 1, 7, 'Apto'),
(40099, 21, 'Chumi', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 25, '1,86m', 'Desconocido', 209, 53, 2, 26, 0, 3, 'Apto'),
(40105, 21, 'Martínez', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Portero', 33, '1,85m', '79kg', 176, 3, 1, 2, 0, 0, 'Apto'),
(40147, 15, 'Rüdiger', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 31, '1,91m', '85kg', 16085, 135, 4, 29, 1, 7, 'Apto'),
(40164, 1, 'García', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 23, '1,77m', 'Desconocido', 160, 16, 2, 6, 0, 2, 'Apto'),
(40166, 15, 'Tchouaméni', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 24, '1,88m', 'Desconocido', 15269, 121, 4, 27, 3, 7, 'Apto'),
(48185, 222, 'Torre', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 21, '1,70m', 'Desconocido', 160, 60, 2, 24, 0, 1, 'Cláusula en el contrato · Baja esta jornada.'),
(48194, 5, 'Swedberg', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 20, '1,85m', 'Desconocido', 673, 54, 4, 12, 4, 0, 'Apto'),
(48203, 0, 'Terrats', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 23, '1,79m', 'Desconocido', 160, 37, 2, 15, 0, 3, 'Apto'),
(48205, 222, 'Martínez', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 21, '1,81m', 'Desconocido', 182, 52, 2, 18, 0, 4, 'Apto'),
(48208, 222, 'Martín', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Portero', 36, '1,87m', '81kg', 160, 0, 0, 0, 0, 0, 'Apto'),
(48486, 408, 'Copete', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 24, '1,90m', 'Desconocido', 1221, 56, 3, 16, 1, 5, 'Esguince de tobillo · Duda esta jornada.'),
(48556, 3, 'Christensen', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 28, '1,88m', '78kg', 6826, 83, 3, 25, 1, 4, 'Apto'),
(48575, 2, 'Witsel', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 35, '1,86m', '73kg', 9895, 138, 4, 31, 2, 3, 'Apto'),
(48612, 0, 'Reina', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Portero', 41, '1,88m', '92kg', 162, 3, 3, 1, 0, 0, 'Apto'),
(48616, 2, 'Lino', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 24, '1,78m', 'Desconocido', 15355, 149, 5, 29, 3, 0, 'Apto'),
(48617, 5, 'Torre', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 25, '1,78m', '63kg', 185, 93, 3, 28, 1, 4, 'Apto'),
(48620, 17, 'Marcão', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 27, '1,85m', '75kg', 160, 10, 1, 6, 0, 2, 'Apto'),
(48626, 21, 'Milovanovic', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 20, '1,96m', 'Desconocido', 160, 22, 2, 11, 1, 0, 'Apto'),
(48657, 3, 'Raphinha', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 27, '1,76m', '68kg', 16068, 119, 4, 25, 5, 3, 'Apto'),
(48672, 9, 'Angileri', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 30, '1,85m', '84kg', 160, 10, 1, 9, 0, 2, 'Apto'),
(48684, 3, 'Lewandowski', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 35, '1,84m', '79kg', 20752, 169, 5, 30, 16, 5, 'Apto'),
(48920, 408, 'Rajković', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Portero', 28, '1,92m', '70kg', 10113, 146, 4, 32, 0, 2, 'Apto'),
(48935, 222, 'Couto', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 21, '1,69m', 'Desconocido', 15098, 151, 4, 31, 1, 8, 'Apto'),
(48950, 2, 'Molina', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 26, '1,74m', '69kg', 1677, 82, 2, 29, 2, 5, 'Apto'),
(48960, 0, 'Femenía', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 33, '1,80m', '61kg', 645, 59, 3, 19, 0, 6, 'Apto'),
(49040, 499, 'Mbaye', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 25, '1,88m', 'Desconocido', 165, 13, 3, 4, 0, 2, 'Apto'),
(49077, 1, 'Ares', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 22, '1,83m', '183kg', 166, 25, 2, 10, 0, 2, 'Apto'),
(49092, 17, 'Nianzou', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 21, '1,92m', '83kg', 182, 13, 2, 6, 0, 2, 'Apto'),
(49101, 499, 'Hernández', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 26, '1,81m', '72kg', 2773, 96, 3, 25, 1, 6, 'Apto'),
(49111, 19, 'Özkacar', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 23, '1,90m', 'Desconocido', 2465, 55, 2, 19, 0, 3, 'Apto'),
(49275, 19, 'Almeida', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 23, '1,76m', '62kg', 1436, 54, 4, 13, 2, 0, 'Apto'),
(49288, 1, 'Herrera', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 34, '1,82m', '70kg', 983, 81, 4, 20, 0, 3, 'Apto'),
(49292, 499, 'Ocampo', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 24, '1,73m', '70kg', 188, 18, 1, 10, 0, 1, 'Apto'),
(49296, 19, 'Pérez', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 21, '1,76m', 'Desconocido', 656, 109, 3, 32, 1, 4, 'Molestias · Baja esta jornada.'),
(49329, 14, 'Chavarría', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 26, '1,74m', 'Desconocido', 856, 56, 3, 18, 1, 4, 'Apto'),
(49336, 3, 'Romeu', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Mediocentro', 32, '1,82m', '83kg', 160, 60, 2, 24, 0, 4, 'Apto'),
(49341, 5, 'Larsen', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Delantero', 24, '1,93m', '79kg', 14796, 176, 5, 32, 11, 5, 'Apto'),
(49342, 14, 'Mumin', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 25, '1,88m', 'Desconocido', 2619, 62, 3, 16, 1, 4, 'Apto'),
(49343, 222, 'Fuidias', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Portero', 23, '1,95m', 'Desconocido', 163, 0, 0, 0, 0, 0, 'Apto'),
(49348, 408, 'Nastasić', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 31, '1,88m', '83kg', 6192, 92, 3, 24, 2, 8, 'Apto'),
(49382, 3, 'Alonso', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 33, '1,88m', '84kg', 164, 15, 3, 5, 0, 0, 'Apto'),
(49424, 17, 'Salas', 'https://cdn.gomister.com/file/cdn-common/players/4', 'Defensa', 22, '1,86m', 'Desconocido', 3194, 83, 4, 18, 3, 5, 'Apto'),
(51135, 2, 'Barrios', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,81m', 'Desconocido', 3940, 92, 4, 21, 0, 5, 'Apto'),
(51137, 16, 'Marín', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,78m', 'Desconocido', 160, 0, 0, 0, 0, 0, 'No convocado · Baja esta jornada.'),
(51138, 16, 'Magunazelaia', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 22, '1,80m', 'Desconocido', 183, 13, 2, 5, 0, 0, 'No convocado · Baja esta jornada.'),
(51566, 4, 'Riad', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 20, '1,86m', 'Desconocido', 2832, 79, 3, 22, 0, 1, 'Apto'),
(51903, 21, 'Montes', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 27, '1,95m', '70kg', 160, 38, 2, 18, 0, 4, 'Apto'),
(51915, 14, 'Mendez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,82m', 'Desconocido', 161, 2, 2, 1, 0, 0, 'Molestias · Baja esta jornada.'),
(51992, 17, 'Badé', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 24, '1,91m', 'Desconocido', 6868, 79, 3, 24, 0, 5, 'Apto'),
(52043, 4, 'Vinícius', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,81m', 'Desconocido', 164, 50, 2, 20, 0, 3, 'Apto'),
(52044, 222, 'Tsygankov', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,78m', '70kg', 15745, 143, 5, 25, 6, 0, 'Apto'),
(52117, 16, 'Olasagasti', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 23, '1,69m', 'Desconocido', 164, 28, 2, 12, 0, 2, 'Apto'),
(52130, 408, 'Larin', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 29, '1,87m', '86kg', 1624, 93, 3, 30, 2, 8, 'Apto'),
(52131, 21, 'Mariño', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 33, '1,87m', '75kg', 182, 3, 3, 1, 0, 0, 'Apto'),
(52188, 19, 'Amallah', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,87m', 'Desconocido', 202, 37, 2, 18, 0, 5, 'Apto'),
(52189, 4, 'Pérez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 30, '1,80m', '66kg', 9732, 133, 5, 26, 6, 4, 'Apto'),
(52309, 15, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 19, '1,93m', 'Desconocido', 187, 0, 0, 1, 0, 0, 'No convocado · Baja esta jornada.'),
(52371, 50, 'Muñoz', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 21, '1,79m', 'Desconocido', 2504, 96, 4, 23, 4, 3, 'Apto'),
(52372, 19, 'Guerra', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,87m', 'Desconocido', 5225, 126, 4, 31, 4, 4, 'Apto'),
(52375, 3, 'Yamal', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 16, '1,80m', 'Desconocido', 19129, 184, 5, 32, 4, 2, 'Apto'),
(52377, 50, 'Herrando', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,92m', 'Desconocido', 1838, 48, 3, 14, 0, 3, 'Apto'),
(52952, 17, 'Hormigo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 21, '1,82m', 'Desconocido', 160, 4, 4, 1, 0, 0, 'Apto'),
(53092, 10, 'Callejón', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 37, '1,78m', '73kg', 160, 49, 2, 22, 0, 0, 'Apto'),
(53093, 10, 'Ruiz', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 29, '1,71m', 'Desconocido', 2093, 111, 3, 30, 0, 6, 'Apto'),
(53097, 10, 'López', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 25, '1,85m', 'Desconocido', 160, 0, 0, 0, 0, 0, 'Apto'),
(53098, 11, 'Moleiro', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,69m', 'Desconocido', 8733, 108, 4, 23, 2, 0, 'Apto'),
(53099, 21, 'Viera', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 34, '1,71m', '65kg', 6926, 78, 4, 18, 2, 4, 'Doble tarjeta · Baja esta jornada.'),
(53100, 11, 'Loiodice', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 23, '1,76m', 'Desconocido', 490, 92, 3, 30, 0, 2, 'Apto'),
(53101, 11, 'Pejiño', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,77m', 'Desconocido', 169, 48, 3, 16, 2, 1, 'No convocado · Baja esta jornada.'),
(53102, 11, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 28, '1,80m', 'Desconocido', 15175, 182, 5, 32, 6, 7, 'Apto'),
(53103, 11, 'González', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,76m', 'Desconocido', 160, 6, 1, 4, 0, 0, 'Apto'),
(53104, 11, 'Ramírez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 28, '1,80m', 'Desconocido', 204, 41, 2, 17, 1, 0, 'Apto'),
(53105, 11, 'Coco', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 25, '1,88m', 'Desconocido', 2150, 87, 3, 25, 1, 6, 'Apto'),
(53106, 11, 'Curbelo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 30, '1,81m', 'Desconocido', 178, 2, 2, 1, 0, 0, 'Apto'),
(53107, 11, 'Cardona', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 24, '1,86m', 'Desconocido', 12954, 144, 4, 32, 1, 9, 'Apto'),
(53109, 11, 'Lemos', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 31, '1,75m', 'Desconocido', 202, 9, 3, 3, 0, 1, 'No convocado · Baja esta jornada.'),
(53110, 11, 'Suárez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 31, '1,79m', 'Desconocido', 1948, 103, 3, 27, 1, 6, 'Apto'),
(53111, 11, 'Valles', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 26, '1,92m', 'Desconocido', 12359, 169, 5, 32, 0, 3, 'Apto'),
(53113, 16, 'Traoré', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 32, '1,75m', '64kg', 7796, 106, 3, 27, 0, 6, 'Lesión de gemelo · Baja esta jornada.'),
(53114, 15, 'Bellingham', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,88m', 'Desconocido', 25290, 228, 9, 25, 17, 6, 'Apto'),
(53143, 48, 'Rebbach', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 25, '1,76m', 'Desconocido', 160, 66, 3, 21, 1, 1, 'Apto'),
(53144, 48, 'Benavídez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,85m', '76kg', 720, 88, 3, 26, 3, 4, 'Apto'),
(53145, 48, 'Alkain', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,74m', 'Desconocido', 160, 17, 2, 9, 0, 1, 'Apto'),
(53148, 48, 'Panichelli', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 21, '1,86m', '82kg', 160, 9, 1, 5, 0, 0, 'Apto'),
(53340, 11, 'Herrera', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 33, '1,89m', '85kg', 193, 17, 2, 7, 1, 1, 'Apto'),
(53407, 3, 'Gündoğan', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 33, '1,80m', '80kg', 21198, 178, 5, 32, 5, 4, 'Apto'),
(53414, 11, 'Araujo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 22, '1,75m', '70kg', 1089, 83, 3, 22, 1, 4, 'Apto'),
(53433, 9, 'Fuzato', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 26, '1,90m', 'Desconocido', 160, 0, 0, 0, 0, 0, 'Apto'),
(54817, 15, 'Güler', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 19, '1,76m', 'Desconocido', 4919, 26, 4, 6, 2, 1, 'Apto'),
(54818, 2, 'Azpilicueta', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 34, '1,78m', '78kg', 919, 63, 3, 20, 0, 4, 'Apto'),
(54831, 4, 'Altimira', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 22, '1,88m', 'Desconocido', 183, 32, 3, 12, 1, 1, 'Apto'),
(54834, 222, 'Blind', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 34, '1,80m', '72kg', 15130, 135, 4, 29, 1, 5, 'Apto'),
(54853, 11, 'Sinkgraven', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 28, '1,79m', '65kg', 176, 4, 0, 9, 0, 1, 'Apto'),
(54868, 222, 'Sávio', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 20, '1,76m', 'Desconocido', 20712, 203, 6, 32, 8, 5, 'Apto'),
(54896, 5, 'Bamba', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 28, '1,75m', '72kg', 7073, 109, 4, 24, 2, 0, 'Apto'),
(54897, 408, 'Heyden', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 25, '1,85m', 'Desconocido', 160, 12, 2, 6, 0, 2, 'Apto'),
(54900, 5, 'Dotor', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 23, '1,80m', '68kg', 160, 35, 2, 16, 0, 2, 'Apto'),
(54953, 499, 'Pires', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,82m', 'Desconocido', 204, 76, 3, 25, 1, 6, 'Apto'),
(54960, 48, 'Marín', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 21, '1,90m', 'Desconocido', 2346, 98, 3, 29, 0, 5, 'Apto'),
(55009, 3, 'López', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,76m', 'Desconocido', 10955, 134, 5, 26, 5, 2, 'Apto'),
(55011, 222, 'García', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 20, '1,80m', 'Desconocido', 160, 0, 0, 0, 0, 0, 'Apto'),
(55041, 48, 'Omorodion', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 19, '1,93m', 'Desconocido', 7589, 136, 4, 31, 9, 4, 'Apto'),
(55042, 1, 'Gómez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,83m', 'Desconocido', 269, 72, 3, 21, 2, 1, 'Apto'),
(55043, 19, 'Tejón', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,65m', 'Desconocido', 171, 0, 0, 0, 0, 0, 'Apto'),
(55044, 11, 'Herzog', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 19, '1,86m', 'Desconocido', 167, 29, 7, 4, 2, 1, 'No convocado · Baja esta jornada.'),
(55045, 5, 'Sotelo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,80m', 'Desconocido', 262, 43, 2, 15, 0, 0, 'Apto'),
(55057, 17, 'Sow', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,84m', '77kg', 192, 66, 2, 24, 1, 5, 'Fractura de metatarsiano · Baja hasta final de Mayo.'),
(55058, 222, 'Dovbyk', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 26, '1,89m', '76kg', 20473, 202, 6, 31, 19, 2, 'Apto'),
(55067, 21, 'Lopy', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 22, '1,86m', 'Desconocido', 197, 89, 3, 30, 0, 5, 'Apto'),
(55088, 5, 'Starfelt', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 28, '1,85m', '80kg', 1791, 92, 4, 23, 1, 2, 'Apto'),
(55115, 19, 'Gozálbez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 23, '1,70m', 'Desconocido', 170, 9, 1, 5, 0, 0, 'Apto'),
(55159, 21, 'Koné', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 24, '1,90m', 'Desconocido', 193, 13, 1, 8, 0, 0, 'Apto'),
(55434, 11, 'Kaba', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 28, '1,91m', 'Desconocido', 160, 34, 2, 16, 1, 2, 'Apto'),
(55439, 19, 'González', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 21, '1,81m', 'Desconocido', 207, 11, 1, 7, 0, 0, 'Apto'),
(55452, 19, 'Canós', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,73m', '75kg', 3055, 78, 3, 22, 1, 0, 'Apto'),
(55453, 17, 'Nyland', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 33, '1,92m', '78kg', 6671, 98, 5, 19, 0, 1, 'Apto'),
(55454, 16, 'Zakharyan', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,83m', 'Desconocido', 3825, 78, 3, 24, 1, 1, 'Apto'),
(55462, 222, 'Clúa', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 19, '0,00m', 'Desconocido', 160, 1, 1, 1, 0, 0, 'Apto'),
(55484, 11, 'Perrone', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 21, '1,78m', 'Desconocido', 188, 84, 3, 27, 0, 6, 'Apto'),
(55491, 17, 'Lukébakio', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 26, '1,87m', '77kg', 2457, 74, 4, 18, 4, 0, 'Apto'),
(55518, 48, 'Hagi', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 25, '1,80m', '60kg', 160, 53, 2, 18, 0, 2, 'Apto'),
(55519, 16, 'Tierney', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 26, '1,78m', '70kg', 1567, 58, 3, 16, 0, 1, 'Lesión en el aductor · Baja esta jornada.'),
(55523, 5, 'Douvikas', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 24, '1,84m', '78kg', 654, 85, 3, 27, 5, 1, 'Apto'),
(55649, 19, 'Yaremchuk', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 28, '1,91m', '74kg', 182, 52, 2, 21, 3, 2, 'Lesión en los isquiotibiales · Duda esta jornada.'),
(55654, 15, 'Paz', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 19, '1,85m', 'Desconocido', 160, 2, 1, 4, 0, 0, 'No convocado · Baja esta jornada.'),
(55656, 222, 'Solís', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 19, '1,86m', 'Desconocido', 180, 26, 1, 18, 0, 0, 'Lesión muscular · Baja hasta Julio.'),
(55662, 17, 'Soumaré', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 25, '1,88m', 'Desconocido', 5320, 83, 3, 24, 0, 9, 'Apto'),
(55663, 5, 'Ristić', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 28, '1,80m', '73kg', 160, 38, 3, 11, 0, 2, 'Apto'),
(55664, 16, 'Marrero', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 22, '1,87m', 'Desconocido', 202, 4, 2, 2, 0, 0, 'Apto'),
(55667, 499, 'Kouamé', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,77m', '68kg', 206, 46, 2, 16, 0, 2, 'Rotura en el tendón del aductor · Baja lo que resta de temporada.'),
(55668, 9, 'Greenwood', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 22, '1,81m', 'Desconocido', 17323, 171, 6, 28, 8, 6, 'Apto'),
(55741, 4, 'Vieites', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 24, '1,96m', 'Desconocido', 176, 15, 5, 3, 0, 0, 'Apto'),
(55743, 0, 'Romero', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 22, '0,00m', 'Desconocido', 182, 17, 2, 7, 0, 1, 'Apto'),
(55754, 4, 'Diao', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 18, '1,85m', 'Desconocido', 165, 64, 3, 18, 2, 4, 'Contusión · Baja esta jornada.'),
(55790, 4, 'Visus', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,92m', 'Desconocido', 187, 6, 3, 2, 0, 0, 'Apto'),
(55794, 3, 'Guiu', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 18, '1,87m', 'Desconocido', 160, 13, 4, 3, 1, 1, 'Apto'),
(55871, 4, 'Papastathopoulos', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 35, '1,85m', '85kg', 160, 37, 3, 10, 0, 5, 'Apto'),
(55966, 0, 'Altimira', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,70m', 'Desconocido', 182, 19, 1, 10, 0, 3, 'Apto'),
(55987, 19, 'Gasiorowski', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 19, '1,90m', 'Desconocido', 309, 21, 3, 6, 0, 1, 'Apto'),
(55992, 9, 'Martín', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 23, '1,74m', 'Desconocido', 160, 29, 2, 11, 0, 1, 'Apto'),
(55993, 15, 'García', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 20, '1,82m', 'Desconocido', 164, 2, 1, 2, 0, 0, 'No convocado · Baja esta jornada.'),
(56502, 1, 'Jauregizar', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '1,77m', 'Desconocido', 195, 8, 2, 4, 0, 0, 'Apto'),
(56506, 48, 'Vicente', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 25, '1,79m', 'Desconocido', 967, 53, 3, 14, 0, 1, 'Apto'),
(56576, 10, 'Méndez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 24, '1,84m', 'Desconocido', 1950, 53, 4, 13, 1, 3, 'Apto'),
(56577, 3, 'Roque', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 19, '1,72m', '76kg', 4925, 33, 3, 11, 2, 3, 'Fiebre · Duda esta jornada.'),
(56578, 4, 'Cardoso', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 22, '1,86m', 'Desconocido', 9052, 72, 6, 12, 1, 3, 'Apto'),
(56579, 5, 'Jailson', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 28, '1,87m', '74kg', 574, 34, 3, 11, 0, 1, 'Apto'),
(56583, 10, 'Batalla', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 28, '1,86m', '80kg', 8469, 74, 4, 15, 0, 3, 'Apto'),
(56594, 10, 'Piatkowski', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,91m', 'Desconocido', 166, 3, 0, 6, 0, 2, 'Apto'),
(56628, 17, 'Agoumé', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 22, '1,85m', 'Desconocido', 331, 19, 2, 7, 0, 1, 'Apto'),
(56632, 17, 'Romero', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 23, '1,84m', 'Desconocido', 10120, 73, 5, 14, 4, 2, 'Lesión en los isquiotibiales · Baja hasta Junio.'),
(56634, 48, 'Guerrero', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 0, '', '', 0, 0, 0, 0, 0, 0, 'Apto'),
(56642, 16, 'Dadie', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 21, '1,70m', 'Desconocido', 178, 1, 1, 1, 0, 0, 'No convocado · Baja esta jornada.'),
(56648, 4, 'Busto', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 18, '1,80m', 'Desconocido', 160, 3, 1, 2, 0, 0, 'Apto'),
(56656, 17, 'Mejbri', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 21, '1,82m', 'Desconocido', 192, 5, 1, 4, 0, 2, 'Apto'),
(56667, 17, 'Flores', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 20, '1,87m', 'Desconocido', 196, 0, 0, 0, 0, 0, 'Apto'),
(56668, 16, 'Becker', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 29, '1,80m', '75kg', 5064, 42, 4, 10, 1, 0, 'Apto'),
(56921, 21, 'Radovanovic', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 30, '1,89m', 'Desconocido', 160, 26, 3, 7, 0, 2, 'Lesión en el aductor · Baja esta jornada.'),
(56923, 222, 'Yaakobishvili', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 19, '1,93m', 'Desconocido', 174, 4, 4, 1, 0, 0, 'Apto'),
(56924, 499, 'Eyong', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 20, '0,00m', 'Desconocido', 173, 2, 2, 1, 0, 0, 'No convocado · Baja esta jornada.'),
(56925, 16, 'Aramburu', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 21, '1,74m', '71kg', 191, 22, 3, 6, 0, 1, 'Apto'),
(56926, 3, 'Cubarsi', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 17, '1,84m', '76kg', 13242, 84, 6, 14, 0, 3, 'Apto'),
(56947, 0, 'Mosquera', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 23, '1,88m', 'Desconocido', 5920, 51, 4, 11, 1, 3, 'Apto'),
(56948, 2, 'Moldovan', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 26, '1,82m', 'Desconocido', 171, 0, 0, 0, 0, 0, 'Apto'),
(56952, 1, 'Boiro', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 21, '1,82m', 'Desconocido', 160, 0, 0, 0, 0, 0, 'No convocado · Baja esta jornada.'),
(56957, 10, 'Maouassa', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 25, '1,72m', '74kg', 160, 11, 2, 5, 0, 0, 'Apto'),
(56968, 2, 'Vermeeren', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 19, '1,80m', 'Desconocido', 167, 6, 2, 3, 0, 1, 'Apto'),
(56970, 48, 'Parada', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 22, '1,84m', 'Desconocido', 160, 1, 1, 1, 0, 0, 'Apto'),
(56971, 3, 'Fort', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 17, '1,85m', '77kg', 353, 16, 3, 5, 0, 0, 'Apto'),
(56983, 10, 'Martínez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Portero', 34, '1,85m', '74kg', 165, 0, 0, 0, 0, 0, 'Apto'),
(56990, 408, 'Radonjić', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 28, '1,85m', '76kg', 663, 28, 3, 8, 0, 0, 'Apto'),
(57000, 14, 'Crespo', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 27, '1,87m', '73kg', 190, 31, 3, 10, 0, 3, 'Apto'),
(57010, 5, 'Allende', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 25, '1,85m', 'Desconocido', 206, 22, 2, 8, 1, 1, 'Apto'),
(57110, 499, 'Samassékou', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 28, '1,75m', '67kg', 160, 10, 3, 3, 0, 0, 'Apto'),
(57111, 499, 'Ousou', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 24, '1,86m', 'Desconocido', 176, 18, 3, 6, 0, 0, 'Esguince de tobillo · Baja esta jornada.'),
(57117, 17, 'Véliz', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 20, '1,87m', '77kg', 160, 5, 1, 3, 0, 0, 'Apto'),
(57118, 10, 'Corbeanu', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 21, '1,90m', 'Desconocido', 160, 12, 1, 7, 1, 1, 'Apto'),
(57119, 10, 'Jóźwiak', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 26, '1,76m', '70kg', 751, 25, 2, 9, 0, 2, 'Apto'),
(57120, 0, 'Traoré', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Delantero', 28, '1,80m', '72kg', 3862, 26, 3, 7, 0, 1, 'Molestias · Baja esta jornada.'),
(57138, 21, 'Langa', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Defensa', 26, '1,78m', 'Desconocido', 228, 15, 1, 8, 0, 2, 'Apto'),
(57288, 21, 'Peña', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 19, '0,00m', 'Desconocido', 160, 11, 2, 4, 0, 1, 'Apto'),
(57291, 5, 'Rodríguez', 'https://cdn.gomister.com/file/cdn-common/players/5', 'Mediocentro', 0, '', '', 0, 0, 0, 0, 0, 0, 'Apto'),
(57292, 0, 'Nombre', 'Foto', 'Posición', 0, 'Altura', 'Peso', 0, 0, 0, 0, 0, 0, 'estado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ligas`
--

CREATE TABLE `ligas` (
  `liga_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liga_jugador`
--

CREATE TABLE `liga_jugador` (
  `liga_id` int(10) UNSIGNED NOT NULL,
  `jugador_id` int(10) UNSIGNED NOT NULL,
  `plantilla_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_05_07_215657_create_personal_access_tokens_table', 1),
(2, '2024_06_29_192756_equipos', 1),
(3, '2024_06_29_192803_jugadores', 1),
(4, '2024_06_29_192813_jornadas', 1),
(5, '2024_06_29_192821_partidos', 1),
(6, '2024_06_29_192827_ligas', 1),
(7, '2024_06_29_192835_usuarios', 1),
(8, '2024_06_29_192843_plantillas', 1),
(9, '2024_06_29_192853_predicciones', 1),
(10, '2024_06_29_192904_liga_jugador', 1),
(11, '2024_06_29_192915_usuario_liga', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `partido_id` int(10) UNSIGNED NOT NULL,
  `equipo1_id` int(10) UNSIGNED DEFAULT NULL,
  `equipo2_id` int(10) UNSIGNED DEFAULT NULL,
  `jornada_id` int(10) UNSIGNED DEFAULT NULL,
  `Resultado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantillas`
--

CREATE TABLE `plantillas` (
  `plantilla_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `liga_id` int(10) UNSIGNED DEFAULT NULL,
  `Alineacion` varchar(200) NOT NULL,
  `Media_puntosTotal` double NOT NULL,
  `saldo_actual` int(11) NOT NULL,
  `deudaMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predicciones`
--

CREATE TABLE `predicciones` (
  `predicciones_id` int(10) UNSIGNED NOT NULL,
  `jugador_id` int(10) UNSIGNED NOT NULL,
  `jornada_id` int(10) UNSIGNED NOT NULL,
  `puntos` int(10) UNSIGNED NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `rol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `email`, `user`, `password`, `rol`) VALUES
(1, 'Pelayo', 'pelayo.pvt@gmail.com', 'pelay0', 'hola123', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_liga`
--

CREATE TABLE `usuario_liga` (
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `liga_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equipo_id`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`jornada_id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`jugador_id`),
  ADD KEY `jugadores_equipo_id_foreign` (`equipo_id`);

--
-- Indices de la tabla `ligas`
--
ALTER TABLE `ligas`
  ADD PRIMARY KEY (`liga_id`);

--
-- Indices de la tabla `liga_jugador`
--
ALTER TABLE `liga_jugador`
  ADD PRIMARY KEY (`liga_id`,`jugador_id`),
  ADD KEY `liga_jugador_jugador_id_foreign` (`jugador_id`),
  ADD KEY `liga_jugador_plantilla_id_foreign` (`plantilla_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`partido_id`),
  ADD KEY `partidos_equipo1_id_foreign` (`equipo1_id`),
  ADD KEY `partidos_equipo2_id_foreign` (`equipo2_id`),
  ADD KEY `partidos_jornada_id_foreign` (`jornada_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `plantillas`
--
ALTER TABLE `plantillas`
  ADD PRIMARY KEY (`plantilla_id`),
  ADD KEY `plantillas_usuario_id_foreign` (`usuario_id`),
  ADD KEY `plantillas_liga_id_foreign` (`liga_id`);

--
-- Indices de la tabla `predicciones`
--
ALTER TABLE `predicciones`
  ADD PRIMARY KEY (`predicciones_id`),
  ADD KEY `predicciones_jugador_id_foreign` (`jugador_id`),
  ADD KEY `predicciones_jornada_id_foreign` (`jornada_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `usuario_liga`
--
ALTER TABLE `usuario_liga`
  ADD PRIMARY KEY (`usuario_id`,`liga_id`),
  ADD KEY `usuario_liga_liga_id_foreign` (`liga_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `jugador_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57293;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `partido_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_equipo_id_foreign` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`equipo_id`);

--
-- Filtros para la tabla `liga_jugador`
--
ALTER TABLE `liga_jugador`
  ADD CONSTRAINT `liga_jugador_jugador_id_foreign` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`jugador_id`),
  ADD CONSTRAINT `liga_jugador_liga_id_foreign` FOREIGN KEY (`liga_id`) REFERENCES `ligas` (`liga_id`),
  ADD CONSTRAINT `liga_jugador_plantilla_id_foreign` FOREIGN KEY (`plantilla_id`) REFERENCES `plantillas` (`plantilla_id`);

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `partidos_equipo1_id_foreign` FOREIGN KEY (`equipo1_id`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `partidos_equipo2_id_foreign` FOREIGN KEY (`equipo2_id`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `partidos_jornada_id_foreign` FOREIGN KEY (`jornada_id`) REFERENCES `jornadas` (`jornada_id`);

--
-- Filtros para la tabla `plantillas`
--
ALTER TABLE `plantillas`
  ADD CONSTRAINT `plantillas_liga_id_foreign` FOREIGN KEY (`liga_id`) REFERENCES `ligas` (`liga_id`),
  ADD CONSTRAINT `plantillas_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `predicciones`
--
ALTER TABLE `predicciones`
  ADD CONSTRAINT `predicciones_jornada_id_foreign` FOREIGN KEY (`jornada_id`) REFERENCES `jornadas` (`jornada_id`),
  ADD CONSTRAINT `predicciones_jugador_id_foreign` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`jugador_id`);

--
-- Filtros para la tabla `usuario_liga`
--
ALTER TABLE `usuario_liga`
  ADD CONSTRAINT `usuario_liga_liga_id_foreign` FOREIGN KEY (`liga_id`) REFERENCES `ligas` (`liga_id`),
  ADD CONSTRAINT `usuario_liga_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
