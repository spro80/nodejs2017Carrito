-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: carritoresponsive
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `des_categoria` varchar(255) DEFAULT NULL,
  `vigencia_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL,
  `nombre_contacto` varchar(50) DEFAULT NULL,
  `email_contacto` varchar(50) DEFAULT NULL,
  `celular_contacto` varchar(50) DEFAULT NULL,
  `whatsap_contacto` varchar(50) DEFAULT NULL,
  `vigencia_contacto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `des_empresa` varchar(255) DEFAULT NULL,
  `vigencia_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `id_mensaje` int(11) NOT NULL,
  `nombre_mensaje` varchar(255) DEFAULT NULL,
  `celular_mensaje` varchar(255) DEFAULT NULL,
  `email_mensaje` varchar(255) DEFAULT NULL,
  `des_mensaje` varchar(255) DEFAULT NULL,
  `fecha_mensaje` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vigencia_mensaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_tipo_estado_pedido` int(11) DEFAULT NULL,
  `id_usuario_fk` varchar(8) DEFAULT NULL,
  `total_precio_pedido` int(11) DEFAULT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dia_pedido` int(11) DEFAULT NULL,
  `mes_pedido` int(11) DEFAULT NULL,
  `ano_pedido` int(11) DEFAULT NULL,
  `vigencia_pedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_relationship_7` (`id_tipo_estado_pedido`),
  CONSTRAINT `fk_relationship_7` FOREIGN KEY (`id_tipo_estado_pedido`) REFERENCES `tipo_estado_pedido` (`id_tipo_estado_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_detalle` (
  `id_pedido_detalle` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` varchar(255) DEFAULT NULL,
  `cantidad_pedido_detalle` int(11) DEFAULT NULL,
  `valorxcantidad_pedido_detalle` int(11) DEFAULT NULL,
  `vigencia_pedido_detalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido_detalle`),
  KEY `fk_relationship_8` (`id_producto`),
  KEY `fk_relationship_9` (`id_pedido`),
  CONSTRAINT `fk_relationship_8` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `fk_relationship_9` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precios` (
  `producto_precios` varchar(10) NOT NULL,
  `id_empresa_fk` int(11) NOT NULL,
  `id_sucursal_fk` int(11) NOT NULL,
  `tipo_cliente_precios` int(11) NOT NULL,
  `sin_iva_precios` int(11) DEFAULT NULL,
  `con_iva_precios` int(11) DEFAULT NULL,
  `stock_precios` int(11) DEFAULT NULL,
  `stock_minimo_precios` int(11) DEFAULT NULL,
  `vigencia_precios` int(11) DEFAULT NULL,
  PRIMARY KEY (`producto_precios`,`tipo_cliente_precios`,`id_empresa_fk`,`id_sucursal_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id_producto` varchar(255) NOT NULL,
  `id_tipo_marca` int(11) DEFAULT NULL,
  `id_tipo_producto` int(11) DEFAULT NULL,
  `nombre_producto` varchar(255) DEFAULT NULL,
  `descripcion_producto` varchar(255) DEFAULT NULL,
  `contenido_producto` varchar(255) DEFAULT NULL,
  `foto_producto` varchar(255) DEFAULT NULL,
  `id_categoria_fk` int(11) DEFAULT NULL,
  `id_subcategoria_fk` int(11) DEFAULT NULL,
  `vigencia_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_relationship_4` (`id_tipo_marca`),
  KEY `fk_relationship_5` (`id_tipo_producto`),
  CONSTRAINT `fk_relationship_4` FOREIGN KEY (`id_tipo_marca`) REFERENCES `tipo_marca` (`id_tipo_marca`),
  CONSTRAINT `fk_relationship_5` FOREIGN KEY (`id_tipo_producto`) REFERENCES `tipo_producto` (`id_tipo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producto_propiedades`
--

DROP TABLE IF EXISTS `producto_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_propiedades` (
  `id_producto_propiedades` int(11) NOT NULL,
  `id_producto` varchar(255) DEFAULT NULL,
  `detalle_producto_propiedades` varchar(255) DEFAULT NULL,
  `vigencia_producto_propiedades` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto_propiedades`),
  KEY `fk_relationship_6` (`id_producto`),
  CONSTRAINT `fk_relationship_6` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategoria` (
  `id_subcategoria` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `des_subcategoria` varchar(255) DEFAULT NULL,
  `vigencia_subcategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_subcategoria`),
  KEY `fk_relationship_10` (`id_categoria`),
  CONSTRAINT `fk_relationship_10` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `des_sucursal` varchar(255) DEFAULT NULL,
  `vigencia_sucursal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `fk_relationship_11` (`id_empresa`),
  CONSTRAINT `fk_relationship_11` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_cliente`
--

DROP TABLE IF EXISTS `tipo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int(11) NOT NULL,
  `nombre_tipo_cliente` varchar(255) DEFAULT NULL,
  `vigencia_tipo_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_envio`
--

DROP TABLE IF EXISTS `tipo_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_envio` (
  `id_tipo_envio` int(11) NOT NULL,
  `des_tipo_envio` varchar(255) DEFAULT NULL,
  `vigencia_tipo_envio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_envio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_estado_pedido`
--

DROP TABLE IF EXISTS `tipo_estado_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_estado_pedido` (
  `id_tipo_estado_pedido` int(11) NOT NULL,
  `des_tipo_estado_pedido` varchar(255) DEFAULT NULL,
  `vigencia_tipo_estado_pedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_estado_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_marca`
--

DROP TABLE IF EXISTS `tipo_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_marca` (
  `id_tipo_marca` int(11) NOT NULL,
  `des_tipo_marca` varchar(255) DEFAULT NULL,
  `vigencia_tipo_marca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_producto` (
  `id_tipo_producto` int(11) NOT NULL,
  `des_tipo_producto` varchar(255) DEFAULT NULL,
  `vigencia_id_tipo_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` varchar(8) NOT NULL,
  `id_tipo_cliente` int(11) DEFAULT NULL,
  `rut_completo_usuario` varchar(9) DEFAULT NULL,
  `password_usuario` varchar(50) DEFAULT NULL,
  `digito_rut_usuario` varchar(1) DEFAULT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `apellido_paterno_usuario` varchar(255) DEFAULT NULL,
  `apellido_materno_usuario` varchar(255) DEFAULT NULL,
  `ciudad_usuario` varchar(255) DEFAULT NULL,
  `comuna_usuario` varchar(255) DEFAULT NULL,
  `direccion_usuario` varchar(255) DEFAULT NULL,
  `nro_direccion` int(11) DEFAULT NULL,
  `celular_usuario` varchar(11) DEFAULT NULL,
  `email_usuario` varchar(255) DEFAULT NULL,
  `whatsap_usuario` varchar(12) DEFAULT NULL,
  `tipo_admin_usuario` tinyint(1) DEFAULT NULL,
  `vigencia_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_relationship_2` (`id_tipo_cliente`),
  CONSTRAINT `fk_relationship_2` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-22 14:47:18
