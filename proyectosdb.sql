-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2017 a las 10:32:00
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_tb`
--

CREATE TABLE `proyecto_tb` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_i` varchar(45) NOT NULL,
  `fecha_f` varchar(45) NOT NULL,
  `director` varchar(45) NOT NULL,
  `cliente` varchar(45) NOT NULL,
  `descripncion` text NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto_tb`
--

INSERT INTO `proyecto_tb` (`id`, `nombre`, `fecha_i`, `fecha_f`, `director`, `cliente`, `descripncion`, `valor`) VALUES
(1, 'Appsistencia', '2017-01-01', '2017-12-31', 'Enrique Rojas', 'Unicartagena', 'plataforma auxiliar de aistencia', 12000000),
(2, 'App 022', '2017-06-01', '2017-12-31', 'Enrique Rojas Reyes2', 'Unicolombo2', 'Unicolombo Uniclombo2', 59999992),
(3, 'antony baiz3', '2017-12-01', '2017-12-31', 'Antony baiz3', 'Bibioteca3', 'software para biblioteca3', 50000003),
(4, 'nombre 3', '2017-01-09', '2017-12-01', 'director 3', 'cliente 3', 'descripcion 3', 3000000),
(6, 'Enrique Rojas 06 editado', '2017-12-01', '2017-12-01', 'director 06 editado', 'cliente 06 editado', 'descricpion 06 editado', 4000000),
(7, 'nombre 07 ', '2017-12-01', '2017-12-31', 'director 07 editado', 'cliente 07 editado', 'descripcion 07 editado', 5000000),
(8, 'nombre 8', '2017-01-01', '2017-01-01', 'director 08', 'cliente 08', 'descricpion 08', 8000000),
(9, 'Nombre 09', '2017-01-01', '2017-12-31', 'director 09', 'Cliente 09', 'Descripcion 09', 9000000),
(10, 'Appsistencia 1', '2017-01-01', '2017-12-31', 'Enrique Rojas 1', 'Unicartagena 1', 'plataforma auxiliar de aistencia', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proyecto_tb`
--
ALTER TABLE `proyecto_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proyecto_tb`
--
ALTER TABLE `proyecto_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
