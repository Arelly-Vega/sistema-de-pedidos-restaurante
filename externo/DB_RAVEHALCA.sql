create database pruebadb;

use pruebadb;

CREATE TABLE `categoriaproducto` (
  `id` int(11) NOT NULL,
  `nombrecategoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombreCliente` varchar(45) NOT NULL,
  `apellidoCliente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `comprobante` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `nombrecliente` varchar(50) NOT NULL,
  `apellidocliente` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `Metodo_pago` enum('Yape','Efectivo') NOT NULL,
  `hora_comprobante` time NOT NULL,
  `total_comprobante` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Detalle_Pedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `egreso` (
  `id` int(11) NOT NULL,
  `tipoEgreso` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `montoEgreso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `id_Producto` int(11) NOT NULL,
  `cantidad_disponible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `mesa` (
  `id` int(11) NOT NULL,
  `capacidadMesa` int(11) NOT NULL,
  `estado` enum('Activo','Baja') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `perfilusuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `distrito` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `id_Categoria_Producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` enum('Culminado','Insumo') NOT NULL,
  `precio` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `unidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` enum('Activo','Baja') NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `tipo_usuario_id` int(11) NOT NULL,
  `estado` enum('Activo','Baja') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_c` (`id_pedido`),
  ADD KEY `fk_user` (`id_usuario`);

--
-- Indices de la tabla `Detalle_Pedido`
--
ALTER TABLE `Detalle_Pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Producto` (`id_Producto`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Indices de la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarioid` (`usuario_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Categoria_Producto` (`id_Categoria_Producto`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipo_usuario` (`tipo_usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Detalle_Pedido`
--
ALTER TABLE `Detalle_Pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `egreso`
--
ALTER TABLE `egreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD CONSTRAINT `fk_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `fk_pedido_c` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `Detalle_Pedido`
--
ALTER TABLE `Detalle_Pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `Pedido` (`id`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `Producto` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `id_Producto` FOREIGN KEY (`id_Producto`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id`);

--
-- Filtros para la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `fk_usuarioid` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `id_Categoria_Producto` FOREIGN KEY (`id_Categoria_Producto`) REFERENCES `categoriaproducto` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`id`);
COMMIT;






INSERT INTO `categoriaproducto` (`id`, `nombrecategoria`) VALUES
(1, 'abarrote'),
(2, 'Fruta'),
(3, 'verdura'),
(4, 'embazado');

INSERT INTO `cliente` (`id`, `nombreCliente`, `apellidoCliente`) VALUES
(1, 'Jose', 'Rivas'),
(2, 'Arelly', 'Vega'),
(3, 'Elihel', 'Ramos'),
(4, 'Rafael', 'Medina'),
(5, 'Sarela', 'Callan'),
(6, 'SSSSS', 'Josefina'),
(14, 'mILUSK', 'Josefina');

INSERT INTO `comprobante` (`id`, `id_pedido`, `nombrecliente`, `apellidocliente`, `id_usuario`, `Metodo_pago`, `hora_comprobante`, `total_comprobante`) VALUES
(1, 3, 'Sarela', 'Callan', 1, 'Yape', '19:05:42', 23);

INSERT INTO `Detalle_Pedido` (`id`, `id_pedido`, `id_producto`, `cantidad`) VALUES
(3, 3, 1, 2),
(4, 4, 1, 2),
(5, 5, 9, 2),
(6, 7, 1, 1),
(7, 7, 2, 1);

INSERT INTO `egreso` (`id`, `tipoEgreso`, `descripcion`, `montoEgreso`) VALUES
(2, 'servicio', 'aaa', '345'),
(3, 'servicio', 'esta chido', '234');


INSERT INTO `inventario` (`id`, `id_Producto`, `cantidad_disponible`) VALUES
(1, 3, 12);


INSERT INTO `mesa` (`id`, `capacidadMesa`, `estado`) VALUES
(20, 9, 'Baja'),
(21, 4, 'Activo'),
(22, 8, 'Baja'),
(23, 8, 'Activo'),
(24, 6, 'Baja');


INSERT INTO `pedido` (`id`, `estado`, `hora`, `fecha`, `id_usuario`, `id_mesa`) VALUES
(3, 'Finalizado', '18:20:30', '2024-07-09', 2, 20),
(4, 'Finalizado', '16:44:42', '2024-07-10', 2, 22),
(5, 'Finalizado', '16:44:45', '2024-07-10', 8, 23),
(6, 'Finalizado', '16:44:45', '2024-07-21', 10, 24),
(7, 'Pendiente', '06:10:00', '2024-07-16', 3, 22);


INSERT INTO `perfilusuario` (`id`, `nombre`, `apellido`, `dni`, `nacionalidad`, `distrito`, `direccion`, `usuario_id`) VALUES
(1, 'Sarela Mabel', 'Callan Lopez', 85431243, 'Peruana', 'Chimbote', 'Meiggs, #223', 3),
(2, 'Arelly Fernanda', 'Vega Peche', 75156554, 'Peruana', 'Chimbote', 'Av. Arica #235', 1),
(3, 'Jose Alberto', 'Hurtado Rivas', 85431243, 'Peruana', 'Chimbote', 'Av. Pardo #453', 2);



INSERT INTO `producto` (`id`, `id_Categoria_Producto`, `nombre`, `estado`, `precio`) VALUES
(1, 1, 'Arroz', 'Culminado', 3.00),
(2, 3, 'Mayonesa', 'Culminado', 2.00),
(3, 1, 'sssss', 'Culminado', 23.00),
(6, 2, 'Habas', 'Insumo', 14.00),
(7, 4, 'AAAA', 'Insumo', 12.00),
(8, 2, 'Vainita', 'Culminado', 12.00),
(9, 2, 'Habas', 'Insumo', 23.00);


INSERT INTO `tipo_usuario` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Mozo'),
(3, 'Cajero'),
(4, 'Gerente');



INSERT INTO `usuario` (`id`, `username`, `email`, `password`, `tipo_usuario_id`, `estado`) VALUES
(1, 'Arelly', 'adm-arelly@utp.edu.pe', '1234', 1, 'Activo'),
(2, 'Jose', 'adm-jose@utp.edu.pe', '1234', 1, 'Baja'),
(3, 'Sarela', 'ger-sarela@utp.edu.pe', 'sarela123', 4, 'Baja'),
(7, 'Paul', 'ger-paul@utp.edu.pe', 'paul1234', 4, 'Activo'),
(8, 'Lala', 'ger-lala@utp.edu.pe', 'lala123', 4, 'Activo'),
(9, 'Lolo', 'ger-lolo@utp.edu.pe', 'lolo123', 4, 'Activo'),
(10, 'Laura', 'mzo-laura@utp.edu.pe', 'laura123', 2, 'Activo'),
(12, 'Abel', 'mzo-abel@utp.edu.pe', 'abel123', 2, 'Activo'),
(16, 'Yampier', 'yampier675@gmail.com', '1234', 3, 'Activo'),
(18, 'MabelCallan', 'mabelcallan17@gmail.com', '1234', 3, 'Activo'),
(19, 'Jancel', 'gamerjohan25@gmail.com', '1234567', 3, 'Activo');


