-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2022 a las 19:40:31
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
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `ID_cita` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `ID_clase` int(11) NOT NULL,
  `N_clase` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `ID_ejercios` int(11) NOT NULL,
  `N_ejercico` varchar(100) NOT NULL,
  `G_muscular` varchar(100) NOT NULL,
  `Explicasion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ej_maquina`
--

CREATE TABLE `ej_maquina` (
  `ID_EJ_MQ` int(11) NOT NULL,
  `ID_ejercios` int(11) NOT NULL,
  `ID_maquina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `ID_inscripcion` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `ID_clase` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

CREATE TABLE `rutina` (
  `ID_rutina` int(11) NOT NULL,
  `ID_ejercios` int(11) NOT NULL,
  `N_ejercicos` varchar(100) NOT NULL,
  `repeticiones` varchar(100) NOT NULL,
  `descansos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usarios`
--

CREATE TABLE `usarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(23) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `dirrecion` varchar(100) NOT NULL,
  `N_usuario` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usarios`
--

INSERT INTO `usarios` (`ID`, `nombre`, `apellido`, `correo`, `dirrecion`, `N_usuario`, `clave`) VALUES
(1, 'Carolina', 'santos', 'kpitufina@yahoo.com', 'soacha', 'Csantos', '1505N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso_maquina`
--

CREATE TABLE `uso_maquina` (
  `ID_maquina` int(11) NOT NULL,
  `N_nombre_maquina` varchar(100) NOT NULL,
  `tiempo_uso` varchar(100) NOT NULL,
  `mes_uso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rutina`
--

CREATE TABLE `usuario_rutina` (
  `ID_usuario_rutina` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `ID_rutina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`ID_cita`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`ID_clase`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`ID_ejercios`);

--
-- Indices de la tabla `ej_maquina`
--
ALTER TABLE `ej_maquina`
  ADD PRIMARY KEY (`ID_EJ_MQ`),
  ADD KEY `ID_ejercios` (`ID_ejercios`,`ID_maquina`),
  ADD KEY `ID_maquina` (`ID_maquina`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`ID_inscripcion`),
  ADD KEY `ID` (`ID`,`ID_clase`),
  ADD KEY `ID_clase` (`ID_clase`);

--
-- Indices de la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD PRIMARY KEY (`ID_rutina`),
  ADD KEY `ID_ejercios` (`ID_ejercios`);

--
-- Indices de la tabla `usarios`
--
ALTER TABLE `usarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `uso_maquina`
--
ALTER TABLE `uso_maquina`
  ADD PRIMARY KEY (`ID_maquina`);

--
-- Indices de la tabla `usuario_rutina`
--
ALTER TABLE `usuario_rutina`
  ADD PRIMARY KEY (`ID_usuario_rutina`),
  ADD KEY `ID` (`ID`,`ID_rutina`),
  ADD KEY `ID_rutina` (`ID_rutina`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `ID_cita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `ID_clase` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `ID_ejercios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ej_maquina`
--
ALTER TABLE `ej_maquina`
  MODIFY `ID_EJ_MQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `ID_inscripcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rutina`
--
ALTER TABLE `rutina`
  MODIFY `ID_rutina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usarios`
--
ALTER TABLE `usarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `uso_maquina`
--
ALTER TABLE `uso_maquina`
  MODIFY `ID_maquina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_rutina`
--
ALTER TABLE `usuario_rutina`
  MODIFY `ID_usuario_rutina` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `usarios` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ej_maquina`
--
ALTER TABLE `ej_maquina`
  ADD CONSTRAINT `ej_maquina_ibfk_1` FOREIGN KEY (`ID_maquina`) REFERENCES `uso_maquina` (`ID_maquina`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ej_maquina_ibfk_2` FOREIGN KEY (`ID_ejercios`) REFERENCES `ejercicios` (`ID_ejercios`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `usarios` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`ID_clase`) REFERENCES `clases` (`ID_clase`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD CONSTRAINT `rutina_ibfk_1` FOREIGN KEY (`ID_ejercios`) REFERENCES `ejercicios` (`ID_ejercios`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_rutina`
--
ALTER TABLE `usuario_rutina`
  ADD CONSTRAINT `usuario_rutina_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `usarios` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_rutina_ibfk_2` FOREIGN KEY (`ID_rutina`) REFERENCES `rutina` (`ID_rutina`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
