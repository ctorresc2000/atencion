-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2019 a las 05:24:06
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `_pai`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnas`
--

CREATE TABLE `alumnas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rut` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `digito` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_or` tinyint(1) NOT NULL DEFAULT '0',
  `d_psic` tinyint(1) NOT NULL DEFAULT '0',
  `d_vsoc` tinyint(1) NOT NULL DEFAULT '0',
  `d_cesc` tinyint(1) NOT NULL DEFAULT '0',
  `d_egest` tinyint(1) NOT NULL DEFAULT '0',
  `d_ter` tinyint(1) NOT NULL DEFAULT '0',
  `d_edif` tinyint(1) NOT NULL DEFAULT '0',
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecharetiro` date DEFAULT NULL,
  `atendido` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnas`
--

INSERT INTO `alumnas` (`id`, `rut`, `digito`, `curso`, `letra`, `apellidos`, `nombres`, `d_or`, `d_psic`, `d_vsoc`, `d_cesc`, `d_egest`, `d_ter`, `d_edif`, `condicion`, `created_at`, `updated_at`, `fecharetiro`, `atendido`) VALUES
(1, '21493994', '0', '1°', 'A', 'Otárola Álvarez', 'Daniela Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(2, '21327240', '3', '1°', 'A', 'Montenegro Ríos', 'Daniela Amanda Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(3, '21715702', '1', '1°', 'A', 'Antinao Meza', 'Yaritza Alejandra', 0, 1, 0, 0, 0, 0, 0, 1, NULL, '2019-05-09 00:50:18', NULL, 'SI'),
(4, '21874946', '1', '1°', 'A', 'Loyola Tolentino', 'Yeanina Celeste\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(5, '26282866', '2', '1°', 'A', 'Urdaneta Quero', 'Valeria Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(6, '24890577', '8', '1°', 'A', 'Duarte Moron', 'Keila Andreina', 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-05-07 13:42:54', NULL, 'NO'),
(7, '21510522', '9', '1°', 'A', 'Garcia Campos', 'Nayaret Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-05-07 21:29:21', NULL, 'NO'),
(8, '100419295', '4', '1°', 'A', 'Ramos Casares', 'Nathaly Andreina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(9, '26282417', '9', '1°', 'A', 'Valencia Arroyo', 'Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(10, '21783577', '1', '1°', 'A', 'Catalán Moncada', 'Almendra Josefina', 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-05-05 22:18:06', NULL, 'NO'),
(11, '21244517', '7', '1°', 'A', 'Téllez Castillo', 'Maria Jose\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(12, '21785825', '9', '1°', 'A', 'Gutiérrez Pedraza', 'Constanza Almendra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(13, '21670804', '0', '1°', 'A', 'Acuña Pichuante', 'Valentina Skarlett', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-05-09 00:49:51', NULL, 'SI'),
(14, '21681963', '2', '1°', 'A', 'Chamorro Vásquez', 'Javiera Eliana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-05-07 01:57:48', NULL, 'NO'),
(15, '21495151', '7', '1°', 'A', 'Gallardo Valdés', 'Kattalina Isabel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(16, '20791922', '5', '1°', 'A', 'Osores Morales', 'Alondra Irandel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(17, '21787521', '8', '1°', 'A', 'Morales Frías', 'Sofía Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(18, '21510441', '9', '1°', 'A', 'Sáez Morales', 'Victoria Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(19, '21610310', '6', '1°', 'A', 'Tapia González', 'Constanza Aylin\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(20, '21462989', '5', '1°', 'A', 'Velásquez Pino', 'Valentina Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(21, '21636860', '6', '1°', 'A', 'Villacura Villacura', 'Macarena Clara Elisa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(22, '21627111', '4', '1°', 'A', 'Torres Padilla', 'Genesis Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(23, '21802342', '8', '1°', 'A', 'Valdivia Tapia', 'Sonia Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(24, '21767498', '0', '1°', 'A', 'Briones Lizana', 'Stefanie Camila', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2019-05-09 00:51:21', NULL, 'SI'),
(25, '21593005', 'K', '1°', 'A', 'Pergui Román', 'Daniela Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(26, '21575845', '1', '1°', 'A', 'Mondaca Villalobos', 'Yesmarry Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(27, '21525737', '1', '1°', 'B', 'Palma Machuca', 'Valeria Paz Angelina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(28, '100426214', '6', '1°', 'B', 'Chanaga Casadiegos', 'Dariana Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(29, '100436549', '2', '1°', 'B', 'Calderon Acosta', 'Annyelit Celeste\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(30, '21687114', '6', '1°', 'B', 'Mateluna Meza', 'Paula Adela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(31, '21466648', '0', '1°', 'B', 'Donoso Mery', 'Fernanda Pía\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(32, '21708426', '1', '1°', 'B', 'Corrales Romero', 'Karely Samira\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(33, '21257115', '6', '1°', 'B', 'Hernández Vernal', 'Catalina Antonieta\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(34, '21161858', '2', '1°', 'B', 'Toledo Iriarte', 'Scarlet Degiree\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(35, '21749042', '1', '1°', 'B', 'Pérez Pérez', 'Alondra Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(36, '21690190', '8', '1°', 'B', 'Cubillos Cubillos', 'Nayarett Dayane\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(37, '21338928', '9', '1°', 'B', 'Melgarejo Céspedes', 'Leslie Francesca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(38, '21661557', '3', '1°', 'B', 'Castro Castro', 'Chrisna Danae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(39, '25719186', '9', '1°', 'B', 'Velasquez Cuervo', 'Emily Tatiana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(40, '21053908', '5', '1°', 'B', 'Olave Miranda', 'Geraldine Anaís Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(41, '21627686', '8', '1°', 'B', 'Figueroa Copier', 'Constanza Monserrat\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(42, '21531546', '0', '1°', 'B', 'Medina Cartagena', 'Francisca Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(43, '21848795', '5', '1°', 'B', 'Figueroa Martínez', 'Catalina Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(44, '21681344', '8', '1°', 'B', 'Ahumada Zapata', 'Constanza Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(45, '21559266', '9', '1°', 'B', 'Alfaro Bustamante', 'Martina Luz Isidora\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(46, '20932444', 'K', '1°', 'B', 'Díaz Vivanco', 'Viky Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(47, '21723710', '6', '1°', 'B', 'Rodríguez Morales', 'Amelia Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(48, '21245497', '4', '1°', 'B', 'Salvo Castillo', 'Alison Brigitte\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(49, '21244779', 'K', '1°', 'B', 'Mac-Namara Fuentes', 'Antonia Martina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(50, '21511840', '1', '1°', 'B', 'Beltrán Fariña', 'Antonia Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(51, '21745393', '3', '1°', 'B', 'Díaz Chávez', 'Hellen Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(52, '21593821', '2', '1°', 'C', 'Flores Yáñez', 'Valentina Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(53, '21654481', '1', '1°', 'C', 'Madrid Negrete', 'Constanza Rebeca Nathaly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(54, '20293268', '1', '1°', 'C', 'Matamoro Fernández', 'Scarleth Solange\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(55, '21758399', '3', '1°', 'C', 'Lazo Olivera', 'Angelina Krishna\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(56, '21661086', '5', '1°', 'C', 'Ayala Díaz', 'Mery Ann Francisca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(57, '100412143', '7', '1°', 'C', 'Mejia Agudelo', 'Veronica\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(58, '21806956', '8', '1°', 'C', 'Valdebenito Santana', 'Constanza Eileen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(59, '21245596', '2', '1°', 'C', 'Contreras Pardo', 'Francisca Belen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(60, '21647213', '6', '1°', 'C', 'Arenas Arenas', 'Fernanda Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(61, '21831939', '4', '1°', 'C', 'Zúñiga Monasterio', 'Evelyn Michelle\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(62, '21777086', '6', '1°', 'C', 'Laciart Muñoz', 'Verónica Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(63, '21401242', '1', '1°', 'C', 'Prieto Zúñiga', 'Catalina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(64, '21589039', '2', '1°', 'C', 'Muñoz Rivera', 'Kiara Brillit\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(65, '21630597', '3', '1°', 'C', 'Candia Inostroza', 'Ignacia Escarleth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(66, '21489603', '6', '1°', 'C', 'Ruiz Alarcón', 'Rocío Scarlett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(67, '20889361', '0', '1°', 'C', 'Alarcón Olguín', 'Carolina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(68, '21297049', '2', '1°', 'C', 'Escobedo Fernández', 'Yulianna Catalina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(69, '20932490', '3', '1°', 'C', 'Vilo Gutiérrez', 'Polet Ailin\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(70, '21825510', '8', '1°', 'C', 'Quezada Bustos', 'Camila Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(71, '21723710', '6', '1°', 'C', 'Rodríguez Morales', 'Amelia Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(72, '21669314', '0', '1°', 'C', 'Obreque Ortiz', 'Millaray Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(73, '21551457', '9', '1°', 'C', 'Cañete Gandara', 'Javiera Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(74, '21256043', 'K', '1°', 'C', 'Montoya Prado', 'Isidora Josefa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(75, '100379382', '2', '1°', 'D', 'Hidalgo Barboza', 'Edelmari Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(76, '21339284', '0', '1°', 'D', 'González Lucero', 'Nicole Scarlet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(77, '21641179', 'K', '1°', 'D', 'Muñoz Leal', 'Francisca Isabella\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(78, '21735305', 'K', '1°', 'D', 'Aguilar Burgos', 'Fernanda Angelly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(79, '20418445', '3', '1°', 'D', 'Valdivia Matus', 'Scarlett Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(80, '21589337', '5', '1°', 'D', 'Torres Carvajal', 'Priscila\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(81, '21243441', '8', '1°', 'D', 'Roa Droguett', 'Katherine Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(82, '21514200', '0', '1°', 'D', 'Mendoza Bastías', 'Junesi Danae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(83, '21777086', '6', '1°', 'D', 'Laciart Muñoz', 'Verónica Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(84, '21694184', '5', '1°', 'D', 'Pino Díaz', 'Amparo Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(85, '21737660', '2', '1°', 'D', 'Ramírez Duery', 'Valentina Escarlett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(86, '21779782', '9', '1°', 'D', 'Navarrete Campos', 'Martina Virginia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(87, '21240702', 'K', '1°', 'D', 'Muza Andrades', 'Manuela Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(88, '21686673', '8', '1°', 'D', 'Rojas Almazán', 'Camila Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(89, '20561709', '4', '1°', 'D', 'Gálvez Pozo', 'Yusari Yislein\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(90, '24656838', '3', '1°', 'D', 'Torrez Toledo', 'Noelia Del Rosario\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(91, '21296976', '1', '1°', 'D', 'Castillo Briones', 'Astrid Dayana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(92, '100412548', '3', '1°', 'D', 'Lopez Melendez', 'Alianny Betzabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(93, '21761909', '2', '1°', 'D', 'Silva Rodríguez', 'Valentina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(94, '25373743', '3', '1°', 'D', 'Edmond ', 'Sabrina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(95, '21787808', 'K', '1°', 'D', 'Monilla Gutiérrez', 'Debora Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(96, '21761887', '8', '1°', 'D', 'Silva Rodríguez', 'Sofía Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(97, '21347053', '1', '1°', 'D', 'Díaz Lamilla', 'Vanessa Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(98, '21843231', 'K', '1°', 'D', 'Cáceres Rojas', 'Monserrat Antonella\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(99, '21679339', '0', '1°', 'D', 'Hidalgo Valdebenito', 'Sugehy Paloma Almendra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(100, '21622992', '4', '1°', 'D', 'Mellado Gómez', 'Millaray Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(101, '21588622', '0', '1°', 'D', 'Pérez Zambrano', 'Valentina Estefanía\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(102, '21674823', '9', '1°', 'D', 'Ibarra Carreño', 'Marisol Sabrina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(103, '21725655', '0', '1°', 'E', 'Palacios Palacios', 'Violeta\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(104, '100430533', '3', '1°', 'E', 'Requejo Sinisterra', 'Zulay Dayana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(105, '21810629', '3', '1°', 'E', 'Perez Tapia', 'Alondra Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(106, '21395710', '4', '1°', 'E', 'Muñoz Ruiz', 'Noelia Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(107, '21803568', 'K', '1°', 'E', 'Banda Fuenzalida', 'Lorena Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(108, '21063778', '8', '1°', 'E', 'Gavilán Gavilán', 'Dominique Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(109, '21715901', '6', '1°', 'E', 'Cenas Saucedo', 'Sophia Colomba\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(110, '21497536', 'K', '1°', 'E', 'González Robledo', 'Camila Alejandra Del Pilar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(111, '21414557', 'K', '1°', 'E', 'Uribe Ramírez', 'Ainara Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(112, '21337889', '9', '1°', 'E', 'Tapia Zúñiga', 'Constanza Almendra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(113, '21841718', '3', '1°', 'E', 'Mella Moya', 'Paulina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(114, '21404925', '2', '1°', 'E', 'Vásquez Leiva', 'Camila Lilian\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(115, '21463396', '5', '1°', 'E', 'Martínez Rocha', 'Carmen Gloria\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(116, '21831939', '4', '1°', 'E', 'Zúñiga Monasterio', 'Evelyn Michelle\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(117, '21554393', '5', '1°', 'E', 'Escamilla Soto', 'Valentina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(118, '21375420', '3', '1°', 'E', 'Orellana Valenzuela', 'Damaris Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(119, '21703761', '1', '1°', 'E', 'Pinilla León', 'Rachel Valeria\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(120, '21301228', '2', '1°', 'E', 'Godoy Guzmán', 'Belén Consuelo\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(121, '21700535', '3', '1°', 'E', 'Leiva Berríos', 'Ignacia Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(122, '21798121', '2', '1°', 'E', 'Romero Berríos', 'Constanza Isidora\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(123, '21371966', '1', '1°', 'E', 'Pastene Peñaloza', 'Karla Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(124, '21742109', '8', '1°', 'E', 'Baez Soto', 'Pía Francisca Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(125, '26395595', '1', '1°', 'E', 'Sulbaran Paredes', 'Albany Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(126, '21401526', '9', '1°', 'E', 'Bueno Nieto', 'Renata Paulina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(127, '21806757', '3', '1°', 'E', 'Benavente Ramírez', 'Monserrat Amarhama\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(128, '21269780', 'K', '1°', 'E', 'Caro Bustamante', 'Monserrat Valentina Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(129, '21258695', '1', '1°', 'F', 'Soto Carreño', 'Daniela Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(130, '21591393', '7', '1°', 'F', 'López Praihuán', 'Diyislee Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(131, '21601367', '0', '1°', 'F', 'Oyarzún Vidal', 'Scarlett De Las Nieves\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(132, '21340880', '1', '1°', 'F', 'Tobar Pérez', 'Javiera Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(133, '21454923', '9', '1°', 'F', 'Vallejo González', 'Katterin Patricia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(134, '21227027', 'K', '1°', 'F', 'Carrasco Valenzuela', 'Grace Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(135, '21297263', '0', '1°', 'F', 'Meneses Bellafont', 'Fernanda Rayen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(136, '21636916', '5', '1°', 'F', 'Gutiérrez Jara', 'Constanza Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(137, '21620376', '3', '1°', 'F', 'Garrido Meneses', 'Enyger Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(138, '21682957', '3', '1°', 'F', 'González Molina', 'Francia Polet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(139, '21844091', '6', '1°', 'F', 'Millalén Álvarez', 'Isabel Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(140, '21201407', '9', '1°', 'F', 'Soto Lagos', 'Danae Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(141, '21494946', '6', '1°', 'F', 'Parra Barría', 'Olga Morgana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(142, '21576488', '5', '1°', 'F', 'Contreras Urrutia', 'Elizabeth Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(143, '21643269', 'K', '1°', 'F', 'Matamala Cuevas', 'Noelhia Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(144, '21584253', '3', '1°', 'F', 'Mejías Ferrada', 'Fernanda Marcela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(145, '20932354', '0', '1°', 'F', 'Manzor Mosca', 'Yadhira Ayelen Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(146, '21757590', '7', '1°', 'F', 'Romero Tapia', 'Cristal Dayana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(147, '21801019', '9', '1°', 'F', 'Trejo Maltez', 'Constanza Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(148, '24268136', '3', '1°', 'F', 'Rosales Reyes', 'Rommy Rosmery\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(149, '21569107', '1', '1°', 'F', 'Bravo Aguero', 'Lahuryn Stephanie\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(150, '26660745', '8', '1°', 'F', 'Moran Azuaje', 'Yorgelis Patricia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(151, '21281661', '2', '1°', 'F', 'Poblete Duarte', 'Daniela Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(152, '20931956', 'K', '1°', 'F', 'Carrasco Ortiz', 'Catalina Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(153, '21551590', '7', '1°', 'F', 'Osorio Hidalgo', 'Camila Fernanda Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(154, '21552653', '4', '1°', 'F', 'Díaz Ibacache', 'Paloma Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(155, '25380257', 'K', '1°', 'F', 'Escobar Parra', 'Mariana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(156, '21095548', '8', '2°', 'A', 'Subercaseaux Marcell', 'Salomé Simone\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(157, '21570370', '3', '2°', 'A', 'Alarcón Peña', 'Constanza Marcela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(158, '21075178', '5', '2°', 'A', 'Valle Tapia', 'Monserrat Aranzazu\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(159, '21596654', '2', '2°', 'A', 'González León', 'Valeria Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(160, '20974674', '3', '2°', 'A', 'Vidal Castillo', 'Constanza Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(161, '26115508', '7', '2°', 'A', 'Menendez Silva', 'Melanie Lisbeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(162, '20793121', '7', '2°', 'A', 'Catalán Moncada', 'Kala Marioly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(163, '20932375', '3', '2°', 'A', 'Aliaga Aliaga', 'Kathya Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(164, '20835950', '9', '2°', 'A', 'Gatica González', 'Javiera Del Pilar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(165, '21601805', '2', '2°', 'A', 'Díaz López', 'Katia Paola\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(166, '21094381', '1', '2°', 'A', 'Saldías Fekmann', 'Allyson Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(167, '21566941', '6', '2°', 'A', 'Flores Liendo', 'Dafnne Jael Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(168, '21647655', '7', '2°', 'A', 'Saldias Fekmann', 'Javiera Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(169, '20670130', '7', '2°', 'A', 'Donoso Rubilar', 'Valentina Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(170, '21254332', '2', '2°', 'A', 'Cáceres Sepúlveda', 'Rosa María\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(171, '21354073', '4', '2°', 'A', 'Jeldres Jara', 'Karla Rocío\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(172, '21389423', '4', '2°', 'A', 'Aniñir Mosquera', 'Tiare Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(173, '21499690', '1', '2°', 'A', 'Godoy Fernández', 'María José\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(174, '21528201', '5', '2°', 'A', 'Contreras Cárdenas', 'Fernanda Scarlette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(175, '21565096', '0', '2°', 'A', 'García Escobedo', 'Jovanka\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(176, '21007320', '5', '2°', 'A', 'Osores Muñoz', 'Melissa Valeria\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(177, '21531262', '3', '2°', 'A', 'Torres Fernández', 'Ninoshka Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(178, '20789428', '1', '2°', 'A', 'Gutiérrez Marambio', 'Bárbara Aracelli\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(179, '21327047', '8', '2°', 'A', 'Jara Valdés', 'Elisa Milca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(180, '21465427', 'K', '2°', 'A', 'Cubillos Sandoval', 'Paz Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(181, '20840258', '7', '2°', 'B', 'Céspedes Vergara', 'Millaray Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(182, '21373976', 'K', '2°', 'B', 'Morales Concha', 'Romina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(183, '100430525', '2', '2°', 'B', 'Requejo Sinisterra', 'Yari Blasneydi\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(184, '21137692', '9', '2°', 'B', 'Pérez Basualdo', 'Francisca Jesús\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(185, '21278635', '7', '2°', 'B', 'Andaur Pozo', 'María José Berenice\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(186, '21562210', 'K', '2°', 'B', 'Cabello Olmedo', 'Antonia Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(187, '100316471', 'K', '2°', 'B', 'Pierre-Louis ', 'Claire Lidie Nephtalie\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(188, '21244862', '1', '2°', 'B', 'Cid Salinas', 'Catherin Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(189, '21315526', '1', '2°', 'B', 'Laciart Muñoz', 'Constanza París\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(190, '21239184', '0', '2°', 'B', 'Silva Montecino', 'Valentina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(191, '21378387', '4', '2°', 'B', 'Araya Olea', 'Javiera Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(192, '21005693', '9', '2°', 'B', 'Maturana Rodríguez', 'Alexandra De Las Mercedes\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(193, '21202723', '5', '2°', 'B', 'Quilodrán Reyes', 'Sofía Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(194, '21062562', '3', '2°', 'B', 'Valenzuela Moreno', 'Daniela Salomé\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(195, '20936337', '2', '2°', 'B', 'Uribe Bucarey', 'Patricia Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(196, '21494455', '3', '2°', 'B', 'Figueroa Toledo', 'Fernanda Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(197, '21439231', '3', '2°', 'B', 'Araya Riquelme', 'Javiera Stefania\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(198, '24656837', '5', '2°', 'B', 'Torrez Toledo', 'Luzmila Elizabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(199, '20932252', '8', '2°', 'B', 'Ocaranza Torres', 'Bahitiare Almendra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(200, '100355423', '2', '2°', 'B', 'Tambo Velasquez', 'Katherine Dubraska\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(201, '100432452', '4', '2°', 'B', 'Lam Acevedo', 'Lin Xiu Fung\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(202, '100429962', '7', '2°', 'B', 'Bello Rodriguez', 'Emileanny Del Valle\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(203, '100451240', '1', '2°', 'B', 'Patiño Barrios', 'Nikhol Dahaianne\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(204, '21242959', '7', '2°', 'B', 'González Quilaleo', 'Constanza Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(205, '21056427', '6', '2°', 'B', 'Moreno Novoa', 'Aracelly Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(206, '21519522', '8', '2°', 'B', 'San Martín Lepín', 'Ámbar Dannae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(207, '21471631', '3', '2°', 'C', 'Ávila Villagra', 'Denisse Catalina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(208, '21371176', '8', '2°', 'C', 'Gallardo Ruiz', 'Angélica Constance\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(209, '23753297', 'K', '2°', 'C', 'Quispe Villanueva', 'Maryory Mayly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(210, '21498062', '2', '2°', 'C', 'Inostroza Bosque', 'Montserrat De Los Angeles\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(211, '21272068', '2', '2°', 'C', 'Soto Larraín', 'Antonia Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(212, '21418062', '6', '2°', 'C', 'Flores Méndez', 'Denisse Ignacia Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(213, '21244820', '6', '2°', 'C', 'Muñoz Pinto', 'Monserrat Alejandra Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(214, '21575610', '6', '2°', 'C', 'Nuñez Mellao', 'Nancy Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(215, '20931069', '4', '2°', 'C', 'Zapata Fernández', 'Violeta Anabel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(216, '21516212', '5', '2°', 'C', 'Delgado Torroja', 'Xiomara Annaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(217, '20669376', '2', '2°', 'C', 'Montero Marín', 'Moleimi Tiare\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(218, '20616092', '6', '2°', 'C', 'González Campos', 'Yariska Scarlet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(219, '21283860', '8', '2°', 'C', 'Cubillos Torres', 'Anyel Cristal\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(220, '21314720', 'K', '2°', 'C', 'Wienberg Muñoz', 'Lissette Annais\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(221, '21074298', '0', '2°', 'C', 'Elizondo Candia', 'Isis Beatriz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(222, '20614899', '3', '2°', 'C', 'Vidal Vergara', 'Scarllehtt Dhayam\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(223, '20614978', '7', '2°', 'C', 'Ortiz Gómez', 'Valentina Nerehy\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(224, '20993525', '2', '2°', 'C', 'Rojas Benítez', 'Constanza Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(225, '21244355', '7', '2°', 'C', 'Briones Maureira', 'Lisette Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(226, '21406301', '8', '2°', 'C', 'González Rivas', 'Catalina Arantxa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(227, '21242677', '6', '2°', 'C', 'Villarroel Bahamondes', 'Ashly Keytel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(228, '21325323', '9', '2°', 'C', 'Espinoza Pereira', 'Macarena Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(229, '21005993', '8', '2°', 'C', 'Quinteros Vásquez', 'Tamara Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(230, '21382046', 'K', '2°', 'C', 'Farías Castro', 'Caroline Guillermina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(231, '21565175', '4', '2°', 'C', 'Espinoza Navarro', 'Fernanda Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(232, '20690941', '2', '2°', 'D', 'Fuenzalida Paredes', 'Yarixa Bonnie\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(233, '21380000', '0', '2°', 'D', 'Palma Velásquez', 'Javiera Betzabet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(234, '21428230', '5', '2°', 'D', 'Contreras Mellado', 'Carla Carolina Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(235, '21451760', '4', '2°', 'D', 'Bustos Aravena', 'Javiera Ivania\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(236, '20615563', '9', '2°', 'D', 'Sánchez Herdocio', 'Ninoska Araceli\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(237, '21556753', '2', '2°', 'D', 'Cárcamo González', 'Celeste Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(238, '100422346', '9', '2°', 'D', 'Brito Cabello', 'Isis Paola\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(239, '20961599', '1', '2°', 'D', 'Muñoz Gómez', 'Daniela Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(240, '21457187', '0', '2°', 'D', 'Munzón Gulppi', 'Mey Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(241, '21460420', '5', '2°', 'D', 'Garrido Díaz', 'Fernanda Noemí\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(242, '21541491', '4', '2°', 'D', 'Bravo Morandé', 'Mackarena Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(243, '21333931', '1', '2°', 'D', 'Merino Leiva', 'Constanza Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(244, '21577108', '3', '2°', 'D', 'Bravo Cariz', 'Marisol Massiel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(245, '21493959', '2', '2°', 'D', 'Gaete Vásquez', 'Sasha Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(246, '21288557', '6', '2°', 'D', 'Améstica Cid', 'Monserrat Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(247, '21129817', '0', '2°', 'D', 'Carrasco Andrade', 'Paulette Carolina Saray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(248, '21335103', '6', '2°', 'D', 'Vergara González', 'Belén De Los Angeles\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(249, '20952393', '0', '2°', 'D', 'Galaz Ramos', 'Tiare Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(250, '20450078', '9', '2°', 'D', 'Araya Farías', 'Priscilla Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(251, '21389336', 'K', '2°', 'D', 'Arancibia Zepeda', 'María Isabel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(252, '21164744', '2', '2°', 'D', 'Gutiérrez Plaza', 'Brenda Moira Maite\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(253, '21448760', '8', '2°', 'D', 'Herrera Aguilera', 'Esperanza Eliana De Jesus\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(254, '21055266', '9', '2°', 'D', 'Sepúlveda Sáez', 'Jasmín Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(255, '21417904', '0', '2°', 'D', 'Lobos Fuentes', 'Krishna Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(256, '21520745', '5', '2°', 'D', 'Marivil Urrutia', 'Valentina Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(257, '20931010', '4', '2°', 'D', 'Pereira Marivil', 'Constanza Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(258, '21009345', '1', '2°', 'E', 'Henríquez Henríquez', 'Millaray Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(259, '21161371', '8', '2°', 'E', 'Moraga Quintana', 'Yasna Estefani Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(260, '21479664', '3', '2°', 'E', 'Contreras Fernández', 'Valentina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(261, '21161359', '9', '2°', 'E', 'Moraga Quintana', 'Katerine Alejandra Estela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(262, '21501776', '1', '2°', 'E', 'Avalos Ávalos', 'Mónica Estrella\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(263, '20418867', 'K', '2°', 'E', 'Pérez Lunas', 'Constanza Angélica\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(264, '21154756', '1', '2°', 'E', 'Pérez Aceituno', 'Fernanda Sabrina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(265, '24005846', '4', '2°', 'E', 'Alomia Portocarrero', 'Natali\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(266, '21566477', '5', '2°', 'E', 'Valdebenito Peñaloza', 'Tatiana Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(267, '21132613', '1', '2°', 'E', 'Rojas Hernández', 'Loreto Adriana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(268, '21601729', '3', '2°', 'E', 'Sanchez Morales', 'Melanie Yarexla\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(269, '21406112', '0', '2°', 'E', 'Aedo González', 'Tamara Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(270, '21503979', 'K', '2°', 'E', 'Bedonni Iubini', 'Daniela Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(271, '21251101', '3', '2°', 'E', 'Carrasco Olivares', 'Martina Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(272, '22156276', '3', '2°', 'E', 'Tumbajulca Ybañez', 'Allison Dayana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(273, '21197822', '8', '2°', 'E', 'Mejías Cárdenas', 'Rocío Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(274, '21219301', '1', '2°', 'E', 'Barrios Sánchez', 'Catalina Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(275, '21296894', '3', '2°', 'E', 'Moraga Palma', 'Danae Catalina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(276, '21294781', '4', '2°', 'E', 'Pacheco Foncea', 'Mariana Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(277, '20930713', '8', '2°', 'E', 'González Quintana', 'Constanza Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(278, '21451818', 'K', '2°', 'E', 'Villarroel Dinamarca', 'Priscila Anais\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(279, '20932076', '2', '2°', 'E', 'Torres López', 'Damary Danae Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(280, '21242972', '4', '2°', 'E', 'Salas Molina', 'Shrisna Dominique\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(281, '21387223', '0', '2°', 'E', 'Fuentes Leyton', 'Sofía Aleli\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(282, '21056228', '1', '2°', 'E', 'Méndez Zambrano', 'Francisca Marion\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(283, '21244008', '6', '2°', 'E', 'Tropa Donoso', 'Escarlet Adelaida\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(284, '21262929', '4', '2°', 'E', 'Castillo Villalobos', 'María José\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(285, '21098432', '1', '2°', 'F', 'Traipe Acuña', 'Micaela Cadiel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(286, '100372929', '6', '2°', 'F', 'Mogollon Chacon', 'Maria Jose\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(287, '21063761', '3', '2°', 'F', 'Gavilán Gavilán', 'Ailyn Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(288, '21079638', 'K', '2°', 'F', 'Estrada Orellana', 'Fernanda Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(289, '20846905', '3', '2°', 'F', 'Zapata Sáez', 'Tiare Deyanira\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(290, '21278635', '7', '2°', 'F', 'Andaur Pozo', 'María José Berenice\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(291, '21473804', 'K', '2°', 'F', 'Meneses Meneses', 'Sigrid Vaitiare\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(292, '21392343', '9', '2°', 'F', 'Díaz Duque', 'Valentina Citraly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(293, '21054958', '7', '2°', 'F', 'Aragón Díaz', 'Alexandra Betzabet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(294, '21418563', '6', '2°', 'F', 'Muñoz Martínez', 'Millaray Anette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(295, '21054805', 'K', '2°', 'F', 'Cisternas Gatica', 'Ariadna Briseida\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(296, '21595369', '6', '2°', 'F', 'López Escobar', 'Aileen Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(297, '21259006', '1', '2°', 'F', 'Placencio Vargas', 'Sarai Tamar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(298, '21513154', '8', '2°', 'F', 'Contreras Toledo', 'Constanza Soledad\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(299, '21506543', 'K', '2°', 'F', 'Fernández Vicharra', 'Skarlet Nicole\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(300, '21416113', '3', '2°', 'F', 'Orellana Arce', 'Valentina Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(301, '20974134', '2', '2°', 'F', 'Carvajal Guzmán', 'Sofía Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(302, '21503434', '8', '2°', 'F', 'Díaz González', 'Luna Almendra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(303, '21148167', '6', '2°', 'F', 'Palma Munita', 'Ivania Javiera\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(304, '21349598', '4', '2°', 'F', 'Cortés Leiva', 'Yanina Elizabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(305, '21200649', '1', '2°', 'F', 'Raigan Roa', 'Lidia Tamara Trinidad\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(306, '21347062', '0', '2°', 'F', 'Díaz Lamilla', 'Fernanda Elizabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(307, '21141141', '4', '2°', 'F', 'Díaz Silva', 'Katherine Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(308, '21468968', '5', '2°', 'F', 'Castro Pino', 'Claudia Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(309, '21327020', '6', '2°', 'F', 'Jara Valdés', 'Sarai Blanca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(310, '21158369', 'K', '2°', 'F', 'Santana Gacitúa', 'Catalina Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(311, '20848193', '2', '3°', 'F', 'Navarro Avendaño', 'Almendra Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(312, '23679867', '4', '3°', 'F', 'Farías Jorquera', 'Jovanka Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(313, '20669568', '4', '3°', 'F', 'Vega González', 'Verena Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(314, '21135233', '7', '3°', 'F', 'González León', 'Melissa Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(315, '21123974', '3', '3°', 'F', 'Belmar Reyes', 'Belén Paloma\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(316, '21178735', 'K', '3°', 'F', 'Contreras Torres', 'Krishna Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(317, '21293549', '2', '3°', 'F', 'López Huenchulao', 'Catalina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(318, '21195114', '1', '3°', 'F', 'Catalán Gaete', 'Jacqueline Constanza Nicol\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(319, '21240939', '1', '3°', 'F', 'Celis Celis', 'Raquel Nicole\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(320, '20814285', '2', '3°', 'F', 'Rocha Martínez', 'Catalina Chariel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(321, '21043215', '9', '3°', 'F', 'Ovalle Canelo', 'Siany Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(322, '20794226', 'K', '3°', 'F', 'Riquelme Ampuero', 'Ivy Annais\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(323, '20574412', '6', '3°', 'F', 'Cáceres Sepúlveda', 'Ana Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(324, '20574034', '1', '3°', 'F', 'Valenzuela Marchant', 'Allison Danae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(325, '21093654', '8', '3°', 'F', 'González Contreras', 'Paz Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(326, '21297011', '5', '3°', 'F', 'Duarte Marín', 'Michelle Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(327, '21297012', '3', '3°', 'F', 'Duarte Marín', 'Javiera Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(328, '21158408', '4', '3°', 'F', 'Martínez Álvarez', 'Maira Ninoska\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(329, '20922492', '5', '3°', 'F', 'Cabrera Segovia', 'Micaela Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(330, '21122430', '4', '3°', 'F', 'Moya Ortega', 'Constanza Vaitiare\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(331, '21280531', '9', '3°', 'F', 'González Yáñez', 'Yesebel Francisca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(332, '20574120', '8', '3°', 'F', 'Rojas Aguirre', 'Patricia Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(333, '100426795', '4', '3°', 'F', 'Fonseca Saenz', 'Carol Lisseth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(334, '21241150', '7', '3°', 'F', 'Pérez Rojas', 'Camila Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(335, '21055644', '3', '3°', 'F', 'Fuenzalida Urrutia', 'Soraya Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(336, '20559811', '1', '3°', 'F', 'Reyes Hernández', 'Nadia Domegnica\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(337, '21086839', '9', '3°', 'F', 'Torres Bustillos', 'Aracelli Solange\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(338, '21126077', '7', '3°', 'F', 'Rojas Medel', 'Teresa De Jesús\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(339, '20975327', '8', '3°', 'F', 'Medina Pinilla', 'Macarena Del Pilar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(340, '21127141', '8', '3°', 'F', 'Caroca Sánchez', 'Tiare Macarena\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(341, '20531912', '3', '4°', 'F', 'Borlando Olea', 'Javiera Antonia Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(342, '20615935', '9', '4°', 'F', 'Peña Nieto', 'Melanie Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(343, '20752655', 'K', '4°', 'F', 'Guajardo Bruna', 'Isidora Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(344, '20402087', '6', '4°', 'F', 'Quero Jaques', 'Kimberli Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(345, '25193516', '5', '4°', 'F', 'Duran ', 'Rosangel Mercedes\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(346, '26497577', '8', '4°', 'F', 'Hernandez Villaroel', 'Karen Hailyn\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(347, '20829451', '2', '4°', 'F', 'Barrientos Arce', 'Alen Violeta Margarita\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(348, '20615894', '8', '4°', 'F', 'Torres Tapia', 'Catalina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(349, '20837440', '0', '4°', 'F', 'Chiappa Villagrán', 'Denise Juseff\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(350, '20778304', '8', '4°', 'F', 'Stephan Díaz', 'Renata Scarlett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(351, '20648194', '3', '4°', 'F', 'Madrid Basualto', 'Rocío Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(352, '20574821', '0', '4°', 'F', 'Arenas Peña', 'Constanza De Las Mercedes\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(353, '21028179', '7', '4°', 'F', 'Pedreros Maldonado', 'Yasna Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(354, '100393011', '0', '4°', 'F', 'Medina Sandoval', 'Keyla Damaris\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(355, '20126018', '3', '4°', 'F', 'Fernández Ravest', 'Jennifer Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(356, '20017779', '7', '4°', 'F', 'Avendaño Fierro', 'María Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(357, '21038109', '0', '4°', 'F', 'Sánchez Alvial', 'Tamara Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(358, '20667917', '4', '4°', 'F', 'Ossandón Pino', 'Ruth Elizabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(359, '20680170', '0', '4°', 'F', 'Montecinos Tirado', 'Francisca Amaranta Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(360, '21037633', 'K', '4°', 'F', 'Ramírez Rodríguez', 'Belén Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(361, '21064093', '2', '4°', 'G', 'Ávalos Ávalos', 'Camila Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(362, '20976587', 'K', '4°', 'G', 'Uribe Ramírez', 'Ayelen Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(363, '20953772', '9', '4°', 'G', 'Romero Rubio', 'Joyce Mariel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(364, '20814776', '5', '4°', 'G', 'Villegas Vergara', 'Emily Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(365, '20845450', '1', '4°', 'G', 'López Riffo', 'Tihare Tamar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(366, '20931052', 'K', '4°', 'G', 'Villanueva Suárez', 'Javiera Macarena\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(367, '20909920', '9', '4°', 'G', 'Araya Durán', 'María Eduarda Alfonsina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(368, '20973002', '2', '4°', 'G', 'Laity Alcaide', 'Annais Millalen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(369, '20159576', '2', '4°', 'G', 'Villalobos Salgado', 'Sofía Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(370, '20998251', 'K', '4°', 'G', 'Figueroa Martínez', 'Muriel Betzabet Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(371, '20819417', '8', '4°', 'G', 'Campos Collao', 'Constanza Daniela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(372, '20950993', '8', '4°', 'G', 'Madariaga Espinoza', 'Denisse Alexis Rose-Marie\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(373, '20552065', '1', '4°', 'G', 'Ogaz Tapia', 'Thiare Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(374, '20931106', '2', '4°', 'G', 'Aguilar Vera', 'Constanza Dominique\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(375, '20815171', '1', '4°', 'G', 'Barría Oñate', 'Paulina Soledad\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(376, '20791044', '9', '4°', 'G', 'Astorga Astorga', 'Milenca Beatriz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(377, '20404358', '2', '4°', 'G', 'Peña Molina', 'Alejandra Ivette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(378, '20824952', '5', '4°', 'G', 'Cona Ramírez', 'Yael Hannair\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(379, '20784211', '7', '4°', 'G', 'Espinoza Vargas', 'Javiera Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(380, '20668410', '0', '4°', 'G', 'Monjes Gallardo', 'Anita María\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(381, '20668957', '9', '4°', 'G', 'Soto Opazo', 'Pamela Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(382, '20431628', '7', '4°', 'G', 'Meza Becerra', 'Javiera Isidora\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(383, '20805884', '3', '3°', 'A', 'Páez Sotomayor', 'Yarixa Macarena\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(384, '20756376', '5', '3°', 'A', 'Órdenes Trejo', 'Tamara Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(385, '100389508', '0', '3°', 'A', 'Medina Arenas', 'Laura Vanessa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(386, '20981941', '4', '3°', 'A', 'Velásquez Valenzuela', 'Isidora Helena Gemita\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(387, '21295612', '0', '3°', 'A', 'Alfaro Acuña', 'Javiera Angelina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(388, '20713914', '9', '3°', 'A', 'Herrera Yáñez', 'Muriel Nayeli\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(389, '20762318', '0', '3°', 'A', 'Chávez Guajardo', 'Krishna Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(390, '20913839', '5', '3°', 'A', 'Cortés Soto', 'Danitza Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(391, '21055425', '4', '3°', 'A', 'González Zelaya', 'Jannis Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(392, '20998616', '7', '3°', 'A', 'Fajardo Barra', 'Paula Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(393, '20419740', '7', '3°', 'A', 'Segura Pérez', 'María Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(394, '21074314', '6', '3°', 'A', 'Martínez Cadenas', 'Javiera Annais\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(395, '20792947', '6', '3°', 'A', 'Reuca Tobar', 'Maciel Esmeralda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(396, '21213108', '3', '3°', 'A', 'Mellado Machuca', 'Javiera Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(397, '20616117', '5', '3°', 'A', 'González Sepúlveda', 'Jazmín Soledad\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(398, '20945972', '8', '3°', 'A', 'Santander Albornoz', 'Muriel Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(399, '20420775', '5', '3°', 'A', 'Didier Sobarzo', 'Hasley Sasha\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(400, '21079515', '4', '3°', 'A', 'Melipillán Iturra', 'Monserrat Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(401, '20790048', '6', '3°', 'A', 'Prieto Abarca', 'Michelle Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(402, '21151140', '0', '3°', 'A', 'Reyes Sereño', 'Michelle Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(403, '20790101', '6', '3°', 'A', 'Sierra Rubilar', 'Brenda Paola\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(404, '20653718', '3', '3°', 'A', 'Chandía Águila', 'Kyara Scarlette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(405, '21095596', '8', '3°', 'A', 'Navarrete Serrano', 'Alanis Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(406, '25468341', '8', '3°', 'A', 'Alfaro Cruzado', 'Noreylla Risith\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(407, '21225212', '3', '3°', 'A', 'Holzapfel Serrano', 'Karla Bat-Seba\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(408, '26390948', '8', '3°', 'A', 'Cardenas Del Barco', 'Odalys Priscila\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(409, '21088936', '1', '3°', 'A', 'Sepúlveda Pazmiño', 'Catalina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(410, '20616188', '4', '3°', 'A', 'Lorca López', 'Yeimmy Denisse\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(411, '20813686', '0', '3°', 'A', 'Cabrera Lagos', 'Constanza Estefanía\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(412, '20667583', '7', '3°', 'A', 'Chamblas Valenzuela', 'Edith Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO');
INSERT INTO `alumnas` (`id`, `rut`, `digito`, `curso`, `letra`, `apellidos`, `nombres`, `d_or`, `d_psic`, `d_vsoc`, `d_cesc`, `d_egest`, `d_ter`, `d_edif`, `condicion`, `created_at`, `updated_at`, `fecharetiro`, `atendido`) VALUES
(413, '20405413', '4', '3°', 'A', 'Millallanco López', 'Darlyn Tamara\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(414, '20596548', '3', '3°', 'A', 'Pardo Valeria', 'Daniela Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(415, '21238576', 'K', '3°', 'A', 'Meza Escobar', 'Samira Scarlet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(416, '21026209', '1', '3°', 'A', 'Garay Aguilera', 'Samanta Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(417, '20614809', '8', '3°', 'A', 'Ibarra Reyes', 'Constanza Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(418, '21280098', '8', '3°', 'B', 'Gutiérrez González', 'Ámbar Sylvia Victoria\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(419, '21054108', 'K', '3°', 'B', 'Peña Celis', 'Camila Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(420, '20816452', 'K', '3°', 'B', 'Tenorio Tapia', 'Vanya Ninoska\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(421, '20991983', '4', '3°', 'B', 'Rosales Retamales', 'Nathalia Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(422, '20881767', '1', '3°', 'B', 'Parraguez Campos', 'Daniela Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(423, '21160640', '1', '3°', 'B', 'Laurel Cabezas', 'Tamara Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(424, '20931024', '4', '3°', 'B', 'Basaure Carreño', 'Jessebelle Issie Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(425, '20815866', 'K', '3°', 'B', 'Fuentes Vega', 'Yanis Catalina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(426, '20576734', '7', '3°', 'B', 'Valdés Azócar', 'Daniela Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(427, '21297130', '8', '3°', 'B', 'Cabello Jiménez', 'Ana Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(428, '20793343', '0', '3°', 'B', 'Castillo Vega', 'Millaray Venecia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(429, '21055386', 'K', '3°', 'B', 'Escobar Ruiz', 'Lindsay Beatriz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(430, '20670314', '8', '3°', 'B', 'Silva González', 'Krishna Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(431, '21157509', '3', '3°', 'B', 'Fernández Albornoz', 'Romina Scarleth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(432, '20794024', '0', '3°', 'B', 'Córdova Ramírez', 'Michell Aylin\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(433, '21155982', '9', '3°', 'B', 'Burgos Brown', 'Camila Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(434, '21055447', '5', '3°', 'B', 'Bastías Gatica', 'Dania Isidora\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(435, '21038508', '8', '3°', 'B', 'Rivas Atenas', 'Tiare Abigail\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(436, '19846050', '8', '3°', 'B', 'Ibarra Contreras', 'Victoria Artemisa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(437, '20762131', '5', '3°', 'B', 'Rivera Osses', 'Javiera Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(438, '20672021', '2', '3°', 'B', 'Nieto Soto', 'Damaris Solange\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(439, '20966571', '9', '3°', 'B', 'Quiroz Ramírez', 'Millaray Camila\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(440, '20954648', '5', '3°', 'B', 'Silva Ibáñez', 'Vannesa Elizabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(441, '20932537', '3', '3°', 'B', 'Correa Venegas', 'Damaris Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(442, '21188475', '4', '3°', 'B', 'Riesco Muñoz', 'Gianina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(443, '21193392', '5', '3°', 'B', 'Cortés Carrillo', 'Genesis Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(444, '20668382', '1', '3°', 'B', 'Agurto Cerda', 'Isabel Cristina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(445, '20592497', '3', '3°', 'B', 'Palacios Muñoz', 'Paloma Alen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(446, '20379703', '6', '3°', 'B', 'Mayorga Carrillo', 'Lili Marlen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(447, '25790620', '5', '3°', 'B', 'Moran ', 'Sofia Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(448, '20920470', '3', '3°', 'B', 'Núñez Trujillo', 'Francesca Alondra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(449, '20575736', '8', '3°', 'B', 'Loyola Córdova', 'Caroline Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(450, '20976802', 'K', '3°', 'B', 'Zenteno Soto', 'Ignacia Paola\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(451, '20988637', '5', '3°', 'B', 'Huanqui Bastías', 'Eugenia Carolina Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(452, '21191332', '0', '3°', 'B', 'Bravo Valenzuela', 'Belén Esperanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(453, '20921869', '0', '3°', 'C', 'Pacheco Yáñez', 'Jacqueline Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(454, '21252225', '2', '3°', 'C', 'Ossa Cortés', 'Rahien Amaru\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(455, '20615713', '5', '3°', 'C', 'Riquelme Zapata', 'Ruth María\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(456, '21203260', '3', '3°', 'C', 'Flores Muñoz', 'Claudia Ivonne\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(457, '21315420', '6', '3°', 'C', 'Prado Fuentes', 'Viviana Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(458, '20943901', '8', '3°', 'C', 'Valenzuela Díaz', 'Carolina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(459, '21091162', '6', '3°', 'C', 'Castillo Tapia', 'Kathia Isabel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(460, '21062866', '5', '3°', 'C', 'Cardoza Lavín', 'Yuliana Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(461, '20668341', '4', '3°', 'C', 'Martínez Chaparro', 'Nicol Del Pilar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(462, '20913619', '8', '3°', 'C', 'Hevia Muñoz', 'Natalia Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(463, '21166013', '9', '3°', 'C', 'Olivares Herrera', 'Consuelo Isabel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(464, '21141926', '1', '3°', 'C', 'Rodríguez Carrasco', 'Debora Valentina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(465, '21198218', '7', '3°', 'C', 'Mora Moyano', 'Gillian Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(466, '20219960', '7', '3°', 'C', 'Jerez Flores', 'Angela Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(467, '20777045', '0', '3°', 'C', 'Cruz Silva', 'Paula Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(468, '21029625', '5', '3°', 'C', 'Barrios Valdés', 'Damaris Yislen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(469, '21233728', '5', '3°', 'C', 'Bustamante Ramírez', 'María Paz De Jesús\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(470, '20949443', '4', '3°', 'C', 'Ortega San Martín', 'Adriana Del Rosario\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(471, '21079464', '6', '3°', 'C', 'Cifuentes Herrera', 'Karla Francisca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(472, '21255262', '3', '3°', 'C', 'Moya Campos', 'Jandari Cristal\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(473, '25522841', '2', '3°', 'C', 'Riascos Valencia', 'Geraldine Camila\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(474, '21137867', '0', '3°', 'C', 'Orrego Medina', 'Carla Sidney\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(475, '20420095', '5', '3°', 'C', 'Méndez Labra', 'Valeria Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(476, '21150608', '3', '3°', 'C', 'Villanueva Alfaro', 'Alexandra Melissa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(477, '21211191', '0', '3°', 'C', 'Cuitiño Ventura', 'Mariela Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(478, '20952871', '1', '3°', 'C', 'Serrano Correa', 'Ignacia Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(479, '20450947', '6', '3°', 'C', 'Paredes Oliva', 'Genesis Soar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(480, '21054620', '0', '3°', 'C', 'Salinas Pardo', 'Jennifer Denise\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(481, '21320627', '3', '3°', 'C', 'Díaz Urbina', 'Constanza Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(482, '21065374', '0', '3°', 'C', 'Fuentealba Sepúlveda', 'Michelle Solange\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(483, '20879165', '6', '3°', 'C', 'Avendaño Campos', 'Catalina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(484, '21078728', '3', '3°', 'D', 'Elgueta Gómez', 'Nallely Millaray\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(485, '24684722', '3', '3°', 'D', 'Medina Valentin', 'Rosa Jalimar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(486, '25530052', '0', '3°', 'D', 'Roggero Elias', 'Hayrle\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(487, '100427353', '9', '3°', 'D', 'Londoño Barrera', 'Ingrid Dayana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(488, '21210839', '1', '3°', 'D', 'Romero Salvo', 'Tatiana Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(489, '20576037', '7', '3°', 'D', 'Corvalán Sagredo', 'Francisca Javiera\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(490, '20043715', '2', '3°', 'D', 'Sepúlveda Aldana', 'Edith Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(491, '20595772', '3', '3°', 'D', 'Moll Tamayo', 'Catalina Lisbeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(492, '21319351', '1', '3°', 'D', 'Cerda Aguilera', 'Jazmín Julissa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(493, '21060496', '0', '3°', 'D', 'Barra Lavados', 'Genesis Javiera\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(494, '21287507', '4', '3°', 'D', 'Riquelme Acevedo', 'Ianis Karla Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(495, '21094188', '6', '3°', 'D', 'Subiabre Adones', 'Yessica Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(496, '20598253', '1', '3°', 'D', 'Chávez Torres', 'Vaitiare Estefanía\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(497, '20832982', '0', '3°', 'D', 'Rivera Rodríguez', 'Darling Estefanía\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(498, '20574034', '1', '3°', 'D', 'Valenzuela Marchant', 'Allison Danae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(499, '20782819', 'K', '3°', 'D', 'Pérez Balmaceda', 'Anaís Rocío\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(500, '20762573', '6', '3°', 'D', 'Riveros Lavín', 'Antonia Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(501, '21300923', '0', '3°', 'D', 'Montecinos Magaña', 'Danae Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(502, '20982407', '8', '3°', 'D', 'Ponce Gutiérrez', 'Constanza Valentina Olimpia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(503, '20787305', '5', '3°', 'D', 'Andrade Ramírez', 'Geraldine Ayanara Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(504, '21206386', 'K', '3°', 'D', 'Norambuena Martinez', 'Georgia Varinia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(505, '25027968', 'K', '3°', 'D', 'Vasquez Pereda', 'Olenka Brillyc\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(506, '26305982', '4', '3°', 'D', 'Garcia Blanco', 'Arianny Jakelyn\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(507, '21327443', '0', '3°', 'D', 'González Escobar', 'Constanza Nicole\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(508, '20615995', '2', '3°', 'D', 'Cea Pilquiñir', 'Damaris Sofía\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(509, '20637475', '6', '3°', 'D', 'Andaur Troncoso', 'Catalina Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(510, '20826425', '7', '3°', 'D', 'Contreras Muñoz', 'Scarlet Isabel\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(511, '21079754', '8', '3°', 'D', 'Gallardo Lillo', 'Constanza Ailine\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(512, '20107183', '6', '4°', 'A', 'Tejeda Rivera', 'Tiare Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(513, '20467616', 'K', '4°', 'A', 'Cagnin Gallegos', 'Galit\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(514, '20190919', '8', '4°', 'A', 'Figueroa Figueroa', 'María Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(515, '21029866', '5', '4°', 'A', 'Muñoz Portilla', 'Melanie Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(516, '20403652', '7', '4°', 'A', 'Navarro Guajardo', 'Valentina Catalina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(517, '20942111', '9', '4°', 'A', 'Vilches Guerra', 'Danitza Coraly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(518, '20714293', 'K', '4°', 'A', 'Vera Martínez', 'Angela Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(519, '20146631', '8', '4°', 'A', 'Fuenzalida Cárdenas', 'Javiera Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(520, '20191871', '5', '4°', 'A', 'Retamal Pozo', 'Catalina Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(521, '20643195', '4', '4°', 'A', 'Rojas Garay', 'Myriam Daniela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(522, '20813764', '6', '4°', 'A', 'Colipe Piceros', 'Yanara Estrella Anaís\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(523, '20816109', '1', '4°', 'A', 'Hernández Rivera', 'Marcia Yolanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(524, '20447127', '4', '4°', 'A', 'Allendes Tiznado', 'Genesis Scarlet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(525, '20420002', '5', '4°', 'A', 'Paineo Arias', 'Aylin Tamara\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(526, '20574646', '3', '4°', 'A', 'Leiva González', 'Sacharyn Savka\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(527, '20420395', '4', '4°', 'A', 'Jara Vásquez', 'Millaray Maite\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(528, '20847326', '3', '4°', 'A', 'Carrasco González', 'Catalina Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(529, '21061929', '1', '4°', 'A', 'Astudillo Díaz', 'Estivaly Trinidad\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(530, '20188749', '6', '4°', 'A', 'Muñoz Romero', 'Catherine Patricia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(531, '20420741', '0', '4°', 'A', 'Quinteros Machuca', 'Valentina Tais\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(532, '20915987', '2', '4°', 'A', 'Paillacán Alonso', 'Valentina Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(533, '20636950', '7', '4°', 'A', 'Orellana Reyes', 'Gala Amapola\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(534, '20962274', '2', '4°', 'A', 'Jiménez Soto', 'Escarlett Stefanny\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(535, '20574256', '5', '4°', 'A', 'Velásquez Vicencio', 'Daniela Francisca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(536, '20615271', '0', '4°', 'A', 'Díaz Bórquez', 'Aracely Scarlett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(537, '20405165', '8', '4°', 'A', 'González Aliante', 'Katherine Valeska\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(538, '20794583', '8', '4°', 'A', 'Pincheira Trecanahuel', 'Cinthia Patricia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(539, '20815536', '9', '4°', 'A', 'Fernández Muñoz', 'Natalia Mamnamara\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(540, '20449909', '8', '4°', 'A', 'Sepúlveda Hueche', 'Javiera Abril\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(541, '20789825', '2', '4°', 'A', 'Rivas Moya', 'Denisse Cristal\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(542, '20579141', '8', '4°', 'A', 'Reyes Ortiz', 'Fernanda Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(543, '20640303', '9', '4°', 'A', 'Rey Cornejo', 'Danae Noelia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(544, '20947483', '2', '4°', 'A', 'Leyton Guerra', 'Estefanía Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(545, '20404451', '1', '4°', 'A', 'Santibáñez Muñoz', 'Jazmín Valeska\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(546, '20916604', '6', '4°', 'A', 'Muñoz Peña', 'Genesis Danae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(547, '100366313', '9', '4°', 'B', 'Vasquez Medina', 'Katerine Lizeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(548, '21011412', '2', '4°', 'B', 'Valdés Vergara', 'Valentina Dayan\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(549, '20670965', '0', '4°', 'B', 'Lavín Ibarra', 'Mariana Jesús\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(550, '20206144', '3', '4°', 'B', 'Quijada Cortés', 'Marion Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(551, '20722321', '2', '4°', 'B', 'Troncoso Reyes', 'Melissa Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(552, '20965227', '7', '4°', 'B', 'Araya Sánchez', 'Javiera Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(553, '20206026', '9', '4°', 'B', 'Estrada Rodríguez', 'Catalina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(554, '20599334', '7', '4°', 'B', 'López Ponce', 'Genesis Tamara\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(555, '20192198', '8', '4°', 'B', 'Moyano Fuenzalida', 'Nayaret Gricett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(556, '20388416', '8', '4°', 'B', 'Pichulmán Gallardo', 'Andrea Cecilia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(557, '20671491', '3', '4°', 'B', 'Saavedra Bustos', 'Alejandra Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(558, '20635794', '0', '4°', 'B', 'Lorca Arancibia', 'Scarlett Nicole\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(559, '20940682', '9', '4°', 'B', 'González Jorquera', 'María Elena De Jesús\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(560, '20579387', '9', '4°', 'B', 'Basaure Nicuman', 'Deyanira Betsabé\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(561, '20812034', '4', '4°', 'B', 'Cáceres Calfuqueo', 'Fabiola Elizabeth\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(562, '20814323', '9', '4°', 'B', 'Miranda Montecinos', 'Catalina Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(563, '20451107', '1', '4°', 'B', 'Astudillo Muñoz', 'Dayana Stefani\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(564, '20931294', '8', '4°', 'B', 'Muñoz Acosta', 'Asley Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(565, '20931073', '2', '4°', 'B', 'Correa Olea', 'Nayareth Yasmín\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(566, '20615159', '5', '4°', 'B', 'Flores Liendo', 'Fernanda Stephania\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(567, '20574304', '9', '4°', 'B', 'Palma Guerino', 'Valentina Nicole\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(568, '20922975', '7', '4°', 'B', 'Cantillana Salinas', 'Macarena Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(569, '20576677', '4', '4°', 'B', 'Placencio Alcaíno', 'Siboney Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(570, '20948467', '6', '4°', 'B', 'Velásquez Suárez', 'Paola Scarlet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(571, '20627098', '5', '4°', 'B', 'Pérez Jerez', 'Javiera Scarlet\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(572, '20395579', '0', '4°', 'B', 'Salazar Córdova', 'Francesca Michelle\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(573, '20762842', '5', '4°', 'B', 'Flores Contreras', 'Krishna Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(574, '20575012', '6', '4°', 'B', 'Llanos Lemus', 'Danitza Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(575, '20192224', '0', '4°', 'B', 'Villegas Sánchez', 'Victoria Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(576, '20145737', '8', '4°', 'B', 'Donoso Rodriguez', 'Nicole Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(577, '20559603', '8', '4°', 'B', 'Jara Manquián', 'Paz Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(578, '20451854', '8', '4°', 'B', 'Guzmán Bravo', 'Karishma Charlotte\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(579, '21006044', '8', '4°', 'B', 'Maira Carreño', 'Noelia Katherine\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(580, '20616056', 'K', '4°', 'B', 'Álvarez Paredes', 'Elizabeth Daniela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(581, '20596452', '5', '4°', 'B', 'Molina Vásquez', 'Paola Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(582, '100427403', '9', '4°', 'C', 'Castillo Vergara', 'Alexandra Pamela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(583, '20976409', '1', '4°', 'C', 'Leni Flores', 'Karina Del Carmen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(584, '20206877', '4', '4°', 'C', 'Jiménez Rañiman', 'Valentina Soledad\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(585, '20713383', '3', '4°', 'C', 'Contreras Fernández', 'Natalia Lissette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(586, '20712707', '8', '4°', 'C', 'Carreño Silva', 'Valentina Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(587, '20973343', '9', '4°', 'C', 'Brizuela Díaz', 'Javiera Fernanda\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(588, '20576597', '2', '4°', 'C', 'Guajardo González', 'Constanza Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(589, '20420560', '4', '4°', 'C', 'Saavedra Adriazola', 'María Fernanda Aylin\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(590, '20379928', '4', '4°', 'C', 'Saldaña Castillo', 'Paloma Scarlett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(591, '20814151', '1', '4°', 'C', 'Montecino Rojas', 'Constanza Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(592, '20668204', '3', '4°', 'C', 'Guerra Martínez', 'Javiera Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(593, '20421337', '2', '4°', 'C', 'Urrejola Huencho', 'Fernanda Elena\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(594, '20192069', '8', '4°', 'C', 'Basualto González', 'Noelia Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(595, '20573653', '0', '4°', 'C', 'Bayotoro Briones', 'Alejandra Carlina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(596, '20391637', 'K', '4°', 'C', 'Cancino Gutiérrez', 'Dahyrat Marcela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(597, '20836227', '5', '4°', 'C', 'Morales Uribe', 'Javiera Escarlette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(598, '22156243', '7', '4°', 'C', 'Tumbajulca Ybañez', 'Cory Yarumi\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(599, '20577213', '8', '4°', 'C', 'Inostroza Bley', 'Daniela Angelina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(600, '20576081', '4', '4°', 'C', 'Moyano Muñoz', 'Valentina Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(601, '20599206', '5', '4°', 'C', 'Caamaño Flores', 'Valentina Danae\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(602, '20781280', '3', '4°', 'C', 'Contreras Sepúlveda', 'Vania Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(603, '20613783', '5', '4°', 'C', 'Inostroza Inostroza', 'Javiera Arlen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(604, '20614255', '3', '4°', 'C', 'Huanqui Bastías', 'María Teresa De Los Angeles\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(605, '20448376', '0', '4°', 'C', 'Salinas Pardo', 'Catalina Nicol\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(606, '20730929', 'K', '4°', 'C', 'Gutiérrez Castro', 'Bárbara Javiera\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(607, '22605677', '7', '4°', 'C', 'Abarca Toro', 'Javiera Marina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(608, '20951415', 'K', '4°', 'D', 'Cuevas Cortés', 'Ignacia Paz\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(609, '20974013', '3', '4°', 'D', 'Inda Henríquez', 'Bárbara Emilia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(610, '20597923', '9', '4°', 'D', 'Besalduch Chávez', 'Lixzy Scarlett\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(611, '20553389', '3', '4°', 'D', 'Avendaño Toro', 'Camila Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(612, '25929946', '2', '4°', 'D', 'Ordosgoitti Morales', 'Fabiana Andreina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(613, '20722012', '4', '4°', 'D', 'Devia Sánchez', 'Constanza Carolina\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(614, '20614772', '5', '4°', 'D', 'Aguilera Riquelme', 'Victoria De Los Angeles\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(615, '20448773', '1', '4°', 'D', 'García Muñoz', 'Aracelly Magdalena\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(616, '20574584', 'K', '4°', 'D', 'Erazo Córdova', 'Berenice Alexandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(617, '20919874', '6', '4°', 'D', 'Leiva Retamal', 'Edith Stephanie\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(618, '20790741', '3', '4°', 'D', 'Rivera Arcos', 'Constanza Raffaella\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(619, '20575113', '0', '4°', 'D', 'Millalén Álvarez', 'Carolina Greys\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(620, '20574267', '0', '4°', 'D', 'Muñoz Corrales', 'Jennifer Kimberly\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(621, '20471320', '0', '4°', 'D', 'González Montecinos', 'Guisella Emmyline\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(622, '20597725', '2', '4°', 'D', 'Soto Moya', 'Tamara Inés\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(623, '20535339', '9', '4°', 'D', 'Alarcón Santos', 'Antonia Javiera\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(624, '20146071', '9', '4°', 'D', 'Silva Palomino', 'Marion Francesca\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(625, '20147360', '8', '4°', 'D', 'Navarro Gutiérrez', 'Engel Vaitiare\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(626, '20614566', '8', '4°', 'D', 'Pacheco Foncea', 'Silvana Estrella\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(627, '20964156', '9', '4°', 'D', 'Cisternas Varela', 'Camila Constanza\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(628, '20574626', '9', '4°', 'D', 'Rivadeneira Kruger', 'Kimberly Marlene\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(629, '20614855', '1', '4°', 'D', 'Alarcón Fernández', 'Victoria Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(630, '21023312', '1', '4°', 'D', 'Burgos Morales', 'Abish Rayen\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(631, '20904288', '6', '4°', 'D', 'Rojas Cárcamo', 'Roxana Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(632, '20668488', '7', '4°', 'D', 'Gajardo Díaz', 'Antonia Elena\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(633, '20400683', '0', '4°', 'D', 'Zúñiga Salgado', 'Yulisa Del Pilar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(634, '20245918', '8', '4°', 'E', 'Fuentes Dueñas', 'Javiera Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(635, '100365645', '0', '4°', 'E', 'Vidal Upegui', 'Karol Andrea\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(636, '20838845', '2', '4°', 'E', 'Contreras Ayub', 'Patricia Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(637, '20975054', '6', '4°', 'E', 'Briones González', 'Karla Ivette\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(638, '20950651', '3', '4°', 'E', 'Palma Araneda', 'Meyling Nayara\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(639, '20401551', '1', '4°', 'E', 'Vidal Rojas', 'Deyanira Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(640, '20844894', '3', '4°', 'E', 'Vásquez Elgueta', 'Javiera Belén\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(641, '19779632', '4', '4°', 'E', 'Bolados Umaña', 'Thiare Solange\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(642, '20790213', '6', '4°', 'E', 'Díaz Martínez', 'Francisca Aracely\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(643, '20450498', '9', '4°', 'E', 'Lagos González', 'Violeta Ada\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(644, '20790930', '0', '4°', 'E', 'Cancino Salazar', 'Constanza Viviana\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(645, '20576464', 'K', '4°', 'E', 'Muñoz Díaz', 'Natalia Genesis\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(646, '20575982', '4', '4°', 'E', 'Galarce Valenzuela', 'Melissa Anasol\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(647, '21027082', '5', '4°', 'E', 'Pino Villar', 'Escarlet Angela\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(648, '20989140', '9', '4°', 'E', 'Toro González', 'Catalina Antonia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(649, '20967506', '4', '4°', 'E', 'Tello Núñez', 'Belén Victoria\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(650, '20163086', 'K', '4°', 'E', 'Alvarado Matamala', 'María Leonor\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(651, '20990986', '3', '4°', 'E', 'Ortiz Salas', 'Sonia Paz Del Pilar\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(652, '20921756', '2', '4°', 'E', 'Ramírez Serrano', 'Josefa Consuelo\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(653, '25252026', '0', '4°', 'E', 'Rivera Jimenez', 'Luisa María\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(654, '20574005', '8', '4°', 'E', 'Rojas Mella', 'Francisca Javiera\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(655, '20448923', '8', '4°', 'E', 'Manríquez De La Cruz', 'Constanza Rocío\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(656, '20446512', '6', '4°', 'E', 'Vega Hernández', 'Catalina Alejandra\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(657, '20829432', '6', '4°', 'E', 'Salinas Toro', 'Franchesca Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(658, '20961875', '3', '4°', 'E', 'Ramírez Riveros', 'Karina Nicole\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(659, '20949132', 'K', '4°', 'E', 'Salgado Baez', 'Nataly Teresa\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(660, '20595341', '8', '4°', 'E', 'Ramos Maureira', 'Catalina Ignacia\r', 0, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, 'NO'),
(661, '12159474', '9', '1°', 'B', 'Torres Cisterna', 'Christian Guillermo', 0, 0, 0, 0, 0, 0, 0, 1, '2019-04-29 02:35:25', '2019-04-29 02:36:16', '2019-04-28', 'NO'),
(662, '20533653', '2', '1°', 'A', 'Torres Silva', 'Kamila Christinne Alexandra', 0, 0, 0, 0, 0, 0, 0, 1, '2019-05-05 03:34:15', '2019-05-05 03:36:36', NULL, 'NO'),
(663, '2541', '5', '1°', 'A', 'Torres Silva', 'Valeria Constanza', 0, 0, 0, 0, 0, 0, 0, 1, '2019-05-05 03:40:00', '2019-05-05 19:07:55', '2019-05-15', 'NO'),
(664, '342343', '4', '1°', 'A', 'aaweeqer qwer wer', 'ewerqw  wrereerw', 0, 0, 0, 0, 0, 0, 0, 1, '2019-05-05 18:59:30', '2019-05-07 02:15:32', NULL, 'NO'),
(665, '1223466789', '8', '1°', 'A', 'torres', 'mateo', 0, 0, 0, 0, 0, 0, 0, 1, '2019-05-05 19:06:48', '2019-05-05 19:08:33', NULL, 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convivencias`
--

CREATE TABLE `convivencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_convivencias`
--

CREATE TABLE `det_convivencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idorientadora` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_educadoras`
--

CREATE TABLE `det_educadoras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idorientadora` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_equipos`
--

CREATE TABLE `det_equipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idorientadora` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_orientadoras`
--

CREATE TABLE `det_orientadoras` (
  `id` int(10) UNSIGNED NOT NULL,
  `idorientadora` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `det_orientadoras`
--

INSERT INTO `det_orientadoras` (`id`, `idorientadora`, `fecha`, `idalumna`, `observacion`, `visible`, `created_at`, `updated_at`) VALUES
(88, 13, '2019-05-08', 13, 'entrevista', 0, '2019-05-09 00:50:37', '2019-05-09 00:50:37'),
(89, 14, '2019-05-08', 24, 'nada que hacer', 0, '2019-05-09 00:51:36', '2019-05-09 00:51:36'),
(90, 13, '2019-05-09', 13, 'publico', 0, '2019-05-09 21:39:31', '2019-05-09 21:39:31'),
(91, 13, '2019-05-10', 13, 'reservado', 1, '2019-05-09 21:39:43', '2019-05-09 21:39:43'),
(92, 15, '2019-05-12', 13, 'esta es una nueva atencion', 0, '2019-05-12 23:29:32', '2019-05-12 23:29:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_psicologas`
--

CREATE TABLE `det_psicologas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idorientadora` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `det_psicologas`
--

INSERT INTO `det_psicologas` (`id`, `idorientadora`, `fecha`, `idalumna`, `observacion`, `visible`, `created_at`, `updated_at`) VALUES
(5, 7, '2019-05-08', 3, 'entrevista', 0, '2019-05-09 00:50:52', '2019-05-09 00:50:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_terapeutas`
--

CREATE TABLE `det_terapeutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idorientadora` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_visitadoras`
--

CREATE TABLE `det_visitadoras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idorientadora` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `idalumna` int(11) NOT NULL,
  `observacion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educadoras`
--

CREATE TABLE `educadoras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `idalumna`, `derivadopor`, `iddetalle`, `Motivo`, `antecedentes`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 6, 'Prueba de Derivacion', NULL, 'Prueba', 'Desarrollo diagnostico', 1, '2019-05-07 13:40:15', '2019-05-07 13:40:15'),
(2, 6, 'ddd', NULL, 'ddd', 'dddd', 1, '2019-05-07 13:42:54', '2019-05-07 13:42:54'),
(3, 7, 'Yo', NULL, 'bajo rendimiento', 'porisble repitente', 1, '2019-05-07 21:29:21', '2019-05-07 21:29:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_19_193416_create_categorias_table', 1),
(4, '2019_04_23_144436_create_alumnas_table', 1),
(5, '2019_04_23_183550_add_condicion_to_alumnas', 1),
(6, '2019_04_26_121834_add_letra_to_alumnas', 1),
(7, '2019_04_26_204456_add_fecharetiro_to_alumnas', 1),
(8, '2019_04_28_220026_create_derivacion_table', 1),
(11, '2019_04_28_223834_create_orientadoras_table', 2),
(12, '2019_04_30_091523_add_antecedentes_to_orientadoras', 2),
(13, '2019_05_01_005956_create_det_orientadoras', 3),
(14, '2019_05_02_175352_add_iddetalle_to_orientadoras', 4),
(16, '2019_05_03_174429_add_idalumna_to_det_orientadoras', 5),
(17, '2019_05_05_233150_create_psicologas_table', 6),
(18, '2019_05_05_233221_create_visitadoras_table', 6),
(19, '2019_05_05_233251_create_convivencias_table', 6),
(20, '2019_05_05_233322_create_equipos_table', 6),
(21, '2019_05_05_233350_create_terapeutas_table', 6),
(22, '2019_05_05_233417_create_educadoras_table', 6),
(23, '2019_05_05_233447_create_det_psicologas_table', 6),
(24, '2019_05_05_233515_create_det_visitadoras_table', 6),
(25, '2019_05_05_233540_create_det_convivencias_table', 6),
(26, '2019_05_05_233604_create_det_equipos_table', 6),
(27, '2019_05_05_233635_create_det_terapeutas_table', 6),
(28, '2019_05_05_233701_create_det_educadoras_table', 6),
(29, '2019_05_08_085315_add_atendido_to_alumnas', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientadoras`
--

CREATE TABLE `orientadoras` (
  `id` int(10) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` bigint(20) UNSIGNED DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orientadoras`
--

INSERT INTO `orientadoras` (`id`, `idalumna`, `derivadopor`, `iddetalle`, `Motivo`, `antecedentes`, `condicion`, `created_at`, `updated_at`) VALUES
(13, 13, 'Chsistian Torres', NULL, 'Baja Autoestima', 'Problemas Familiares', 1, '2019-05-09 00:49:51', '2019-05-09 00:49:51'),
(14, 24, 'Christian', NULL, 'Flojera', 'Floja', 1, '2019-05-09 00:51:21', '2019-05-09 00:51:21'),
(15, 13, 'dddd', NULL, 'dddd', 'ddddd', 1, '2019-05-12 23:10:27', '2019-05-12 23:10:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologas`
--

CREATE TABLE `psicologas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `psicologas`
--

INSERT INTO `psicologas` (`id`, `idalumna`, `derivadopor`, `iddetalle`, `Motivo`, `antecedentes`, `condicion`, `created_at`, `updated_at`) VALUES
(7, 3, 'Chsistian Torres', NULL, 'Baja Autoestima', 'Problemas Familiares (psicologa)', 1, '2019-05-09 00:50:18', '2019-05-09 00:50:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terapeutas`
--

CREATE TABLE `terapeutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitadoras`
--

CREATE TABLE `visitadoras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idalumna` bigint(20) UNSIGNED NOT NULL,
  `derivadopor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddetalle` int(11) DEFAULT NULL,
  `Motivo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `antecedentes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnas`
--
ALTER TABLE `alumnas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `convivencias`
--
ALTER TABLE `convivencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_convivencias`
--
ALTER TABLE `det_convivencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_educadoras`
--
ALTER TABLE `det_educadoras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_equipos`
--
ALTER TABLE `det_equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_orientadoras`
--
ALTER TABLE `det_orientadoras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `det_orientadoras_idorientadora_foreign` (`idorientadora`),
  ADD KEY `idalumna` (`idalumna`);

--
-- Indices de la tabla `det_psicologas`
--
ALTER TABLE `det_psicologas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_terapeutas`
--
ALTER TABLE `det_terapeutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_visitadoras`
--
ALTER TABLE `det_visitadoras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `educadoras`
--
ALTER TABLE `educadoras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orientadoras`
--
ALTER TABLE `orientadoras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orientadoras_idalumna_foreign` (`idalumna`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `psicologas`
--
ALTER TABLE `psicologas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `visitadoras`
--
ALTER TABLE `visitadoras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnas`
--
ALTER TABLE `alumnas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=666;

--
-- AUTO_INCREMENT de la tabla `convivencias`
--
ALTER TABLE `convivencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `det_convivencias`
--
ALTER TABLE `det_convivencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `det_educadoras`
--
ALTER TABLE `det_educadoras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `det_equipos`
--
ALTER TABLE `det_equipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `det_orientadoras`
--
ALTER TABLE `det_orientadoras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `det_psicologas`
--
ALTER TABLE `det_psicologas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `det_terapeutas`
--
ALTER TABLE `det_terapeutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `det_visitadoras`
--
ALTER TABLE `det_visitadoras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `educadoras`
--
ALTER TABLE `educadoras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `orientadoras`
--
ALTER TABLE `orientadoras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `psicologas`
--
ALTER TABLE `psicologas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `visitadoras`
--
ALTER TABLE `visitadoras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `det_orientadoras`
--
ALTER TABLE `det_orientadoras`
  ADD CONSTRAINT `det_orientadoras_idorientadora_foreign` FOREIGN KEY (`idorientadora`) REFERENCES `orientadoras` (`id`);

--
-- Filtros para la tabla `orientadoras`
--
ALTER TABLE `orientadoras`
  ADD CONSTRAINT `orientadoras_idalumna_foreign` FOREIGN KEY (`idalumna`) REFERENCES `alumnas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
