-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-09-2023 a las 04:50:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mensajeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id_chat` int(11) NOT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `nomnbre1` varchar(30) DEFAULT NULL,
  `nombre2` varchar(30) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id_chat`, `id_tipo`, `nomnbre1`, `nombre2`, `fecha`, `estado`) VALUES
(1, 2, 'grupo1', 'grupo1', '2023-03-02 00:37:18', 1),
(2, 1, 'ilse', 'angel', '2023-03-02 00:37:18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_usuarios`
--

CREATE TABLE `chat_usuarios` (
  `id_cu` int(11) NOT NULL,
  `id_chat` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chat_usuarios`
--

INSERT INTO `chat_usuarios` (`id_cu`, `id_chat`, `id_usuario`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `id_destacado` int(11) NOT NULL,
  `id_mensaje` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`id_destacado`, `id_mensaje`, `id_usuario`) VALUES
(1, 5, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(1, 'normal'),
(2, 'archivado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id_estatus` int(11) NOT NULL,
  `estatus` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id_estatus`, `estatus`) VALUES
(1, 'enviado'),
(2, 'leido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensaje` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_chat` int(11) DEFAULT NULL,
  `mensaje` varchar(1000) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_mensaje`, `id_usuario`, `id_chat`, `mensaje`, `fecha`, `estatus`) VALUES
(1, 1, 1, 'Que onda chicos como andan?', '2023-03-02 00:44:39', 1),
(2, 2, 1, 'hola angel muy bien y tu?', '2023-03-02 00:44:39', 1),
(3, 3, 1, 'Hola angel soy diego, bien gracias', '2023-03-02 00:45:48', 1),
(4, 1, 1, 'que bueno me da gusto que esten bien', '2023-03-02 00:45:48', 1),
(5, 1, 2, 'Hola ilse como estas?', '2023-03-02 00:48:05', 1),
(6, 2, 2, 'hola angel muy bien gracias', '2023-03-02 00:48:05', 1),
(7, 1, 2, 'que bueno me da gusto, oyes quieres ir al cine?', '2023-03-02 00:48:57', 1),
(8, 2, 2, 'claro, nos vemos a las 6?', '2023-03-02 00:48:57', 1),
(9, 1, 2, 'sip, me parece bien nos vemos en tu casa entonces bye', '2023-03-02 00:49:51', 1),
(10, 2, 2, 'esta bien aqui nos vemos bye', '2023-03-02 00:49:51', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `nombre`, `apellido`, `info`, `correo`) VALUES
(1, 'angel', 'castañeda', 'codigo', 'angel@gmail.com'),
(2, 'marina', 'macias', 'La unica en la que puedo confiar', 'marina@gmail.com'),
(3, 'diego', 'gaytan', 'Viva la vida', 'diego@gmail.com'),
(4, 'miguel', 'castañeda', 'futbolista de corazon', 'castañeda@gmail.com'),
(5, 'diana', 'gabriela', 'Disponible', 'diana@gmail.com'),
(42, 'Juan Angel', 'Castañeda Chavez', ' ¡Hola! Estoy usando ChatPhone.', 'herbstluftwm.28@gmail.com'),
(43, 'Diana Gabriela', 'Huerta Bailon', ' ¡Hola! Estoy usando ChatPhone.', 'dianagaby@gmail.com'),
(44, 'Juan Miguel', 'Castañeda Ontiveros', ' ¡Hola! Estoy usando ChatPhone.', 'miguel@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_chat`
--

CREATE TABLE `tipo_chat` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_chat`
--

INSERT INTO `tipo_chat` (`id_tipo`, `tipo`) VALUES
(1, 'privado'),
(2, 'grupo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `contrasena` varchar(1000) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `codigo_reset_passwd` int(11) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `telefono`, `contrasena`, `id_persona`, `codigo_reset_passwd`, `imagen`) VALUES
(1, '8714428495', 'angel', 1, NULL, NULL),
(2, '8715534757', 'marina', 2, NULL, NULL),
(3, '8714162929', 'diego', 3, NULL, NULL),
(4, '8713644933', 'miguel', 4, NULL, NULL),
(5, '8711493511', 'diana', 5, NULL, NULL),
(28, '0', '$2y$10$QqdL573kVYf6hOpZPEOg6uEhvcrK.LzgbR/e09kvREnYOx/658sJm', 42, 132634, 'icon.png'),
(32, '1111111111', '$2y$10$IEIJNEiQDWlzqxl24hkcYuwMccqYwSLKzOUzfF/xbSeBBAHVslXvq', 43, NULL, '342896034_813338296389575_7620834037631823908_n.jpg'),
(33, '2222222222', '$2y$10$ZHIPIHLvo9I0u6dmzUKR3u4NcWWF6IXJ1XWqZsAQLxLs5gnM0YJFW', 44, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `chat_usuarios`
--
ALTER TABLE `chat_usuarios`
  ADD PRIMARY KEY (`id_cu`),
  ADD KEY `id_chat` (`id_chat`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`id_destacado`),
  ADD KEY `id_mensaje` (`id_mensaje`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id_estatus`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_chat` (`id_chat`),
  ADD KEY `estatus` (`estatus`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `tipo_chat`
--
ALTER TABLE `tipo_chat`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_persona` (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `chat_usuarios`
--
ALTER TABLE `chat_usuarios`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `id_destacado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id_estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tipo_chat`
--
ALTER TABLE `tipo_chat`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_chat` (`id_tipo`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`estado`) REFERENCES `estado` (`id_estado`);

--
-- Filtros para la tabla `chat_usuarios`
--
ALTER TABLE `chat_usuarios`
  ADD CONSTRAINT `chat_usuarios_ibfk_1` FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id_chat`),
  ADD CONSTRAINT `chat_usuarios_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD CONSTRAINT `destacados_ibfk_1` FOREIGN KEY (`id_mensaje`) REFERENCES `mensajes` (`id_mensaje`),
  ADD CONSTRAINT `destacados_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id_chat`),
  ADD CONSTRAINT `mensajes_ibfk_3` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`id_estatus`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
