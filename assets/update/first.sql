DROP TABLE IF EXISTS `sucursales`;
CREATE TABLE `sucursales` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  `pfisico` varchar(64) DEFAULT NULL,
  `idtipoabono` int(11) DEFAULT NULL,
  `idtipofactura` int(11) DEFAULT NULL,
  `idtiponota` int(11) DEFAULT NULL,
  `cedula` varchar(32) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `encabezado` varchar(2) DEFAULT NULL,
  `idtipocliente` tinyint(3) DEFAULT '1',
  `isinventariado` tinyint(2) DEFAULT '1',
  `p12` varchar(64) DEFAULT NULL,
  `pass_n` varchar(64) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `fastshow` tinyint(3) DEFAULT '0',
  `isPrueba` tinyint(2) DEFAULT '1',
  `printSale` tinyint(2) DEFAULT '0',
  `user_atv` varchar(100) DEFAULT NULL,
  `pass_atv` varchar(64) DEFAULT NULL,
  `idtiponegocio` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `ajustessucursales`;
CREATE TABLE `ajustessucursales` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `idsucursal` int(11) DEFAULT NULL,
  `pv` tinyint(2) DEFAULT NULL,
  `cbarras` tinyint(2) DEFAULT NULL,
  `impresora` varchar(100) DEFAULT NULL,
  `margenes` tinyint(2) DEFAULT NULL,
  `recibo` tinyint(2) DEFAULT 0,
  `punitventa` tinyint(2) DEFAULT 0,
  `iniciofact` tinyint(2) DEFAULT 0,
  `isivi` tinyint(2) DEFAULT 1,
  `tcierre` tinyint(2) DEFAULT 0,
  `rcaja` tinyint(2) DEFAULT 0,
  `msj1` varchar(20) DEFAULT '',
  `msj2` varchar(20) DEFAULT '',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `idTipoUsuario` int(3) unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `cedula` varchar(25) NOT NULL,
  `mail` varchar(64) DEFAULT NULL,
  `bcambioPSSW` tinyint(2) unsigned DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `limite1` time NOT NULL DEFAULT '07:00:00',
  `limite2` time NOT NULL DEFAULT '17:00:00',
  `idsucursal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `tipousuarios`;
CREATE TABLE `tipousuarios` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `defecto` tinyint(1) DEFAULT '0',
  `bincierre` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `monedas`;

CREATE TABLE `monedas` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `simbolo` varchar(2) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `principal` tinyint(4) NOT NULL,
  `wsdl` int(11) NOT NULL DEFAULT '0',
  `suma` decimal(7,2) DEFAULT '0.00',
  `codigo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `wsdls`;

CREATE TABLE `wsdls` (
  `wsid` int(11) NOT NULL AUTO_INCREMENT,
  `wsurl` varchar(255) DEFAULT NULL,
  `xmlsen` varchar(255) NOT NULL,
  `xmlreq` varchar(100) NOT NULL,
  `obtener` varchar(255) DEFAULT NULL,
  `wsname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `tipopagos`;

CREATE TABLE `tipopagos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `bancos` tinyint(2) NOT NULL DEFAULT '0',
  `extra` varchar(32) DEFAULT NULL,
  `regex` varchar(100) DEFAULT NULL,
  `principal` tinyint(2) DEFAULT NULL,
  `icono` varchar(45) DEFAULT NULL,
  `idhacienda` int(3) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `tipousuarios`;

CREATE TABLE `tipousuarios` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `defecto` tinyint(1) DEFAULT '0',
  `bincierre` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `estadoclientes`;

CREATE TABLE `estadoclientes` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `inventarios`;

CREATE TABLE `inventarios` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `idbodega` int(5) DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `impuestos`;

CREATE TABLE `impuestos` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `resumen` varchar(6) DEFAULT NULL,
  `valor` decimal(6,2) NOT NULL,
  `idhacienda` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `defectoimpuestos`;

CREATE TABLE `defectoimpuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfila` int(11) NOT NULL,
  `idtabla` int(11) NOT NULL,
  `idimpuesto` tinyint(2) NOT NULL,
  `exoneracion` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `cuentas`;

CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `deep` tinyint(3) DEFAULT NULL,
  `valor` decimal(11,2) DEFAULT '0.00',
  `ispadre` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `unidades`;

CREATE TABLE `unidades` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `simbolo` varchar(45) DEFAULT NULL,
  `idtipo` int(3) DEFAULT NULL,
  `idunidad` int(11) DEFAULT '0',
  `cantidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `bodegas`;

CREATE TABLE `bodegas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `consecutivos`;

CREATE TABLE `consecutivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsucursal` varchar(20) DEFAULT NULL,
  `consecutivo` int(11) DEFAULT '0',
  `consecutivo1` int(11) DEFAULT '0',
  `consecutivo2` int(11) DEFAULT '0',
  `consecutivo3` int(11) DEFAULT '0',
  `consecutivo4` int(11) DEFAULT '0',
  `consecutivo5` int(11) DEFAULT '0',
  `consecutivo6` int(11) DEFAULT '0',
  `ec1` int(11) DEFAULT '0',
  `ec2` int(11) DEFAULT '0',
  `ec3` int(11) DEFAULT '0',
  `ec4` int(11) DEFAULT '0',
  `ec5` int(11) DEFAULT '0',
  `ec6` int(11) DEFAULT '0',
  `ec7` int(11) DEFAULT '0',
  `devoluciones` int(11) DEFAULT '0',
  `aceptacion` int(11) DEFAULT '0',
  `aceparcial` int(11) DEFAULT '0',
  `rechazo` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `ajustes`;

CREATE TABLE `ajustes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(20) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `unidadeshacienda`;

CREATE TABLE `unidadeshacienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(12) DEFAULT NULL,
  `descripcion` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO ajustes
(id, descr, valor)
VALUES(7, 'Cambio de Dia', '1'),(8, 'fecha_inicio_fiscal', '2017-10-01'),(9, 'fecha_final_fiscal', '2018-09-30'),(10, 'descuentoVenta', '1'),(11, 'comision_banco', '12'),(12, 'smtp', 'correos.logintechcr@gmail.com'),(13, 'smtpp', 'D2CE9F4A1FBB637E885272B590F34016'),(14, 'smtphost', 'ssl://smtp.gmail.com'),(15, 'smtpport', '465'),(18, 'comisiondatafono', '4'),(19, 'comisionvend', '10'),(20, 'comisiontrans', '$3'),(21, 'maxvarprod', '5'),(22, 'minvarprod', '5'),(23, 'Inv. Lab. Variedades', '11'),(25, 'akey', 'dce1'),(26, 'finicio', '2017-12-01'),(27, 'spago', '2018-01-15'),(28, 'tinicio', '0'),(29, 'dpago', '1'),(30, 'sysmod', '8421BEED24CDE7B3329DB05F79E4F41F'),(31, 'tsis', '1'),(32, 'update', '0'),(33, 'rfe', 'https://sistema.logintechcr.com/wsdlServer.php'),(34, 'fekey', '12305681');

INSERT INTO sucursales (id, nombre, idusuario, pfisico, idtipoabono, idtipofactura, idtiponota, cedula, logo, encabezado, idtipocliente, isinventariado, p12, pass_n, idsucursal, fastshow, isPrueba, printSale, user_atv, pass_atv, idtiponegocio) VALUES(0, 'LOGIN TECHNOLOGIES S.A', 1, 'LOGINTECH', 1, 1, 1, '3-101-697761', '../assets/img/logo.png', '', 2, 1, 'assets/p12/310169776129.p12', '6969', NULL, 1, 1, 0, 'cpj-3-101-697761@stag.comprobanteselectronicos.go.cr', 'l_?@Wsh%v[A*^0]p.W%b', 0);
UPDATE sucursales set id = 0 where id = 1;
alter table sucursales auto_increment 1;

insert into consecutivos(idsucursal) values(0);

INSERT INTO usuarios (id, `user`, idTipoUsuario, nombre, clave, cedula, mail, bcambioPSSW, codigo, limite1, limite2, idsucursal) VALUES(1, 'sadmin', 1, 'Super Administrador', '2609e702ef61cc25826436e94d2cbe11', '202220222', 'info@logintechcr.com', 0, NULL, '00:00:00', '00:00:00', '-1'), (2, 'admin', 1, 'Logintechcr', '2609e702ef61cc25826436e94d2cbe11', '123456789', 'info@logintechcr.com', 0, '', '00:00:00', '00:00:00', '-1');

INSERT INTO monedas VALUES(1, 'Colones', '¢', 1.00, 1, 0, 0.00, 'CRC'),(2, 'Dolares', '$', 560.46, 0, 1, 0.00, 'USD');

INSERT INTO wsdls (wsid, wsurl, xmlsen, xmlreq, obtener, wsname) VALUES(1, 'http://indicadoreseconomicos.bccr.fi.cr/indicadoreseconomicos/WebServices/wsIndicadoresEconomicos.asmx?WSDL', 'ObtenerIndicadoresEconomicosXML', 'ObtenerIndicadoresEconomicosXMLResult', 'INGC011_CAT_INDICADORECONOMIC,NUM_VALOR', 'Banco Central CR Venta'),(2, 'http://indicadoreseconomicos.bccr.fi.cr/indicadoreseconomicos/WebServices/wsIndicadoresEconomicos.asmx?WSDL', 'ObtenerIndicadoresEconomicosXML', 'ObtenerIndicadoresEconomicosXMLResult', 'INGC011_CAT_INDICADORECONOMIC,NUM_VALOR', 'Banco Central CR Compra');

INSERT INTO tipopagos (id, nombre, bancos, extra, regex, principal, icono, idhacienda) VALUES(1, 'Efectivo', 4, NULL, NULL, 1, NULL, 1), (2, 'Tarjeta', 2, 'Ultimos 4 dígitos', '([0-9]{4})', 0, '', 2), (3, 'Deposito', 1, 'Numero de documento', NULL, 0, '', 4), (4, 'Cheque', 0, 'Numero de referencia', NULL, 0, '', 3),(5, 'Mixto', 5, NULL, NULL, 0, NULL, 99);

INSERT INTO tipousuarios (id, nombre, defecto, bincierre) VALUES(1, 'Administrador', 1, 1);INSERT INTO tipousuarios (id, nombre, defecto, bincierre) VALUES(2, 'Servicio Profesional', 0, 0);INSERT INTO tipousuarios (id, nombre, defecto, bincierre) VALUES(3, 'Denegado', 0, 0);

INSERT INTO estadoclientes (id, nombre) VALUES(1, 'Activo');INSERT INTO estadoclientes (id, nombre) VALUES(0, 'Inactivo');

INSERT INTO bodegas values(1,'Principal',-1);
INSERT INTO inventarios(id, nombre, idbodega, idcuenta, idsucursal) values (1, 'Insumos', 1, 50, -1),(2, 'Gastos', 1, 47, -1),(5, 'Devoluciones', 1, 0, -1),(6, 'Producto Venta', 1, 14, -1),(8, 'Activos', 1, 48, -1),(9,'Mal Estado', 1, 48, -1);

INSERT INTO impuestos (id, nombre, resumen, valor, idhacienda) VALUES(1, 'Impuesto de Venta', 'I.M.V', 13.00, 1);

INSERT INTO defectoimpuestos(id, idfila, idtabla, idimpuesto, exoneracion) VALUES(1, 0, 11, 1, 0.00);

INSERT INTO cuentas
(id, idsubcuenta, nombre, numero, deep, valor, ispadre) VALUES
(1, 0, 'Activos', '1', 1, -944269.60, 1),
(2, 0, 'Costos', '5', 1, -161869.60, 1),
(3, 0, 'Gastos', '4', 1, 1000.00, 1),
(4, 0, 'Ingresos', '3', 1, 0.00, 1),
(5, 0, 'Pasivos', '2', 1, 0.00, 1),
(6, 0, 'Patrimonio', '6', 1, 0.00, 1),
(7, 1, 'Circulante', '11', 2, -945269.60, 1),
(8, 7, 'Efectivo', '1101', 3, 0.00, 1),
(9, 8, 'Cajas', '110101', 4, 0.00, 1),
(10, 9, 'Caja Chica', '11010101', 5, 0.00, 0),
(11, 7, 'Cuentas', '1108', 3, 0.00, 1),
(12, 11, 'Cuentas por Cobrar', '110801', 4, 0.00, 0),
(13, 1, 'Inventarios', '12', 2, 1000.00, 1),
(14, 13, 'Producto a la Venta', '1201', 3, 1000.00, 0),
(15, 4, 'Ventas', '31', 2, 0.00, 0),
(18, 4, 'Servicios', '32', 2, 0.00, 1),
(19, 18, 'Venta de Servicios', '3201', 3, 0.00, 0),
(20, 5, 'Impuestos', '21', 2, 0.00, 1),
(21, 7, 'Bancos', '1103', 3, -945269.60, 1),
(22, 7, 'Depreciación Acumulada', '1104', 3, 0.00, 0),
(23, 3, 'Descuentos', '43', 2, 0.00, 1),
(24, 20, 'IMV', '2101', 3, 0.00, 0),
(25, 4, 'Fletes', '33', 2, 0.00, 1),
(26, 7, 'Ajustes', '1107', 3, 0.00, 0),
(27, 5, 'Cuentas', '22', 2, 0.00, 1),
(28, 27, 'Cuentas por Pagar', '2201', 3, 0.00, 0),
(29, 2, 'Ventas', '51', 2, -161869.60, 1),
(30, 29, 'Costo de Venta', '5101', 3, -161869.60, 0),
(32, 23, 'Descuentos Ventas', '4301', 3, 0.00, 0),
(34, 25, 'Ingreso por Fletes', '3301', 3, 0.00, 0),
(35, 27, 'Comisiones por Pagar', '2202', 3, 0.00, 1),
(36, 43, 'Comisión Bancaria', '4201', 3, 0.00, 0),
(37, 35, 'Comisión Vendedores', '220201', 4, 0.00, 0),
(38, 21, 'Bancos General', '110302', 4, -945269.60, 0),
(42, 3, 'Gasto Administrativo', '41', 2, 0.00, 1),
(43, 3, 'Gasto General', '42', 2, 1000.00, 1),
(46, 43, 'Gasto por Compra', '4202', 3, 1000.00, 0),
(47, 13, 'Productos Administrativos', '1203', 3, 0.00, 0),
(52, 49, 'Servicios', '5203', 3, 0.00, 1),
(57, 5, 'Documentos por Pagar', '23', 2, 0.00, 1);

INSERT INTO unidades (id, nombre, simbolo, idtipo, idunidad, cantidad) VALUES
(1, 'Unidad', 'un', 3, 0, '1'),
(2, 'Kilogramos', 'kg', 1, 3, '1000'),
(3, 'Gramos', 'g', 1, 0, '1'),
(4, 'Miligramos', 'mg', 1, 3, '0.001'),
(6, 'Litros', 'L', 1, 0, '1'),
(7, 'Mililitros', 'ml', 1, 6, '0.001'),
(8, 'Metros', 'm', 1, 0, '1'),
(9, 'Centimetro', 'cm', 1, 8, '0.01'),
(10, 'Minutos', 'min', 2, 0, '1'),
(11, 'Horas', 'hrs', 2, 0, '60'),
(12, 'Semanas', 'semanas', 2, 0, '168'),
(13, 'Cajas', 'cajas', 3, 1, '0');

INSERT INTO unidadeshacienda(id, valor, descripcion) VALUES
(1, 'Sp', 'Servicios Profesionales'),(2, 'm', 'Metro'),(3, 'kg', 'Kilogramo'),(4, 's', 'Segundo'),(5, 'A', 'Ampere'),(6, 'K', 'Kelvin'),(7, 'mol', 'Mol'),(8, 'cd', 'Candela'),(9, 'm²', 'metro cuadrado'),(10, 'm³', 'metro cúbico'),(11, 'm/s', 'metro por segundo'),(12, 'm/s²', 'metro por segundo cuadrado'),(13, '1/m', '1 por metro'),(14, 'kg/m³', 'kilogramo por metro cúbico'),(15, 'A/m²', 'ampere por metro cuadrado'),(16, 'A/m', 'ampere por metro'),(17, 'mol/m³', 'mol por metro cúbico'),(18, 'cd/m²', 'candela por metro cuadrado'),(19, 'rad', 'radián'),(20, 'sr', 'estereorradián'),(21, 'Hz', 'hertz'),(22, 'N', 'newton'),(23, 'Pa', 'pascal'),(24, 'J', 'Joule'),(25, 'W', 'Watt'),(26, 'C', 'coulomb'),(27, 'V', 'volt'),(28, 'F', 'farad'),(29, 'Ω', 'ohm'),(30, 'S', 'siemens'),(31, 'Wb', 'weber'),(32, 'T', 'tesla'),(33, 'H', 'henry'),(34, '°C', 'grado Celsius'),(35, 'lm', 'lumen'),(36, 'lx', 'lux'),(37, 'Bq', 'Becquerel'),(38, 'Gy', 'gray'),(39, 'Sv', 'sievert'),(40, 'kat', 'katal'),(41, 'Pa·s', 'pascal segundo'),(42, 'N·m', 'newton metro'),(43, 'N/m', 'newton por metro'),(44, 'rad/s', 'radián por segundo'),(45, 'rad/s²', 'radián por segundo cuadrado'),(46, 'W/m²', 'watt por metro cuadrado'),(47, 'J/K', 'joule por kelvin'),(48, 'J/(kg·K)', 'joule por kilogramo kelvin'),(49, 'J/kg', 'joulepor kilogramo'),(50, 'W/(m·K)', 'watt por metro kevin'),(51, 'J/m³', 'joule por metro cúbico'),(52, 'V/m', 'volt por metro'),(53, 'C/m³', 'coulomb por metro cúbico'),(54, 'C/m²', 'coulomb por metro cuadrado'),(55, 'F/m', 'farad por metro'),(56, 'H/m', 'henry por metro'),(57, 'J/mol', 'joule por mol'),(58, 'J/(mol·K)', 'joule por mol kelvin'),(59, 'C/kg', 'coulomb por kilogramo'),(60, 'Gy/s', 'gray por segundo'),(61, 'W/sr', 'watt por estereorradián'),(62, 'W/(m²·sr)', 'watt por metro cuadrado'),(63, 'kat/m³', 'katal por metro cúbico'),(64, 'min', 'minuto'),(65, 'h', 'hora'),(66, 'd', 'día'),(67, 'º', 'grado'),(68, '´', 'minuto'),(69, '´´', 'segundo'),(70, 'L', 'litro'),(71, 't', 'tonelada'),(72, 'Np', 'neper'),(73, 'B', 'bel'),(74, 'eV', 'electronvolt'),(75, 'u', 'unidad de masa atómica unificada'),(76, 'ua', 'unidad astronómica'),(77, 'Unid', 'Unidad'),(78, 'Gal', 'Galón'),(79, 'g', 'Gramo'),(80, 'Km', 'Kilometro'),(81, 'ln', 'pulgada'),(82, 'cm', 'centímetro'),(83, 'mL', 'mililitro'),(84, 'mm', 'Milímetro'),(85, 'Oz', 'Onzas');

INSERT INTO ajustessucursales
(idsucursal, pv, cbarras, impresora, margenes, recibo, punitventa, iniciofact, isivi)
VALUES(0, 1, 0, NULL, 0, 0, 0, 0, 1);

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `codigo` int(5) unsigned NOT NULL,
  `href` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER permisos_AFTER_INSERT  AFTER INSERT ON permisos FOR EACH ROW BEGIN
  insert into permisosusuarios 
  select null,new.id,a.id,if(a.idTipoUsuario = 1,1,3) from usuarios a;
  
  insert into permisostipousuario
  select null,new.id,a.id,if(a.id = 1,1,3) from tipousuarios a;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `permisosCliente`
--

DROP TABLE IF EXISTS `permisosCliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisosCliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `codigo` int(5) unsigned NOT NULL,
  `isvisible` tinyint(2) DEFAULT NULL,
  `href` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER after_insert_permisosCliente
AFTER INSERT
ON permisosCliente FOR EACH ROW
BEGIN
  if (select count(id) from permisos where codigo = new.codigo) = 0 then
    insert into permisos values(null,new.nombre,new.codigo,new.href);
  end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER after_update_permisosClientes
AFTER UPDATE
ON permisosCliente FOR EACH ROW
BEGIN
  update permisos set nombre = new.nombre,codigo = new.codigo,href = new.href
  where codigo = new.codigo limit 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `permisosLogintech`
--

DROP TABLE IF EXISTS `permisosLogintech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisosLogintech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `codigo` int(5) unsigned NOT NULL,
  `isvisible` tinyint(2) DEFAULT NULL,
  `href` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER after_insert_permisosLogintech
AFTER INSERT
ON permisosLogintech FOR EACH ROW
BEGIN
  if (select count(id) from permisosCliente where codigo = new.codigo) = 0 then
    insert into permisosCliente values(null,new.nombre,new.codigo,new.isvisible,new.href);
  end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER after_update_permisosLogintech
AFTER UPDATE
ON permisosLogintech FOR EACH ROW
BEGIN 
  update permisosCliente set nombre = new.nombre,codigo = new.codigo,isvisible = new.isvisible,
  href = new.href
  where codigo = new.codigo limit 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `permisosusuarios`
--

DROP TABLE IF EXISTS `permisosusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisosusuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpermiso` int(11) NOT NULL,
  `idusuario` varchar(45) NOT NULL,
  `tipo` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1531 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permisostipousuario`
--

DROP TABLE IF EXISTS `permisostipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisostipousuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpermiso` int(11) NOT NULL,
  `idtipoUsuario` varchar(45) NOT NULL,
  `tipo` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=715 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER after_update_permisostipousuarios
AFTER UPDATE
ON permisostipousuario FOR EACH ROW
BEGIN
  update permisosusuarios set tipo = new.tipo where idusuario in((select id from usuarios 
  where idtipousuario = new.idtipousuario))
  and idpermiso = new.idpermiso;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
