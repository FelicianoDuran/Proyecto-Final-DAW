-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2018 a las 14:52:58
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `durauto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `codcat` int(11) NOT NULL,
  `nombreCat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`codcat`, `nombreCat`) VALUES
(1, 'Sin categoría'),
(2, 'Ejemplo categoría 1'),
(3, 'Ejemplo categoría 2'),
(4, 'Ejemplo categoría 3'),
(6, 'Ejemplo categoría 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codpro` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` double(10,2) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `imagen` varchar(5000) DEFAULT NULL,
  `imagen_principal` varchar(100) NOT NULL,
  `codcat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codpro`, `nombre`, `precio`, `descripcion`, `imagen`, `imagen_principal`, `codcat`) VALUES
(26, 'WB-EBASIC', 0.00, 'WallBox eBasic puede incorporar también un sensor inteligente CirBEON para el control de la potencia de recarga del vehículo, asegurando que no se sobrepasa la potencia contratada (previniendo la desconexión),\r\n reduciendo los costes de recarga                                                                                                                                    ', 'wbeBasic1.png,wbeBasic2.png,', ' ', 1),
(27, 'cima 500', 0.00, 'Caja de recarga VE Modo 2 de plástico IP 40 IK07, 2 tomas Schuko. Protección diferencial y magnetotérmia incorporada.', 'CIMA.png,', 'CIMA.png', 2),
(28, 'eHome', 0.00, 'Diseñada para ser fácilmente instalada en aparcamientos privados, tanto interiores como exteriores, y distribuida a fabricantes de vehículos eléctricos. La gama eHome ha sido optimizada para ofrecer la mejor relación coste/características del mercado.  Como resultado obtenemos un producto de alta calidad que puede cargar cómodamente todas las marcas de vehículo eléctrico del mercado en Modo 3 con un conector Tipo 1 o Tipo 2.', 'eHome.jpg,eHome2.jpg,', 'eHome.jpg', 4),
(34, 'Prueba de producto', 0.00, 'Esto es una prueba de producto', 'foto04_bis.jpg,foto05.jpg,', 'foto04_bis.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `codpublicacion` int(10) NOT NULL,
  `marca` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `tipoEnchufe` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `imagen` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `infoConector` longtext NOT NULL,
  `codusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`codpublicacion`, `marca`, `tipoEnchufe`, `imagen`, `modelo`, `infoConector`, `codusuario`) VALUES
(1, 'Audi', 'Tipo 2', 'ImgCoches/Audi/Audi-E-tron-Quatro.jpg', 'Audi E-tron Quatro', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(2, 'Audi', 'Tipo 2', 'ImgCoches/Audi/Audi-A3-Sportback-e-tron.jpg', 'Audi A3 Sportback e-tron', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(3, 'Audi', 'Tipo 2', 'ImgCoches/Audi/Audi-Q7-e-tron-Quattro.jpg', 'Audi E-tron Quatron', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(4, 'BMW', 'Tipo 1 y 2', 'ImgCoches/Bmw/BMW-225xe.jpg', 'BMW 225xe', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(5, 'BMW', 'Tipo 2', 'ImgCoches/Bmw/BMW-330e.jpg', 'BMW 330e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(6, 'BMW', 'Tipo 1 y 2', 'ImgCoches/Bmw/BMW-530e.jpg', 'BMW 530e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(7, 'BMW', 'Tipo 2', 'ImgCoches/Bmw/BMW-740e.jpg', 'BMW 740e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(8, 'BMW', 'Tipo 2', 'ImgCoches/Bmw/BMW-i3.jpg', 'BMW i3', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(9, 'BMW', 'Tipo 2', 'ImgCoches/Bmw/BMW-i8.jpg', 'BMW i8', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(10, 'BMW', 'Tipo 2', 'ImgCoches/Bmw/BMW-X5.jpg', 'BMW X5 xDrive40e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(11, 'BYD', 'Tipo 2', 'ImgCoches/Byd/BYD-E6.jpg', 'BYD E6', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(12, 'Chevrolet', 'Tipo 1', 'ImgCoches/Chevrolet/Chevrolet-Bolt.png', 'Chevrolet Bolt', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(13, 'Chevrolet', 'Tipo 1', 'ImgCoches/Chevrolet/Chevrolet-Volt.jpg', 'Chevrolet Volt', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(14, 'Citroën', 'Tipo 2', 'ImgCoches/Citroën/Citroën-Berlingo-Electric.jpg', 'Citroën Berlingo Electric', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(15, 'Citroën', 'Tipo 1', 'ImgCoches/Citroën/Citroën-C-Zero.jpg', 'Citroën C-Zero', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(16, 'Citroën', 'Tipo 1', 'ImgCoches/Citroën/Citroën-E-Berlingo.jpg', 'Citroën E-Berlingo Multispace', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(17, 'Citroën', 'Tipo 1', 'ImgCoches/Citroën/Citroën-E-Mehari.jpg', 'Citroën E-Mehari', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(18, 'DS', 'Tipo 2', 'ImgCoches/Ds/DS-7-Crossback.jpg', 'DS 7 Crossback', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(19, 'Eve', 'Tipo 2', 'ImgCoches/Eve/Eve-M1.lle.png', 'Eve M1.lle', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(20, 'Faraday Future', 'Tipo 2', 'ImgCoches/FaradayFuture/Faraday-Future-FF91.jpg', 'Faraday Future FF91', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(21, 'Ford', 'Tipo 1', 'ImgCoches/Ford/Ford-C-MAX-Energi.png', 'Ford C-MAX Energi', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(22, 'Ford', 'Tipo 1 y 2', 'ImgCoches/Ford/Ford-Focus-electric.png', 'Ford Focus electric', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(23, 'Hyundai', 'Tipo 2', 'ImgCoches/Hyundai/Hyundai-ioniq.jpg', 'Hyundai IONIQ', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(24, 'Hyundai', 'Tipo 2', 'ImgCoches/Hyundai/Hyundai-kona-ev.jpg', 'Hyundai Kona EV', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(25, 'Jaguar', 'Tipo 2', 'ImgCoches/Jaguar/Jaguar-i-pace.jpg', 'Jaguar i-Pace', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(26, 'KIA', 'Tipo 1 y 2', 'ImgCoches/Kia/KIA-Niro.jpg', 'KIA Niro', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(27, 'KIA', 'Tipo 1', 'ImgCoches/Kia/KIA-Optima.png', 'KIA Optima', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(28, 'KIA', 'Tipo 1', 'ImgCoches/Kia/KIA-Soul-EV.png', 'KIA Soul EV', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(29, 'Land Rover', 'Tipo 2', 'ImgCoches/LandRover/Land-Rover-Range-Rover.jpg', 'Land Rover Range Rover', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(30, 'Land Rover', 'Tipo 2', 'ImgCoches/LandRover/Land-Rover-Range-Rover-Sport.jpg', 'Land Rover Range Rover Sport', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(31, 'Mercedes-Benz', 'Tipo 1', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-B-ED.jpg', 'Mercedes-Benz Clase B ED', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(32, 'Mercedes-Benz', 'Tipo 2', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-C.jpg', 'Mercedes-Benz Clase C', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(33, 'Mercedes-Benz', 'Tipo 2', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-E.jpg', 'Mercedes-Benz Clase E', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(34, 'Mercedes-Benz', 'Tipo 2', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-S.jpg', 'Mercedes-Benz Clase S', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(35, 'Mercedes-Benz', 'Tipo 2', 'ImgCoches/MercedesBenz/Mercedes-Benz-GLC.jpg', 'Mercedes-Benz GLC', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(36, 'Mercedes-Benz', 'Tipo 2', 'ImgCoches/MercedesBenz/Mercedes-Benz-GLE-500.jpg', 'Mercedes-Benz GLE 500', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(37, 'MINI', 'Tipo 2', 'ImgCoches/Mini/MINI-Countryman.jpg', 'MINI Countryman', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(38, 'Mitsubishi', 'Tipo 2', 'ImgCoches/Mitsubishi/Mitsubishi-i-MiEV.jpg', 'Mitsubishi i-MiEV', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(39, 'Mitsubishi', 'Tipo 1 y 2', 'ImgCoches/Mitsubishi/Mitsubishi-Outlander-PHEV-2015.jpg', 'Mitsubishi Outlander PHEV 2015', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(40, 'Mitsubishi', 'Tipo 2 y Chademo', 'ImgCoches/Mitsubishi/Mitsubishi-Outlander-PHEV-2016.jpg', 'Mitsubishi Outlander PHEV 2016', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(41, 'Mitsubishi', 'Tipo 1 y Chademo', 'ImgCoches/Mitsubishi/Mitsubishi-Outlander-PHEV-2017.jpg', 'Mitsubishi Outlander PHEV 2017', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(42, 'Nissan', 'Tipo 1 y Chademo', 'ImgCoches/Nissan/Nissan-e-NV200.png', 'Nissan e-NV200', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(43, 'Nissan', 'Tipo 1 y Chademo', 'ImgCoches/Nissan/Nissan-e-NV200-Evalia.jpg', 'Nissan e-NV200 Evalia', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(44, 'Nissan', 'Tipo 1 y Chademo', 'ImgCoches/Nissan/Nissan-Leaf.jpg', 'Nissan Leaf', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(45, 'Nissan', 'Tipo 2', 'ImgCoches/Nissan/Nissan-Leaf-2018.jpg', 'Nissan Leaf 2018', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(46, 'Opel', 'Tipo 1 y 2', 'ImgCoches/Opel/Opel-Ampera.jpg', 'Opel Ampera', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(47, 'Opel', 'Tipo 2', 'ImgCoches/Opel/Opel-Ampera-e.jpg', 'Opel Ampera e-', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(48, 'Peugeot', 'Tipo 1 y 2', 'ImgCoches/Peugeot/Peugeot-iOn.jpg', 'Peugeot iOn', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(49, 'Peugeot', 'Tipo 1 y 2', 'ImgCoches/Peugeot/Peugeot-Partner-Electric.jpg', 'Peugeot Partner Electric', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(50, 'Renault', 'Tipo 1 y 2', 'ImgCoches/Renault/Renault-Fluence-Z.E.jpg', 'Renault Fluence Z.E', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(51, 'Renault', 'Tipo 2', 'ImgCoches/Renault/Renault-Kangoo-Z.E.jpg', 'Renault Kangoo ZE', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(52, 'Renault', 'Tipo 2', 'ImgCoches/Renault/Renault-Twizy.jpg', 'Renault Twizy', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(53, 'Renault', 'Tipo 2', 'ImgCoches/Renault/Renault-Zoe.jpg', 'Renault Zoe', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(54, 'Seat', 'Tipo 2', 'ImgCoches/Seat/Seat-e-Mii.jpg', 'Seat e-Mii', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(55, 'Toyota', 'Tipo 1', 'ImgCoches/Toyota/Toyota-Prius-plug-in-hybrid.jpg', 'Toyota Prius plug-in hybrid', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(56, 'Volkswagen', 'Tipo 2 y CCS', 'ImgCoches/Volkswagen/Volkswagen-e-Golf.jpg', 'Volkswagen e-Golf', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(57, 'Volkswagen', 'Tipo 2 y CCS', 'ImgCoches/Volkswagen/Volkswagen-e-UP.jpg', 'Volkswagen e-UP', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(58, 'Volkswagen', 'Tipo 2', 'ImgCoches/Volkswagen/Volkswagen-Golf-GTE.jpg', 'Volkswagen Golf GTE', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(59, 'Volkswagen', 'Tipo 2', 'ImgCoches/Volkswagen/Volkswagen-Passat-GTE.jpg', 'Volkswagen Passat GTE', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(60, 'Volvo', 'Tipo 2', 'ImgCoches/Volvo/Volvo-V60-Plug-in-Hybrid.jpg', 'Volvo V60 Plug-in Hybrid', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(61, 'Volvo', 'Tipo 2', 'ImgCoches/Volvo/Volvo-XC90-T8-Twin-Engine.jpg', 'Volvo XC90 T8 Twin Engine', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(70, 'Lexus', 'Tipo 1', 'ImgCoches/Lexus/lexus ct.png', 'Lexus CT', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(71, 'Lexus', 'Tipo 1', 'ImgCoches/Lexus/lexus ls.jpg', 'lexus LS', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3),
(72, 'Lexus', 'Tipo 1', 'ImgCoches/Lexus/lexus gs.jpg', 'Lexus GS', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(73, 'Lexus', 'Tipo 1', 'ImgCoches/Lexus/lexus nx.jpg', 'Lexus NX', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(74, 'Lexus', 'Tipo 1', 'ImgCoches/Lexus/lexus rc.jpg', 'Lexus RC', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(75, 'Toyota', 'Tipo 1', 'ImgCoches/Toyota/Toyota Auris.jpg', 'Toyota Auris', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1),
(77, 'Toyota', 'Tipo 1', 'ImgCoches/Toyota/Toyota Yaris.jpg', 'Toyota Yaris', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2),
(78, 'ejemplo', 'tipo1', 'asd', 'asdasd', 'info', 17),
(79, 'asdas', 'dasdas', 'dasd', 'asdasdas', 'dasdad', 17);

--
-- Disparadores `publicaciones`
--
DELIMITER $$
CREATE TRIGGER `SumarPublicaciones` BEFORE INSERT ON `publicaciones` FOR EACH ROW update usuarios set publicaciones = publicaciones + 1 where codusuario = new.codusuario
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `restarPublicaciones` BEFORE DELETE ON `publicaciones` FOR EACH ROW update usuarios set publicaciones = publicaciones - 1 where codusuario = old.codusuario
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codusuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `publicaciones` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codusuario`, `nombre`, `email`, `contraseña`, `publicaciones`) VALUES
(1, 'usuario', 'usuario', 'f8032d5cae3de20fcec8', 10),
(2, 'ejemplo', 'ejemplo@ejemplo.com', 'ejemplo', 10),
(3, 'enchufauto', 'enchufauto', '20enchufauto18', NULL),
(17, 'asdasdasds', 'admin@admin.com', 'Ordenadorew23', 1),
(19, 'illo', 'illo@gmail.com', 'Pruebadaw23', 0),
(20, '01', '01@gmail.com', 'Hola0111', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codcat`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codpro`),
  ADD KEY `codcat` (`codcat`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`codpublicacion`),
  ADD KEY `codigoUsuario` (`codusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `codcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codpro` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `codpublicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`codcat`) REFERENCES `categorias` (`codcat`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`codusuario`) REFERENCES `usuarios` (`codusuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
