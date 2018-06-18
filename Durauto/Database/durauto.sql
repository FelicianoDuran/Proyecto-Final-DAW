-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2018 a las 21:04:01
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `codpublicacion` int(10) NOT NULL,
  `marca` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `imagen` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `infoConector` longtext NOT NULL,
  `codusuario` int(11) DEFAULT NULL,
  `precio` int(10) NOT NULL,
  `codcombustible` int(11) DEFAULT NULL,
  `año` int(11) NOT NULL,
  `kilometros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`codpublicacion`, `marca`, `imagen`, `modelo`, `infoConector`, `codusuario`, `precio`, `codcombustible`, `año`, `kilometros`) VALUES
(1, 'Audi', 'ImgCoches/Audi/Audi-E-tron-Quatro.jpg', 'Audi E-tron Quatro', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 47027, 2, 2010, 0),
(3, 'Audi', 'ImgCoches/Audi/Audi-Q7-e-tron-Quattro.jpg', 'Audi E-tron Quatron', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 36651, 2, 2018, 0),
(4, 'BMW', 'ImgCoches/Bmw/BMW-225xe.jpg', 'BMW 225xe', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 52615, 2, 2018, 0),
(5, 'BMW', 'ImgCoches/Bmw/BMW-330e.jpg', 'BMW 330e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 18125, 2, 2018, 0),
(6, 'BMW', 'ImgCoches/Bmw/BMW-530e.jpg', 'BMW 530e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 37781, 2, 2018, 0),
(7, 'BMW', 'ImgCoches/Bmw/BMW-740e.jpg', 'BMW 740e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 39528, 2, 2018, 0),
(9, 'BMW', 'ImgCoches/Bmw/BMW-i8.jpg', 'BMW i8', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 52914, 2, 2018, 0),
(10, 'BMW', 'ImgCoches/Bmw/BMW-X5.jpg', 'BMW X5 xDrive40e', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 41671, 2, 2018, 0),
(11, 'BYD', 'ImgCoches/Byd/BYD-E6.jpg', 'BYD E6', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 34613, 2, 2018, 0),
(12, 'Chevrolet', 'ImgCoches/Chevrolet/Chevrolet-Bolt.png', 'Chevrolet Bolt', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 33053, 2, 2018, 0),
(13, 'Chevrolet', 'ImgCoches/Chevrolet/Chevrolet-Volt.jpg', 'Chevrolet Volt', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 46425, 2, 2018, 0),
(15, 'Citroën', 'ImgCoches/Citroën/Citroën-C-Zero.jpg', 'Citroën C-Zero', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 35567, 2, 2018, 0),
(16, 'Citroën', 'ImgCoches/Citroën/Citroën-E-Berlingo.jpg', 'Citroën E-Berlingo Multispace', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 48931, 2, 2018, 0),
(18, 'DS', 'ImgCoches/Ds/DS-7-Crossback.jpg', 'DS 7 Crossback', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 52980, 2, 2018, 0),
(20, 'Faraday Future', 'ImgCoches/FaradayFuture/Faraday-Future-FF91.jpg', 'Faraday Future FF91', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 31240, 2, 2018, 0),
(21, 'Ford', 'ImgCoches/Ford/Ford-C-MAX-Energi.png', 'Ford C-MAX Energi', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 18093, 2, 2018, 0),
(22, 'Ford', 'ImgCoches/Ford/Ford-Focus-electric.png', 'Ford Focus electric', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 21744, 2, 2018, 0),
(23, 'Hyundai', 'ImgCoches/Hyundai/Hyundai-ioniq.jpg', 'Hyundai IONIQ', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 39443, 2, 2018, 0),
(24, 'Hyundai', 'ImgCoches/Hyundai/Hyundai-kona-ev.jpg', 'Hyundai Kona EV', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 36983, 2, 2018, 0),
(25, 'Jaguar', 'ImgCoches/Jaguar/Jaguar-i-pace.jpg', 'Jaguar i-Pace', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 51585, 2, 2018, 0),
(26, 'KIA', 'ImgCoches/Kia/KIA-Niro.jpg', 'KIA Niro', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 51979, 2, 2018, 0),
(27, 'KIA', 'ImgCoches/Kia/KIA-Optima.png', 'KIA Optima', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 50139, 2, 2018, 0),
(28, 'KIA', 'ImgCoches/Kia/KIA-Soul-EV.png', 'KIA Soul EV', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 39757, 2, 2018, 0),
(29, 'Land Rover', 'ImgCoches/LandRover/Land-Rover-Range-Rover.jpg', 'Land Rover Range Rover', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 33371, 2, 2018, 0),
(30, 'Land Rover', 'ImgCoches/LandRover/Land-Rover-Range-Rover-Sport.jpg', 'Land Rover Range Rover Sport', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 32583, 2, 2018, 0),
(31, 'Mercedes-Benz', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-B-ED.jpg', 'Mercedes-Benz Clase B ED', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 47803, 2, 2018, 0),
(32, 'Mercedes-Benz', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-C.jpg', 'Mercedes-Benz Clase C', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 46269, 2, 2018, 0),
(33, 'Mercedes-Benz', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-E.jpg', 'Mercedes-Benz Clase E', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 32933, 2, 2018, 0),
(34, 'Mercedes-Benz', 'ImgCoches/MercedesBenz/Mercedes-Benz-Clase-S.jpg', 'Mercedes-Benz Clase S', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 50858, 2, 2018, 0),
(35, 'Mercedes-Benz', 'ImgCoches/MercedesBenz/Mercedes-Benz-GLC.jpg', 'Mercedes-Benz GLC', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 20494, 2, 2018, 0),
(36, 'Mercedes-Benz', 'ImgCoches/MercedesBenz/Mercedes-Benz-GLE-500.jpg', 'Mercedes-Benz GLE 500', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 54895, 2, 2018, 0),
(37, 'MINI', 'ImgCoches/Mini/MINI-Countryman.jpg', 'MINI Countryman', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 37994, 2, 2018, 0),
(38, 'Mitsubishi', 'ImgCoches/Mitsubishi/Mitsubishi-i-MiEV.jpg', 'Mitsubishi i-MiEV', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 50284, 2, 2018, 0),
(39, 'Mitsubishi', 'ImgCoches/Mitsubishi/Mitsubishi-Outlander-PHEV-2015.jpg', 'Mitsubishi Outlander PHEV 2015', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 42441, 2, 2018, 0),
(40, 'Mitsubishi', 'ImgCoches/Mitsubishi/Mitsubishi-Outlander-PHEV-2016.jpg', 'Mitsubishi Outlander PHEV 2016', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 46352, 2, 2018, 0),
(41, 'Mitsubishi', 'ImgCoches/Mitsubishi/Mitsubishi-Outlander-PHEV-2017.jpg', 'Mitsubishi Outlander PHEV 2017', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 49439, 2, 2018, 0),
(42, 'Nissan', 'ImgCoches/Nissan/Nissan-e-NV200.png', 'Nissan e-NV200', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 53141, 2, 2018, 0),
(43, 'Nissan', 'ImgCoches/Nissan/Nissan-e-NV200-Evalia.jpg', 'Nissan e-NV200 Evalia', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 22386, 2, 2018, 0),
(44, 'Nissan', 'ImgCoches/Nissan/Nissan-Leaf.jpg', 'Nissan Leaf', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 17508, 2, 2018, 0),
(45, 'Nissan', 'ImgCoches/Nissan/Nissan-Leaf-2018.jpg', 'Nissan Leaf 2018', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 45382, 2, 2018, 0),
(46, 'Opel', 'ImgCoches/Opel/Opel-Ampera.jpg', 'Opel Ampera', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 39389, 2, 2018, 0),
(47, 'Opel', 'ImgCoches/Opel/Opel-Ampera-e.jpg', 'Opel Ampera e-', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 45798, 2, 2018, 0),
(48, 'Peugeot', 'ImgCoches/Peugeot/Peugeot-iOn.jpg', 'Peugeot iOn', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 15823, 2, 2018, 0),
(49, 'Peugeot', 'ImgCoches/Peugeot/Peugeot-Partner-Electric.jpg', 'Peugeot Partner Electric', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 46722, 2, 2018, 0),
(50, 'Renault', 'ImgCoches/Renault/Renault-Fluence-Z.E.jpg', 'Renault Fluence Z.E', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 51143, 2, 2018, 0),
(51, 'Renault', 'ImgCoches/Renault/Renault-Kangoo-Z.E.jpg', 'Renault Kangoo ZE', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 20549, 2, 2018, 0),
(52, 'Renault', 'ImgCoches/Renault/Renault-Twizy.jpg', 'Renault Twizy', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 54317, 2, 2018, 0),
(53, 'Renault', 'ImgCoches/Renault/Renault-Zoe.jpg', 'Renault Zoe', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 34937, 2, 2018, 0),
(55, 'Toyota', 'ImgCoches/Toyota/Toyota-Prius-plug-in-hybrid.jpg', 'Toyota Prius plug-in hybrid', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 23865, 2, 2018, 0),
(56, 'Volkswagen', 'ImgCoches/Volkswagen/Volkswagen-e-Golf.jpg', 'Volkswagen e-Golf', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 34118, 2, 2018, 0),
(57, 'Volkswagen', 'ImgCoches/Volkswagen/Volkswagen-e-UP.jpg', 'Volkswagen e-UP', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 43999, 2, 2018, 0),
(58, 'Volkswagen', 'ImgCoches/Volkswagen/Volkswagen-Golf-GTE.jpg', 'Volkswagen Golf GTE', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 22639, 2, 2018, 0),
(60, 'Volvo', 'ImgCoches/Volvo/Volvo-V60-Plug-in-Hybrid.jpg', 'Volvo V60 Plug-in Hybrid', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 46199, 2, 2018, 0),
(61, 'Volvo', 'ImgCoches/Volvo/Volvo-XC90-T8-Twin-Engine.jpg', 'Volvo XC90 T8 Twin Engine', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 28080, 2, 2018, 0),
(70, 'Lexus', 'ImgCoches/Lexus/lexus ct.png', 'Lexus CT', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 26805, 2, 2018, 0),
(71, 'Lexus', 'ImgCoches/Lexus/lexus ls.jpg', 'lexus LS', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 3, 34782, 2, 2018, 0),
(72, 'Lexus', 'ImgCoches/Lexus/lexus gs.jpg', 'Lexus GS', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 38498, 2, 2018, 0),
(73, 'Lexus', 'ImgCoches/Lexus/lexus nx.jpg', 'Lexus NX', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 33142, 2, 2018, 0),
(74, 'Lexus', 'ImgCoches/Lexus/lexus rc.jpg', 'Lexus RC', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 35219, 2, 2018, 0),
(75, 'Toyota', 'ImgCoches/Toyota/Toyota Auris.jpg', 'Toyota Auris', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 1, 21667, 2, 2018, 0),
(77, 'Toyota', 'ImgCoches/Toyota/Toyota Yaris.jpg', 'Toyota Yaris', 'Morbi vitae dictum magna. Mauris placerat at magna vel elementum. Sed laoreet magna a nulla eleifend rhoncus. Nam at efficitur lorem. Suspendisse posuere placerat molestie. Vestibulum euismod dapibus sem quis pharetra. Mauris venenatis vel magna rutrum lobortis. Sed hendrerit lorem risus, sed congue urna feugiat et. Quisque consequat ullamcorper odio eget vestibulum. Phasellus vel est nunc. Pellentesque aliquet odio dolor, et suscipit nisl posuere id.', 2, 27678, 2, 2018, 0),
(78, 'Audi', 'ImgCoches/Audi/seat-leon-2013.jpg,', 'a3', 'ejasidjassdf', 23, 20000, 3, 1999, 214321);

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
-- Estructura de tabla para la tabla `tipo_combustible`
--

CREATE TABLE `tipo_combustible` (
  `codcombustible` int(11) NOT NULL,
  `combustible` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_combustible`
--

INSERT INTO `tipo_combustible` (`codcombustible`, `combustible`) VALUES
(2, 'electrico/hibrido\r\n'),
(3, 'diesel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codusuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `publicaciones` int(11) DEFAULT '0',
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codusuario`, `nombre`, `email`, `contraseña`, `publicaciones`, `telefono`) VALUES
(1, 'usuario', 'usuario', 'f8032d5cae3de20fcec8', 9, 0),
(2, 'ejemplo', 'ejemplo@ejemplo.com', 'ejemplo', 4, 0),
(3, 'enchufauto', 'enchufauto', '20enchufauto18', NULL, 0),
(17, 'asdasdasds', 'admin@admin.com', 'Ordenadorew23', -1, 0),
(19, 'illo', 'illo@gmail.com', 'Pruebadaw23', 0, 0),
(20, '01', '01@gmail.com', 'Hola0111', 0, 0),
(21, 'Feliduran', 'felidp8@gmail.com', 'Ordenador23', 0, 0),
(22, 'Feliciano DuráN post', 'ronald@malaga.es', 'Ordenador23', 0, 678840851),
(23, 'prueba3', 'prueba2@gmail.com', 'Prueba32018', 1, 678840851);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`codpublicacion`),
  ADD KEY `codigoUsuario` (`codusuario`),
  ADD KEY `codcombustible` (`codcombustible`);

--
-- Indices de la tabla `tipo_combustible`
--
ALTER TABLE `tipo_combustible`
  ADD PRIMARY KEY (`codcombustible`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `codpublicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `tipo_combustible`
--
ALTER TABLE `tipo_combustible`
  MODIFY `codcombustible` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`codusuario`) REFERENCES `usuarios` (`codusuario`),
  ADD CONSTRAINT `publicaciones_ibfk_2` FOREIGN KEY (`codcombustible`) REFERENCES `tipo_combustible` (`codcombustible`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
