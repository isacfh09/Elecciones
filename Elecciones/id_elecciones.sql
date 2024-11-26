-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2023 a las 23:18:18
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
-- Base de datos: `elecciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_elecciones`
--

CREATE TABLE `id_elecciones` (
  `nro_orden` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `dni` int(12) NOT NULL,
  `voto` varchar(12) NOT NULL,
  `mesa` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `id_elecciones`
--

INSERT INTO `id_elecciones` (`nro_orden`, `nombre`, `apellido`, `dni`, `voto`, `mesa`) VALUES
(1, 'carlo', 'pity', 3578921, '45000', 9000),
(2, 'wanchope', 'alvares', 3578922, '10', 3),
(3, 'wanchope', 'alvares', 3578922, '10', 3),
(4, 'wanchope', 'alvares', 3578922, '10', 3),
(5, 'karen', 'pantera', 4200139, '1590', 45),
(6, 'agustina', 'bazan', 9087623, '124A', 9041),
(7, 'coca', 'cola', 5609231, '123904', 19923);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `id_elecciones`
--
ALTER TABLE `id_elecciones`
  ADD PRIMARY KEY (`nro_orden`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `id_elecciones`
--
ALTER TABLE `id_elecciones`
  MODIFY `nro_orden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
