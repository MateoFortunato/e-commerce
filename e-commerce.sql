-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2023 a las 23:08:27
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
-- Base de datos: `e-commerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` tinyint(4) NOT NULL DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `id_categoria`, `activo`) VALUES
(1, 'Camiseta Boca Juniors Temporada 22/23', '<b>UNA CAMISETA PARA HINCHAS DEL CLUB, INSPIRADA EN LA IDENTIDAD DEL INOLVIDABLE EQUIPO CAMPEÓN 1992 Y LA PASIÓN DE LA HINCHADA XENEIZE</b><br>\n<br>\n<b>Detalles:</b>\n<br>\n<li>Corte clásico</li>\n<li>Cuello en V acanalado</li>\n<li>Tecnología de absorción AEROREADY</li>\n<li>Escudo de Boca Juniors tejido</li>\n<br>\n', 35000.00, 10, 1, 1),
(2, 'Remera Argentina campeón Qatar 2022', '<br><b>¡DALE CAMPEÓN! UNA REMERA PARA FESTEJAR LA TERCERA, ADENTRO Y AFUERA DE LA CANCHA</b><br>\n<br>\n<b>Descripción:</b>\n<br>\n<p>100% Argentina. Remera estampada para seguir festejando a la selección en todo momento y lugar. El tejido de algodón suave te envuelve con comodidad y el logo adidas con los colores de la bandera + el escudo de la AFA + la tres estrellas, dejan bien en claro a qué selección apoyás.</p>\n<b>Detalles:</b><br>\n<br>\n<li>Corte clásico</li>\n<li>Cuello redondo acanalado</li>\n<li>Color base: blanco</li>\n<br>', 20000.00, 5, 1, 1),
(3, 'Camiseta uniforme titular de Real Madrid 22/23', '<b>UNA CAMISETA DE TITULAR DEL REAL MADRID HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Detalles:</b>\r\n<br>\r\n<li>Ajuste clásico</li>\r\n<li>Cuello de chomba acanalado con cierre de botones</li>\r\n<li>Tecnología de absorción AEROREADY</li>\r\n<li>Escudo del Real Madrid tejido</li>\r\n<br>', 22000.00, 25, 1, 1),
(4, 'Camiseta oficial titular Juventus 22/23', '<b>UNA CAMISETA LIGERA QUE REFLEJA EL ADN DEL CLUB, HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Detalles:</b>\r\n<br>\r\n<li>Ajuste clásico</li>\r\n<li>Cuello redondo acanalado</li>\r\n<li>Escudo de la Juventus termotransferido</li>\r\n<li>Puños acanalados</li>\r\n<br>', 35000.00, 35, 1, 1),
(5, 'Camiseta titular Argentina 3 estrellas 2022', '<br><b>CELEBRÁ LA VICTORIA CON ESTA CAMISETA HECHA CON UNA MEZCLA DE MATERIALES RECICLADOS Y RENOVABLES.</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Vestite como un campeón. A lo largo de la historia del fútbol, la Albiceleste ha representado un juego y un compromiso incomparables. Diseñada para hinchas, ofrece comodidad en todo momento gracias a su tejido suave con tecnología de absorción AEROREADY. La insignia de campeón del Mundo y la tercera estrella sobre el escudo confirman una victoria memorable.</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Ajuste ceñido</li>\r\n<li>Cuello redondo acanalado</li>\r\n<li>Puños acanalados</li>\r\n<li>Escudo de Argentina tejido</li>\r\n<br>', 25000.00, 5, 1, 1),
(6, 'Camiseta de titular Bayern Munchen 22/23', '<br><b>UNA CAMISETA DE TITULAR DEL FC BAYERN CREADA PARA HINCHAS Y HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Rojo, blanco y apuntando a la victoria. Los colores clásicos del FC Bayern convergen en el frente de esta disruptiva camiseta de titular de adidas. Creada para mantener cómodos a los hinchas del club, combina paneles de malla con tecnología de absorción AEROREADY. Viene con un bordado del escudo del club y el lema \"Mia san mia\" para mostrar tu orgullo.</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Corte clásico</li>\r\n<li>Cuello redondo acanalado</li>\r\n<li>Escudo del FC Bayern bordado</li>\r\n<br>', 22000.00, 10, 1, 1),
(7, 'Camiseta titular River Plate 22/23', '<br><b>LA NUEVA CAMISETA DE RIVER PLATE, HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>La evolución de un ícono. Esta camiseta cuenta con un dinámico estampado dentro de su clásica banda roja. El tejido absorbente AEROREADY y los paneles en la malla se encargan de mantenerte cómodo.</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Ajuste clásico</li>\r\n<li>Cuello en v acanalado</li>\r\n<li>Escudo de River Plate tejido</li>\r\n<br>', 22000.00, 50, 1, 1),
(8, 'Camiseta River Plate suplente 22/23', '<br><b>UNA CAMISETA DE ALTO RENDIMIENTO PARA HINCHAS DE RIVER PLATE, HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Creados para hacer historia. La historia de River Plate cobra vida en esta camiseta de juego. El diseño difuminado actualiza el uniforme alternativo de 1985 con un toque moderno. La tecnología HEAT.RDY mantiene tu cuerpo seco cuando la temperatura sube dentro o fuera del campo. La inscripción \"Grandeza\" en la nuca te recuerda la importancia de valorar el pasado en el camino hacia un futuro mejor.\r\n</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Corte clásico</li>\r\n<li>Cuello en v acanalado</li>\r\n<li>Escudo de River Plate termosellado</li>\r\n<br>', 35000.00, 30, 1, 1),
(9, 'Tercera camiseta Man. United 22/23', '<br><b>UNA CAMISETA DEL MAN UTD DISEÑADA PARA HINCHAS Y HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Creada para llamar la atención en los estadios de los rivales. Esta camiseta del tercer uniforme adidas Manchester United destaca los emocionantes desempeños de suplente con colores llamativos y un estampado dinámico inspirado en el estilo de los 90. El escudo del club bordado en el pecho se destaca tanto en el uniforme de titular como en el de suplente. Incorpora tecnología de absorción AEROREADY que mantiene los hinchas de fútbol siempre cómodos.</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Corte clásico</li>\r\n<li>Cuello redondo acanalado</li>\r\n<li>Escudo bordado del Manchester United</li>\r\n<br>', 22000.00, 55, 1, 1),
(10, 'Camiseta suplente Real Madrid 21/22', '<br><b>UNA CAMISETA DE VISITANTE INSPIRADA EN EL GRAFITI Y CREADA PARA LOS HINCHAS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Las superestrellas del Real Madrid no son los únicos artistas que hacen su trabajo en la capital de España. Esta camiseta de fútbol adidas se inspira en los graffitis que imprimen color a las calles de la ciudad. Detalles sutiles y un logo en la nuca le rinden homenaje. La tecnología de absorción AEROREADY y el tejido suave y cómodo se combinan para mantenerte cómodo.</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Corte clásico</li>\r\n<li>Cuello en v acanalado</li>\r\n<li>Escudo bordado del Real Madrid</li>\r\n<br>', 17000.00, 5, 1, 1),
(11, 'Camiseta suplente Boca Juniors 22/23', '<br><b>LA CAMISETA ALTERNATIVA PARA USAR MIENTRAS JUGÁS, HECHA PARCIALMENTE CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Un verdadero clásico. Una revestimiento a dos tonos en el pecho y un escudo de los 80 se destacan sobre el fondo blanco de esta camiseta de suplente adidas Boca Juniors. Creada para un alto rendimiento en la cancha, combina tecnología de ventilación HEAT.RDY con detalles ligeros. En la parte posterior del cuello el escudo actual del club le muestra a todos que lo que sentís por el club perdura en el tiempo.</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Ajuste clásico</li>\r\n<li>Cuello redondo acanalado</li>\r\n<li>Escudo de Boca Juniors termotransferido</li>\r\n<br>', 35000.00, 10, 1, 1),
(12, 'Camiseta arquero Argentina 1990 ICON', '<br><b>UNA CAMISETA DE ARGENTINA QUE EVOCA UN ÍCONO, HECHA CON MATERIALES RECICLADOS</b><br>\r\n<br>\r\n<b>Descripción:</b>\r\n<br>\r\n<p>Para los momentos más importantes. Esta camiseta adidas se inspira en la camiseta de arquero que vistió el arquero de Argentina en el torneo más icónico del fútbol en 1990. Para algunos, esas mangas largas de color negro y los estampados coloridos tipo mosaico evocan memorias de atajadas de penales y un equipo inolvidable. Para otros, vestir este top holgado será experimentar comodidad y apoyar a una nueva generación de jugadores.\r\n</p>\r\n<b>Detalles:</b><br>\r\n<br>\r\n<li>Ajuste holgado</li>\r\n<li>Cuello redondo acanalado</li>\r\n<li>Escudo de la Selección Argentina tejido</li>\r\n<br>', 35000.00, 10, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
