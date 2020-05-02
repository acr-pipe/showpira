-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: production
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `codigointerno` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  UNIQUE KEY `codigointerno_UNIQUE` (`codigointerno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `actualzaciones`
--

DROP TABLE IF EXISTS `actualzaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actualzaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vidtabla` int(11) DEFAULT NULL,
  `vidfila` int(11) DEFAULT NULL,
  `campo` varchar(32) DEFAULT NULL,
  `anterior` varchar(255) DEFAULT NULL,
  `nuevo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ajustecierres`
--

DROP TABLE IF EXISTS `ajustecierres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajustecierres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipousuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ajustes`
--

DROP TABLE IF EXISTS `ajustes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajustes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(20) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ajustessucursales`
--

DROP TABLE IF EXISTS `ajustessucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `ivafact` tinyint(2) DEFAULT 0,
  `ininvc` tinyint(2) DEFAULT 0,
  `chora` tinyint(2) DEFAULT 0,
  `token` tinyint(2) DEFAULT 0,
  `rcompra` tinyint(2) DEFAULT 1,
  `rventa` tinyint(2) DEFAULT 1,
  `correoconta` varchar(64) DEFAULT '',
  `pipme` varchar(512) DEFAULT 'http://35.188.212.38/bot/wsdlServer.php',
  `botmail` varchar(100) DEFAULT '',
  `botpswd` varchar(32) DEFAULT '',
  `smtp` varchar(100) DEFAULT 'correos.logintechcr@gmail.com',
  `smtpc` varchar(100) DEFAULT 'D2CE9F4A1FBB637E885272B590F34016',
  `smtpp` int(4) DEFAULT 465,
  `smtph` varchar(50) DEFAULT 'ssl://smtp.gmail.com',
  `tfact` tinyint(3) DEFAULT 0,
  `tventa` tinyint(2) DEFAULT 1,
  `lastmemory` tinyint(2) DEFAULT 0,
  `invauto` tinyint(2) DEFAULT 0,
  `autoacept` int(3) DEFAULT 7,
  `nomh` tinyint(2) DEFAULT 0,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `arrendamientos`
--

DROP TABLE IF EXISTS `arrendamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrendamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `idtipointeres` int(11) DEFAULT NULL,
  `interes` decimal(5,2) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `cuotainicial` varchar(25) DEFAULT NULL,
  `comisioning` varchar(25) DEFAULT NULL,
  `comisionmes` varchar(25) DEFAULT NULL,
  `pagresidual` varchar(25) DEFAULT NULL,
  `tp` decimal(5,2) DEFAULT NULL,
  `imc` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `asignarinventarios`
--

DROP TABLE IF EXISTS `asignarinventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignarinventarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idinventario` varchar(100) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `idtipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `iddistrito` int(11) DEFAULT NULL,
  `idhacienda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bodegas`
--

DROP TABLE IF EXISTS `bodegas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodegas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `boletas`
--

DROP TABLE IF EXISTS `boletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `idtipo` int(11) DEFAULT NULL,
  `idinv1` int(11) DEFAULT NULL,
  `idinv2` int(11) DEFAULT NULL,
  `comentario` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cajainicialusuarios`
--

DROP TABLE IF EXISTS `cajainicialusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajainicialusuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `fmonto` decimal(10,2) DEFAULT NULL,
  `ffecha` datetime DEFAULT NULL,
  `idsucursal` int(11) DEFAULT 0,
  `cajareal` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ip` varchar(41) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cantones`
--

DROP TABLE IF EXISTS `cantones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cantones` (
  `id` int(5) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `idprovincia` int(5) DEFAULT NULL,
  `idhacienda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cierrecajas`
--

DROP TABLE IF EXISTS `cierrecajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cierrecajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `facturascredito` decimal(12,2) DEFAULT NULL,
  `facturascontado` decimal(12,2) DEFAULT NULL,
  `totalabonos` decimal(12,2) DEFAULT NULL,
  `notascredito` decimal(12,2) DEFAULT NULL,
  `notasdebito` decimal(12,2) DEFAULT NULL,
  `totalefectivo` decimal(12,2) DEFAULT NULL,
  `totaltarjeta` decimal(12,2) DEFAULT NULL,
  `totaldeposito` decimal(12,2) DEFAULT NULL,
  `totalcheque` decimal(12,2) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `grabado` decimal(10,2) DEFAULT NULL,
  `excento` decimal(23,5) DEFAULT NULL,
  `imv` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `claves`
--

DROP TABLE IF EXISTS `claves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido1` varchar(64) DEFAULT NULL,
  `apellido2` varchar(64) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `idtipocliente` int(3) unsigned DEFAULT NULL,
  `idestado` int(5) unsigned DEFAULT NULL,
  `bisproveedor` tinyint(2) unsigned DEFAULT 0,
  `idnivel` int(11) NOT NULL,
  `credito` int(9) DEFAULT 0,
  `plazo` int(9) DEFAULT 0,
  `dproforma` int(11) DEFAULT 8,
  `bisnacional` tinyint(2) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  `descuentom` decimal(10,2) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `idsucursal` varchar(255) DEFAULT '0',
  `prima` varchar(24) DEFAULT NULL,
  `idmoneda` int(11) DEFAULT 1,
  `idagente` int(11) DEFAULT 0,
  `comision` decimal(10,2) DEFAULT 0.00,
  `mensaje` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comentarioclientes`
--

DROP TABLE IF EXISTS `comentarioclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarioclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idempresa` int(11) DEFAULT NULL,
  `nota` varchar(2048) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comentmovinvent`
--

DROP TABLE IF EXISTS `comentmovinvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentmovinvent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddetalleinventario` int(11) DEFAULT NULL,
  `accion` tinyint(2) DEFAULT NULL,
  `cantidad` decimal(18,3) DEFAULT NULL,
  `comentario` varchar(150) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consecutivos`
--

DROP TABLE IF EXISTS `consecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consecutivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsucursal` varchar(20) DEFAULT NULL,
  `consecutivo` int(11) DEFAULT 0,
  `consecutivo1` int(11) DEFAULT 0,
  `consecutivo2` int(11) DEFAULT 0,
  `consecutivo3` int(11) DEFAULT 0,
  `consecutivo4` int(11) DEFAULT 0,
  `consecutivo5` int(11) DEFAULT 0,
  `consecutivo6` int(11) DEFAULT 0,
  `ec1` int(11) DEFAULT 0,
  `ec2` int(11) DEFAULT 0,
  `ec3` int(11) DEFAULT 0,
  `ec4` int(11) DEFAULT 0,
  `ec5` int(11) DEFAULT 0,
  `ec6` int(11) DEFAULT 0,
  `ec7` int(11) DEFAULT 0,
  `devoluciones` int(11) DEFAULT 0,
  `aceptacion` int(11) DEFAULT 0,
  `aceparcial` int(11) DEFAULT 0,
  `rechazo` int(11) DEFAULT 0,
  `consecutivo7` int(11) DEFAULT 0,
  `consecutivo8` int(11) DEFAULT 0,
  `consecutivo9` int(11) DEFAULT 0,
  `consecutivo100` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `puesto` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `correos`
--

DROP TABLE IF EXISTS `correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correos` (
  `idcorreo` int(11) NOT NULL AUTO_INCREMENT,
  `idfila` int(11) NOT NULL,
  `idtabla` int(11) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcorreo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `numero` varchar(10) NOT NULL,
  `deep` tinyint(3) DEFAULT NULL,
  `valor` decimal(11,2) DEFAULT 0.00,
  `ispadre` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER cuentas_BEFORE_UPDATE  BEFORE UPDATE ON cuentas FOR EACH ROW BEGIN
if !new.ispadre and old.ispadre = 1 and (select count(id)-1 from cuentas where numero like concat(new.numero,'%')) > 0 then 
	SET @msj = concat(new.nombre,' Presenta Cuentas Aignadas');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = @msj;
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER cuentas_BEFORE_DELETE  BEFORE DELETE ON cuentas FOR EACH ROW BEGIN
    if old.id in(1,2,3,4,5,6) then
     SET @msj = concat('Nombre Cuenta ''',old.nombre,''' No se Puede Eliminar');
        SIGNAL SQLSTATE '47000'
     SET MESSAGE_TEXT = @msj;
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `defectoarrendamientos`
--

DROP TABLE IF EXISTS `defectoarrendamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defectoarrendamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsucursal` int(11) DEFAULT NULL,
  `idtipointeres` int(11) DEFAULT NULL,
  `interes` decimal(5,2) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `cuotainicial` varchar(25) DEFAULT NULL,
  `comisioning` varchar(25) DEFAULT NULL,
  `comisionmes` varchar(25) DEFAULT NULL,
  `pagresidual` varchar(25) DEFAULT NULL,
  `tp` decimal(5,2) DEFAULT NULL,
  `imc` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `defectocuentas`
--

DROP TABLE IF EXISTS `defectocuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defectocuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcuenta` int(11) NOT NULL,
  `idtabla` int(11) DEFAULT NULL,
  `idfila` int(11) DEFAULT NULL,
  `idtipo` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `defectoimpuestos`
--

DROP TABLE IF EXISTS `defectoimpuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defectoimpuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfila` int(11) NOT NULL,
  `idtabla` int(11) NOT NULL,
  `idimpuesto` tinyint(2) NOT NULL,
  `exoneracion` decimal(5,2) NOT NULL,
  `valor` decimal(5,2) DEFAULT 13.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `descuentos`
--

DROP TABLE IF EXISTS `descuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descuentos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idestado` int(5) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleakeys`
--

DROP TABLE IF EXISTS `detalleakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleakeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idakey` int(11) DEFAULT NULL,
  `prefacio` varchar(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallebancos`
--

DROP TABLE IF EXISTS `detallebancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallebancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `cuenta` varchar(30) DEFAULT NULL,
  `idmoneda` int(11) DEFAULT NULL,
  `idbanco` int(11) DEFAULT NULL,
  `comision` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallebodegas`
--

DROP TABLE IF EXISTS `detallebodegas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallebodegas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbodega` int(5) DEFAULT NULL,
  `idinventario` int(3) DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleboletas`
--

DROP TABLE IF EXISTS `detalleboletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleboletas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idboleta` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `cantidad` decimal(23,5) DEFAULT NULL,
  `cantidada` decimal(23,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallecierres`
--

DROP TABLE IF EXISTS `detallecierres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecierres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcierre` int(11) DEFAULT NULL,
  `idfactura` int(3) DEFAULT NULL,
  `tipofactura` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalledescuentos`
--

DROP TABLE IF EXISTS `detalledescuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalledescuentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idciclo` int(11) DEFAULT NULL,
  `iddescuento` int(4) unsigned NOT NULL,
  `f1` datetime DEFAULT NULL,
  `f2` datetime DEFAULT NULL,
  `idfila` int(11) DEFAULT NULL,
  `idtabla` int(11) DEFAULT NULL,
  `valor` decimal(5,2) DEFAULT NULL,
  `extra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalledevoluciones`
--

DROP TABLE IF EXISTS `detalledevoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalledevoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddevolucion` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `cantidad` decimal(8,2) DEFAULT NULL,
  `idtipodevolucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallefacturas`
--

DROP TABLE IF EXISTS `detallefacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallefacturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) NOT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idpaquete` int(11) DEFAULT NULL,
  `cantidad` varchar(100) DEFAULT NULL,
  `precio` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `costo` decimal(23,5) DEFAULT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `comodin` varchar(512) DEFAULT NULL,
  `idunidad` int(11) DEFAULT 1,
  `idimpuestos` varchar(255) DEFAULT NULL,
  `iddescuentos` varchar(255) DEFAULT NULL,
  `idinventario` int(11) DEFAULT NULL,
  `comision` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallefinanciamientos`
--

DROP TABLE IF EXISTS `detallefinanciamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallefinanciamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `idtipointeres` tinyint(2) DEFAULT NULL,
  `interes` decimal(5,2) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `prima` varchar(12) DEFAULT NULL,
  `comisioning` varchar(12) DEFAULT NULL,
  `comisionmes` varchar(12) DEFAULT NULL,
  `pagoresidual` varchar(12) DEFAULT NULL,
  `intmoratorioplazo` decimal(5,2) DEFAULT NULL,
  `intmoratoriocuota` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleinventarios`
--

DROP TABLE IF EXISTS `detalleinventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleinventarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idinventario` int(3) NOT NULL,
  `idproducto` varchar(13) DEFAULT NULL,
  `cantidad` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallelineas`
--

DROP TABLE IF EXISTS `detallelineas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallelineas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtareaproduccion` int(11) DEFAULT NULL,
  `idlineaproduccion` int(11) DEFAULT NULL,
  `orden` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallenivelesclientes`
--

DROP TABLE IF EXISTS `detallenivelesclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallenivelesclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idnivelcliente` int(11) DEFAULT NULL,
  `clie_descuento_max` decimal(5,2) DEFAULT NULL,
  `clie_descuento` decimal(8,2) DEFAULT NULL,
  `clie_plazo` int(4) DEFAULT NULL,
  `clie_credito` decimal(8,2) DEFAULT NULL,
  `prod_descuento_max` decimal(5,2) DEFAULT NULL,
  `prod_descuento` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallenotificaciones`
--

DROP TABLE IF EXISTS `detallenotificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallenotificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idnotificacion` int(11) DEFAULT NULL,
  `subject` varchar(32) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallepaquetes`
--

DROP TABLE IF EXISTS `detallepaquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepaquetes` (
  `idpaquete` int(11) NOT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `cantidad` decimal(20,6) DEFAULT NULL,
  `idunidad` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleprocesos`
--

DROP TABLE IF EXISTS `detalleprocesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleprocesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproceso` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `idunidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleproducciones`
--

DROP TABLE IF EXISTS `detalleproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleproducciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idaccion` tinyint(3) DEFAULT NULL,
  `idtarea` int(11) DEFAULT NULL,
  `idproduccion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallerecetas`
--

DROP TABLE IF EXISTS `detallerecetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallerecetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idreceta` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallerutas`
--

DROP TABLE IF EXISTS `detallerutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallerutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idruta` int(11) DEFAULT NULL,
  `idtabla_enc` int(11) DEFAULT NULL,
  `idfila_enc` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha_aprobacion` datetime DEFAULT NULL,
  `bsyncserver` tinyint(2) DEFAULT NULL,
  `sync` tinyint(2) DEFAULT NULL,
  `idmovimiento` int(11) DEFAULT NULL,
  `idvehiculo` int(11) DEFAULT NULL,
  `idinventario` int(11) DEFAULT NULL,
  `consecutivo` int(11) DEFAULT NULL,
  `consecutivo4` int(11) DEFAULT NULL,
  `consecutivo5` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalletransacciones`
--

DROP TABLE IF EXISTS `detalletransacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalletransacciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcuenta` int(11) NOT NULL,
  `idtransaccion` int(11) NOT NULL,
  `debe` decimal(10,2) NOT NULL,
  `haber` decimal(10,2) NOT NULL,
  `vidodt` int(11) NOT NULL,
  `vcomentario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleubicaciones`
--

DROP TABLE IF EXISTS `detalleubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleubicaciones` (
  `iddistrito` int(3) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallewsdls`
--

DROP TABLE IF EXISTS `detallewsdls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallewsdls` (
  `iddetwsdl` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(64) DEFAULT NULL,
  `valordetwsdl` varchar(64) DEFAULT NULL,
  `idwsdl` int(11) NOT NULL,
  PRIMARY KEY (`iddetwsdl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `comentario` varchar(150) DEFAULT NULL,
  `idmoneda` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `consecutivo` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dias`
--

DROP TABLE IF EXISTS `dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dias` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dimensioproductos`
--

DROP TABLE IF EXISTS `dimensioproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimensioproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) DEFAULT NULL,
  `idunidad` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `distritos`
--

DROP TABLE IF EXISTS `distritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distritos` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idcanton` int(5) DEFAULT NULL,
  `idhacienda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadoclientes`
--

DROP TABLE IF EXISTS `estadoclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoclientes` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadodescuentos`
--

DROP TABLE IF EXISTS `estadodescuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadodescuentos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadofacturas`
--

DROP TABLE IF EXISTS `estadofacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadofacturas` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadomovimientos`
--

DROP TABLE IF EXISTS `estadomovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadomovimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadopresupuestos`
--

DROP TABLE IF EXISTS `estadopresupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadopresupuestos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadoscuentas`
--

DROP TABLE IF EXISTS `estadoscuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoscuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipo` int(11) DEFAULT NULL,
  `idestado` int(11) DEFAULT NULL,
  `idfactura` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `valor` decimal(23,5) DEFAULT NULL,
  `debe` decimal(23,5) DEFAULT NULL,
  `haber` decimal(23,5) DEFAULT NULL,
  `consecutivo` int(11) DEFAULT NULL,
  `idtipopago` int(11) DEFAULT NULL,
  `isregistrada` tinyint(2) DEFAULT 0,
  `comentario` varchar(150) DEFAULT NULL,
  `terminal` int(5) DEFAULT 1,
  `feestado` int(3) DEFAULT 7,
  `idmoneda` int(11) DEFAULT 1,
  `divisa` decimal(23,5) DEFAULT 1.00000,
  `referencia` varchar(64) DEFAULT NULL,
  `fecharecibo` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `etapasproducciones`
--

DROP TABLE IF EXISTS `etapasproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etapasproducciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser_maker` int(11) DEFAULT NULL,
  `iduser_to` int(11) DEFAULT NULL,
  `isread` tinyint(2) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `isaprobado` tinyint(2) DEFAULT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturaelectronicas`
--

DROP TABLE IF EXISTS `facturaelectronicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaelectronicas` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `estado` varchar(64) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturaimpresiones`
--

DROP TABLE IF EXISTS `facturaimpresiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaimpresiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `tipo` tinyint(4) DEFAULT NULL,
  `tipoimpresion` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoventa` tinyint(3) NOT NULL,
  `idtipo` tinyint(3) NOT NULL,
  `idtipopago` tinyint(3) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idestado` tinyint(3) NOT NULL,
  `isregistrada` tinyint(3) NOT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `subtotal` decimal(23,5) DEFAULT NULL,
  `exento` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `flete` decimal(10,2) DEFAULT NULL,
  `ajuste` decimal(10,2) DEFAULT NULL,
  `plazo` int(11) DEFAULT NULL,
  `comentario` varchar(512) DEFAULT NULL,
  `referencia` varchar(55) DEFAULT NULL,
  `idmoneda` tinyint(2) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `comodin` varchar(64) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `consecutivo` varchar(11) DEFAULT NULL,
  `extra` varchar(64) DEFAULT NULL,
  `divisa` decimal(23,5) DEFAULT NULL,
  `terminal` int(5) DEFAULT 1,
  `feestado` tinyint(2) DEFAULT 1,
  `idexoneracion` varchar(512) DEFAULT '',
  `mailstatus` tinyint(2) DEFAULT 0,
  `idagente` int(11) DEFAULT 0,
  `comision` decimal(5,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `familias`
--

DROP TABLE IF EXISTS `familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `financiamientos`
--

DROP TABLE IF EXISTS `financiamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financiamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `idtipointeres` tinyint(2) DEFAULT NULL,
  `interes` decimal(5,2) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `prima` varchar(12) DEFAULT NULL,
  `comisioning` varchar(12) DEFAULT NULL,
  `comisionmes` varchar(12) DEFAULT NULL,
  `pagoresidual` varchar(12) DEFAULT NULL,
  `intmoratorioplazo` decimal(5,2) DEFAULT NULL,
  `intmoratoriocuota` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `financierovalores`
--

DROP TABLE IF EXISTS `financierovalores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financierovalores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idnivel` int(11) DEFAULT NULL,
  `descripcion` varchar(64) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flotilla`
--

DROP TABLE IF EXISTS `flotilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flotilla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idvehiculo` int(11) DEFAULT NULL,
  `idtipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `globalme`
--

DROP TABLE IF EXISTS `globalme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vsel` varchar(500) DEFAULT NULL,
  `vtbl` int(11) DEFAULT NULL,
  `vwhere` varchar(1024) DEFAULT NULL,
  `vjoin` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gs1`
--

DROP TABLE IF EXISTS `gs1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs1` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gti`
--

DROP TABLE IF EXISTS `gti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(45) DEFAULT NULL,
  `idffila` int(11) DEFAULT NULL,
  `idtabla` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `impuestos`
--

DROP TABLE IF EXISTS `impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impuestos` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `resumen` varchar(10) DEFAULT NULL,
  `valor` decimal(6,2) NOT NULL,
  `idhacienda` tinyint(3) DEFAULT 1,
  `idsucursal` int(11) DEFAULT -1,
  `isporcentual` tinyint(2) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `integraciones`
--

DROP TABLE IF EXISTS `integraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integraciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(50) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `factura` varchar(20) DEFAULT NULL,
  `feestado` tinyint(3) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `monto` decimal(23,5) DEFAULT 0.00000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventarios`
--

DROP TABLE IF EXISTS `inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `idbodega` int(5) DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `idtipo` int(11) DEFAULT 6,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lineaproducciones`
--

DROP TABLE IF EXISTS `lineaproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineaproducciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproceso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtabla` int(11) DEFAULT NULL,
  `idaccion` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `idsucursal` int(3) DEFAULT NULL,
  `idfila` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manttpls`
--

DROP TABLE IF EXISTS `manttpls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manttpls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpermiso` int(11) DEFAULT NULL,
  `valor` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idtipo` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meses`
--

DROP TABLE IF EXISTS `meses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meses` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmarca` int(11) DEFAULT NULL,
  `idtipo` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monedas` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `simbolo` varchar(2) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `principal` tinyint(4) NOT NULL,
  `wsdl` int(11) NOT NULL DEFAULT 0,
  `suma` decimal(7,2) DEFAULT 0.00,
  `codigo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipomovimiento` tinyint(2) DEFAULT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `idestado` tinyint(2) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nivelesclientes`
--

DROP TABLE IF EXISTS `nivelesclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivelesclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nivelproductos`
--

DROP TABLE IF EXISTS `nivelproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivelproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoentrada` tinyint(2) DEFAULT NULL,
  `identrada` int(11) DEFAULT NULL,
  `idnivel` int(11) DEFAULT NULL,
  `ganancia` decimal(23,5) DEFAULT NULL,
  `exoneracion` decimal(5,2) DEFAULT NULL,
  `venta` decimal(10,2) DEFAULT 3000.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idestado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `odtpresupuestos`
--

DROP TABLE IF EXISTS `odtpresupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odtpresupuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idodt` int(11) DEFAULT NULL,
  `idpresupuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `odts`
--

DROP TABLE IF EXISTS `odts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idestado` tinyint(3) DEFAULT NULL,
  `idproyecto` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenestrabajos`
--

DROP TABLE IF EXISTS `ordenestrabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenestrabajos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `isfinita` tinyint(2) NOT NULL DEFAULT 1,
  `comentario` varchar(100) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pagosmixtos`
--

DROP TABLE IF EXISTS `pagosmixtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagosmixtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `idpago` int(11) DEFAULT NULL,
  `extra` varchar(64) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pagosvarios`
--

DROP TABLE IF EXISTS `pagosvarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagosvarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigotel` varchar(5) DEFAULT NULL,
  `bandera` varchar(100) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `iso2` varchar(5) DEFAULT NULL,
  `iso3` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paquetes`
--

DROP TABLE IF EXISTS `paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paquetes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `idmoneda` tinyint(2) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permisotipos`
--

DROP TABLE IF EXISTS `permisotipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisotipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `precioxclientes`
--

DROP TABLE IF EXISTS `precioxclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precioxclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identrada` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `exoneracion` decimal(5,2) DEFAULT NULL,
  `venta` decimal(10,2) DEFAULT 0.00,
  `idtipoentrada` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `presupuestos`
--

DROP TABLE IF EXISTS `presupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `monto` decimal(14,2) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `idmoneda` int(11) DEFAULT NULL,
  `montoactual` decimal(14,2) DEFAULT NULL,
  `divisa` decimal(6,2) DEFAULT NULL,
  `idestado` tinyint(3) DEFAULT NULL,
  `idtoempresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producciones`
--

DROP TABLE IF EXISTS `producciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproceso` int(11) DEFAULT NULL,
  `idlinea` int(11) DEFAULT NULL,
  `cantidad` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produccioninventarios`
--

DROP TABLE IF EXISTS `produccioninventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produccioninventarios` (
  `id` int(11) NOT NULL,
  `idetapa` tinyint(3) DEFAULT NULL,
  `idinventario` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `codigointerno` varchar(45) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `costo` decimal(23,5) DEFAULT NULL,
  `ganancia` decimal(23,5) DEFAULT 0.00000,
  `exoneracion` varchar(7) DEFAULT NULL,
  `idunidad` tinyint(3) DEFAULT NULL,
  `minimo` int(9) DEFAULT NULL,
  `maximo` int(9) DEFAULT NULL,
  `maxdescuento` decimal(6,2) unsigned DEFAULT 0.00,
  `idmarca` int(11) DEFAULT NULL,
  `idusuario` varchar(45) DEFAULT NULL,
  `idmoneda` tinyint(2) unsigned DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `isinventariado` tinyint(2) DEFAULT 1,
  `idheredado` int(11) DEFAULT NULL,
  `isvariable` tinyint(2) DEFAULT 0,
  `cantequiv` decimal(23,5) DEFAULT 0.00000,
  `isgravamen` tinyint(2) DEFAULT 0,
  `comision` decimal(10,2) DEFAULT 0.00,
  `venta` decimal(23,5) DEFAULT 0.00000,
  `divisa` decimal(23,5) DEFAULT 1.00000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proveedorproductos`
--

DROP TABLE IF EXISTS `proveedorproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedorproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) DEFAULT NULL,
  `idproveedor` varchar(45) DEFAULT NULL,
  `codigo` varchar(64) DEFAULT NULL,
  `preciocosto` decimal(23,5) DEFAULT NULL,
  `costoadicional` decimal(23,5) DEFAULT NULL,
  `ultimafecha` varchar(32) DEFAULT NULL,
  `idmonedacosto` int(11) DEFAULT NULL,
  `idmonedaadicional` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincias` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idpais` int(11) DEFAULT 52,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pruebas`
--

DROP TABLE IF EXISTS `pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pruebas` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rdetallefacturas`
--

DROP TABLE IF EXISTS `rdetallefacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdetallefacturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) NOT NULL,
  `idproducto` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `cantidad` varchar(100) DEFAULT NULL,
  `precio` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `unidad` varchar(100) DEFAULT NULL,
  `tarifa` decimal(28,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recepciones`
--

DROP TABLE IF EXISTS `recepciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepciones` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `isin` tinyint(2) DEFAULT NULL,
  `efecha` varchar(20) DEFAULT NULL,
  `hashacienda` tinyint(2) DEFAULT NULL,
  `hasfe` tinyint(2) DEFAULT NULL,
  `isprueba` tinyint(2) DEFAULT 1,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registroSQL`
--

DROP TABLE IF EXISTS `registroSQL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registroSQL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT current_timestamp(),
  `sql_str` varchar(255) DEFAULT NULL,
  `sql_res` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registrorutas`
--

DROP TABLE IF EXISTS `registrorutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrorutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddetalleruta` int(11) DEFAULT NULL,
  `idtipo` tinyint(3) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `extra` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rfacturas`
--

DROP TABLE IF EXISTS `rfacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfacturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoventa` tinyint(3) NOT NULL,
  `idtipo` tinyint(3) NOT NULL,
  `idtipopago` tinyint(3) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idestado` tinyint(3) NOT NULL,
  `isregistrada` tinyint(3) NOT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `subtotal` decimal(23,5) DEFAULT NULL,
  `exento` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `flete` decimal(10,2) DEFAULT NULL,
  `ajuste` decimal(10,2) DEFAULT NULL,
  `plazo` int(11) DEFAULT NULL,
  `comentario` varchar(512) DEFAULT NULL,
  `referencia` varchar(55) DEFAULT NULL,
  `idmoneda` varchar(3) DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  `comodin` varchar(64) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `consecutivo` varchar(11) DEFAULT NULL,
  `extra` varchar(64) DEFAULT NULL,
  `divisa` decimal(23,5) DEFAULT NULL,
  `terminal` int(5) DEFAULT 1,
  `feestado` tinyint(2) DEFAULT 1,
  `idexoneracion` varchar(512) DEFAULT '',
  `mailstatus` tinyint(2) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rprovedores`
--

DROP TABLE IF EXISTS `rprovedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rprovedores` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `correo` varchar(64) DEFAULT NULL,
  `telefono` varchar(64) DEFAULT NULL,
  `tipo` tinyint(2) DEFAULT NULL,
  `barrio` int(3) DEFAULT NULL,
  `distrito` int(3) DEFAULT NULL,
  `canton` int(3) DEFAULT NULL,
  `provincia` int(3) DEFAULT NULL,
  `pais` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rubros`
--

DROP TABLE IF EXISTS `rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubros` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `idtiporubro` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rutaclientes`
--

DROP TABLE IF EXISTS `rutaclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutaclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `idruta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rutaregiones`
--

DROP TABLE IF EXISTS `rutaregiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutaregiones` (
  `idruta` int(11) DEFAULT NULL,
  `idregion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `codigoruta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servicioclientes`
--

DROP TABLE IF EXISTS `servicioclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicioclientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `next_fecha` datetime DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `contrato` varchar(100) DEFAULT NULL,
  `monto` decimal(23,5) DEFAULT NULL,
  `idtipo` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `pfactura` decimal(6,2) DEFAULT 0.00,
  `periodo` int(3) unsigned DEFAULT NULL,
  `dias` varchar(45) NOT NULL,
  `idproveedor` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `pganancia` decimal(6,2) DEFAULT NULL,
  `fcreacion` datetime DEFAULT NULL,
  `idusuario` varchar(45) DEFAULT NULL,
  `idmoneda` tinyint(2) unsigned DEFAULT NULL,
  `servprofesional` tinyint(2) DEFAULT NULL,
  `idsucursal` varchar(100) DEFAULT NULL,
  `exento` decimal(5,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serviciosproducciones`
--

DROP TABLE IF EXISTS `serviciosproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviciosproducciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idvariable` int(3) DEFAULT NULL,
  `idinventario` int(3) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursales` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  `pfisico` varchar(64) DEFAULT NULL,
  `cedula` varchar(32) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `encabezado` varchar(2) DEFAULT NULL,
  `idtipocliente` tinyint(3) DEFAULT 1,
  `p12` varchar(64) DEFAULT NULL,
  `pass_n` varchar(4) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `fastshow` tinyint(3) DEFAULT 0,
  `isPrueba` tinyint(2) DEFAULT 1,
  `printSale` tinyint(2) DEFAULT 0,
  `user_atv` varchar(100) DEFAULT NULL,
  `pass_atv` varchar(64) DEFAULT NULL,
  `idtiponegocio` int(11) DEFAULT 0,
  `sysmod` varchar(100) DEFAULT NULL,
  `acces_tkn` varchar(2048) DEFAULT NULL,
  `rfh_tkn` varchar(1024) DEFAULT NULL,
  `tkn_time` datetime DEFAULT NULL,
  `expiracion` int(3) DEFAULT 120,
  `refrescado` tinyint(2) DEFAULT 0,
  `codactividad` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysmods`
--

DROP TABLE IF EXISTS `sysmods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysmods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysplanes`
--

DROP TABLE IF EXISTS `sysplanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysplanes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tablas`
--

DROP TABLE IF EXISTS `tablas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tareaproducciones`
--

DROP TABLE IF EXISTS `tareaproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareaproducciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `hombre` decimal(5,2) DEFAULT NULL,
  `idunidad1` tinyint(3) DEFAULT NULL,
  `maquina` decimal(5,2) DEFAULT NULL,
  `idunidad2` tinyint(3) DEFAULT NULL,
  `bandejas` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefonos` (
  `idtelefono` int(11) NOT NULL AUTO_INCREMENT,
  `idtipotel` tinyint(3) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idtabla` int(11) DEFAULT NULL,
  `idfila` int(11) DEFAULT NULL,
  `idpais` int(11) DEFAULT 52,
  PRIMARY KEY (`idtelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoacciones`
--

DROP TABLE IF EXISTS `tipoacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoacciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoakeys`
--

DROP TABLE IF EXISTS `tipoakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoakeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(2) DEFAULT NULL,
  `descripcion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoasientos`
--

DROP TABLE IF EXISTS `tipoasientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoasientos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `base` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoasiginventarios`
--

DROP TABLE IF EXISTS `tipoasiginventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoasiginventarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipocajas`
--

DROP TABLE IF EXISTS `tipocajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocajas` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipociclos`
--

DROP TABLE IF EXISTS `tipociclos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipociclos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoclientes`
--

DROP TABLE IF EXISTS `tipoclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoclientes` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_tablecol_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipocontable`
--

DROP TABLE IF EXISTS `tipocontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocontable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `bisactivo` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipocuentas`
--

DROP TABLE IF EXISTS `tipocuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipodeclaraciones`
--

DROP TABLE IF EXISTS `tipodeclaraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodeclaraciones` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipodevoluciones`
--

DROP TABLE IF EXISTS `tipodevoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodevoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `domovimiento` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoestadocuentas`
--

DROP TABLE IF EXISTS `tipoestadocuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoestadocuentas` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoexoneraciones`
--

DROP TABLE IF EXISTS `tipoexoneraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoexoneraciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `idhacienda` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipofacturaimpresiones`
--

DROP TABLE IF EXISTS `tipofacturaimpresiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofacturaimpresiones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipofacturas`
--

DROP TABLE IF EXISTS `tipofacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofacturas` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoflotilla`
--

DROP TABLE IF EXISTS `tipoflotilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoflotilla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipogerarquia`
--

DROP TABLE IF EXISTS `tipogerarquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipogerarquia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoimpresion`
--

DROP TABLE IF EXISTS `tipoimpresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoimpresion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `tipo` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoimpresiones`
--

DROP TABLE IF EXISTS `tipoimpresiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoimpresiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipojerarquia`
--

DROP TABLE IF EXISTS `tipojerarquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipojerarquia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipomonedas`
--

DROP TABLE IF EXISTS `tipomonedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomonedas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idmoneda` tinyint(2) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipomovimientos`
--

DROP TABLE IF EXISTS `tipomovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomovimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipopagos`
--

DROP TABLE IF EXISTS `tipopagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopagos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `bancos` tinyint(2) NOT NULL DEFAULT 0,
  `extra` varchar(32) DEFAULT NULL,
  `regex` varchar(100) DEFAULT NULL,
  `principal` tinyint(2) DEFAULT NULL,
  `icono` varchar(45) DEFAULT NULL,
  `idhacienda` int(3) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiporutas`
--

DROP TABLE IF EXISTS `tiporutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idfamilia` int(11) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipotelefonos`
--

DROP TABLE IF EXISTS `tipotelefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotelefonos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `regex` varchar(100) DEFAULT NULL,
  `img` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipounidades`
--

DROP TABLE IF EXISTS `tipounidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipounidades` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipousuarios`
--

DROP TABLE IF EXISTS `tipousuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuarios` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `defecto` tinyint(1) DEFAULT 0,
  `bincierre` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoventas`
--

DROP TABLE IF EXISTS `tipoventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoventas` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmpcompras`
--

DROP TABLE IF EXISTS `tmpcompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpcompras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoventa` tinyint(3) NOT NULL,
  `idtipo` tinyint(3) NOT NULL,
  `idtipopago` tinyint(3) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idestado` tinyint(3) NOT NULL,
  `isregistrada` tinyint(3) NOT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `subtotal` decimal(23,5) DEFAULT NULL,
  `exento` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `flete` decimal(10,2) DEFAULT NULL,
  `ajuste` decimal(10,2) DEFAULT NULL,
  `plazo` int(11) DEFAULT NULL,
  `comentario` varchar(512) DEFAULT NULL,
  `referencia` varchar(55) DEFAULT NULL,
  `idmoneda` tinyint(2) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `comodin` varchar(64) DEFAULT NULL,
  `idsucursal` varchar(20) DEFAULT NULL,
  `consecutivo` varchar(11) DEFAULT NULL,
  `extra` varchar(64) DEFAULT NULL,
  `divisa` decimal(23,5) DEFAULT NULL,
  `terminal` int(5) DEFAULT 1,
  `feestado` tinyint(2) DEFAULT 1,
  `idexoneracion` varchar(512) DEFAULT '',
  `mailstatus` tinyint(2) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmpcuentaspagos`
--

DROP TABLE IF EXISTS `tmpcuentaspagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpcuentaspagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpago` int(11) DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmpdetallecompras`
--

DROP TABLE IF EXISTS `tmpdetallecompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpdetallecompras` (
  `id` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idproducto` varchar(255) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idpaquete` int(11) DEFAULT NULL,
  `cantidad` varchar(100) DEFAULT NULL,
  `precio` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `ganancia` decimal(5,2) DEFAULT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `comodin` varchar(64) DEFAULT NULL,
  `idunidad` varchar(255) DEFAULT NULL,
  `idimpuestos` varchar(255) DEFAULT NULL,
  `iddescuentos` varchar(255) DEFAULT NULL,
  `idinventario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmpdetallefacturas`
--

DROP TABLE IF EXISTS `tmpdetallefacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpdetallefacturas` (
  `id` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idpaquete` int(11) DEFAULT NULL,
  `cantidad` varchar(100) DEFAULT NULL,
  `precio` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `ganancia` decimal(5,2) DEFAULT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `comodin` varchar(64) DEFAULT NULL,
  `idunidad` int(11) DEFAULT 1,
  `idimpuestos` varchar(255) DEFAULT NULL,
  `iddescuentos` varchar(255) DEFAULT NULL,
  `idinventario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmpfacturas`
--

DROP TABLE IF EXISTS `tmpfacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpfacturas` (
  `id` int(11) DEFAULT NULL,
  `idtipoventa` tinyint(3) NOT NULL,
  `idtipo` tinyint(3) NOT NULL,
  `idtipopago` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idestado` tinyint(3) NOT NULL,
  `isregistrada` tinyint(3) NOT NULL,
  `imv` decimal(13,5) DEFAULT NULL,
  `subtotal` decimal(23,5) DEFAULT NULL,
  `exento` decimal(23,5) DEFAULT NULL,
  `descuento` decimal(23,5) DEFAULT NULL,
  `flete` decimal(10,2) DEFAULT NULL,
  `ajuste` decimal(10,2) DEFAULT NULL,
  `plazo` int(11) DEFAULT NULL,
  `comentario` varchar(512) DEFAULT NULL,
  `referencia` varchar(55) DEFAULT NULL,
  `idmoneda` tinyint(2) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `comodin` varchar(64) DEFAULT NULL,
  `idsucursal` int(11) DEFAULT NULL,
  `consecutivo` varchar(11) DEFAULT NULL,
  `extra` varchar(64) DEFAULT NULL,
  `divisa` decimal(23,5) DEFAULT NULL,
  `terminal` int(5) DEFAULT 1,
  `feestado` tinyint(2) DEFAULT 1,
  `idexoneracion` varchar(512) DEFAULT '',
  `mailstatus` tinyint(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmpprovedores`
--

DROP TABLE IF EXISTS `tmpprovedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpprovedores` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `correo` varchar(64) DEFAULT NULL,
  `telefono` varchar(64) DEFAULT NULL,
  `tipo` tinyint(2) DEFAULT NULL,
  `barrio` int(3) DEFAULT NULL,
  `distrito` int(3) DEFAULT NULL,
  `canton` int(3) DEFAULT NULL,
  `provincia` int(3) DEFAULT NULL,
  `pais` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `idmoneda` int(11) NOT NULL,
  `idtabla` int(11) DEFAULT NULL,
  `idfila` int(11) DEFAULT NULL,
  `divisa` decimal(23,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicaciones` (
  `idubicacion` int(11) NOT NULL AUTO_INCREMENT,
  `idbarrio` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `latitud` varchar(15) DEFAULT NULL,
  `longitud` varchar(15) DEFAULT NULL,
  `idtabla` int(11) NOT NULL,
  `idfila` int(11) NOT NULL,
  PRIMARY KEY (`idubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `simbolo` varchar(45) DEFAULT NULL,
  `idtipo` int(3) DEFAULT NULL,
  `idunidad` int(11) DEFAULT 0,
  `cantidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unidadeshacienda`
--

DROP TABLE IF EXISTS `unidadeshacienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadeshacienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(12) DEFAULT NULL,
  `descripcion` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unidadproductos`
--

DROP TABLE IF EXISTS `unidadproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) DEFAULT NULL,
  `idunidad` int(11) DEFAULT NULL,
  `idnivel` int(11) DEFAULT NULL,
  `iddimension` int(11) DEFAULT NULL,
  `ganancia` decimal(23,5) DEFAULT NULL,
  `venta` decimal(23,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`itech01`@`localhost`*/ /*!50003 TRIGGER before_delete_usuarios  BEFORE DELETE ON usuarios FOR EACH ROW BEGIN
	if old.id in(1,2) THEN
		set @msj = concat('Usuario ',old.nombre,' no se Puede Eliminar');
		SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `variablesproducciones`
--

DROP TABLE IF EXISTS `variablesproducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variablesproducciones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idmoneda` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `variablesproductos`
--

DROP TABLE IF EXISTS `variablesproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variablesproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `valor` varchar(60) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(8) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `chofer` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `kilometraje` decimal(10,0) DEFAULT NULL,
  `vin` varchar(45) DEFAULT NULL,
  `idmodelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `virtualdescuentos`
--

DROP TABLE IF EXISTS `virtualdescuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualdescuentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddescuento` int(11) DEFAULT NULL,
  `valor` decimal(6,2) DEFAULT NULL,
  `identificador` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `virtualimpuestos`
--

DROP TABLE IF EXISTS `virtualimpuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualimpuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idimpuesto` int(11) DEFAULT NULL,
  `valor` decimal(6,2) DEFAULT NULL,
  `identificador` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsdls`
--

DROP TABLE IF EXISTS `wsdls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsdls` (
  `wsid` int(11) NOT NULL AUTO_INCREMENT,
  `wsurl` varchar(255) DEFAULT NULL,
  `xmlsen` varchar(255) NOT NULL,
  `xmlreq` varchar(100) NOT NULL,
  `obtener` varchar(255) DEFAULT NULL,
  `wsname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'production'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `e_diario_22` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`itech01`@`localhost`*/ /*!50106 EVENT `e_diario_22` ON SCHEDULE EVERY 1 DAY STARTS '2017-08-11 22:00:00' ON COMPLETION NOT PRESERVE ENABLE DO call sp_event22() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'production'
--
/*!50003 DROP FUNCTION IF EXISTS `convercion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `convercion`(vidunidad int, vcantidad decimal(12,3)) RETURNS decimal(10,2)
BEGIN

	select (vcantidad*a.cantidad) as base
	from unidades a left join unidades b on b.id = a.idunidad
	where a.id = vidunidad into vcantidad;
	
	return vcantidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `convertunits` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `convertunits`(vidunidad TINYINT(3),vcantidad DECIMAL(10,2)) RETURNS decimal(10,2)
BEGIN


SELECT (vcantidad*a.cantidad) AS base
FROM unidades a 
LEFT JOIN unidades b ON b.id = a.idunidad
WHERE a.id = vidunidad INTO @vcantidad;

RETURN @vcantidad;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fe_getclave` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `fe_getclave`(vid varchar(20)) RETURNS varchar(64) CHARSET utf8mb4
BEGIN 
 
DECLARE rs varchar(64);
select valor from ajustes where descr = 'fekey' into @fekey;

CASE substring(vid,1,1)
	when '-' then
		select concat(replace(f.codigotel,'+',''),date_format(i.fecha,'%d%m%y'),lpad(replace(g.cedula,'-',''),12,0),
		fe_getnumeracion(vid),case i.feestado when 0 then 3 when 6 then 2 else 1 end,@fekey) as clave
		from estadoscuentas i
		join facturas a on a.id = i.idfactura
 		join sucursales g on g.id = a.idsucursal
		join ubicaciones b on b.idfila = g.id and b.idtabla = 39
		join barrios h on h.id = b.idbarrio
		join distritos c on c.id = h.iddistrito
		join cantones d on d.id = c.idcanton
		join provincias e on e.id = d.idprovincia
		join paises f on f.id = e.idpais 
		where i.id = substring(vid,2) and i.idtipo in(5,6)
		into rs;
	when '^' THEN
		select concat(replace(f.codigotel,'+',''),date_format(a.fecha,'%d%m%y'),lpad(replace(g.cedula,'-',''),12,0),
		fe_getnumeracion(vid),case a.feestado when 0 then 3 when 6 then 2 else 1 end,@fekey) as clave
		from facturas a
		join sucursales g on g.id = a.idsucursal
		join ubicaciones b on b.idfila = g.id and b.idtabla = 39
		join barrios h on h.id = b.idbarrio
		join distritos c on c.id = h.iddistrito
		join cantones d on d.id = c.idcanton
		join provincias e on e.id = d.idprovincia
		join paises f on f.id = e.idpais 
		where a.id = substring(vid,2) and a.idtipoventa in(2) into rs;
	ELSE
    	select concat(replace(f.codigotel,'+',''),date_format(a.fecha,'%d%m%y'),lpad(replace(g.cedula,'-',''),12,0),
		fe_getnumeracion(a.id),case a.feestado when 0 then 3 when 6 then 2 else 1
		end,@fekey) as clave
		from facturas a
		join sucursales g on g.id = a.idsucursal
		join ubicaciones b on b.idfila = g.id and b.idtabla = 39
		join barrios h on h.id = b.idbarrio
		join distritos c on c.id = h.iddistrito
		join cantones d on d.id = c.idcanton
		join provincias e on e.id = d.idprovincia
		join paises f on f.id = e.idpais 
		join log l on l.idfila = a.id and l.idtabla = 64 and l.idaccion = 1
		where a.id = vid and a.idtipoventa in(1,7) into rs;
	end case;

RETURN rs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fe_getemisor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `fe_getemisor`(vid int) RETURNS varchar(2048) CHARSET utf8mb4
BEGIN

select 
concat('Nombre,',c.nombre,',Identificacion,Tipo:',lpad(c.idtipocliente,2,0),
':Numero:',replace(c.cedula,'-',''),if(c.pfisico <> '',
concat(',NombreComercial,',c.pfisico),''),
if(h.id is null,'',concat(',Ubicacion,Provincia:',h.id,
':Canton:',lpad(ifnull(g.idhacienda,0),2,0),
':Distrito:',lpad(ifnull(f.idhacienda,0),2,0),
if(m.idhacienda = 0,'',concat(':Barrio:',lpad(m.idhacienda,2,0))),
':OtrasSenas:',substring(replace(ifnull(e.direccion,''),',',' '),1,160))),if(l.codigotel is null,'',concat(
',Telefono,CodigoPais:',replace(ifnull(lpad(replace(l.codigotel,'+',''),3,0),''),'-',''),':NumTelefono:',
replace(ifnull(j.telefono,''),'-',''))),if(k.correo is null,'',concat(',CorreoElectronico,',k.correo))
) as emisor
from facturas a 
join sucursales c ON c.id = a.idsucursal
left join ubicaciones e on e.idfila = c.id and e.idtabla = 39
left join barrios m on m.id = e.idbarrio
left join distritos f on f.id = m.iddistrito
left join cantones g on g.id = f.idcanton
left join provincias h on h.id = g.idprovincia
left join telefonos j on j.idfila = c.id and j.idtabla = 39
left join paises l on l.id = j.idpais
left join correos k on k.idfila = c.id and k.idtabla = 39 
where a.id = vid limit 1 into @rs;

RETURN @rs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fe_getnumeracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `fe_getnumeracion`(vid varchar(20)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
    
	DECLARE rs varchar(20);
	
	CASE substring(vid,1,1)
	when '-' then
		set vid = substring(vid,2);
		select concat(lpad(if(c.idsucursal is null,0,b.idsucursal)+1,3,0),
		lpad(a.terminal,5,0),if(a.idtipo = 5,'03','02'),lpad(a.consecutivo,10,0)) as numeracion
		from estadoscuentas a join facturas b on a.idfactura = b.id
		join sucursales c on c.id = b.idsucursal
		where a.id = vid and a.idtipo in(5,6) INTO rs;
    when '^' THEN
    	set vid = substring(vid,2);
		select concat(lpad(if(b.idsucursal is null,0,a.idsucursal)+1,3,0),
    	lpad(a.terminal,5,0),lpad(a.idestado,2,0),
    	lpad(a.consecutivo,10,0)) as numeracion 
    	from facturas a join sucursales b on a.idsucursal = b.id 
    	where a.id = vid 
    	and a.idtipoventa in(2) into rs;
	else
    	select concat(lpad(if(b.idsucursal is null,0,a.idsucursal)+1,3,0),
    	lpad(a.terminal,5,0),if(a.idtipoventa = 1,'01','04'),lpad(a.consecutivo,10,0)) as numeracion 
    	from facturas a join sucursales b on a.idsucursal = b.id where a.id = vid 
    	and a.idtipoventa in(1,7) into rs;
    end case;
   
    return rs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fe_getreceptor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `fe_getreceptor`(vid int) RETURNS varchar(2048) CHARSET utf8mb4
BEGIN

SELECT concat('Nombre,',
replace(ifnull(trim(concat(l.nombre,' ',l.apellido1,' ',l.apellido2)),
a.comodin),',',' '),
',Identificacion,Tipo:',lpad(ifnull(l.idtipocliente,0),2,0),':Numero:',ifnull(replace(l.cedula,'-',''),0),
if(ifnull(l.idtipocliente,0) = 4,',IdentificacionExtranjero,""',''),
if(q.id is null,'',concat(',Ubicacion,Provincia:',q.id,
':Canton:',lpad(ifnull(p.idhacienda,0),2,0),
':Distrito:',lpad(ifnull(o.idhacienda,0),2,0),
if(n.idhacienda = 0,'',concat(':Barrio:',lpad(n.idhacienda,2,0))),
':OtrasSenas:',substring(ifnull(replace(m.direccion,',',''),''),1,160))),
if(t.codigotel is null,'',
concat(',Telefono,CodigoPais:',
ifnull(replace(replace(t.codigotel,'+',''),'-',''),''),':NumTelefono:',
ifnull(replace(r.telefono,'-',''),''))),if(s.correo is null,'',concat(',CorreoElectronico,',s.correo))
) as receptor
from facturas a
left join clientes l on l.id = a.idcliente
left join ubicaciones m on m.idfila = l.id and m.idtabla = 2 
left join barrios n on n.id = m.idbarrio
left join distritos o on o.id = n.iddistrito
left join cantones p on p.id = o.idcanton
left join provincias q on q.id = p.idprovincia
left join telefonos r on r.idfila = l.id and r.idtabla = 2
left join paises t on t.id = r.idpais
left join correos s on s.idfila = l.id and s.idtabla = 2
where a.id =  vid limit 1 into @rs;

RETURN @rs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_getidPS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `f_getidPS`(vcodigo varchar(64),
visp tinyint(2),vidproveedor int) RETURNS int(11)
BEGIN
	if visp then 
		select idproducto from proveedorproductos where codigo = vcodigo and idproveedor = vidproveedor into @idp;
		if @idp is null THEN
			insert into productos values(null);
			select @@identity into @idp;
			insert into proveedorproductos values(null);
			
			return @idp;
			
		ELSE
			RETURN @idp;
		end if;
	ELSE
		return 0;	
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getCosto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `getCosto`(vidproducto int,vinventario int) RETURNS decimal(23,5)
BEGIN
	
	DECLARE cfinal int default 0;
	DECLARE costo_temp decimal(23,5) default 0;
	DECLARE vcosto decimal(23,5);
	DECLARE vcantidad DECIMAL(23,5);
	DECLARE EOF TINYINT default 0;
	
	DECLARE cur CURSOR for 
		select a.cantidad,truncate(a.precio-a.descuento/a.cantidad,5) as total
		from detallefacturas a
		join facturas b on b.id = a.idfactura and b.idtipoventa = 2
		where a.idproducto = vidproducto order by b.fecha,a.id;
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET EOF = 1;
	
	select cantidad from detalleinventarios where idproducto = vidproducto 
	limit 1 into @cantidad;
	set @cgeneral = @cantidad;
	
	open cur;
	
	myloop: loop
		FETCH cur into vcantidad,vcosto;
		
		if EOF or @cantidad <= 0 then
			LEAVE myloop;
		end if;
	
		set costo_temp = costo_temp + vcosto*(((vcantidad*100)/@cgeneral)/100);
		set @cantidad = @cantidad - vcantidad;
		set cfinal = cfinal + 1;
		
	end loop myloop;
	
	close cur;
	
	RETURN truncate(costo_temp,5);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getDescuentoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `getDescuentoCliente`(vid int,idfactura int) RETURNS decimal(5,2)
BEGIN
select f.id,b.id,c.id,d.id,e.idnivel 
from ubicaciones a
left join barrios f on f.id = a.idbarrio
left join distritos b on b.id = f.iddistrito
left join cantones c on c.id = b.idcanton
left join provincias d on d.id = c.idprovincia
left join clientes e on e.id = a.idfila
where a.idfila = vid and a.idtabla = 2 order by a.idubicacion limit 1 into @bar,@dis,@can,@prov,@nvl;

case idfactura when 0 then


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 2 and idfila in(0,vid) 
and case a.idciclo when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc1;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 10 and idfila in(0,@dis) 
and case a.idciclo when 3 then instr(a.extra,weekday(curdate())) 
else 1 end  into @desc2;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 9 and idfila in(0,@can) 
and case a.idciclo when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc3;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 8 and idfila in(0,@prov) 
and case a.idciclo when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc4;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 69 and idfila in(0,@nvl) 
and case a.idciclo when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc5;

select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 84 and idfila in(0,@bar) 
and case a.idciclo when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc6;

RETURN @desc1+@desc2+@desc3+@desc4+@desc5+@desc6;

when idfactura < 0 then

RETURN -1;

else

set @max = (select c.descuentom from facturas a join clientes c on c.id = a.idcliente 
where a.id = idfactura) ;

RETURN @max;

end case;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getDescuentoProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `getDescuentoProducto`(vid int) RETURNS int(11)
BEGIN

select b.id,c.id,d.id 
from productos a
left join marcas b on b.id = a.idmarca
left join tipos c on c.id = b.idtipo
left join familias d on d.id = c.idfamilia
where a.id = vid into @mar,@tip,@fam;

select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 11 and idfila in(0,vid) 
and case a.idciclo when 1 then curdate() between a.f1 and a.f2 when 2 then instr(a.extra,abs(date_format(curdate(),'%m')))
when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc1;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 22 and idfila in(0,@mar) 
and case a.idciclo when 1 then curdate() between a.f1 and a.f2 when 2 then instr(a.extra,abs(date_format(curdate(),'%m')))
when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc3;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 21 and idfila in(0,@tip) 
and case a.idciclo when 1 then curdate() between a.f1 and a.f2 when 2 then instr(a.extra,abs(date_format(curdate(),'%m')))
 when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc4;


select ifnull(sum(a.valor),0) from detalledescuentos a
where a.idtabla = 20 and idfila in(0,@fam) 
and case a.idciclo when 1 then curdate() between a.f1 and a.f2 when 2 then instr(a.extra,abs(date_format(curdate(),'%m')))
 when 3 then instr(a.extra,weekday(curdate())) 
else 1 end into @desc5;
 
RETURN @desc1+@desc3+@desc4+@desc5;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getMultipleUnidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `getMultipleUnidad`(vstring varchar(100)) RETURNS decimal(23,8)
BEGIN
	declare num decimal(10,2) DEFAULT 1;
	declare regalia decimal(10,2) default 1;
	declare substr varchar(50);
	declare subReg varchar(50);
	declare hasplus int default locate('+',vstring);
	
	set vstring = lower(vstring);
	
	if hasplus THEN
		set subReg = concat(substring_index(vstring,'+',-1),'x');
		
		while locate('x',subReg) DO
			set substr = substring_index(subReg,'x',1);
			set subReg = substring(subReg,locate('x',subReg)+1);
			set regalia = regalia*substring_index(substr,'x',1);
		end while;
	
		set subReg = concat(substring_index(vstring,'+',1),'x');
		set substr = '';
	ELSE
		set regalia = 0;
		set subReg = concat(vstring,'x');
	end if;
	
	while locate('x',subReg) DO
		set substr = substring_index(subReg,'x',1);
		set subReg = substring(subReg,locate('x',subReg)+1);
		set num = num*substring_index(substr,'x',1);
	end while;
	
	return num+regalia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getSaldoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` FUNCTION `getSaldoCliente`(vid int,vaccion tinyint(3)) RETURNS decimal(23,5)
BEGIN
	select ifnull(sum(d.valor),0)-ifnull(sum(e.valor),0) as saldo 
from estadoscuentas a 
join facturas b on b.id = a.idfactura  
join clientes c on c.id = b.idcliente and c.id = vid
left join estadoscuentas d on d.id = a.id and d.idtipo in(1,2,6)
left join estadoscuentas e on e.id = a.id and e.idtipo in(3,4,5,7)
where if(c.bisproveedor,b.idtipoventa = 2,b.idtipoventa = 1)
group by c.id into @saldo;

RETURN @saldo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `activarTMPfact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `activarTMPfact`(vidfact int)
BEGIN
	declare EOF tinyint(2) default 0;
    declare vidtran int;
    declare vidcuen int;
    declare vidodt int;
    declare vdebe decimal(10,2);
    declare vhaber decimal(10,2);
    declare vdetall varchar(100);
    
	declare cur cursor for select idtransaccion,idcuenta,debe,haber,idodt,detalle 
    from temporalcuentas where idfactura = vidfact order by debe desc,haber desc;
    declare continue handler for sqlstate '02000' set EOF = 1;
    
    open cur;

    myloop:loop
		
        fetch cur into vidtran,vidcuen,vdebe,vhaber,vidodt,vdetall; 
        IF EOF THEN
			LEAVE myloop;
		END IF;
        
        if vdebe+vhaber > 0 then
			call `sp_mantdetalletransacciones`(1,0,vidcuen,vidtran,vdebe,vhaber,vidodt,vdetall);
		end if;
        
    end loop;
    
    close cur;
    
    DELETE from temporalcuentas where idfactura = vidfact limit 80;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `datosempresa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `datosempresa`(vid int)
BEGIN
    select
     a.nombre AS `nombre`,
    `a`.`cedula` AS `cedula`,
    `a`.`pfisico` AS `pfisico`,
    `a`.`logo` AS `logo`,
    group_concat(distinct `b`.`correo` separator ',') AS `correo`,
    replace(group_concat(`c`.`telefono` separator ','),',',' / ') AS `telefonos`,
    concat(convert(`d`.`direccion` using utf8mb4),', ',convert(`e`.`nombre` using utf8mb4),', ', 
    if(e.nombre = f.nombre,'',`f`.`nombre`) ) AS `direccion`,
    `g`.`valor` AS `f1`,
    `h`.`valor` AS `f2`,
    `a`.`id` as `idempresa`,
    a.idtipocliente,
    j.valor,
    0,0,0,
    0,
    a.p12 as isfe,
    a.fastshow as correo_auto,
    a.printsale as impr_venta,
    a.isprueba,
    a.user_atv,
    a.pass_atv,
    a.pass_n
from
     `production`.`sucursales` `a` left join `production`.`correos` `b` on `b`.`idtabla` = 39
        and `b`.`idfila` = `a`.`id`
      left join `production`.`telefonos` `c` on `c`.`idtabla` = 39
        and `c`.`idfila` = `a`.`id`
      left join `production`.`ubicaciones` `d` on  `d`.`idtabla` = 39
        and `d`.`idfila` = `a`.`id` 
      left join barrios i on i.id = d.idbarrio
      left join `production`.`distritos` `e` on `e`.`id` = `i`.`iddistrito`
      left join `production`.`cantones` `f` on `f`.`id` = `e`.`idcanton`
      left join `production`.`ajustes` `g` on `g`.`descr` = 'fecha_inicio_fiscal'
      left join `production`.`ajustes` `h` on `h`.`descr` = 'fecha_final_fiscal'
      left join `production`.`ajustes` `j` on `j`.`descr` = 'rfe'
 
where if(vid <> -1,`a`.`id` = vid,a.id >= 0)
group by `a`.`id`
order by a.nombre; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_getCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_getCredentials`(vidempresa int)
BEGIN 
    select valor from ajustes where descr = 'rfe' into @rfe;
    SELECT p12,
    pass_n as passwordP12,isPrueba,@rfe,user_atv,
    pass_atv,if(TIMESTAMPDIFF(minute,tkn_time,now()) < 5,acces_tkn,0),rfh_tkn
    from sucursales where id = vidempresa; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_getDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_getDetalle`(vid varchar(20))
BEGIN 

CASE substring(vid,1,1)
	when '-' then
		select a.id,if(b.id is null,'01','04') as Tipo,
    if(b.id is null,trim(replace(c.codigo,' ','')),trim(replace(b.codigo,' ',''))) as Codigo,a.cantidad,
if(b.id is null,'Sp','Otros') as UnidadMedida,
ifnull(f.simbolo,'') as UnidadMedidaComercial,
if(a.comodin = '',if(b.id is null,c.nombre,b.nombre),a.comodin) as Detalle,
replace(format(a.precio/g.divisa,5),',','') as PrecioUnitario,
replace(format((a.cantidad*a.precio)/g.divisa,5),',','') as MontoTotal,
if(a.descuento > 0,truncate(a.descuento/g.divisa,5),'') as MontoDescuento,
if(a.descuento > 0,ifnull((select nombre from descuentos where id = 
replace(substring_index(substring_index(iddescuentos,'^',1),'^',-1),'[','')),'Vendedor'),'') as NaturalezaDescuento,
replace(format(((a.cantidad*a.precio)-if(a.descuento > 0,truncate(a.descuento/g.divisa,5),0))/g.divisa,5),',','') as SubTotal,
if(a.idimpuestos = '','',a.idimpuestos) as idImpuesto,'','',
replace(format(((a.cantidad*a.precio)-a.descuento)/g.divisa,5),',','') as MontoTotalLinea,
substring_index(substring_index(g.idexoneracion,'^',1),'^',-1) as TipoDocumento,
substring_index(substring_index(g.idexoneracion,'^',2),'^',-1) as NumeroDocumento,
substring_index(substring_index(g.idexoneracion,'^',3),'^',-1) as NombreInstitucion,
substring_index(substring_index(g.idexoneracion,'^',4),'^',-1) as FechaEmision,
substring_index(substring_index(g.idexoneracion,'^',5),'^',-1) as MontoImpuesto,
substring_index(substring_index(g.idexoneracion,'^',6),'^',-1) as PorcentajeCompra
from detallefacturas a 
left join productos b on b.id = a.idproducto
left join servicios c on c.id = a.idservicio
left join descuentos d on find_in_set(d.id,a.iddescuentos)
left join unidades f on f.id = b.idunidad
left join facturas g on g.id = a.idfactura
join estadoscuentas h on h.idfactura = g.id
where h.id = substring(vid,2);
	when '^' THEN

	select a.id,if(b.id is null,'01','04') as Tipo,
    if(b.id is null,c.codigo,b.codigo) as Codigo,a.cantidad,
if(b.id is null,'Sp','Otros') as UnidadMedida,
ifnull(f.simbolo,'') as UnidadMedidaComercial,
if(a.comodin = '',if(b.id is null,c.nombre,b.nombre),a.comodin) as Detalle,
truncate(a.precio/g.divisa,5) as PrecioUnitario,
truncate((a.cantidad*a.precio)/g.divisa,5) as MontoTotal,
if(a.descuento > 0,truncate(a.descuento/g.divisa,5),'') as MontoDescuento,
if(a.descuento > 0,ifnull((select nombre from descuentos where id = 
replace(substring_index(substring_index(iddescuentos,'^',1),'^',-1),'[','')),'Vendedor'),'') as NaturalezaDescuento,
truncate(((a.cantidad*a.precio)-a.descuento)/g.divisa,5) as SubTotal,
if(a.idimpuestos = '','',lpad(substring_index(substring_index(a.idimpuestos,',',1),',',-1),2,0)) as idImpuesto,
substring_index(substring_index(a.idimpuestos,',',2),',',-1) as Impuesto,
truncate(substring_index(substring_index(a.idimpuestos,',',3),',',-1)/g.divisa,5) as ImpuestoValor,
replace(format(((a.cantidad*a.precio)-a.descuento+
substring_index(substring_index(a.idimpuestos,',',3),',',-1))/g.divisa,5),',','') as MontoTotalLinea,
substring_index(substring_index(g.idexoneracion,'^',1),'^',-1) as TipoDocumento,
substring_index(substring_index(g.idexoneracion,'^',2),'^',-1) as NumeroDocumento,
substring_index(substring_index(g.idexoneracion,'^',3),'^',-1) as NombreInstitucion,
substring_index(substring_index(g.idexoneracion,'^',4),'^',-1) as FechaEmision,
substring_index(substring_index(g.idexoneracion,'^',5),'^',-1) as MontoImpuesto,
substring_index(substring_index(g.idexoneracion,'^',6),'^',-1) as PorcentajeCompra
from detallefacturas a 
left join productos b on b.id = a.idproducto
left join servicios c on c.id = a.idservicio
left join descuentos d on find_in_set(d.id,a.iddescuentos)
left join unidades f on f.id = b.idunidad
left join facturas g on g.id = a.idfactura
where a.id = substring(vid,2);		 	
	
	ELSE
	
    select a.id,if(b.id is null,'01','04') as Tipo,
    if(b.id is null,trim(replace(c.codigo,' ','')),trim(replace(b.codigo,' ',''))) as Codigo,a.cantidad,
if(b.id is null,'Sp','Otros') as UnidadMedida,
ifnull(f.simbolo,'') as UnidadMedidaComercial,
if(a.comodin = '',if(b.id is null,c.nombre,b.nombre),a.comodin) as Detalle,
replace(format(a.precio/g.divisa,5),',','') as PrecioUnitario,
replace(format((a.cantidad*a.precio)/g.divisa,5),',','') as MontoTotal,
if(a.descuento > 0,truncate(a.descuento/g.divisa,5),'') as MontoDescuento,
if(a.descuento > 0,ifnull((select nombre from descuentos where id = 
replace(substring_index(substring_index(iddescuentos,'^',1),'^',-1),'[','')),'Vendedor'),'') as NaturalezaDescuento,
replace(format(((a.cantidad*a.precio)-if(a.descuento > 0,truncate(a.descuento/g.divisa,5),0))/g.divisa,5),',','') as SubTotal,
if(a.idimpuestos = '','',a.idimpuestos) as idImpuesto,'','',
replace(format(((a.cantidad*a.precio)-a.descuento)/g.divisa,5),',','') as MontoTotalLinea,
substring_index(substring_index(g.idexoneracion,'^',1),'^',-1) as TipoDocumento,
substring_index(substring_index(g.idexoneracion,'^',2),'^',-1) as NumeroDocumento,
substring_index(substring_index(g.idexoneracion,'^',3),'^',-1) as NombreInstitucion,
substring_index(substring_index(g.idexoneracion,'^',4),'^',-1) as FechaEmision,
substring_index(substring_index(g.idexoneracion,'^',5),'^',-1) as MontoImpuesto,
substring_index(substring_index(g.idexoneracion,'^',6),'^',-1) as PorcentajeCompra
from detallefacturas a 
left join productos b on b.id = a.idproducto
left join servicios c on c.id = a.idservicio
left join descuentos d on find_in_set(d.id,a.iddescuentos)
left join unidades f on f.id = b.idunidad
left join facturas g on g.id = a.idfactura
where a.idfactura = vid;

end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_getdocumentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_getdocumentos`(vid INT,vpag TINYINT(2),
vfiltro VARCHAR(45),vlimit VARCHAR(10))
begin 
	DECLARE lim1 INT;
	DECLARE lim2 INT;

	SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @idtipoventa;
	SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @idtipo;
	SELECT substring_index(substring_index(vfiltro,',',3),',',-1) INTO @idsucursal;
	SELECT substring_index(substring_index(vfiltro,',',4),',',-1) INTO @tfiltro;
	SELECT substring_index(substring_index(vfiltro,',',5),',',-1) INTO @filtro;
	
IF vpag = 1 THEN
    case @idtipo
    WHEN 1 THEN
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from facturas a
join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda where a.idtipoventa = 1
AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
 	when 2 then
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from estadoscuentas a join facturas b on a.idfactura = b.id 
join clientes c on c.id = b.idcliente join monedas d on d.id = b.idmoneda where a.idtipo = 6
AND IF(@idsucursal <> -1,b.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(b.comodin <> '',b.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
	when 3 then
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from estadoscuentas a join facturas b on a.idfactura = b.id 
join clientes c on c.id = b.idcliente join monedas d on d.id = b.idmoneda where a.idtipo = 5
AND IF(@idsucursal <> -1,b.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(b.comodin <> '',b.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
	when 4 then 
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda where a.idtipoventa = 7
AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
	when 5 then
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda where a.idtipoventa = 2 
and a.idestado = 5 AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
	when 6 then
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda where a.idtipoventa = 2 
and a.idestado = 6 AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
	when 7 then
select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda where a.idtipoventa = 2 
and a.idestado = 7 AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0;
	end case;
	
ELSE
	SET lim1 = substr(vlimit,1,locate(',',vlimit)-1);
	SET lim2 = substr(vlimit,locate(',',vlimit)+1);
	
	    case @idtipo
    WHEN 1 THEN
select a.id,fe_getnumeracion(a.id) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) as receptor,
concat(d.simbolo,' ',format((a.subtotal+a.exento+a.imv-a.descuento)/a.divisa,2)) as total, 
concat(d.simbolo,' ',format(a.imv/a.divisa,2)) as imv,d.simbolo,a.divisa,a.feestado,e.fecha
from facturas a
join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda 
join log e on e.idfila = a.id and e.idtabla = 64
where a.idtipoventa = 1
AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
	
 	when 2 then
select a.id,fe_getnumeracion(concat('-',a.id)) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) as receptor,
a.valor as total, b.imv as imv,d.simbolo,b.divisa,a.feestado,a.fecha
from estadoscuentas a join facturas b on a.idfactura = b.id 
join clientes c on c.id = b.idcliente join monedas d on d.id = b.idmoneda where a.idtipo = 6
AND IF(@idsucursal <> -1,b.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(b.comodin <> '',b.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
	when 3 then
select a.id,fe_getnumeracion(concat('-',a.id)) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
ifnull(trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)),
if(b.comodin = '','TIQUETE',b.comodin)) as receptor,
a.valor as total, b.imv as imv,d.simbolo,b.divisa,a.feestado,a.fecha
from estadoscuentas a join facturas b on a.idfactura = b.id 
left join clientes c on c.id = b.idcliente join monedas d on d.id = b.idmoneda where a.idtipo = 5
AND IF(@idsucursal <> -1,b.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(b.comodin <> '',b.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
when 4 then 
select a.id,fe_getnumeracion(a.id) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) as receptor,
concat(d.simbolo,' ',format((a.subtotal+a.exento+a.imv-a.descuento)/a.divisa,2)) as total, 
concat(d.simbolo,' ',format(a.imv/a.divisa,2)) as imv,d.simbolo,a.divisa,a.feestado,e.fecha
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda 
join log e on e.idfila = a.id and e.idtabla = 64
where a.idtipoventa = 7
AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
	when 5 then
select a.id,fe_getnumeracion(concat('^',a.id)) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) as receptor,
concat(d.simbolo,' ',format((a.subtotal+a.exento+a.imv-a.descuento)/a.divisa,2)) as total, 
concat(d.simbolo,' ',format(a.imv/a.divisa,2)) as imv,d.simbolo,a.divisa,a.feestado,e.fecha
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda 
join log e on e.idfila = a.id and e.idtabla = 64
where a.idtipoventa = 2 
and a.idestado = 5 AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
	when 6 then
select a.id,fe_getnumeracion(concat('^',a.id)) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) as receptor,
concat(d.simbolo,' ',format((a.subtotal+a.exento+a.imv-a.descuento)/a.divisa,2)) as total, 
concat(d.simbolo,' ',format(a.imv/a.divisa,2)) as imv,d.simbolo,a.divisa,a.feestado,e.fecha
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda 
join log e on e.idfila = a.id and e.idtabla = 64
where a.idtipoventa = 2 
and a.idestado = 6 AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
	when 7 then
select a.id,fe_getnumeracion(concat('^',a.id)) as consecutivo,date_format(a.fecha,'%d-%m-%Y') as fecha,
trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) as receptor,
concat(d.simbolo,' ',format((a.subtotal+a.exento+a.imv-a.descuento)/a.divisa,2)) as total, 
concat(d.simbolo,' ',format(a.imv/a.divisa,2)) as imv,d.simbolo,a.divisa,a.feestado,e.fecha
from facturas a
left join clientes c on c.id = a.idcliente join monedas d on d.id = a.idmoneda 
join log e on e.idfila = a.id and e.idtabla = 64
where a.idtipoventa = 2 
and a.idestado = 7 AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
    case @tfiltro 
    when 1 then a.consecutivo like concat('%',@filtro) 
    when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
    CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
    when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
    end,1) and a.id > 0 order by a.id desc limit lim1,lim2;
	end case;
	
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_getEncabezado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_getEncabezado`(vid varchar(20))
BEGIN

 CASE substring(vid,1,1)
when '-' then

select fe_getclave(vid) as Clave,
fe_getnumeracion(vid) as NumeroConsecutivo,
concat(date_format(d.fecha,'%Y-%m-%dT%H:%i:%s'),@@global.time_zone) as FechaEmision,
fe_getemisor(a.id) as Emisor,
if(a.idcliente = 0,'',fe_getreceptor(a.id)) as Receptor,
lpad(a.idtipo,2,0) as CondicionVenta,
if(a.plazo = 0,'',a.plazo) as PlazoCredito,
if(a.idtipopago = 0,99,lpad(c.idhacienda,2,0)) as MedioPago
from estadoscuentas d
join facturas a on a.id = d.idfactura
left join tipopagos c on c.id = a.idtipopago
where d.id = substring(vid,2)
group by a.id;

when '^' THEN

select fe_getclave(vid) as Clave,
fe_getnumeracion(vid) as NumeroConsecutivo,
concat(date_format(b.fecha,'%Y-%m-%dT%H:%i:%s'),@@global.time_zone) as FechaEmision,
fe_getemisor(a.id) as Emisor,
if(a.idcliente = 0,'',fe_getreceptor(a.id)) as Receptor,
lpad(a.idtipo,2,0) as CondicionVenta,
if(a.plazo = 0,'',a.plazo) as PlazoCredito,
if(a.idtipopago = 0,99,lpad(c.idhacienda,2,0)) as MedioPago
from facturas a
join log b on b.idfila = a.id and b.idtabla = 64 and b.idaccion = 1
left join tipopagos c on c.id = a.idtipopago
where a.id = substring(vid,2)
group by a.id;

else

select fe_getclave(vid) as Clave,
fe_getnumeracion(vid) as NumeroConsecutivo,
concat(date_format(b.fecha,'%Y-%m-%dT%H:%i:%s'),@@global.time_zone) as FechaEmision,
fe_getemisor(a.id) as Emisor,
if(a.idcliente = 0,'',fe_getreceptor(a.id)) as Receptor,
lpad(a.idtipo,2,0) as CondicionVenta,
if(a.plazo = 0,'',a.plazo) as PlazoCredito,
if(a.idtipopago = 0,99,lpad(c.idhacienda,2,0)) as MedioPago
from facturas a
join log b on b.idfila = a.id and b.idtabla = 64 and b.idaccion = 1
left join tipopagos c on c.id = a.idtipopago
where a.id = vid
group by a.id;

end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_getReferencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_getReferencia`(vidnota int)
BEGIN

select if(a.idtipo in (6,5),if(c.idtipoventa = 1,'01','04'),'') as 'TipoDoc',fe_getclave(a.idfactura) as 'Numero',
concat(date_format(b.fecha,'%Y-%m-%dT%H:%i:%s'),@@global.time_zone) as FechaEmision,
if(a.valor = (c.subtotal+c.imv-c.descuento+c.flete+c.ajuste+c.exento),'01','03') as 'Codigo',
replace(a.comentario,',','') as 'Razon'
from estadoscuentas a 
join log b on b.idfila = a.idfactura and b.idtabla = 64 and b.idaccion = 1
join facturas c on c.id = a.idfactura and c.idtipoventa in(1,7)
where a.id = vidnota and a.idtipo in(5,6);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_getResumen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_getResumen`(vid varchar(20))
BEGIN 

CASE substring(vid,1,1)
	when '-' then
	select b.codigo as CodigoMoneda,a.divisa as TipoCambio,
replace(format(if(e.id is null,0,sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalServGravados,
replace(format(if(e.id is null,0,sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalServExentos,
replace(format(if(d.id is null,0,sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalMercanciasGravadas,
replace(format(if(d.id is null,0,sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalMercanciasExentas,
replace(format(sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0)),5),',','') as TotalGravado,
replace(format(sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0)),5),',','') as TotalExento,
replace(format((a.subtotal+a.exento)/a.divisa,5),',','') as TotalVenta,
replace(format(a.descuento/a.divisa,5),',','') as TotalDescuentos,
replace(format((a.subtotal+a.exento-a.descuento)/a.divisa,5),',','') as TotalVentaNeta,
replace(format(sum(substring_index(substring_index(c.idimpuestos,',',3),',',-1))/a.divisa,5),',','') as TotalImpuesto,
replace(format((a.subtotal+a.exento-a.descuento)/a.divisa,5),',','') as TotalComprobante
from facturas a 
join monedas b on b.id = a.idmoneda
join detallefacturas c on c.idfactura = a.id
left join productos d on d.id = c.idproducto
left join servicios e on e.id = c.idservicio
join estadoscuentas f on f.idfactura = a.id
where f.id = substring(vid,2)
group by a.id;
	when '^' THEN
	select b.codigo as CodigoMoneda,a.divisa as TipoCambio,
truncate(if(e.id is null,0,sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0))),5) as TotalServGravados,
truncate(if(e.id is null,0,sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0))),5) as TotalServExentos,
truncate(if(d.id is null,0,sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0))),5) as TotalMercanciasGravadas,
truncate(if(d.id is null,0,sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0))),5) as TotalMercanciasExentas,
truncate(sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0)),5) as TotalGravado,
truncate(sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0)),5) as TotalExento,
truncate((a.subtotal+a.exento)/a.divisa,5) as TotalVenta,
truncate(a.descuento/a.divisa,5) as TotalDescuentos,
truncate((a.subtotal+a.exento-a.descuento)/a.divisa,5) as TotalVentaNeta,
truncate(sum(substring_index(substring_index(c.idimpuestos,',',3),',',-1))/a.divisa,5) as TotalImpuesto,
truncate((a.subtotal+a.exento-a.descuento+sum(substring_index(substring_index(c.idimpuestos,',',3),',',-1)))/a.divisa,5) as TotalComprobante
from facturas a 
join monedas b on b.id = a.idmoneda
join detallefacturas c on c.idfactura = a.id
left join productos d on d.id = c.idproducto
left join servicios e on e.id = c.idservicio
where a.id = substring(vid,2)
group by a.id;
	else
select b.codigo as CodigoMoneda,a.divisa as TipoCambio,
replace(format(if(e.id is null,0,sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalServGravados,
replace(format(if(e.id is null,0,sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalServExentos,
replace(format(if(d.id is null,0,sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalMercanciasGravadas,
replace(format(if(d.id is null,0,sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0))),5),',','') as TotalMercanciasExentas,
replace(format(sum(if(c.imv > 0,(c.precio*c.cantidad)/a.divisa,0)),5),',','') as TotalGravado,
replace(format(sum(if(c.imv = 0,(c.precio*c.cantidad)/a.divisa,0)),5),',','') as TotalExento,
replace(format((a.subtotal+a.exento)/a.divisa,5),',','') as TotalVenta,
replace(format(a.descuento/a.divisa,5),',','') as TotalDescuentos,
replace(format((a.subtotal+a.exento-a.descuento)/a.divisa,5),',','') as TotalVentaNeta,
0 as TotalImpuesto,
replace(format((a.subtotal+a.exento-a.descuento)/a.divisa,5),',','') as TotalComprobante
from facturas a 
join monedas b on b.id = a.idmoneda
join detallefacturas c on c.idfactura = a.id
left join productos d on d.id = c.idproducto
left join servicios e on e.id = c.idservicio
where a.id = vid
group by a.id;
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_integracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_integracion`(vid varchar(20),vidsucursal int,
vfecha date,vrepetir tinyint(2))
begin 
    select valor from ajustes where descr = 'fekey' into @fekey;

    CASE substring(vid,1,1)
        when '-' then
            select ec5 from consecutivos where idsucursal = vidsucursal into @consecutivo;
            if !vrepetir then
            update consecutivos set ec5 = ec5+1 where idsucursal = vidsucursal;
            end if;
            
            select concat(replace(f.codigotel,'+',''),date_format(vfecha,'%d%m%y'),
            lpad(replace(g.cedula,'-',''),12,0),
            '0010000103',lpad(@consecutivo,10,0),1,@fekey) as clave,
            if(g.pfisico <> '',g.pfisico,g.nombre) as sucname
            from sucursales g
            join ubicaciones b on b.idfila = g.id and b.idtabla = 39
            join barrios h on h.id = b.idbarrio
            join distritos c on c.id = h.iddistrito
            join cantones d on d.id = c.idcanton
            join provincias e on e.id = d.idprovincia
            join paises f on f.id = e.idpais 
            where g.id = vidsucursal group by g.id;
        when '^' THEN
            select ec6 from consecutivos where idsucursal = vidsucursal into @consecutivo;
            if !vrepetir then
            update consecutivos set ec6 = ec6+1 where idsucursal = vidsucursal;
            end if;
            
            select concat(replace(f.codigotel,'+',''),date_format(vfecha,'%d%m%y'),
            lpad(replace(g.cedula,'-',''),12,0),
            '0010000102',lpad(@consecutivo,10,0),1,@fekey) as clave,g.nombre as sucursal,
            lpad(g.idtipocliente,2,0) as tcliente,
            replace(g.cedula,'-','') as cedula,ifnull(h.idhacienda,'') as barrio,ifnull(c.idhacienda,'') as distrito,
            ifnull(replace(k.codigotel,'+',''),''),ifnull(replace(i.telefono,'-',''),''),j.correo,
			if(g.pfisico <> '',g.pfisico,g.nombre) as sucname
            from estadoscuentas i
            join facturas a on a.id = i.idfactura
            join sucursales g on g.id = a.idsucursal
            join ubicaciones b on b.idfila = g.id and b.idtabla = 39
            join barrios h on h.id = b.idbarrio
            join distritos c on c.id = h.iddistrito
            join cantones d on d.id = c.idcanton
            join provincias e on e.id = d.idprovincia
            join paises f on f.id = e.idpais 
            where i.id = substring(vid,2) and i.idtipo in(6);
        when '!' THEN
            select consecutivo6 from consecutivos where idsucursal = vidsucursal into @consecutivo;
            if !vrepetir then
            update consecutivos set consecutivo6 = consecutivo6+1 where idsucursal = vidsucursal;
            end if;
            
            select concat(replace(f.codigotel,'+',''),date_format(vfecha,'%d%m%y'),
            lpad(replace(g.cedula,'-',''),12,0),
            '0010000104',lpad(@consecutivo,10,0),1,@fekey) as clave,g.nombre as sucursal,
            lpad(g.idtipocliente,2,0) as tcliente,
            replace(g.cedula,'-','') as cedula,ifnull(lpad(h.idhacienda,2,0),'') as barrio,
            ifnull(lpad(c.idhacienda,2,0),'') as distrito,
            ifnull(lpad(d.idhacienda,2,0),'') as canton,ifnull(e.id,'') as provincia,
            ifnull(replace(k.codigotel,'+',''),''),ifnull(replace(i.telefono,'-',''),''),j.correo,
            if(g.pfisico <> '',g.pfisico,g.nombre) as sucname
            from sucursales g
            join ubicaciones b on b.idfila = g.id and b.idtabla = 39
            join barrios h on h.id = b.idbarrio
            join distritos c on c.id = h.iddistrito
            join cantones d on d.id = c.idcanton
            join provincias e on e.id = d.idprovincia
            join paises f on f.id = e.idpais
            left join telefonos i on i.idtabla = 39 and i.idfila = g.id
            left join paises k on k.id = i.idpais
            join correos j on j.idtabla = 39 and j.idfila = g.id
            where g.id = vidsucursal group by g.id;
        ELSE
            select consecutivo from consecutivos where idsucursal = vidsucursal into @consecutivo;
            if !vrepetir then
            update consecutivos set consecutivo = consecutivo+1 where idsucursal = vidsucursal limit 1;
            end if;
            
            select concat(replace(f.codigotel,'+',''),date_format(vfecha,'%d%m%y'),
            lpad(replace(g.cedula,'-',''),12,0),
            '0010000101',lpad(@consecutivo,10,0),1,@fekey) as clave,g.nombre as sucursal,
            lpad(g.idtipocliente,2,0) as tcliente,
            replace(g.cedula,'-','') as cedula,ifnull(lpad(h.idhacienda,2,0),'') as barrio,
            ifnull(lpad(c.idhacienda,2,0),'') as distrito,
            ifnull(lpad(d.idhacienda,2,0),'') as canton,ifnull(e.id,'') as provincia,
            ifnull(replace(k.codigotel,'+',''),''),ifnull(replace(i.telefono,'-',''),''),j.correo,
            if(g.pfisico <> '',g.pfisico,g.nombre) as sucname
            from sucursales g
            join ubicaciones b on b.idfila = g.id and b.idtabla = 39
            join barrios h on h.id = b.idbarrio
            join distritos c on c.id = h.iddistrito
            join cantones d on d.id = c.idcanton
            join provincias e on e.id = d.idprovincia
            join paises f on f.id = e.idpais
            left join telefonos i on i.idtabla = 39 and i.idfila = g.id
            left join paises k on k.id = i.idpais
            join correos j on j.idtabla = 39 and j.idfila = g.id
            where g.id = vidsucursal group by g.id;
    end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fe_recepcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `fe_recepcion`(vid varchar(20))
BEGIN
	select a.referencia as Clave,
	replace(h.cedula,'-','') as NumeroCedulaEmisor,
	concat(date_format(g.fecha,'%Y-%m-%dT%H:%i:%s'),@@global.time_zone) as FechaEmisionDoc,
	a.idestado-4 as Mensaje,
	a.comentario as DetalleMensaje,
	replace(format(a.imv/a.divisa,5),',','') as MontoTotalImpuesto,
	replace(format((a.subtotal+a.imv+a.exento-a.descuento)/a.divisa,5),',','') as TotalFactura,
	replace(f.cedula,'-','') as NumeroCedulaReceptor,
	fe_getnumeracion(vid) as NumeroConsecutivoReceptor
	from facturas a 
join monedas b on b.id = a.idmoneda
join detallefacturas c on c.idfactura = a.id
left join productos d on d.id = c.idproducto
left join servicios e on e.id = c.idservicio
join sucursales f on f.id = a.idsucursal
join log g on g.idfila = a.id and g.idtabla = 64 and g.idaccion = 1
join clientes h on h.id = a.idcliente
where a.id = substring(vid,2)
group by a.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCostoTmp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `getCostoTmp`(vidproducto int,vinventario int,
vncantidad DECIMAL(23,5),vncosto decimal(23,5))
BEGIN
	
	DECLARE cfinal int default 0;
	DECLARE costo_temp decimal(23,5) DEFAULT 0;
	DECLARE vcosto decimal(23,5);
	DECLARE vcantidad DECIMAL(23,5);
	DECLARE EOF TINYINT default 0;
	
	DECLARE cur CURSOR for 
		select a.cantidad,truncate(a.precio-a.descuento/a.cantidad,5) as total
		from detallefacturas a
		join facturas b on b.id = a.idfactura and b.idtipoventa = 2
		where a.idproducto = vidproducto order by b.fecha,a.id;
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET EOF = 1;
	
	select sum(cantidad) from detalleinventarios where idproducto = vidproducto 
	limit 1 into @cantidad;
	set @cgeneral = @cantidad+vncantidad;
	
	open cur;
	
	myloop: loop
		FETCH cur into vcantidad,vcosto;
		
		if EOF or @cantidad <= 0 then
			LEAVE myloop;
		end if;
	
		set costo_temp = costo_temp + vcosto*(((vcantidad*100)/@cgeneral)/100);
		set @cantidad = @cantidad - vcantidad;
		set cfinal = cfinal + 1;
		
	end loop myloop;
	
	close cur;
	
	SELECT if(costo_temp,truncate(truncate(costo_temp,5) + vncosto*(((vncantidad*100)/@cgeneral)/100),5),vncosto);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `getMail`(vidfila int,vidtabla int)
begin
 
select * from correos where idtabla = vidtabla and idfila = vidfila;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPhone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `getPhone`(vidfila int,vidtabla int)
begin
 
select t.idtelefono,t.idtipotel,t.telefono,i.img,i.regex,t.idpais 
from telefonos t 
join tipotelefonos i on i.id = t.idtipotel
where t.idtabla = vidtabla and t.idfila = vidfila;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUbication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `getUbication`(vidfila int,vidtabla int)
BEGIN 
	select a.idubicacion,a.direccion,b.id,b.nombre,c.id,c.nombre,d.id,d.nombre,e.id,e.nombre,f.id,f.nombre,
	a.latitud,a.longitud
	from ubicaciones a
	join barrios b on a.idbarrio = b.id
	join distritos c on b.iddistrito = c.id
	join cantones d on c.idcanton = d.id
	join provincias e on d.idprovincia = e.id
	join paises f on e.idpais = f.id
	where a.idfila = vidfila and a.idtabla = vidtabla;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `krattos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `krattos`(vsel varchar(500),vtabla int, vwhere varchar(600))
BEGIN

IF locate(';',concat(vsel,vtabla,vwhere)) > 0  THEN 
    SET @msj = concat('Error de Sintaxis');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = @msj;
    END IF; 

select nombre from tablas where id = vtabla into @ntabla;

if vsel <> '' then 

if vwhere = '' then
set @mysql = concat('SELECT ',vsel,' FROM ',@ntabla);
else
set @mysql = concat('SELECT ',vsel,' FROM ',@ntabla,' WHERE ',vwhere);
end if;

prepare stmt from @mysql;
execute stmt;

else

set @mysql = concat('CALL ',@ntabla,'(',vwhere,')');
prepare stmt from @mysql;
execute stmt;

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `naruto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `naruto`(vstring varchar(255),
vtabla varchar(64),
vvariable varchar(15))
begin
DECLARE parte varchar(255);
select char_length(vstring) - char_length(replace(vstring,':','')) into @cantidad;

if vvariable <> 0 then
    set vstring = replace(vstring,'?',vvariable);
end if;

while @cantidad > 0 do

set parte = replace(replace(substring_index(vstring,':',1),'[','('),']',')');
set vstring = substring(vstring,locate(':',vstring)+1);
set @mysql = concat('INSERT INTO ',vtabla,' values',parte);

prepare stmt from @mysql;
execute stmt;

set @cantidad = @cantidad -1;

end while;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pruebareporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `pruebareporte`()
begin
select a.id,a.idproducto,a.precio
from detallefacturas a
join facturas b on a.idfactura = b.id and b.idtipoventa = 2
group by a.idproducto,b.idcliente;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchclient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `searchclient`(vvariable varchar(150),
visprv tinyint(2),vidsucursal int)
BEGIN

DECLARE vid int default 0;
DECLARE vno varchar(100) default '';
DECLARE vce varchar(40) default '';
DECLARE desc_total decimal(5,2) default 0;
    
select c.id,concat(c.nombre,' ',c.apellido1,' ',c.apellido2) as vnombre,if(c.cedula is not null,concat('[',c.cedula,']'),'') 
as vcedula
from clientes c
WHERE c.id > 0 AND c.bisproveedor = visprv
and if(vidsucursal = -1,1,find_in_set(c.idsucursal,concat('-1,',vidsucursal)))
HAVING vnombre = if(locate('[',vvariable),substring_index(vvariable,' [',1),substring_index(vvariable,' *',1))
limit 1
into vid,vno,vce;

if vid <> '' then 


SELECT vid as vid,vno as vnombre,vce as vcedula,
c.plazo,
c.descuentom as vdescuento, 
0 as idimv,
0 as impuesto,0 as valor,
0 as exo, 0 as resumen,
0 as vclip,getSaldoCliente(vid,0) as saldo,c.credito,c.idmoneda,c.idagente
FROM clientes c
WHERE c.id = vid
and if(vidsucursal = -1,1,find_in_set(c.idsucursal,concat('-1,',vidsucursal)));

else

select 0 as vid,'' as vnombre,'' as vcedula,
0,0,0 as idimv,
0 impuesto,0 as valor,
0 as exo, 0,0 as vclip,0,0;

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchInsums` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `searchInsums`(vvariable varchar(100),
vtipo tinyint(2),vidsucursal int)
begin 
    
    case vtipo    
    when 2 then 
    
    select ifnull(concat(a.nombre,' ',d.nombre),a.nombre) as nombre,null from productos a join detalleinventarios b on b.idproducto = a.id 
    join inventarios c on c.id = b.idinventario and c.idsucursal in(vidsucursal,-1)
    left join marcas d on d.id = a.idmarca
    where a.id > 0 and a.nombre like concat('%',vvariable,'%') and a.idsucursal in(vidsucursal,-1) group by a.id;
    
    when 3 then
    
    select concat('[SERV] ',nombre),null from servicios where id > 0 and nombre like concat('%',vvariable,'%') 
    and idsucursal in(vidsucursal,-1);
    
    when 4 then
    
    select concat('[PCK] ',nombre),null from paquetes where id > 0 and nombre like concat('%',vvariable,'%');
    
    when 5 then
    
    (select concat(a.nombre,' ',d.nombre) as nombre,null from productos a join detalleinventarios b on b.idproducto = a.id 
    join inventarios c on c.id = b.idinventario and c.idsucursal in(vidsucursal,-1)
    left join marcas d on d.id = a.idmarca
    where a.id > 0 and a.nombre like concat('%',vvariable,'%') and a.idsucursal in(vidsucursal,-1) group by a.id)
    union
    (select concat('[SERV] ',a.nombre) as nombre,null from servicios a join detalleinventarios b on b.idproducto = (a.id*-1) where a.id > 0
    and idsucursal in(vidsucursal,-1) having nombre like concat('%',vvariable,'%'));
    
   	when 7 then 
   	
   	select idinventario from production.asignarinventarios where idtipo = 4 and idsucursal = vidsucursal into @inv;
   
   	select trim(concat(ifnull(d.nombre,''),' ',a.nombre)) as nombre,null from productos a 
   	join detalleinventarios b on b.idproducto = a.id and b.idinventario = @inv
    left join marcas d on d.id = a.idmarca
    where a.id > 0 and a.idsucursal in(vidsucursal,-1) and a.nombre like concat('%',vvariable,'%')
   	group by a.id;
   	
   	when 8 then 
   	
   	select idinventario from production.asignarinventarios where idtipo = 4 and idsucursal = vidsucursal into @inv;
   
   	select trim(concat(ifnull(d.nombre,''),' ',a.nombre)) as nombre,null from productos a 
   	join detalleinventarios b on b.idproducto = a.id and b.idinventario = @inv
    left join marcas d on d.id = a.idmarca
    where a.id > 0 and a.idsucursal in(vidsucursal,-1) and a.codigo like concat('%',vvariable,'%')
   	group by a.id;
   	
   	when 9 THEN
   	
   	select a.id,a.codigo,a.nombre,ifnull(b.nombre,''),ifnull(c.nombre,''),ifnull(d.nombre,''),
   	format(((a.costo+a.ganancia)*if(a.exoneracion = 100,1,(1+(sum(f.valor)/100)))),2) as venta,
   	if(e.cantidad < 0,0,e.cantidad) as cantidad
   	from productos a left join marcas b on a.idmarca = b.id left join tipos c on c.id = b.idtipo
   	left join familias d on d.id = c.idfamilia join detalleinventarios e on e.idproducto = a.id and 
   	e.idinventario = 6
   	left join defectoimpuestos f on f.id > 0 and f.idtabla = 11 and f.idfila in(0,a.id)
   	where a.id > 0 and a.idsucursal in(-1,vidsucursal)
   	and trim(concat(a.codigo,' ',a.nombre,' ',ifnull(b.nombre,''),' ',ifnull(c.nombre,''),
   	ifnull(d.nombre,''))) like concat('%',vvariable,'%')
   	group by a.id
   	order by a.nombre
   	limit 20;
   	
    else

    (select if(vtipo = 1,ifnull(concat(a.nombre,' ',d.nombre),a.nombre),a.codigo) as nombre,null 
    from productos a join detalleinventarios b on b.idproducto = a.id
    join inventarios c on c.id = b.idinventario
    left join marcas d on d.id = a.idmarca
    where a.id > 0 and find_in_set(vidsucursal,a.idsucursal) group by a.id having nombre like concat('%',vvariable,'%'))
    union
    (select if(vtipo = 1,concat('[SERV] ',nombre),concat('s-',codigo)) as nombre,null 
    from servicios where id > 0 and find_in_set(vidsucursal,idsucursal)
    having nombre like concat('%',vvariable,'%'))
     ;
    
    end case;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `shadow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `shadow`(vaccion tinyint(3),vtabla int(3),
arg1 varchar(1024),arg2 varchar(1024))
begin 
    
    declare lastID int default 0;
	select nombre from tablas where id = vtabla into @ntabla;
    
    case vaccion when 1 then
		set @mysql = concat('INSERT INTO ',@ntabla,if(arg1 <> '',concat('(',arg1,')'),''),
			' VALUES(',arg2,')');
		
	when 2 then
		set @mysql = concat('UPDATE ',@ntabla,' SET ',arg1,' WHERE ',arg2);
	when 3 then
		set @mysql = concat('DELETE FROM ',@ntabla,' WHERE ',arg1);
	else
		if localte('drop ',arg1) then
		SET @msj = concat('QUERY INVALIDO');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
    	end if;
    	set @mysql = arg1;
	end case;
    
	prepare stmt from @mysql;
	execute stmt;
    SET lastID = LAST_INSERT_ID();
    if vaccion = 1 then
		select lastID;
	else
		select true;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_arrendamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_arrendamiento`(vid int)
BEGIN
	select * from arrendamientos a where id = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_auth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_auth`(vcodigo varchar(64))
BEGIN
    select id from usuarios where concat(lpad(id,2,0),clave) = 
    concat(substring(vcodigo,1,2),md5(aes_encrypt(substring(vcodigo,3),'lt6969')));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambiarfactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cambiarfactura`(vid int,detalle varchar(1024))
begin
	
	if vid > 0 then 
select a.idcliente,concat(c.nombre,' ',c.apellido1,' ',c.apellido2,' *',replace(c.cedula,'-',''),'*') as cliente,
c.bisproveedor,
ifnull(d.id,e.id*-1) as idproducto,
ifnull(d.codigo,e.codigo) as codigo,
if(b.comodin <> '',b.comodin,ifnull(d.nombre,e.nombre)) as producto,
format(b.precio,2) as precio,
b.cantidad as cantidad,
format(b.precio*b.cantidad,2) as total,b.imv,
b.comodin,b.idimpuestos,
b.iddescuentos,
b.idinventario as idinventario,
if(SUBSTRING_INDEX(idimpuestos,',',1),concat(',',SUBSTRING_INDEX(idimpuestos,',',1),','),'') as strimp,
b.descuento,0,if(a.idtipoventa in (4,5,6),1,if(a.idtipoventa = 3,2,'ERROR')) as idtipoventa,
b.idunidad,ifnull(m.simbolo,'SP') as unidad,
replace(format((b.imv/(b.imv+b.precio)*100),0),',','') as exoneracion,
ifnull(d.maxdescuento,0) as mdsc,
if(SUBSTRING_INDEX(b.iddescuentos,',',1),concat(',',SUBSTRING_INDEX(b.iddescuentos,',',1),','),0) as iddescuento,
b.descuento as descuento2,
if(d.isinventariado = 0,100,0) as inventariado
from facturas a
join detallefacturas b on b.idfactura = a.id and if(detalle <> '',find_in_set(b.id,detalle),1)
join clientes c on a.idcliente = c.id
left join productos d on b.idproducto = d.id 
left join servicios e on b.idservicio = e.id 
left join paquetes f on b.idpaquete = f.id 
left join detalleinventarios l on b.idinventario = l.idinventario
left join unidades m on b.idunidad = m.id
where a.id = vid 
group by ifnull(d.id,e.id);

else 

set vid = vid *-1;

select a.idcliente,concat(c.nombre,' ',c.apellido1,' ',c.apellido2,' *',replace(c.cedula,'-',''),'*') as cliente,
c.bisproveedor,
ifnull(d.id,e.id*-1) as idproducto,
ifnull(d.codigo,e.codigo) as codigo,
ifnull(d.nombre,e.nombre) as producto,
format(if(b.imv > 0,b.precio,b.precio),2) as precio,
b.cantidad as cantidad,
format(if(b.imv > 0,b.precio+b.imv,b.precio)*b.cantidad,2) as total,b.imv,
b.comodin,b.idimpuestos,
b.iddescuentos,
b.idinventario as idinventario,
if(SUBSTRING_INDEX(idimpuestos,',',1),concat(',',SUBSTRING_INDEX(idimpuestos,',',1),','),'') as strimp,
b.descuento,0,if(a.idtipoventa in (4,5,6),1,if(a.idtipoventa = 3,2,'ERROR')) as idtipoventa,
b.idunidad,ifnull(m.simbolo,'SP') as unidad,
replace(format((b.imv/(b.imv+b.precio)*100),0),',','') as exoneracion,
ifnull(d.maxdescuento,0) as mdsc,
if(SUBSTRING_INDEX(b.iddescuentos,',',1),concat(',',SUBSTRING_INDEX(b.iddescuentos,',',1),','),0) as iddescuento,
b.descuento as descuento2,
if(d.isinventariado = 0,100,0) as inventariado
from tmpfacturas a
join tmpdetallefacturas b on b.idfactura = a.id
left join clientes c on a.idcliente = c.id
left join productos d on b.idproducto = d.id 
left join servicios e on b.idservicio = e.id 
left join paquetes f on b.idpaquete = f.id 
left join detalleinventarios l on b.idinventario = l.idinventario
left join unidades m on b.idunidad = m.id
where a.id = vid 
group by ifnull(d.id,e.id);

end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambioclave` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cambioclave`(vcodigo varchar(45),vidusuario int(11))
BEGIN
	
	update usuarios set bcambioPSSW = 1,codigo = md5(aes_encrypt(vcodigo,'lt6969')) where id = vidusuario;
    select aes_decrypt(codigo,'lt2016') from usuarios where id = vidusuario;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambiocompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cambiocompra`(vid int,detalle varchar(100))
begin
set @mysql = concat("select a.idcliente,concat(c.nombre,' ',c.apellido1,' ',c.apellido2,' *',c.cedula,'*') as cliente,
if(b.idservicio is null or b.idpaquete is null,d.id,if(b.idproducto is null or b.idpaquete is null,e.id,
if(b.idproducto is null or b.idservicio is null,f.id,'ERROR'))) as idproducto,
if(b.idservicio is null or b.idpaquete is null,d.codigo,if(b.idproducto is null or b.idpaquete is null,e.codigo,
if(b.idproducto is null or b.idservicio is null,f.codigo,'ERROR'))) as codigo,
if(b.idservicio is null or b.idpaquete is null,d.nombre,if(b.idproducto is null or b.idpaquete is null,e.nombre,
if(b.idproducto is null or b.idservicio is null,f.nombre,'ERROR'))) as producto,
if(b.idservicio is null or b.idpaquete is null,d.costo,if(b.idproducto is null or b.idpaquete is null,e.pbase,
if(b.idproducto is null or b.idservicio is null,f.total,'ERROR'))) as precio,b.cantidad,
ifnull(j.id,k.id) as idimpuesto,ifnull(j.valor,k.valor) as valor,upper(ifnull(j.nombre,k.nombre)) as impuesto,ifnull(max(i.id),0) as clip,
min(l.idinventario) as idinventario
from facturas a
join detallefacturas b on b.idfactura = a.id
join clientes c on a.idcliente = c.id
left join productos d on b.idproducto = d.id and d.id in (",detalle,")
left join servicios e on b.idservicio = e.id and e.id in (",detalle,")
left join paquetes f on b.idpaquete = f.id and f.id in (",detalle,")
left join defectoimpuestos g on g.id > 0
left join defectoimpuestos h on g.id = h.id and h.idtabla = 11 and !h.idfila
left join defectoimpuestos i on g.id = i.id and i.idtabla = 11 and i.idfila = d.id
left join impuestos j on h.idimpuesto = j.id
left join impuestos k on i.idimpuesto = k.id
join detalleinventarios l on l.idproducto = d.id
where a.id = ",vid," group by b.idproducto having precio is not null");
prepare stmt1 from @mysql;
execute stmt1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambiodia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cambiodia`(vidsucursal int)
BEGIN 
	update consecutivos set consecutivo5 = 0 where idsucursal = vidsucursal;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambiounidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cambiounidad`(vidproducto varchar(13))
BEGIN 
    set @cas = substring(vidproducto,1,1);

    case @cas
    when '-' THEN
        select 0,'SP',1;
    else
    	if @cas <> '+' then
    		select idunidad from productos where id = vidproducto into vidproducto;
    	end if;
    
        select b.id,b.nombre,b.cantidad,b.idtipo from unidades a
		join unidades b on 
		if(!a.idunidad,b.idunidad = a.id or a.id = b.id,b.idunidad = a.idunidad or b.id = a.idunidad)
		where a.id = vidproducto order by cantidad;
    end case;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargarcuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cargarcuentas`(vidtipoventa tinyint(1),vid int,
vidcliente int,vtime tinyint(1),vtipo tinyint(2),vidsucursal int)
BEGIN
SELECT
    a.id,if(b.idcliente = 0,b.comodin,TRIM(CONCAT(c.apellido1,' ',c.apellido2,' ',c.nombre))) AS nombre,c.cedula,
    LPAD(if(b.referencia > 0,b.referencia,if(b.consecutivo > 0,b.consecutivo,b.id)), 6, 0) AS factura,b.referencia,
    DATE_FORMAT(b.fecha, '%Y-%m-%d') AS fecha,
    CONCAT(IFNULL(e.simbolo, ''),FORMAT(ABS(MAX(debe) - MAX(haber)), 2)) AS saldov,
    DATEDIFF(DATE_FORMAT(DATE_ADD(b.fecha, INTERVAL b.plazo DAY),'%Y-%m-%d'),CURDATE()) AS dias,
    b.plazo,d.nombre,a.valor,t.nombre,a.idfactura,vidtipoventa,
    replace(format(ABS(debe - haber),2),',','') AS saldo
FROM
    estadoscuentas a
        JOIN
    facturas b ON b.id = a.idfactura AND if(vidtipoventa = 1, b.idtipoventa in(1,7),b.idtipoventa = 2)
        JOIN
    clientes c ON c.id = b.idcliente
        AND IF(vidcliente = 0, 1, c.id = vidcliente)
        JOIN
    sucursales d ON d.id = b.idsucursal
        JOIN
    tipoestadocuentas t ON t.id = a.idtipo
        LEFT JOIN
    monedas e ON e.id = b.idmoneda
WHERE
    if(vtipo = 0 ,1,b.idtipo = vtipo)
        AND IF(vid = 0, 1, a.idfactura = vid) AND b.idsucursal = vidsucursal
        and a.id in(select max(id) from estadoscuentas group by idfactura)
GROUP BY a.idfactura
HAVING saldo > 0 AND CASE vtime WHEN -1 THEN dias < 0 WHEN 1 THEN dias >= 0 ELSE 1 end;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargardetallecuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cargardetallecuentas`(vtipo tinyint(1),
vid int, vidsucursal int)
BEGIN

select a.id, trim(concat(c.apellido1,' ',c.apellido2,' ',c.nombre)) as nombre, 
lpad(b.consecutivo,6,0) as factura, b.referencia, date_format(a.fecha,'%Y-%m-%d') as fecha,
format(abs(a.debe-a.haber),2) as saldo,
datediff(date_format(date_add(b.fecha,interval b.plazo day),'%Y-%m-%d'),curdate()) as dias,
b.plazo, a.valor, d.nombre, u.user,if(d.id <> 1,lpad(a.consecutivo,6,0),'') AS consecutivo
from estadoscuentas a 
join facturas b on a.idfactura = b.id and a.idfactura = vid
join clientes c on c.id = b.idcliente
join tipoestadocuentas d on d.id = a.idtipo
join usuarios u on a.idusuario = u.id
where b.idtipoventa = vtipo
and if(vidsucursal = -1,1,find_in_set(b.idsucursal,concat('-1,',vidsucursal)))
having saldo > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargarproductoxinventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cargarproductoxinventario`(vidinventario int)
begin
select a.id,a.nombre,a.codigo,a.codigointerno,a.idunidad,c.simbolo,b.idinventario,d.nombre as inventario,b.cantidad
from productos a
join detalleinventarios b on b.idproducto = a.id and b.idinventario = vidinventario
join unidades c on a.idunidad = c.id
join inventarios d on b.idinventario = d.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargar_descargar_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cargar_descargar_productos`(vaccion tinyint(3),vidinventario int,vidproducto int,vcantidad decimal(23,5),vidruta int)
begin

if (select count(id) from temp_inventariorutas where idinventario = vidinventario and idproducto = vidproducto) > 0 and vaccion = 1 then 
     set @msj = CONCAT('Producto ya ha sido agregado');
     signal sqlstate '45000'
     set message_text = @msj;
end if;

case vaccion when 1 then
	
	insert into temp_inventariorutas values(null,vidinventario,vidproducto,vcantidad,vidruta);
	select @@identity;
when 2 then
	
	delete from temp_inventariorutas where id > 0 and idproducto = vidproducto and idinventario = vidinventario and idruta = vidruta;
    select 1;
when 3 then
	
	update detalleinventarios a join temp_inventariorutas b on a.idproducto = b.idproducto and a.idinventario = b.idinventario
    set a.cantidad = a.cantidad - b.cantidad where b.idruta = vidruta;
    select 1;
when 4 then
	
    if (select count(id) from detalleinventarios where id > 0 and idinventario = vidinventario and idproducto = vidproducto) = 0 then
		insert into detalleinventarios values(null,vidinventario,vidproducto,vcantidad);
    else
		update detalleinventarios set cantidad = cantidad + vcantidad where id > 0 and idinventario = vidinventario and idproducto = vidproducto;
    end if;
    truncate temp_inventariorutas;
    select 1;
when 5 then
	
    select idinventario from detallerutas where id = vidruta into @invruta;
    update detalleinventarios set cantidad = cantidad - vcantidad where id > 0 and idproducto = vidproducto and idinventario = @invruta;
	update detalleinventarios set cantidad = cantidad + vcantidad where id > 0 and idproducto = vidproducto and idinventario = vidinventario;
when 6 then
		insert into temp_inventariorutas values(null,vidinventario,vidproducto,vcantidad,vidruta);
    select 1;
when 7 then
	select count(id) from detalleinventarios where idproducto = vidproducto and idinventario = vidinventario into @exist;
    select idinventario from detallerutas where id = vidruta into @invruta;
    if @count = 0 then
		insert into detalleinventarios values(null,vidproducto,vidinventario,vcantidad);
	else
		update detalleinventarios set cantidad = cantidad + vcantidad where idproducto = vidproducto and idinventario = vidinventario;
    end if;
    update detalleinventarios set cantidad = cantidad - vcantidad where idproducto = vidproducto and idinventario = @invruta;
    select 1;
end case;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Cargar_fac_Notas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_Cargar_fac_Notas`(vid INT,vpag TINYINT(2),
vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN
	DECLARE lim1 INT;
	DECLARE lim2 INT;
	
	SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @vprov;
	SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @vfactura;
	SELECT substring_index(substring_index(vfiltro,',',3),',',-1) INTO @vcliente;
	SELECT substring_index(substring_index(vfiltro,',',4),',',-1) INTO @vdesde;
	SELECT substring_index(substring_index(vfiltro,',',5),',',-1) INTO @vhasta;
	SELECT substring_index(substring_index(vfiltro,',',6),',',-1) INTO @vnum1;
	SELECT substring_index(substring_index(vfiltro,',',7),',',-1) INTO @vnum2;
	SELECT substring_index(substring_index(vfiltro,',',8),',',-1) INTO @vidsucursal;

	IF vpag = 1 THEN
	SELECT REPLACE(TRUNCATE(count(f.id)/10,2),'.00','') AS count
	FROM facturas f 
JOIN sucursales s ON f.idsucursal=s.id
left JOIN  clientes c ON f.idcliente = c.id  AND c.bisproveedor = @vprov
LEFT JOIN log l ON l.idtabla = 64 AND l.idfila = f.id
WHERE IF(@vfactura <> 0,f.consecutivo = @vfactura,1) and  if(@vprov = 0 , f.idtipoventa in(1,7), 2 ) 
AND IF(@vcliente <> 0, f.idcliente = @vcliente,1) AND IF(@vdesde <> '',date_format(f.fecha,'%Y-%m-%d') 
BETWEEN @vdesde AND @vhasta,1) AND 
IF(@vnum1 <> 0 , f.consecutivo BETWEEN @vnum1 AND @vnum2,1) 
and if(@vidsucursal = -1,1,find_in_set(f.idsucursal,concat('-1,',@vidsucursal)));
	else
SET lim1 = substr(vlimit,1,locate(',',vlimit)-1);
SET lim2 = substr(vlimit,locate(',',vlimit)+1);

SELECT concat(IF(f.idtipoventa = 7,'T-','F-'),
lpad(f.consecutivo,6,0)) AS factura,
ifnull(concat(c.nombre,' ',c.apellido1,' ',c.apellido2), f.comodin) AS nombre,
date_format(ifnull(l.fecha,f.fecha),'%d-%m-%Y') as fecha,s.nombre,f.id
FROM facturas f 
JOIN sucursales s ON f.idsucursal=s.id
left JOIN  clientes c ON f.idcliente = c.id
LEFT JOIN log l ON l.idtabla = 64 AND l.idfila = f.id
WHERE IF(@vfactura <> 0,f.consecutivo = @vfactura,1) and  if(@vprov = 0 , f.idtipoventa in(1,7), 2 ) 
AND IF(@vcliente <> 0, f.idcliente = @vcliente,1)
and if(@vidsucursal = -1,1,find_in_set(f.idsucursal,concat('-1,',@vidsucursal))) 
AND IF(CHAR_LENGTH(@vdesde),date_format(f.fecha,'%Y-%m-%d') 
BETWEEN @vdesde AND @vhasta,1) AND 
IF(@vnum1 <> 0 , f.consecutivo BETWEEN @vnum1 AND @vnum2,1)
GROUP BY f.id
ORDER BY f.id DESC limit lim1,lim2;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_changePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_changePassword`(vcorreo varchar(100))
BEGIN
    select nombre,truncate(rand()*10000,0) from usuarios where mail = vcorreo limit 1 into @nombre,@codigo;
	update usuarios set codigo = @codigo where mail = vcorreo and id > 0 limit 1;
	
    select concat(@nombre,',<br><span>Se ha recibido la petición de cambio de contraseña mediante la recuperación al ingreso del Sistema</span><hr><b>Código: </b>',@codigo,'<hr><span>Favor iniciar sesión con el código otorgado antes de media noche, sino será se eliminará el código<br>
    Si no solicitó el cambio de contraseña favor contactar a su Administrador</span>')
    from dual;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_changepssw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_changepssw`(vuser VARCHAR(64),vclave VARCHAR(100))
BEGIN



IF vuser not in (select user from usuarios) then
	SET @msj = concat('Nombre Usuario Inválido');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = @msj;
end if;




UPDATE usuarios SET clave = md5(aes_encrypt(vclave,'lt6969')),codigo = null where user = vuser;
select vuser;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cierrexusuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_cierrexusuarios`(vidusuario int,vidsucursal int,vcajareal decimal(12,2))
BEGIN
	
	insert into cierrecajas
	select null,concat(date_format(a.fecha,'%Y-%m-%d'),' ',curtime()) as fecha,
	sum(if(a.idtipo = 2,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as credito,
	sum(if(a.idtipo = 1,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as contado,
    (select ifnull(sum(x.valor),0)  from estadoscuentas x join facturas y on y.id = x.idfactura and y.idsucursal = vidsucursal
    where x.idtipo = 3 and !x.isregistrada and date_format(x.fecha,'%Y-%m-%d') = date_format(a.fecha,'%Y-%m-%d')) as abonos,
    (select sum(valor) from estadoscuentas where idtipo = 5 and !isregistrada and idfactura 
	in(select id from facturas where idusuario = vidusuario and idsucursal = vidsucursal) and date_format(fecha,'%Y-%m-%d') = date_format(a.fecha,'%Y-%m-%d')),0,
	sum(if(b.bancos = 4,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as efectivo,
	sum(if(b.bancos = 2,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as tarjeta,
	sum(if(b.bancos = 1,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as Deposito,
	sum(if(b.bancos = 0,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as Cheque,
    a.idusuario,a.idsucursal,sum(subtotal) as grabado,sum(exento) as excento,
	sum(a.imv) as imv
	from facturas a
	left join tipopagos b on b.id = a.idtipopago
	where !a.isregistrada and a.idtipoventa in(1,7,8) and if(vidusuario = 0,1,a.idusuario = vidusuario)
	and a.idsucursal = vidsucursal
	group by date_format(a.fecha,'%Y-%m-%d'),if(vidusuario = 0,a.idusuario,1); 
    
    select @@identity into @vid;
    
    insert into detallecierres
    select null,(select id from cierrecajas where date_format(fecha,'%Y%m%d') = date_format(a.fecha,'%Y%m%d') order by id desc limit 1),a.id,0
	from facturas a
	left join tipopagos b on b.id = a.idtipopago
	where !a.isregistrada and a.idtipoventa in(1,7,8) and if(vidusuario = 0,1,a.idusuario = vidusuario)
	and a.idsucursal = vidsucursal; 
    
    insert into detallecierres
    select null,(select id from cierrecajas where date_format(fecha,'%Y%m%d') = date_format(a.fecha,'%Y%m%d') order by id desc limit 1),a.id,a.idtipo
    from estadoscuentas a where !a.isregistrada and a.idtipo = 5 and a.idfactura 
in(select id from facturas where idusuario = vidusuario and idsucursal = vidsucursal);

 insert into detallecierres
    select null,(select id from cierrecajas where date_format(fecha,'%Y%m%d') = date_format(a.fecha,'%Y%m%d') order by id desc limit 1),a.id,a.idtipo
    from estadoscuentas a where !a.isregistrada and a.idtipo = 3 and a.idfactura 
in(select id from facturas where idusuario = vidusuario and idsucursal = vidsucursal);
	
    select sum(totalefectivo),b.id from cierrecajas a join cajainicialusuarios b on a.fecha >= b.fecha and b.ffecha is null
    and b.idusuario = vidusuario and b.idsucursal = vidsucursal into @efectivo,@cajainicial;
	update cajainicialusuarios set ffecha = now(),fmonto = @efectivo , cajareal = vcajareal where id = @cajainicial limit 1;
    
    update facturas set isregistrada = 1 where !isregistrada and idtipoventa in(1,7,8)
    and if(vidusuario = 0,idusuario > 0,idusuario = vidusuario) and idsucursal = vidsucursal limit 50000000;
    
    update estadoscuentas set isregistrada = 1 where !isregistrada and idtipo in (3,5) and idfactura 
    in(select id from facturas where idusuario = vidusuario and idsucursal = vidsucursal);
    
    select @vid;
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_clientes`(vid int)
BEGIN
SELECT 
        `c`.`id` AS `vid`,
        `c`.`cedula` AS `vcedula`,
        `c`.`nombre` as vnombre,
        `c`.`apellido1` as vapellido1,
        `c`.`apellido2` AS vapellido2,
        `c`.`bisnacional` AS `vbisnacional`,
        `c`.`credito` AS `vcredito`,
        `c`.`plazo` AS `vplazo`,
        `c`.`dproforma` AS `vdproforma`,
        `c`.`idusuario` AS `vidusuario`,
        `c`.`descuentom` AS `vdescuentom`,
        `c`.`idtipocliente` AS `vidtipocliente`,
        `c`.`idestado` AS `videstado`,
        `c`.`idnivel` AS `vidnivel`,
        `c`.`web` AS `vweb`,
        c.mensaje as vmensaje,
        c.codigo as vcodigo,
        c.idagente as vidagente,
        c.idmoneda as vidmoneda
    FROM
        `clientes` `c`
    WHERE
        c.id = vid
    GROUP BY c.id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_configempresa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_configempresa`(vid int)
begin
   
  select valor from ajustes where descr = '24/7' into @seguido;	
	
  select if(char_length(a.p12),1,0) as FE,0 as INV,b.pv as TIPOFAC,a.fastshow as FS,
  a.printSale,b.pv,b.cbarras,b.impresora,b.margenes,b.recibo,b.punitventa,b.iniciofact,b.isivi,b.tcierre,
  rcompra,rventa,ifnull(b.ininvc,0) as invinic,b.correoconta,b.pipme,@seguido,b.tventa,b.invauto,
  b.autoacept,nomh,a.codactividad
  from sucursales a
  join ajustessucursales b on a.id = b.idsucursal
  where a.id = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_convert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_convert`(vid int, vcantidad decimal(10,2), vidunidad tinyint(3), vprecio decimal(10,2))
begin

if vidunidad = 1 or vidunidad = 4 then
	set @cantidad = vcantidad * 1000;
elseif vidunidad = 3 or vidunidad = 6 then
	set @cantidad = vcantidad / 1000;
elseif vidunidad = 8 then
	set @cantidad = vcantidad * 100;
else
	set @cantidad = vcantidad;
end if;
select peso from productos where id = vid into @vpeso;
select truncate((@cantidad * vprecio) / @vpeso,2) as precio;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_convertirfactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_convertirfactura`(vid int)
begin

select * from facturas;



end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_detalleruta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_detalleruta`(vid int)
BEGIN
    SELECT 
        `a`.`id` AS `vid`,
        `a`.`idruta` AS `vidruta`,
        `a`.`idtabla_enc` AS `vidtabla_enc`,
        `a`.`idfila_enc` AS `vidfila_enc`,
        `a`.`idinventario` AS `vidinventario`,
        `a`.`idmovimiento` AS `estadoruta`,
        `b`.`idbodega` AS `vidbodega`,
        `a`.`idinventario` AS `hinventario`
    FROM
        (`detallerutas` `a`
        JOIN `inventarios` `b` ON ((`b`.`id` = `a`.`idinventario`)))
        where `a`.`idruta` = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_detalle_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_detalle_nota`(vid int)
BEGIN

(
select vid as id, 
trim(ifnull(concat(c.apellido1,' ',c.apellido2,' ',c.nombre),b.comodin)) as nombre, 
lpad(b.consecutivo,6,0) as factura, b.referencia, 
date_format(a.fecha,'%d-%m-%Y') as fecha,
abs(a.debe-a.haber) as saldo,
datediff(date_format(date_add(b.fecha,interval b.plazo day),'%Y-%m-%d'),
curdate()) as dias, 
b.plazo, a.valor as monto, 
d.nombre as tipo, u.user, e.nombre,
b.idtipo,2 as orden, a.fecha as fechah,m.simbolo
from estadoscuentas a
left join facturas b on a.idfactura = b.id
left join clientes c on c.id = b.idcliente
left join tipoestadocuentas d on d.id = a.idtipo
left join usuarios u on a.idusuario = u.id
join tipofacturas e on e.id = b.idtipo
join monedas m on m.id = b.idmoneda
where b.id = vid)
union(
select vid as id, 
trim(ifnull(concat(c.apellido1,' ',c.apellido2,' ',c.nombre),b.comodin)) as nombre, 
lpad(b.consecutivo,6,0) as factura, b.referencia, 
date_format(b.fecha,'%d-%m-%Y') as fecha,
b.subtotal+b.imv-b.descuento+b.ajuste+flete+b.exento as saldo,
0 as dias, 
b.plazo, b.subtotal+b.imv-b.descuento+b.ajuste+flete+b.exento as monto, 
if(b.idtipoventa in(1,7),'Venta','Compra') as tipo, v.user, e.nombre,
b.idtipo,1 as orden, b.fecha as fechah,m.simbolo
from facturas b
left join clientes c on c.id = b.idcliente
join usuarios v on v.id = b.idusuario
join tipofacturas e on e.id = b.idtipo
join monedas m on m.id = b.idmoneda
where b.id = vid and b.idtipo = 1) order by orden, fechah
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dodev` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_dodev`(vid int)
begin
	DECLARE vidl int;
	DECLARE vcantidad decimal(23,5);
	DECLARE EOF TINYINT default 0;
	
	DECLARE cur CURSOR for 
		select a.id,b.cantidad from detalleinventarios a join detallefacturas b on a.idproducto = b.idproducto 
	and b.idfactura = vid and b.idproducto is not null;
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET EOF = 1;
	
	open cur;
	
		myloop: loop
		FETCH cur into vidl,vcantidad;
		
		if EOF then
			LEAVE myloop;
		end if;
	
		update detalleinventarios set cantidad = cantidad + vcantidad where id = vidl;
		
	end loop myloop;

	close cur;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_editardescuentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_editardescuentos`(vid int,vidtabla int)
BEGIN

DECLARE tabla varchar(45) DEFAULT 0;
 
CASE vidtabla WHEN 11 then

select a.id,ifnull(b.nombre,'Todos') from detalledescuentos a 
left join productos b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

WHEN 20 THEN
	
select a.id,ifnull(b.nombre,'Todas') from detalledescuentos a 
left join familias b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

WHEN 21 THEN
	
select a.id,ifnull(b.nombre,'Todos') from detalledescuentos a 
left join tipos b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

WHEN 22 THEN
	
select a.id,ifnull(b.nombre,'Todas') from detalledescuentos a 
left join marcas b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

WHEN 2 THEN
	
select a.id,ifnull(concat(b.apellido1,' ',apellido2,' ',b.nombre),'Todos') from detalledescuentos a 
left join clientes b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

WHEN 68 THEN
	
select a.id,ifnull(b.nombre,'Todos') from detalledescuentos a 
left join estadoclientes b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

WHEN 69 THEN
	
select a.id,ifnull(b.nombre,'Todos') from detalledescuentos a 
left join nivelesclientes b on b.id = a.idfila
where a.idfila in(0,b.id) and a.idtabla = vidtabla and a.iddescuento = vid;

END CASE;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_event22` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_event22`()
begin


update ajustes set valor = 0 where descr = 'Cambio de Dia' limit 1;



end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_flushOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_flushOrden`(vidcliente varchar(64),vid int,
vbarra int)
BEGIN
	if vid = 0 then
	select a.id from tmpfacturas a left join tmpdetallefacturas b on b.idfactura = a.id 
	where a.idtipo = vidcliente and if(vidcliente > 0,1,a.idtipopago = vbarra) 
	group by a.id order by a.id desc limit 1 into @factura;
	
	delete from tmpdetallefacturas where idfactura = @factura limit 1000;
	select @factura;
	ELSE
		set vid = vid*-1;
		select b.idtiponegocio,a.idtipo,a.idtipopago,a.comodin 
		from tmpfacturas a join sucursales b on a.idsucursal = b.id 
		where a.id = vid into @buss,@mesa,@barra,@comodin;
		
		delete from tmpdetallefacturas where idfactura = vid limit 1000;
		delete from tmpfacturas where id = vid limit 50;
		
		select @buss,@mesa;
		if @buss = 2 then
			if @mesa > 0 then
				update restaurantes.mesas set idtipoocupado = 1 where id = @mesa;
				select concat('MESA :',@mesa);
			else
				delete from restaurantes.tempbarras where id = @barra;
				select @comodin;
			end if;
		end if;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_gclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_gclientes`(vfind varchar(199),vidsucursal int)
BEGIN
select
    `c`.`id` AS `vid`,
    `c`.`cedula` AS `vcedula`,
    trim( concat( `c`.`nombre`, ' ', `c`.`apellido1`, ' ', `c`.`apellido2` )) AS `nombre`,
    `c`.`bisnacional` AS `bisnacional`,
    concat(
        ifnull(
            `t1`.`telefono`,
            '--'
        ),
        ' || ',
        ifnull(
            `t2`.`telefono`,
            '--'
        ),
        ' || ',
        ifnull(
            `t3`.`telefono`,
            '--'
        )
    ) AS `telefonos`,
    `o`.`correo` AS `correos`,
    if(
        (
            (
                `c`.`credito` = 0
            )
            or(
                `c`.`credito` = ''
            )
        ),
        'Contado',
        'Crédito'
    ) AS `tipocliente`,
    `ec`.`nombre` AS `estado`,
    `c`.`credito` AS `credito`,
    `c`.`plazo` AS `plazo`,
    `c`.`idestadocontable` AS `idconta`,
    `c`.`fecha_creacion` AS `fecha_creacion`,
    `c`.`idusuario` AS `idusuario`,
    `c`.`descuentom` AS `descuentom`,
    `ec`.`id` AS `idestado`,
    ifnull(
        `nc`.`id`,
        0
    ) AS `idnivel`,
    ifnull(
        `nc`.`nombre`,
        'Standard'
    ) AS `nivel`,
    `c`.`web` AS `web`,
    `c`.`codigo` AS `codigo`
from
    (
        (
            (
                (
                    (
                        (
                            (
                                (
                                    `production`.`clientes` `c` join `production`.`estadoclientes` `ec` on
                                    (
                                        (
                                            `ec`.`id` = `c`.`idestado`
                                        )
                                    )
                                ) left join `production`.`nivelesclientes` `nc` on
                                (
                                    (
                                        `nc`.`id` = `c`.`idnivel`
                                    )
                                )
                            ) left join `production`.`telefonos` `t` on
                            (
                                (
                                    (
                                        `t`.`idfila` = `c`.`id`
                                    )
                                    and(
                                        `t`.`idtabla` = 2
                                    )
                                )
                            )
                        ) left join `production`.`telefonos` `t1` on
                        (
                            (
                                (
                                    `t1`.`idfila` = `c`.`id`
                                )
                                and(
                                    `t1`.`idtabla` = 2
                                )
                                and(
                                    `t1`.`idtipotel` = 1
                                )
                            )
                        )
                    ) left join `production`.`telefonos` `t2` on
                    (
                        (
                            (
                                `t2`.`idfila` = `c`.`id`
                            )
                            and(
                                `t2`.`idtabla` = 2
                            )
                            and(
                                `t2`.`idtipotel` = 2
                            )
                        )
                    )
                ) left join `production`.`telefonos` `t3` on
                (
                    (
                        (
                            `t3`.`idfila` = `c`.`id`
                        )
                        and(
                            `t3`.`idtabla` = 2
                        )
                        and(
                            `t3`.`idtipotel` = 3
                        )
                    )
                )
            ) left join `production`.`ubicaciones` `u` on
            (
                (
                    (
                        `u`.`idfila` = `c`.`id`
                    )
                    and(
                        `u`.`idtabla` = 2
                    )
                )
            )
        ) left join `production`.`correos` `o` on
        (
            (
                (
                    `o`.`idfila` = `c`.`id`
                )
                and(
                    `o`.`idtabla` = 2
                )
            )
        )
    )
where
    (
        (
            `c`.`bisproveedor` = 0
        )
        and(
            `c`.`id` >= 0
        )
    )
group by `c`.`id`
having if(vfind <>'',nombre like concat('%',vfind,'%') ,1)
order by c.nombre and c.id > 0 limit 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_generatetransac` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_generatetransac`(vtipo tinyint(2),vid int)
BEGIN

	case vtipo 
		when 1 then #FACTURACION
			select a.idtipoventa,b.bancos,e.id,
			sum((c.precio*c.cantidad)/a.divisa) as total,
			sum(c.imv/a.divisa) as imv,sum(c.descuento/a.divisa) as descuento,
			a.idmoneda,a.divisa,concat(f.nombre,' N ',lpad(a.consecutivo,10,0))
			from facturas a join tipopagos b on a.idtipopago = b.id
			join detallefacturas c on c.idfactura = a.id
			left join inventarios d on d.id = c.idinventario
			left join clientes e on e.id = a.idcliente
			join tipoventas f on f.id = a.idtipoventa
			where a.id = vid group by a.id; 
		
			/*into @tventa,@tpago,@idcliente,@gravado,@imv,@descuento,
			@idmoneda,@divisa,@det;*/
	
			
			/*INSERT INTO transacciones VALUES(null,now(),vdescripcion,
		    vidusuario,vidsucursal,vidmoneda,vidtabla,vidfila,divisa);
			SELECT @@identity;*/
		ELSE
			select 'TIPO NO DECLARADO0';
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getabonosnotas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getabonosnotas`(vid int)
BEGIN 
	
	select idcliente from facturas a join estadoscuentas b on b.idfactura = a.id
		where b.id = vid limit 1 into @idcliente;
	
		select sum(abs(debe-haber)) from estadoscuentas where id in(
		(select max(a.id) from estadoscuentas a join facturas b on a.idfactura = b.id
		and b.idcliente = @idcliente group by a.idfactura)) and abs(debe-haber) > 0 into @sgeneral;
	
SELECT
	a.id,if(a.idtipo in(5,6),fe_getnumeracion(a.id*-1),lpad(a.consecutivo,6,0)) AS consecutivo,a.idfactura AS factura,
	date_format(ifnull(a.fecharecibo,a.fecha),'%d-%m-%Y') AS fecha,
    ifnull(concat(c.nombre,' ',c.apellido1,' ',c.apellido2),b.comodin) AS cliente,format(a.valor,2) AS monto,
    format(abs(a.debe-a.haber),2) AS saldo,a.comentario,f.nombre as tipopago,
    d.nombre as tipo,e.nombre as usuario,
    g.simbolo,format((a.valor + abs(a.debe-a.haber)),2) as saldoanterior,
    lpad(b.consecutivo,6,0) as numfactura,fe_getclave(a.id*-1) as clave,a.idtipo,
    if(l.comodin <> '',l.comodin,ifnull(n.nombre,m.nombre)) as descipcion,
    l.cantidad,format((l.precio-l.descuento+if(b.idexoneracion <> '',l.imv,0))/b.divisa,2) as importe,
    '0.00' as impuesto,@sgeneral,c.cedula,c.bisproveedor
FROM
	estadoscuentas a
JOIN
	facturas b ON a.idfactura = b.id
left JOIN
	clientes c ON b.idcliente = c.id
JOIN
	tipoestadocuentas d ON a.idtipo = d.id
JOIN
	usuarios e ON a.idusuario = e.id
left JOIN
	tipopagos f ON a.idtipopago = f.id
JOIN
	monedas g on g.principal = 1
JOIN
	estadoscuentas h ON h.idtipo = d.id and h.idfactura = b.id
join detallefacturas l on l.idfactura = b.id
left join devoluciones i on i.idfactura = b.id
left join detalledevoluciones j on j.iddevolucion = i.id and j.idproducto = l.idproducto
left join productos m on m.id = ifnull(j.idproducto,l.idproducto)
left join servicios n on n.id = l.idservicio
WHERE
	a.id = vid group by m.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getarrboleta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getarrboleta`(vid int)
BEGIN
	DECLARE favor varchar(28);
	
	select format(abs(sum((truncate(a.valor/(((b.subtotal+b.imv)*((b.isregistrada/100)+1))/b.plazo),0)-
truncate(a.valor/(((b.subtotal+b.imv)*((b.isregistrada/100)+1))/b.plazo),5))*
(((b.subtotal+b.imv)*((b.isregistrada/100)+1))/b.plazo))),2) as favor 
from estadoscuentas a join facturas b on b.id = a.idfactura where a.idfactura = vid and a.idtipo = 3 into favor;	

	select format(subtotal,2) as prestamo,format(((subtotal+imv)*((b.isregistrada/100)+1))/plazo,2) as cuota,
date_format(b.fecha,'%d-%m-%Y') as finic, date_format( date_add(b.fecha,interval (b.plazo+(b.plazo/7)) DAY),'%d-%m-%Y') as ffin,
format(abs(a.debe-a.haber),2) as saldo,
favor as saldofavor,
b.plazo
from estadoscuentas a 
join facturas b on b.id = a.idfactura and b.id = vid
where a.id = (select max(id) from estadoscuentas where idfactura = vid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getarrgeneral` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getarrgeneral`(vidsucursal int,vfecha date)
BEGIN
	select c.nombre as ruta,
	ifnull(sum(f.subtotal+f.imv),0) as prestamos,ifnull(sum(e.valor),0) as abonos,
	ifnull(sum(h.exento),0) as gastos,ifnull(g.monto,0) as caja,ifnull(g.id,0) as idcaja,c.id as idruta
	from rutas c
	join detallerutas b on b.idruta = c.id
	join usuarios a on a.id = b.idfila_enc
	left join facturas d on d.idusuario = a.id
	left join estadoscuentas e on d.id = e.idfactura and date_format(e.fecha,'%Y-%m-%d') = vfecha and e.idtipo = 3
	left join facturas f on f.idusuario = a.id and date_format(f.fecha,'%Y-%m-%d') = vfecha and f.idtipoventa = 1
	left join cajainicialusuarios g on g.idusuario = a.id and g.idsucursal = vidsucursal and
	date_format(g.fecha,'%Y-%m-%d') = vfecha
	left join facturas h on h.idusuario = h.id and date_format(h.fecha,'%Y-%m-%d') = vfecha and h.idtipoventa = 2
	where find_in_set(vidsucursal,a.idsucursal)
	group by c.id
	order by c.nombre;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getbodegas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getbodegas`(vidusuario INT,vidsucursal INT)
BEGIN
DECLARE tipo INT DEFAULT 0;
SELECT idtipousuario FROM usuarios WHERE id = vidusuario INTO tipo;
SELECT a.id,a.nombre AS bodega
FROM bodegas a
JOIN sucursales b ON a.idsucursal = b.id
WHERE a.id > 0 AND IF(tipo = 1,a.id  = 1,a.id = 2)
ORDER BY a.nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getboletas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getboletas`(vid int)
BEGIN 
	select lpad(a.id,10,0),date_format(fecha,'%d/%m/%Y %H:%i:%s') as fecha,d.nombre,
	case a.idtipo when 1 then 'Entrada de Inventario' when 2 then 'Salida de Inventario' else 'Movimiento entre Inventarios' end,
	c.nombre,format(b.cantidad,2),format(b.cantidada,2),a.comentario,g.nombre,e.nombre,h.nombre,f.nombre,a.comentario
	from boletas a 
	join detalleboletas b on b.idboleta = a.id
	join productos c on c.id = b.idproducto
	join usuarios d on d.id = a.idusuario
	join inventarios e on e.id = a.idinv1
	left join inventarios f on f.id = a.idinv2
	join bodegas g on g.id = e.idbodega
	left join bodegas h on f.id = f.idbodega
	where a.id = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getCantidadProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getCantidadProductos`(vid INT,vidinventario INT)
BEGIN 

SELECT a.nombre AS producto,concat(truncate(SUM(b.cantidad/c.cantidad),3),' ',c.simbolo) AS totcant,c.simbolo
FROM productos a
LEFT JOIN detalleinventarios b ON b.idproducto = a.id
join unidades c on c.id = a.idunidad
WHERE IF(vid <> 0,a.id = vid,a.id > 0) AND IF(vidinventario <> 0,b.idinventario = vidinventario,1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcierrexusuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getcierrexusuario`(vidcierre int)
begin

select tcierre from ajustessucursales a join cierrecajas b on b.id = vidcierre and a.idsucursal = b.idsucursal into @tp;

if @tp <> 2 then
select a.id,date_format(a.fecha,'%d-%m-%Y'),format(ifnull(facturascredito,'0.00'),2),
format(ifnull(facturascontado,'0.00'),2),
format(ifnull(totalabonos,'0.00'),2),
format(ifnull(notascredito,'0.00'),2),
format(ifnull(notasdebito,'0.00'),2),
format(ifnull(totalefectivo,'0.00'),2),
format(ifnull(totaltarjeta,'0.00'),2),
format(ifnull(totaldeposito,'0.00'),2),
format(ifnull(totalcheque,'0.00'),2),
concat(case max(h.idtipo)
when 5 then '[A]' else '' end,
if(c.idtipoventa = 7,'T','F'),lpad(c.consecutivo,10,0)) as consecutivo,date_format(c.fecha,'%d-%m-%Y') as fecha,
ifnull(trim(concat(d.apellido1,' ',d.apellido2,' ',d.nombre)),c.comodin) as cliente,
if(c.idtipoventa = 1,'Factura','Tiquete') as Tipo,ifnull(e.nombre,'Crédito') as Tipopago,c.subtotal+c.exento+c.imv+c.ajuste+c.flete-c.descuento as total,f.nombre,
format(ifnull(g.cajareal,0),2), format(ifnull(g.fmonto,0),2) as cajasistemaefectivo, format(ifnull(g.monto,0),2) as cajainicial, format(ifnull(facturascontado,'0.00')+ifnull(facturascredito,'0.00'),2) as totalventas,
format(ifnull(excento,'0.00'),2), format(ifnull(a.imv,'0.00'),2),0 as cantidad
from cierrecajas a
join detallecierres b on a.id = b.idcierre 
left join facturas c on c.id = b.idfactura and b.tipofactura = 0
left join clientes d on d.id = c.idcliente
left join tipopagos e on e.id = c.idtipopago
join usuarios f on f.id = a.idusuario
left join cajainicialusuarios g on a.fecha between g.fecha and g.ffecha and g.idusuario = a.idusuario and g.idsucursal = a.idsucursal
left join estadoscuentas h on h.idfactura = c.id
where a.id = vidcierre  group by c.id
having consecutivo is not null order by c.id desc;

else
	select a.id,date_format(a.fecha,'%d-%m-%Y'),format(ifnull(facturascredito,'0.00'),2),
format(ifnull(facturascontado,'0.00'),2),
format(ifnull(totalabonos,'0.00'),2),
format(ifnull(notascredito,'0.00'),2),
format(ifnull(notasdebito,'0.00'),2),
format(ifnull(totalefectivo,'0.00'),2),
format(ifnull(totaltarjeta,'0.00'),2),
format(ifnull(totaldeposito,'0.00'),2),
format(ifnull(totalcheque,'0.00'),2),
ifnull(j.nombre,k.nombre) as consecutivo,'' as fecha,
'' as cliente,
'' as Tipo,'' as Tipopago,
truncate(sum(if(h.idtipo = 5,0,i.precio*i.cantidad+i.imv-i.descuento)),2) as total,f.nombre,
format(ifnull(g.cajareal,0),2), format(ifnull(g.fmonto,0),2) as cajasistemaefectivo, 
format(ifnull(g.monto,0),2) as cajainicial, format(ifnull(facturascontado,'0.00')+ifnull(facturascredito,'0.00'),2) as totalventas,
format(ifnull(excento,'0.00'),2), format(ifnull(a.imv,'0.00'),2),sum(i.cantidad) as cantidad
from cierrecajas a
join detallecierres b on a.id = b.idcierre 
left join facturas c on c.id = b.idfactura and b.tipofactura = 0
left join clientes d on d.id = c.idcliente
left join tipopagos e on e.id = c.idtipopago
join usuarios f on f.id = a.idusuario
left join cajainicialusuarios g on a.fecha between g.fecha and g.ffecha and g.idusuario = a.idusuario and g.idsucursal = a.idsucursal
left join estadoscuentas h on h.idfactura = c.id
join detallefacturas i on i.idfactura = c.id
left join productos j on j.id = i.idproducto
left join servicios k on k.id = i.idservicio
where a.id = vidcierre  group by j.id
having consecutivo is not null order by c.id desc;
end if; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getclientesruta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getclientesruta`(vidruta int,vnombre varchar(64))
BEGIN
    select concat(b.apellido1,' ',b.apellido2,' ',b.nombre,' [',b.cedula,']') as nombre,
0 as venta,0 as pedidos, 0 as cobros,0 as notas,0 as devoluciones, a.id,b.descuentom as descuento_maximo,
getDescuentoCliente(b.id,0) as descuento
from rutaclientes a 
join clientes b on a.idcliente = b.id
join rutas c on c.id = a.idruta
left join detallerutas d on d.idruta = c.id
left join registrorutas e on e.iddetalleruta = d.id
where a.idruta = vidruta  group by b.id
having if(vnombre <> '',nombre like concat('%',vnombre,'%'),1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcolordays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getcolordays`(vidfactura int)
BEGIN	
	select if(date_format(a.fecha,'%Y-%m-%d') = curdate(),
	truncate(a.valor/(((b.subtotal+b.imv)*((b.isregistrada/100)+1))/b.plazo),0),0) as diasN,
	if(date_format(a.fecha,'%Y-%m-%d') <> curdate(),
	truncate(a.valor/(((b.subtotal+b.imv)*((b.isregistrada/100)+1))/b.plazo),0),0) as diasVs
	from estadoscuentas a join facturas b on b.id = a.idfactura
	and b.id = vidfactura
	where a.idtipo = 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getCuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getCuenta`(vaccion tinyint(3),
vidcuenta int,vaccion1 tinyint(3),vf1 varchar(20),vf2 varchar(20))
begin
declare f1 date;
declare f2 date;

select valor from ajustes where descr = 'finicio' into f1;
select valor from ajustes where descr = 'ffinal' into f2;

if vf1 = '' then 
	set vf1 = curdate();
end if;

select t.id,date_format(t.fecha,'%d/%m/%Y') as vistafecha,sum(debe),sum(haber) from detalletransacciones dt 
join transacciones t on t.id = dt.idtransaccion
where dt.idcuenta = vidcuenta and
case vaccion1 when 1 then date_format(t.fecha,'%Y-%m-%d') = curdate() 
when 2 then date_format(t.fecha,'%Y-%m') = date_format(vf1,'%Y-%m') 
when 3 then yearweek(t.fecha) = yearweek(vf1) 
when 4 then date_format(t.fecha,'%Y-%m-%d') between f1 and f2
when 5 then date_format(t.fecha,'%Y-%m-%d') = vf1 
when 6 then date_format(t.fecha,'%Y-%m-%d') between vf1 and vf2  end
group by case vaccion when 1 then date_format(t.fecha,'%Y-%m-%d') when 2 then date_format(t.fecha,'%Y-%m') when 3 then yearweek(t.fecha) 
when 4 then
date_format(t.fecha,'%Y-%m-%d') between f1 and f2 else dt.id end 
order by t.fecha DESC;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcxcrutas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getcxcrutas`(vidruta int)
BEGIN
	select b.idcliente,a.idfactura,abs(max(debe)-max(haber)) as saldo 
from estadoscuentas a join facturas b on b.id = a.idfactura join rutaclientes c on c.idcliente = b.idcliente
where c.idruta = vidruta
group by b.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdefectocuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdefectocuentas`(vtabla int,vifila int
,vidtipo varchar(10))
begin
    
select a.id,a.idcuenta,c.nombre,c.numero,a.porcentaje,a.idtipo,
    b.nombre as DH,case a.bisdebe when -1 then "" when 0 then "Haber" else "Debe" end as DHn
from defectocuentas a 
join tipocuentas b on b.id = a.idtipo
join cuentas c on c.id = a.idcuenta
where a.idtabla = vtabla and a.idfila in (0,vifila) and find_in_set(a.idtipo,vidtipo);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdefectoimpuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdefectoimpuestos`(vtabla int,vidfila int)
begin
    select 
        max(`d`.`id`) AS `id`,
        max(`d`.`idimpuesto`) AS `impuesto`,
        `i`.`nombre` AS `nombre`,
        max(`i`.`valor`) AS `valor`,
        max(`d`.`exoneracion`) AS `exoneracion`,
        i.resumen
    from defectoimpuestos d 
    join impuestos i on i.id = d.idimpuesto
    where d.idtabla = vtabla and d.idfila in(0,vidfila)
    group by d.idimpuesto;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdescuentoproducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdescuentoproducto`(vid int)
BEGIN

SELECT b.id,b.nombre AS descuento,c.nombre AS producto,CONCAT(REPLACE(a.valor, '.00', ''), '%') AS valor
FROM detalledescuentos a
JOIN descuentos b ON a.iddescuento = b.id
JOIN productos c ON a.idfila = c.id AND idtabla = 11 AND c.id = vid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdescuentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdescuentos`(vid int(4),vidsucursal INT)
BEGIN
	SELECT 
    a.id,
    a.nombre,
    b.id AS idestado,
    b.nombre,
    
    e.id AS idusuario,
    e.nombre AS usuario,
    a.idestado
FROM
    descuentos a
        JOIN
    estadodescuentos b ON a.idestado = b.id
        
        LEFT JOIN
    log d ON d.idfila = a.id AND d.idtabla = 94
        LEFT JOIN
    usuarios e ON d.usuario = e.id
WHERE
    IF(vid <> 0, a.id = vid, a.id>0)
    and a.idsucursal in(vidsucursal,-1)
    
GROUP BY
	a.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getDetalleBanco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getDetalleBanco`(vbanco int)
BEGIN
    select b.id as vid,b.nombre as `bname-mod`,
    d.id as viddetalle,d.comision as vcomision,
    ifnull(max(i.idcuenta),max(h.idcuenta)) as vctacom,
    d.nombre as vnombredet,
    d.cuenta as vcuentadet,d.idmoneda as vidmonedadet,
    ifnull(max(g.idcuenta),max(f.idcuenta)) as vctabnk,
    j.simbolo,
    max(k.nombre) as ctabnkname
    from bancos b 
    left join detallebancos d on d.idbanco = b.id
    left join defectocuentas e on e.id > 0 
    left join defectocuentas f on e.id = f.id and f.idtipo = 13 and !f.idfila 
    left join defectocuentas g on e.id = g.id and g.idtipo = 13 and g.idtabla = 203 and g.idfila = d.id
    left join defectocuentas h on e.id = h.id and h.idtipo = 11 and !h.idfila 
    left join defectocuentas i on e.id = i.id and i.idtipo = 11 and i.idtabla = 202 and i.idfila = d.id
    left join monedas j on j.id = d.idmoneda
    left join cuentas k on k.id in(g.idcuenta,f.idcuenta)
    where b.id = vbanco 
    group by b.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdetalleinventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdetalleinventario`(vidinventario int,
vidsucursal int)
BEGIN 

	SELECT ifnull(b.codigo,d.codigo) as codigo,ifnull(b.nombre,d.nombre) as nombre,a.cantidad,
	ifnull(b.costo,0),ifnull(b.venta,d.precio),
	group_concat(ifnull(c.venta,ifnull(e.venta,0))) as precios
	FROM detalleinventarios a
	left JOIN productos b on b.id = a.idproducto and b.idsucursal = vidsucursal
	left join nivelproductos c on c.identrada = b.id and c.idtipoentrada = 1
	left JOIN servicios d on d.id*-1 = a.idproducto and b.idsucursal = vidsucursal
	left join nivelproductos e on e.identrada = d.id and e.idtipoentrada = 2
	WHERE a.idinventario = vidinventario
	group by b.id
	having nombre is not null;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdetalleprocesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdetalleprocesos`(vid int)
BEGIN
SELECT
    a.idproceso AS idproceso,
    b.id AS idproducto,
    b.codigo,
    b.nombre AS producto,
    b.costo AS preciocosto,
    REPLACE(a.cantidad, '.00', '') AS cantidad,
    REPLACE(c.cantidad, '.00', '') AS actual,
    d.simbolo AS simbolocantidad,
    e.simbolo AS simboloactual
FROM
    detalleprocesos a
        JOIN
    productos b ON a.idproducto = b.id
        JOIN
    detalleinventarios c ON c.idproducto = b.id
        JOIN
    unidades d ON a.idunidad = d.id
        JOIN
    unidades e ON b.idunidad = e.id
WHERE
    a.idproceso = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdetallerecetas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdetallerecetas`(vid int)
begin

SELECT
    d.idreceta AS idreceta,
    p.id AS idproducto,
    p.codigo,
    p.nombre AS producto,
    p.costo AS preciocosto,
    REPLACE(d.cantidad, '.00', '') AS cantidad,
    REPLACE(i.cantidad, '.00', '') AS actual,
    u.simbolo AS simbolo
FROM
    detallerecetas d
        JOIN
    productos p ON d.idproducto = p.id
        JOIN
    unidades u ON p.idunidad = u.id
		JOIN
	detalleinventarios i ON i.idproducto = p.id
WHERE
    d.idreceta = vid;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdettran` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdettran`(vid int)
BEGIN
   select b.id,date_format(b.fecha,'%d/%m/%Y') as fecha,b.descripcion,c.nombre as cuenta,a.vcomentario,a.debe,a.haber,
b.idfila, u.nombre as usuario, s.nombre
from detalletransacciones a
join transacciones b on a.idtransaccion = b.id and b.id = vid
join usuarios u on b.idusuario = u.id
join cuentas c on a.idcuenta = c.id
join sucursales s on b.idempresa = s.id
order by debe desc, haber desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getdevoluciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getdevoluciones`(vid int)
BEGIN
	select lpad(a.consecutivo,6,0) as consecutivo,if(b.comodin = '', trim(concat(c.apellido1,' ',c.apellido2,' ',c.nombre)),b.comodin) as Cliente,
lpad(b.consecutivo,6,0) as factura,a.comentario,d.nombre as usuario,e.nombre as sucursal,date_format(a.fecha,'%Y-%m-%d') as fecha,
g.nombre as producto,f.cantidad,h.nombre as tipo
from devoluciones a 
join facturas b on a.idfactura = b.id 
join clientes c on c.id = b.idcliente
join usuarios d on d.id = a.idusuario
join sucursales e on e.id = a.idsucursal
join detalledevoluciones f on f.iddevolucion = a.id
join productos g on g.id = f.idproducto
join tipodevoluciones h on h.id = f.idtipodevolucion
where a.id = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getevent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getevent`(vusuario int)
begin
select count(b.id) as no_leidos,count(c.id) as nuevos from eventos a left join eventos b on a.id = b.id and b.isread = 0
left join eventos c on c.id = a.id and c.isread is null where a.iduser_to = vusuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getFactura`(vid int)
BEGIN 
 
select subtotal+exento+imv+flete+ajuste-descuento,idsucursal from facturas where id = vid into @total_factura,@idsuc;
select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura = vid into @total_creditos;
select ivafact from ajustessucursales where idsucursal = @idsuc into @isiva;

select if(b.idtipoventa in(1,7,2    ),fe_getnumeracion(b.id),lpad(b.consecutivo,6,0)) AS `idfactura`,`e`.`nombre` AS `tipofactura`,
if(b.idtipo =1,f.nombre,'N/A') AS `ntipopago`,
UPPER(DATE_FORMAT(`b`.`fecha`, '%d/%m/%Y')) AS `fecha`,UPPER(ifnull(
CONCAT(trim(concat(`d`.`nombre`,' ',`d`.`apellido1`,
' ',`d`.`apellido2` ))),b.comodin)) AS `cliente`,
format(`b`.`imv`/b.divisa,2) AS `imv`,format(`b`.`descuento`/b.divisa,2) AS `descuento`,
format(`b`.`flete`/b.divisa,2) AS `flete`,`b`.`ajuste` AS `ajuste`,
FORMAT((b.exento+`b`.`subtotal`)/b.divisa, 2) AS `subtotal`,
FORMAT((`b`.`subtotal` + `b`.`imv`  - `b`.`descuento` + `b`.`flete` + `b`.`ajuste`+b.exento)/b.divisa,2) AS `total`,
`b`.`plazo` AS `plazo`,IFNULL(`b`.`comentario`,'N/A') AS `comentario`,`b`.`referencia` AS `referencia`,
`h`.`nombre` AS `moneda`,`h`.`simbolo` AS `simbolo`,`i`.`nombre` AS `usuario`,j.nombre as sucursal,
a.cantidad, if(a.comodin <> '',if(locate('^',a.comodin),concat(replace(a.comodin,'^',''),', '
,ifnull(trim(concat(c.nombre,' ',ifnull(n.nombre,''))), m.nombre)),a.comodin)
,ifnull(trim(concat(c.nombre,' ',ifnull(n.nombre,''))), m.nombre)) as nombreProducto,
format((a.precio+if(@isiva,a.imv/a.cantidad,0))/b.divisa,2) as unitario,format(a.descuento,2) as descu,
format((a.precio*a.cantidad-a.descuento)/b.divisa,2) as total_detalle,ifnull(k.nombre,'Servicio' ) as unidad,b.idtipoventa,l.nombre as tipoventa,
b.idtipo, d.id as idcliente,a.imv,
if(substring_index(substring_index(a.idimpuestos,',',3),',',-1) in(0,'') ,'*','') as excento, 
IF(b.idtipoventa in(1,4,5,6,7),'Cliente',IF(b.idtipoventa = 2 OR b.idtipoventa = 3,'Proveedor','Proveedor')) AS tipoPersona,
if(@total_factura = @total_creditos and @total_factura > 0,' ANULADA','') as anulada,
if(b.idtipoventa in(1,7),fe_getclave(b.id),'') as clave,b.idexoneracion,d.cedula,e.id,
c.codigo,date_format(q.fecha,'%h:%i:%s %p') as hora,date_format(date_add(q.fecha,interval b.plazo day),'%d/%m/%Y') as venc,
replace(group_concat(distinct r.telefono),',','//') as telefonos,upper(concat(s.direccion,',',v.nombre,',',w.nombre)) as direccion,t.correo,
lpad(z.id,2,0) as bodega,lpad(ifnull(x.id,0),2,0) as agente,lpad(d.idagente,2,0),b.divisa
from detallefacturas a join facturas b on b.id = a.idfactura and b.id = vid
left join productos c on c.id = a.idproducto
left join clientes d on d.id = b.idcliente
JOIN `tipofacturas` `e` ON `e`.`id` = `b`.`idtipo`
left JOIN `tipopagos` `f` ON `f`.`id` = `b`.`idtipopago`
JOIN `monedas` `h` ON `h`.`id` = `b`.`idmoneda`
JOIN `usuarios` `i` ON `i`.`id` = `b`.`idusuario`
left join sucursales j on j.id = b.idsucursal
left join unidades k on k.id = c.idunidad
join tipoventas l on l.id = b.idtipoventa
left join servicios m on m.id= a.idservicio
left join marcas n on n.id = c.idmarca
left join log q on q.idtabla = 64 and q.idfila = b.id
left join telefonos r on r.idfila = d.id and r.idtabla = 2
left join ubicaciones s on s.idfila = d.id and s.idtabla = 2
left join correos t on t.idfila = d.id and t.idtabla = 2
left join barrios u on u.id = s.idbarrio
left join distritos v on v.id = u.iddistrito
left join cantones w on w.id = v.idcanton
left join usuarios x on x.id = b.idagente
left join inventarios y on a.idinventario = y.id
left join bodegas z on z.id = y.idbodega
group by a.id;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getFacturasCierre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getFacturasCierre`(vfecha date,
vidusuario int,vidsucursal int)
BEGIN

select 
    sum(if(a.idtipo > 1,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as credito,
    sum(if(a.idtipo = 1,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as contado,
    sum(if(b.bancos = 4,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as efectivo,
    sum(if(b.bancos = 2,a.imv+a.subtotal+a.exento-a.descuento+a.flete+a.ajuste-(select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and idfactura =a.id),0)) as tarjeta
    from facturas a
    left join tipopagos b on b.id = a.idtipopago
    where !a.isregistrada and a.idtipoventa in(1,7,8) and if(vidusuario = 0,1,a.idusuario = vidusuario)
    and a.idsucursal = vidsucursal and date_format(a.fecha,'%Y-%m-%d') = vfecha
    group by date_format(a.fecha,'%Y-%m-%d'),if(vidusuario = 0,a.idusuario,1) into @cre,@con,@efe,@tar;
    
SELECT
    a.id,lpad(a.consecutivo,6,0) AS consecutivo,date_format(a.fecha,'%d-%m-%Y') AS fecha,
    ifnull(concat(b.nombre,' ',b.apellido1,' ',b.apellido2),a.comodin) AS cliente,
    if((select ifnull(sum(valor),0) from estadoscuentas where idtipo = 5 and 
    idfactura =a.id) =(a.subtotal+a.imv-a.descuento+a.flete+a.ajuste+a.exento),'ANULADA',  c.nombre) AS tipo,ifnull(d.nombre,'Crédito') AS tipopago,
    FORMAT(a.subtotal+a.imv-a.descuento+a.flete+a.ajuste+a.exento,2) AS total,e.nombre AS usuario,format(@cre,2),format(@con,2),
    format(@efe,2),format(@tar,2)
FROM
    facturas a
LEFT JOIN
    clientes b ON a.idcliente = b.id
JOIN
    tipofacturas c ON a.idtipo = c.id
LEFT JOIN
    tipopagos d ON a.idtipopago = d.id
JOIN
    usuarios e ON a.idusuario = e.id
WHERE
    ( date_format(a.fecha,'%Y-%m-%d') = vfecha OR date_format(a.fecha,'%Y/%m/%d') = vfecha ) 
    AND a.idtipoventa in (1,7,8) and a.idsucursal = vidsucursal
    AND a.idusuario = vidusuario and !a.isregistrada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getFomatPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getFomatPago`(vidtipopago int,vidtipo int)
BEGIN
	
	select bancos,extra,regex,icono from tipopagos where id = vidtipopago into @banco,@extra,@regex,@icono;
	
	if @banco = 5 then 
		select 5,nombre,bancos,extra,regex,icono from tipopagos where id > 0 and bancos <> 5;
	ELSE
		CASE vidtipo 
		WHEN 2  THEN
			select if(@banco = 4,0,banco) as bancos,@extra,@regex,@icono;
		WHEN vidtipo IN(1,6) THEN
			select @banco,@extra,@regex,@icono;
		ELSE 
			SELECT 0;
		END case;
	end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getGeneralMail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getGeneralMail`(vidsucursal int)
BEGIN
	select aes_decrypt(unhex(smtpc),"Login2Help") as Clave,smtp as smtp,
	smtph as host,smtpp as port
	from ajustessucursales where idsucursal = vidsucursal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getimpinvruta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getimpinvruta`(vidruta int)
begin

select c.id as idproducto,c.codigo as codigoproducto,c.nombre as nombreproducto,b.cantidad,d.nombre as ruta,e.nombre as rutero,f.nombre as inventarioruta
from detallerutas a
join detalleinventarios b on a.idinventario = b.idinventario
join productos c on b.idproducto = c.id
join rutas d on a.idruta = d.id
join usuarios e on a.idfila_enc = e.id
join inventarios f on a.idinventario = f.id
where a.id = vidruta and d.id > 0 and a.id > 0;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getImpRutas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getImpRutas`(vidruta int)
BEGIN
	select a.id,a.idfila,if(a.idtabla = 2 ,1,2) as idtabla,a.idimpuesto,a.exoneracion 
    from defectoimpuestos a where a.idtabla in(11,2) order by a.idtabla;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getImpuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getImpuestos`(vidsucursal int,
vidfila varchar(100),
vidtabla varchar(100))
BEGIN
 
    select b.id,b.nombre,b.resumen,b.valor,max(a.exoneracion) as exoneracion 
    from defectoimpuestos a join impuestos b on b.id = a.idimpuesto and b.idsucursal in(-1,vidsucursal)
    where find_in_set(a.idfila,vidfila) and find_in_set(a.idtabla,vidtabla)
    group by b.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getInfo`(vidsucursal int)
BEGIN 
	
	declare vsysmod varchar(100) default (select aes_decrypt(unhex(sysmod),'lt2016') 
		from sucursales where id = vidsucursal);
	select valor from ajustes where descr = 'akey' into @akey;
	
	select @akey as akey,a.nombre as plan,b.nombre as modalidad,c.descripcion as tipopago,
	substring_index(substring_index(vsysmod,',',4),',',-1) as fpago,
	substring_index(substring_index(vsysmod,',',5),',',-1) as dpago,
	d.nombre as splan,e.nombre as smodalidad,f.descripcion as stipopago,
	substring_index(substring_index(vsysmod,',',9),',',-1) as sfpago,
	substring_index(substring_index(vsysmod,',',10),',',-1) as sdpago
	from sysplanes a 
	join sysmods b on b.id = substring_index(substring_index(vsysmod,',',2),',',-1)
	join tipoakeys c on c.id = substring_index(substring_index(vsysmod,',',3),',',-1)
	join sysplanes d on d.id = substring_index(substring_index(vsysmod,',',6),',',-1)
	join sysmods e on e.id = substring_index(substring_index(vsysmod,',',7),',',-1)
	join tipoakeys f on f.id = substring_index(substring_index(vsysmod,',',8),',',-1)
	where a.id = substring_index(substring_index(vsysmod,',',1),',',-1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getinroute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getinroute`(vidusuario int,vidruta int)
BEGIN
	if (select count(idfila_enc) from detallerutas where idfila_enc = vidusuario) > 0 then
		update detallerutas set idruta = vidruta where idfila_enc = vidusuario;
	else
		insert into detallerutas values(null,vidruta,1,vidusuario,2,null,0,
	0,0,0,0,0,0,0);
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getinventarioruta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getinventarioruta`(vaccion tinyint(3),vidruta int)
begin 

case vaccion when 1 then 
	
	(select b.id as idproducto,concat(b.nombre,' (P)') as producto,g.cantidad
	from detalleinventarios a
	left join productos b on b.id = a.idproducto
	left join detallerutas d on d.idinventario = a.idinventario
	left join rutaclientes e on e.idruta = d.idruta
	join facturas f on f.idtipoventa = 5 and f.idestado = 5 and f.idcliente in( e.idcliente )
	left join detallefacturas g on g.idfactura = f.id and g.idproducto = b.id
	where d.id = vidruta having idproducto is not null) union  (
	select b.id as idproducto,b.nombre as producto,a.cantidad
	from detalleinventarios a
	left join productos b on a.idproducto = b.id
	left join detallerutas c on c.id = vidruta and a.idinventario = c.idinventario
    left join movinvrutas d on c.idruta = d.idruta
	where c.id = vidruta and a.idinventario = c.idinventario and a.cantidad > 0);
when 2 then
	
	(select a.idproducto,b.nombre,replace(a.cantidad,'.00000',''),a.idinventario,1
    from temp_inventariorutas a
    join productos b on a.idproducto = b.id
    where a.idruta = vidruta) union 
    (select a.idproducto,b.nombre,replace(a.cantidad,'.00',''),a.idinventario,2
    from detalleinventarios a
    join productos b on a.idproducto = b.id
    join detallerutas c on c.idinventario = a.idinventario and c.id = vidruta
    where a.id > 0 and b.id > 0 and c.id > 0 and a.cantidad > 0);
when 3 then
	select a.id,a.nombre as producto,a.codigointerno,truncate(a.costo+a.ganancia,2) as subtotal,a.maxdescuento,
	a.idmoneda,getDescuentoProducto(d.id) as descuento,ifnull(f.valor,e.valor) as impuesto
	from productos a
	left join defectoimpuestos b on b.id > 0
	left join defectoimpuestos c on b.id = c.id and c.idtabla = 11 and !c.idfila
	left join defectoimpuestos d on b.id = d.id and d.idtabla = 11 and d.idfila = a.id
	left join impuestos e on e.id = c.idimpuesto
	left join impuestos f on f.id = d.idimpuesto
	group by a.id;
when 4 then
	select a.idinventario,b.nombre from detallerutas a join inventarios b on a.idinventario = b.id where a.id = vidruta;
when 5 then
	select d.idproducto,concat(e.nombre,' (P)') as producto,d.cantidad,f.idinventario
	from detallerutas a
	join rutaclientes b on b.idruta = a.id
	join facturas c on c.idtipoventa = 5 and c.idestado = 5 and c.idcliente in (b.idcliente)
	join detallefacturas d on d.idfactura = c.id
	join productos e on d.idproducto = e.id
    join detalleinventarios f on d.idproducto = f.idproducto and f.idinventario = 37
	where a.id > 0 and e.id > 0 and a.idruta = vidruta;
when 6 then
	select c.id as idproducto,c.nombre as producto,b.cantidad,a.idinventario
from detallerutas a
join detalleinventarios b on a.idinventario = b.idinventario
join productos c on b.idproducto = c.id
where a.id > 0 and b.cantidad > 0 and c.id > 0 and a.id = vidruta;
end case;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getInventario_ruta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getInventario_ruta`(vaccion tinyint(3),
vvariable int,vfiltro varchar(100))
BEGIN 

case vaccion when 1 then 

    select c.id as iddetalle,b.id as idinventario,
    c.idproducto,c.cantidad,d.nombre as producto
from detallerutas a
join inventarios b on b.id = a.idinventario
left join detalleinventarios c on c.idinventario = b.id
left join productos d on d.id = c.idproducto 
and if(vfiltro <> '',d.nombre like concat('%',vfiltro,'%') or d.codigo = vfiltro or
d.codigointerno = vfiltro,1)
where a.id = vvariable 
group by d.id
having if(vfiltro <> '',producto is not null,1);

when 2 then 

    select b.nombre,c.id as iddetalle,b.id as idinventario,
    c.idproducto,c.cantidad,d.nombre as producto from inventarios b
left join detalleinventarios c on c.idinventario = b.id
left join productos d on d.id = c.idproducto
and if(vfiltro <> '',d.nombre like concat('%',vfiltro,'%') or d.codigo = vfiltro or
d.codigointerno = vfiltro,1)
where b.id = vvariable
having if(vfiltro <> '',producto is not null,1);

when 3 then
	
	select a.id,a.nombre as producto,a.codigointerno,truncate(a.costo+a.ganancia,2) as subtotal,a.maxdescuento,
	a.idmoneda,getDescuentoProducto(d.id) as descuento,ifnull(f.valor,e.valor) as impuesto
	from productos a
	left join defectoimpuestos b on b.id > 0
	left join defectoimpuestos c on b.id = c.id and c.idtabla = 11 and !c.idfila
	left join defectoimpuestos d on b.id = d.id and d.idtabla = 11 and d.idfila = a.id
	left join impuestos e on e.id = c.idimpuesto
	left join impuestos f on f.id = d.idimpuesto
	group by a.id;	

end case;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getlistacxc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getlistacxc`(vid INT,vpag TINYINT(2),
vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN
	DECLARE lim1 INT;
	DECLARE lim2 INT;

	SELECT substring_index(substring_index(vfiltro,'|',1),'|',-1) INTO @idtipo;
	SELECT substring_index(substring_index(vfiltro,'|',2),'|',-1) INTO @isprov;
	SELECT substring_index(substring_index(vfiltro,'|',3),'|',-1) INTO @idsucursal;
IF vpag = 1 THEN
	select REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count
	from estadoscuentas a 
	join facturas b on b.id = a.idfactura and b.idsucursal = @idsucursal
	join clientes c on c.id = b.idcliente and c.bisproveedor = @isprov
	join tipoventas d on d.id = b.idtipoventa
	where a.idtipo = @idtipo and a.consecutivo > 0;
ELSE
	SET lim1 = substr(vlimit,1,locate(',',vlimit)-1);
	SET lim2 = substr(vlimit,locate(',',vlimit)+1);
	
	select if(a.idtipo = 7,a.consecutivo,a.id),lpad(a.consecutivo,6,0),date_format(ifnull(a.fecharecibo,a.fecha),'%d-%m-%Y') as fecha,
	if(a.idtipo = 7,group_concat(if(b.referencia <> '',b.referencia,b.consecutivo)),
	lpad(if(b.referencia <> '',b.referencia,b.consecutivo),6,0)) as factura,
	ifnull(trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2)),'') as cliente,d.nombre as tventa,
	format(sum(a.valor),2),a.comentario
	from estadoscuentas a 
	join facturas b on b.id = a.idfactura and b.idsucursal = @idsucursal
	left join clientes c on c.id = b.idcliente and c.bisproveedor = @isprov
	join tipoventas d on d.id = b.idtipoventa
	where a.idtipo = @idtipo and a.consecutivo > 0 
	group by a.consecutivo order by a.id DESC limit lim1,lim2;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getListaFacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getListaFacturas`(vid INT,vpag TINYINT(2),
vfiltro VARCHAR(45),vlimit VARCHAR(10))
begin 
	DECLARE lim1 INT;
	DECLARE lim2 INT;

	SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @idtipoventa;
	SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @idtipo;
	SELECT substring_index(substring_index(vfiltro,',',3),',',-1) INTO @idsucursal;
	SELECT substring_index(substring_index(vfiltro,',',4),',',-1) INTO @tfiltro;
	SELECT substring_index(substring_index(vfiltro,',',5),',',-1) INTO @filtro;
	
IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(count(a.id)/10,2),'.00','') AS count FROM
	facturas a LEFT JOIN tipofacturas b ON a.idtipo = b.id LEFT JOIN clientes c ON a.idcliente = c.id 
	LEFT JOIN facturaimpresiones d ON d.idfactura = a.id JOIN monedas e on e.id = a.idmoneda
	WHERE IF(vid <> 0, a.id = vid, a.id > 0) AND a.idtipoventa = @idtipoventa AND IF(@idtipo <> 0, a.idtipo = @idtipo, 1)
	AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1) and if(@tfiltro and @filtro,
	case @tfiltro 
	when 1 then a.consecutivo like concat('%',@filtro) 
	when 2 then IF(a.comodin <> '',a.comodin like concat('%',@filtro,'%'),
	CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula) like concat('%',@filtro,'%') ) 
	when 3 then date_format(a.fecha,'%d-%m-%Y') = @filtro
	end,1);
ELSE
	SET lim1 = substr(vlimit,1,locate(',',vlimit)-1);
	SET lim2 = substr(vlimit,locate(',',vlimit)+1);
	SELECT a.id,LPAD(a.consecutivo, 6, 0) AS consecutivo,substring(a.referencia,22,20),IFNULL(a.idtipo, 0) AS idtipo,
	    b.nombre AS tipo,date_format(a.fecha,'%d-%m-%Y') AS fecha,
	    IF (a.comodin <> '',
	    a.comodin,CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2,', ',c.cedula)) AS cliente,
	    concat(e.simbolo,' ',FORMAT((a.subtotal + a.imv +a.ajuste -a.descuento+a.exento)/a.divisa, 2)) AS subtotal,
	    concat(substring(a.comentario,1,10),'...'),a.idtipoventa,d.tipoimpresion,a.feestado,f.fecha
	FROM
	    facturas a LEFT JOIN tipofacturas b ON a.idtipo = b.id LEFT JOIN clientes c ON a.idcliente = c.id 
	    LEFT JOIN facturaimpresiones d ON d.idfactura = a.id JOIN monedas e on e.id = a.idmoneda
	    join log f on f.idfila = a.id and f.idtabla = 64
	WHERE IF(vid <> 0, a.id = vid, a.id > 0) AND a.idtipoventa = @idtipoventa AND IF(@idtipo <> 0, a.idtipo = @idtipo, 1)
	    AND IF(@idsucursal <> -1,a.idsucursal = @idsucursal,1)
	group by a.id
	having if(@tfiltro and @filtro,case @tfiltro 
		when 1 then consecutivo like concat('%',@filtro)
		when 2 then cliente like concat('%',@filtro,'%') 
		when 3 then fecha = @filtro
		end,1)
	order by a.id desc limit lim1,lim2;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getListaProductosFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getListaProductosFactura`(vid int)
begin
select a.idfactura,
case e.idtipoventa when 3 then 'Orden de Compra' when  4 then 'Proforma'
when 5 then 'Pedido' else 'ERROR' end as tipoventa,
ifnull(b.id,c.id) as idproducto,
if(a.comodin <> '',a.comodin,ifnull(b.nombre,c.nombre)) as producto,
ifnull(b.codigo,c.codigo) as codigo,
ifnull(b.codigointerno,'N/A') as codigointerno,
a.cantidad as cantidad,if(e.idtipoventa = 3,2,1) as idtipoventa,ifnull(f.cantidad,-1) as cantidadinventario,
ifnull(g.nombre,'N/A') as inventario,ifnull(g.id,-1) as idinventario,a.id as id
from detallefacturas a
left join productos b on a.idproducto = b.id
left join servicios c on a.idservicio = c.id
left join paquetes d on a.idpaquete = d.id
join facturas e on a.idfactura = e.id
left join detalleinventarios f on a.idinventario = f.idinventario
left join inventarios g on g.id = f.idinventario
where a.idfactura = vid group by ifnull(b.id,c.id);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getlrclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getlrclientes`(vidruta int,vsucursal int)
BEGIN
	select a.id,upper(concat(trim(concat(a.nombre,' ',a.apellido1,' ',a.apellido2)),', ',a.cedula)) 
from clientes a
join ubicaciones b on b.idfila = a.id and idtabla = 2
join barrios c on c.id = b.idbarrio
join distritos d on d.id = c.iddistrito
join cantones e on e.id = d.idcanton
join rutaregiones f on f.idregion = e.id and f.idruta = vidruta
where a.idsucursal = vsucursal
GROUP by a.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getmargenes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getmargenes`(vidproducto int)
begin
	/*truncate(getcosto(a.id,0),2)*/
	select truncate(a.costo,2),truncate(a.venta,2),a.ganancia,group_concat(ifnull(b.idnivel,'')) as niveles,
group_concat(ifnull(b.venta,0)) as ventas,group_concat(ifnull(truncate((b.ganancia*100)/a.costo,2),0)) as gananciasp,
group_concat(ifnull(b.ganancia,0)) as gananciasm,truncate((a.ganancia*100)/a.costo,2) as porcentual
from productos a 
left join nivelproductos b on b.identrada = a.id and b.idtipoentrada = 1 
where a.id = vidproducto
group by a.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getmdetallefactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getmdetallefactura`(vid INT)
BEGIN
SELECT lpad(a.idfactura,6,0) as idfactura,concat(e.nombre,' ',e.apellido1,' ',e.apellido2) AS cliente,date_format(d.fecha,'%Y-%m-%d') AS fecha,g.nombre as tipofactura,
concat(f.simbolo,FORMAT(d.subtotal+d.imv-d.descuento+d.ajuste+d.flete,2)) AS monto,b.nombre AS producto,if(i.cantidad is null,a.cantidad,a.cantidad - i.cantidad) as cantidad
,concat(c.nombre,'(',c.simbolo,')') AS unidad,a.id as iddetalle,a.idproducto,a.cantidad,i.cantidad
FROM detallefacturas a
JOIN productos b ON a.idproducto = b.id
LEFT JOIN unidades c ON a.idunidad = c.id
JOIN facturas d ON a.idfactura = d.id
JOIN clientes e ON d.idcliente = e.id
JOIN monedas f ON d.idmoneda = f.id
JOIN tipofacturas g ON d.idtipo = g.id
LEFT JOIN devoluciones h ON h.idfactura = a.idfactura
LEFT JOIN detalledevoluciones i ON i.iddevolucion = h.id AND i.idproducto = b.id
WHERE d.id = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getmdevoluciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getmdevoluciones`(vid int)
BEGIN
SELECT lpad(b.consecutivo,6,0) as idfactura,concat(c.nombre,' ',c.apellido1,' ',c.apellido2) as cliente,date_format(b.fecha,'%Y-%m-%d') as fecha,
lpad(a.consecutivo,6,0) as devolucion,date_format(a.fecha,'%Y-%m-%d') as fecha,a.comentario,d.nombre as usuario,a.id as iddevolucion
FROM devoluciones a
JOIN facturas b ON a.idfactura = b.id
JOIN clientes c ON b.idcliente = c.id
JOIN usuarios d ON a.idusuario = d.id
WHERE a.idfactura = vid
ORDER BY a.fecha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getmsj` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getmsj`()
BEGIN
	
	select '' /*case a.valor
    when 0 then '' 
    when 1 then if(datediff(d.valor,curdate()) = 0,concat('Su ',c.descripcion,' Caduca HOY'),concat('Su ',c.descripcion,' Caduca en ',datediff(d.valor,curdate()),' día(s)'))
    when 2 then concat('Su ',c.descripcion,' a Caducado')
    end as Mensaje*/
    from ajustessucursales where idsucursal = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getnivelcliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getnivelcliente`(vid int)
begin
select n.id,n.nombre,ifnull(d.id,0) as iddetalle,
ifnull(d.clie_descuento_max,0),ifnull(d.clie_descuento,0),ifnull(d.clie_plazo,0),
ifnull(d.clie_credito,0),ifnull(d.prod_descuento_max,0),ifnull(d.prod_descuento,0),
ifnull(max(i.idcuenta),max(e.idcuenta)) as dcontado,ifnull(max(j.idcuenta),max(f.idcuenta)) as hcontado,
ifnull(max(k.idcuenta),max(g.idcuenta)) as dcredito,ifnull(max(l.idcuenta),max(h.idcuenta)) as hcredito,
ifnull(max(o.idcuenta),max(m.idcuenta)) as prod_cuenta
from nivelesclientes n 
left join detallenivelesclientes d on d.idnivelcliente = n.id
left join defectocuentas c on c.id > 0
left join defectocuentas e on c.id = e.id and e.idtabla = 2 and !e.idfila and e.bisdebe and e.idtipo = 1
left join defectocuentas f on c.id = f.id and f.idtabla = 2 and !f.idfila and !f.bisdebe and f.idtipo = 1
left join defectocuentas g on c.id = g.id and g.idtabla = 2 and !g.idfila and g.bisdebe and g.idtipo = 2
left join defectocuentas h on c.id = h.id and h.idtabla = 2 and !h.idfila and !h.bisdebe and h.idtipo = 2
left join defectocuentas i on c.id = i.id and i.idtabla = 69 and i.idfila = n.id and i.bisdebe and i.idtipo = 1
left join defectocuentas j on c.id = j.id and j.idtabla = 69 and j.idfila = n.id and !j.bisdebe and j.idtipo = 1
left join defectocuentas k on c.id = k.id and k.idtabla = 69 and k.idfila = n.id and k.bisdebe and k.idtipo = 2
left join defectocuentas l on c.id = l.id and l.idtabla = 69 and l.idfila = n.id and !l.bisdebe and l.idtipo = 2
left join defectocuentas m on c.id = m.id and !m.idfila and m.idtipo = 10
left join defectocuentas o on c.id = o.id and o.idtabla = 69 and o.idfila = n.id and o.idtipo = 10
where n.id = vid
group by n.id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getNotasAbonosCierre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getNotasAbonosCierre`(vidcierre int)
BEGIN


select concat(if(c.idtipoventa = 7,'T','F'),lpad(c.consecutivo,10,0)) as factura,e.nombre,date_format(b.fecha,'%d-%m-%Y') as fecha,
ifnull(trim(concat(d.apellido1,' ',d.apellido2,' ',d.nombre)),c.comodin) as cliente,b.valor,
b.comentario
from detallecierres a
join estadoscuentas b on a.idfactura = b.id
join facturas c on c.id = b.idfactura
join tipoestadocuentas e on e.id = b.idtipo
left join clientes d on d.id = c.idcliente 
where a.tipofactura <> 0 and a.idcierre = vidcierre;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getodt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getodt`(vpresupuesto int,vidsucursal int)
BEGIN
    select a.id as idodt,b.id as iddetpre,a.codigo,a.descripcion 
    from odts a 
   	left join odtpresupuestos b on a.id = b.idodt and if(vpresupuesto = 0,1,b.idpresupuesto = vpresupuesto) 
    where a.idsucursal = vidsucursal
    group by a.id having if(vpresupuesto = 0,1,iddetpre is not null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getordencompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getordencompras`(vid int)
BEGIN

SELECT f.id,LPAD(f.consecutivo, 6, 0) AS consecutivo,DATE_FORMAT(f.fecha, '%Y-%m-%d') AS fecha,p.cedula,ifnull(p.nombre,f.comodin) AS proveedor,f.comentario,u.nombre AS usuario,
q.nombre as producto,s.nombre as servicio,k.nombre as paquete,d.cantidad
FROM facturas f
join detallefacturas d on d.idfactura = f.id
left join productos q on d.idproducto = q.id
left join servicios s on d.idservicio = s.id
left join paquetes k on d.idpaquete = k.id
left JOIN clientes p ON f.idcliente = p.id
JOIN usuarios u ON f.idusuario = u.id
WHERE f.id = vid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getPermisosUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getPermisosUsuarios`(viduser int,va int,vb int)
BEGIN
	select `p`.`idusuario` AS `id_user`, `s`.`codigo` AS `idcodigo`, `s`.`nombre` AS `nombre`,
	if(c.isvisible = 1,`p`.`tipo`,3) AS `permiso`,
    case if(c.isvisible = 1,`p`.`tipo`,3) when 1 then 'Habilitado' when 2 then 'Deshabilitado' when 3 then 'Invisible' end  AS `nombre_permiso`,
    `p`.`id` AS `id`
	from
    `production`.`permisosusuarios` `p` 
    join `production`.`permisos` `s` on `p`.`idpermiso` = `s`.`id`
    join permisosCliente c on c.codigo = s.codigo
    where p.idusuario = viduser and s.codigo BETWEEN va and vb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getPreciosClienteRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getPreciosClienteRuta`(vidruta int)
BEGIN
	SET @rank=0;
	
	select @rank:=@rank+1 as id,c.idproducto,b.idcliente,ifnull(e.exoneracion,f.exoneracion) as exoneracion,
ifnull(e.ganancia,f.ganancia) as ganancia,ifnull(e.venta,f.venta) as venta
from detallerutas a
join rutaclientes b on b.idruta = a.id and a.id = vidruta
join detalleinventarios c on c.idinventario = a.idinventario
join clientes d on d.id = b.idcliente and d.id > 0
left join precioxclientes e on e.idcliente = d.id and e.idproducto = c.idproducto
left join nivelproductos f on f.identrada = c.idproducto and f.idnivel = d.idnivel and f.idtipoentrada = 1
group by c.idproducto,b.idcliente
having venta is not null order by id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getpreciosproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getpreciosproductos`(vid int)
BEGIN
	
select n.idnivel,format(n.ganancia,2), format(n.venta*((i.valor/100)+1),2) as precio,
n.exoneracion
from nivelproductos n
join productos p on p.id = n.identrada
left join defectoimpuestos d on d.idfila in(0,vid) and idtabla = 11
left join impuestos i on d.idimpuesto = i.id
where p.id = vid group by n.id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getprecprodxcli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getprecprodxcli`(vid int)
begin

select a.idproducto,a.idcliente,concat(c.nombre,' ',c.apellido1,' ',c.apellido2,' [',replace(cedula,'-',''),']') as cliente,a.ganancia,
format(b.costo * ((((sum(i.valor) - (sum(i.valor)*(a.exoneracion/100)))) / 100)+1) * ((a.ganancia / 100)+1),2) as precio,
a.exoneracion,a.id
from precioxclientes a
join productos b on b.id = a.idproducto
join clientes c on a.idcliente = c.id
left join defectoimpuestos d on d.idfila in(0,vid) and idtabla = 11
left join impuestos i on d.idimpuesto = i.id
where idproducto = vid group by a.id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getPresupuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getPresupuesto`(vcodigo varchar(10),vdescr varchar(255),
vmonto decimal(10,2),f1 varchar(12),f2 varchar(12),vidmoneda tinyint(3),vmontoactual decimal(14,2),
vestado tinyint(3))
BEGIN
    select a.codigo,a.descripcion,concat(b.simbolo,' ',format(a.montoactual/a.divisa,2)) as monto,
    c.nombre as estado,
    d.nombre as sucursal,a.id,a.monto,a.montoactual,
    concat(b.simbolo,' ',format(a.monto/a.divisa,2)) as montor
    from presupuestos a
    join monedas b on b.id =  a.idmoneda 
    join estadopresupuestos c on c.id = a.idestado
    join sucursales d on d.id = a.idtoempresa
    where a.id > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getPreventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getPreventas`(vidempresa int)
BEGIN
	select a.id,lpad(a.consecutivo,10,0) as numero,
	ifnull(concat(b.nombre,' ',b.apellido1,' ',b.apellido2),a.comodin) as nombre, 
	format(sum((c.cantidad*(c.precio+c.imv+c.descuento))),2) as total
	from tmpfacturas a 
	left join clientes b on b.id = a.idcliente
	join tmpdetallefacturas c on c.idfactura = a.id
	where a.idsucursal = vidempresa and a.idtipoventa = 6 and !a.isregistrada
	group by a.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getprocesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getprocesos`(vid int,vac tinyint(2),vnombre varchar(45))
BEGIN
    IF vac = 1 THEN
        SELECT a.nombre,NULL
        FROM productos a
        JOIN detalleinventarios b ON b.idproducto = a.id
        JOIN inventarios c ON b.idinventario = c.id
        WHERE a.id > 0 AND c.id = 7 AND a.nombre LIKE CONCAT('%',vnombre,'%')LIMIT 10;
    ELSEIF vac = 0 THEN
        SELECT a.id,a.nombre,b.idproceso
        FROM productos a
        LEFT JOIN lineaproducciones b ON a.id = b.idproceso
        WHERE IF(vid <> 0,a.id = vid,a.nombre LIKE CONCAT('%',vnombre,'%'));
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getproducciones`(vidaccion int)
BEGIN
	SELECT 
    a.id AS idproduccion,
    c.id AS iddetalle,
    a.idproceso,
    b.nombre AS proceso,
    a.idlinea,
    REPLACE(a.cantidad, '.00', '') AS cantidad,
    c.idtarea,
    d.nombre AS tarea,
    DATE_FORMAT(c.fecha, '%Y-%m-%d %h:%i %p') AS fechainicio,
    concat(REPLACE(e.estimado, '.00', ''),' ',f.simbolo) AS estimado,
    c.idaccion,
    IF(c.idaccion = 1,
        'Iniciado',
        IF(c.idaccion = 2,
            'Pausado',
            'terminado')) AS accion
FROM
    producciones a
        JOIN
    productos b ON a.idproceso = b.id
        JOIN
    detalleproducciones c ON c.idproduccion = a.id
        JOIN
    tareaproducciones d ON c.idtarea = d.id
		left JOIN
	detallelineas e ON e.idtareaproduccion = d.id
		JOIN
    unidades f ON e.idunidad = f.id
WHERE
	c.idaccion = vidaccion AND c.idaccion > 0
ORDER BY a.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getproductos`(vid int)
BEGIN
    SELECT 
    f.id,
    f.nombre as familia,
    t.id,
    t.nombre as tipo,
    m.id,
    m.nombre as marca,
    p.peso,
    p.idunidad,
    b.idinventario,
    p.nombre,
    p.codigo,
    p.codigointerno,
    p.minimo,
    p.maximo,
    p.maxdescuento,
    p.costo,
    p.ganancia,
    format(`p`.`venta`,2),
    TRUNCATE(p.venta / ((i.valor/100)+1),2) AS hventa,
    p.venta,
    p.exoneracion AS pexoneracion,
    d.idimpuesto,
    i.nombre,
    i.valor,
    d.exoneracion,
    IF(d.idfila = 0, 1, 0) AS isdefecto
FROM
    productos p
        LEFT JOIN
    defectoimpuestos d ON d.idtabla = 11 AND d.idfila IN (0 , p.id)
        LEFT JOIN
    impuestos i ON i.id = d.idimpuesto
		LEFT JOIN
	detalleinventarios b ON b.idproducto = p.id
		LEFT JOIN
	marcas m ON p.idmarca = m.id
		LEFT JOIN
	tipos t ON m.idtipo = t.id
		LEFT JOIN
	familias f ON t.idfamilia = f.id
WHERE
    p.id = vid
	GROUP BY p.id;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getproductoxinventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getproductoxinventario`(vproducto varchar(45),vcodigo varchar(45),vidinventario int,vidsucursal int)
begin

select if(vproducto <> '',a.nombre,a.codigo) as producto,null
from productos a
join detalleinventarios b on b.idproducto = a.id and b.idinventario = vidinventario
join inventarios c on b.idinventario = c.id
where a.id > 0 and if(vproducto <> '',a.nombre like concat('%',vproducto,'%'),1) or if(vcodigo <> '',a.codigo like concat('%',vcodigo,'%'),1)
and find_in_set(a.idsucursal,concat(-1,',',vidsucursal));

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getReporteCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getReporteCliente`(vid int,vtipo tinyint(1))
begin

select count(a.id) as Cantidad,
case when datediff(date_add(b.fecha,interval b.plazo day),curdate()) >= 0 then 'Al Día'
when datediff(date_add(b.fecha,interval b.plazo day),curdate()) between -1 and -30 then '1 Mes'
when datediff(date_add(b.fecha,interval b.plazo day),curdate()) between -31 and -60 then '2 Meses'
when datediff(date_add(b.fecha,interval b.plazo day),curdate()) between -61 and -90 then '3 Meses'
else '+4 Meses' end as tiempo
from estadoscuentas a 
join facturas b on a.idfactura = b.id and b.idtipoventa = vtipo and if(vid = 0,1,b.idcliente = vid)
group by tiempo;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getreporteproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getreporteproductos`(vaccion tinyint(3),vidproducto varchar(1024),vidmarca int,vidtipo int,vidfamilia int,
vidproveedor int,vf1 varchar(12),vf2 varchar(12),vlimite int)
BEGIN
	
	case vaccion 
	when 1 then 
	
	select lpad(a.consecutivo,6,0) as id,b.idproducto,d.nombre,b.precio,
	trim(concat(e.nombre,' ',e.apellido1,' ',e.apellido2)) as proveedor,date_format(a.fecha,'%d/%m/%Y') as fecha
		from facturas a 
		join detallefacturas b on a.id = b.idfactura
		join (
			select substring_INDEX(group_concat(a.id),',',if(vlimite,vlimite*-1,-3)) as id from detallefacturas a
			join facturas b on b.id = a.idfactura and b.idtipoventa = 2 
			and if(vf1 = '',1,if(vf2 = '',date_format(b.fecha,'%Y-%m-%d') = vf1,date_format(b.fecha,'%Y-%m-%d') between vf1 and vf2)) 
			where if(vidproducto = '',1,find_in_set(a.idproducto,vidproducto))
			group by a.idproducto
		) c on find_in_set(b.id,c.id)
		join productos d on d.id = b.idproducto
    join marcas f on f.id = d.idmarca and IF(vidmarca = 0,1,f.id = vidmarca)
    join tipos g on g.id = f.idtipo and IF(vidtipo = 0,1,g.id = vidtipo)
    join familias h on h.id = g.idfamilia and IF(vidfamilia = 0,1,h.id = vidfamilia)
    join clientes e on e.id = a.idcliente and if(vidproveedor,vidproveedor,1);
	
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getRuta`(IN `vid` INT)
BEGIN
    select b.id,b.nombre as nombre,a.consecutivo,b.codigoruta as acronimo,a.consecutivo4 as pedidos,a.consecutivo5 as especial 
    from detallerutas a 
    join rutas b on b.id = a.idruta
    join usuarios c on c.id = a.idfila_enc and a.idtabla_enc = 1
    join detallerutas d on d.idruta = b.id
    and a.idfila_enc = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getSSE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getSSE`(vidusuario int,vidsucursal int)
BEGIN
	DECLARE tout tinyint(2);
	DECLARE tmpc int(3);
	DECLARE autofact tinyint(2) default 0;
	DECLARE min5 tinyint(2) DEFAULT 0;
	DECLARE server tinyint(2);
	
	select valor from ajustes where descr = '24/7' into server;
	
	if !server then
		select if(date_format(curtime(),'%s') < 5 and date_format(curtime(),'%i')%10 = 0,1,0) from dual into autofact;
		select if(date_format(curtime(),'%s') < 5 and date_format(curtime(),'%i')%5 = 0,1,0) from dual into min5;
	end if;

	select count(id) from tmpfacturas where idsucursal = vidsucursal into tmpc;	

	select if(TIMESTAMPDIFF(minute,tkn_time,now()) = 4 and b.token,1,0)
	from sucursales a join ajustessucursales b ON
	b.idsucursal = a.id
	where a.id = vidsucursal into tout;
	
    select count(id),tout,tmpc,autofact,min5 from notificaciones where idusuario = vidusuario and idestado = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getSucursales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getSucursales`(vid int)
BEGIN 

    select idsucursal from usuarios where id = vid into @sucursales;
    if locate('-1',@sucursales) then 
        (SELECT a.id, if(trim(a.pfisico) <> '',a.pfisico,a.nombre) as nom,2 as orden FROM sucursales a)
        UNION
        (SELECT -1,'Todas las Sucursales',1 as orden)
        order by orden,nom; 
    ELSE
        SELECT a.id, if(trim(a.pfisico) <> '',a.pfisico,a.nombre) as nom
        FROM sucursales a WHERE find_in_set(a.id,@sucursales) order by a.nombre;
    end if;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getsucursalfactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getsucursalfactura`(vid int)
BEGIN

SELECT 
    UPPER(CONCAT(SUBSTRING(c.nombre, 1, 1),
                    CHAR(96 + IF(COUNT(s.id) = 0, 1, COUNT(s.id)))))
FROM
    cantones c
        JOIN
    sucursales s ON s.idcanton = c.id
WHERE
    c.id = vid AND s.id > 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_gettareas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_gettareas`(vidlinea INT,vidtarea INT,vac TINYINT(2),vnombre VARCHAR(45))
BEGIN
IF vac = 1 THEN
    SELECT nombre,NULL
    FROM tareaproducciones
    WHERE id > 0 AND IF(vidtarea <> 0,id = vidtarea,1) AND nombre LIKE CONCAT('%',vnombre,'%') LIMIT 10;
ELSEIF vac = 0 THEN
    SELECT l.id AS idlinea,t.id AS idtarea,t.nombre AS tarea,REPLACE(d.estimado, '.00', '') AS estimado,u.simbolo AS unidad,d.orden
    FROM detallelineas d
    JOIN tareaproducciones t ON d.idtareaproduccion = t.id
    JOIN lineaproducciones l ON d.idlineaproduccion = l.id
    JOIN unidades u ON d.idunidad = u.id
    WHERE d.idlineaproduccion = vidlinea ORDER BY d.orden;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_gettareasxproceso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_gettareasxproceso`(vvar VARCHAR(45),vcantidad INT)
BEGIN
SELECT f.nombre,f.codigo,b.nombre,CONCAT(IF(vcantidad <> 0,b.hombre * vcantidad,b.hombre),'(',d.simbolo,')') AS duracionhombre,
CONCAT(IF(vcantidad <> 0,b.maquina * vcantidad,b.maquina),'(',e.simbolo,')') AS duracionmaquina,
IF(vcantidad <> 0,b.bandejas * vcantidad,b.bandejas),a.orden
FROM detallelineas a
JOIN tareaproducciones b ON a.idtareaproduccion = b.id
JOIN lineaproducciones c ON a.idlineaproduccion = c.id
JOIN unidades d ON b.idunidad1 = d.id
JOIN unidades e ON b.idunidad2 = e.id
JOIN productos f ON c.idproceso = f.id
WHERE f.codigo LIKE CONCAT('%',vvar,'%') OR f.nombre LIKE CONCAT('%',vvar,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getUserLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getUserLogin`(vidusuario varchar(64))
BEGIN
    select mail, concat(substring(mail,1,3),"****@", substring_index(mail,"@",-1)) from usuarios where user = vidusuario and id > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getVariosPagos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_getVariosPagos`(vid int)
BEGIN
		set @valor = 0;
		
		select idcliente from facturas a join estadoscuentas b on b.idfactura = a.id
		where b.consecutivo = vid and b.idtipo = 7 limit 1 into @idcliente;
	
		select sum(abs(debe-haber)) from estadoscuentas where id in(
		(select max(a.id) from estadoscuentas a join facturas b on a.idfactura = b.id
		and b.idcliente = @idcliente group by a.idfactura)) and abs(debe-haber) > 0 into @sgeneral;
	
		select date_format(ifnull(b.fecharecibo,b.fecha),'%Y-%m-%d'),lpad(b.consecutivo,6,0),
		upper(trim(concat(d.nombre,' ',d.apellido1,' ',d.apellido2))),
		e.nombre,ifnull(f.nombre,'-'),lpad(c.consecutivo,6,0),g.simbolo,
		(select format(abs(debe-haber),2) from estadoscuentas 
			where id < b.id and idfactura = b.idfactura order by id desc limit 1) as saldo_ant
		,format(abs(b.debe-b.haber),2) as saldo_act,b.valor,format(@valor:=@valor+b.valor,2),
		format(@sgeneral,2),d.cedula
		from estadoscuentas b
		left join facturas c on c.id = b.idfactura
		left join clientes d on d.id = c.idcliente
		left join usuarios e on e.id = c.idusuario
		left JOIN tipopagos f on b.idtipopago = f.id
		left JOIN monedas g on g.id = c.idmoneda
		where b.consecutivo = vid and b.idtipo = 7;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_globalme` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_globalme`(Vfila int,vidempresa int,vidusuario int,
isheader tinyint(2))
BEGIN
	declare msel varchar(500);
	declare mwhere varchar(700);
	declare mtbl int;
	declare mjoin varchar(700);
	
	select vsel,replace(replace(vwhere,'|',vidempresa),'^',vidusuario),vtbl,
	replace(replace(vjoin,'|',vidempresa),'^',vidusuario)
	from globalme 
	where id = vfila into msel,mwhere,mtbl,mjoin;
	
	if isheader THEN
		set msel = 'count(a.id)';
	end if;
	
	if isnull(mjoin) then 
		select nombre from tablas where id = mtbl into @ntabla;
		set @mysql_g = concat('SELECT ',msel,' FROM ',@ntabla,' a WHERE ',mwhere);
		prepare stmt_g from @mysql_g;
		execute stmt_g;
	else
		set @mysql_g = concat('SELECT ',msel,' FROM ',mjoin,' WHERE ',mwhere);
		prepare stmt_g from @mysql_g;
		execute stmt_g;
	end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_gproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_gproductos`(vid int)
begin 
    select
    `p`.`id` AS `vid`, `p`.`codigo` AS `vcodigo`, `p`.`codigointerno` AS `vcodigointerno`,
    `p`.`nombre` AS `vnombre`, format( `p`.`costo`,2) AS `vcosto`,p.ganancia as vganancia,
    truncate((`p`.`ganancia`*100)/p.costo,2) AS `vgganancia`,
    format(p.venta,2) as vventa,`p`.`exoneracion` AS `vexoneracion`,
    `u`.`id` AS `vidunidad`,
    `p`.`minimo` AS `vminimo`,
    `p`.`maximo` AS `vmaximo`,
    replace(`p`.`maxdescuento`,'.00','') AS `vmaxdescuento`,
    ifnull(`f`.`id`, 0) AS `vidfamilia`,
    ifnull(`f`.`nombre`,'') AS `vfamilia`,
    ifnull(`t`.`id`, 0) AS `vidtipo`,
    ifnull(`t`.`nombre`,'') AS `vtipo`,
    ifnull(`a`.`id`, 0) AS `vidmarca`,
    ifnull(`a`.`nombre`,'') AS `vmarca`,
    `o`.`id` AS `vidmoneda`,d.idinventario as vidinventario,p.isvariable as visvariable,
    p.idheredado as vidheredado,p.cantequiv as vcantequiv,d.cantidad as vcantidad,p.isinventariado as visinventariado,
    p.isgravamen as visgravamen
from `production`.`productos` `p` 
left join `production`.`unidades` `u` on `p`.`idunidad` = `u`.`id`
left join `production`.`marcas` `a` on `p`.`idmarca` = `a`.`id`
left join `production`.`tipos` `t` on `a`.`idtipo` = `t`.`id`
left join `production`.`familias` `f` on `t`.`idfamilia` = `f`.`id`
join `production`.`usuarios` `s` on `p`.`idusuario` = `s`.`id`
left join `production`.`monedas` `o` on `p`.`idmoneda` = `o`.`id`
join `production`.`sucursales` `c` on `p`.`idsucursal` = `c`.`id`
join detalleinventarios d on d.idproducto = p.id
where p.id = vid group by p.id limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_gproveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_gproveedores`()
BEGIN
	select
    `c`.`id` AS `vid`,
    `c`.`cedula` AS `vcedula`,
    trim( concat( `c`.`nombre`, ' ', `c`.`apellido1`, ' ', `c`.`apellido2` )) AS `nombre`,
    `c`.`bisnacional` AS `bisnacional`,
    concat(
        ifnull(
            `t1`.`telefono`,
            '--'
        ),
        ' || ',
        ifnull(
            `t2`.`telefono`,
            '--'
        ),
        ' || ',
        ifnull(
            `t3`.`telefono`,
            '--'
        )
    ) AS `telefonos`,
    `o`.`correo` AS `correos`,
    `tc`.`nombre` AS `tipocliente`,
    `c`.`credito` AS `credito`,
    `c`.`plazo` AS `plazo`,
    `c`.`idestadocontable` AS `idconta`,
    `c`.`fecha_creacion` AS `fecha_creacion`,
    `c`.`idusuario` AS `idusuario`,
    `c`.`descuentom` AS `descuentom`,
    `tc`.`id` AS `idtipocliente`,
    `c`.`web` AS `web`,
    `c`.`codigo` AS `codigo`
from
    (
        (
            (
                (
                    (
                        (
                            (
                                `production`.`clientes` `c` join `production`.`tipoclientes` `tc` on
                                (
                                    (
                                        `tc`.`id` = `c`.`idtipocliente`
                                    )
                                )
                            ) left join `production`.`telefonos` `t` on
                            (
                                (
                                    (
                                        `t`.`idfila` = `c`.`id`
                                    )
                                    and(
                                        `t`.`idtabla` = 2
                                    )
                                )
                            )
                        ) left join `production`.`telefonos` `t1` on
                        (
                            (
                                (
                                    `t1`.`idfila` = `c`.`id`
                                )
                                and(
                                    `t1`.`idtabla` = 2
                                )
                                and(
                                    `t1`.`idtipotel` = 1
                                )
                            )
                        )
                    ) left join `production`.`telefonos` `t2` on
                    (
                        (
                            (
                                `t2`.`idfila` = `c`.`id`
                            )
                            and(
                                `t2`.`idtabla` = 2
                            )
                            and(
                                `t2`.`idtipotel` = 2
                            )
                        )
                    )
                ) left join `production`.`telefonos` `t3` on
                (
                    (
                        (
                            `t3`.`idfila` = `c`.`id`
                        )
                        and(
                            `t3`.`idtabla` = 2
                        )
                        and(
                            `t3`.`idtipotel` = 3
                        )
                    )
                )
            ) left join `production`.`ubicaciones` `u` on
            (
                (
                    (
                        `u`.`idfila` = `c`.`id`
                    )
                    and(
                        `u`.`idtabla` = 2
                    )
                )
            )
        ) left join `production`.`correos` `o` on
        (
            (
                (
                    `o`.`idfila` = `c`.`id`
                )
                and(
                    `o`.`idtabla` = 2
                )
            )
        )
    )
where
    (
        (
            `c`.`bisproveedor` <> 0
        )
        and(
            `c`.`id` > 0
        )
    )
    
group by
    `c`.`id` order by c.nombre limit 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_impuestoproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_impuestoproductos`(vid int)
BEGIN
	SELECT 
    `b`.`id` AS `idimpuesto`,
    `b`.`nombre` AS `impuesto`,
    REPLACE(`b`.`valor`, '.00', '') as `valor`,
    CONCAT(REPLACE(`b`.`valor`, '.00', ''), '%') AS `fvalor`,
    `a`.`exoneracion` AS `exoneracion`,
    `a`.`idfila` AS `idfila`
FROM
    (`defectoimpuestos` `a`
    JOIN `impuestos` `b` ON (((`a`.`idimpuesto` = `b`.`id`)
        AND (`a`.`idtabla` = 11))))
WHERE
    IF(vid NOT IN (SELECT 
                idfila
            FROM
                defectoimpuestos),
        a.idfila = 0,
        IF(`a`.`idfila` = 0
                AND `a`.`exoneracion` = '0.00',
            `a`.`idfila` > 0 AND a.idfila = vid,
            1));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_iscaja` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_iscaja`(vip varchar(64))
BEGIN
	select count(a.id) as cantidad,b.id as idcaja from cajas a left join cajas b on a.id = b.id 
	and b.ip = vip;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_isproduccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_isproduccion`(vlista tinyint(2),vnombre varchar(45))
BEGIN
if vlista = 1 then
    select a.id,a.codigo,a.nombre,truncate(a.costo,2) as precio,a.idunidad,b.idinventario,c.nombre as inventario,replace(b.cantidad,'.00','') as cantidad
    from productos a
    join detalleinventarios b on b.idproducto = a.id
    join inventarios c on b.idinventario = c.id and c.idcuenta = 50
    where a.id > 0 and c.id > 0;
else
    select a.id,a.codigo,a.nombre,truncate(a.costo,2) as precio,a.idunidad,b.idinventario,c.nombre as inventario,replace(b.cantidad,'.00','') as cantidad
    from productos a
    join detalleinventarios b on b.idproducto = a.id
    join inventarios c on b.idinventario = c.id and c.idcuenta = 50
    where a.id > 0 and c.id > 0 and a.nombre = vnombre;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_log`(vidusuario int, vaccion tinyint(3), vdesde varchar(20),vhasta varchar(20))
BEGIN
select u.nombre as usuario, a.descripcion,   c.nombre as accion, a.fecha, 
if(s.nombre = '',s.pfisico,s.nombre) as empresa from log a 
join tablas b on a.idtabla = b.id
join tipoacciones c on a.idaccion = c.id
join usuarios u on a.usuario = u.id
join sucursales s on a.idsucursal = s.id 
where if(vdesde <> '' and vhasta <> '',date_format(a.fecha,'%Y-%m-%d') between vdesde and vhasta,1)
and if(vidusuario <> 0,a.usuario = vidusuario,1)
and if(vaccion <> 0,a.idaccion = vaccion,1)
order by a.id desc limit 50
 ;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_Login`(vuser varchar(60),vpass varchar(100))
BEGIN 

DECLARE vid int;
DECLARE vnom varchar(100);
DECLARE vusr varchar(32);
DECLARE vtu int;
DECLARE venom varchar(128);
DECLARE veid int;
DECLARE vcorreo varchar(64);
DECLARE vcedula varchar(32);
DECLARE vcodigo varchar(20);
DECLARE valerta tinyint(2);
DECLARE vbussiness int;
DECLARE vexpira int(3);

select valor from ajustes where descr = 'tinicio' into valerta;

set @validate = 1;
if substring(vuser,1,1) = '~' then set @validate = 0; set vuser = substring(vuser,2,char_length(vuser)); end if;

SELECT u.id,u.user,trim(u.nombre), idTipoUsuario,if(s.pfisico='',s.nombre,s.pfisico),s.id,u.mail,u.cedula,u.codigo,
s.idtiponegocio,expiracion
FROM usuarios u join sucursales s on 
s.id = if(u.idsucursal = -1,0,abs(substring_index(u.idsucursal,',',1)))
where u.`user` = vuser and if(u.codigo,u.codigo = vpass,u.clave = md5(aes_encrypt(vpass,'lt6969')))
into vid,vusr,vnom,vtu,venom,veid,vcorreo,vcedula,vcodigo,vbussiness,vexpira;


if vid is null then
    (SELECT 'Usuario o Contraseña Incorrecta' as resul) union (select 1);
else 
    
    if(select count(id) from usuarios where id = vid and ((curtime() between limite1 and limite2) or idtipousuario = 1)) = 0 then
        (SELECT 'Ingreso no Autorizado' as resul) union (select 2);
    elseif (select count(id) from usuarios where id = vid and id > 0 and idtipousuario not in(3)) = 0 then
        (SELECT 'Usuario o Contraseña Incorrecta' as resul) union (select 3);
    else
        select vid,vusr,vnom,vtu,venom,veid, venom,
		if(max(a.fecha) > concat(curdate(),' 00:00:00'),0,1),vcorreo,vcedula,vcodigo,valerta,vbussiness,vexpira 
        from log a where idsucursal = veid
        limit 1;
        
        if @validate then
            insert into log values(null,0,4,concat('CIA: ',venom),vid,now(),veid,vid);
        end if;
    end if;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantaccesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantaccesos`(vaccion tinyint(2),vid int(11),vnombre varchar(45),vcodigo varchar(45),vcodigointerno varchar(45),vdireccion varchar(45))
BEGIN 
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO accesos VALUES(null,vnombre,vcodigo,vcodigointerno,vdireccion);
SELECT @@identity;
  

WHEN 2 THEN  
	UPDATE accesos SET nombre = vnombre,codigo = vcodigo,codigointerno = vcodigointerno,direccion = vdireccion
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM accesos INTO @id;  
	UPDATE accesos set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantajustes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantajustes`(vvalor varchar(100),vcampo varchar(45))
BEGIN 

update ajustes set valor = vvalor where descr = vcampo;
select vvalor;
INSERT INTO log VALUES(null,15,2,concat(vcmpo,' actualizado: ',vvalor),vidusuario,now(),vidsucursal,0);
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantbancos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantbancos`(vaccion tinyint(2),
vid int(11),vnombre_banco varchar(32),vidusuario int,vidsucursal int)
BEGIN

IF (select count(id) from bancos where nombre = vnombre_banco and id > 0 and id <> vid) > 0  THEN 
	SET @msj = concat('Nombre Banco \'',vnombre_banco,'\' Existente');
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = @msj;
END IF;
 
CASE vaccion 
WHEN 1 THEN  
    INSERT INTO bancos VALUES(null,vnombre_banco);
	SELECT @@identity into vid;
	select vid;
	INSERT INTO log VALUES(null,202,1,concat('Banco Nuevo: ',vnombre_banco),vidusuario,now(),vidsucursal,vid);
WHEN 2 THEN  
    UPDATE bancos SET nombre = vnombre_banco
    WHERE id = vid;
    SELECT vid;
    INSERT INTO log VALUES(null,202,2,concat('Banco Actualizado: ',vnombre_banco),vidusuario,now(),vidsucursal,vid);
WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM bancos INTO @id;  
    UPDATE bancos set id = @id where id = vid;
    SELECT @id;
    INSERT INTO log VALUES(null,202,3,concat('Banco Eliminado: ',vnombre_banco),vidusuario,now(),vidsucursal,@id);
END CASE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantbodegas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantbodegas`(vaccion tinyint(2),vidbodega int(5),vbodega varchar(45),vidsucursal int,vidusuario int)
BEGIN 

CASE vaccion 

WHEN 1 THEN  

	INSERT INTO bodegas VALUES(null,vbodega,vidsucursal);

	SELECT @@identity INTO @vid;

	INSERT INTO log values(null,41,1,concat('Bodega Nueva: ',vbodega),vidusuario,now(),vidsucursal,@vid);

	SELECT @vid;

WHEN 2 THEN  

	UPDATE bodegas SET nombre = vbodega,idsucursal = vidsucursal

    WHERE id = vidbodega;

	INSERT INTO log values(null,41,2,concat('Bodega ',vbodega,' Actualizada'),vidusuario,now(),vidsucursal,vid);

	SELECT vid;

WHEN 3 THEN

	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM bodegas INTO @id;  

	UPDATE bodegas set id = @id where id = vidbodega;

	SELECT nombre FROM bodegas WHERE id = vidbodega into vbodega;

	INSERT INTO log values(null,41,3,concat('Bodega ',vbodega,' Eliminada'),vidusuario,now(),vidsucursal,@id);
    SELECT @id;

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantboletas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantboletas`(vaccion tinyint(2),vid int(11)
,vidusuario int(11),vidsucursal int(11),vidtipo int(11),vidinv1 int(11),vidinv2 int(11),vcomentario varchar(64))
BEGIN 
CASE vaccion 
WHEN 1 THEN
	if vidtipo = 3 and vidinv1 = vidinv2 then
		SET @msj = concat('Inventarios Iguales');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;

	INSERT INTO boletas VALUES(null,now(),vidusuario,vidsucursal,vidtipo,vidinv1,vidinv2,vcomentario);
SELECT @@identity;
/*INSERT INTO log values(null,0,1,'',vidusuario,now());*/  

WHEN 2 THEN  
	UPDATE boletas SET idusuario = vidusuario,idsucursal = vidsucursal,idtipo = vidtipo,idinv1 = vidinv1,idinv2 = vidinv2,comentario = vcomentario
    WHERE id = vid;
	SELECT vid;
	/*INSERT INTO log values(null,0,2,'',vidusuario,now());*/

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM boletas INTO @id;  
	UPDATE boletas set id = @id where id = vid;
	SELECT @id;
    alter table boletas AUTO_INCREMENT 1;
	/*INSERT INTO log values(null,0,3,'',vidusuario,now());*/
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantcajainicialusuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantcajainicialusuarios`(vaccion TINYINT(2),
vid INT,vidusuario INT,vmonto DECIMAL(10,2),vidsucursal INT,
vfmonto decimal(10,2), vcajareal int)
BEGIN 
CASE vaccion 

WHEN 1 THEN  
	INSERT INTO cajainicialusuarios VALUES(NULL,vidusuario,vmonto,now(),null,null,vidsucursal,vcajareal);
	SELECT @@identity INTO vid;
	INSERT INTO log values(null,404,1,'Inicio de caja',vidusuario,now(),vidsucursal,vid);
	SELECT vid;
WHEN 2 THEN  
	UPDATE cajainicialusuarios SET idusuario = vidusuario,monto = vmonto,fecha = now(),idaccion = vidaccion
    WHERE id = vid;
	INSERT INTO log values(null,404,2,'Cambio monto de inicio de caja',vidusuario,now(),vidsucursal,vid);
	SELECT vid;
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM cajainicialusuarios INTO @id;  
	UPDATE cajainicialusuarios SET id = @id WHERE id = vid;
	INSERT INTO log values(null,404,3,'Inicio de caja eliminado',vidusuario,now(),vidsucursal,@id);
	SELECT @id;
WHEN 4 THEN
	UPDATE cajainicialusuarios SET fmonto = vfmonto,ffecha  = now() WHERE id = vid;
	INSERT INTO log values(null,404,2,'Finalizacion de caja',vidusuario,now(),vidsucursal,@id);
	SELECT @id;	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantcierrecajas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantcierrecajas`(vaccion tinyint(2),vid int(11),vfecha datetime,vfacturascredito decimal(12,2),vfacturascontado decimal(12,2),vtotalabonos decimal(12,2),vnotascredito decimal(12,2),vnotasdebito decimal(12,2),vtotalefectivo decimal(12,2),vtotaltarjeta decimal(12,2),vtotaldeposito decimal(12,2),vtotalcheque decimal(12,2),vidusuario int(11),vidsucursal int(11))
BEGIN 

CASE vaccion 

WHEN 1 THEN  

	INSERT INTO cierrecajas VALUES(null,now(),vfacturascredito,vfacturascontado,vtotalabonos,vnotascredito,vnotasdebito,vtotalefectivo,vtotaltarjeta,vtotaldeposito,vtotalcheque,vidusuario,vidsucursal);

SELECT @@identity;

  


WHEN 2 THEN  

	UPDATE cierrecajas SET fecha = now(),facturascredito = vfacturascredito,facturascontado = vfacturascontado,totalabonos = vtotalabonos,notascredito = vnotascredito,notasdebito = vnotasdebito,totalefectivo = vtotalefectivo,totaltarjeta = vtotaltarjeta,totaldeposito = vtotaldeposito,totalcheque = vtotalcheque,idusuario = vidusuario,idsucursal = vidsucursal

    WHERE id = vid;

	SELECT vid;

	



WHEN 3 THEN

	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM cierrecajas INTO @id;  

	UPDATE cierrecajas set id = @id where id = vid;

	SELECT @id;

	

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantclientes`(vaccion tinyint(2),vid int(11),
vapellido1 varchar(64),vapellido2 varchar(64),vnombre varchar(80),vcedula varchar(45),
vidtipocliente int(3),videstado int(5) unsigned,vbisproveedor tinyint(2) unsigned,vidnivel int,
vcredito int(9),vplazo int(9),vdproforma int,vbisnacional tinyint(2),vweb varchar(45),
vidusuario int(11),vdescuentom decimal(10,2),vcodigo varchar(45),vidcuenta varchar(100),vidsucursal int,inout _sid int,
vidmoneda int,vidagente int,
vcomision decimal(10,2),vmensaje varchar(255))
BEGIN
 
if vaccion <> 3 then
select CHAR_LENGTH(replace(REPLACE(vcedula,'-',''),' ','')) into @cced;
case vidtipocliente
when 1 then 
	if @cced <> 9 then
		SET @msj = concat('Formato de Cédula no Válido [ X0XXX0XXX ]');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
when 2 then 
	if @cced <> 10 then
		SET @msj = concat('Formato de Cédula no Válido [ X-XXX-XXXXXX ]');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
when 3 then 
	if @cced <> 10 then
		SET @msj = concat('Formato de Cédula no Válido [ XXXXXXXXXX ]');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
ELSE
	if @cced <> 10 then
		SET @msj = concat('Formato de Cédula no Válido [ XXXXXXXXXX ]');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
end case;
end if;

IF (SELECT count(id) FROM clientes WHERE REPLACE(cedula,'-','') = REPLACE(vcedula,'-','') AND id > 0 and id <> vid
	and bisproveedor = vbisproveedor and idsucursal = vidsucursal) > 0 AND vaccion <> 3 THEN 
	SET @msj = concat('Cédula \'',vcedula,'\' Existente');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion WHEN 1 THEN  

    INSERT INTO clientes VALUES(null,vapellido1,vapellido2,vnombre,vcedula,vidtipocliente,videstado,vbisproveedor,vidnivel,
    vcredito,vplazo,vdproforma,vbisnacional,vweb,now(),vidusuario,vdescuentom,vcodigo,vidsucursal,'',
   	vidmoneda,vidagente,vcomision,vmensaje);
    
    SELECT @@identity into vid;

    SELECT vid;

    INSERT INTO log values(null,2,1,trim(concat('Cliente Nuevo: ', vnombre,' ',vapellido1,' ',vapellido2)),vidusuario,now(),vidsucursal,vid);  

WHEN 2 THEN  

    UPDATE clientes SET apellido1 = vapellido1,apellido2 = vapellido2,nombre = vnombre,cedula = vcedula,
    idtipocliente = vidtipocliente,idestado = videstado,bisproveedor = vbisproveedor,credito = vcredito,
    plazo = vplazo,dproforma = vdproforma,bisnacional = vbisnacional,web = vweb,
    descuentom = vdescuentom,codigo = vcodigo, idnivel=vidnivel, 
   	idmoneda = vidmoneda,idagente = vidagente,comision = vcomision,mensaje = vmensaje
    WHERE id = vid;

    if vidcuenta <> '' then
        delete from defectocuentas where idtabla = 2 and idfila = vid limit 50;
        call naruto(vidcuenta,'defectocuentas',vid);
    end if;
	select trim(concat(nombre,' ',apellido1,' ',apellido2,' [', cedula,']')) as nombre FROM clientes where id = vid into @nombre;
    SELECT vid;

    INSERT INTO log values(null,2,2,'',vidusuario,now(),vidsucursal,vid);
    select @@identity into @vlog;
    update log set descripcion = concat('<a href="#modal-actualizacion" tr="',@vlog,'">Cliente Actualizado: ',@nombre,'</a>') where id = @vlog;
	


WHEN 3 THEN

    SELECT IF(MIN(id) = 1 or min(id) is null,-1,min(id)-1) as id FROM clientes INTO @vid;  
	select trim(concat(nombre,' ',apellido1,' ',apellido2,' [', cedula,']')) as nombre FROM clientes where id = vid into @nombre;
    UPDATE clientes set id = @vid where id = vid;
  	update facturas set idcliente = @vid where idcliente = vid;
  	update log set idfila = @vid where idfila = vid and idtabla = 2;
  	update correos set idfila = @vid where idfila = vid and idtabla = 2;
	delete from telefonos where idfila = vid and idtabla = 2;
	delete from ubicaciones where idfila = vid and idtabla = 2;
  
    SELECT @vid;
	
    INSERT INTO log values(null,2,3,concat('Cliente Eliminado: ',@nombre),vidusuario,now(),vidsucursal,@vid);
	alter table clientes auto_increment 1;
END CASE;

set _sid = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantcorreos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantcorreos`(vaccion tinyint(2),
vidcorreo int,vcorreo varchar(255),
vidfila int(11),vidtabla int(11))
BEGIN 

CASE vaccion 
WHEN 1 THEN  
INSERT INTO correos VALUES(null,vidfila,vidtabla,vcorreo);
    SELECT @@identity into vidcorreo;
    SELECT vidcorreo;
WHEN 2 THEN
UPDATE correos set correo = vcorreo where idcorreo = vidcorreo;
when 3 THEN
delete from correos where idcorreo = vidcorreo;
END CASE;

select vidcorreo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantcuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantcuentas`(vaccion tinyint(2),
vid int(11),
vidsubcuenta int(11),vnombre varchar(40),vidusuario int,vidsucursal int)
BEGIN 

IF (select count(id) from cuentas where nombre = vnombre and id > 0 
	and idsubcuenta = vidsubcuenta and id <> vid) > 0 and vaccion <> 3 THEN 
SET @msj = concat('Nombre Cuenta \"',vnombre,'\ Existente');
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = @msj;
END IF; 

CASE vaccion WHEN 1 THEN  

	select count(id)+1 from cuentas where idsubcuenta = vidsubcuenta into @num;
    select ifnull(deep+1,0) from cuentas where id = vidsubcuenta into @deep;
    
    select concat(numero,if(char_length(@num) = 1 and @deep > 2,concat('0',@num),@num)
    ) from cuentas where id = vidsubcuenta into @num;
    
	INSERT INTO cuentas VALUES(null,vidsubcuenta,vnombre,@num,@deep,0,0);
	
	set vid = @@identity;
	SELECT vid,numero,rpad(numero,10,0),deep from cuentas where id = vid;
	
	select ispadre,valor from cuentas where id = vidsubcuenta into @apadre,@avalor;
	if @avalor <> 0 and @apadre = 0 then update cuentas set valor = @avalor where id = vid; end if;
	update cuentas set ispadre = 1 where id = vidsubcuenta;
	INSERT INTO log values(null,36,1,concat('Cuenta: ',vnombre),vidusuario,now());

WHEN 2 THEN  

	UPDATE cuentas SET nombre = vnombre WHERE id = vid;

	SELECT vid;

	INSERT INTO log values(null,36,2,concat('Cuenta: ',vnombre),vidusuario,now());

WHEN 3 THEN
	
	if (select valor from cuentas where id = vid > 0) then
    SET @msj = concat('Cuenta \'',vnombre,'\' Esta Activa');
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = @msj;
	END IF; 

	SELECT ifnull(min(id),-1)-1 FROM cuentas INTO @id;  

	UPDATE cuentas set id = @id where id = vid;

	SELECT @id;

	INSERT INTO log values(null,36,3,concat('Cuenta: ',vnombre),vidusuario,now());

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdefectoimpuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdefectoimpuestos`(vaccion tinyint(2),vid int(11),vidfila int(11),vidtabla int(11),vidimpuesto tinyint(2),vexoneracion decimal(5,2))
BEGIN 
CASE vaccion WHEN 1 THEN  
	INSERT INTO defectoimpuestos VALUES(null,vidfila,vidtabla,vidimpuesto,vexoneracion);
SELECT @@identity;

WHEN 2 THEN
	if((select idtabla from defectoimpuestos where id = vid) = 0) then
		INSERT INTO defectoimpuestos VALUES(null,vidfila,vidtabla,vidimpuesto,vexoneracion);
	else
		UPDATE defectoimpuestos SET idfila = vidfila,idtabla = vidtabla,idimpuesto = vidimpuesto,
        exoneracion = vexoneracion
		WHERE id = vid;
    end if;
	
	SELECT vid;
	
WHEN 3 THEN
	DELETE FROM defectoimpuestos WHERE idfila = vidfila AND idtabla = vidtabla;
	
    SELECT vidfila;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdescuentoproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdescuentoproductos`(vaccion tinyint(2),vid int(11),vidproducto int(11),vdescuento decimal(6,2) unsigned)
BEGIN 
CASE vaccion WHEN 1 THEN  
	INSERT INTO descuentoproductos VALUES(null,vidproducto,vdescuento);
SELECT @@identity;
INSERT INTO log values(null,0,1,'',vidusuario,now());  
WHEN 2 THEN  
	UPDATE descuentoproductos SET idproducto = vidproducto,descuento = vdescuento
WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM descuentoproductos INTO @id;  
	UPDATE descuentoproductos set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdescuentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdescuentos`(vaccion tinyint(2),vid int(4),
vnombre varchar(45),vidcuenta int(11),videstado int(5),vidusuario int,vidsucursal int)
BEGIN 
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO descuentos VALUES(null,vnombre,vidcuenta,videstado,vidsucursal);
	SELECT @@identity into @vid;
	INSERT INTO log values(null,94,1,concat('Ingresa Descuento: ',vnombre),vidusuario,now(),vidsucursal,@vid);
	SELECT @vid;
WHEN 2 THEN  
	UPDATE descuentos SET nombre = vnombre,idcuenta = vidcuenta,idestado = videstado
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM descuentos INTO @id;  
	UPDATE descuentos set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallebancos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallebancos`(vaccion tinyint(2),
vid int(11),vdet_nom varchar(64),
vdet_cta varchar(30),
vdet_moneda int(11),
vidbanco int(11),
vcomision varchar(8),
vctabnk int,
vctacom int)
BEGIN 

if vid = '*' then set vaccion = 1; end if;

CASE vaccion 
WHEN 1 THEN  
    INSERT INTO detallebancos VALUES(null,vdet_nom,vdet_cta,vdet_moneda,vidbanco,vcomision);
    SELECT @@identity;
  

WHEN 2 THEN  
    UPDATE detallebancos SET nombre = vdet_nom,cuenta = vdet_cta,idmoneda = vdet_moneda,
    idbanco = vidbanco,comision = vcomision
    WHERE id = vid;
    SELECT vid;
    

WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detallebancos INTO @id;  
    UPDATE detallebancos set id = @id where id = vid;
    SELECT @id;
    
END CASE; 

if vctabnk <> 0 then
    select id from defectocuentas i where i.idtabla = 203 and i.idfila = vid 
    and i.idtipo = 13 into @vid;

    if @vid is null then
        insert into defectocuentas values(null,vctabnk,203,vid,100,13,-1);
    else
        update defectocuentas set idcuenta = vctabnk where idfila = vid and idtabla = 203;
    end if;
end if;

if vctacom <> 0 then
    select id from defectocuentas i where i.idtabla = 203 and i.idfila = vid 
    and i.idtipo = 13 into @vid;

    if @vid is null then
        insert into defectocuentas values(null,vctacom,203,vid,100,11,-1);
    else
        update defectocuentas set idcuenta = vctacom where idfila = vid and idtabla = 203;
    end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetalleboletas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetalleboletas`(vaccion tinyint(2),
vid int(11),vidboleta int,vidproducto int(11),vcantidad decimal(23,5),vcantidada decimal(23,5))
BEGIN 
CASE vaccion 
WHEN 1 THEN 
	select idinv1,idinv2,idtipo from boletas where id = vidboleta into @inv1,@inv2,@tipo;
	
	case @tipo when 1 then  /*ENTRADA DE INVENTARIO*/
		select if(count(cantidad),cantidad,-1) 
		from detalleinventarios where idproducto = vidproducto and idinventario = @inv1 into @lcant;
		
		if @lcant = -1 then
			insert into detalleinventarios values(null,@inv1,vidproducto,vcantidad);
		else
			update detalleinventarios set cantidad = cantidad + vcantidad where idproducto = vidproducto
			and idinventario = @inv1;
		end if;
	when 2 then /*SALIDA DE INVENTARIO*/
		select cantidad 
		from detalleinventarios where idproducto = vidproducto and idinventario = @inv1 into @lcant;
	
		update detalleinventarios set cantidad = cantidad - vcantidad where idproducto = vidproducto
			and idinventario = @inv1;
	when 3 THEN /*MOVIMIENTO DE INVENTARIOS*/
		update detalleinventarios set cantidad = cantidad - vcantidad where idproducto = vidproducto
			and idinventario = @inv1;
		
		select if(count(cantidad),cantidad,-1) 
		from detalleinventarios where idproducto = vidproducto and idinventario = @inv2 into @lcant;
		
		if @lcant = -1 then
			insert into detalleinventarios values(null,@inv2,vidproducto,vcantidad);
		else
			update detalleinventarios set cantidad = cantidad + vcantidad where idproducto = vidproducto
			and idinventario = @inv2;
		end if;
	end case;

	INSERT INTO detalleboletas VALUES(null,vidboleta,vidproducto,vcantidad,@lcant);
SELECT @@identity;
/*INSERT INTO log values(null,0,1,'',vidusuario,now());*/  

WHEN 2 THEN  
	UPDATE detalleboletas SET idproducto = vidproducto,cantidad = vcantidad,cantidada = vcantidada
    WHERE id = vid;
	SELECT vid;
	/*INSERT INTO log values(null,0,2,'',vidusuario,now());*/

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detalleboletas INTO @id;  
	UPDATE detalleboletas set id = @id where id = vid;
	SELECT @id;
    alter table detalleboletas AUTO_INCREMENT 1;
	/*INSERT INTO log values(null,0,3,'',vidusuario,now());*/
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallecierres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallecierres`(vaccion tinyint(2),vid int(11),vidcierre int(11),vidfactura int(3),vtipofactura tinyint(3))
BEGIN 

CASE vaccion 

WHEN 1 THEN  

	INSERT INTO detallecierres VALUES(null,vidcierre,vidfactura,vtipofactura);

SELECT @@identity;

  



WHEN 2 THEN  

	UPDATE detallecierres SET idcierre = vidcierre,idfactura = vidfactura,tipofactura = vtipofactura

    WHERE id = vid;

	SELECT vid;

	



WHEN 3 THEN

	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detallecierres INTO @id;  

	UPDATE detallecierres set id = @id where id = vid;

	SELECT @id;

	

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetalledescuentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetalledescuentos`(vaccion tinyint(2),vid int(11),vidciclo int(11),viddescuento int(4) unsigned,vf1 datetime,vf2 datetime,vidfila int(11),vidtabla int(11),vvalor decimal(5,2),vextra varchar(45))
BEGIN 

IF (vf1 = '1000-01-01 00:00:00') then
	set vf1 = null;
end if;

IF (vf2 = '1000-01-01 00:00:00') then
	set vf2 = null;
end if;

CASE vaccion 
WHEN 1 THEN  
	INSERT INTO detalledescuentos VALUES(null,vidciclo,viddescuento,vf1,vf2,vidfila,vidtabla,vvalor,vextra);
SELECT @@identity;
  

WHEN 2 THEN  
	UPDATE detalledescuentos SET idciclo = vidciclo,iddescuento = viddescuento,f1 = vf1,f2 = vf2,idfila = vidfila,idtabla = vidtabla,valor = vvalor,extra = vextra
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detalledescuentos INTO @id;  
	UPDATE detalledescuentos set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetalledevoluciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetalledevoluciones`(vaccion tinyint(2),
vid int(11),viddevolucion int(11),vidproducto int(11),vcantidad decimal(23,5),vidtipodevolucion int(11),vidinventario int,
vidsucursal int)
BEGIN
CASE vaccion
WHEN 1 THEN
    if vidtipodevolucion <> 2 then
		select count(cantidad) from detalleinventarios where idproducto = vidproducto and idinventario = vidinventario into @cantidad;
		if @cantidad > 0 then
			update detalleinventarios set cantidad = cantidad + vcantidad
			where idproducto = vidproducto and idinventario = vidinventario limit 1;
		else
			insert into detalleinventarios values(null,vidinventario,vidproducto,vcantidad);
		end if;
	end if;
	INSERT INTO detalledevoluciones VALUES(null,viddevolucion,vidproducto,vcantidad,vidtipodevolucion);
	SELECT @@identity into vid;
    if vidtipodevolucion <> 2 then
		select d.precio * vcantidad - d.descuento + d.imv as precio,b.id as idfactura,a.idusuario
		from devoluciones a
		join facturas b on a.idfactura = b.id
		join detalledevoluciones c on c.iddevolucion = a.id and c.iddevolucion = vid and c.idproducto = vidproducto
		join detallefacturas d on d.idfactura = b.id and d.idproducto = c.idproducto
		into @valor,@idfactura,@idusuario;
		select vid;
		call sp_mantestadoscuentas(1,0,5,1,@idfactura,@idusuario,@valor,0,0,0,0,'Nota de credito por devolucion de producto',1,7,vidsucursal);
	else
		select vid;
	end if;
WHEN 2 THEN
	UPDATE detalledevoluciones SET iddevolucion = viddevolucion,idproducto = vidproducto,cantidad = vcantidad,idtipodevolucion = vidtipodevolucion
    WHERE id = vid;
	SELECT vid;

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detalledevoluciones INTO @id;
	UPDATE detalledevoluciones SET id = @id WHERE id = vid;
	SELECT @id;

END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallefacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallefacturas`(vaccion tinyint(2),
vid int(11),vidfactura int(11),videntrada varchar(13)
,vcantidad varchar(20),
vprecio decimal(23,5),vdesc decimal(23,5),vidinventario int,vidodt int,vimv decimal(23,5),vcomodin varchar(512),
vidunidad int,vidimpuestos varchar(255),viddescuentos varchar(255),vcomision decimal(5,2))
BEGIN 
    
declare vidproducto int default null;
declare vidservicio int default null;
declare vidpaquete int default null;
declare vganancia decimal(10,2) default 0;
declare vgetcosto decimal(23,5) default 0;

if locate('x',vcantidad) then
	set vcantidad = getMultipleUnidad(vcantidad);
end if;

case substring(videntrada,1,1) 
when '-' then
    set vidservicio = substring(videntrada,2);
when '+' then
    set vidpaquete = substring(videntrada,2);
else
    set vidproducto = videntrada;
    
end case;

if substring(vcomodin,6,1) = ']' then
 set vcomodin = trim(substring(vcomodin,7));
end if;

CASE vaccion 
WHEN 1 THEN 
	
	select costo from productos where id = vidproducto into vganancia;
	select if(vid = -1,6,if(idtipoventa in(1,7,8),1,idtipoventa)) from facturas where id = vidfactura into @tipo; 

	if @tipo <> 6 then
    	INSERT INTO detallefacturas VALUES(null,vidfactura,vidproducto,vidservicio,
    	vidpaquete,vcantidad,vprecio,vdesc,vganancia,vimv,vcomodin,vidunidad,vidimpuestos,viddescuentos,vidinventario,
    	vcomision);
    else
    	INSERT INTO tmpdetallefacturas VALUES(null,vidfactura,vidproducto,vidservicio,
    	vidpaquete,vcantidad,vprecio,vdesc,vganancia,vimv,vcomodin,vidunidad,vidimpuestos,viddescuentos,vidinventario);
    end if;
    
    select vidfactura;

    case @tipo when 1 then
		if vidproducto is not null then
			if @isheredado then
				set vcantidad = convercion(vidunidad,vcantidad) * @cantequiv;
				update detalleinventarios set cantidad = cantidad - vcantidad
				where idproducto = @isheredado and idinventario = vidinventario
				and substring(idproducto,1,1) not in('+','-');
			else
				set @conv = convercion(vidunidad,vcantidad);
	           	UPDATE detalleinventarios SET cantidad = cantidad - @conv
	           	WHERE idproducto = vidproducto and idinventario = vidinventario and id > 0
	           	and substring(idproducto,1,1) not in('+','-');
           end if;           
        end if;
        
    when 2 then
    
        if vidproducto is not null then
            set @conv = convercion(vidunidad,vcantidad);
            UPDATE detalleinventarios SET cantidad = cantidad + @conv
            WHERE idproducto = vidproducto and idinventario = vidinventario and id > 0;
           
           if vidimpuestos then 
          	 update productos set exoneracion = substring_index(substring_index(vidimpuestos,',',2),',',-1) 
          		where id = vidproducto;
           else	
           	 update productos set exoneracion = 0 where id = vidproducto;
           end if;
        elseif vidservicio is not null then
            if vidimpuestos then 
          	 update servicios set exento = substring_index(substring_index(vidimpuestos,',',2),',',-1) 
          		where id = vidservicio; 
          	else
          		update servicios set exento = 0	where id = vidservicio; 
           end if;
        end if;
        
        
	when 5 then
		if vidproducto is not null then
			set @conv = convercion(vidunidad,vcantidad);
			UPDATE detalleinventarios SET cantidad = cantidad - @conv 
			WHERE idproducto = vidproducto and idinventario = vidinventario and id > 0;
			select count(id) from detalleinventarios where idinventario = 37 and idproducto = vidproducto into @countped;
			if @countped = 0 then
				insert into detalleinventarios values(null,37,vidproducto,vcantidad);
			else
				update detalleinventarios set cantidad = cantidad + vcantidad where idinventario = 37 and idproducto = vidproducto and id > 0;
			end if;
        end if;
    else
    	select 1 into @tipo;
    end case;
    
WHEN 2 THEN  
    UPDATE detallefacturas SET idfactura = vidfactura,idproducto = vidproducto,cantidad = vcantidad,precio = vprecio,descuento = vdesc
WHERE id = vid;
    SELECT vid;
WHEN 3 THEN
    SELECT @id;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallelineas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallelineas`(vaccion tinyint(2),vid int(11),vidtarea int(11),vidlinea int(11),
vorden int(3),vidusuario int,vidsucursal int)
BEGIN 

SELECT nombre from tareaproducciones where id = vidtarea into @tarea;

CASE vaccion

WHEN 1 THEN  
    INSERT INTO detallelineas VALUES(null,vidtarea,vidlinea,vorden);
    INSERT INTO log values(null,166,1,concat('Tarea ',@tarea,' asociada a linea de producción ',vidlinea),vidusuario,now(),vidsucursal,@vid);
    SELECT @@identity into @vid;
WHEN 2 THEN  
    UPDATE detallelineas SET idtareaproduccion = vidtarea,idlineaproduccion = vidlinea,orden = vorden WHERE id = vid;
    SELECT vid;
    INSERT INTO log values(null,166,2,concat('Tarea ',@tarea,' desligada de linea producción ',vidlinea),vidusuario,now(),vidsucursal,vid);
WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detallelineas INTO @id;
    UPDATE detallelineas set id = @id where id = vid;
    INSERT INTO log values(null,166,3,concat('Tarea ',@tarea,' eliminada de linea de producción ',vidlinea),vidusuario,now(),vidsucursal,@id);
    SELECT @id;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallenivelesclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallenivelesclientes`(vaccion tinyint(1),
viddetalle int,vidnivel int,
vclie_descuento_max decimal(5,2),vclie_descuento decimal(8,2),
vclie_plazo int(4),vclie_credito decimal(8,2),
vprod_descuento_max decimal(5,2),vprod_descuento decimal(8,2),
vdcontado int,vhcontado int,vdcredito int,vhcredito int,vprod_cuenta int)
BEGIN

if viddetalle = 0 then
    insert into detallenivelesclientes values(null,vidnivel,vclie_descuento_max,vclie_descuento,
    vclie_plazo,vclie_credito,vprod_descuento_max,vprod_descuento);
    select @@identity into viddetalle;
else
    update detallenivelesclientes set clie_descuento_max = vclie_descuento_max,
    clie_descuento = vclie_descuento,clie_plazo = vclie_plazo,
    clie_credito=vclie_credito,prod_descuento_max=vprod_descuento_max,
    prod_descuento=vprod_descuento
    where id = viddetalle;
end if;

select viddetalle;
 
if(vdcontado <> 0) then
 select id from defectocuentas i where i.idtabla = 69 and i.idfila = vidnivel 
    and i.bisdebe and i.idtipo = 1 into @vid;
    
    if @vid is null then
        insert into defectocuentas values(null,vdcontado,69,vidnivel,100,1,1);
    else
        update defectocuentas set idcuenta = vdcontado where idfila = vidnivel and idtabla = 69;
    end if;

end if;

if(vhcontado <> 0) then
 select id from defectocuentas i where i.idtabla = 69 and i.idfila = vidnivel 
    and !i.bisdebe and i.idtipo = 1 into @vid;

    if @vid is null then
        insert into defectocuentas values(null,vhcontado,69,vidnivel,100,1,0);
    else
        update defectocuentas set idcuenta = vhcontado where idfila = vidnivel and idtabla = 69;
    end if;

end if;

if(vdcredito <> 0) then
 select id from defectocuentas i where i.idtabla = 69 and i.idfila = vidnivel 
    and i.bisdebe and i.idtipo = 2 into @vid;

    if @vid is null then
        insert into defectocuentas values(null,vdcredito,69,vidnivel,100,2,1);
    else
        update defectocuentas set idcuenta = vdcredito where idfila = vidnivel and idtabla = 69;
    end if;

end if;

if(vhcredito <> 0) then
 select id from defectocuentas i where i.idtabla = 69 and i.idfila = vidnivel 
    and !i.bisdebe and i.idtipo = 2 into @vid;

    if @vid is null then
        insert into defectocuentas values(null,69,viddetalle,vidnivel,100,2,0);
    else
        update defectocuentas set idcuenta = vhcredito where idfila = vidnivel and idtabla = 69;
    end if;

end if;

if(vprod_cuenta <> 0) then
 select id from defectocuentas i where i.idtabla = 69 and i.idfila = vidnivel 
    and i.idtipo = 10 into @vid;

    if @vid is null then
        insert into defectocuentas values(null,vprod_cuenta,69,vidnivel,100,10,0);
    else
        update defectocuentas set idcuenta = vprod_cuenta where idfila = vidnivel and idtabla = 69;
    end if;

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallepagosvarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallepagosvarios`(vaccion tinyint(2),vid int(11),vidpagovario int(11),vidcuenta int(11))
BEGIN 
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO detallepagosvarios VALUES(null,vidpagovario,vidcuenta);
SELECT @@identity;
  

WHEN 2 THEN  
	UPDATE detallepagosvarios SET idpagovario = vidpagovario,idcuenta = vidcuenta
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detallepagosvarios INTO @id;  
	UPDATE detallepagosvarios set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallepaquetes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallepaquetes`(vaccion tinyint(2),vidpaquete int(11),vidproducto int(11),vidservicio int(11),vcantidad decimal(20,6),
vidunidad tinyint(3),vidusuario int(11),vidsucursal int(3))
BEGIN 
CASE vaccion WHEN 1 THEN  
    INSERT INTO detallepaquetes VALUES(vidpaquete,vidproducto,vidservicio,vcantidad,vidunidad);
SELECT @@identity INTO @vid;
SELECT @vid;
WHEN 2 THEN  
    UPDATE detallepaquetes SET idpaquete = vidpaquete,idproducto = vidproducto,idservicio = vidservicio,cantidad = vcantidad,idunidad = vidunidad
WHERE id = vid;
    SELECT vid;
WHEN 3 THEN 
    UPDATE detallepaquetes SET idpaquete = concat('-',vidpaquete) WHERE idpaquete = vidpaquete limit 1000;
    SELECT vidpaquete;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetalleprocesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetalleprocesos`(vaccion tinyint(2),vid int(11),vidproceso int(11),vidproducto int(11),
vcantidad decimal(10,2),vidunidad int,vidusuario int,vidsucursal int)
BEGIN 

SELECT nombre FROM productos WHERE id = vidproducto into @producto;
SELECT nombre FROM productos WHERE id = vidproceso into @proceso;

CASE vaccion 
WHEN 1 THEN  
	INSERT INTO detalleprocesos VALUES(null,vidproceso,vidproducto,vcantidad,vidunidad);
	SELECT @@identity INTO @vid;
	INSERT INTO log values(null,120,1,concat('Producto ',@producto,'asociado a proceso ',@proceso),vidusuario,now(),vidsucursal,@vid);
	select @vid;
WHEN 2 THEN  
	UPDATE detalleprocesos SET idproducto = vidproducto,cantidad = vcantidad,idunidad = vidunidad
    WHERE id = vid;
	INSERT INTO log values(null,120,2,concat('Producto ',@producto,'desligado de proceso ',@proceso),vidusuario,now(),vidsucursal);
	SELECT vid;
WHEN 3 THEN
    UPDATE detalleprocesos SET id = concat('-',id) WHERE idproceso = vidproceso AND id > 0;
	INSERT INTO log values(null,120,3,concat('Producto ',@producto,'eliminado de proceso ',@proceso),vidusuario,now(),vidsucursal,vidproceso);
    SELECT vidproceso;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetalleproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetalleproducciones`(vaccion tinyint(2),vid int,vidaccion tinyint(3),vidtarea int,vidproduccion int,vfecha datetime,vidusuario int,vidusucrsal int)
BEGIN
CASE vaccion
WHEN 1 THEN
	INSERT INTO detalleproducciones VALUES(null,vidaccion,vidtarea,vidproduccion,now(),vidusuario,vidusucrsal);
	SELECT @@identity;
	
WHEN 2 THEN  
	UPDATE detalleproducciones SET idaccion = concat('-',idaccion)
    WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detalleproducciones INTO @id;
	UPDATE detalleproducciones set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallerecetas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallerecetas`(vaccion tinyint(2),vid int(11),vidreceta int(11),vidproducto int(11),
vcantidad decimal(10,2),vidusuario int,vidsucursal int)
BEGIN 

SELECT nombre FROM productos WHERE id = vidproducto into @producto;
SELECT nombre FROM productos WHERE id = vidreceta into @receta;

CASE vaccion 
WHEN 1 THEN  
	INSERT INTO detallerecetas VALUES(null,vidreceta,vidproducto,vcantidad);
	SELECT @@identity INTO @vid;
	INSERT INTO log values(null,120,1,concat('Producto ',@producto,'asociado a receta ',@receta),vidusuario,now(),vidsucursal,@vid);
	select @vid;
WHEN 2 THEN  
	UPDATE detallerecetas SET idproducto = vidproducto,cantidad = vcantidad
    WHERE id = vid;
	INSERT INTO log values(null,120,2,concat('Producto ',@producto,'desligado de receta ',@receta),vidusuario,now(),vidsucursal);
	SELECT vid;
WHEN 3 THEN
    UPDATE detallerecetas SET id = concat('-',id) WHERE idreceta = vidreceta AND id > 0;
	INSERT INTO log values(null,120,3,concat('Producto ',@producto,'eliminado de receta ',@receta),vidusuario,now(),vidsucursal,vidreceta);
    SELECT vidreceta;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallerutas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallerutas`(vaccion tinyint(2),vid int(11),
vidruta int(11),vidtabla_enc int(11),vidfila_enc int(11),vidusuario int(11),
vidvehiculo int(11),vidinventario int(11))
BEGIN 
CASE vaccion 
WHEN 1 THEN  
    INSERT INTO detallerutas VALUES(null,vidruta,vidtabla_enc,vidfila_enc,vidusuario,'',0,0,1,vidvehiculo,vidinventario,0,0,0);
SELECT @@identity;
  

WHEN 2 THEN  
    UPDATE detallerutas SET idruta = vidruta,idtabla_enc = vidtabla_enc,idfila_enc = vidfila_enc,
    idusuario = vidusuario,idvehiculo = vidvehiculo,idinventario = vidinventario
    WHERE id = vid;
    SELECT vid;
    

WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detallerutas INTO @id;  
    UPDATE detallerutas set id = @id where id = vid;
    SELECT @id;
    
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetalletransacciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetalletransacciones`(vaccion tinyint(2),vid int(11),
vidcuenta int(11),vidtransaccion int(11),vdebe decimal(10,2),vhaber decimal(10,2),vidodt int,vcomentario varchar(100))
BEGIN 
select valor from transacciones t join monedas m on m.id = t.idmoneda and t.id = vidtransaccion into @moneda;
set vdebe = @moneda*vdebe;
set vhaber = @moneda*vhaber;

CASE vaccion WHEN 1 THEN 

    INSERT INTO detalletransacciones VALUES(null,vidcuenta,vidtransaccion,vdebe,vhaber,vidodt,vcomentario);
    
    select substring(numero,1,1) from cuentas where id = vidcuenta into @num;
    select if( @num in(1,4),vdebe - vhaber,vhaber - vdebe) from dual into @valor;
    update cuentas set valor = valor + @valor where id = vidcuenta;
    select idsubcuenta from cuentas where id = vidcuenta into @sub;
    
    while @sub do
        select substring(numero,1,1) from cuentas where id = @sub into @num;
    
        update cuentas set valor = valor + @valor where id = @sub;
        select idsubcuenta from cuentas where id = @sub into @sub;
    end while;
    

WHEN 2 THEN  
    UPDATE detalletransacciones SET idcuenta = vidcuenta,idtransaccion = vidtransaccion,debe = vdebe,haber = vhaber
WHERE id = vid;
    SELECT vid;
    INSERT INTO log values(null,0,2,'',vidusuario,now());
WHEN 3 THEN
    SELECT ifnull(min(id),-1)-1 FROM detalletransacciones INTO @id;  
    UPDATE detalletransacciones set id = @id where id = vid;
    SELECT @id;
    INSERT INTO log values(null,0,3,'',vidusuario,now());
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdetallewsdls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdetallewsdls`(vaccion tinyint(2),viddetwsdl int(11),vdetalle varchar(64),vvalordetwsdl varchar(64),vidwsdl int(11))
BEGIN 
CASE vaccion WHEN 1 THEN  
	INSERT INTO detallewsdls VALUES(viddetwsdl,vdetalle,vvalordetwsdl,vidwsdl);
SELECT @@identity;
INSERT INTO log values(null,0,1,'',vidusuario,now());  
WHEN 2 THEN  
	UPDATE detallewsdls SET iddetwsdl = viddetwsdl,detalle = vdetalle,valordetwsdl = vvalordetwsdl,idwsdl = vidwsdl
WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM detallewsdls INTO @id;  
	UPDATE detallewsdls set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdevoluciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdevoluciones`(vaccion TINYINT(2),vid INT,vidfactura INT,vfecha DATETIME,vidusuario INT,
vcomentario VARCHAR(150),vidmoneda INT,vidsucursal INT)
BEGIN 
CASE vaccion 
WHEN 1 THEN 
	select count(a.id)+1 as cantidad 
	from devoluciones a join facturas b on a.idfactura = b.id group by b.idsucursal into @consecutivo; 
	insert into devoluciones values(null,vidfactura,now(),vidusuario,vcomentario,vidmoneda,vidsucursal,@consecutivo);
SELECT @@identity;
WHEN 2 THEN  
	UPDATE devoluciones SET idfactura = vidfactura,fecha = now(),idusuario = vidusuario,comentario = vcomentario,idmoneda = vidmoneda
    WHERE id = vid;
	SELECT vid;
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM devoluciones INTO @id;  
	UPDATE devoluciones set id = @id where id = vid;
	SELECT @id;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantdinformativas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantdinformativas`(vsucursal int,vidtipo1 int,
vidcliente int,vnum1 decimal(10,2),vnum2 decimal(10,2))
BEGIN 
	select a.valor,b.valor from ajustes a join ajustes b on b.descr = 'fecha_final_fiscal' 
	where a.descr = 'fecha_inicio_fiscal' into @pdesde,@phasta; 
	
	case vidtipo1 
	when 1 then 
		select ifnull(trim(concat(b.apellido1,' ',b.apellido2,' ',b.nombre,', ',b.cedula)),b.id) as cliente,c.nombre as tipoventa,
		concat(e.simbolo,format(sum(((if(max(l.idtipo) = 5,0,a.subtotal+a.imv-a.descuento)))),2)) as total,
		concat(e.simbolo,format(sum(a.imv),2)) as timv,
		group_concat(distinct ifnull(d.telefono,'')) as telefonos,
		concat('D-151 Entre las Fechas ',@pdesde,' Hasta ',@phasta,
		if(vidcliente,concat(', ',b.apellido1,' ',b.apellido2,' ',b.nombre,', ',b.cedula),'')) as titulo
		from facturas a
		join clientes b on a.idcliente = b.id and if(vidcliente <> 0,b.id = vidcliente,1) and b.id > 0
		left join tipoventas c on c.id = a.idtipoventa
		left join telefonos d on d.idtabla = 2 and d.idfila = b.id
		left join monedas e on e.id = a.idmoneda
		left join estadoscuentas l on l.idfactura = a.id
		where date_format(a.fecha,'%Y-%m-%d') BETWEEN @pdesde and @phasta and a.idtipoventa in(1,2)
		and a.imv > 0
		group by b.id,a.idtipoventa
		having if(vnum1 = 0,1,total BETWEEN vnum1 and vnum2)
		order by trim(concat(b.apellido1,' ',b.apellido2,' ',b.nombre));
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantestadoscuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantestadoscuentas`(vaccion tinyint(2),vid int(11),vidtipo int(11),
videstado int(11),vidfactura int(11),vidusuario int(11),vvalor decimal(23,5),vdebe decimal(23,5),vhaber decimal(23,5),
vconsecutivo int(11), vidtipopago int(11), vcomentario varchar(150),vidsucursal int,vreferencia varchar(64),
vidmoneda int,vdivisa decimal(23,5),vfechabol varchar(12))
BEGIN 
	set vfechabol = if(CHAR_LENGTH(vfechabol) <> 10 or vfechabol = '1990-01-01',null,vfechabol);
	CASE vaccion 
WHEN 1 THEN
 
  select max(id) from estadoscuentas where idfactura = vidfactura into @lastid;
  select max(debe),max(haber) from estadoscuentas where id = @lastid into @debe,@haber;

    if @debe is null and @haber is null then
    
    select subtotal+imv-descuento+ajuste+flete+exento from facturas where id = vidfactura into @fcontado;
        set @debe = @fcontado;
        set @haber = @fcontado; 
    end if;
   
   select b.bisproveedor from facturas a join clientes b on a.idcliente = b.id where a.id = vidfactura
  	into @proveedor;
    
	case vidtipo
	when 3 then 
		if @proveedor then
			set vdebe = @debe+vvalor; set vhaber = @haber;
		else 
			set vhaber = @haber+vvalor; set vdebe = @debe;
		end if;	
	when 5 then
		if !@proveedor then
			if (select max(debe) from estadoscuentas where id = @lastid) is null then
				set vhaber = 0;
				set vdebe = @fcontado-vvalor;
			else 
				set vdebe = @debe-vvalor;
			end if;
		else
			set vhaber = @haber-vvalor;
		end if;
	when 6 then 
		if !@proveedor then 
			if (select max(debe) from estadoscuentas where id = @lastid) is null then
				set vdebe = 0;
				set vhaber = @fcontado-vvalor;
			else
				set vdebe = @debe+vvalor;
			end if;
		else 
			set vhaber = @haber+vvalor; 
		end if;
	when 7 then 
		if @proveedor then
			set vdebe = @debe+vvalor; set vhaber = @haber;
		else 
			set vhaber = @haber+vvalor; set vdebe = @debe;
		end if;
	else
		set vdebe = @debe+vdebe;
		set vhaber = @haber+vhaber;
	end case;
	
if !vconsecutivo then

	set @mysql = concat('SELECT ec',if(vidtipo = 7,3,vidtipo),
	'+1 FROM consecutivos WHERE idsucursal = ',vidsucursal,' INTO @cons1;');
	prepare stmt_mf from @mysql;
	execute stmt_mf;

	set @mysql2 = concat('update consecutivos set ec',if(vidtipo = 7,3,vidtipo),
	' = @cons1 where idsucursal = ',vidsucursal,' limit 1');
	prepare stmt_mf2 from @mysql2;
	execute stmt_mf2;
ELSE
	set @cons1 = vconsecutivo;
end if;

	INSERT INTO estadoscuentas VALUES(null,vidtipo,videstado,vidfactura,vidusuario,now(),vvalor,vdebe,vhaber,
	@cons1,vidtipopago,0,vcomentario,1,7,vidmoneda,vdivisa,vreferencia,vfechabol);
	SELECT @@identity into vid;
	select vid,@cons1;
	select abs(debe-haber) from estadoscuentas where id = vid into @saldo;
	if @saldo > 0 and @saldo < 1 then
		update estadoscuentas set valor = valor+@saldo,haber=haber+@saldo where id = vid;
	end if;
WHEN 2 THEN  
	UPDATE estadoscuentas SET valor = vvalor,debe = vdebe,haber = vhaber, idtipopago = vidtipopago
    WHERE id = vid;
	SELECT vid;
  

WHEN 3 THEN
  SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM estadoscuentas INTO @id;  
  UPDATE estadoscuentas set id = @id where id = vid;
  SELECT @id;
  
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantfacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantfacturas`(vaccion tinyint(2),vid int(11),
vidtipoventa tinyint(3),vidtipo tinyint(3),vidtipopago int,vidcliente int(11),
videstado tinyint(3),visregistrada tinyint(3),vimv decimal(13,5),vsubtotal decimal(23,5) unsigned,
vexento decimal(23,5),vdescuento decimal(23,5),vflete decimal(10,2),vajuste decimal(10,2),
vplazo varchar(45),vcomentario varchar(512),vreferencia varchar(55),vidmoneda tinyint(2),
vidusuario int(11),vidsucursal int(3),vcomodin varchar(64),vidodt int, vextra varchar(255),
vextrapagos varchar(64),vfecha varchar(20),vdivisa decimal(10,2),videxoneracion varchar(512),
vidagente int)
BEGIN
  DECLARE vsub DECIMAL(23,5) DEFAULT 0;
set vsubtotal = vsubtotal-vexento; 
CASE vaccion 
WHEN 1 THEN

set @mysql = concat('SELECT consecutivo',if(vidtipoventa-1 = 0,'',vidtipoventa-1),
'+1 FROM consecutivos WHERE idsucursal = ',vidsucursal,' INTO @cons;');
prepare stmt_mf from @mysql;
execute stmt_mf;

set @mysql2 = concat('update consecutivos set consecutivo',if(vidtipoventa-1 = 0,'',vidtipoventa-1),
' = @cons where idsucursal = ',vidsucursal,' limit 1');
prepare stmt_mf2 from @mysql2;
execute stmt_mf2;

if vfecha = '' then
	set vfecha = now();
end if;

	if vidcliente > 0 then
		select comision from clientes where id = vidcliente into @comision;
	else
		set @comision = 0;
	end if;

if vidtipoventa = 6 then
	
	INSERT INTO tmpfacturas VALUES(@cons,vidtipoventa,vidtipo,vidtipopago,now(),vidcliente,
    videstado,visregistrada,vimv,vsubtotal,vexento,vdescuento,vflete,vajuste,vplazo,vcomentario,
    vreferencia,vidmoneda,vidusuario,vcomodin,vidsucursal,@cons,vextrapagos,vdivisa,1,7,videxoneracion,0);
	set vid = @cons; 
	select vid;
	select nombre from tipoventas where id = vidtipo into @msj;
    INSERT INTO log values(null,261,1,concat(@msj,': ',@cons),vidusuario,now(),vidsucursal,vid);
else

INSERT INTO facturas VALUES(null,vidtipoventa,vidtipo,vidtipopago,vfecha,vidcliente,
    videstado,visregistrada,vimv,vsubtotal,vexento,vdescuento,vflete,vajuste,vplazo,vcomentario,
    vreferencia,vidmoneda,vidusuario,vcomodin,vidsucursal,@cons,vextrapagos,vdivisa,1,7,videxoneracion,0,
   	vidagente,@comision);

   select @@identity into vid; 
select vid;
set vsub = vsubtotal - vdescuento + vimv + vexento;

	select nombre from tipoventas where id = vidtipo into @msj;
    INSERT INTO log values(null,64,1,concat(@msj,': ',@cons),vidusuario,now(),vidsucursal,vid);
    
    IF vidtipoventa in(1,2,7) and vidtipo in(2,3,4,5,6) then
    select nombre from tipofacturas where id = vidtipo into @tfact;
    
   insert into estadoscuentas 
        values(null,1,1,vid,vidusuario,now(),vsub/vdivisa,if(vidtipoventa = 2,0,vsub/vdivisa),
        if(vidtipoventa = 2,vsub/vdivisa,0),null,null,0,concat('Factura ',@tfact,': ',@cons),1,7,vidmoneda,
       	vdivisa,'',null);
    END IF;
end if;

WHEN 2 THEN  
    UPDATE facturas SET idtipo = vidtipo,idtipopago = vidtipopago,
    idcliente = vidcliente,idestado = videstado,
    isregistrada = visregistrada,imv = vimv,subtotal = vsubtotal,descuento = vdescuento,
    flete = vflete,ajuste = vajuste,plazo = vplazo,comentario = vcomentario,
    referencia = vreferencia,idmoneda = vidmoneda,idusuario = vidusuario,
    extra = vextrapagos
WHERE id = vid;
    INSERT INTO log values(null,64,2,concat('Actualización de Factura: ',vid),vidusuario,now(),vidsucursal);
    SELECT vid;
WHEN 3 THEN
    UPDATE facturas set idestado = 3 where id = vid;
    INSERT INTO log values(null,64,3,concat('Factura Anulada: ',vid),vidusuario,now(),vidsucursal);
    SELECT vid;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantfamilias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantfamilias`(vaccion tinyint(2),vid int(11),
vnombre varchar(45),vidsucursal int)
BEGIN

IF (SELECT count(id) FROM familias WHERE nombre = trim(vnombre) AND id > 0 and id <> vid and idsucursal = vidsucursal) > 0 
	AND vaccion <> 3 THEN 
	 SET @msj = concat('Nombre de Familia \'',trim(vnombre),'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion WHEN 1 THEN  
	INSERT INTO familias VALUES(null,trim(vnombre),vidsucursal);
	SELECT @@identity,vnombre;
	
WHEN 2 THEN  
	UPDATE familias SET nombre = trim(vnombre)
WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM familias INTO @id;  
	UPDATE familias set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantfechafiscal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantfechafiscal`(vfechainicio date,vfechafinal date)
BEGIN 
	update ajustes set valor = vfechainicio where descr = 'fecha_inicio_fiscal' limit 1;
	update ajustes set valor = vfechafinal where descr = 'fecha_final_fiscal' limit 1;
    select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantganancia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantganancia`(vaccion tinyint(2), vidtipo5 int, vidtipo6 int, vidtipo8 int,vdesde varchar(10),vhasta varchar(10),
vidcliente int,vidtipo4 int,vidproducto int)
BEGIN


select if(a.idproducto is null, truncate((a.precio*a.cantidad)*(1-(a.descuento/100)),2) , truncate(sum(((a.precio*(1-(a.descuento/100)))/((a.ganancia/100)+1))*((a.ganancia/100)) * a.cantidad),2)) as ganancia,
a.idfactura,lpad(b.consecutivo,6,0) as factura,
if(vaccion in(1,2),truncate(sum(a.precio*a.cantidad+a.imv-(a.precio*a.cantidad)*(a.descuento/100)),2),truncate(b.subtotal+b.imv-b.descuento,2)) as total,
b.flete,b.ajuste,
date_format(b.fecha,'%d/%m/%Y') as fecha,
if(vaccion in(1,2),c.id,'') as idproducto,if(a.idproducto is null,h.codigo,if(vaccion in(1,2),c.codigo,'')) as codigoProductoOservicio,
if(a.idproducto is null, concat('**',h.nombre),if(vaccion in(1,2),c.nombre,'')) as producto,
truncate(if(vaccion in(1,2),sum(a.cantidad),''),2) as cantidad_De_Productos,
truncate(if(vaccion in(1,2),count(a.idproducto),''),2) as cantidad_veces_vendida, m.nombre as nombreMarca, t.nombre as tipoProducto, f.nombre as familiaproducto, 
ifnull(concat(cl.nombre,' ',cl.apellido1,' ',cl.apellido2,' [', cl.cedula,']'),concat('*',b.comodin)) as cliente,
 g.simbolo, a.descuento as decuentop, truncate((a.precio*a.cantidad)*(a.descuento/100),2) as descuentom
,vaccion , h.nombre
from detallefacturas a 

join facturas b on a.idfactura  = b.id and b.idtipoventa in(1,6) 
  and if(vidtipo4 <> 0,b.id = vidtipo4,1) 
    and if(vidcliente <> 0,b.idcliente = vidcliente,1)
left join clientes cl on b.idcliente = cl.id
left join productos c on c.id = a.idproducto and if(vidproducto <> 0,c.id = vidproducto,1)
 left JOIN marcas m ON c.idmarca = m.id AND if( vidtipo8 > 0, c.idmarca=vidtipo8,1)
    left JOIN tipos t ON m.idtipo = t.id 
    left JOIN familias f ON t.idfamilia = f.id
    join monedas g on g.id=b.idmoneda 
    left join servicios h on a.idservicio = h.id
where if(vdesde = '',1,if(vhasta = '',b.fecha = vdesde,b.fecha between vdesde and vhasta))
group by case vaccion when 1 then a.id when 2 then a.idproducto when 3 then a.idfactura when 4 then t.id when 5 then m.id when 6 then f.id end order by a.idfactura desc; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantganancias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantganancias`(vaccion tinyint(2), vidfamilia int, vidtipo int, vidmarca int,vdesde varchar(10),vhasta varchar(10),
vidcliente int,vidtipofactura int,vidproducto int)
BEGIN


select if(a.idproducto is null, truncate((a.precio*a.cantidad)*(1-(a.descuento/100)),2) , truncate(sum(((a.precio*(1-(a.descuento/100)))/((a.ganancia/100)+1))*((a.ganancia/100)) * a.cantidad),2)) as ganancia,
a.idfactura,lpad(b.consecutivo,6,0) as factura,
if(vaccion in(1,2),truncate(sum(a.precio*a.cantidad+a.imv-(a.precio*a.cantidad)*(a.descuento/100)),2),truncate(b.subtotal+b.imv-b.descuento,2)) as total,
b.flete,b.ajuste,
date_format(b.fecha,'%d/%m/%Y') as fecha,
if(vaccion in(1,2),c.id,'') as idproducto,if(a.idproducto is null,h.codigo,if(vaccion in(1,2),c.codigo,'')) as codigoProductoOservicio,
if(a.idproducto is null, concat('**',h.nombre),if(vaccion in(1,2),c.nombre,'')) as producto,
truncate(if(vaccion in(1,2),sum(a.cantidad),''),2) as cantidad_De_Productos,
truncate(if(vaccion in(1,2),count(a.idproducto),''),2) as cantidad_veces_vendida, m.nombre as nombreMarca, t.nombre as tipoProducto, f.nombre as familiaproducto, 
ifnull(concat(cl.nombre,' ',cl.apellido1,' ',cl.apellido2,' [', cl.cedula,']'),concat('*',b.comodin)) as cliente,
 g.simbolo, a.descuento as decuentop, truncate((a.precio*a.cantidad)*(a.descuento/100),2) as descuentom
,vaccion , h.nombre
from detallefacturas a 
join facturas b on a.idfactura  = b.id and b.idtipoventa in(1,6) 
  and if(vidtipofactura <> 0,b.id = vidtipofactura,1) 
    and if(vidcliente <> 0,b.idcliente = vidcliente,1)
left join clientes cl on b.idcliente = cl.id
left join productos c on c.id = a.idproducto and if(vidproducto <> 0,c.id = vidproducto,1)
 left JOIN marcas m ON c.idmarca = m.id AND if( vidmarca > 0, m.id=vidmarca,1)
    left JOIN tipos t ON m.idtipo = t.id AND if( vidtipo > 0, t.id=vidtipo,1)
    left JOIN familias f ON t.idfamilia = f.id AND if( vidfamilia > 0, f.id=vidfamilia,1)
    join monedas g on g.id=b.idmoneda 
    left join servicios h on a.idservicio = h.id
where if(vdesde = '',1,if(vhasta = '',b.fecha = vdesde,b.fecha between vdesde and vhasta))
group by case vaccion when 1 then a.id when 2 then a.idproducto when 3 then a.idfactura when 4 then t.id when 5 then m.id when 6 then f.id end order by a.idfactura desc; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantimpuestoproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantimpuestoproductos`(vaccion tinyint(2),
vid int(11),vidproducto int(11),vidimpuesto tinyint(2),vidsucursal int)
BEGIN 
CASE vaccion WHEN 1 THEN  
	INSERT INTO impuestoproductos VALUES(null,vidproducto,vidimpuesto,vidsucursal);
	SELECT @@identity;
	
WHEN 2 THEN  
	UPDATE impuestoproductos SET idproducto = vidproducto,idimpuesto = vidimpuesto
WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM impuestoproductos INTO @id;  
	UPDATE impuestoproductos set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantimpuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantimpuestos`(vaccion tinyint(2),
vid tinyint(2),vnombre varchar(45),vresumen varchar(6),vvalor decimal(6,2))
BEGIN 
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO impuestos VALUES(null,vnombre,vresumen,vvalor);
SELECT @@identity;
  

WHEN 2 THEN  
	UPDATE impuestos SET nombre = vnombre,resumen = vresumen,valor = vvalor
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	
	if vid <= 12  then 
		SET @msj = concat('IMPUESTO NO PUEDE SER ELIMINADO');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
	
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM impuestos INTO @id;  
	UPDATE impuestos set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantinventarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantinventarios`(vaccion tinyint(2), vid int(3), vinventario varchar(45),vidbodega int(5),vidcuenta int(11),vidsucursal int(11),vidusuario int)
BEGIN 
	
	if (select count(id) from inventarios where nombre = vinventario and idsucursal = vidsucursal and id <> vid)
	and vaccion in(1,2) THEN
		SET @msj = concat('Nombre Invenario \"',vinventario,'\" Existente');
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = @msj;
	end if;
	
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO inventarios VALUES(null,vinventario,vidbodega,vidcuenta,vidsucursal);
	SELECT @@identity into @vid;
	INSERT INTO log values(null,111,1,concat('Inventario ',vinventario,' Agregado'),vidusuario,now(),vidsucursal,@vid);
	SELECT @vid;
WHEN 2 THEN  
	UPDATE inventarios SET nombre = vinventario,idbodega = vidbodega,idcuenta = vidcuenta,idsucursal = vidsucursal
    WHERE id = vid;
	SELECT vid;
	INSERT INTO log values(null,111,2,concat('Inventario ',vinventario,' Modificado'),vidusuario,now(),vidsucursal,vid);

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM inventarios INTO @id;  
	UPDATE inventarios set id = @id where id = vid;
	SELECT @id;
	INSERT INTO log values(null,111,3,concat('Inventario Eliminado'),vidusuario,now(),vidsucursal,@id);
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantinvmovimientos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantinvmovimientos`(vidinventario int,
vidproducto int,vdesde varchar(21),vhasta varchar(21),vidsucursal int,vidtipo1 int)
BEGIN
	select d.nombre as Movimiento,
	date_format(a.fecha,'%d-%m-%Y %h:%i:%s %p') as fecha,c.nombre,a.cantidad
	from comentmovinvent a join detalleinventarios b on a.iddetalleinventario = b.id
	join productos c on c.id = b.idproducto and c.idsucursal = vidsucursal 
		and if(vidproducto <> 0,c.id = vidproducto,1)
	join tipomovimientos d on d.id = a.accion
	where a.accion > 1 and if(vdesde <> '',date_format(a.fecha,'%Y%m%d') BETWEEN vdesde and vhasta,1)
	and if(vidtipo1 <> 0,a.accion = vidtipo1,1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantjerarquia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantjerarquia`(vaccion tinyint(2),vidtipo tinyint(2), vid int(11),vnombre varchar(45),vidreferencia int(11),vidreferencia2 int(11),vidusuario int(11),vidsucursal tinyint(3))
begin

case vaccion when 1 then
if vidtipo = 1 then
insert into familias values(null,vnombre,vidusuario);
select @@identity into @vid;
insert into log values(null,0,1,concat('Familia: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

elseif vidtipo = 2 then
insert into tipos values(null,vnombre,vidreferencia,vidusuario);
select @@identity into @vid;
insert into log values(null,0,1,concat('Tipo: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

elseif vidtipo = 3 then
insert into marcas values(null,vnombre,vidusuario);
select @@identity into @vid;
insert into log values(null,0,1,concat('Marca: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

else 
insert into modelos values(null,vidreferencia,vidreferencia2,vnombre,vidusuario);
select @@identity into @vid;
insert into log values(null,0,1,concat('Modelo: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

end if;

when 2 then
if vidtipo = 1 then
update familias set nombre = vnombre where id = vid;
select @@identity into @vid;
insert into log values(null,0,2,concat('Familia: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

elseif vidtipo = 2 then
update tipos set nombre = vnombre where id = vid;
select @@identity into @vid;
insert into log values(null,0,2,concat('Tipo: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

elseif vidtipo = 3 then
update marcas set nombre = vnombre where id = vid;
select @@identity into @vid;
insert into log values(null,0,2,concat('Marca: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

else
update modelos set nombre = vnombre where id = vid;
select @@identity into @vid;
insert into log values(null,0,2,concat('Modelo: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

end if;

when 3 then
if vidtipo = 1 then
select ifnull(if(min(id)-1 <> 0,0,min(id)-1),0) from familias into @id;
update familias set id = @id where id = vid;
select @@identity into @vid;
insert into log values(null,0,3,concat('Familia: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

elseif vidtipo = 2 then
select ifnull(if(min(id)-1 <> 0,0,min(id)-1),0) from tipos into @id;
update tipos set id = @id where id = vid;
select @@identity into @vid;
insert into log values(null,0,3,concat('Tipo: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

elseif vidtipo = 3 then
select ifnull(if(min(id)-1 <> 0,0,min(id)-1),0) from marcas into @id;
update marcas set id = @id where id = vid;
select @@identity into @vid;
insert into log values(null,0,3,concat('Marca: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

else
select ifnull(if(min(id)-1 <> 0,0,min(id)-1),0) from modelos into @id;
update modelos set id = @id where id = vid;
select @@identity into @vid;
insert into log values(null,0,3,concat('Modelo: ',vnombre),vidusuario,now(),vidsucursal);
select @vid;

end if;
end case ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantlineaproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantlineaproducciones`(vaccion tinyint(2),vid int(11),vidproceso int(11),vidusuario int,vidsucursal int)
BEGIN 
CASE vaccion 
WHEN 1 THEN  
    INSERT INTO lineaproducciones VALUES(null,vidproceso);
	SELECT @@identity INTO @vid;
	INSERT INTO log values(null,132,1,concat('Nueva linea de producción',@vid),vidusuario,now(),vidsucursal,@vid);
	SELECT @vid;
WHEN 2 THEN  
    UPDATE lineaproducciones SET idproceso = vidproceso
    WHERE id = vid;
    INSERT INTO log values(null,132,2,concat('Actualización linea de producción',vid),vidusuario,now(),vidsucursal,vid);
	SELECT vid;
WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM lineaproducciones INTO @id;  
    UPDATE lineaproducciones set id = @id where id = vid;
    INSERT INTO log values(null,132,3,concat('Linea de producción eliminada',@id),vidusuario,now(),vidsucursal,@id);
    SELECT @id;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantmarcas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantmarcas`(vaccion tinyint(2),
vid int(11),vnombre varchar(45),vidtipo int(11),vidsucursal int)
BEGIN
	
IF (select count(id) from marcas where nombre = trim(vnombre) and 
	id > 0 and id <> vid and idsucursal = vidsucursal and idtipo = vidtipo) > 0 and vaccion <> 3 THEN 
   SET @msj = concat('Marca "',trim(vnombre),'" Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion WHEN 1 THEN  
  INSERT INTO marcas VALUES(null,trim(vnombre),vidtipo,vidsucursal);
SELECT @@identity,vnombre;

WHEN 2 THEN  
  UPDATE marcas SET nombre = trim(vnombre),idtipo = vidtipo
WHERE id = vid;
  SELECT vid;
  
WHEN 3 THEN
  SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM marcas INTO @id;  
  UPDATE marcas set id = @id where id = vid;
  SELECT @id;
  
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantmonedas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantmonedas`(vaccion tinyint(2),
vid tinyint(2) unsigned,vnombremon varchar(45),vsimbolo varchar(2),vvalor decimal(8,2),
vprincipal tinyint(4),vwsdl int(11),vsuma decimal(7,2),vcodigo varchar(4))
BEGIN 
CASE vaccion WHEN 1 THEN  
    
    if (select count(id) from monedas where lower(nombre) = lower(vnombremon)) > 0 then
        SET @msj = concat('Nombre de Moneda \'',vnombremon,'\' Existente');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = @msj;
    end if;
    
    if vprincipal and vaccion = 3 then
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = 'Moneda Principal no se Puede Eliminar';
    end if;
    
    if vprincipal then
        update monedas set principal = 0 where id > 0;
    end if;
    
    INSERT INTO monedas VALUES(null,vnombremon,vsimbolo,vvalor,vprincipal,vwsdl,vsuma,vcodigo);
    SELECT @@identity;
 
WHEN 2 THEN
    if vprincipal then
        update monedas set principal = 0 where id > 0;
    end if;
    UPDATE monedas SET nombre = vnombremon,simbolo = vsimbolo,valor = vvalor,
    principal = vprincipal,wsdl = vwsdl,suma= vsuma, codigo = vcodigo
WHERE id = vid;
    SELECT vid;
    
WHEN 3 THEN
    if (select principal from monedas where id = vid) then
        SET @msj = concat('Moneda Principal no se Puede Eliminar');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = @msj;
    end if;
    
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM monedas INTO @id;  
    UPDATE monedas set id = @id where id = vid;
    SELECT @id;
    
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantnivelesclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantnivelesclientes`(vaccion tinyint(2),vid_nivel int(11),vnombre_nivel varchar(20),vidsucursal tinyint(2))
BEGIN 

CASE vaccion 

WHEN 1 THEN  

	INSERT INTO nivelesclientes VALUES(null,vnombre_nivel,vidsucursal);

SELECT @@identity;

  



WHEN 2 THEN  

	UPDATE nivelesclientes SET nombre = vnombre_nivel

    WHERE id = vid_nivel;

	SELECT vid;

	



WHEN 3 THEN

	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM nivelesclientes INTO @id;  

	UPDATE nivelesclientes set id = @id where id = vid_nivel;

	SELECT @id;

	

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantnivelproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantnivelproductos`(vaccion tinyint(2),
vid int(11),vidtipoentrada int(2),ventrada int(11),vidnivel int(11),vganancia decimal(23,5),
vexoneracion decimal(5,2),vventa decimal(10,2),vidusuario int,vidsucursal int(3))
BEGIN 
CASE vaccion WHEN 1 THEN  
	INSERT INTO nivelproductos VALUES(null,vidtipoentrada,ventrada,vidnivel,vganancia,vexoneracion,vventa);
SELECT @@identity;
INSERT INTO log values(null,105,1,'',vidusuario,now(),vidsucursal);  
WHEN 2 THEN  
	UPDATE nivelproductos SET identrada = ventrada,idnivel = vidnivel,ganancia = vganancia,
	exoneracion = vexoneracion,venta = vventa
WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	DELETE FROM nivelproductos WHERE identrada = ventrada and idtipoentrada = vidtipoentrada and idnivel = vidnivel limit 10;
    select vidnivel;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantodts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantodts`(vaccion tinyint(2),vid int(11),
vcodigo varchar(10),vdescripcion varchar(255),videstado tinyint(3),vidproyecto int(11),
vidusuario int,vidsucursal int)
BEGIN 

IF (SELECT count(id) FROM odts WHERE codigo = vcodigo and id > 0 and id <> vid and idproyecto =
vidproyecto) > 0 THEN 
    SET @msj = concat('Código de ODT \'',vcodigo,'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion 
WHEN 1 THEN  
    INSERT INTO odts VALUES(null,vcodigo,vdescripcion,videstado,vidproyecto,vidsucursal);
SELECT @@identity into vid;
INSERT INTO log values(null,226,1,'ODT',vidusuario,now(),vidsucursal,vid);
SELECT vid;

WHEN 2 THEN  
    UPDATE odts SET codigo = vcodigo,descripcion = vdescripcion,idestado = videstado,idproyecto = vidproyecto
    WHERE id = vid;
    SELECT vid;
    

WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM odts INTO @id;  
    UPDATE odts set id = @id where id = vid;
    SELECT @id;
    
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantpagosvarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantpagosvarios`(vaccion tinyint(2),
vid int(11),vidusuario int,vidsucursal int)
BEGIN  
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO pagosvarios VALUES(null,now(),vidusuario,vidsucursal);
SELECT @@identity;

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM pagosvarios INTO @id;  
	UPDATE pagosvarios set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantpaquetes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantpaquetes`(vaccion tinyint(2),vid int(11),vcodigo varchar(10),vnombre varchar(64),vdescuento decimal(10,2),
vtotal decimal(10,2),vidinventario int,vidmoneda tinyint(2),vidusuario int(11),vidsucursal int(3))
BEGIN 

IF (SELECT COUNT(id) FROM paquetes WHERE codigo = vcodigo AND id > 0 and idsucursal = vidsucursal) > 0 AND vaccion = 1 THEN 
     SET @msj = CONCAT('Código de Paquete \'',vcodigo,'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

IF (SELECT COUNT(id) FROM paquetes WHERE nombre = vnombre AND id > 0 and idsucursal = vidsucursal) > 0 AND vaccion = 1 THEN 
     SET @msj = CONCAT('Nombre de Paquete \'',vnombre,'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;
SELECT nombre FROM inventarios WHERE id = vidinventario INTO @inventario;
CASE vaccion WHEN 1 THEN  
    INSERT INTO paquetes VALUES(null,vcodigo,vnombre,vtotal,vdescuento,vidmoneda,vidsucursal);
    SELECT @@identity INTO vid;
    INSERT INTO log VALUES(null,58,1,concat('Ingreso Paquete Nuevo: ',vnombre),vidusuario,now(),vidsucursal,@vid);
    select vid;
    CALL sp_movimientosinventario(1,concat('+',vid),vidinventario,0,0,CONCAT('Ingreso Paquete ',vnombre,' a Inventario ',@inventario),vidusuario,vidsucursal);
WHEN 2 THEN  
    UPDATE paquetes SET codigo = vcodigo,nombre = vnombre,total = vtotal,descuento = vdescuento,idmoneda = vidmoneda
    WHERE id = vid;
    DELETE FROM detallepaquetes WHERE idpaquete = vid;
    INSERT INTO log VALUES(null,58,2,concat('Actualización Paquete: ',vnombre),vidusuario,now(),vidsucursal,vid);
    SELECT vid;
WHEN 3 THEN
    SELECT ifnull(min(id),-1)-1 FROM paquetes INTO @id;  
    UPDATE paquetes set id = @id where id = vid and idsucursal = vidsucursal;
    INSERT INTO log VALUES(null,58,3,concat('Paquete Eliminado: ',vnombre),vidusuario,now(),vidsucursal,@id);
    SELECT @id;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantprecioxclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantprecioxclientes`(vaccion tinyint(2),vid int(11),vidproducto int(11),vidcliente int(11),
vganancia decimal(10,2),vexoneracion decimal(5,2),vidusuario int,vidsucursal int, vventa decimal(10,2))
BEGIN 

CASE vaccion 

WHEN 1 THEN  

	INSERT INTO precioxclientes VALUES(null,vidproducto,vidcliente,vexoneracion,vganancia, vventa );

	SELECT @@identity INTO @vid;

	INSERT INTO log values(null,0,1,'',vidusuario,now(),vidsucursal,@vid);
    SELECT @vid;

WHEN 2 THEN  

	UPDATE precioxclientes SET idproducto = vidproducto,idcliente = vidcliente,ganancia = vganancia,exoneracion = vexoneracion, venta = vventa

    WHERE id = vid;

	SELECT vid;

	INSERT INTO log values(null,0,2,'',vidusuario,now(),vidsucursal,vid);



WHEN 3 THEN

	DELETE FROM precioxclientes WHERE id = vid;
    select vid;

	INSERT INTO log values(null,0,3,'',vidusuario,now(),vidsucursal,vidproducto);

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantpresupuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantpresupuestos`(
vaccion tinyint(2),vid int(11),vcodigo varchar(10),vdescripcion varchar(255),
vmonto decimal(14,2),vfecha_inicio datetime,vfecha_fin datetime,vidmoneda int(3),
vidtoempresa int,vidusuario int,vidsucursal int)
BEGIN 

IF (SELECT count(id) FROM presupuestos WHERE codigo = vcodigo and id > 0 and id <> vid) > 0 THEN 
    SET @msj = concat('Código de Presupuesto \'',vcodigo,'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

set @divisa = 1;

if !(select principal from monedas where id = vidmoneda) then
    set @divisa = (select valor from monedas where id = vidmoneda);
    set vmonto = vmonto * @divisa;
end if;
    
CASE vaccion 
WHEN 1 THEN  
    INSERT INTO presupuestos VALUES(null,vcodigo,vdescripcion,vmonto,vfecha_inicio,vfecha_fin,
    vidmoneda,vmonto,@divisa,2,vidtoempresa);
SELECT @@identity into vid;
INSERT INTO log values(null,224,1,'Creación de Presupuesto',vidusuario,now(),vidsucursal,vid);
SELECT vid;

WHEN 2 THEN  
    if (select monto - montoactual from presupuestos where id = vid) <> 0 then
    UPDATE presupuestos SET codigo = vcodigo,descripcion = vdescripcion,
    fecha_inicio = vfecha_inicio,fecha_fin = vfecha_fin
    WHERE id = vid;
    else
    UPDATE presupuestos SET codigo = vcodigo,descripcion = vdescripcion,
    monto=vmonto,montoactual=vmonto,fecha_inicio = vfecha_inicio,fecha_fin = vfecha_fin
    WHERE id = vid;
    
    end if;
    INSERT INTO log values(null,224,2,'Actualización del Presupuesto',vidusuario,now(),
    vidsucursal,vid);
    SELECT vid;

WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM presupuestos INTO @id;  
    UPDATE presupuestos set id = @id where id = vid;
    SELECT @id;
    
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantproducciones`(vaccion tinyint(2),vid int(11),vidproceso int(11),vidlinea int(11),vcantidad decimal(6,2))
BEGIN 
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO producciones VALUES(null,vidproceso,vidlinea,vcantidad);
SELECT @@identity;
  

WHEN 2 THEN  
	UPDATE producciones SET idproceso = vidproceso,idlinea = vidlinea,cantidad = vcantidad
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM producciones INTO @id;  
	UPDATE producciones set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantproduccioninventarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantproduccioninventarios`(vaccion tinyint(2),xid int(11),videtapa tinyint(3),xidinventario int(3),vidusuario int,vidsucursal int)
BEGIN 

SELECT nombre FROM etapasproducciones WHERE id = videtapa INTO @etapa;
SELECT nombre FROM inventarios WHERE id = xidinventario INTO @invent;


CASE vaccion 

WHEN 1 THEN  

	INSERT INTO produccioninventarios VALUES(null,videtapa,xidinventario);

	SELECT @@identity;

	INSERT INTO log values(null,177,1,concat('Inventario ',@invent,' Asociado a Etapa ',@etapa,' de Producción'),vidusuario,now(),vidsucursal);



WHEN 2 THEN  

	UPDATE produccioninventarios SET idetapa = videtapa,idinventario = xidinventario

    WHERE id = xid;

	SELECT xid;

	INSERT INTO log values(null,177,2,concat('Inventario ',@invent,' Modificado de Etapa ',@etapa,' de Producción'),vidusuario,now(),vidsucursal);



WHEN 3 THEN

	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM produccioninventarios INTO @id;  

	UPDATE produccioninventarios set id = @id where id = xid;

	SELECT @id;

	INSERT INTO log values(null,177,3,concat('Inventario ',@invent,' Eliminado de Etapa ',@etapa,' de Producción'),vidusuario,now(),vidsucursal);

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantproductos`(vaccion tinyint(2),vid int,
vcodigo varchar(45),vcodigointerno varchar(45),vnombre varchar(150),vcosto decimal(23,5),vganancia decimal(23,5),
vexoneracion decimal(5,2),vidunidad tinyint(3),vminimo int(9),vmaximo int(9),
vmaxdescuento decimal(6,2),vidmarca int,vidinventario int(5),
vidusuario varchar(45),vidmoneda tinyint(2),vidsucursal int,visinventariado tinyint(2),
vidheredado int,visvariable tinyint(2),vcantequiv decimal(23,5),visgravamen tinyint(2),vcomision decimal(5,2),
vventa decimal(23,5))
begin 
if (select count(id) from productos where codigo = trim(vcodigo) and id > 0 and id <> vid and idsucursal = vidsucursal) > 0 and vaccion <> 3 then 
    set @msj = concat('Código de Producto \'',trim(vcodigo),'\' Existente');
    signal sqlstate '45000'
    set message_text = @msj;
end if;
if (select count(id) from productos where codigointerno = trim(vcodigointerno) and id > 0 and id <> vid and idsucursal = vidsucursal) > 0 and vaccion <> 3 and vcodigointerno <> '' then 
    set @msj = concat('Código Interno de Producto \'',trim(vcodigointerno),'\' Existente');
    signal sqlstate '45000'
    set message_text = @msj;
end if;
IF (select count(id) from productos where idmarca = vidmarca and nombre = trim(vnombre) and id > 0 and id <> vid and idsucursal = vidsucursal and id <> vid) > 0 and vaccion <> 3 then 
    set @msj = concat('Nombre de Producto \'',trim(vnombre),'\' Existente');
    signal sqlstate '45000'
    set message_text = @msj;
end if;
select nombre from inventarios where id = vidinventario into @inventario;

select valor from monedas where id = vidmoneda into @divisa;

if vidmoneda <> 1 THEN
	set vcosto = vcosto*@divisa;
	set vganancia = vganancia*@divisa;

end if;

case vaccion when 1 then
    insert into productos values(null,trim(vcodigo),trim(vcodigointerno),trim(vnombre),vcosto,vganancia,vexoneracion,
    vidunidad,vminimo,vmaximo,vmaxdescuento,vidmarca,vidusuario,vidmoneda,0,vidsucursal,visinventariado,
    vidheredado,visvariable,vcantequiv,visgravamen,vcomision,vventa,@divisa);
    select @@identity into vid;
    insert into log values(null,11,1,concat('Producto Nuevo: ',trim(vnombre)),vidusuario,now(),vidsucursal,vid);
    select vid;
    call sp_movimientosinventario(1,vid,vidinventario,0,0,concat('Ingreso Producto ',trim(vnombre),' a Inventario ',@inventario),vidusuario,vidsucursal);
when 2 then
    update productos set codigo = trim(vcodigo),codigointerno = trim(vcodigointerno),nombre = trim(vnombre),costo = vcosto,ganancia = vganancia,
    exoneracion = vexoneracion,idunidad = vidunidad,minimo = vminimo,maximo = vmaximo,maxdescuento = vmaxdescuento,
    idmarca = vidmarca,idmoneda = vidmoneda,isinventariado = visinventariado,idheredado = vidheredado,
    isvariable = visvariable,cantequiv = vcantequiv,isinventariado = visinventariado,isgravamen = visgravamen,
    comision = vcomision,venta = vventa
    where id = vid;
    select vid;
    insert into log values(null,11,2,concat('Producto Actualizado: ',trim(vnombre)),vidusuario,now(),vidsucursal,vid);
when 3 then
	if (select if(sum(cantidad) <> 0,1,0) from detalleinventarios where idproducto = vid) then 
	    set @msj = concat('Producto con Catidad en Inventario');
	    signal sqlstate '45000'
	    set message_text = @msj;
	end if;
    select if(min(id) = 1 or min(id) is null,-1,min(id)-1) from productos into @id;
    update productos set id = @id where id = vid;
    insert into log values(null,11,3,concat('Producto ',vnombre,' Eliminado'),vidusuario,now(),vidsucursal,@id);
    select @id;
    alter table productos auto_increment 1;
end case;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreporteClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreporteClientes`(vidsucursal int,vbisproveedor tinyint(2),
vidcliente int,vidtipo1 tinyint(3),vidtipo2 tinyint(2),vidtipo3 varchar(45))
BEGIN
SELECT 
    a.id,
    TRIM(CONCAT(a.nombre,
                ' ',
                a.apellido1,
                ' ',
                a.apellido2)) AS nombre,
    a.cedula,
    CONCAT(IFNULL(t1.telefono, '--'),
            ' || ',
            IFNULL(t2.telefono, '--'),
            ' || ',
            IFNULL(t3.telefono, '--')) AS telefonos,
    o.correo AS correos,
    b.nombre AS tipocliente,
    a.idestado,
    a.bisproveedor,
    IF(a.credito > 0,format(a.credito,2),'NO') AS credito,
    a.plazo,
    concat(a.descuentom,'%') AS descuentomax,
    c.usuario AS idusuario,
    c.idsucursal
FROM
    clientes a
        JOIN
    tipoclientes b ON a.idtipocliente = b.id
        LEFT JOIN
    log c ON c.idfila = a.id AND c.idtabla = 2 AND c.idaccion = 1
        LEFT JOIN
    telefonos t ON t.idfila = c.id
        AND t.idtabla = 2
        LEFT JOIN
    telefonos t1 ON t1.idfila = c.id
        AND t1.idtabla = 2
        AND t1.idtipotel = 1
        LEFT JOIN
    telefonos t2 ON t2.idfila = c.id
        AND t2.idtabla = 2
        AND t2.idtipotel = 2
        LEFT JOIN
    telefonos t3 ON t3.idfila = c.id
        AND t3.idtabla = 2
        AND t3.idtipotel = 3
        LEFT JOIN
    correos o ON o.idfila = c.id
        AND o.idtabla = 2
WHERE
    a.id > 0 AND IF(vidcliente <> 0,a.id = vidcliente,1) AND IF(vidtipo1 <> 0,a.idtipocliente = vidtipo1,1) AND
    IF(vidtipo2 <> 0,a.idestado = vidtipo2,1) AND IF(vidtipo3 <> '',a.cedula LIKE concat('"%',vidtipo3,'%"'),1)
    AND a.bisproveedor = vbisproveedor
    group by id
ORDER BY a.nombre;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreportecontas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreportecontas`(vdesde varchar(20),
vhasta varchar(20),vidsucursal int,vtrep int,vidtipo1 int)
BEGIN
	case vtrep when 0 then
		(select 1 as orden,a.id as id,a.id as ntrac,date_format(a.fecha,'%d-%m-%Y') as fecha,a.descripcion as Cuenta,'' as Debe,'' as Haber 
		from transacciones a
		where if(vdesde <> '',date_format(a.fecha,'%Y-%m-%d') BETWEEN vdesde and if(vhasta <> '',vhasta,vdesde),
		date_format(a.fecha,'%Y-%m') = date_format(curdate(),'%Y-%m')))
		UNION
		(select 2 as orden,a.id as id,'','',c.nombre,b.debe,b.haber
		from transacciones a join detalletransacciones b on a.id = b.idtransaccion
		join cuentas c on c.id = b.idcuenta
		where if(vdesde <> '',date_format(a.fecha,'%Y-%m-%d') BETWEEN vdesde and if(vhasta <> '',vhasta,vdesde),
		date_format(a.fecha,'%Y-%m') = date_format(curdate(),'%Y-%m')))
		UNION
		(select 3 as orden,a.id as id,'','TOTAL','',sum(b.debe),sum(b.haber)
		from transacciones a join detalletransacciones b on a.id = b.idtransaccion
		where if(vdesde <> '',date_format(a.fecha,'%Y-%m-%d') BETWEEN vdesde and if(vhasta <> '',vhasta,vdesde),
		date_format(a.fecha,'%Y-%m') = date_format(curdate(),'%Y-%m')) group by b.idtransaccion)	
		order by id,orden;
	when 1 then #ESTADOS RESULTADOS
		(select 1 as orden,rpad(d.numero,10,0) as num,concat(rpad('',d.deep-1,' '),d.nombre) as Descripcion,'' as total
		from cuentas a 
		left join detalletransacciones b on b.idcuenta = a.id
		left join transacciones c on c.id = b.idtransaccion
		join cuentas d on a.numero like concat(d.numero,'%') and d.ispadre
		where if(vdesde <> '',date_format(c.fecha,'%Y-%m-%d') BETWEEN vdesde and if(vhasta <> '',vhasta,vdesde),
		date_format(c.fecha,'%Y-%m') = date_format(curdate(),'%Y-%m'))
		and (a.numero like '4%' or a.numero like '5%' or a.numero like '3%')
		group by d.id)
		UNION
		(select 2 as orden,rpad(a.numero,10,0) as num,concat(rpad('',a.deep-1,' '),a.nombre),sum(abs(b.debe-b.haber)) as total
		from cuentas a 
		left join detalletransacciones b on b.idcuenta = a.id
		left join transacciones c on c.id = b.idtransaccion
		where if(vdesde <> '',date_format(c.fecha,'%Y-%m-%d') BETWEEN vdesde and if(vhasta <> '',vhasta,vdesde),
		date_format(c.fecha,'%Y-%m') = date_format(curdate(),'%Y-%m'))
		and (a.numero like '4%' or a.numero like '5%' or a.numero like '3%')
		group by a.id)
		order by num;
	else
		select 'NA';
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreportecostos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreportecostos`(vdesde varchar(20),
vhasta varchar(20),vidsucursal int,vidtipo1 int)
BEGIN
	select if(vidtipo1 = 1,a.consecutivo,'') as factura,
if(vidtipo1 in (1,2),trim(concat(ifnull(c.nombre,''),' ',ifnull(c.apellido1,''),' ',c.apellido2)),'') as cliente,
if(vidtipo1 = 3,d.codigo,'') as cdigo,if(vidtipo1 = 3,d.nombre,'') as producto,
format(sum(b.cantidad),2) as cantidad,format(sum(b.costo*b.cantidad),2) as costo,
format(sum(b.precio*b.cantidad-b.descuento),2) as venta,
format(sum(b.precio*b.cantidad-b.descuento) - sum(b.costo*b.cantidad),2) as utilidad,
format( ((sum(b.precio*b.cantidad-b.descuento) - sum(b.costo*b.cantidad))*100)/(sum(b.costo*b.cantidad)) ,2) as porcentual
from facturas a join detallefacturas b on b.idfactura= a.id 
left join clientes c on c.id = a.idcliente join productos d on d.id = b.idproducto
where a.idtipoventa in(1,7,8) and if(vdesde = '',a.fecha = curdate(),
if(vhasta = '',date_format(a.fecha,'%Y-%m-%d') = vdesde, date_format(a.fecha,'%Y-%m-%d') BETWEEN vdesde and vhasta))
and a.idsucursal = vidsucursal
GROUP by case vidtipo1 when 1 then a.id when 2 then c.id when 3 then d.id else 1 end;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreportecxcs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreportecxcs`(vidcliente int,vishistorico tinyint(2),
visproveedor tinyint(2),vidsucursal int)
begin
select if(b.referencia <> '' ,b.referencia,if(b.consecutivo = 0,b.id,lpad(b.consecutivo,6,0))) as factura,
	date_format(b.fecha,'%d-%m-%Y') as fecha,
	(b.subtotal+b.imv+b.exento-b.descuento)/b.divisa as montofact,
	sum(if(a.idtipo in(3,7),a.valor,0)) as abonos,
	sum(if(a.idtipo in(5),a.valor,0)) as nc,
	sum(if(a.idtipo in(6),a.valor,0)) as nd,
	(b.subtotal+b.imv+b.exento-b.descuento)/b.divisa-sum(if(a.idtipo in(3,7),a.valor,0))-
	sum(if(a.idtipo in(5),a.valor,0)) +sum(if(a.idtipo in(6),a.valor,0)) as saldo,
	trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2)) as cliente,a.id
	from estadoscuentas a join facturas b on b.id = a.idfactura and b.idsucursal = vidsucursal
	and if(vidcliente, b.idcliente = vidcliente,1)
	join clientes c on c.id = b.idcliente and c.bisproveedor = visproveedor
	group by a.idfactura having if(!vishistorico,saldo > 0,1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreporteFacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreporteFacturas`(vid int,vidtipoventa varchar(100),
vidsucursal int,vidcliente int,vidusuario int,vnum1 int,vnum2 int,
vdesde varchar(10),vhasta varchar(10),vidtipo1 tinyint(3),vidtipo2 tinyint(3),vdetalle tinyint(2))
BEGIN
select a.valor,b.valor from ajustes a join ajustes b on b.descr = 'fecha_final_fiscal' 
    where a.descr = 'fecha_inicio_fiscal' into @pdesde,@phasta;   

select concat(case a.idtipoventa when 1 then 'F-' when 7 then 'T-' else '' end,
if(a.idtipoventa = 2,concat('  ',SUBSTRING(a.referencia,22,20),'  '),lpad(a.consecutivo,6,0))) as consecutivo,
date_format(a.fecha,'%d-%m-%Y') as fecha,
if(a.idtipoventa = 2 and substring(a.referencia,30,2) in(2,3),
    if(substring(a.referencia,30,2) = 3,'NC','ND'),
case max(l.idtipo) when 3 then 
if(abs(max(l.debe)-max(l.haber)) = 0,concat(k.nombre,'[C]'),concat(k.nombre,'[P]'))
when 5 then concat(k.nombre,'[A]') 
else if(k.id in(2,4),concat(k.nombre,'[P]'),k.nombre) end)
 as tipo,
if(a.idcliente != 0,concat(b.nombre,' ',b.apellido1,' ',b.apellido2),a.comodin) as cliente,
if(max(l.idtipo) <> 5 or !count(l.idtipo),
    if(substring(a.referencia,30,2) = 3,-1,1)*a.descuento/a.divisa,
    '0.00') as descuento,
if(max(l.idtipo) <> 5 or !count(l.idtipo),
    if(substring(a.referencia,30,2) = 3,-1,1)*sum(if(f.imv > 0,f.precio*f.cantidad-f.descuento,0))/a.divisa,
    '0.00') as gravado,
if(max(l.idtipo) <> 5 or !count(l.idtipo),
    if(substring(a.referencia,30,2) = 3,-1,1)*a.imv/a.divisa,
    '0.00') as imv,
if(max(l.idtipo) <> 5 or !count(l.idtipo),
    if(substring(a.referencia,30,2) = 3,-1,1)*sum(if(f.imv = 0,f.precio*f.cantidad-f.descuento,0))/a.divisa,
    '0.00' ) as exento,
if(max(l.idtipo) <> 5 or !count(l.idtipo),
    if(substring(a.referencia,30,2) = 3,-1,1)*(a.subtotal+a.imv+a.exento-a.descuento)/a.divisa,
    '0.00' ) as Total,
a.divisa,c.simbolo as simbolo,b.cedula
from facturas a
left join clientes b on a.idcliente = b.id
join monedas c on a.idmoneda = c.id
join usuarios d on a.idusuario = d.id
join detallefacturas f on f.idfactura = a.id
join estadofacturas j on a.idestado = j.id
left join estadoscuentas l on l.idfactura = a.id
join tipofacturas k on  a.idtipo = k.id
where if(vidtipoventa <> 0,find_in_set(a.idtipoventa,vidtipoventa),1) 
and a.idsucursal = vidsucursal and if(vid <> 0,a.id = vid,1) and
if(vidcliente <> 0,a.idcliente = vidcliente,1) and if(vidusuario <> 0,a.idusuario = vidusuario,1) and 
if(vnum1 <> 0 and vnum2 = 0,a.consecutivo = vnum1,if(vnum1 <> 0 and vnum2 <> 0,lpad(a.consecutivo,6,0) between vnum1 and vnum2,1) )and
if(vhasta = '' and vdesde <> '',date_format(a.fecha,'%Y-%m-%d') = vdesde, 
if(vdesde <> '' and vhasta <> '',date_format(a.fecha,'%Y-%m-%d') between vdesde and vhasta,
date_format(a.fecha,'%Y-%m-%d') BETWEEN @pdesde and @phasta))
and if(vidtipo1 <> 0,a.idtipo = vidtipo1,1)
and if(vidtipo2 <> 0,a.idtipopago = vidtipo2,1) and if(a.idtipoventa <> 1,a.feestado not in(3,8) and a.idestado not in (7),1)
group by case vdetalle when 1 then a.id when 2 then f.id when 3 then f.idproducto when 4 then f.idservicio else 1 end DESC order by a.fecha desc,a.id desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreporteinventarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreporteinventarios`(vidinventario int,
vidproducto int,vdesde varchar(21),vhasta varchar(21),vidsucursal int,vidtipo1 int,vidtipo2 int,vidtipo3 int,
vidtipo4 tinyint(2),vidtipo5 tinyint(2),vidtipo6 tinyint(2),vidtipo7 tinyint(2),vidtipo8 tinyint(2),
vidtipo9 tinyint(2))
BEGIN
	select b.codigo,b.codigointerno,b.nombre as producto,d.nombre as marca,e.nombre as tipo,
	f.nombre as familia,a.cantidad,if(b.exoneracion = 100,0,13) as gravado,b.isvariable,
	b.isinventariado,b.isgravamen,truncate(costo+ganancia,2) as venta
	from detalleinventarios a 
	join productos b on b.id = a.idproducto and if(vidproducto <> 0,b.id = vidproducto,1)
	join log c on c.idtabla = 11 and c.idfila = b.id and c.idaccion = 1
	left join marcas d on d.id = b.idmarca and if(vidtipo1 <> 0,d.id = vidtipo1,1)
	left join tipos e on e.id = d.idtipo and if(vidtipo2 <> 0,e.id = vidtipo2,1)
	left join familias f on f.id = e.idfamilia and if(vidtipo3 <> 0,f.id = vidtipo3,1)
	where if(vdesde <> '',date_format(c.fecha,'%Y%m%d') BETWEEN vdesde and vhasta,1)
	and if(vidsucursal <> 0,b.idsucursal = vidsucursal,1) 
	and if(vidtipo4 >= 0,b.isvariable = vidtipo4,1)
	and if(vidtipo5 >= 0,b.isinventariado = vidtipo5,1)
	and if(vidtipo6 >= 0,b.isgravamen = vidtipo6,1)
	and if(vidtipo7 >= 0,if(vidtipo7,b.exoneracion = 0,b.exoneracion = 100),1)
	and if(vidtipo8 >= 0,if(vidtipo8,a.cantidad >0 ,a.cantidad = 0),1)
	and if(vidtipo9 >= 0,if(vidtipo9,a.cantidad < 0 ,a.cantidad > 0),1)
	group by b.id;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantreporteProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantreporteProductos`(vid int,vidsucursal int)
begin
select a.id,a.codigo,a.codigointerno,a.nombre as producto,concat(f.simbolo,format(a.costo,2)) as costo,
concat(format(a.ganancia,2),'%') as ganancia,
concat(f.simbolo,format(a.venta,2)) as venta,concat(format(a.exoneracion,2),'%') as exoneracion,a.peso,concat(b.nombre,'(',b.simbolo,')') as unidad,
a.minimo,a.maximo,concat(a.maxdescuento,'%') as descuentomaximo,e.id as idfamilia,e.nombre as familia,d.id as idtipo,d.nombre as tipo,c.id as idmarca,c.nombre as marca,
g.nombre as usuario,h.nombre as sucursal,ifnull(i.nombre,'N/A') as cuenta
from productos a
join unidades b on a.idunidad = b.id
join marcas c on a.idmarca = c.id
join tipos d on c.idtipo = d.id
join familias e on d.idfamilia = e.id
join monedas f on a.idmoneda = f.id
join usuarios g on a.idusuario = g.id
join sucursales h on a.idsucursal = h.id
left join cuentas i on a.idcuenta = i.id
where a.id = vid and a.idsucursal = vidsucursal;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantrubros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantrubros`(vaccion tinyint(2),vvid int(11),vnombre varchar(100),
vidsucursal int(11),vidtiporubro tinyint(2))
BEGIN 
if vaccion <> 3 and (select count(vid) from rubros where upper(nombre) = upper(trim(vnombre)) and idsucursal = vidsucursal and vid > 0
and vid <> vvid) then	
	SET @msj = concat('Rubro ya Existente');
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = @msj;
end if;

CASE vaccion 
WHEN 1 THEN  
	INSERT INTO rubros VALUES(vvid,trim(vnombre),vidsucursal,vidtiporubro);
SELECT @@identity;
/*INSERT INTO log values(null,0,1,'',vidusuario,now());*/  

WHEN 2 THEN  
	UPDATE rubros SET vid = vvid,nombre = vnombre,idtiporubro = vidtiporubro
    WHERE id = vid;
	SELECT vid;
	/*INSERT INTO log values(null,0,2,'',vidusuario,now());*/

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM rubros INTO @id;  
	UPDATE rubros set id = @id where id = vid;
	SELECT @id;
    alter table rubros AUTO_INCREMENT 1;
	/*INSERT INTO log values(null,0,3,'',vidusuario,now());*/
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantrutas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantrutas`(vaccion tinyint(2),vid int(11),vnombre varchar(45),vcodigoruta varchar(45))
BEGIN 

IF (SELECT count(id) FROM rutas WHERE nombre = vnombre and id > 0 and id <> vid) > 0 THEN 
    SET @msj = concat('Nombre de Ruta \'',vnombre,'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
    END IF;

CASE vaccion 
WHEN 1 THEN
    
    INSERT INTO rutas VALUES(null,vnombre,vcodigoruta);
SELECT @@identity;
  

WHEN 2 THEN  
    UPDATE rutas SET nombre = vnombre,codigoruta = vcodigoruta
    WHERE id = vid;
    SELECT vid;
    

WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM rutas INTO @id;  
    UPDATE rutas set id = @id where id = vid;
    SELECT @id;
    
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantservicioclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantservicioclientes`(vaccion tinyint(2),
vid int(11),vidcliente int(11),vidservicio int(11),vnext_fecha varchar(14),vfecha varchar(14))
BEGIN 
CASE vaccion 
WHEN 1 THEN  
 
	INSERT INTO servicioclientes VALUES(null,vidcliente,vidservicio,now(),now());
	SELECT @@identity into vid;
	  
	select vid;
WHEN 2 THEN  
	UPDATE servicioclientes SET idcliente = vidcliente,idservicio = vidservicio,next_fecha = now(),fecha = now()
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM servicioclientes INTO @id;  
	UPDATE servicioclientes set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantservicios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantservicios`(vaccion tinyint(2),vid int(11),vcodigo varchar(45),
vnombre varchar(150),vdescripcion varchar(255),vpfactura decimal(6,2),vperiodo int(3) unsigned,vdias int(3),vidproveedor int(11),
vprecio decimal(10,2),vpganancia decimal(6,2),vidinventario int(3),vidusuario int(11),vidmoneda tinyint(2),vidsucursal int,
vservprofesional tinyint(2),vidsuc varchar(100),vexento decimal(5,2))
BEGIN 

IF (SELECT count(id) FROM servicios WHERE codigo = vcodigo AND id > 0 and id <> vid and idsucursal = vidsuc) > 0 AND vaccion = 1 THEN 
 SET @msj = concat('Código de Servicio \'',upper(vcodigo),'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

IF (SELECT count(id) FROM servicios WHERE nombre = vnombre AND id > 0 and id <> vid and idsucursal = vidsuc) > 0 AND vaccion = 1 THEN 
 SET @msj = concat('Nombre de Servicio \'',upper(vnombre),'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion WHEN 1 THEN  
INSERT INTO servicios VALUES(null,upper(vcodigo),vnombre,vdescripcion,vpfactura,vperiodo,vdias,vidproveedor,vprecio,
    vpganancia,now(),vidusuario,vidmoneda,vservprofesional,vidsuc,vexento);
SELECT @@identity into vid;
INSERT INTO log VALUES(null,16,1,concat('Servicio Nuevo: ',vnombre),vidusuario,now(),vidsucursal,vid);
    SELECT vid;
    CALL sp_movimientosinventario(1,concat('-',vid),vidinventario,0,0,concat('Ingreso Servicio ',vnombre,' a Inventario'),vidusuario,vidsucursal);
WHEN 2 THEN  
UPDATE servicios SET codigo = upper(vcodigo),nombre = vnombre,descripcion = vdescripcion,pfactura = vpfactura,periodo = vperiodo,
    dias = vdias,idproveedor = vidproveedor,precio = vprecio,pganancia = vpganancia,
    idusuario = vidusuario,idmoneda = vidmoneda,servprofesional = vservprofesional,idsucursal = vidsuc,
    exento = vexento
WHERE id = vid;
SELECT vid;

WHEN 3 THEN
SELECT IF(MIN(id) = 1 or min(id) is null,-1,min(id)-1) FROM servicios INTO @id;  
UPDATE servicios SET id = @id WHERE id = vid;
SELECT @id;
alter table servicios auto_increment 1;
update detallefacturas set idservicio = @id where idservicio = vid;
END CASE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantserviciosproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantserviciosproducciones`(vaccion tinyint(2),vid int(11),vidvariable int(3),vidinventario int(3),vidservicio int(11),vidusuario int,vidsucursal int)
BEGIN

SELECT nombre FROM servicios WHERE id = vidservicio INTO @servicio;
SELECT nombre FROM variablesproducciones WHERE id = vidvariable INTO @variable;


CASE vaccion 

WHEN 1 THEN  

	INSERT INTO serviciosproducciones VALUES(null,vidvariable,vidinventario,vidservicio);

	SELECT @@identity INTO @vid;
    

	INSERT INTO log values(null,175,1,concat('Servicio ',@servicio,' asociado a variable de producción',@variable),vidusuario,now(),vidsucursal,@vid);
    SELECT @vid;

WHEN 2 THEN  

	UPDATE serviciosproducciones SET idvariable = vidvariable,idinventario = vidinventario,idservicio = vidservicio

    WHERE id = vid;

	SELECT vid;

	INSERT INTO log values(null,175,2,concat('Servicio ',@servicio,' desligado de variable de producción',@variable),vidusuario,now(),vidsucursal,vid);

WHEN 3 THEN

	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM serviciosproducciones INTO @id;  

	UPDATE serviciosproducciones set id = @id where id = vid;

	SELECT @id;

	INSERT INTO log values(null,175,3,concat('Servicio ',@servicio,' eliminado de variable de producción',@variable),vidusuario,now(),vidsucursal,@id);

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantsucursales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantsucursales`(vaccion tinyint(2),vid int(3),
vnombre varchar(45),vidusuario int(11),vpfisico varchar(64),vidtipoabono int(11),vidtipofactura int(11),
vidtiponota int(11),vcedula varchar(32),vlogo varchar(100),vencabezado varchar(2),vidtipocliente tinyint(3),
visinventariado tinyint(2),vp12 varchar(64),vpass_n varchar(64),vidsucursal int(11),vfastshow tinyint(3),
visPrueba tinyint(2),vprintSale tinyint(2),vuser_atv varchar(100),vpass_atv varchar(64),vidtiponegocio int(11))
BEGIN
	IF (select count(id) from sucursales where cedula = vcedula and id > 0 and id <> vid) > 0 
	and vaccion <> 3 THEN 
	SET @msj = concat('Cédula de Sucursal \'',vcedula,'\' Existente');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	END IF;

CASE vaccion 
WHEN 1 THEN  
	INSERT INTO sucursales VALUES(null,vnombre,vidusuario,vpfisico,vidtipoabono,vidtipofactura,vidtiponota,
	vcedula,vlogo,vencabezado,vidtipocliente,visinventariado,vp12,vpass_n,vidsucursal,vfastshow,visPrueba,
	vprintSale,vuser_atv,vpass_atv,vidtiponegocio);
SELECT @@identity;
  

WHEN 2 THEN  
	UPDATE sucursales SET nombre = vnombre,idusuario = vidusuario,pfisico = vpfisico,idtipoabono = vidtipoabono,
	idtipofactura = vidtipofactura,idtiponota = vidtiponota,cedula = vcedula,logo = vlogo,encabezado = vencabezado,
	idtipocliente = vidtipocliente,isinventariado = visinventariado,p12 = vp12,pass_n = vpass_n,
	idsucursal = vidsucursal,fastshow = vfastshow,isPrueba = visPrueba,printSale = vprintSale,
	user_atv = vuser_atv,pass_atv = vpass_atv,idtiponegocio = vidtiponegocio
    WHERE id = vid;
	SELECT vid;
	

WHEN 3 THEN
	SELECT IF(MIN(id) = 1 or min(id) is null,-1,min(id)-1) FROM sucursales INTO @id;  
	UPDATE sucursales set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manttareaproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_manttareaproducciones`(vaccion tinyint(2),vid int(11),vnombre varchar(45),
vhombre decimal(5,2),vidunidad1 tinyint(3),vmaquina decimal(5,2),vidunidad2 tinyint(3),vbandejas decimal(5,2),vidusuario int,vidsucursal int)
BEGIN 

IF (SELECT count(id) FROM tareaproducciones WHERE nombre = vnombre AND id > 0) > 0 AND vaccion = 1 THEN 
   SET @msj = concat('Tarea \'',vnombre,'\' ya existe');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion 
WHEN 1 THEN  
    INSERT INTO tareaproducciones VALUES(null,vnombre,vhombre,vidunidad1,vmaquina,vidunidad2,vbandejas);
	SELECT @@identity INTO @vid;
	INSERT INTO log values(null,134,1,concat('Nueva tarea de producción: ',vnombre),vidusuario,now(),vidsucursal,@vid);
    SELECT @vid;
WHEN 2 THEN  
    UPDATE tareaproducciones SET nombre = vnombre,hombre = vhombre,idunidad1 = vidunidad1,idunidad2 = vidunidad2,maquina = vmaquina,bandejas = vbandejas
    WHERE id = vid;
    INSERT INTO log values(null,134,2,concat('Actualización tarea de producción: ',vnombre),vidusuario,now(),vidsucursal,vid);
    SELECT vid;
WHEN 3 THEN
    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM tareaproducciones INTO @id;  
    UPDATE tareaproducciones set id = @id where id = vid;
    INSERT INTO log values(null,134,3,concat('Tarea de producción eliminada: ',vnombre),vidusuario,now(),vidsucursal,@id);
    SELECT @id;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manttelefonos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_manttelefonos`(vaccion tinyint(2),vidtelefono int,
vidtipotel tinyint(3),
vtelefono varchar(45),vidpais int,
vidfila int(11),vidtabla int(11))
BEGIN

CASE vaccion WHEN 1 THEN  
INSERT INTO telefonos VALUES(null,vidtipotel,replace(vtelefono,' ',''),vidtabla,vidfila,vidpais);
    SELECT @@identity into vidtelefono;
WHEN 2 THEN
UPDATE telefonos set telefono = vtelefono,idtipotel = vidtipotel,idpais = vidpais
WHERE idtelefono = vidtelefono;
WHEN 3 THEN
DELETE FROM telefonos where idtelefono = vidtelefono;
END CASE; 

SELECT vidtelefono;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manttipopagos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_manttipopagos`(vaccion tinyint(2),
vid tinyint(3),vnombre_pago varchar(45),vbancos tinyint(2),vextra varchar(32),vregex varchar(100),
vprincipal tinyint(1))
BEGIN 
 
IF (select count(id) from tipopagos where nombre = vnombre_pago and id > 0 and id <> vid) > 0 
and vaccion <> 3 THEN 
SET @msj = concat('Nombre Pago \'',vnombre_pago,'\' Existente');
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion 
WHEN 1 THEN  
    INSERT INTO tipopagos VALUES(null,vnombre_pago,vbancos,vextra,vregex,0,'',99);
SELECT @@identity;
  

WHEN 2 THEN
    if vprincipal = 1 then update tipopagos set principal = 0 where id >= 0; end if;
    UPDATE tipopagos SET nombre = vnombre_pago,bancos = vbancos,extra = vextra,regex = vregex,
    principal = vprincipal
    WHERE id = vid;
    SELECT vid;
    

WHEN 3 THEN

    IF (select principal from tipopagos where id = vid) THEN 
        SET @msj = concat('Tipo de Pago Principal no se Puede Eliminar');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = @msj;
    END IF;

    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM tipopagos INTO @id;  
    UPDATE tipopagos set id = @id where id = vid;
    SELECT @id;
    
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manttipos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_manttipos`(vaccion tinyint(2),vid int(11),
vnombre varchar(45),vidfamilia int(11),vidsucursal int)
BEGIN

IF (select count(id) from tipos where nombre = trim(vnombre) and 
	id > 0 and id <> vid and idsucursal = vidsucursal and idfamilia = vidfamilia) > 0 and vaccion <> 3 THEN 
   	SET @msj = concat('Tipo "',trim(vnombre),'" Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;

CASE vaccion WHEN 1 THEN  
  INSERT INTO tipos VALUES(null,trim(vnombre),vidfamilia,vidsucursal);
SELECT @@identity,vnombre;

WHEN 2 THEN
  UPDATE tipos SET nombre = trim(vnombre),idfamilia = vidfamilia
WHERE id = vid;
  SELECT vid;
  
WHEN 3 THEN
  SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM tipos INTO @id;  
  UPDATE tipos set id = @id where id = vid;
  SELECT @id;
  
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manttipousuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_manttipousuarios`(vaccion TINYINT(2),vid_tusuario INT(3) UNSIGNED,vnombre_tusuario VARCHAR(45),
vdefecto_tusuario TINYINT(1),vbincierre_tusuario TINYINT(2))
BEGIN

	IF (select count(id) from tipousuarios where nombre = vnombre_tusuario and id > 0 and id <> vid_tusuario) > 0 
	and vaccion <> 3 THEN 
		SET @msj = concat('Tipo Usuario \'',vnombre_tusuario,'\' Existente');
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	END IF;
	
	IF vid_tusuario in(1,2) and vaccion = 3 THEN 
 		SET @msj = concat('Tipo de Usuario no se Puede Eliminar');
     	SIGNAL SQLSTATE '45000'
     	SET MESSAGE_TEXT = @msj;
 	END IF;

	
	CASE vaccion 
WHEN 1 THEN  
INSERT INTO tipousuarios VALUES(NULL,vnombre_tusuario,vdefecto_tusuario,vbincierre_tusuario);
SELECT @@identity into vid_tusuario;
insert into permisostipousuario select null,id,vid_tusuario,3 from permisos;
select vid_tusuario;
WHEN 2 THEN  
UPDATE tipousuarios SET nombre = vnombre_tusuario,defecto = vdefecto_tusuario
    WHERE id = vid_tusuario;

SELECT vid_tusuario;
WHEN 3 THEN
SELECT IFNULL(IF(MIN(id)-1 = 0,-1,MIN(id)-1),-1) FROM tipousuarios INTO @id;  
UPDATE tipousuarios SET id = @id WHERE id = vid_tusuario;
SELECT nombre FROM tipousuarios WHERE id = @id INTO @vnombre;
    delete from permisostipousuario where idtipoUsuario = vid_tusuario;
SELECT @id;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_manttransacciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_manttransacciones`(vaccion tinyint(2),
vid int(11),vfecha datetime,vdescripcion varchar(100),vidusuario int(11),
vidsucursal int(11),vidmoneda int(11),vidtabla int,vidfila int)
BEGIN 
	declare vdivisa decimal(23,5);
	select valor from monedas where id = vidmoneda into vdivisa;

CASE vaccion WHEN 1 THEN  
	INSERT INTO transacciones VALUES(null,vfecha,vdescripcion,
    vidusuario,vidsucursal,vidmoneda,vidtabla,vidfila,divisa);
	SELECT @@identity;

WHEN 2 THEN  
	UPDATE transacciones SET fecha = now(),descripcion = vdescripcion,
	idusuario = vidusuario,idsucursal = vidsucursal,idmoneda = vidmoneda,divisa = vdivisa
WHERE id = vid;
	SELECT vid;
	INSERT INTO log values(null,0,2,'',vidusuario,now());
WHEN 3 THEN
	SELECT ifnull(min(id),-1)-1 FROM transacciones INTO @id;  
	UPDATE transacciones set id = @id where id = vid;
	SELECT @id;
	INSERT INTO log values(null,0,3,'',vidusuario,now());
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantubicaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantubicaciones`(vaccion tinyint(2),
vidubicacion int,
vidbarrio int(11),
vdireccion varchar(100),vlatitud varchar(15),vlongitud varchar(15),
vidfila int,vidtabla int)
BEGIN 
CASE vaccion WHEN 1 THEN  
    INSERT INTO ubicaciones VALUES(null,vidbarrio,vdireccion,vlatitud,vlongitud,vidtabla,vidfila);
    SELECT vidfila;
WHEN 2 THEN  
    UPDATE ubicaciones SET idbarrio = vidbarrio,direccion = vdireccion,latitud = vlatitud,longitud = vlongitud
    WHERE idubicacion = vidubicacion;
    SELECT vidfila;
    
WHEN 3 THEN
    DELETE FROM ubicaciones where idubicacion = vidubicacion;
    SELECT vidfila;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantusuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantusuarios`(vaccion tinyint(2),vid int(11),vuser varchar(64),vidTipoUsuario int(3) unsigned,vnombre varchar(100),
vclave varchar(100),vcedula varchar(25),vmail varchar(64),vbcambioPSSW tinyint(2) unsigned,vcodigo varchar(8),vlimite time,vlimite2 time,vidsuc varchar(255),
vidsucursal int(3),vidusuario int(11))
BEGIN 

set vcedula = replace(vcedula,'-','');

   IF (select count(user) from usuarios where user = vuser and id > 0 and id <> vid) > 0 THEN 
 SET @msj = concat('Usuario \',vuser,\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
   END IF; 
  
  IF (select count(id) from usuarios where cedula = vcedula and id > 0 and id <> vid) > 0 THEN 
 	SET @msj = concat('Cédula \',vcedula,\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
   END IF;
   
   IF (vid in(1,2) or (select locate(',',idsucursal) from usuarios where id = vid) ) and vaccion = 3 THEN 
 	SET @msj = concat('Usuario ',vnombre,' no se Puede Eliminar');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
   END IF;
   


CASE vaccion WHEN 1 THEN  
	INSERT INTO usuarios VALUES(null,vuser,vidTipoUsuario,vnombre,md5(aes_encrypt(vclave,'lt6969')),vcedula,vmail,0,null,vlimite,vlimite2,vidsuc);
	SELECT @@identity into vid; 
		
	insert into permisosusuarios
		select null,idpermiso,vid,tipo from permisosusuarios where id = vidtipousuario;

	select vid;
WHEN 2 THEN
	
	UPDATE usuarios SET user = vuser,idTipoUsuario = vidTipoUsuario,nombre = vnombre,
    clave = if(vclave <> '', md5(aes_encrypt(vclave,'lt6969')),clave),cedula = vcedula,mail = vmail,
    bcambioPSSW = vbcambioPSSW,codigo = vcodigo,limite1 = vlimite,limite2 = vlimite2
	WHERE id = vid;

	delete from permisosusuarios where idusuario = vid;

	insert into permisosusuarios
		select null,idpermiso,vid,tipo from permisosusuarios where id = vidtipousuario;
	
	SELECT vid;
WHEN 3 THEN
	select ifnull(min(id),0)-1 from usuarios where id < 0 into @nid;
	UPDATE usuarios set id = @nid where id = vid;
	delete from permisosusuarios where idusuario = vid;
	SELECT vid;
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantvariablesproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantvariablesproducciones`(vaccion tinyint(2),vid int(3),vnombre varchar(45),
vvalor decimal(10,2),vidmoneda tinyint(2),vidusuario int,vidsucursal int)
BEGIN

IF (SELECT count(id) FROM variablesproducciones WHERE nombre = vnombre AND id > 0) > 0 AND vaccion = 1 THEN
   SET @msj = concat('Variable de Producción \'',vnombre,'\' Existente');
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = @msj;
END IF;


CASE vaccion

WHEN 1 THEN

    INSERT INTO variablesproducciones VALUES(null,vnombre,vvalor,vidmoneda);

    SELECT @@identity into @vid;

    INSERT INTO log values(null,169,1,concat('Variable de Producción ',vnombre,' Agregada'),vidusuario,now(),vidsucursal,@vid);
    SELECT @vid;

WHEN 2 THEN

    UPDATE variablesproducciones SET nombre = vnombre,valor = vvalor,idmoneda = vidmoneda

    WHERE id = vid;

    INSERT INTO log values(null,169,2,concat('Variable de Producción ',vnombre,' Actualizada'),vidusuario,now(),vidsucursal,vid);
    SELECT vid;

WHEN 3 THEN

    SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM variablesproducciones INTO @id;

    UPDATE variablesproducciones set id = @id where id = vid;

    INSERT INTO log values(null,169,3,concat('Variable de Producción ',vnombre,' Eliminada'),vidusuario,now(),@id);
    SELECT @id;

END CASE; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantvariablesproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantvariablesproductos`(vaccion tinyint(2),vid int(11),vnombre varchar(45),
vvalor varchar(60),vidproducto int,vidusuario int,vidsucursal int)
BEGIN 
CASE vaccion 
WHEN 1 THEN  
	INSERT INTO variablesproductos VALUES(null,vnombre,vvalor,vidproducto);
	SELECT @@identity INTO @vid;
	INSERT INTO log values(null,193,1,'Variable de producto Nueva: ',vidusuario,now(),vidsucursal,@vid);
	SELECT @vid;
WHEN 2 THEN  
	UPDATE variablesproductos SET nombre = vnombre,valor = vvalor,idproducto = vidproducto
    WHERE id = vid;
	SELECT vid;
	INSERT INTO log values(null,193,2,'Variable de producto actualizada: ',vidusuario,now(),vidsucursal,vid);
	SELECT vid;
WHEN 3 THEN
	UPDATE variablesproductos set id = concat('-',id) where idproducto = vidproducto limit 1000;
	SELECT vidproducto;
	INSERT INTO log values(null,193,3,'Variable eliminada: ',vidusuario,now(),vidsucursal,@id);
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mantwsdls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_mantwsdls`(vaccion tinyint(2),vid int(11),vwsnom varchar(255),vxmlsen varchar(255),vxmlreq varchar(100))
BEGIN 
CASE vaccion WHEN 1 THEN  
	INSERT INTO wsdls VALUES(null,vwsnom,vxmlsen,vxmlreq);
SELECT @@identity;
INSERT INTO log values(null,0,1,'',vidusuario,now());  
WHEN 2 THEN  
	UPDATE wsdls SET wsnom = vwsnom,xmlsen = vxmlsen,xmlreq = vxmlreq
WHERE id = vid;
	SELECT vid;
	
WHEN 3 THEN
	SELECT ifnull(if(min(id)-1 = 0,-1,min(id)-1),-1) FROM wsdls INTO @id;  
	UPDATE wsdls set id = @id where id = vid;
	SELECT @id;
	
END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_movimientosinventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_movimientosinventario`(vaccion TINYINT(2),
vidproducto VARCHAR(45),vidinventario INT(3),
vnewinventario INT(3),vcantidad DECIMAL(12,3),vcomentario VARCHAR(150),vidusuario INT,vidsucursal INT)
BEGIN 
SELECT nombre FROM inventarios WHERE id = vidinventario INTO @inventario;
IF (SELECT COUNT(id) FROM detalleinventarios WHERE idproducto = vidproducto AND idinventario = vidinventario AND id > 0) > 0 AND vaccion = 1 THEN 
    SET @msj = CONCAT('Producto existente en inventario ',@inventario);
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = @msj;
END IF;
SELECT idcuenta FROM inventarios WHERE id = vnewinventario INTO @tmpcta;
SELECT idcuenta FROM defectocuentas WHERE idtipo = 8 AND idfila = 0 LIMIT 1 INTO @cventa;
select idunidad from productos where id = vidproducto into @unid;
set vcantidad = convercion(@unid,vcantidad);
CASE vaccion WHEN 1 THEN
    INSERT INTO detalleinventarios VALUES(NULL,vidinventario,vidproducto,vcantidad);
    SELECT @@identity INTO @id;
    INSERT INTO comentmovinvent VALUES(NULL,@id,vaccion,vcantidad,vcomentario,NOW());
    SELECT concat(format(sum(a.cantidad/b.cantidad),3),' ',b.simbolo) 
    FROM detalleinventarios a join productos c on c.id = a.idproducto 
    join unidades b on b.id = c.idunidad where  a.idproducto = vidproducto;
WHEN 2 THEN
	select count(id) from detalleinventarios WHERE idproducto = vidproducto 
    AND idinventario = vidinventario into @is_new;
    
    if @is_new > 0 THEN
		UPDATE detalleinventarios SET cantidad = cantidad + vcantidad WHERE idproducto = vidproducto
		AND idinventario = vidinventario LIMIT 1;
	ELSE
		INSERT INTO detalleinventarios VALUES(NULL,vidinventario,vidproducto,vcantidad);
	end if;
	
    INSERT INTO comentmovinvent SELECT NULL,id,vaccion,vcantidad,vcomentario,NOW()
    FROM detalleinventarios WHERE idproducto = vidproducto AND idinventario = vidinventario;
    SELECT @@identity INTO @id;
    
    SELECT concat(format(sum(a.cantidad/c.cantidad),3),' ',c.simbolo) ,@id FROM detalleinventarios a
    JOIN productos b ON b.id = a.idproducto join unidades c on c.id = b.idunidad
    WHERE a.idproducto = vidproducto INTO @cantidad,@id;
    SELECT @cantidad,@id;
    INSERT INTO transacciones VALUES(NULL,NOW(),'Entrada de Producto al Inventario',vidusuario,vidsucursal,1,160,@id);
    SELECT @@identity INTO @transaccion;
    CALL sp_mantdetalletransacciones(1,0,@tmpcta,@transaccion,@costo,0,0,
        'Ingreso al Inventario'); 
    CALL sp_mantdetalletransacciones(1,0,@cventa,@transaccion,0,@costo,0,
        'Costo de Venta');
WHEN 3 THEN
    UPDATE detalleinventarios SET cantidad = cantidad - vcantidad WHERE idproducto = vidproducto
    AND idinventario = vidinventario;
    SELECT id FROM detalleinventarios WHERE idproducto = vidproducto AND idinventario = vidinventario INTO @id;
    SELECT concat(format(sum(a.cantidad/c.cantidad),3),' ',c.simbolo) ,@id FROM detalleinventarios a
    JOIN productos b ON b.id = a.idproducto join unidades c on c.id = b.idunidad
    WHERE a.idproducto = vidproducto INTO @cantidad,@id,@costo;
    SELECT @cantidad,@id;
    INSERT INTO transacciones VALUES(NULL,NOW(),'Salida de Producto al Inventario',vidusuario,vidsucursal,1,160,@id);
    SELECT @@identity INTO @transaccion;
    CALL sp_mantdetalletransacciones(1,0,@tmpcta,@transaccion,0,@costo,0,
        'Ingreso al Inventario'); 
    CALL sp_mantdetalletransacciones(1,0,@cventa,@transaccion,@costo,0,0,
        'Costo de Venta'); 
WHEN 4 THEN
    UPDATE detalleinventarios SET cantidad = cantidad - vcantidad WHERE idproducto = vidproducto 
    AND idinventario = vidinventario;
    SELECT COUNT(id) FROM detalleinventarios WHERE idproducto = vidproducto AND idinventario = vnewinventario INTO @exist;
    IF !@exist THEN
        INSERT INTO detalleinventarios VALUES(NULL,vnewinventario,vidproducto,vcantidad);
        SELECT @@identity INTO @iddet;
        INSERT INTO comentmovinvent VALUES(NULL,@iddet,vaccion,vcantidad,vcomentario,NOW());
        SELECT @@identity INTO @id;
    ELSE
        UPDATE detalleinventarios SET cantidad = cantidad + vcantidad WHERE idproducto = vidproducto
        AND idinventario = vnewinventario;
        INSERT INTO comentmovinvent SELECT NULL,id,vaccion,vcantidad,vcomentario,NOW() FROM detalleinventarios
        WHERE idproducto = vidproducto AND idinventario = vnewinventario;
        SELECT @@identity INTO @id;
    END IF;
    SELECT concat(format(sum(a.cantidad/c.cantidad),3),' ',c.simbolo),@id,b.costo*vcantidad FROM detalleinventarios a
    JOIN productos b ON b.id = a.idproducto join unidades c on c.id = c.idunidad
    WHERE a.idproducto = vidproducto INTO @cantidad,@id,@costo;
    SELECT @cantidad,@id;
    SELECT idcuenta FROM inventarios WHERE id = vidinventario INTO @tmpctaold;
    IF @tmpctaold <> @tmpcta THEN
        INSERT INTO transacciones VALUES(NULL,NOW(),'Movimiento de Producto entre Inventarios',vidusuario,vidsucursal,1,160,@id);
        SELECT @@identity INTO @transaccion;
        CALL sp_mantdetalletransacciones(1,0,@tmpcta,@transaccion,@costo,0,0,
        'Ingreso al Inventario'); 
        CALL sp_mantdetalletransacciones(1,0,@tmpctaold,@transaccion,0,@costo,0,
        'Salida del Inventario'); 
    END IF;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_msg0` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_msg0`(vid varchar(20))
BEGIN 

	CASE substring(vid,1,1)
	when '-' then
	
    select concat('<b>',if(a.idtipo = 5,'Nota de Crédito','Nota de Debito'),' Electrónica N° ',
    fe_getnumeracion(vid),'</b>','<br><br>Factura Electrónica: ',fe_getclave(d.id),'<br>Emisor: ',
    b.nombre,', ced.',b.cedula,'<br>Receptor: ',
    if(d.comodin is not null, concat(trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2)),', ced.',c.cedula) 
    ,d.comodin),'<br><br> <a href="https://fe.logintechcr.com/wsdlClient.php?ref=',
    hex(aes_encrypt(concat(fe_getclave(vid),',',b.isPrueba,',',b.user_atv,',',b.pass_atv),'salvenawilly'))
    ,'">Verificar Mensaje Hacienda</a>' ) as body,
    if(b.pfisico <> '',b.pfisico,b.nombre) as Nemp,fe_getnumeracion(vid) as numero
    from estadoscuentas a 
    join facturas d on d.id = a.idfactura
    join sucursales b on d.idsucursal = b.id
    left join clientes c on c.id = d.idcliente
    where a.id = substring(vid,2);
   
   	when '^' THEN
   	
   	select concat('<b>',d.nombre,' N° ',fe_getnumeracion(vid),'</b> <br> <b>Clave Proveedor: </b>',a.referencia,'<br> ','<br><br>Emisor: ',
    b.nombre,', ced.',b.cedula,'<br>Proveedor: ',
    if(a.comodin is not null, concat(trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2)),', ced.',c.cedula) 
    ,a.comodin),'<br><br> <a href="https://fe.logintechcr.com/wsdlClient.php?ref=',
    hex(aes_encrypt(concat(fe_getclave(vid),',',b.isPrueba,',',b.user_atv,',',b.pass_atv),'salvenawilly'))
    ,'">Verificar Mensaje Hacienda</a>' ) as body,
    if(b.pfisico <> '',b.pfisico,b.nombre) as Nemp,fe_getnumeracion(vid) as numero
    from facturas a 
    join sucursales b on a.idsucursal = b.id
    join clientes c on c.id = a.idcliente
    join estadofacturas d on d.id = a.idestado
    where a.id = substring(vid,2);
   	
   	ELSE
   	
   	select idtipoventa from facturas where id = vid into @tv;
   	
   	case @tv 
   	
   	when 3 THEN 
   	
   	select 'Se adjunta Orden de Compra'as body,
    if(b.idtipocliente = 2,if(b.pfisico <> '',b.pfisico,b.nombre),b.nombre) as Nemp,lpad(consecutivo,6,0),'Orden de Compra'
   	from facturas a 
    join sucursales b on a.idsucursal = b.id
    left join clientes c on c.id = a.idcliente
    where a.id = vid;
    
    when 4 THEN 
   	
   	select 'Se Adjunta la Proforma'as body,
    if(b.idtipocliente = 2,if(b.pfisico <> '',b.pfisico,b.nombre),b.nombre) as Nemp,lpad(consecutivo,6,0),'Proforma'
   	from facturas a 
    join sucursales b on a.idsucursal = b.id
    left join clientes c on c.id = a.idcliente
    where a.id = vid;
   
     when 5 THEN 
   	
   	select 'Se Adjunta el Pedido'as body,
    if(b.idtipocliente = 2,if(b.pfisico <> '',b.pfisico,b.nombre),b.nombre) as Nemp,lpad(consecutivo,6,0),'Pedido'
   	from facturas a 
    join sucursales b on a.idsucursal = b.id
    left join clientes c on c.id = a.idcliente
    where a.id = vid;
    
    else
    
   	select concat('<b>Factura Electrónica N° ',fe_getnumeracion(a.id),'</b>','<br><br>Emisor: ',
    b.nombre,', ced.',b.cedula,'<br>Receptor: ',
    if(a.comodin is not null, concat(trim(concat(c.nombre,' ',c.apellido1,' ',c.apellido2)),', ced.',c.cedula) 
    ,a.comodin),'<br><br> <a href="https://fe.logintechcr.com/wsdlClient.php?ref=',
    hex(aes_encrypt(concat(fe_getclave(a.id),',',b.isPrueba,',',b.user_atv,',',b.pass_atv),'salvenawilly'))
    ,'">Verificar Mensaje Hacienda</a>' ) as body,
    if(b.pfisico <> '',b.pfisico,b.nombre) as Nemp,fe_getnumeracion(vid) as numero,'Factura'
    from facturas a 
    join sucursales b on a.idsucursal = b.id
    left join clientes c on c.id = a.idcliente
    where a.id = vid;
    
   	end case;
   	
   	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_proveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_proveedores`()
BEGIN
    SELECT c.id as vid, c.cedula as vcedula,
c.nombre as vnombre, c.apellido1 as vapellido1, c.apellido2 as vapellido2, c.bisnacional as vbisnacional, t.trabajo as vtrabajo,
t.casa as vcasa, t.movil as vmovil, m.correo1 as vcorreo1, m.correo2 as vcorreo2, c.web as vweb, c.idtipocliente as vidtipocliente,
c.idestado as vestado, c.credito as vcredito, c.plazo as vplazo, c.idestadocontable as videstadocontable,
c.fecha_creacion as vfechacreacion, c.idusuario as vidsuario
FROM clientes c
JOIN telefonos t ON c.id = t.idfila
JOIN correos m ON c.id = m.idfila
WHERE bisproveedor = 1 AND c.id = vid
GROUP BY c.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rdo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rdo`(vid int,vidusuario int,
vidsucursal int,vestado tinyint(2))
BEGIN 
	
	select a.idestado from facturas a join tmpcompras b on b.referencia = a.referencia 
	where b.id = vid limit 1 into @stado;
	
	if @stado >= 5 then
	
	 	delete from tmpcompras where id = vid limit 1;
	 	delete from tmpdetallecompras where idfactura = vid limit 1000;
	 
		SET @msj = concat('Documento ',case @stado when 5 then 'Aceptado' when 6 then 'Aceptado Parcial' ELSE
		'Rechazado' end);
    	SIGNAL SQLSTATE '45000'
    	SET MESSAGE_TEXT = @msj;
	end if;
	
	select a.id from clientes a where a.bisproveedor and replace(cedula,'-','') =
	 (select replace(a.cedula,'-','') from tmpprovedores a 
	 join tmpcompras b on a.vid = b.idcliente where b.id = vid limit 1) 
	 limit 1 into @idprov;
	
	if @idprov is null then
		insert into clientes 
		select null,'','',a.nombre,a.cedula,a.tipo,1,1,0,
    	0,0,0,1,'',now(),vidusuario,0,'',vidsucursal,'',1,0,0,'' from tmpprovedores a 
    	join tmpcompras b on a.vid = b.idcliente and b.id = vid limit 1;
    	
    	select @@identity into @idprov;
    	
    	insert into correos
    	select null,@idprov,2,a.correo from tmpprovedores a 
    	join tmpcompras b on a.vid = b.idcliente and b.id = vid limit 1;
    	
    	insert into telefonos
    	select null,2,a.telefono,2,@idprov,c.id from tmpprovedores a 
    	join tmpcompras b on a.vid = b.idcliente and b.id = vid 
    	join paises c on replace(c.codigotel,'+','') = a.pais limit 1;
    	
    	insert into ubicaciones
    	select null,ifnull(f.id,0),'',0,0,2,@idprov from tmpprovedores a 
    	join tmpcompras b on a.vid = b.idcliente and b.id = vid 
    	left join provincias c on c.id = a.provincia 
    	left join cantones d on d.idhacienda = a.canton and d.idprovincia = c.id 
    	left join distritos e on e.idhacienda = a.distrito and e.idcanton = d.id 
    	left join barrios f on f.idhacienda = a.barrio and f.iddistrito = e.id limit 1;
 		
	end if;
	 
	SELECT consecutivo1 FROM consecutivos WHERE idsucursal = vidsucursal INTO @cons;
	update consecutivos set consecutivo1 = consecutivo1+1 where idsucursal = vidsucursal limit 1;
	if (select count(id) from tmpcompras) = 0 then 
		delete from tmpprovedores where 1;
	end if;

	insert into facturas
	select null,2,idtipo,idtipopago,fecha,@idprov,vestado,0,imv,subtotal,exento,descuento,0,0,plazo,
	comentario,referencia,idmoneda,vidusuario,comodin,vidsucursal,@cons,extra,divisa,terminal,7,'',0,0,0
	from tmpcompras where id = vid;
	
	select @@identity into @idfact;

	INSERT INTO log values(null,64,1,concat('Compra : ',@cons),vidusuario,now(),vidsucursal,@idfact); 
	
	insert into detallefacturas
	select null,@idfact,if(a.idunidad <> 'Sp',0,null),
	if(a.idunidad = 'Sp',0,null),
    	null,a.cantidad,a.precio,a.descuento,a.ganancia,a.imv,a.comodin,
    	if(a.idunidad = 'Sp',0,ifnull(b.id,1))
    	,a.idimpuestos,a.iddescuentos,6,0
    	from tmpdetallecompras a 
    	left join unidades b on b.simbolo = a.idunidad
    	where a.idfactura = vid;
    select @idfact;
	
	 
	delete from tmpcompras where id = vid limit 1;
	 delete from tmpdetallecompras where idfactura = vid limit 1000;
	if (select count(id) from tmpcompras) = 0 then 
		delete from tmpprovedores where 1;
	end if;
	 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_reporteFacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_reporteFacturas`(vid int,vidtipoventa int,vidsucursal int,vidcliente int,vidusuario int,vnum1 int,vnum2 int,vdesde date,vhasta date,
vidtipo tinyint(3),vidtipopago tinyint(3))
begin
select a.id,lpad(a.consecutivo,6,0) as consecutivo,a.idtipoventa,a.idtipopago,k.nombre as tipo,date_format(a.fecha,'%Y-%m-%d') as fecha,a.idcliente,
if(a.idcliente != 0,concat(b.nombre,' ',b.apellido1,' ',b.apellido2),a.comodin) as cliente,a.idestado,j.nombre as estado,a.isregistrada,concat(c.simbolo,format(a.imv,2)) as imv,
concat(c.simbolo,format(a.subtotal,2)) as subtotal,if(l.id is null,concat(c.simbolo,format(a.subtotal+a.imv+a.exento-a.descuento+a.flete+a.ajuste,2)),
abs(max(l.debe)-max(l.haber))) as totalfactura,
concat(c.simbolo,format(a.exento,2)) as exento,concat(c.simbolo,format(a.descuento,2)) as descuento,concat(c.simbolo,format(a.flete,2)) as flete,
concat(c.simbolo,format(a.ajuste,2)) as ajuste,a.plazo,a.comentario,a.referencia,d.nombre as usuario,e.nombre as sucursal,
if(f.idservicio is null and f.idpaquete is null,g.id,if(f.idproducto is null and f.idpaquete is null,h.id,i.id)) as idproducto,
if(f.idservicio is null and f.idpaquete is null,g.codigo,if(f.idproducto is null and f.idpaquete is null,h.codigo,i.codigo)) as codigo,
if(f.idservicio is null and f.idpaquete is null,g.codigointerno,if(f.idproducto is null and f.idpaquete is null,h.codigo,i.codigo)) as codigointerno,
if(f.idservicio is null and f.idpaquete is null,g.nombre,if(f.idproducto is null and f.idpaquete is null,h.nombre,i.nombre)) as producto,
f.precio,f.cantidad,format(f.precio*f.cantidad,2) as subtotal,format(f.descuento,2) as descuento,concat(replace(n.valor,'.00',''),'%') as impuesto,
format((f.precio*f.cantidad) / ((f.descuento / 100)+1),2) as total
from facturas a
join clientes b on a.idcliente = b.id
join monedas c on a.idmoneda = c.id
join usuarios d on a.idusuario = d.id
join sucursales e on a.idsucursal = e.id
join detallefacturas f on f.idfactura = a.id
left join productos g on f.idproducto = g.id
left join servicios h on f.idservicio = h.id
left join paquetes i on f.idpaquete = i.id
join estadofacturas j on a.idestado = j.id
join tipofacturas k on  a.idtipo = k.id
left join estadoscuentas l on l.idfactura = a.id
left join defectoimpuestos m on m.id > 0 and m.idfila = 0 and m.idtabla = 64
left join impuestos n on m.idimpuesto = n.id
where if(vidtipoventa <> 0,a.idtipoventa = vidtipoventa,1) and if(vidsucursal <> 0,a.idsucursal = vidsucursal,1) and if(vid <> 0,a.id = vid,1) and
if(vidcliente <> 0,a.idcliente = vidcliente,1) and if(vidusuario <> 0,a.idusuario = vidusuario,1) and 
if(vnum1 <> 0 and vnum2 <> 0,a.id between vnum1 and vnum2,1) and 
if(vdesde <> '1990-01-01' and vhasta <> '1990-01-01',date_format(a.fecha,'%Y-%m-%d') between vdesde and vhasta,1) and if(vidtipo <> 0,a.idtipo = vidtipo,1)
and if(vidtipopago <> 0,a.idtipopago = vidtipopago,1)
group by f.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rganancia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rganancia`(vaccion tinyint(2),vf1 varchar(10),vf2 varchar(10),
vidcliente int,vidfactura int,vidproducto int)
BEGIN

select sum(truncate((a.precio/((a.ganancia/100)+1))*((a.ganancia/100)) * a.cantidad,2)) as ganancia,
a.idfactura,b.consecutivo,if(vaccion in(1,2),sum(a.precio*a.cantidad),b.subtotal+b.imv-b.descuento) as total,
b.flete,b.ajuste,
date_format(b.fecha,'%d/%m/%Y') as fecha,
if(vaccion in(1,2),c.id,'') as idproducto,if(vaccion in(1,2),c.codigo,'') as codigoProducto,if(vaccion in(1,2),c.nombre,'') as producto,
truncate(if(vaccion in(1,2),sum(a.cantidad),''),2) as cantidad_p,
truncate(if(vaccion in(1,2),count(a.idproducto),''),2) as cantidad_v
from detallefacturas a 
join facturas b on a.idfactura  = b.id and b.idtipoventa in(1,6) 
	and if(vidfactura <> 0,b.id = vidfactura,1) 
    and if(vidcliente <> 0,b.idcliente = vidcliente,1) 
join productos c on c.id = a.idproducto and if(vidproducto <> 0,c.id = vidproducto,1)
where if(vf1 = '',1,if(vf2 = '',b.fecha = vf1,b.fecha between vf1 and vf2))
group by case vaccion when 1 then a.id when 2 then a.idproducto when 3 then a.idfactura end;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rgetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rgetAll`(vcedula varchar(20),visprueba tinyint(2))
BEGIN 
	set vcedula = REPLACE(vcedula,'-','');
	
	select 	b.id,b.idtipoventa,b.idtipo,b.idtipopago,b.fecha,b.idcliente,b.idestado,b.isregistrada,b.imv,b.subtotal,
b.exento,b.descuento,b.flete,b.ajuste,b.plazo,b.comentario,b.referencia,b.idmoneda,b.idusuario,b.comodin,
b.idsucursal,b.consecutivo,b.extra,b.divisa,b.terminal,b.feestado,b.idexoneracion,b.mailstatus,
c.id,c.idfactura,c.idproducto,c.codigo,c.cantidad,c.precio,c.descuento,c.imv,c.unidad,
d.vid,d.nombre,d.cedula,d.correo,d.telefono,d.tipo,d.barrio,d.distrito,d.canton,d.provincia,d.pais,
vcedula,a.hashacienda,c.tarifa from recepciones a
	join rfacturas b on a.idfactura = b.id
	join rdetallefacturas c on c.idfactura = b.id
	join rprovedores d on d.vid = b.idcliente
	where a.cedula = vcedula and a.isprueba = visprueba and !a.isin;
	
	update recepciones a set a.isin = 1 
	where a.cedula = vcedula and a.isprueba = visprueba and !a.isin;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rgettemporal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rgettemporal`(vidsucursal int)
BEGIN
	
	select replace(cedula,'-','') from sucursales where id = vidsucursal into @ced;
	
	select b.nombre,date_format(a.fecha,'%d-%m-%Y') as fecha,
	concat(case substring(a.referencia,30,2) when 1 then 'F' when 2 then 'ND' when 4 THEN 'TK' else 'NC' end,'-',
		substring(a.referencia,22,20)),
	concat(c.simbolo,' ',format((a.subtotal+a.exento+a.imv-a.descuento)/a.divisa,2)) as total,a.id 
	from tmpcompras a left join tmpprovedores b on b.vid = a.idcliente 
	join monedas c on c.id = a.idmoneda where replace(a.idsucursal,'-','') = @ced order by a.fecha;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rmantclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rmantclientes`(vnombre varchar(100),vcedula varchar(20),
vcorreo varchar(64),vtelefono varchar(64),vtipo tinyint(2),vbarrio int(3),vdistrito int(3),vcanton int(3),
vprovincia int(3),vpais varchar(4))
BEGIN
	if (select count(vid) from rprovedores where cedula = vcedula) >= 1 then 
		select vid from rprovedores where cedula = vcedula;
	ELSE
		insert into rprovedores values(null,vnombre,vcedula,vcorreo,vtelefono,vtipo,vbarrio,vdistrito,vcanton,
		vprovincia,vpais);
		select @@identity;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rmantdetallefacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rmantdetallefacturas`(vaccion tinyint(2),
vid int(11),vidfactura int(11),vidproducto varchar(255),vcodigo varchar(255),vcantidad varchar(20),
vprecio decimal(23,5),vdesc decimal(23,5),vimv decimal(23,5),vidunidad varchar(100),vtarifa decimal(28,5))
BEGIN 
    INSERT INTO rdetallefacturas VALUES(null,vidfactura,vidproducto,vcodigo,
    vcantidad,vprecio,vdesc,vimv,vidunidad,vtarifa);
    
    select vidfactura;
      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rmantfacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rmantfacturas`(vaccion tinyint(2),vid int(11),
vidtipoventa tinyint(3),vidtipo tinyint(3),vidtipopago tinyint(3),vidcliente int(11),
videstado tinyint(3),visregistrada tinyint(3),vimv decimal(13,5),vsubtotal decimal(23,5) unsigned,
vexento decimal(23,5),vdescuento decimal(23,5),vflete decimal(10,2),vajuste decimal(10,2),
vplazo varchar(45),vcomentario varchar(512),vreferencia varchar(55),vidmoneda varchar(3),
vidusuario int(11),vidsucursal int(3),vcomodin varchar(64),vidodt int, vextra varchar(255),
vextrapagos varchar(64),vfecha datetime,vdivisa decimal(10,2),videxoneracion varchar(512),
trecep tinyint(2),vced varchar(20),isprueba tinyint(2))
BEGIN
	declare idfact int;
	select id from rfacturas where referencia = vreferencia into idfact;
	
	if idfact is null then
		INSERT INTO rfacturas VALUES(null,vidtipoventa,vidtipo,vidtipopago,vfecha,vidcliente,
		videstado,visregistrada,vimv,vsubtotal,vexento,vdescuento,vflete,vajuste,vplazo,vcomentario,
		vreferencia,vidmoneda,vidusuario,vcomodin,vidsucursal,@cons,vextrapagos,vdivisa,1,7,videxoneracion,0);

   		select @@identity into vid;
   		insert into recepciones values(null,vid,vced,vfecha,0,now(),if(trecep = 9,0,trecep),if(trecep = 9,1,0)
   		,isprueba);
		select vid;
	else
		if trecep = 9 then
			update recepciones set hasfe = 1 where idfactura = idfact;
			update rfacturas set idtipo = vidtipo, idtipoventa = vidtipoventa,idtipopago = vidtipopago,
				idestado = videstado,imv = vimv,subtotal=vsubtotal,exento = vexento,descuento=vdescuento,
				plazo=vplazo,comentario=vcomentario,idmoneda=vidmoneda,divisa=vdivisa
				where id = idfact;
			delete from rdetallefacturas where idfactura = idfact;
			select idfact;
		else
			update recepciones set hashacienda = trecep where idfactura = idfact;
			select 0;
		end if;
	end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rrutas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rrutas`(vidopt tinyint,vidruta int,viduser int,
vidcliente int,abono decimal(23,5),vidempresa int)
BEGIN
	case vidopt when 1 then 
	
		if(select count(id) from detallerutas where idfila_enc = viduser and idtabla_enc = 1) then
			update detallerutas set idruta = vidruta where idfila_enc = viduser;
		else
			insert into detallerutas values(null,vidruta,1,viduser,viduser,now(),1,1,0,0,0,0,0,0);
		end if;
		
		select nombre from rutas where id = vidruta into @vnombre; 
		INSERT INTO log values(null,208,1,trim(concat('Inicio Ruta: ', @vnombre)),viduser,now(),vidempresa,vidruta);  

	ELSE
		select 'n/a';
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rutaclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_rutaclientes`(vfiltro VARCHAR(100),vidruta int)
BEGIN
    
    select a.id,trim(concat(a.apellido1,' ',a.apellido2,' ',a.nombre)) as nombre,a.cedula,a.idtipocliente,b.nombre as tipocliente,
a.credito,a.plazo,a.descuentom as maxdescuento,a.codigo,GROUP_concat(c.telefono) as telefonos, GROUP_CONCAT(d.correo) as correos,
getDescuentoCliente(a.id,0) as descuento,g.iddistrito, e.direccion,e.latitud,e.longitud
from clientes a 
join tipoclientes b on b.id = a.idtipocliente
left join telefonos c on c.idfila = a.id and c.idtabla = 2
left join correos d on d.idfila = a.id and d.idtabla = 2
left join ubicaciones e on e.idfila = a.id and e.idtabla = 2
left join barrios g on g.id  = e.idbarrio
join rutaclientes f on f.idcliente = a.id and f.idruta = vidruta
where !a.bisproveedor and a.id > 0 GROUP by a.id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_savetoprod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_savetoprod`(vidproducto int,vidmarca int,vminimo int(9),vmaximo int(9),vdescuento decimal(6,2) unsigned,
vganancia decimal(5,2),vidusuario int,vidsucursal int)
BEGIN

UPDATE productos 
SET 
    idmarca = vidmarca,
    minimo = vminimo,
    maximo = vmaximo,
    maxdescuento = vdescuento,
    ganancia = vganancia
WHERE
    id = vidproducto;
UPDATE detalleinventarios SET idinventario = 6 WHERE idproducto = vidproducto AND idinventario = 7;
SELECT nombre FROM productos WHERE id = vidproducto into @producto;
INSERT INTO log values(null,11,2,concat('Cambio de receta a producto final: ',@producto),vidusuario,now(),vidsucursal,@vid);
select vidproducto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_searchCuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_searchCuenta`(vvariable varchar(100),vfiltro tinyint(2) unsigned)
begin

SELECT 
        RPAD(`cuentas`.`numero`, 10, 0) AS `Cuenta`,
        `cuentas`.`nombre` AS `nombre`,
        if(valor < 0,concat('(',FORMAT(`cuentas`.`valor`, 2),')'),FORMAT(`cuentas`.`valor`, 2)) AS `Valor`,
        id as id
    FROM
        `cuentas`
    WHERE
        !ispadre and if(vfiltro = 1,(numero = vvariable or nombre like concat('%',vvariable,'%')),
        case vfiltro when 2 then valor = vvariable when 3 then valor >= vvariable else valor <= vvariable end)
    ORDER BY `cuentas`.`numero`;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_searchFactInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_searchFactInsumo`(vid varchar(64),vempresa int,
vidcliente int,vtipo int(3),vidinv int)
begin 
 
    DECLARE desc_total decimal(5,2) default 0;
    set @cas = substring(vid,1,2);
    if @cas = '[S' THEN set @cas = 'S-'; end if;
    
    case @cas
    when 'S-' then
        if substring(vid,1,2) = '[S' then
            select substring(vid,8) into vid;
        else
            select substring(vid,3) into vid;
        end if;
        
       select id from servicios where (codigo = vid or nombre = vid) and find_in_set(vempresa,idsucursal)
       and id > 0 limit 1 into vid;
        
        SELECT concat('-',`s`.`id`) AS `vid`,CONCAT('S-', `s`.`codigo`) AS `vcodigo`,
        CONCAT('[SERV] ', 
        replace(replace(replace(replace(replace(`s`.`nombre`,
            '%MES%',upper(date_format(curdate(),'%M'))),
            '%ANO%',date_format(curdate(),'%Y')),
            '%DIA%',date_format(curdate(),'%d')),
            '%TRI%',quarter(curdate())),
            '%HOY%',date_format(curdate(),'%d-%m-%Y'))) AS `vnombre`,
        if(m.principal,`s`.`precio`,s.precio*m.valor) AS `vprecio`,
        '∞' AS `vcantidad`,ifnull(a.valor,0) as vdescuento,
        0 AS idimv,'' as impuesto,0 as valor,s.exento as exo,0 as resumen,pfactura as vclip,100 as vmaxdesc,
        ifnull(b.idinventario,0) as inventario,ifnull(c.idbodega,0) as bodega,0,
        if(LOCATE('%',s.nombre) or s.servprofesional,1,'') as comodin,
        s.servprofesional,0 as isheredado,1 as isvariable,0,0,'',0 as comision,s.idmoneda,0
        FROM servicios s
        left join detalledescuentos a on idtabla = 16 and idfila = vid
        left join detalleinventarios b on b.idproducto = concat('-',vid)
        left join inventarios c on c.id = b.idinventario
        join monedas m on m.id = s.idmoneda
        WHERE s.id = vid group by s.id limit 1;
    when 'P-' then
        SELECT concat('+',`q`.`id`) AS `vid`,CONCAT('P-', `q`.`id`) AS `vcodigo`,
        CONCAT('[PCK] ', `q`.`nombre`) AS `vnombre`,
        FORMAT((`q`.`total` / ((`q`.`descuento` / 100) + 1)),2) AS `vprecio`,
        '∞' AS `vcantidad`,
        CONCAT('P+', `q`.`id`) AS `vhcodigo`,
        ifnull((select sum(valor) as imp from impuestos where idtabla = 58 and idfila = vid),0) as vimv,0
        FROM `paquetes` `q`
        WHERE `q`.`id` = vid;
    else
        if vid <> '' THEN

            select if(count(id) = 1,id,0) from productos where codigo = vid and id > 0 and idsucursal = vempresa  
            into @vid;
            
            if @vid = 0 then 
                select if(count(a.id) = 1,a.id,0) from productos a 
                left join marcas b on b.id = a.idmarca
                where if(b.id is not null,if(@cas = 'R-',concat('R-',trim(concat(b.nombre,' ',a.nombre))) = vid,
                concat(a.nombre,' ',b.nombre) = vid),if(@cas = 'R-',concat('R-',a.nombre),a.nombre) = vid) 
            and a.id > 0 and a.idsucursal = vempresa into @vid;
            end if;
            
            if @vid = 0 then
                select if(count(id) = 1,id,0) from productos where codigointerno = vid and id > 0
                and idsucursal = vempresa into @vid;
            end if;
            set vid = @vid;
        ELSE
            set vid = 0;
        end if;

        select c.id,c.idbodega
        from productos a
        join detalleinventarios b on b.idproducto = a.id
        join inventarios c on b.idinventario = c.id and c.id = vidinv
        where a.id = vid and c.idsucursal in (vempresa,-1) limit 1
        into @inventario,@bodega;
        
        select idnivel from clientes where id=vidcliente into @nivel;
        
        select if(vtipo in(2,3),b.precio+b.imv/b.cantidad-b.descuento/b.cantidad,
        if(vidcliente = 0,null,b.precio+b.imv/b.cantidad)) as costo 
        from facturas a 
        join detallefacturas b on b.idfactura = a.id and b.idproducto = vid
        where a.idcliente = vidcliente and a.idsucursal = vempresa 
        order by a.id desc limit 1 into @last_costo;

        select if(lastmemory or vtipo = 2,@last_costo,null) from ajustessucursales 
       	where idsucursal = vempresa into @last_costo;
        select idtiponegocio from sucursales where id = vempresa into @BUSS;
		
        SELECT `a`.`id` AS `v100.00id`,`a`.`codigo` AS `vcodigo`,if(c.id is not null,
        if(@cas = 'R-',concat(`c`.`nombre`,' ',a.nombre),concat(`a`.`nombre`,' ',c.nombre)),a.nombre) AS `vnombre`,
        if(vtipo not in(2,3),truncate(ifnull(@last_costo,ifnull(i.venta,ifnull(j.venta,a.venta))),5),
        truncate(ifnull(@last_costo,a.costo),5))*if(vtipo in(2),1,if(k.principal,1,k.valor)) AS `vprecio`,
        truncate(if(b.cantidad is null,0,if(a.idheredado,
        (select cantidad/q.cantidad from detalleinventarios where idproducto = a.idheredado limit 1) / a.cantequiv,
        b.cantidad/q.cantidad) ),3) AS `vcantidad`,
        desc_total as vdecuento,
        ifnull(f.idimpuesto,e.idimpuesto) as idimv,
        ifnull(h.nombre,g.nombre) as impuesto,
        ifnull(h.valor,g.valor) as valor,
        if(ifnull(i.exoneracion,ifnull(max(f.exoneracion),e.exoneracion)) >= a.exoneracion,
        ifnull(i.exoneracion,ifnull(max(f.exoneracion),e.exoneracion)),a.exoneracion) as exo,
        ifnull(h.resumen,g.resumen) as resumen,
        0 as vclip,
        a.maxdescuento as vmaxdesc,
        @inventario,
        @bodega,
        a.idunidad, 
        if(@cas = 'R-',1,'') as comodin, 
        0 as servprofesional,a.idheredado as isheredado,
        a.isvariable as isvariable,a.isinventariado,a.isgravamen,
        q.simbolo,a.comision,a.idmoneda,a.divisa
        FROM `productos` `a`
        LEFT JOIN `detalleinventarios` `b` ON `b`.`idproducto` = `a`.`id` and b.idinventario = vidinv
        left join defectoimpuestos d on d.id > 0
        left join defectoimpuestos e on d.id = e.id and e.idtabla = 11 and !e.idfila
        left join defectoimpuestos f on d.id = f.id and f.idtabla = 11 and f.idfila = a.id
        left join impuestos g on g.id = e.idimpuesto and g.id > 0
        left join impuestos h on h.id = f.idimpuesto and f.id > 0
        left join precioxclientes i on i.idcliente = vidcliente and i.identrada = vid and i.idtipoentrada = 1
        left join nivelproductos j on j.identrada = a.id and j.idtipoentrada = 1 and j.idnivel = @nivel
        join monedas k on k.id = a.idmoneda
        join unidades q on q.id = a.idunidad
        left join marcas c on a.idmarca = c.id
        WHERE `a`.`id` = vid
        GROUP BY idimv
        HAVING idimv is not null;
    end case;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_searchfactproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_searchfactproductos`(vidcliente int,
vidsucursal int,vcodigo varchar(64))
BEGIN
	if substring(vcodigo,1,2) <> 'S-' then 

	select a.id,a.codigo,a.nombre,if(c.id is null,a.costo,max(b.precio)) as costo,
    e.idbodega,e.id,replace(d.cantidad,'.00','')
    from productos a 
    left join detallefacturas b on b.idproducto = a.id
    left join facturas c on c.id = b.idfactura and c.idtipoventa = 2
    and c.idcliente = vidcliente and c.idsucursal = vidsucursal
    join detalleinventarios d on a.id = d.idproducto
    join inventarios e on e.id = d.idinventario
	where a.codigo = vcodigo order by c.fecha desc limit 1;  

    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_syncClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_syncClientes`(vaccion tinyint(3),vid int,vnombre varchar(255),
vcedula varchar(20),vidtipo int,
vcorreo varchar(62),vtelefono varchar(22),vdireccion varchar(255),viddistrito varchar(15),vlatitud varchar(15),
vlongitud varchar(15),vcredito decimal(10,2),
vplazo int,vdescuento decimal(5,2),vmaxdescuento decimal(5,2),vidruta int)
BEGIN
    declare USR         int default 0;
    declare idubicacion int default 0;
    declare idcorreo    int default 0;
    declare idtelefono  int default 0;
    
    start TRANSACTION;
    
    select idusuario,id from detallerutas where id = vidruta into USR;
    
    if vidtipo = 2 THEN
        set @apellido2 = '';
        set @apellido1 = '';
        set @nombre = vnombre;
    else 
        select substring_index(vnombre,' ',-1) as apellido2,
        substring_index(substring_index(vnombre,' ',-2),' ',1) as apellido1,
        substring(vnombre,1,locate(substring_index(substring_index(vnombre,' ',-2),' ',1),vnombre)-2) as nombre
        into @apellido2,@apellido1,@nombre;
    end if;
        
    call sp_mantclientes(vaccion,vid,@apellido1,@apellido2,@nombre,vcedula,vidtipo,'1','0','0',vcredito,vplazo,
    '1','1','',USR,vmaxdescuento,'','',concat(999,vidruta),vid);
    
    
    if vaccion <> 1 THEN
        select b.idtelefono,c.idcorreo,d.idubicacion 
        from clientes a join telefonos b on b.idfila =a.id and b.idtabla = 2
        join correos c on c.idfila = a.id and c.idtabla = 2
        join ubicaciones d on d.idfila = a.id and d.idtabla = 2 where a.id = 4
        into idtelefono,idcorreo,idubicacion;
    end if;
    
    call sp_mantcorreos(vaccion,vcorreo,vid,2);
    call sp_manttelefonos(vaccion,vtelefono,vid,2);
    select id from barrios where iddistrito = viddistrito and nombre = 'N/A' into @barrio;
    call sp_mantubicaciones(vaccion,idubicacion,@barrio,vdireccion,vlatitud,vlongitud,vid,2);
    
    commit;
    
    select vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_unidadheredada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_unidadheredada`(vid int)
begin

select id,concat(nombre,' (',simbolo,')')
from unidades
where id > 0
and idtipo in(1,3);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_variospagos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_variospagos`(vlista varchar(500),
vmonto decimal(10,2),vidusuario int,vidpago int)
BEGIN
declare salida varchar(255) default '';
declare vidfactura int;
declare vtp int;
declare vsaldo decimal(10,2);
declare vvalor decimal(10,2);
declare vidcuenta int;

insert into pagosvarios values(null,now());
select @@identity into @idvarios;

vpagos : loop

if(!locate(',',vlista) or vmonto <= 0) then
 leave vpagos;
end if;

set vidfactura = substring_index(vlista,',',1);
set vlista = substring(vlista,locate(',',vlista)+1);
set vtp = (select idtipoventa from facturas where id = @idfactura);
set vsaldo = (select abs(max(debe)-max(haber)) from estadoscuentas where idfactura = @idfactura);

if(vsaldo is not null) then

set vmonto = vmonto - vsaldo;

if(vmonto > 0) then 
	set vvalor = vsaldo;
else
	set vvalor = vmonto;
end if;

insert into estadoscuentas
select null,if(vtp=1,3,4),1,vidfactura,vidusuario,now(),@valor,if(vtp=1,debe,debe+vvalor),
if(vtp=1,haber+vvalor,haber),0,vidpago,0,'Pago Varias',1,7
from estadoscuentas where idfactura = vidfactura;

select @@identity into vidcuenta;

insert into detallepagosvarios values(null,vidvarios,vidcuenta);

set vmonto = vmonto;
end if;

end loop;

select vidvarios,if(vmonto > 0,vmonto,0) as vuelto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vcierrespendientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vcierrespendientes`(viduser INT)
BEGIN


CREATE TEMPORARY TABLE IF NOT EXISTS temp_table
AS (SELECT 
        COUNT(`a`.`id`) AS `contador`,
        DATE_FORMAT(`a`.`fecha`, '%Y-%m-%d') AS `fecha`,
        `a`.`idusuario` AS `idusuario`
    FROM
        `facturas` `a`
    WHERE
        `a`.`isregistrada` = 0
            AND `a`.`idtipoventa` in (1,7)
                AND `a`.`idusuario` = viduser
    GROUP BY DATE_FORMAT(`a`.`fecha`, '%Y-%m-%d')) UNION (SELECT 
        COUNT(`b`.`id`) AS `id`,
        DATE_FORMAT(`b`.`fecha`, '%Y-%m-%d') AS `fecha`,
        `b`.`idusuario` AS `idusuario`
    FROM
        `estadoscuentas` `b`
    WHERE
        `b`.`isregistrada` = 0
            AND `b`.`idtipo` IN (3 , 4, 5, 6)
                AND `b`.`idusuario` = viduser
    GROUP BY DATE_FORMAT(`b`.`fecha`, '%Y-%m-%d'));
SELECT SUM(`contador`) AS `pendientes`,`fecha` 
FROM `temp_table`
GROUP BY `fecha`
ORDER BY `fecha` DESC;
DROP TABLE IF EXISTS temp_table;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vclientes`(vid INT,vpag TINYINT(2),
vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN 
DECLARE lim1 INT;
DECLARE lim2 INT;
 
SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @filtro;
SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @isproveedor;
SELECT substring_index(substring_index(vfiltro,',',3),',',-1) INTO @idsucursal;
IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(count(id)/10,2),'.00','') AS count 
    FROM clientes 
    WHERE id > 0 AND IF(@filtro <> '', nombre LIKE concat('%',@filtro,'%'),1) AND bisproveedor = @isproveedor
    AND find_in_set(idsucursal,concat(-1,',',@idsucursal));
ELSE
	SET lim1 = substr(vlimit,1,locate(',',vlimit)-1);
	SET lim2 = substr(vlimit,locate(',',vlimit)+1);

    SELECT c.id AS vid,c.cedula,trim(concat(c.nombre,' ',ifnull(c.apellido1,''),' ',ifnull(c.apellido2,''))) AS nombre,0,
    concat(IFNULL(t1.telefono,'--'),' || ',ifnull(t2.telefono,'--'),' || ',ifnull(t3.telefono,'--')) AS telefonos,
    ifnull(o.correo,''),IF(c.credito = 0 OR c.credito = '','Contado','Crédito') AS tipocliente,0,0,0,0,0,0,0,0,0,0,0,c.codigo
    FROM clientes c
    LEFT JOIN telefonos t1 ON t1.idfila = c.id AND t1.idtabla = 2 AND t1.idtipotel = 1
    LEFT JOIN telefonos t2 ON t2.idfila = c.id AND t2.idtabla = 2 AND t2.idtipotel = 2
    LEFT JOIN telefonos t3 ON t3.idfila = c.id AND t3.idtabla = 2 AND t3.idtipotel = 3
    LEFT JOIN correos o ON o.idfila = c.id AND o.idtabla = 2
    WHERE c.id > 0 AND c.bisproveedor = @isproveedor AND IF(@filtro <> '',c.nombre LIKE concat('%',@filtro,'%') 
    OR REPLACE(c.cedula,'-','') LIKE concat('%',@filtro,'%'),1) AND find_in_set(idsucursal,concat(-1,',',@idsucursal))
    GROUP BY c.id ORDER BY c.nombre LIMIT lim1,lim2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vclientesxcategorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vclientesxcategorias`(vidnivel int(10))
BEGIN
select a.nombre as categoria, CONCAT(b.nombre,' ',b.apellido1,' ',b.apellido2) AS nombre, b.cedula from nivelesclientes a 
join clientes b on a.id= b.idnivel where a.id= vidnivel;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vcuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vcuentas`()
BEGIN

    SELECT 
        RPAD(`cuentas`.`numero`, 10, 0) AS `Cuenta`,
        `cuentas`.`nombre` AS `nombre`,
        IF((`cuentas`.`valor` < 0),
            CONCAT('(',
                    FORMAT((`cuentas`.`valor` * -(1)), 2),
                    ')'),
            FORMAT(`cuentas`.`valor`, 2)) AS `Valor`,
        `cuentas`.`id` AS `id`
    FROM
        `cuentas`
    WHERE
        (`cuentas`.`ispadre` = 0)
    ORDER BY `cuentas`.`numero`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vdefectocuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vdefectocuentas`()
BEGIN
 SELECT 
        `a`.`id` AS `id`,
        `a`.`idcuenta` AS `idcuenta`,
        `b`.`nombre` AS `nombre`,
        `c`.`id` AS `idtipo`,
        `c`.`nombre` AS `tipo`
    FROM
        ((`defectocuentas` `a`
        JOIN `cuentas` `b` ON ((`b`.`id` = `a`.`idcuenta`)))
        JOIN `tipocuentas` `c` ON ((`a`.`idtipo` = `c`.`id`)))
    WHERE
        (`a`.`idfila` = 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vdetalledescuentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vdetalledescuentos`(vidempresa int,
vidfila varchar(100),vidtabla varchar(100))
BEGIN
   
    select a.iddescuento,a.valor,concat(b.nombre,' - ',a.valor,'%'), if(a.idfila=0,1,0) as isglobal
    from detalledescuentos a join descuentos b on b.id = a.iddescuento and b.idsucursal = vidempresa
    where find_in_set(a.idfila,vidfila) and find_in_set(a.idtabla,vidtabla)
    group by b.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vdetalleprocesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vdetalleprocesos`(vid int)
begin

SELECT 
    d.id, p.nombre, concat(replace(d.cantidad,'.00',''),' ',u.nombre)
FROM
    detalleprocesos d
        JOIN
    productos p ON d.idproducto = p.id
        JOIN
    unidades u ON p.idunidad = u.id
WHERE
    d.idproceso = vid;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vdetalleproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vdetalleproducciones`(vid int,vidproceso int)
begin

SELECT 
        `d`.`id` AS `id`,
        `r`.`id` AS `idproceso`,
        `r`.`nombre` AS `proceso`,
        `d`.`idtareaproduccion` AS `idtarea`,
        `t`.`nombre` AS `nombre`,
        `d`.`idlineaproduccion` AS `idlinea`,
        concat(`t`.`hombre`,' (',`u`.`simbolo`,')') AS `duracionhombre`,
        concat(`t`.`maquina`,' (',`u`.`simbolo`,')') AS `duracionmaquina`,
        `t`.`bandejas` as `bandejas`,
        `d`.`orden` AS `orden`
    FROM
        `detallelineas` `d`
        JOIN `tareaproducciones` `t` ON `d`.`idtareaproduccion` = `t`.`id`
        JOIN `lineaproducciones` `l` ON `d`.`idlineaproduccion`
        JOIN `unidades` `u` ON `u`.`id` = `t`.`idunidad1` and `u`.`id` = `t`.`idunidad2`
        JOIN `productos` `r` ON `l`.`idproceso` = `r`.`id`
    WHERE
        (`d`.`idlineaproduccion` > 0 AND `d`.`idlineaproduccion` = vid AND `l`.`idproceso` = vidproceso)
    ORDER BY `d`.`orden`;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vdetallerecetas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vdetallerecetas`(vid int)
begin

SELECT 
    d.id, p.nombre, concat(replace(d.cantidad,'.00',''),' ',u.nombre)
FROM
    detallerecetas d
        JOIN
    productos p ON d.idproducto = p.id
		JOIN
	unidades u ON p.idunidad = u.id
WHERE
    d.idreceta = vid;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vdetwsdl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vdetwsdl`(vwsdl int)
BEGIN
    select `production`.`detallewsdls`.`iddetwsdl` AS `iddetwsdl`,`production`.`detallewsdls`.`detalle` AS `detalle`,
    if((substring_index(`production`.`detallewsdls`.`valordetwsdl`,':',1) = ''),
    convert(date_format(curdate(),substr(replace(`production`.`detallewsdls`.`valordetwsdl`,'+','%'),2)) using utf8mb4),
    `production`.`detallewsdls`.`valordetwsdl`) AS `valordetwsdl`,`production`.`detallewsdls`.`idwsdl` AS `idwsdl` 
    from `production`.`detallewsdls` 
    where idwsdl = vwsdl;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vpaquetes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vpaquetes`(vid INT,vpag TINYINT(2),vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN
DECLARE lim1 INT;
DECLARE lim2 INT;
SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @det;
SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @idsucursal;
if vpag = 1 then
	select count(id) from paquetes where id > 0 and  find_in_set(idsucursal,concat(-1,',',@idsucursal));
else
	if @det = 0 then
		select a.id,a.codigo,a.nombre,concat(a.descuento,'%') as descuento,concat(b.simbolo,format(a.total,2)) as total,
		format(a.total*(1-(a.descuento/100)),2) as stotal,
		concat(b.simbolo,' ',format(a.total*(1-(a.descuento/100)),2)) as ftotal
		from paquetes a
		join monedas b on a.idmoneda = b.id
		where if(vid = 0,a.id > 0,a.id = vid) and  find_in_set(a.idsucursal,concat(-1,',',@idsucursal));
	else
		set lim1 = substr(vlimit,1,locate(',',vlimit)-1);
		set lim2 = substr(vlimit,locate(',',vlimit)+1);
		select a.idpaquete,a.idproducto,a.idservicio,
		if(a.idservicio = 0,b.nombre,c.nombre) as fprecio,
		concat(a.cantidad,f.simbolo),a.idunidad,'' as simbolo,
		format(if(a.idservicio = 0,b.venta*((sum(h.valor)/100)+1),c.precio),2) as precio
		from detallepaquetes a
		left join productos b on a.idproducto = b.id
		left join servicios c on a.idservicio = c.id
		left join monedas d on b.idmoneda = d.id
		left join monedas e on c.idmoneda = e.id
		left join unidades f on b.idunidad = f.id
        join paquetes i on a.idpaquete = i.id
		left join defectoimpuestos g on g.idfila in(b.id,0) and g.idtabla = 11 
		join impuestos h on h.id = g.idimpuesto
		where if(vid != 0,a.idpaquete = vid,1) and  find_in_set(i.idsucursal,concat(-1,',',@idsucursal)) group by b.id limit lim1,lim2;
	end if;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vpermisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vpermisos`(vtipo tinyint(2),vopcion int)
BEGIN
	case vtipo 
	when 0 then 
	
		select a.id,b.codigo,b.id,b.nombre,a.tipo 
		from permisosusuarios a 
		join permisos b on b.id = a.idpermiso 
		join permisosCliente c on c.codigo = b.codigo and c.isvisible
		where a.idusuario = vopcion GROUP by b.id;
		
	when 1 then
	
		select a.id,b.codigo,b.id,b.nombre,a.tipo 
		from permisostipousuario a 
		join permisos b on b.id = a.idpermiso 
		join permisosCliente c on c.codigo = b.codigo and c.isvisible
		where a.idtipoUsuario = vopcion GROUP by b.id;
    
	else
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'VALOR INCORRECTO';
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vprocesos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vprocesos`(vid INT,vpag TINYINT(2),vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN
DECLARE lim1 INT;
DECLARE lim2 INT;
IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(COUNT(a.id)/10,2),'.00','') AS count
    FROM productos a
    JOIN detalleinventarios b ON b.idproducto = a.id
    WHERE a.id > 0 AND a.idmarca <> 0 AND b.idinventario = 7 AND nombre LIKE CONCAT('%',vfiltro,'%');
ELSE
    SET lim1 = SUBSTR(vlimit,1,LOCATE(',',vlimit)-1);
    SET lim2 = SUBSTR(vlimit,LOCATE(',',vlimit)+1);
    SELECT p.id AS idproceso,p.nombre AS proceso,p.codigo AS codigo,p.venta as precioventa,concat(m.simbolo,p.venta) AS sprecioventa,
    p.costo AS preciocosto,concat(m.simbolo,p.costo) as spreciocosto
    FROM productos p
    JOIN detalleinventarios d ON d.idproducto = p.id AND d.idinventario = 7 
    JOIN inventarios i ON d.idinventario = i.id
    JOIN monedas m on p.idmoneda = m.id
    WHERE d.idinventario = 7 AND p.id > 0 AND IF(vid != 0,p.id = vid,1) AND IF(vfiltro <> '',p.nombre LIKE CONCAT('%',vfiltro,'%')
    OR p.codigo LIKE CONCAT('%',vfiltro,'%'),1) GROUP BY p.id
    ORDER BY p.nombre LIMIT lim1,lim2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vprocwithline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vprocwithline`(vnombre varchar(45),vac tinyint(2))
BEGIN
IF vac = 0 THEN
    SELECT REPLACE(TRUNCATE(COUNT(a.id)/10,2),'.00','') AS count
    FROM productos a
    JOIN detalleinventarios b ON b.idproducto = a.id
    JOIN lineaproducciones c ON c.idproceso = a.id
    WHERE a.id > 0 AND b.idinventario = 7 AND nombre LIKE CONCAT('%',vnombre,'%');
ELSEIF vac = 1 THEN
    SELECT p.nombre,NULL
    FROM productos p
    JOIN detalleinventarios d ON d.idproducto = p.id AND d.idinventario = 7
    JOIN lineaproducciones c ON c.idproceso = p.id
    JOIN inventarios i ON d.idinventario = i.id
    WHERE d.idinventario = 7 AND p.id > 0 AND IF(vnombre <> '',p.nombre LIKE CONCAT('%',vnombre,'%'),1) GROUP BY p.id
    ORDER BY p.nombre LIMIT 10;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vproduccprodservs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vproduccprodservs`(vid INT,vac TINYINT(2),vfiltro VARCHAR(45))
BEGIN

IF vac = 1 THEN
    (SELECT a.nombre AS nombre,NULL
    FROM productos a
    JOIN detalleinventarios b ON b.idproducto = a.id
    JOIN inventarios c ON b.idinventario = c.id
    WHERE a.id > 0 AND c.idcuenta = 50 AND a.nombre LIKE CONCAT('%',vfiltro,'%') ORDER BY a.nombre)
    UNION
    (SELECT CONCAT('[SERV] ',s.nombre,' - ¢',FORMAT(s.pbase * s.pganancia,2)) AS nombreprecio,NULL
    FROM servicios s
    JOIN detalleinventarios b ON b.idproducto = s.id
    JOIN inventarios c ON b.idinventario = c.id
    WHERE s.id > 0 AND c.idcuenta = 50 AND s.nombre LIKE CONCAT('%',vfiltro,'%') ORDER BY s.nombre);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vproductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vproductos`(vid INT,vpag TINYINT(2),vfiltro VARCHAR(45),vlimit VARCHAR(10))
begin 
DECLARE lim1 INT;
DECLARE lim2 INT;

SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @filtro;
SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @sucursal;

IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(COUNT(a.id)/10,2),'.00','') AS count 
    FROM productos a left join marcas b on b.id = a.idmarca 
    WHERE a.id > 0 AND (a.nombre like concat('%',@filtro,'%') 
    OR a.codigo LIKE concat(@filtro,'%') OR
    a.codigointerno LIKE concat('%',@filtro,'%') OR b.nombre LIKE concat('%',@filtro,'%'))
    and find_in_set(a.idsucursal,concat(-1,',',@sucursal));
ELSE
    SET lim1 = SUBSTR(vlimit,1,LOCATE(',',vlimit)-1);
    SET lim2 = SUBSTR(vlimit,LOCATE(',',vlimit)+1);

    SELECT p.id AS vid,p.codigo AS vcodigo,p.codigointerno AS vcodigointerno,
    trim(concat(p.nombre,' ',ifnull(m.nombre,''))) AS vnombre,d.cantidad,
    concat(o.simbolo,' ',FORMAT(p.costo/p.divisa,2)) AS costo,
    concat(o.simbolo,' ',
        FORMAT(((p.venta)),2)) AS venta,
    concat(FORMAT((p.ganancia*100)/if(!p.costo,1,p.costo),2),'% ') AS ganancia,
    p.divisa as vdivisa
    FROM productos p
    LEFT JOIN marcas m ON p.idmarca = m.id AND m.id <> 0
    LEFT JOIN tipos t ON m.idtipo = t.id
    LEFT JOIN familias f ON t.idfamilia = f.id
    JOIN usuarios s ON p.idusuario = s.id
    JOIN monedas o ON p.idmoneda = o.id
    join detalleinventarios d on d.idproducto = p.id and d.idinventario = 6
    WHERE p.id > 0 AND IF(vid != 0,p.id = vid,1) AND IF(@filtro <> '',p.nombre 
    LIKE concat('%',@filtro,'%') OR p.codigo LIKE concat(@filtro,'%') OR
    p.codigointerno LIKE concat('%',@filtro,'%') OR m.nombre LIKE concat('%',@filtro,'%'),1) 
    and if(@sucursal = -1,1,find_in_set(p.idsucursal,concat(-1,',',@sucursal)))
    GROUP BY p.id
    ORDER BY p.nombre LIMIT lim1,lim2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vproductosenventa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vproductosenventa`(vacc tinyint(2),vword varchar(45),vid int)
BEGIN

if vacc = 1 then    
    select nombre,null from productos a
    join detalleinventarios b on b.idproducto = a.id
    where a.id > 0 and b.idinventario = 6 and a.nombre like concat('%',vword,'%');
elseif vacc = 2 then    
    select a.id,a.nombre,a.codigo,a.codigointerno,a.costo,a.ganancia,a.venta from productos a
    join detalleinventarios b on b.idproducto = a.id
    where a.id > 0 and b.idinventario = 6;
else 
    select a.id,a.nombre,a.codigo,a.codigointerno,a.costo,a.ganancia,a.venta from productos a
    join detalleinventarios b on b.idproducto = a.id
    where a.id > 0 and b.idinventario = 6 and a.id = vid;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vproductosproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vproductosproducciones`()
BEGIN

select a.id,a.codigo,a.nombre,format(a.costo,2) as precio,a.unidad,b.idinventario,c.nombre as inventario,replace(b.cantidad,'.00','') as cantidad
from productos a
join detalleinventarios b on d.idproducto = a.id
join inventarios c on b.idinventario = c.id and c.idcuenta = 50;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vproductosservicios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vproductosservicios`(vid INT,vtipo TINYINT(2),vautocomplete tinyint(2),vword varchar(45),vidsucursal int)
BEGIN
IF vautocomplete = 0 then
    (SELECT p.id,p.codigo,p.nombre,CONCAT(p.nombre,' - ',d.simbolo,' ',FORMAT(p.venta*((sum(c.valor)/100)+1),2)) AS nombreprecio,
    p.venta AS precio, (sum(c.valor)/100)+1 as impuesto
    FROM productos p 
	left join defectoimpuestos b on b.idfila in(p.id,0) and b.idtabla = 11 
	join impuestos c on c.id = b.idimpuesto
	join monedas d on d.id = p.idmoneda
    WHERE p.id > 0 AND IF(vtipo = 1,p.id = vid,IF(vtipo = 2,NULL,1)) and find_in_set(p.idsucursal,concat(-1,',',vidsucursal))
    GROUP BY p.id
    ORDER BY p.nombre)
    UNION
    (SELECT CONCAT('-',s.id) AS id,s.codigo,s.nombre,CONCAT('[SERV] ',s.nombre,' - ¢',FORMAT(s.pbase * s.pganancia,2)) AS nombreprecio,
    TRUNCATE(s.pbase * s.pganancia,2) AS precio,0 as impuesto
    FROM servicios s
    WHERE s.id > 0 AND IF(vtipo = 2,s.id = vid,IF(vtipo = 1,NULL,1)) and find_in_set(s.idsucursal,concat(-1,',',vidsucursal))
    ORDER BY s.nombre);
ELSE
	(SELECT CONCAT(p.nombre,' - ',d.simbolo,' ',FORMAT(p.venta*((sum(c.valor)/100)+1),2)) AS nombreprecio,
    NULL AS img
    FROM productos p 
	left join defectoimpuestos b on b.idfila in(p.id,0) and b.idtabla = 11 
	join impuestos c on c.id = b.idimpuesto
	join monedas d on d.id = p.idmoneda
    WHERE p.id > 0 and find_in_set(p.idsucursal,concat(-1,',',vidsucursal))
    GROUP BY p.id
    HAVING nombreprecio LIKE concat('%',vword,'%')
    ORDER BY p.nombre)
    UNION
    (SELECT CONCAT('[SERV] ',s.nombre,' - ¢',FORMAT(s.pbase * s.pganancia,2)) AS nombreprecio,
    NULL as img
    FROM servicios s
    WHERE s.id > 0 AND s.nombre LIKE concat('%',vword,'%') and find_in_set(s.idsucursal,concat(-1,',',vidsucursal))
    ORDER BY s.nombre);
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vproveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vproveedores`(vid INT,vpag TINYINT(2),vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN
DECLARE lim1 INT;
DECLARE lim2 INT;
SET lim1 = SUBSTR(vlimit,1,LOCATE(',',vlimit)-1);
SET lim2 = SUBSTR(vlimit,LOCATE(',',vlimit)+1);

IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(COUNT(id)/10,2),'.00','') AS count FROM clientes WHERE id > 0 AND bisproveedor = 1;
ELSE
    SELECT c.id AS vid,c.cedula,CONCAT(c.nombre,' ',c.apellido1,' ',c.apellido2) AS nombre,0,
    CONCAT(IFNULL(t1.telefono,'--'),' || ',IFNULL(t2.telefono,'--'),' || ',IFNULL(t3.telefono,'--')) AS telefonos,
    o.correo,IF(c.credito = 0 OR c.credito = '','Contado','Crédito') AS tipocliente,0,0,0,0,0,0,0,0,c.codigo
    FROM clientes c
    LEFT JOIN telefonos t1 ON t1.idfila = c.id AND t1.idtabla = 2 AND t1.idtipotel = 1
    LEFT JOIN telefonos t2 ON t2.idfila = c.id AND t2.idtabla = 2 AND t2.idtipotel = 2
    LEFT JOIN telefonos t3 ON t3.idfila = c.id AND t3.idtabla = 2 AND t3.idtipotel = 3
    LEFT JOIN correos o ON o.idfila = c.id AND o.idtabla = 2
    WHERE c.id > 0 AND bisproveedor = 1 AND c.nombre LIKE CONCAT('%',vfiltro,'%') OR REPLACE(c.cedula,'-','') LIKE CONCAT('%',vfiltro,'%') 
    OR c.cedula LIKE CONCAT('%',vfiltro,'%') 
    GROUP BY c.id ORDER BY c.nombre LIMIT lim1,lim2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vruteros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vruteros`(vid int,vidmovimiento tinyint(2))
BEGIN
    
    select a.id,concat(b.nombre,' (',c.nombre,')') from detallerutas a
	join rutas b on a.idruta = b.id
	join usuarios c on a.idfila_enc = c.id
    where b.id > 0 and a.id > 0 and if(vid <> -1,b.id = vid,1)
    order by b.nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vservicios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vservicios`(vid INT,vpag TINYINT(2),vfiltro VARCHAR(45),vlimit VARCHAR(10))
BEGIN
 
DECLARE lim1 INT;
DECLARE lim2 INT;

SELECT substring_index(substring_index(vfiltro,',',1),',',-1) INTO @filtro;
SELECT substring_index(substring_index(vfiltro,',',2),',',-1) INTO @sucursal;

IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(COUNT(id)/10,2),'.00','') AS count 
    FROM servicios WHERE id > 0 AND nombre like concat('%',@filtro,'%')
    and find_in_set(@sucursal,idsucursal);
ELSE
SET lim1 = SUBSTR(vlimit,1,LOCATE(',',vlimit)-1);
SET lim2 = SUBSTR(vlimit,LOCATE(',',vlimit)+1);
 SELECT 
        s.id AS id,s.codigo AS codigo,s.nombre AS nombre,CONCAT(m.simbolo,' ', FORMAT(s.precio, 2)) AS precio,
        (CASE s.periodo
            WHEN 0 THEN 'N/A'
            WHEN 1 THEN 'Diario'
            WHEN 2 THEN 'Mensual'
            WHEN 3 THEN 'Anual'
            WHEN 4 THEN CONCAT(s.dias, ' días')
        END) AS periodo,
        IF((s.idproveedor = 0),'N/A',CONCAT(p.nombre,' ',p.apellido1,'',p.apellido2)) AS outsourcing
    FROM
        servicios s
        LEFT JOIN clientes p ON s.idproveedor = p.id AND p.bisproveedor = 1
        join monedas m on m.id = s.idmoneda
    WHERE
        s.id > 0 and if(@sucursal = -1,1,find_in_set(@sucursal,s.idsucursal)) AND
        IF(vid != 0,s.id = vid,1) AND IF(@filtro <> '',s.nombre LIKE concat('%',@filtro,'%') 
        OR s.codigo LIKE concat('%',@filtro,'%'),1) 
    ORDER BY s.nombre  LIMIT lim1,lim2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vtareaproducciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vtareaproducciones`(vid int,vpag tinyint(2),vfiltro varchar(45),vlimit varchar(10))
BEGIN
DECLARE lim1 INT;
DECLARE lim2 INT;
IF vpag = 1 THEN
    SELECT REPLACE(TRUNCATE(COUNT(id)/10,2),'.00','') AS count FROM tareaproducciones WHERE id > 0 AND nombre LIKE CONCAT('%',vfiltro,'%');
ELSE
    SET lim1 = SUBSTR(vlimit,1,LOCATE(',',vlimit)-1);
    SET lim2 = SUBSTR(vlimit,LOCATE(',',vlimit)+1);
    SELECT a.id AS id,a.nombre AS nombre,CONCAT(a.hombre, ' (', b.simbolo, ')') AS hombre,CONCAT(a.maquina, ' (', b.simbolo, ')') AS maquina,a.bandejas AS bandejas
    FROM tareaproducciones a
    JOIN unidades b ON a.idunidad1 = b.id AND b.idtipo = 2
    JOIN unidades c ON a.idunidad2 = c.id AND c.idtipo = 2
    WHERE a.id > 0 AND IF(vid != 0,a.id = vid,1) AND IF(vfiltro <> '',a.nombre LIKE CONCAT('%',vfiltro,'%'),1)
    GROUP BY a.id ORDER BY a.nombre LIMIT lim1,lim2;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vtipousuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vtipousuarios`(vid int)
BEGIN
SELECT a.id,a.nombre,a.defecto,a.bincierre
FROM tipousuarios a
WHERE a.id > 0 AND a.nombre <> '' AND IF(vid <> 0,a.id = vid,1)
ORDER BY a.defecto DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vunidad`(vtipo varchar(100))
BEGIN
	select
    `production`.`unidades`.`id` AS `idunidad`,
    concat(
        `production`.`unidades`.`nombre`,
        ' (',
        `production`.`unidades`.`simbolo`,
        ')'
    ) AS `nombre`,
    `production`.`unidades`.`simbolo` AS `simbolo`,
    `production`.`unidades`.`idtipo` AS `idtipo`
from
    `production`.`unidades` where if(vtipo = 0,1,find_in_set(idtipo,vtipo))
    order by idunidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vusercierre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vusercierre`(vid int)
BEGIN
SELECT
b.bincierre
FROM
usuarios a
JOIN
tipousuarios b ON a.idtipousuario = b.id
WHERE
a.id > 0 AND a.id = vid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vusuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vusuarios`(vidsucursal int)
BEGIN 
	select idtiponegocio from sucursales where id = vidsucursal into @buss;
    select
    u.id AS Id,
    u.user AS Usuario,
    u.nombre AS Nombre,
    u.cedula AS Cedula,
    u.mail AS Correo,
    t.nombre AS `Tipo Usuario`,
    if( ( u.idTipoUsuario <> 1 ), date_format( u.limite1,'%h:%i:%s %p'),'--') AS `Hora Entrada`,
    if( ( u.idTipoUsuario <> 1 ), date_format( u.limite2,'%h:%i:%s %p'),'--') AS `Hora Salida`,
    aes_decrypt(u.clave,'lt2016') AS pssw
from
    production.usuarios u join production.tipousuarios t on t.id = u.idTipoUsuario
where u.id > 1 and (find_in_set(vidsucursal,u.idsucursal) or if(@buss = 1,0,locate(-1,u.idsucursal)))
order by
    u.user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vwsdl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_vwsdl`()
BEGIN
    select `m`.`id` AS `id`,`w`.`wsurl` AS `wsurl`,`w`.`xmlsen` AS `xmlsen`,`w`.`xmlreq` AS `xmlreq`,`w`.`wsid` AS `idwsdl`,
    `w`.`obtener` AS `obtener`,`w`.`wsname` AS `wsname` 
    from (`production`.`wsdls` `w` join `production`.`monedas` `m` on((`m`.`wsdl` = `w`.`wsid`)))
    where m.id > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_v_all_locates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`itech01`@`localhost` PROCEDURE `sp_v_all_locates`(vid int,vtipo int)
BEGIN
	IF vtipo = 1 AND vid <> 0 THEN
		SELECT 
        1 AS `tipo`,
        `p`.`id` AS `id`,
        `p`.`nombre` AS `nombre`,
        0 AS `anterior`
    FROM
        `provincias` `p`
	WHERE
		`p`.`id` = vid;
    END IF;
    
    IF vtipo = 2 AND vid <> 0 THEN
		SELECT 
        2 AS `tipo`,
        `c`.`id` AS `id`,
        `c`.`nombre` AS `nombre`,
        `c`.`idprovincia` AS `anterior`
    FROM
        `cantones` `c`;
    END IF;
    
    IF vtipo = 2 AND vid <> 0 THEN
		SELECT 
        3 AS `tipo`,
        `d`.`id` AS `id`,
        `d`.`nombre` AS `nombre`,
        `d`.`idcanton` AS `anterior`
    FROM
        `distritos` `d`;
    END IF;
    
IF vtipo = 0 AND vid = 0 THEN
    
		(SELECT 
			1 AS `tipo`,
			`p`.`id` AS `id`,
			`p`.`nombre` AS `nombre`,
			0 AS `anterior`
		FROM
			`provincias` `p`
		) UNION (SELECT 
			2 AS `tipo`,
			`c`.`id` AS `id`,
			`c`.`nombre` AS `nombre`,
			`c`.`idprovincia` AS `anterior`
		FROM
			`cantones` `c`) UNION (SELECT 
			3 AS `tipo`,
			`d`.`id` AS `id`,
			`d`.`nombre` AS `nombre`,
			`d`.`idcanton` AS `anterior`
		FROM
			`distritos` `d`);        
END IF;

END ;;
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

-- Dump completed on 2019-06-12  8:36:32
-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: production
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tablas`
--

DROP TABLE IF EXISTS `tablas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablas`
--

LOCK TABLES `tablas` WRITE;
/*!40000 ALTER TABLE `tablas` DISABLE KEYS */;
INSERT INTO `tablas` VALUES (196,'accesos'),(15,'ajustes'),(40,'ajustessucursales'),(171,'asignarinventarios'),(202,'bancos'),(84,'barrios'),(41,'bodegas'),(404,'cajainicialusuarios'),(9,'cantones'),(314,'cierrecajas'),(2,'clientes'),(160,'comentmovinvent'),(252,'consecutivos'),(17,'correos'),(36,'cuentas'),(50,'datosempresa'),(88,'defectocuentas'),(87,'defectoimpuestos'),(94,'descuentos'),(203,'detallebancos'),(272,'detalleboletas'),(79,'detalledescuentos'),(407,'detalledevoluciones'),(65,'detallefacturas'),(97,'detalleinventarios'),(166,'detallelineas'),(59,'detallepaquetes'),(120,'detalleprocesos'),(150,'detalleproducciones'),(217,'detallerutas'),(3,'detalletelefonos'),(101,'detallewsdls'),(408,'devoluciones'),(144,'dias'),(10,'distritos'),(68,'estadoclientes'),(141,'estadodescuentos'),(301,'estadoscuentas'),(176,'etapasproducciones'),(210,'eventos'),(195,'facturaimpresiones'),(64,'facturas'),(20,'familias'),(179,'fe_getdocumentos'),(216,'flotillas'),(118,'gastos'),(258,'getCostoTmp'),(18,'getMail'),(19,'getPhone'),(92,'getUbication'),(80,'impuestoproductos'),(51,'impuestos'),(49,'imvproductos'),(188,'integraciones'),(111,'inventarios'),(915,'laboratorio.ciclos'),(937,'laboratorio.datosCiclos'),(936,'laboratorio.datosExtras'),(900,'laboratorio.explantes'),(904,'laboratorio.fincas'),(908,'laboratorio.getDataVariedad'),(902,'laboratorio.getFincas'),(907,'laboratorio.inventariolaboratorios'),(930,'laboratorio.pruebasqos'),(927,'laboratorio.rb_investadisticas'),(922,'laboratorio.referencias'),(903,'laboratorio.regiones'),(911,'laboratorio.relaciones'),(932,'laboratorio.soluciones'),(933,'laboratorio.sp_copyDetSol'),(926,'laboratorio.sp_getactivosciclos'),(923,'laboratorio.sp_getBaseMC'),(921,'laboratorio.sp_getcomponentexmedio'),(910,'laboratorio.sp_getDataVariedades'),(938,'laboratorio.sp_getdatosextra'),(934,'laboratorio.sp_getexplantes'),(941,'laboratorio.sp_getfrascos'),(909,'laboratorio.sp_getinventarios'),(920,'laboratorio.sp_getmediocultivo'),(916,'laboratorio.sp_getreferencias'),(906,'laboratorio.sp_getServicio'),(924,'laboratorio.sp_getvariedadciclo'),(918,'laboratorio.sp_mantbasesoluciones'),(940,'laboratorio.sp_mantdatosCiclos'),(939,'laboratorio.sp_mantdatosExtras'),(919,'laboratorio.sp_mantdetallebasesoluciones'),(901,'laboratorio.sp_mantFincas'),(925,'laboratorio.sp_mantinvestadisticas'),(931,'laboratorio.sp_mantpruebasciclos'),(929,'laboratorio.sp_mantpruebasqos'),(905,'laboratorio.sp_mantRegiones'),(943,'laboratorio.sp_manttipoinvestats'),(914,'laboratorio.sp_procesarCiclos'),(912,'laboratorio.sp_vciclos'),(935,'laboratorio.sp_vgetOpcionesCiclo'),(928,'laboratorio.sp_vqos'),(917,'laboratorio.sp_vreactivoscomponentes'),(942,'laboratorio.tipociclos'),(913,'laboratorio.tipoinvestats'),(401,'libre1'),(128,'lineaproducciones'),(279,'log'),(91,'mantmonedas'),(22,'marcas'),(143,'meses'),(23,'modelos'),(54,'monedas'),(69,'nivelesclientes'),(105,'nivelproductos'),(227,'odtpresupuestos'),(226,'odts'),(55,'ordenestrabajos'),(267,'pagosvarios'),(209,'paises'),(58,'paquetes'),(249,'permisostipousuario'),(248,'permisosusuarios'),(164,'precioxclientes'),(224,'presupuestos'),(177,'produccioninventarios'),(11,'productos'),(104,'proveedorproductos'),(8,'provincias'),(251,'registroSQL'),(800,'restaurantes.mesas'),(805,'restaurantes.sp_getbarras'),(804,'restaurantes.sp_getfamilias'),(801,'restaurantes.sp_getmesas'),(802,'restaurantes.sp_getproductos'),(803,'restaurantes.sp_loadmesa	'),(806,'restaurantes.tempbarras'),(281,'rubros'),(219,'rutaclientes'),(284,'rutaregiones'),(208,'rutas'),(63,'searchclient'),(6,'searchInsums'),(16,'servicios'),(174,'serviciosproducciones'),(0,'Sistema'),(137,'sp_auth'),(163,'sp_cambiarfactura'),(46,'sp_cambioclave'),(146,'sp_cambiodia'),(250,'sp_cambiounidad'),(214,'sp_cargarcuentas'),(213,'sp_cargardetallecuentas'),(411,'sp_cargarproductoxinventario'),(512,'sp_cargar_descargar_productos'),(302,'sp_Cargar_fac_Notas'),(232,'sp_changePassword'),(56,'sp_changepssw'),(189,'sp_cierrexusuarios'),(31,'sp_clientes'),(42,'sp_configEmpresa'),(154,'sp_convert'),(222,'sp_detalleruta'),(303,'sp_detalle_nota'),(276,'sp_dodev'),(145,'sp_editardescuentos'),(129,'sp_filterlineaprod'),(96,'sp_filterpacks'),(93,'sp_filterproducts'),(98,'sp_filterservices'),(25,'sp_filtrarproductos'),(259,'sp_flushOrden'),(29,'sp_gclientes'),(85,'sp_generatetransac'),(186,'sp_getabonosnotas'),(283,'sp_getarrgeneral'),(412,'sp_getbodegas'),(275,'sp_getboletas'),(410,'sp_getCantidadProductos'),(192,'sp_getcierrexusuario'),(220,'sp_getclientesruta'),(286,'sp_getcolordays'),(71,'sp_getCuenta'),(242,'sp_getcxcrutas'),(200,'sp_getdefectoimpuestos'),(152,'sp_getdescuentoproducto'),(142,'sp_getdescuentos'),(204,'sp_getDetalleBanco'),(127,'sp_getdetalleinventario'),(119,'sp_getdetalleprocesos'),(207,'sp_getdettran'),(406,'sp_getdevoluciones'),(211,'sp_getevent'),(72,'sp_getFactura'),(183,'sp_getFacturasCierre'),(231,'sp_getFomatPago'),(236,'sp_getGeneralMail'),(513,'sp_getimpinvruta'),(240,'sp_getImpRutas'),(109,'sp_getImpuestos'),(245,'sp_getInfo'),(287,'sp_getinroute'),(511,'sp_getinventarioruta'),(223,'sp_getInventario_ruta'),(187,'sp_getlistacxc'),(158,'sp_getListaFacturas'),(161,'sp_getListaProductosFactura'),(285,'sp_getlrclientes'),(270,'sp_getmargenes'),(311,'sp_getmdetallefactura'),(409,'sp_getmdevoluciones'),(244,'sp_getmsj'),(201,'sp_getnivelcliente'),(185,'sp_getNotasAbonosCierre'),(228,'sp_getodt'),(157,'sp_getordencompras'),(246,'sp_getPermisosUsuarios'),(241,'sp_getPreciosClienteRuta'),(110,'sp_getpreciosproductos'),(165,'sp_getprecprodxcli'),(225,'sp_getPresupuesto'),(257,'sp_getPreventas'),(139,'sp_getprocesos'),(221,'sp_getprodruta'),(151,'sp_getproducciones'),(83,'sp_getproductos'),(510,'sp_getproductoxinventario'),(212,'sp_getReporteCliente'),(308,'sp_getreporteproductos'),(206,'sp_getRuta'),(234,'sp_getSSE'),(155,'sp_getSucursales'),(156,'sp_getsucursalfactura'),(147,'sp_gettareas'),(197,'sp_gettareasxproceso'),(233,'sp_getUserLogin'),(230,'sp_getVariosPagos'),(175,'sp_globalme'),(113,'sp_gproductos'),(30,'sp_gproveedores'),(153,'sp_impuestoproductos'),(253,'sp_iscaja'),(116,'sp_isproduccion'),(304,'sp_log'),(215,'sp_login'),(47,'sp_mantajustes'),(124,'sp_mantbodegas'),(273,'sp_mantboletas'),(172,'sp_mantclientes'),(37,'sp_mantcuentas'),(86,'sp_mantdefectoimpuestos'),(82,'sp_mantdescuentos'),(274,'sp_mantdetalleboletas'),(190,'sp_mantdetallecierres'),(95,'sp_mantdetalledescuentos'),(67,'sp_mantdetallefacturas'),(131,'sp_mantdetallelineas'),(61,'sp_mantdetallepaquetes'),(121,'sp_mantdetalleprocesos'),(149,'sp_mantdetalleproducciones'),(235,'sp_mantdinformativas'),(300,'sp_mantestadoscuentas'),(66,'sp_mantfacturas'),(106,'sp_mantfamilias'),(52,'sp_mantfechafiscal'),(307,'sp_mantganancias'),(117,'sp_mantgastos'),(81,'sp_mantimpuestoproductos'),(48,'sp_mantimpuestos'),(125,'sp_mantinventarios'),(255,'sp_mantinvmovimientos'),(24,'sp_mantjerarquia'),(132,'sp_mantlineaproducciones'),(136,'sp_mantmarcas'),(108,'sp_mantnivelproductos'),(268,'sp_mantpagosvarios'),(60,'sp_mantpaquetes'),(162,'sp_mantprecioxclientes'),(148,'sp_mantproducciones'),(178,'sp_mantproduccioninventarios'),(78,'sp_mantproductos'),(181,'sp_mantreporteclientes'),(271,'sp_mantreportecontas'),(277,'sp_mantreportecostos'),(269,'sp_mantreportecxcs'),(167,'sp_mantreporteFacturas'),(254,'sp_mantreporteinventarios'),(282,'sp_mantrubros'),(173,'sp_mantserviciosproducciones'),(133,'sp_manttareaproducciones'),(44,'sp_manttipoasientos'),(45,'sp_manttipocuentas'),(135,'sp_manttipos'),(170,'sp_mantvariablesproducciones'),(194,'sp_mantvariablesproductos'),(114,'sp_movimientosinventario'),(112,'sp_movinvent'),(73,'sp_msg0'),(32,'sp_proveedores'),(266,'sp_rdo'),(265,'sp_rgettemporal'),(278,'sp_rrutas'),(237,'sp_rutaclientes'),(122,'sp_savetoprod'),(53,'sp_searchCuenta'),(43,'sp_searchFactInsumo'),(140,'sp_searchfactproductos'),(243,'sp_syncClientes'),(205,'sp_validarFactura'),(229,'sp_variospagos'),(313,'sp_vcargarcuentas'),(182,'sp_vcierrespendientes'),(76,'sp_vclientes'),(309,'sp_vclientesxcategorias'),(33,'sp_vcuentas'),(89,'sp_vdefectocuentas'),(115,'sp_vdetalledescuentos'),(138,'sp_vdetalleproducciones'),(130,'sp_vdetallerecetas'),(103,'sp_vdetwsdl'),(62,'sp_vpaquetes'),(247,'sp_vpermisos'),(99,'sp_vprocesos'),(400,'sp_vprocwithline'),(199,'sp_vproduccprodservs'),(14,'sp_vproductos'),(198,'sp_vproductosenventa'),(77,'sp_vproductosservicios'),(306,'sp_vproveedores'),(218,'sp_vruteros'),(13,'sp_vservicios'),(180,'sp_vtareaproducciones'),(310,'sp_vtimpuesto'),(402,'sp_vtipousuarios'),(12,'sp_vunidad'),(403,'sp_vusercierre'),(7,'sp_vusuarios'),(102,'sp_vwsdl'),(39,'sucursales'),(70,'tablas'),(951,'tajetas'),(507,'taller.boletas'),(508,'taller.gasolinacantidades'),(500,'taller.marcavehiculos'),(501,'taller.modelovehiculos'),(506,'taller.sp_getmecanicos'),(505,'taller.sp_getservicios'),(504,'taller.sp_getvehiculos'),(509,'taller.sp_vboletas'),(502,'taller.tipovehiculos'),(503,'taller.vehiculos'),(134,'tareaproducciones'),(238,'telefonos'),(514,'temp_inventariorutas'),(305,'tipoacciones'),(35,'tipoasientos'),(90,'tipociclos'),(5,'tipoclientes'),(38,'tipocontable'),(34,'tipocuentas'),(123,'tipodeclaraciones'),(312,'tipodevoluciones'),(126,'tipoexoneraciones'),(168,'tipofacturas'),(159,'tipoimpresiones'),(405,'tipomonedas'),(256,'tipomovimientos'),(26,'tipopagos'),(184,'tiporecibosimpre'),(21,'tipos'),(4,'tipotelefonos'),(27,'tipousuarios'),(57,'tipoventas'),(262,'tmpcompras'),(280,'tmpcuentaspagos'),(263,'tmpdetallecompras'),(260,'tmpdetallefacturas'),(261,'tmpfacturas'),(264,'tmpprovedores'),(239,'ubicaciones'),(107,'unidades'),(191,'unidadeshacienda'),(1,'usuarios'),(169,'variablesproducciones'),(193,'variablesproductos'),(100,'wsdls');
/*!40000 ALTER TABLE `tablas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `codigointerno` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  UNIQUE KEY `codigointerno_UNIQUE` (`codigointerno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (1,'Inicio','0','0','main'),(2,'Área Comercial','1','1','comercial'),(3,'Clientes','11','11','clientes'),(4,'Agregar Cliente','111','111','clientes?add=true'),(5,'Ventas','12','12','facturacion?tf=1'),(6,'Ver Facturas','121','121','facturacion?accion=8&tf=1'),(7,'Rutas','13','13','rutas'),(8,'Cotizaciones','14','14','facturacion?tf=4'),(9,'Ver Cotizaciones','141','141','facturacion?accion=8&tf=4'),(10,'Pedidos','15','15','facturacion?tf=5'),(11,'Ver pedidos','151','151','facturacion?accion=8&tf=5'),(12,'Reportes Comercial','16','16','reportes?tr=1'),(13,'Área de Operaciones','2','2','proveedor'),(14,'Proveedores','21','21','proveedores'),(15,'Agregar Proveedor','211','211','proveedores?add=true'),(16,'Compras','22','22','facturacion?tf=2'),(17,'Ver compras','221','221','facturacion?accion=8&tf=2'),(18,'Orden de Compra','23','23','facturacion?tf=3'),(19,'Ver ordenes compras','231','231','facturacion?accion=8&tf=3'),(20,'Reportes Operaciones','24','24','reportes?tr=2'),(21,'Área Financiera','3','3','financiero'),(22,'Contabilidad','31','31','contabilidad'),(23,'Cuentas','311','311','contabilidad?cuentas=true'),(24,'Realizar Transacción','312','312','contabilidad?realizar=true'),(25,'Ver transacciones','313','313','contabilidad?ver=true'),(26,'Presupuestos','32','32','presupuesto'),(27,'Cuentas por cobrar','33','33','cuentas?tf=2'),(28,'Cuentas por pagar','34','34','cuentas?tf=1'),(29,'Notas de crédito y débito','35','35','notas'),(30,'Devoluciones','36','36',NULL),(31,'Reportes Financiera','37','37','reportes?tr=3'),(32,'Regalías','38','38',NULL),(33,'Área de inventarios','4','4','inventario'),(34,'Inventarios','41','41','inventarios'),(35,'Productos','42','42','productos?pr=true'),(37,'Servicios','421','421','productos?sr=true'),(38,'Paquetes','422','422','productos?pq=true'),(39,'Agregar paquete','4231','4231','productos?addpq=true'),(40,'Reportes Inventarios','43','43','reportes'),(41,'Área administrativa','5','5','administracion'),(42,'Configuración','51','51','ajustes'),(43,'Empresa','511','511',NULL),(44,'Descuentos','512','512',NULL),(45,'Impuestos','513','513',NULL),(46,'Cuentas contables','514','514',NULL),(47,'Sucursales','515','515',NULL),(48,'Bodegas','516','516',NULL),(49,'Producción','517','517',NULL),(50,'Usuarios','52','52','usuarios'),(51,'Mantenimiento','521','521',NULL),(52,'Permisos','522','522',NULL),(53,'Historial','523','523',NULL),(54,'Reportes configuración','53','53',''),(55,'Agregar producto','4211','4211','productos?addpr=true'),(56,'Agregar servicio','4221','4221','productos?addsr=true');
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadopresupuestos`
--

DROP TABLE IF EXISTS `estadopresupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadopresupuestos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadopresupuestos`
--

LOCK TABLES `estadopresupuestos` WRITE;
/*!40000 ALTER TABLE `estadopresupuestos` DISABLE KEYS */;
INSERT INTO `estadopresupuestos` VALUES (1,'Pendiente'),(2,'Aprobado'),(3,'Terminado'),(4,'Rechazado'),(5,'Segmentado');
/*!40000 ALTER TABLE `estadopresupuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadofacturas`
--

DROP TABLE IF EXISTS `estadofacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadofacturas` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadofacturas`
--

LOCK TABLES `estadofacturas` WRITE;
/*!40000 ALTER TABLE `estadofacturas` DISABLE KEYS */;
INSERT INTO `estadofacturas` VALUES (5,'Aceptación'),(6,'Aceptación Parcial'),(3,'Anulada'),(4,'Cerrada'),(2,'Editada'),(7,'Rechazo'),(1,'Tramitada');
/*!40000 ALTER TABLE `estadofacturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuestos`
--

DROP TABLE IF EXISTS `impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impuestos` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `resumen` varchar(10) DEFAULT NULL,
  `valor` decimal(6,2) NOT NULL,
  `idhacienda` tinyint(3) DEFAULT 1,
  `idsucursal` int(11) DEFAULT -1,
  `isporcentual` tinyint(2) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuestos`
--

LOCK TABLES `impuestos` WRITE;
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
INSERT INTO `impuestos` VALUES (1,'Impuesto General Sobre las Ventas','IM.V',13.00,1,-1,1),(2,'Impuesto Selectivo de Consumo','I.S.C.B.A',0.00,2,-1,1),(3,'Impuesto Único a los Combustibles','I.U.C',0.00,3,-1,1),(4,'Impuesto Específico a Bebidas Alcohólicas','I.E.C',0.00,4,-1,1),(5,'Impuesto Específico sobre las Bebidas Envasadas sin Contenido Alcóholico y Jabónes de Tocador','I.B.E',0.00,5,-1,1),(6,'Impuestos a los Productos de Tabaco','I.P..T',23.39,6,-1,0),(7,'Impuesto a los Servicios','I.S',10.00,7,-1,1),(8,'Impuesto General a las Ventas Diplomáticos','IM.V.D',0.00,8,-1,1),(9,'Impuesto General sobre Ventas compras autorizadas','IM.V.C.A',0.00,9,-1,1),(10,'Impuesto General sobre las ventas instituciones publicas y otros organismos','IM.V.I.P',0.00,10,-1,1),(11,'Impuesto Selectivo de consumo compras autorizadas','I.S.C.C.A',0.00,11,-1,1),(12,'Impuesto Especifico al Cemento','I.E.C',0.00,12,-1,1);
/*!40000 ALTER TABLE `impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoacciones`
--

DROP TABLE IF EXISTS `tipoacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoacciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoacciones`
--

LOCK TABLES `tipoacciones` WRITE;
/*!40000 ALTER TABLE `tipoacciones` DISABLE KEYS */;
INSERT INTO `tipoacciones` VALUES (2,'Actualizar'),(4,'Autenticar'),(3,'Eliminar'),(1,'Insercion');
/*!40000 ALTER TABLE `tipoacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoakeys`
--

DROP TABLE IF EXISTS `tipoakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoakeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(2) DEFAULT NULL,
  `descripcion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoakeys`
--

LOCK TABLES `tipoakeys` WRITE;
/*!40000 ALTER TABLE `tipoakeys` DISABLE KEYS */;
INSERT INTO `tipoakeys` VALUES (1,'1','Mensualidad'),(2,'6','Semestre'),(3,'3','Trimestre'),(4,'4','Cuatrimestre'),(5,'12','Anualidad'),(6,'0','Sucursal'),(7,'0','Regalía'),(8,'0','N/A');
/*!40000 ALTER TABLE `tipoakeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoasientos`
--

DROP TABLE IF EXISTS `tipoasientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoasientos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `base` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoasientos`
--

LOCK TABLES `tipoasientos` WRITE;
/*!40000 ALTER TABLE `tipoasientos` DISABLE KEYS */;
INSERT INTO `tipoasientos` VALUES (1,'Ingreso Operacional',3),(2,'Ventas Netas',3),(3,'Costo Venta',5),(4,'Mercancía Disponible a la Venta',5),(5,'Gasto Operacional',4),(6,'Gasto Ventas',4),(7,'Ingreso no Operacional',3),(8,'Impuestos',2),(9,'Materia Prima Directa',5),(10,'Mano Obra Directa',5),(11,'Costo Indirecto de Fabricación',5);
/*!40000 ALTER TABLE `tipoasientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipociclos`
--

DROP TABLE IF EXISTS `tipociclos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipociclos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipociclos`
--

LOCK TABLES `tipociclos` WRITE;
/*!40000 ALTER TABLE `tipociclos` DISABLE KEYS */;
INSERT INTO `tipociclos` VALUES (5,'Anual'),(3,'Diario'),(1,'Entre Fechas'),(4,'Inactivo'),(2,'Mensual'),(6,'Quicenal'),(0,'Sin limite');
/*!40000 ALTER TABLE `tipociclos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoclientes`
--

DROP TABLE IF EXISTS `tipoclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoclientes` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `new_tablecol_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoclientes`
--

LOCK TABLES `tipoclientes` WRITE;
/*!40000 ALTER TABLE `tipoclientes` DISABLE KEYS */;
INSERT INTO `tipoclientes` VALUES (4,'DIMEX'),(1,'Físico'),(2,'Jurídico'),(3,'NITE');
/*!40000 ALTER TABLE `tipoclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocontable`
--

DROP TABLE IF EXISTS `tipocontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocontable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `bisactivo` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocontable`
--

LOCK TABLES `tipocontable` WRITE;
/*!40000 ALTER TABLE `tipocontable` DISABLE KEYS */;
INSERT INTO `tipocontable` VALUES (1,'Activo Corriente',1),(2,'Activo No Corriente',1),(3,'Patrimonio Neto',0),(4,'Pasivo Corriente',0),(5,'Pasivo No Corriente',0);
/*!40000 ALTER TABLE `tipocontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocuentas`
--

DROP TABLE IF EXISTS `tipocuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocuentas`
--

LOCK TABLES `tipocuentas` WRITE;
/*!40000 ALTER TABLE `tipocuentas` DISABLE KEYS */;
INSERT INTO `tipocuentas` VALUES (1,'Clientes Colones'),(2,'Clientes Dólares'),(3,'Cuentas por Cobrar Colones'),(4,'Cuentas por Cobrar Dólares'),(5,'Proveedores Colones'),(6,'Proveedores Dólares'),(7,'Cuentas por Pagar Colones'),(8,'Cuentas por Pagar Dólares'),(9,'Inventario Ventas'),(10,'Inventario Gastos'),(11,'Inventario Insumos'),(12,'Inventario Activos');
/*!40000 ALTER TABLE `tipocuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodevoluciones`
--

DROP TABLE IF EXISTS `tipodevoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodevoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `domovimiento` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodevoluciones`
--

LOCK TABLES `tipodevoluciones` WRITE;
/*!40000 ALTER TABLE `tipodevoluciones` DISABLE KEYS */;
INSERT INTO `tipodevoluciones` VALUES (1,'Mal estado',1),(2,'Cambio',0),(3,'Vencido',1);
/*!40000 ALTER TABLE `tipodevoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipofacturaimpresiones`
--

DROP TABLE IF EXISTS `tipofacturaimpresiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofacturaimpresiones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipofacturaimpresiones`
--

LOCK TABLES `tipofacturaimpresiones` WRITE;
/*!40000 ALTER TABLE `tipofacturaimpresiones` DISABLE KEYS */;
INSERT INTO `tipofacturaimpresiones` VALUES (1,'Venta'),(2,'Compra'),(3,'Orden de Compra'),(4,'Cotización'),(5,'Pedidos'),(6,'Abono'),(7,'Nota');
/*!40000 ALTER TABLE `tipofacturaimpresiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipofacturas`
--

DROP TABLE IF EXISTS `tipofacturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofacturas` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipofacturas`
--

LOCK TABLES `tipofacturas` WRITE;
/*!40000 ALTER TABLE `tipofacturas` DISABLE KEYS */;
INSERT INTO `tipofacturas` VALUES (4,'Apartado'),(5,'Arrendamiento con opción de compra'),(6,'Arrendamiento en función financiera'),(3,'Consignación'),(1,'Contado'),(2,'Crédito'),(99,'Otros');
/*!40000 ALTER TABLE `tipofacturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoexoneraciones`
--

DROP TABLE IF EXISTS `tipoexoneraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoexoneraciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `idhacienda` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoexoneraciones`
--

LOCK TABLES `tipoexoneraciones` WRITE;
/*!40000 ALTER TABLE `tipoexoneraciones` DISABLE KEYS */;
INSERT INTO `tipoexoneraciones` VALUES (1,'Compras Autorizadas','01'),(2,'Ventas exentas a diplomáticos','02'),(3,'Orden de compra (instituciones publicas y otros organismos)','03'),(4,'Exenciones Direccion General de Hacienda','04'),(5,'Zonas Francas','05'),(6,'Otros','99');
/*!40000 ALTER TABLE `tipoexoneraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoflotilla`
--

DROP TABLE IF EXISTS `tipoflotilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoflotilla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoflotilla`
--

LOCK TABLES `tipoflotilla` WRITE;
/*!40000 ALTER TABLE `tipoflotilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoflotilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoestadocuentas`
--

DROP TABLE IF EXISTS `tipoestadocuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoestadocuentas` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoestadocuentas`
--

LOCK TABLES `tipoestadocuentas` WRITE;
/*!40000 ALTER TABLE `tipoestadocuentas` DISABLE KEYS */;
INSERT INTO `tipoestadocuentas` VALUES (1,'Ingreso'),(2,'Interes'),(3,'Abono'),(5,'Nota Crédito'),(6,'Nota Débito'),(7,'Pago Varios');
/*!40000 ALTER TABLE `tipoestadocuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodeclaraciones`
--

DROP TABLE IF EXISTS `tipodeclaraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodeclaraciones` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodeclaraciones`
--

LOCK TABLES `tipodeclaraciones` WRITE;
/*!40000 ALTER TABLE `tipodeclaraciones` DISABLE KEYS */;
INSERT INTO `tipodeclaraciones` VALUES (1,'D-151');
/*!40000 ALTER TABLE `tipodeclaraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomonedas`
--

DROP TABLE IF EXISTS `tipomonedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomonedas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idmoneda` tinyint(2) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomonedas`
--

LOCK TABLES `tipomonedas` WRITE;
/*!40000 ALTER TABLE `tipomonedas` DISABLE KEYS */;
INSERT INTO `tipomonedas` VALUES (1,'Billetes de 50 mil',1,50000),(2,'Billetes de 20 mil',1,20000),(3,'Billetes de 10 mil',1,10000),(4,'Billetes de 5 mil',1,5000),(5,'Billetes de 2 mil',1,2000),(6,'Billetes de 1 mil',1,1000),(7,'Monedas de 500',1,500),(8,'Monedas de 100',1,100),(9,'Monedas de 50',1,50),(10,'Monedas de 25',1,25),(11,'Monedas de 10',1,10),(12,'Monedas de 5',1,5);
/*!40000 ALTER TABLE `tipomonedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoimpresion`
--

DROP TABLE IF EXISTS `tipoimpresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoimpresion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `tipo` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoimpresion`
--

LOCK TABLES `tipoimpresion` WRITE;
/*!40000 ALTER TABLE `tipoimpresion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoimpresion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoimpresiones`
--

DROP TABLE IF EXISTS `tipoimpresiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoimpresiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoimpresiones`
--

LOCK TABLES `tipoimpresiones` WRITE;
/*!40000 ALTER TABLE `tipoimpresiones` DISABLE KEYS */;
INSERT INTO `tipoimpresiones` VALUES (1,'Punto de venta'),(2,'Tamaño carta');
/*!40000 ALTER TABLE `tipoimpresiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipojerarquia`
--

DROP TABLE IF EXISTS `tipojerarquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipojerarquia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipojerarquia`
--

LOCK TABLES `tipojerarquia` WRITE;
/*!40000 ALTER TABLE `tipojerarquia` DISABLE KEYS */;
INSERT INTO `tipojerarquia` VALUES (1,'Familia'),(2,'Tipo'),(3,'Marca'),(4,'Modelo');
/*!40000 ALTER TABLE `tipojerarquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporutas`
--

DROP TABLE IF EXISTS `tiporutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporutas`
--

LOCK TABLES `tiporutas` WRITE;
/*!40000 ALTER TABLE `tiporutas` DISABLE KEYS */;
INSERT INTO `tiporutas` VALUES (0,'Inactivo'),(1,'Cargar'),(2,'En Ruta'),(3,'Descargar'),(4,'Inactivo');
/*!40000 ALTER TABLE `tiporutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotelefonos`
--

DROP TABLE IF EXISTS `tipotelefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotelefonos` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `regex` varchar(100) DEFAULT NULL,
  `img` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotelefonos`
--

LOCK TABLES `tipotelefonos` WRITE;
/*!40000 ALTER TABLE `tipotelefonos` DISABLE KEYS */;
INSERT INTO `tipotelefonos` VALUES (1,'Casa','[2-4]([0-9]{3})-*([0-9]{4})','home'),(2,'Trabajo','[2-4]([0-9]{3})-*([0-9]{4})','business'),(3,'Móvil','[5-8]([0-9]{3})-*([0-9]{4})','phone');
/*!40000 ALTER TABLE `tipotelefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoventas`
--

DROP TABLE IF EXISTS `tipoventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoventas` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoventas`
--

LOCK TABLES `tipoventas` WRITE;
/*!40000 ALTER TABLE `tipoventas` DISABLE KEYS */;
INSERT INTO `tipoventas` VALUES (1,'Factura'),(2,'Compra'),(3,'Orden de Compra'),(4,'Proforma'),(5,'Pedidos'),(6,'Orden de Venta'),(7,'Tiquete'),(8,'Especial'),(9,'FE de Compra'),(10,'Exportación'),(101,'Pago por Adelanto');
/*!40000 ALTER TABLE `tipoventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadeshacienda`
--

DROP TABLE IF EXISTS `unidadeshacienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadeshacienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(12) DEFAULT NULL,
  `descripcion` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadeshacienda`
--

LOCK TABLES `unidadeshacienda` WRITE;
/*!40000 ALTER TABLE `unidadeshacienda` DISABLE KEYS */;
INSERT INTO `unidadeshacienda` VALUES (1,'Sp','Servicios Profesionales'),(2,'m','Metro'),(3,'kg','Kilogramo'),(4,'s','Segundo'),(5,'A','Ampere'),(6,'K','Kelvin'),(7,'mol','Mol'),(8,'cd','Candela'),(9,'m²','metro cuadrado'),(10,'m³','metro cúbico'),(11,'m/s','metro por segundo'),(12,'m/s²','metro por segundo cuadrado'),(13,'1/m','1 por metro'),(14,'kg/m³','kilogramo por metro cúbico'),(15,'A/m²','ampere por metro cuadrado'),(16,'A/m','ampere por metro'),(17,'mol/m³','mol por metro cúbico'),(18,'cd/m²','candela por metro cuadrado'),(19,'rad','radián'),(20,'sr','estereorradián'),(21,'Hz','hertz'),(22,'N','newton'),(23,'Pa','pascal'),(24,'J','Joule'),(25,'W','Watt'),(26,'C','coulomb'),(27,'V','volt'),(28,'F','farad'),(29,'Ω','ohm'),(30,'S','siemens'),(31,'Wb','weber'),(32,'T','tesla'),(33,'H','henry'),(34,'°C','grado Celsius'),(35,'lm','lumen'),(36,'lx','lux'),(37,'Bq','Becquerel'),(38,'Gy','gray'),(39,'Sv','sievert'),(40,'kat','katal'),(41,'Pa·s','pascal segundo'),(42,'N·m','newton metro'),(43,'N/m','newton por metro'),(44,'rad/s','radián por segundo'),(45,'rad/s²','radián por segundo cuadrado'),(46,'W/m²','watt por metro cuadrado'),(47,'J/K','joule por kelvin'),(48,'J/(kg·K)','joule por kilogramo kelvin'),(49,'J/kg','joulepor kilogramo'),(50,'W/(m·K)','watt por metro kevin'),(51,'J/m³','joule por metro cúbico'),(52,'V/m','volt por metro'),(53,'C/m³','coulomb por metro cúbico'),(54,'C/m²','coulomb por metro cuadrado'),(55,'F/m','farad por metro'),(56,'H/m','henry por metro'),(57,'J/mol','joule por mol'),(58,'J/(mol·K)','joule por mol kelvin'),(59,'C/kg','coulomb por kilogramo'),(60,'Gy/s','gray por segundo'),(61,'W/sr','watt por estereorradián'),(62,'W/(m²·sr)','watt por metro cuadrado'),(63,'kat/m³','katal por metro cúbico'),(64,'min','minuto'),(65,'h','hora'),(66,'d','día'),(67,'º','grado'),(68,'´','minuto'),(69,'´´','segundo'),(70,'L','litro'),(71,'t','tonelada'),(72,'Np','neper'),(73,'B','bel'),(74,'eV','electronvolt'),(75,'u','unidad de masa atómica unificada'),(76,'ua','unidad astronómica'),(77,'Unid','Unidad'),(78,'Gal','Galón'),(79,'g','Gramo'),(80,'Km','Kilometro'),(81,'ln','pulgada'),(82,'cm','centímetro'),(83,'mL','mililitro'),(84,'mm','Milímetro'),(85,'Oz','Onzas');
/*!40000 ALTER TABLE `unidadeshacienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysplanes`
--

DROP TABLE IF EXISTS `sysplanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysplanes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysplanes`
--

LOCK TABLES `sysplanes` WRITE;
/*!40000 ALTER TABLE `sysplanes` DISABLE KEYS */;
INSERT INTO `sysplanes` VALUES (1,'ERP-Business'),(2,'ERP-Basic'),(3,'ERP-Platinum'),(4,'ERP-Cloud'),(5,'FE-50 Documentos'),(6,'FE Sin Límites'),(7,'Por Incidencia'),(8,'24/7'),(9,'8/5');
/*!40000 ALTER TABLE `sysplanes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysmods`
--

DROP TABLE IF EXISTS `sysmods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysmods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysmods`
--

LOCK TABLES `sysmods` WRITE;
/*!40000 ALTER TABLE `sysmods` DISABLE KEYS */;
INSERT INTO `sysmods` VALUES (1,'Alquiler'),(2,'Full'),(3,'Donación'),(4,'ERP-Cloud'),(5,'Silver'),(6,'Gold'),(7,'Platinum'),(8,'Período Prueba');
/*!40000 ALTER TABLE `sysmods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wsdls`
--

DROP TABLE IF EXISTS `wsdls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsdls` (
  `wsid` int(11) NOT NULL AUTO_INCREMENT,
  `wsurl` varchar(255) DEFAULT NULL,
  `xmlsen` varchar(255) NOT NULL,
  `xmlreq` varchar(100) NOT NULL,
  `obtener` varchar(255) DEFAULT NULL,
  `wsname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wsdls`
--

LOCK TABLES `wsdls` WRITE;
/*!40000 ALTER TABLE `wsdls` DISABLE KEYS */;
INSERT INTO `wsdls` VALUES (1,'http://indicadoreseconomicos.bccr.fi.cr/indicadoreseconomicos/WebServices/wsIndicadoresEconomicos.asmx?WSDL','ObtenerIndicadoresEconomicosXML','ObtenerIndicadoresEconomicosXMLResult','INGC011_CAT_INDICADORECONOMIC,NUM_VALOR','Banco Central CR Venta'),(2,'http://indicadoreseconomicos.bccr.fi.cr/indicadoreseconomicos/WebServices/wsIndicadoresEconomicos.asmx?WSDL','ObtenerIndicadoresEconomicosXML','ObtenerIndicadoresEconomicosXMLResult','INGC011_CAT_INDICADORECONOMIC,NUM_VALOR','Banco Central CR Compra');
/*!40000 ALTER TABLE `wsdls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-12  8:36:32
