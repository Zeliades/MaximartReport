-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2023 a las 01:33:50
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdmaximart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nit` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `nit`) VALUES
(48, 'Albino Frías Piñeiro', '147596464861'),
(49, 'Águeda Larrañaga Nogués', '154843214972'),
(50, 'Paola Jáuregui Fernandez', '198164481165'),
(51, 'Calixto de Cid', '147485738293'),
(52, 'Eliana Llorens', '17352954720'),
(53, 'Prudencio Oliver', '138520478203'),
(54, 'Camilo de Yáñez', '173859137494'),
(55, 'Oriana Manzano', '193462493532'),
(56, 'Melania Isern Salom', '175648693720'),
(57, 'Rufina Cadenas Calvet', '129384184732'),
(58, 'Loreto Polo', '1746395926012'),
(59, 'Alex Portero Arnal', '147395302547'),
(60, 'Amanda Elisabet Marqués Gimeno', '147548432753'),
(61, 'Galo Zorrilla Solé', '138642754301'),
(62, 'Manu Bilbao Almansa', '16548924851'),
(63, 'Leire Merino', '1754269325829'),
(64, 'Nadia del Raya', '158462749612'),
(65, 'Felipa Ferrándiz', '172392673959'),
(66, 'Almudena Moya Benito', '187746326485'),
(67, 'Claudio Barrera Escolano', '175926983582'),
(68, 'Felix Salvà Pinilla', '139654672946'),
(69, 'Carina Pedrosa Gonzalo', '193647569269'),
(70, 'Adoración de Izquierdo', '176947903456'),
(71, 'Heriberto Frías Pelayo', '184753654829'),
(72, 'Julieta Buendía Alfaro', '174395832659'),
(73, 'Julia Coral Mora Aguilera', '18736582743'),
(74, 'Cleto Carreño', '175673249536'),
(75, 'Nicolás Valverde', '148632584294'),
(76, 'Cristian Martínez Osuna', '184502347457'),
(77, 'Bárbara Tapia Cobo', '190344396437'),
(78, 'Encarna Serna Botella', '129543750328'),
(79, 'Pacífica López Pla', '165748592439'),
(80, 'Jose Carlos Gutiérrez Castelló', '158640348216'),
(81, 'Elisabet Ruano Cervantes', '143336549342'),
(82, 'Eleuterio de Gordillo', '154395437658'),
(83, 'Lucho Quevedo Caballero', '139547435391'),
(84, 'Dorotea Conde Alvarado', '176595639548'),
(85, 'Américo Rojas', '158405942953'),
(86, 'Noemí Luisa Novoa Sans', '184504256937'),
(87, 'Azahar Conde Posada', '1895437854970'),
(88, 'Arturo de Peralta', '175907087634'),
(89, 'Delfina Cruz Diego', '134584306313'),
(90, 'Alfonso Gaya Lucena', '138403865354'),
(91, 'Juan Antonio', '185653465932'),
(92, 'Imelda Olivera', '1686593632543'),
(93, 'Enrique Rius Clavero', '158496832545'),
(94, 'Zaira de Reina', '186554865542'),
(95, 'Débora Ponce Arnal', '175496705472'),
(96, 'Morena Ibáñez Melero', '185406952854'),
(97, 'Lidia Palmer Aragón', '185670438549');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `correo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombre`, `celular`, `correo`) VALUES
(1, 'Pablo Coracha', '75346455', 'pablocoracha@gmail.com'),
(2, 'Santos Quispe', '74354054', 'santosquispe@gmail.com'),
(3, 'Valdano Mandes', '79843524', 'valdanomandes@gmail.com'),
(4, 'John Estrada', '71250343', 'johnestrada@gmail.com'),
(5, 'Julio Flores', '76394431', 'julioflores@gmail.com'),
(6, 'Diana Alarcón', '73276852', 'dianaalarcon@gmail.com'),
(7, 'Reyna Carrasco', '77435254', 'reynacarrasco@gmail.com'),
(8, 'Lourdes Borda', '73725423', 'lourdesborda@gmail.com'),
(9, 'Jeruza Pacha', '71254613', 'jeruzapacha@gmail.com'),
(10, 'Gilda Flores', '74395423', 'gildaflores@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `seccion` varchar(50) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombre`, `seccion`, `precio`, `stock`) VALUES
(1, 'Leche', 'lacteos', '7.00', 30),
(2, 'Yogurt', 'lacteos', '8.00', 30),
(3, 'Queso', 'lacteos', '11.50', 40),
(4, 'Pan', 'horneados', '0.70', 24),
(5, 'Queques', 'horneados', '2.50', 22),
(6, 'Galletas', 'horneados', '2.00', 16),
(7, 'Pies', 'horneados', '3.50', 15),
(8, 'Mariscos', 'congelados', '6.80', 8),
(9, 'Hamburguesa', 'congelados', '12.50', 13),
(10, 'Helado', 'congelados', '16.70', 15),
(11, 'Coca-Cola', 'gaseosas', '10.00', 16),
(12, 'Fanta', 'gaseosas', '10.00', 13),
(13, 'Sprite', 'gaseosas', '10.00', 14),
(14, 'Dr. Pepper', 'gaseosas', '12.00', 16),
(15, 'Res', 'carnes', '17.50', 13),
(16, 'Pollo', 'carnes', '15.50', 10),
(17, 'Cerdo', 'carnes', '13.00', 19),
(18, 'Papitas', 'snack', '7.50', 16),
(19, 'Pringles', 'snack', '10.00', 14),
(20, 'Pretzel', 'snack', '9.00', 13),
(21, 'Vino', 'licores', '56.00', 20),
(22, 'Cerveza', 'licores', '20.00', 21),
(23, 'Whisky', 'licores', '60.00', 19),
(24, 'Ron', 'licores', '65.00', 13),
(25, 'Tequila', 'licores', '50.00', 16),
(26, 'Lechuga', 'verduras', '13.00', 14),
(27, 'Tomate', 'verduras', '8.00', 9),
(28, 'Pepino', 'verduras', '9.00', 7),
(29, 'Espinaca', 'verduras', '14.00', 12),
(30, 'Repollo', 'verduras', '12.00', 14),
(31, 'Zanahoria', 'verduras', '10.00', 10),
(32, 'Manzana', 'frutas', '6.00', 15),
(33, 'Pera', 'frutas', '8.00', 16),
(34, 'Piña', 'frutas', '13.00', 14),
(35, 'Papaya', 'frutas', '12.00', 16),
(36, 'Platano', 'frutas', '10.00', 14),
(37, 'Martillo', 'herramientas', '26.00', 6),
(38, 'Serrucho', 'herramientas', '19.00', 7),
(39, 'Destornilladores', 'herramientas', '16.00', 9),
(40, 'Poxipol', 'herramientas', '13.00', 6),
(41, 'Tornillos', 'herramientas', '9.00', 8),
(42, 'Tuercas', 'herramientas', '9.00', 6),
(43, 'Duraznos', 'enlatados', '14.50', 9),
(44, 'Pepinillos', 'enlatados', '11.00', 12),
(45, 'Cherries', 'enlatados', '13.20', 6),
(46, 'Aceitunas', 'enlatados', '10.00', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` double(5,2) NOT NULL,
  `montofinal` double(8,2) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `fecha`, `cantidad`, `descuento`, `montofinal`, `idproducto`, `idcliente`, `idempleado`) VALUES
(1, '2022-06-11 09:00:00', 4, 0.00, 46.00, 3, 68, 2),
(1, '2022-06-11 09:00:00', 6, 0.00, 4.20, 4, 68, 2),
(2, '2022-06-22 15:00:00', 3, 0.00, 42.00, 29, 92, 3),
(2, '2022-06-22 15:00:00', 3, 0.00, 36.00, 30, 92, 3),
(3, '2022-06-24 10:00:00', 2, 0.00, 31.00, 16, 48, 1),
(4, '2022-06-25 17:00:00', 4, 0.00, 42.00, 17, 49, 2),
(5, '2022-06-27 21:00:00', 1, 0.00, 7.50, 18, 50, 4),
(6, '2022-06-29 11:00:00', 5, 0.00, 60.00, 35, 51, 5),
(7, '2022-06-30 14:00:00', 6, 3.00, 27.00, 36, 52, 6),
(8, '2022-07-01 21:45:00', 4, 0.00, 36.00, 41, 53, 7),
(9, '2022-07-10 19:23:00', 6, 0.00, 54.00, 42, 54, 8),
(10, '2022-07-11 15:32:00', 3, 0.00, 18.00, 32, 55, 9),
(11, '2022-07-13 17:21:00', 2, 0.00, 16.00, 33, 56, 10),
(12, '2022-07-16 21:47:00', 7, 0.00, 91.00, 34, 57, 3),
(13, '2022-07-18 19:14:00', 5, 0.00, 60.00, 35, 58, 5),
(14, '2022-07-20 14:43:00', 4, 0.00, 40.00, 36, 59, 7),
(15, '2022-07-23 19:21:00', 6, 0.00, 36.00, 32, 60, 3),
(16, '2022-07-26 16:23:00', 6, 0.00, 48.00, 33, 61, 5),
(17, '2022-08-11 11:12:00', 3, 0.00, 2.10, 4, 58, 4),
(18, '2022-08-13 21:13:00', 2, 0.00, 1.40, 4, 63, 3),
(19, '2022-08-16 16:21:00', 5, 0.00, 12.50, 5, 64, 5),
(20, '2022-08-20 14:23:00', 1, 0.00, 2.50, 5, 65, 3),
(21, '2022-08-22 17:21:00', 4, 0.00, 8.00, 6, 66, 1),
(22, '2022-08-23 19:23:00', 3, 0.00, 6.00, 6, 67, 2),
(23, '2022-08-26 23:10:00', 7, 0.00, 116.90, 10, 68, 4),
(24, '2022-08-30 11:17:00', 3, 0.00, 37.50, 9, 69, 7),
(25, '2022-09-04 16:11:00', 4, 0.00, 80.00, 22, 70, 4),
(26, '2022-09-11 10:23:00', 2, 0.00, 44.00, 22, 71, 4),
(27, '2022-09-13 23:21:00', 6, 0.00, 87.00, 43, 72, 3),
(28, '2022-09-14 16:21:00', 7, 0.00, 92.40, 45, 73, 8),
(29, '2022-09-16 15:21:00', 4, 0.00, 30.00, 18, 74, 7),
(30, '2022-09-20 19:21:00', 3, 0.00, 30.00, 19, 75, 5),
(31, '2022-09-21 18:00:00', 10, 0.00, 90.00, 20, 76, 9),
(32, '2022-09-23 19:12:00', 11, 0.00, 22.00, 6, 77, 10),
(33, '2022-09-25 20:16:00', 13, 0.00, 45.50, 7, 78, 7),
(34, '2022-09-30 21:14:00', 11, 0.00, 80.00, 8, 79, 8),
(35, '2022-10-11 21:21:00', 7, 0.00, 56.00, 2, 80, 1),
(36, '2022-10-12 11:23:00', 4, 0.00, 10.00, 5, 81, 2),
(37, '2022-10-16 19:23:00', 3, 0.00, 6.00, 6, 82, 3),
(38, '2022-10-17 21:12:00', 8, 0.00, 116.00, 43, 83, 4),
(39, '2022-10-19 16:10:00', 2, 0.00, 26.40, 45, 84, 5),
(40, '2022-10-20 17:23:00', 5, 0.00, 64.00, 34, 85, 6),
(41, '2022-10-23 18:21:00', 7, 0.00, 77.00, 44, 86, 7),
(42, '2022-10-21 14:21:00', 4, 0.00, 240.00, 23, 84, 8),
(43, '2022-10-30 16:11:00', 6, 0.00, 336.00, 21, 85, 9),
(44, '2022-11-01 14:21:00', 3, 0.00, 7.50, 5, 89, 4),
(45, '2022-11-03 16:24:00', 10, 0.00, 35.00, 7, 90, 6),
(46, '2022-11-04 17:26:00', 2, 0.00, 1.40, 4, 91, 3),
(47, '2022-11-07 20:26:00', 5, 0.00, 17.50, 7, 92, 3),
(48, '2022-11-09 18:21:00', 2, 0.00, 25.00, 9, 93, 1),
(49, '2022-11-11 19:23:00', 6, 0.00, 336.00, 21, 94, 9),
(50, '2022-11-13 09:11:00', 4, 0.00, 80.00, 22, 95, 8),
(51, '2022-11-20 10:14:00', 8, 0.00, 208.00, 37, 96, 7),
(52, '2022-11-21 11:15:00', 5, 0.00, 50.00, 31, 97, 6),
(53, '2022-11-30 19:16:00', 2, 0.00, 31.00, 16, 48, 5),
(54, '2022-12-01 09:11:00', 4, 0.00, 14.00, 7, 49, 1),
(55, '2022-12-06 11:16:00', 7, 0.00, 80.50, 3, 50, 2),
(56, '2022-12-08 13:14:00', 2, 0.00, 4.00, 6, 51, 3),
(57, '2022-12-10 09:11:00', 9, 0.00, 103.50, 3, 52, 4),
(58, '2022-12-11 11:21:00', 3, 0.00, 6.00, 6, 53, 5),
(59, '2022-12-13 13:12:00', 4, 0.00, 40.00, 11, 54, 6),
(60, '2022-12-15 19:23:00', 7, 0.00, 108.50, 16, 55, 7),
(61, '2022-12-20 20:21:00', 4, 0.00, 42.00, 17, 56, 8),
(62, '2022-12-22 23:17:00', 5, 0.00, 280.00, 21, 57, 9),
(63, '2022-12-23 19:23:00', 6, 0.00, 300.00, 25, 58, 10),
(64, '2022-12-23 21:22:00', 3, 0.00, 39.00, 26, 59, 1),
(65, '2022-12-23 16:22:00', 2, 0.00, 16.00, 27, 60, 2),
(66, '2022-12-24 19:21:00', 7, 0.00, 98.00, 29, 61, 3),
(67, '2022-12-24 18:23:00', 4, 0.00, 48.00, 30, 62, 4),
(68, '2022-12-30 17:22:00', 8, 0.00, 72.00, 41, 63, 5),
(69, '2023-01-03 12:36:00', 2, 0.00, 20.00, 11, 64, 3),
(70, '2023-01-11 14:26:00', 3, 0.00, 30.00, 12, 65, 3),
(71, '2023-01-16 18:11:00', 4, 0.00, 224.00, 21, 66, 1),
(72, '2023-01-20 11:25:00', 5, 0.00, 325.00, 24, 67, 2),
(73, '2023-01-26 17:24:00', 3, 0.00, 39.00, 26, 68, 4),
(74, '2023-01-30 19:25:00', 4, 0.00, 80.00, 22, 69, 5),
(75, '2023-02-01 16:28:00', 3, 0.00, 30.00, 31, 70, 6),
(76, '2023-02-23 21:23:00', 6, 0.00, 87.00, 43, 71, 7),
(77, '2023-02-24 14:21:00', 2, 0.00, 22.00, 44, 72, 8),
(78, '2023-02-25 17:14:00', 1, 0.00, 14.50, 43, 73, 9),
(79, '2023-02-26 16:46:00', 6, 0.00, 79.20, 45, 74, 10),
(80, '2023-02-28 12:22:00', 3, 0.00, 18.00, 32, 75, 7),
(81, '2023-03-03 20:00:00', 2, 0.00, 39.00, 38, 76, 3),
(82, '2023-03-09 17:25:00', 6, 0.00, 78.00, 40, 77, 3),
(83, '2023-03-12 16:23:00', 7, 0.00, 70.00, 46, 78, 4),
(84, '2023-03-15 13:28:00', 1, 0.00, 14.00, 29, 79, 5),
(85, '2023-03-17 21:23:00', 5, 0.00, 35.00, 1, 80, 6),
(86, '2023-03-18 14:22:00', 3, 0.00, 24.00, 2, 81, 7),
(87, '2023-03-20 21:28:00', 2, 0.00, 13.40, 8, 82, 8),
(88, '2023-03-30 21:23:00', 7, 0.00, 56.00, 27, 83, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`,`idproducto`),
  ADD KEY `FK_VentaCliente` (`idcliente`),
  ADD KEY `FK_VentaEmpleado` (`idempleado`),
  ADD KEY `FK_VentaProducto` (`idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FK_VentaCliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  ADD CONSTRAINT `FK_VentaEmpleado` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `FK_VentaProducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idProducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
