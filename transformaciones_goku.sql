-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2026 a las 09:00:35
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
-- Base de datos: `transformaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transformaciones_goku`
--

CREATE TABLE `transformaciones_goku` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `multiplicador_ki` int(20) NOT NULL,
  `fecha_aparicion` date NOT NULL,
  `es_divina` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transformaciones_goku`
--

INSERT INTO `transformaciones_goku` (`id`, `nombre`, `multiplicador_ki`, `fecha_aparicion`, `es_divina`) VALUES
(1, 'Super Saiyan Base', 50, '1991-03-19', 0),
(2, 'Super Saiyan 3', 400, '1994-04-12', 0),
(3, 'Super Saiyan God', 50000, '2013-03-30', 1),
(4, 'Super Saiyan Blue', 250000, '2015-04-18', 1),
(5, 'Ultra Instinto Dominado', 9999999, '2018-03-25', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `transformaciones_goku`
--
ALTER TABLE `transformaciones_goku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transformaciones_goku`
--
ALTER TABLE `transformaciones_goku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
