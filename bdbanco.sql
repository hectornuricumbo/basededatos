-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 11-11-2022 a las 01:46:19
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdbanco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(35) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ctaPersonal` varchar(10) NOT NULL,
  `ctaEmpresarial` varchar(15) NOT NULL,
  `nip` int(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `nombre`, `ctaPersonal`, `ctaEmpresarial`, `nip`) VALUES
('hector.nuricumbo@unach.mx', 'HECTOR NURICUMBO', '1234567890', '0', 1357),
('jhonatan.galdamez@unach.mx', 'JHONATAN GALDAMEZ', '5748391029', '0', 2468),
('juan.banos@unach.mx', 'BAÑOS CAMPOS JUAN JOSE', '0', '675849301928473', 4321),
('victor.anzures78@unach.mx', 'VICTOR MANUEL ANZURES MARTINEZ', '2468086424', '0', 1234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldos`
--

CREATE TABLE `saldos` (
  `nip` int(4) UNSIGNED NOT NULL,
  `ingresos` double NOT NULL,
  `egresos` double NOT NULL,
  `saldo` double NOT NULL,
  `ctaPersonal` varchar(10) NOT NULL,
  `ctaEmpresarial` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `saldos`
--

INSERT INTO `saldos` (`nip`, `ingresos`, `egresos`, `saldo`, `ctaPersonal`, `ctaEmpresarial`) VALUES
(1234, 10000, 1000, 9000, '2468086424', '0'),
(1357, 10000, 2000, 8000, '1234567890', '0'),
(2468, 10000, 2000, 8000, '5748391029', '0'),
(4321, 10000, 2000, 8000, '0', '675849301928473');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usuario`),
  ADD KEY `bdbanco_login_nip` (`nip`);

--
-- Indices de la tabla `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`nip`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `bdbanco_login_nip` FOREIGN KEY (`nip`) REFERENCES `saldos` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
