-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2017 a las 18:52:06
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `distriandina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `admin_usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_telefono` int(8) NOT NULL,
  `admin_celular` int(11) NOT NULL,
  `admin_password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_nit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_telefono` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_celular` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_administrador` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_cedula` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_rol` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_password`, `usuario_rol`) VALUES
('123456', '123456', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `vendedor_usuario` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor_telefono` int(8) NOT NULL,
  `vendedor_celular` int(11) NOT NULL,
  `vendedor_zona` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`admin_usuario`),
  ADD KEY `admin_email` (`admin_email`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_usuario`),
  ADD KEY `cliente_email` (`cliente_email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`vendedor_usuario`),
  ADD KEY `vendedor_email` (`vendedor_email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
