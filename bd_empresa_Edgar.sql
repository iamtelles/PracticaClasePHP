DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `id_puesto` int DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_puesto_puesto_empleado_idx` (`id_puesto`),
  CONSTRAINT `id_puesto_puesto_empleado` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

UPDATE `empleados`
SET 
  `nombres` = 'Ana María',
  `apellidos` = 'Reyes',
  `direccion` = 'Calle Nueva 123',
  `telefono` = '555-5555'
WHERE `id_empleado` = 14;

UPDATE `empleados`
SET 
  `nombres` = 'Sofía Isabel',
  `apellidos` = 'Gómez',
  `direccion` = 'Avenida Principal 456',
  `telefono` = '666-6666'
WHERE `id_empleado` = 17;

UPDATE `empleados`
SET 
  `nombres` = 'Fernando Antonio',
  `apellidos` = 'Torres',
  `direccion` = 'Carrera Central 987',
  `telefono` = '777-7777'
WHERE `id_empleado` = 18;

DROP TABLE IF EXISTS `puestos`;
CREATE TABLE `puestos` (
  `id_puesto` int NOT NULL AUTO_INCREMENT,
  `puesto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

UPDATE `puestos`
SET 
  `puesto` = 'Analista de Marketing Senior'
WHERE `id_puesto` = 2;

UPDATE `puestos`
SET 
  `puesto` = 'Desarrollador de Software Senior'
WHERE `id_puesto` = 3;

