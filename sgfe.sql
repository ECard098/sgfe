-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2024 a las 23:36:44
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
-- Base de datos: `sgfe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_Cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `genero` enum('M','F','Otro') NOT NULL,
  `fecha_Nacimiento` date NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `correo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_Cliente`, `nombre`, `apellido`, `genero`, `fecha_Nacimiento`, `telefono`, `direccion`, `correo`) VALUES
(1, 'Juan', 'Pérez', '', '1990-05-15', '123456789', 'Calle Ficticia 123, Ciudad', 'juan.perez@email.com'),
(2, 'María', 'Gómez', '', '1985-08-25', '987654321', 'Avenida Libertad 456, Ciudad', 'maria.gomez@email.com'),
(3, 'Carlos', 'López', '', '1992-12-10', '1122334455', 'Calle Real 789, Ciudad', 'carlos.lopez@email.com'),
(4, 'Ana', 'Martínez', '', '1988-03-30', '5566778899', 'Plaza Mayor 101, Ciudad', 'ana.martinez@email.com'),
(5, 'Pedro', 'Sánchez', '', '1995-11-05', '2233445566', 'Calle del Sol 202, Ciudad', 'pedro.sanchez@email.com'),
(6, 'Luisa', 'Fernández', '', '1982-07-19', '9988776655', 'Avenida Central 303, Ciudad', 'luisa.fernandez@email.com'),
(7, 'José', 'Ramírez', '', '1993-02-18', '4455667788', 'Calle Nueva 404, Ciudad', 'jose.ramirez@email.com'),
(8, 'Laura', 'Hernández', '', '1991-09-09', '5566443322', 'Calle Primavera 505, Ciudad', 'laura.hernandez@email.com'),
(9, 'Ricardo', 'García', '', '1987-06-13', '3344556677', 'Calle del Río 606, Ciudad', 'ricardo.garcia@email.com'),
(10, 'Isabel', 'Díaz', '', '1990-04-20', '6677889900', 'Calle Mágica 707, Ciudad', 'isabel.diaz@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Cliente` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) NOT NULL,
  `registrado` timestamp NOT NULL DEFAULT current_timestamp(),
  `rol` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_Cliente`, `usuario`, `correo`, `contrasena`, `registrado`, `rol`) VALUES
(1, 'VC18049', 'vc18049@ues.edu.sv', '5f4dcc3b5aa765d61d8327deb882cf99', '2024-11-10 00:03:32', 'admin'),
(3, 'Example', 'Example@gmail.com', 'password', '2024-11-10 19:31:03', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_Cliente`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Cliente`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
