-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2022 a las 06:24:45
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `usuario`, `password`) VALUES
(1, 'Erick', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoscalendar`
--

CREATE TABLE `eventoscalendar` (
  `id` int(11) NOT NULL,
  `evento` varchar(250) DEFAULT NULL,
  `color_evento` varchar(20) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventoscalendar`
--

INSERT INTO `eventoscalendar` (`id`, `evento`, `color_evento`, `fecha_inicio`, `fecha_fin`) VALUES
(73, 'Science Exa,m', '#98FF1E', '2022-09-06', '2022-09-07'),
(72, 'Presentation Of The App', '#9c27b0', '2022-09-12', '2022-09-13'),
(74, 'Mathematics Exam', '#F91313', '2022-09-06', '2022-09-07'),
(81, 'Papu Salida', '#009688', '2022-09-12', '2022-09-13'),
(82, 'Presentacion De La Pintura', '#2196F3', '2022-09-08', '2022-09-09'),
(83, 'Examen De Ciencias', '#98FF1E', '2022-09-13', '2022-09-14'),
(84, 'Entregar Tareas De Info', '#009688', '2022-09-14', '2022-09-15'),
(85, 'Tarea De Valores', '#FFD700', '2022-09-09', '2022-09-10'),
(87, 'Autoevaluacion', '#2196F3', '2022-09-09', '2022-09-10'),
(88, 'Autoevaluacion', '#98FF1E', '2022-09-16', '2022-09-17'),
(89, 'Autoevaluacion', '#FF5722', '2022-09-23', '2022-09-24'),
(90, 'Entregar Tareas De Info', '#FF5722', '2022-09-21', '2022-09-22'),
(91, 'Entregar Tareas De Info', '#2196F3', '2022-09-07', '2022-09-08'),
(92, 'Entregar Tareas De Info', '#FFD700', '2022-09-28', '2022-09-29'),
(93, 'Autoevaluacion', '#009688', '2022-09-30', '2022-10-01'),
(94, 'Clases De Arduino', '#98FF1E', '2022-09-10', '2022-09-11'),
(95, 'Clases De Arduino', '#9c27b0', '2022-09-17', '2022-09-18'),
(96, 'Clases De Arduino', '#98FF1E', '2022-09-24', '2022-09-25'),
(97, 'Clases De Arduino', '#9c27b0', '2022-10-01', '2022-10-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` int(11) NOT NULL,
  `lista` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`id`, `lista`) VALUES
(1, 'Finish the app');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `descripcion`) VALUES
(0, '★'),
(0, '★★'),
(0, '★★★');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

CREATE TABLE `rubros` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventoscalendar`
--
ALTER TABLE `eventoscalendar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubros`
--
ALTER TABLE `rubros`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `eventoscalendar`
--
ALTER TABLE `eventoscalendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rubros`
--
ALTER TABLE `rubros`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
