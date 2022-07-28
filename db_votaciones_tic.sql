-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2022 a las 05:22:43
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_votaciones_tic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_candidato`
--

CREATE TABLE `tbl_registro_candidato` (
  `numeroCedula` varchar(10) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `partido` varchar(50) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `biografia` varchar(400) NOT NULL,
  `smsCampana` varchar(100) NOT NULL,
  `propuesta` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro_candidato`
--

INSERT INTO `tbl_registro_candidato` (`numeroCedula`, `nombre`, `telefono`, `partido`, `ciudad`, `biografia`, `smsCampana`, `propuesta`) VALUES
('1054655255', 'DASD SDASD', '3015370636', 'Centro Democrático', 'Acacías	-	Meta', 'CEED', 'EFEF', 'EFEF'),
('1425364785', 'c c', '1204524785', 'Partido Social Colombiano', 'Abriaquí	-	Antioquia', 'fefefe', 'efefef', 'fefef'),
('4575757555', 'petroskis petroskis', '1425364528', 'Centro Democrático', 'Acacías	-	Meta', 'aja\n', 'yes', 'push'),
('54545454', 'petrisqui', '7873553535', 'Partido Social Colombiano', 'Abejorral	-	Antioquia', 'soy petro', 'mas pan para la gente', 'mas plata ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_votante`
--

CREATE TABLE `tbl_registro_votante` (
  `ncedula` varchar(10) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro_votante`
--

INSERT INTO `tbl_registro_votante` (`ncedula`, `nombre`, `telefono`, `correo`, `ciudad`, `contrasena`, `estado`) VALUES
('1234567894', 'pedro', '7412589632', 'correo@hotmail.com', 'Abriaquí	-	Antioquia', '123456', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user_admin`
--

CREATE TABLE `tbl_user_admin` (
  `cedula` varchar(11) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_user_admin`
--

INSERT INTO `tbl_user_admin` (`cedula`, `contrasena`) VALUES
('123', '321'),
('123456789', '123456789.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_registro_candidato`
--
ALTER TABLE `tbl_registro_candidato`
  ADD PRIMARY KEY (`numeroCedula`);

--
-- Indices de la tabla `tbl_registro_votante`
--
ALTER TABLE `tbl_registro_votante`
  ADD PRIMARY KEY (`ncedula`);

--
-- Indices de la tabla `tbl_user_admin`
--
ALTER TABLE `tbl_user_admin`
  ADD PRIMARY KEY (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
