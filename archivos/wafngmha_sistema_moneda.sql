-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-12-2018 a las 04:25:08
-- Versión del servidor: 10.2.18-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wafngmha_sistema_moneda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos_b`
--

CREATE TABLE `atributos_b` (
  `id_atributo_b` int(11) NOT NULL,
  `nombre_atributo` varchar(100) DEFAULT NULL,
  `descripcion_atributo` varchar(100) DEFAULT NULL,
  `tipo_atributob` varchar(50) NOT NULL,
  `categoria_atributob` varchar(100) NOT NULL,
  `orden` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atributos_b`
--

INSERT INTO `atributos_b` (`id_atributo_b`, `nombre_atributo`, `descripcion_atributo`, `tipo_atributob`, `categoria_atributob`, `orden`, `estado`) VALUES
(6, 'Valor Facial', 'Facial', 'Generales', '', 0, 1),
(8, 'Valor Moneda', 'Valor Moneda', 'Especiales', '', 0, 1),
(9, 'Catalogo GTX', 'Catalogo', 'Catalogos', '', 0, 1),
(10, 'Foto General de la Moneda', 'Foto', 'Generales', '', 0, 1),
(11, 'Precio Moneda', 'Precio', 'Precios', '', 0, 1),
(12, 'Contrabando', 'Contrabando', 'Especiales', '', 0, 1),
(13, 'Gobernante', 'Gobernante', 'Especiales', '', 0, 1),
(14, 'Otros', 'Otros', 'Otros', '', 0, 1),
(15, 'Nuevo', 'Nuevo', 'Otros', '', 0, 1),
(16, 'Otros ert', 'Otros ert', 'Otros', '', 0, 1),
(17, 'Catalogo GTX 2', 'Catalogo', 'Catalogos', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos_especiales_b`
--

CREATE TABLE `atributos_especiales_b` (
  `id_atributos_especiales_b` int(11) NOT NULL,
  `id_atributob` int(11) DEFAULT NULL,
  `opciones_especialesb` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atributos_especiales_b`
--

INSERT INTO `atributos_especiales_b` (`id_atributos_especiales_b`, `id_atributob`, `opciones_especialesb`) VALUES
(1, 8, '1/2'),
(2, 8, '4'),
(3, 12, 'ty'),
(4, 12, 'ty2'),
(5, 12, 'ty3'),
(6, 13, 'Carlos I y Juana'),
(7, 13, 'Felipe II'),
(8, 13, 'Felipe III');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos_especiales_m`
--

CREATE TABLE `atributos_especiales_m` (
  `id_atributos_especiales_m` int(11) NOT NULL,
  `id_atributom` int(11) DEFAULT NULL,
  `opciones_especialesm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atributos_especiales_m`
--

INSERT INTO `atributos_especiales_m` (`id_atributos_especiales_m`, `id_atributom`, `opciones_especialesm`) VALUES
(30, 13, 'Mo (México)'),
(31, 13, 'Mx (México)'),
(32, 13, 'M (México)'),
(33, 9, 'Coloniales: Carlos y Juana'),
(34, 9, 'Coloniales: Macuquinas'),
(35, 9, 'Coloniales: Columnarias'),
(36, 9, 'Coloniales: Bustos'),
(37, 9, 'Guerra Independencia'),
(38, 9, 'Insurgente'),
(39, 9, 'Imperio de Iturbide'),
(40, 9, '1ra República'),
(41, 9, 'Imprerio de Maximiliano'),
(42, 9, '2da República'),
(43, 9, 'Siglo XX'),
(44, 9, 'Siglo XXI'),
(48, 1, 'Carlos I y Juana'),
(49, 1, 'Felipe II'),
(50, 1, 'Felipe III'),
(51, 1, 'Felipe IV'),
(52, 1, 'Carlos II'),
(53, 1, 'Felipe V'),
(54, 1, 'Luis I'),
(55, 1, 'Felipe V (2da)'),
(56, 1, 'Fernando VI'),
(57, 1, 'Carlos IIII'),
(58, 1, 'Carlos IV'),
(59, 1, 'Fernando VII'),
(60, 1, 'Iturbide'),
(61, 1, 'Maximiliano'),
(70, 20, 'Si'),
(71, 20, 'No'),
(72, 27, 'Redonda'),
(73, 27, 'Macuquina'),
(74, 12, 'NA'),
(75, 12, 'Serie Precolombina'),
(76, 12, 'Serie Animales en peligro de extinción'),
(81, 16, 'Real'),
(82, 16, 'Peso'),
(83, 16, 'Nuevos Pesos'),
(84, 16, 'Onza'),
(85, 18, 'Circulante común'),
(86, 18, 'Circulante conmemorativa'),
(87, 18, 'No circulante'),
(88, 18, 'Pruebas'),
(89, 18, 'Fichas'),
(90, 19, 'Común'),
(91, 19, 'Satín'),
(92, 19, 'Proof');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos_m`
--

CREATE TABLE `atributos_m` (
  `id_atributo_m` int(11) NOT NULL,
  `nombre_atributo` varchar(100) DEFAULT NULL,
  `descripcion_atributo` varchar(100) DEFAULT NULL,
  `tipo_atributom` varchar(50) NOT NULL,
  `categoria_atributom` varchar(100) NOT NULL,
  `orden` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atributos_m`
--

INSERT INTO `atributos_m` (`id_atributo_m`, `nombre_atributo`, `descripcion_atributo`, `tipo_atributom`, `categoria_atributom`, `orden`, `estado`) VALUES
(1, 'Gobernante', 'Gobernante', 'Especiales', 'Información_general', 4, 1),
(2, 'Valor facial (letras)', 'Ejemplo 1/2 real', 'Generales', 'Información_general', 1, 1),
(3, 'Catalogo Yonaka', 'Catalogo Yonaka', 'Catalogos', 'Catalogos', 4, 1),
(4, 'Foto Reverso', 'Foto del reverso', 'Fotos', 'Reverso', 4, 1),
(5, 'Foto Anverso', 'Foto del anverso', 'Fotos', 'Anverso', 4, 1),
(9, 'Epoca', 'A que periodo pertenece', 'Especiales', 'Información_general', 7, 1),
(11, 'Catalogo Krause', 'Catalogo Krause', 'Catalogos', 'Catalogos', 1, 1),
(12, 'Evento conmemorativo', 'En caso que sea una emisión conmemorativa, ¿qué conmemora?, por ejemplo: Serie Precolombina', 'Especiales', 'Información_general', 10, 1),
(13, 'Ceca', 'Casa emisora de la moneda', 'Especiales', 'Información_general', 8, 1),
(14, 'Año acuñación', 'Fecha que tiene la moneda', 'Generales', 'Información_general', 3, 1),
(15, 'Valor facial (numeros y simbolos)', 'Ejemplo: 1/2 o 0.50', 'Generales', 'Información_general', 2, 1),
(16, 'Tipo de valor', 'Real, Peso, Nuevos Pesos, Onza...', 'Especiales', 'Información_general', 6, 1),
(17, 'Ensayador', 'Ensayador', 'Generales', 'Información_general', 9, 1),
(18, 'Tipo de moneda', 'Común, Conmemorativa, Pruebas, etc...', 'Especiales', 'Información_general', 5, 1),
(19, 'Tipo de acuñación', 'Comun, Satin, Proof, etc...', 'Especiales', 'Información_general', 11, 1),
(20, '¿Desmonetizado?', '¿Ya no se encuentra en circulación?', 'Especiales', 'Información_general', 12, 1),
(21, 'Catálogo Cayón', 'Catálogo Cayón', 'Catalogos', 'Catalogos', 2, 1),
(22, 'Catálogo Gilboy', 'Catálogo Gilboy', 'Catalogos', 'Catalogos', 3, 1),
(23, 'Metal', 'Ejemplo: Plata (0.900), cobre-niquel', 'Generales', 'Datos_Técnicos', 1, 1),
(24, 'Peso', 'En gramos', 'Medidas', 'Datos_Técnicos', 2, 1),
(25, 'Diámetro', 'En milimetros', 'Medidas', 'Datos_Técnicos', 3, 1),
(26, 'Espesor', 'En milimetros', 'Medidas', 'Datos_Técnicos', 4, 1),
(27, 'Forma', 'Forma de la moneda', 'Especiales', 'Datos_Técnicos', 5, 1),
(28, 'Acuñación conocida', 'Número de monedas hechas', 'Generales', 'Datos_Técnicos', 6, 1),
(29, 'Descripción del anverso', 'Descripción del anverso de la moneda', 'Generales', 'Anverso', 1, 1),
(30, 'Letras en el anverso de la moneda', 'Letras en el anverso de la moneda', 'Generales', 'Anverso', 2, 1),
(31, 'Significado de las letras del anverso', 'Significado de las letras del anverso', 'Generales', 'Anverso', 3, 1),
(32, 'Descripción del reverso', 'Descripción del reverso de la moneda', 'Generales', 'Reverso', 1, 1),
(33, 'Letras en el reverso de la moneda', 'Letras en el reverso de la moneda', 'Generales', 'Reverso', 2, 1),
(34, 'Significado de las letras del reverso', 'Significado de las letras del reverso', 'Generales', 'Reverso', 3, 1),
(35, 'Descripción del canto', 'Descripción del canto', 'Generales', 'Canto', 1, 1),
(36, 'Letras en el canto de la moneda', 'Letras en el canto de la moneda', 'Generales', 'Canto', 2, 1),
(37, 'Significado de las letras del canto', 'Significado de las letras del canto', 'Generales', 'Canto', 3, 1),
(38, 'Foto del canto', 'Foto del canto', 'Fotos', 'Canto', 4, 1),
(39, 'Sobre fecha', 'Sobre fecha', 'Generales', 'Variedades', 1, 1),
(40, 'Sobre ensayador', 'Sobre ensayador', 'Generales', 'Variedades', 2, 1),
(41, 'Otro tipo de variante', 'Otro tipo de variante (explicar la variedad)', 'Generales', 'Variedades', 3, 1),
(42, 'Foto de la variante 1', 'Foto de la variante 1', 'Fotos', 'Variedades', 4, 1),
(43, 'Foto de la variante 2', 'Foto de la variante 2', 'Fotos', 'Variedades', 5, 1),
(44, 'Comentarios', 'Comentarios de la moneda', 'Generales', 'Información_adicional', 1, 1),
(45, 'Referencias', 'Referencias bibliográficas, web, etc...', 'Generales', 'Información_adicional', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo_billetes`
--

CREATE TABLE `atributo_billetes` (
  `id_atributo_billete` int(11) NOT NULL,
  `id_billete` int(11) DEFAULT NULL,
  `id_atributo` int(11) DEFAULT NULL,
  `atributo_billete` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atributo_billetes`
--

INSERT INTO `atributo_billetes` (`id_atributo_billete`, `id_billete`, `id_atributo`, `atributo_billete`) VALUES
(1, 1, 10, 'ventas2.png'),
(2, 1, 6, '15879'),
(3, 1, 11, '15879'),
(4, 1, 8, '1/2'),
(5, 1, 12, 'ty2'),
(6, 1, 13, 'Felipe III'),
(8, 1, 14, 'Otros op'),
(9, 1, 15, 'Nuevo'),
(14, 1, 16, 'Mi referencia es mi papa HAHA'),
(15, 2, 10, 'Captura_de_pantalla_(14).png'),
(16, 2, 6, '3000'),
(17, 2, 11, '2000'),
(18, 2, 8, '1/2'),
(19, 2, 12, 'ty2'),
(20, 2, 13, 'Carlos I y Juana'),
(21, 2, 14, 'Moneda de Prueba Editada'),
(22, 2, 15, 'Moneda de Prueba Editada'),
(23, 2, 16, 'Moneda de Prueba Editada'),
(24, 2, 9, ''),
(25, 2, 17, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo_monedas`
--

CREATE TABLE `atributo_monedas` (
  `id_atributo_moneda` int(11) NOT NULL,
  `id_moneda` int(11) DEFAULT NULL,
  `id_atributo` int(11) DEFAULT NULL,
  `atributo_moneda` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `atributo_monedas`
--

INSERT INTO `atributo_monedas` (`id_atributo_moneda`, `id_moneda`, `id_atributo`, `atributo_moneda`) VALUES
(1, 1, 1, '4'),
(6, 1, 3, 'AX-8746456'),
(7, 1, 4, 'Todo malo'),
(8, 1, 5, 'Dolar1.jpg,Wikipedia.com'),
(17, 4, 5, 'Dolar4.jpg,Wikipedia.com'),
(18, 4, 1, '2'),
(19, 4, 2, '15000'),
(20, 4, 4, 'Moneda de Prueba Editada Otra vez'),
(21, 4, 3, 'AX-87464562'),
(22, 4, 11, 'AXXXXXXXXXXXXXXXX'),
(23, 5, 5, 'M05-36a1.jpg,www.ha.com'),
(24, 5, 4, 'M05-36r1.jpg,www.ha.com'),
(25, 5, 38, 'm0546r1.jpg,www.ha.com'),
(26, 5, 1, 'Felipe V'),
(27, 5, 2, '1/2 Real'),
(28, 5, 9, 'Coloniales: Columnarias'),
(29, 5, 12, '1/2 Real - Felipe V'),
(30, 5, 13, 'Mo (México)'),
(31, 5, 14, '1736'),
(32, 5, 15, '1/2'),
(33, 5, 16, 'Real'),
(34, 5, 17, 'MF'),
(35, 5, 18, 'Circulante común'),
(36, 5, 19, 'Común'),
(37, 5, 20, 'Si'),
(38, 5, 23, 'Plata (0.917)'),
(39, 5, 24, '1.6917'),
(40, 5, 25, '17'),
(41, 5, 26, '2'),
(42, 5, 27, 'Redonda'),
(43, 5, 28, ''),
(44, 5, 29, 'Spain coat of arms flanked by initials. With legend all around'),
(45, 5, 30, '*PHILIP•V•D•G•HISPAN•ET IND•REX •MF'),
(46, 5, 31, 'Felipe 5th by the grace of God King of Spain and the Indies'),
(47, 5, 32, 'Crowned hemispheres in between pillars. With legend around and date at bottom'),
(48, 5, 33, '*VTRAQUE VNVM* Mo*1736*Mo'),
(49, 5, 34, 'Both as one Mexico City 1736 Mexico City'),
(50, 5, 35, 'Estriado'),
(51, 5, 36, 'NA'),
(52, 5, 37, 'NA'),
(53, 5, 11, 'KM-65'),
(54, 5, 3, 'M05-36'),
(55, 5, 21, '8260'),
(56, 5, 22, 'M-05-9'),
(57, 6, 2, '1/2 Real'),
(58, 6, 15, '1/2'),
(59, 6, 14, '1740'),
(60, 6, 1, 'Felipe V'),
(61, 6, 18, 'Circulante común'),
(62, 6, 16, 'Real'),
(63, 6, 9, 'Coloniales: Columnarias'),
(64, 6, 13, 'Mo (México)'),
(65, 6, 17, 'MF'),
(66, 6, 12, 'NA'),
(67, 6, 19, 'Común'),
(68, 6, 20, 'Si'),
(69, 6, 23, 'Plata (0.917)'),
(70, 6, 24, '1.6917'),
(71, 6, 25, '17'),
(72, 6, 26, '2'),
(73, 6, 27, 'Redonda'),
(74, 6, 28, 'NA'),
(75, 6, 29, 'Spain coat of arms flanked by initials. With legend all around.'),
(76, 6, 30, '*PHILIP•V•D•G•HISPAN•ET IND•REX •MF'),
(77, 6, 31, 'Felipe 5th by the grace of God King of Spain and the Indies'),
(78, 6, 32, 'Crowned hemispheres in between pillars. With legend around and date at bottom.'),
(79, 6, 33, '*VTRAQUE VNVM* Mo*1736*Mo'),
(80, 6, 34, 'Both as one Mexico City 1736 Mexico City'),
(81, 6, 35, ''),
(82, 6, 36, ''),
(83, 6, 37, ''),
(84, 6, 39, ''),
(85, 6, 40, ''),
(86, 6, 41, ''),
(87, 6, 11, 'KM-65'),
(88, 6, 3, 'M05-40'),
(89, 7, 2, '1 Centavo'),
(90, 7, 15, '.01'),
(91, 7, 14, '1905'),
(92, 7, 1, 'Maximiliano'),
(93, 7, 18, 'Circulante común'),
(94, 7, 16, 'Peso'),
(95, 7, 9, '2da República'),
(96, 7, 13, 'Mo (México)'),
(97, 7, 17, ''),
(98, 7, 12, 'NA'),
(99, 7, 19, 'Común'),
(100, 7, 20, 'Si'),
(101, 7, 23, 'Bronce'),
(102, 7, 24, '3.0 g'),
(103, 7, 25, '19.5 mm'),
(104, 7, 26, '1.4 mm'),
(105, 7, 27, 'Redonda'),
(106, 7, 28, '6,000,000'),
(107, 7, 29, 'Estados Unidos Mexicanos in a semicircle over an older version of the Mexican coat of arms: a Mexica'),
(108, 7, 30, 'ESTADOS UNIDOS MEXICANOS'),
(109, 7, 31, 'Estados Unidos Mexicanos'),
(110, 7, 32, 'The year at the top. The denomination over the cent symbol is in the center, surrounded by a wreath.'),
(111, 7, 33, '1905 1¢ Mo'),
(112, 7, 34, '1905 1¢ Mo'),
(113, 7, 35, 'Liso'),
(114, 7, 36, ''),
(115, 7, 37, ''),
(116, 7, 39, ''),
(117, 7, 40, ''),
(118, 7, 41, 'Fecha estrecha'),
(119, 7, 11, 'KM-415'),
(120, 8, 2, '1 Centavo'),
(121, 8, 15, '.01'),
(122, 8, 14, '1905'),
(123, 8, 1, ''),
(124, 8, 18, 'Circulante común'),
(125, 8, 16, 'Peso'),
(126, 8, 9, '2da República'),
(127, 8, 13, 'Mo (México)'),
(128, 8, 17, ''),
(129, 8, 12, ''),
(130, 8, 19, 'Común'),
(131, 8, 20, 'Si'),
(132, 8, 23, 'Bronce'),
(133, 8, 24, '3.0 g'),
(134, 8, 25, '19.5 mm'),
(135, 8, 26, '1.4 mm'),
(136, 8, 27, 'Redonda'),
(137, 8, 28, '6,040,000'),
(138, 8, 29, 'Estados Unidos Mexicanos in a semicircle over an older version of the Mexican coat of arms: a Mexica'),
(139, 8, 30, 'ESTADOS UNIDOS MEXICANOS'),
(140, 8, 31, 'Estados Unidos Mexicanos'),
(141, 8, 32, 'The year at the top. The denomination over the cent symbol is in the center, surrounded by a wreath.'),
(142, 8, 33, '1905 1¢ Mo'),
(143, 8, 34, '1905 1¢ Mo'),
(144, 8, 35, 'Liso'),
(145, 8, 36, ''),
(146, 8, 37, ''),
(147, 8, 39, ''),
(148, 8, 40, ''),
(149, 8, 41, 'Fecha abierta'),
(150, 8, 11, 'KM-415');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_billetes`
--

CREATE TABLE `catalogo_billetes` (
  `id_catalogo_billete` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `catalogo_billetes`
--

INSERT INTO `catalogo_billetes` (`id_catalogo_billete`, `usuario`) VALUES
(1, 'Administrador'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_monedas`
--

CREATE TABLE `catalogo_monedas` (
  `id_catalogo_moneda` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `catalogo_monedas`
--

INSERT INTO `catalogo_monedas` (`id_catalogo_moneda`, `usuario`, `estado`) VALUES
(1, 'Administrador', 2),
(4, 'Administrador', 2),
(5, 'Administrador', 0),
(6, 'Administrador', 0),
(7, 'Administrador', 0),
(8, 'Administrador', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion_personal_billetes`
--

CREATE TABLE `coleccion_personal_billetes` (
  `id_coleccion_personal_billete` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_billete` int(11) DEFAULT NULL,
  `condicion_billete` varchar(45) DEFAULT NULL,
  `casa_certificadora` varchar(45) DEFAULT NULL,
  `valor_certificacion` varchar(45) DEFAULT NULL,
  `registro_certificacion` varchar(80) DEFAULT NULL,
  `tipo_registro` varchar(50) DEFAULT NULL,
  `tipo_billete_registro` varchar(50) DEFAULT NULL,
  `foto_frente_billete` varchar(255) DEFAULT NULL,
  `foto_detras_billete` varchar(255) DEFAULT NULL,
  `precio_billete` varchar(45) DEFAULT NULL,
  `mercado` varchar(45) DEFAULT NULL,
  `serie_billete` varchar(45) DEFAULT NULL,
  `subserie` varchar(50) DEFAULT NULL,
  `numero_billete_add` varchar(80) DEFAULT NULL,
  `precio_referencia` varchar(45) DEFAULT NULL,
  `lugar_billete` varchar(100) DEFAULT NULL,
  `cantidad_billete` varchar(45) DEFAULT NULL,
  `descripcion_billete` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion_personal_monedas`
--

CREATE TABLE `coleccion_personal_monedas` (
  `id_coleccion_personal_moneda` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_moneda` int(11) DEFAULT NULL,
  `id_moneda_principal` int(11) DEFAULT NULL,
  `condicion_moneda` varchar(45) DEFAULT NULL,
  `casa_certificadora` varchar(45) DEFAULT NULL,
  `valor_certificacion` varchar(45) DEFAULT NULL,
  `registro_certificacion` varchar(80) DEFAULT NULL,
  `tipo_registro` varchar(50) DEFAULT NULL,
  `tipo_moneda_registro` varchar(50) DEFAULT NULL,
  `foto_frente_moneda` varchar(255) DEFAULT NULL,
  `foto_detras_moneda` varchar(255) DEFAULT NULL,
  `precio_moneda` varchar(45) DEFAULT NULL,
  `mercado` varchar(45) DEFAULT NULL,
  `numero_moneda_add` varchar(80) DEFAULT NULL,
  `precio_referencia` varchar(45) DEFAULT NULL,
  `lugar_moneda` varchar(100) DEFAULT NULL,
  `cantidad_moneda` varchar(45) DEFAULT NULL,
  `descripcion_moneda` longtext DEFAULT NULL,
  `descripcion_moneda_privada` longtext DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_agregada` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coleccion_personal_monedas`
--

INSERT INTO `coleccion_personal_monedas` (`id_coleccion_personal_moneda`, `id_usuario`, `id_moneda`, `id_moneda_principal`, `condicion_moneda`, `casa_certificadora`, `valor_certificacion`, `registro_certificacion`, `tipo_registro`, `tipo_moneda_registro`, `foto_frente_moneda`, `foto_detras_moneda`, `precio_moneda`, `mercado`, `numero_moneda_add`, `precio_referencia`, `lugar_moneda`, `cantidad_moneda`, `descripcion_moneda`, `descripcion_moneda_privada`, `estado`, `fecha_agregada`) VALUES
(7, 1, 5, NULL, 'G', 'Casa de Oro moneda editada', '789546', 'AX-55456', 'Personal', 'principal', 'Captura_de_pantalla_(1).png', 'Captura_de_pantalla_(2).png', NULL, '0', NULL, '46456', 'Zimbawue editada', '0', 'HOLA MAMA', 'MAMA 2', 2, '2018-12-03'),
(8, 1, 5, NULL, 'XF', 'Casa de Oro', 'La valoro en 50 pesos', '01156', 'Intercambio', 'principal', 'Captura_de_pantalla_(22).png', 'Captura_de_pantalla_(38).png', '5000 Pesos', '1', NULL, '5000', 'Zimbawue', '1', 'Es una buena moneda', 'Esta moneda tiene fallas', 1, '2018-12-03'),
(10, 1, 5, 10, 'UNC', 'Monedas todas', '5000', '1245654', 'Personal', 'add', 'Captura_de_pantalla_(37)1.png', 'Captura_de_pantalla_(38)3.png', NULL, '0', 'tertert', NULL, 'Zimbawue', NULL, '123', NULL, 1, '2018-12-03'),
(11, 1, 5, NULL, 'UNC', 'Otra mas', 'Otra mas', '', 'Intercambio', 'principal', 'Captura_de_pantalla_(34).png', 'Captura_de_pantalla_(5).png', '78945', '1', NULL, '46456', 'Zimbawue editada', '1', 'Nota publica', 'Nota privada', 1, '2018-12-03'),
(12, 1, 5, 11, 'UNC', 'Monedas todas opmg', '5000', '1245654', 'Personal', 'add', 'Captura_de_pantalla_(16).png', 'Captura_de_pantalla_(17).png', NULL, '0', 'tertert', NULL, 'Zimbawue editada', NULL, 'puvlica', 'asdsad', 1, '2018-12-03'),
(13, 1, 5, NULL, 'AU', 'prueba ultima', 'prueba ultima', 'prueba ultima', 'Personal', 'principal', 'Captura_de_pantalla_(1)1.png', 'Captura_de_pantalla_(2)1.png', NULL, '0', NULL, 'prueba ultima', 'prueba ultima', '1', 'prueba ultima', 'prueba ultima', 1, '2018-12-03'),
(14, 1, 5, 14, 'G', 'prueba ultima', 'prueba ultima', 'prueba ultima', 'Personal', 'add', 'Captura_de_pantalla_(3).png', 'Captura_de_pantalla_(4)1.png', NULL, '0', 'prueba ultima', NULL, 'prueba ultima', NULL, 'prueba ultima', 'prueba ultima', 1, '2018-12-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_catalogob`
--

CREATE TABLE `precios_catalogob` (
  `id_precio_catalogob` int(11) NOT NULL,
  `id_catalogo` int(11) DEFAULT NULL,
  `id_billete` int(11) DEFAULT NULL,
  `G` varchar(45) DEFAULT NULL,
  `VG` varchar(45) DEFAULT NULL,
  `F` varchar(45) DEFAULT NULL,
  `VF` varchar(45) DEFAULT NULL,
  `XF` varchar(45) DEFAULT NULL,
  `AU` varchar(45) DEFAULT NULL,
  `UNC` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `precios_catalogob`
--

INSERT INTO `precios_catalogob` (`id_precio_catalogob`, `id_catalogo`, `id_billete`, `G`, `VG`, `F`, `VF`, `XF`, `AU`, `UNC`) VALUES
(15, 9, 2, '1', '123456', '4', '3', '5', '6', '7'),
(16, 17, 2, '1', '2', '4', '333', '255', '6', '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_catalogom`
--

CREATE TABLE `precios_catalogom` (
  `id_precio_catalogom` int(11) NOT NULL,
  `id_catalogo` int(11) DEFAULT NULL,
  `id_moneda` int(11) DEFAULT NULL,
  `G` varchar(45) DEFAULT NULL,
  `VG` varchar(45) DEFAULT NULL,
  `F` varchar(45) DEFAULT NULL,
  `VF` varchar(45) DEFAULT NULL,
  `XF` varchar(45) DEFAULT NULL,
  `AU` varchar(45) DEFAULT NULL,
  `UNC` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `precios_catalogom`
--

INSERT INTO `precios_catalogom` (`id_precio_catalogom`, `id_catalogo`, `id_moneda`, `G`, `VG`, `F`, `VF`, `XF`, `AU`, `UNC`) VALUES
(11, 3, 1, '1', '2', '3', '8', '5', '6', '7'),
(17, 3, 4, '1', '2', '3', '4', '5', '6', '7'),
(18, 11, 4, '11', '22', '33', '44', '55', '66', '77'),
(24, 11, 5, '10', '20', '30', '40', '50', '60', '70'),
(25, 3, 5, '5', '10', '15', '20', '25', '30', '35'),
(26, 21, 5, '20', '40', '60', '80', '100', '120', '140'),
(27, 22, 5, '1', '2', '3', '4', '5', '6', '7'),
(28, 11, 6, '10', '15', '25', '35', '45', '55', '65'),
(29, 3, 6, '15', '25', '35', '50', '75', '95', '150'),
(31, 11, 8, '5', '10', '15', '20', '25', '30', '35'),
(32, 11, 7, '5', '10', '15', '20', '25', '30', '35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `id_sugerencia` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `fecha_enviado` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_persona` varchar(50) DEFAULT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `dni_usuario` varchar(50) DEFAULT NULL,
  `email_usuario` varchar(100) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `membresia` int(11) DEFAULT NULL,
  `publicidad` int(11) DEFAULT NULL,
  `membresia_comienzo` datetime DEFAULT NULL,
  `membresia_fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_persona`, `nombre_usuario`, `dni_usuario`, `email_usuario`, `tipo_usuario`, `membresia`, `publicidad`, `membresia_comienzo`, `membresia_fin`) VALUES
(1, 'Jose Ortega', 'bomj321', '123456', 'jmob612@gmail.com', 1, 1, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atributos_b`
--
ALTER TABLE `atributos_b`
  ADD PRIMARY KEY (`id_atributo_b`),
  ADD UNIQUE KEY `nombre_atributo_UNIQUE` (`nombre_atributo`);

--
-- Indices de la tabla `atributos_especiales_b`
--
ALTER TABLE `atributos_especiales_b`
  ADD PRIMARY KEY (`id_atributos_especiales_b`),
  ADD KEY `fk_attresb_atributos_b_idx` (`id_atributob`);

--
-- Indices de la tabla `atributos_especiales_m`
--
ALTER TABLE `atributos_especiales_m`
  ADD PRIMARY KEY (`id_atributos_especiales_m`),
  ADD KEY `fk_attresm_atributos_m_idx` (`id_atributom`);

--
-- Indices de la tabla `atributos_m`
--
ALTER TABLE `atributos_m`
  ADD PRIMARY KEY (`id_atributo_m`),
  ADD UNIQUE KEY `nombre_atributo_UNIQUE` (`nombre_atributo`);

--
-- Indices de la tabla `atributo_billetes`
--
ALTER TABLE `atributo_billetes`
  ADD PRIMARY KEY (`id_atributo_billete`),
  ADD KEY `fk_atributo_catalogo_idx` (`id_billete`),
  ADD KEY `fk_atributo_attrb_idx` (`id_atributo`);

--
-- Indices de la tabla `atributo_monedas`
--
ALTER TABLE `atributo_monedas`
  ADD PRIMARY KEY (`id_atributo_moneda`),
  ADD KEY `fk_atributo_catalogo_idx` (`id_moneda`),
  ADD KEY `fk_atributo_attr_idx` (`id_atributo`);

--
-- Indices de la tabla `catalogo_billetes`
--
ALTER TABLE `catalogo_billetes`
  ADD PRIMARY KEY (`id_catalogo_billete`);

--
-- Indices de la tabla `catalogo_monedas`
--
ALTER TABLE `catalogo_monedas`
  ADD PRIMARY KEY (`id_catalogo_moneda`);

--
-- Indices de la tabla `coleccion_personal_billetes`
--
ALTER TABLE `coleccion_personal_billetes`
  ADD PRIMARY KEY (`id_coleccion_personal_billete`),
  ADD KEY `fk_coleccionb_usuario_idx` (`id_usuario`),
  ADD KEY `fk_coleccionb_catalogo_idx` (`id_billete`);

--
-- Indices de la tabla `coleccion_personal_monedas`
--
ALTER TABLE `coleccion_personal_monedas`
  ADD PRIMARY KEY (`id_coleccion_personal_moneda`),
  ADD KEY `fk_coleccion_usuario_idx` (`id_usuario`),
  ADD KEY `fk_coleccion_catalogo_idx` (`id_moneda`);

--
-- Indices de la tabla `precios_catalogob`
--
ALTER TABLE `precios_catalogob`
  ADD PRIMARY KEY (`id_precio_catalogob`),
  ADD KEY `fk_preciosc_attrb_idx` (`id_catalogo`),
  ADD KEY `fk_precios_idbille_idx` (`id_billete`);

--
-- Indices de la tabla `precios_catalogom`
--
ALTER TABLE `precios_catalogom`
  ADD PRIMARY KEY (`id_precio_catalogom`),
  ADD KEY `fk_preciosc_attrm_idx` (`id_catalogo`),
  ADD KEY `fk_catm_attrm_idx` (`id_moneda`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`id_sugerencia`),
  ADD KEY `fk_sugerencia_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nombre_usuario_UNIQUE` (`nombre_usuario`),
  ADD UNIQUE KEY `dni_usuario_UNIQUE` (`dni_usuario`),
  ADD UNIQUE KEY `email_usuario_UNIQUE` (`email_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atributos_b`
--
ALTER TABLE `atributos_b`
  MODIFY `id_atributo_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `atributos_especiales_b`
--
ALTER TABLE `atributos_especiales_b`
  MODIFY `id_atributos_especiales_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `atributos_especiales_m`
--
ALTER TABLE `atributos_especiales_m`
  MODIFY `id_atributos_especiales_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `atributos_m`
--
ALTER TABLE `atributos_m`
  MODIFY `id_atributo_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `atributo_billetes`
--
ALTER TABLE `atributo_billetes`
  MODIFY `id_atributo_billete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `atributo_monedas`
--
ALTER TABLE `atributo_monedas`
  MODIFY `id_atributo_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `catalogo_billetes`
--
ALTER TABLE `catalogo_billetes`
  MODIFY `id_catalogo_billete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `catalogo_monedas`
--
ALTER TABLE `catalogo_monedas`
  MODIFY `id_catalogo_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `coleccion_personal_billetes`
--
ALTER TABLE `coleccion_personal_billetes`
  MODIFY `id_coleccion_personal_billete` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coleccion_personal_monedas`
--
ALTER TABLE `coleccion_personal_monedas`
  MODIFY `id_coleccion_personal_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `precios_catalogob`
--
ALTER TABLE `precios_catalogob`
  MODIFY `id_precio_catalogob` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `precios_catalogom`
--
ALTER TABLE `precios_catalogom`
  MODIFY `id_precio_catalogom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `id_sugerencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atributos_especiales_b`
--
ALTER TABLE `atributos_especiales_b`
  ADD CONSTRAINT `fk_attresb_atributos_b` FOREIGN KEY (`id_atributob`) REFERENCES `atributos_b` (`id_atributo_b`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `atributos_especiales_m`
--
ALTER TABLE `atributos_especiales_m`
  ADD CONSTRAINT `fk_attresm_atributos_m` FOREIGN KEY (`id_atributom`) REFERENCES `atributos_m` (`id_atributo_m`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `atributo_billetes`
--
ALTER TABLE `atributo_billetes`
  ADD CONSTRAINT `fk_atributo_attrb` FOREIGN KEY (`id_atributo`) REFERENCES `atributos_b` (`id_atributo_b`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_atributo_catalogob` FOREIGN KEY (`id_billete`) REFERENCES `catalogo_billetes` (`id_catalogo_billete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `atributo_monedas`
--
ALTER TABLE `atributo_monedas`
  ADD CONSTRAINT `fk_atributo_attrm` FOREIGN KEY (`id_atributo`) REFERENCES `atributos_m` (`id_atributo_m`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_atributo_catalogom` FOREIGN KEY (`id_moneda`) REFERENCES `catalogo_monedas` (`id_catalogo_moneda`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `coleccion_personal_billetes`
--
ALTER TABLE `coleccion_personal_billetes`
  ADD CONSTRAINT `fk_coleccionb_catalogo` FOREIGN KEY (`id_billete`) REFERENCES `catalogo_billetes` (`id_catalogo_billete`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_coleccionb_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `coleccion_personal_monedas`
--
ALTER TABLE `coleccion_personal_monedas`
  ADD CONSTRAINT `fk_coleccionm_catalogo` FOREIGN KEY (`id_moneda`) REFERENCES `catalogo_monedas` (`id_catalogo_moneda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_coleccionm_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `precios_catalogob`
--
ALTER TABLE `precios_catalogob`
  ADD CONSTRAINT `fk_precios_idbille` FOREIGN KEY (`id_billete`) REFERENCES `atributo_billetes` (`id_billete`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_preciosc_attrb` FOREIGN KEY (`id_catalogo`) REFERENCES `atributo_billetes` (`id_atributo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `precios_catalogom`
--
ALTER TABLE `precios_catalogom`
  ADD CONSTRAINT `fk_catm_attrm` FOREIGN KEY (`id_moneda`) REFERENCES `atributo_monedas` (`id_moneda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_preciosc_attrm` FOREIGN KEY (`id_catalogo`) REFERENCES `atributo_monedas` (`id_atributo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD CONSTRAINT `fk_sugerencia_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
