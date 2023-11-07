-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2023 a las 01:55:14
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
-- Base de datos: `practicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoscalendar`
--

CREATE TABLE `eventoscalendar` (
  `id` int(11) NOT NULL,
  `evento` varchar(250) DEFAULT NULL,
  `color_evento` varchar(20) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `Terminado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `eventoscalendar`
--

INSERT INTO `eventoscalendar` (`id`, `evento`, `color_evento`, `fecha_inicio`, `fecha_fin`, `Terminado`) VALUES
(51, 'Mi Primera Prueba', 'teal', '2021-07-07', '2021-07-08', 0),
(52, 'Mi Segunda Prueba', 'amber', '2021-07-17', '2021-07-18', 0),
(53, 'Mi Tercera Prueba', 'orange', '2021-07-03', '2021-07-04', 0),
(54, 'Fiction Express Event', '#9c27b0', '2023-10-13', '2023-10-02', 0),
(55, 'TOEIC S&W', '#9c27b0', '2023-10-17', '2023-10-18', 0),
(56, 'HALLOWEEN', '#FF5722', '2023-10-31', '2023-11-01', 0),
(57, 'Expotech Presentation', '#98FF1E', '2023-10-10', '2023-10-11', 0),
(58, 'Study For The Exam', '#F91313', '2023-10-10', '2023-10-14', 0),
(59, 'Check The Homework', '#009688', '2023-10-01', '2023-10-02', 0),
(60, 'Check The Homework', '#2196F3', '2023-10-08', '2023-10-09', 0),
(61, 'Check The Homework', '#009688', '2023-10-15', '2023-10-16', 0),
(62, 'Check The Homework', '#2196F3', '2023-10-22', '2023-10-23', 0),
(63, 'Check The Homework', '#009688', '2023-10-29', '2023-10-30', 0),
(64, 'Science Presentation', '#98FF1E', '2023-10-04', '2023-10-05', 0),
(65, 'Math Exam', '#F91313', '2023-10-06', '2023-10-07', 0),
(66, 'Admition Exam', '#FF5722', '2023-10-14', '2023-10-15', 0),
(67, 'English Club', '#FFD700', '2023-09-29', '2023-09-30', 0),
(68, 'English Club', '#98FF1E', '2023-10-06', '2023-10-07', 0),
(69, 'English Club', '#98FF1E', '2023-10-13', '2023-10-14', 0),
(70, 'English Club', '#98FF1E', '2023-10-20', '2023-10-21', 0),
(71, 'English Club', '#FFD700', '2023-10-27', '2023-10-28', 0),
(72, 'Learn & Try', '#2196F3', '2023-09-27', '2023-09-28', 0),
(73, 'Learn & Try', '#98FF1E', '2023-10-04', '2023-10-05', 0),
(74, 'Learn & Try', '#2196F3', '2023-10-11', '2023-10-12', 0),
(75, 'Learn & Try', '#98FF1E', '2023-10-18', '2023-10-19', 0),
(76, 'Learn & Try', '#2196F3', '2023-10-25', '2023-10-26', 0),
(77, 'Language Evaluation', '#2196F3', '2023-09-25', '2023-09-26', 0),
(78, 'Language Evaluation', '#FF5722', '2023-10-09', '2023-10-10', 0),
(79, 'Language Evaluation', '#F91313', '2023-10-23', '2023-10-24', 0),
(80, 'English Practice', '#98FF1E', '2023-09-26', '2023-09-27', 0),
(81, 'OPV Presentation', '#FFD700', '2023-10-03', '2023-10-04', 0),
(82, 'Exam Practice', '#FF5722', '2023-09-30', '2023-10-01', 0),
(83, 'Study For The Interview', '#FF5722', '2023-10-28', '2023-10-29', 0),
(84, 'Mother Borthday', '#9c27b0', '2023-10-05', '2023-10-06', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventoscalendar`
--
ALTER TABLE `eventoscalendar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventoscalendar`
--
ALTER TABLE `eventoscalendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
