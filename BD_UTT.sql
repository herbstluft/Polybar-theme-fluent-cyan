-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-09-2023 a las 05:00:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BD_UTT`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `matricula` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_pat` varchar(30) DEFAULT NULL,
  `apellido_mat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`matricula`, `nombre`, `apellido_pat`, `apellido_mat`) VALUES
(111, 'Juan angel', 'Castañeda', 'Chavez'),
(112, 'Diana Gabriela', 'Huerta', 'Bailon'),
(113, 'Jose Martin', 'Castañeda', 'Ontiveros'),
(114, 'Diana Gabriela', 'Huerta', 'Bailon'),
(115, 'Juanito Gabriel', 'Esparza', 'Bailon'),
(116, 'Matias alejandro', 'Huerta', 'Bailon'),
(117, 'Luz elena', 'Huerta', 'Bailon'),
(118, 'Iker alejandro', 'Castañeda', 'Chavez'),
(119, 'Juan Miguel', 'Castañeda', 'Ontiveros'),
(120, 'Diego Armando', 'Gaytan', 'Del toro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `num` int(11) NOT NULL,
  `fk_alumno` int(11) DEFAULT NULL,
  `fk_maestro` int(11) DEFAULT NULL,
  `promedio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`num`, `fk_alumno`, `fk_maestro`, `promedio`) VALUES
(1, 111, 1, 10),
(2, 112, 2, 10),
(3, 113, 3, 8),
(4, 114, 4, 9),
(5, 115, 5, 10),
(6, 116, 6, 7),
(7, 117, 7, 9),
(8, 118, 8, 9),
(9, 119, 9, 8),
(10, 120, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maesto`
--

CREATE TABLE `maesto` (
  `num` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_pat` varchar(30) DEFAULT NULL,
  `apellido_mat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maesto`
--

INSERT INTO `maesto` (`num`, `nombre`, `apellido_pat`, `apellido_mat`) VALUES
(1, 'Pepe Aguilar', 'Castañeda', 'Valdez'),
(2, 'Juan Pérez', 'González', 'López'),
(3, 'María García', 'Martínez', 'Hernández'),
(4, 'Luis Rodríguez', 'Fernández', 'Ramírez'),
(5, 'Ana López', 'Pérez', 'Gómez'),
(6, 'Carlos González', 'Sánchez', 'Díaz'),
(7, 'Laura Martínez', 'Hernández', 'López'),
(8, 'Pedro Ramírez', 'Gutiérrez', 'García'),
(9, 'Sofía Torres', 'Jiménez', 'Fernández'),
(10, 'Javier Soto', 'Vargas', 'Martínez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`num`),
  ADD KEY `fk_maestro` (`fk_maestro`),
  ADD KEY `fk_alumno` (`fk_alumno`);

--
-- Indices de la tabla `maesto`
--
ALTER TABLE `maesto`
  ADD PRIMARY KEY (`num`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_alumno` FOREIGN KEY (`fk_alumno`) REFERENCES `alumno` (`matricula`),
  ADD CONSTRAINT `fk_maestro` FOREIGN KEY (`fk_maestro`) REFERENCES `maesto` (`num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
