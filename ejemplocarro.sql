-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2024 a las 21:45:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplocarro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `estado`) VALUES
(1, 'hog', 0),
(2, 'Electronicooooo', 0),
(3, 'Limpiezaaaaaaa', 0),
(4, 'Jardineria', 0),
(5, 'Paul', 0),
(6, 'Paul', 0),
(7, 'nueva ', 0),
(8, 'jarabe', 0),
(9, 'jarabe', 0),
(10, 'Amoladora', 0),
(11, 'Amoladora', 0),
(12, 'Gabriel de las mercedessssss', 0),
(13, 'Paul', 0),
(14, 'juanito', 0),
(15, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 0),
(16, 'jarabe', 1),
(17, 'Paul', 1),
(18, 'qwqe', 0),
(19, 'martillo', 1),
(20, 'jarabe', 1),
(21, 'Jasinto', 1),
(23, 'Jasinto', 0),
(24, 'asd', 1),
(25, 'jarabe', 1),
(26, 'jarabeactivo', 1),
(27, 'Amoladora', 0),
(28, '', 1),
(29, 'Paul', 1),
(30, 'Amoladora', 1),
(31, 'jarabe', 1),
(32, 'Amoladora', 1),
(33, 'Amoladora', 1),
(34, 'Jasinto', 0),
(35, 'Jose123', 0),
(36, '', 1),
(37, 'CategoriaActivaa', 1),
(38, 'CategoriaInactivaaaaaa', 0),
(39, 'Farmaciaaaa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `nombre`, `precio`, `stock`) VALUES
(15, 1, 'jarabe', 300, 11),
(49, 1, 'jarabe', 300, 20),
(50, 19, 'Amoladora', 300, 300);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD UNIQUE KEY `idproducto` (`idproducto`),
  ADD KEY `fk_producto_categoria_idx` (`idcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
