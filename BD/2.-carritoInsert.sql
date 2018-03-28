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
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (0,NULL,NULL),(1,'cabello',1),(2,'manos y pies',1),(3,'depilacion',1),(4,'electrico',1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Estilo Fahion',1);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido_detalle`
--

LOCK TABLES `pedido_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES ('0001',1,1,1,1900,1900,0,0,1),('0002',1,1,1,1900,1900,0,0,1),('0003',1,1,1,1900,1900,0,0,1),('0004',1,1,1,1900,1900,0,0,1),('0005',1,1,1,1900,1900,0,0,1),('0006',1,1,1,1900,1900,0,0,1),('0007',1,1,1,2800,2800,0,0,1),('0008',1,1,1,3800,3800,0,0,1),('0009',1,1,1,4500,4500,0,0,1),('0010',1,1,1,4500,4500,0,0,1),('0011',1,1,1,4500,4500,0,0,1),('0012',1,1,1,3600,3500,0,0,1),('0013',1,1,1,3500,3500,0,0,1),('0014',1,1,1,3500,3500,0,0,1),('0101',1,1,1,1900,1900,0,0,1),('0102',1,1,1,1900,1900,0,0,1),('0103',1,1,1,1900,1900,0,0,1),('0104',1,1,1,1900,1900,0,0,1),('0105',1,1,1,1900,1900,0,0,1),('0106',1,1,1,2800,2800,0,0,1),('0107',1,1,1,3800,3800,0,0,1),('0108',1,1,1,3500,3500,0,0,1),('0109',1,1,1,3500,3500,0,0,1),('0201',1,1,1,3000,3000,0,0,1),('0202',1,1,1,3000,3000,0,0,1),('0203',1,1,1,3000,3000,0,0,1),('0204',1,1,1,3000,3000,0,0,1),('0205',1,1,1,3000,3000,0,0,1),('0206',1,1,1,3000,3000,0,0,1),('0207',1,1,1,3500,3500,0,0,1),('0208',1,1,1,3500,3500,0,0,1),('0209',1,1,1,3800,3800,0,0,1),('0210',1,1,1,2000,2000,0,0,1),('0211',1,1,1,1400,1400,0,0,1),('0212',1,1,1,1400,1400,0,0,1),('0300',1,1,1,1700,1700,0,0,1),('0301',1,1,1,3000,3000,0,0,1),('0302',1,1,1,1700,1700,0,0,1),('0303',1,1,1,2000,2000,0,0,1),('0400',1,1,1,2000,2000,0,0,1),('0401',1,1,1,2100,2100,0,0,1),('0402',1,1,1,2100,2100,0,0,1),('0403',1,1,1,3000,3000,0,0,1),('0500',1,1,1,40000,40000,0,0,1),('0501',1,1,1,40000,40000,0,0,1),('0502',1,1,1,45000,45000,0,0,1),('0503',1,1,1,14000,14000,0,0,1),('0504',1,1,1,14000,14000,0,0,1),('0600',1,1,1,14000,14000,0,0,1),('0601',1,1,1,14000,14000,0,0,1),('0602',1,1,1,24000,24000,0,0,1),('0603',1,1,1,35000,35000,0,0,1),('0700',1,1,1,2100,2100,0,0,1),('0701',1,1,1,2100,2100,0,0,1),('0702',1,1,1,2100,2100,0,0,1),('0800',1,1,1,5000,5000,0,0,1),('0801',1,1,1,1200,1200,0,0,1),('0802',1,1,1,1200,1200,0,0,1),('0803',1,1,1,1200,1200,0,0,1),('0804',1,1,1,1200,1200,0,0,1),('0805',1,1,1,1200,1200,0,0,1),('0806',1,1,1,1200,1200,0,0,1),('0900',1,1,1,1200,1200,0,0,1),('0901',1,1,1,1200,1200,0,0,1),('0902',1,1,1,1800,1800,0,0,1),('0903',1,1,1,1800,1800,0,0,1),('1000',1,1,1,6000,6000,0,0,1),('1001',1,1,1,13000,13000,0,0,1),('1002',1,1,1,8500,8500,0,0,1);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('0001',1,1,'shampoo de caballo','shampoo de caballo de 500 ml','500 ml','images/shampoo/shampoo_obopekal_caballo_500ml_chica.jpg',1,1,1),('0002',1,1,'shampoo de keratina','shampoo de keratina de 500 ml','500 ml','images/shampoo/shampoo_obopekal_keratina_500ml_chica.jpg',1,1,1),('0003',1,1,'shampoo argan','shampoo de argan oil 500 ml','500 ml','images/shampoo/shampoo_obopekal_argan_oil_500ml_chica.jpg',1,1,1),('0004',1,1,'shampoo de ortiga','shampoo de ortiga de 500 ml','500 ml','images/shampoo/shampoo_obopekal_ortiga_500ml_chica.jpg',1,1,1),('0005',1,1,'shampoo de carbon','shampoo de keratina de 500 ml','500 ml','images/shampoo/shampoo_obopekal_carbon_5ooml_chica.jpg',1,1,1),('0006',1,1,'shampoo azul','shampoo azul de 500 ml','500 ml','images/shampoo/shampoo_obopekal_azul_500ml_chica.jpg',1,1,1),('0007',1,1,'shampoo argan morocco reparacion profunda','reparacion profunda de 500 ml','500 ml','images/shampoo/shampoo_obopekal_argan_morocco_500ml_chica.jpg',1,1,1),('0008',1,1,'shampoo argan morocco reparacion profunda','reparacion profunda de 800 ml','800 ml','images/shampoo/shampoo_obopekal_argan_morocco_800ml_chica.jpg',1,1,1),('0009',1,1,'shampoo azul de litro','shampoo azul de litro Look Repair','1 litro','images/shampoo/shampoo_lookrepair_azul_1litro_chica.jpg',1,1,1),('0010',1,1,'shampoo de coco de litro','shampoo de coco de litro Look Repair','1 litro','images/shampoo/shampoo_lookrepair_coco_1litro_chica.jpg',1,1,1),('0011',1,1,'shampoo de chocolate de litro','shampoo de chocolate de litro Look Repair','1 litro','images/shampoo/shampoo_lookrepair_chocolate_1litro_chica.jpg',1,1,1),('0012',1,1,'shampoo sin silicona','shampoo sin silicona de 520 ml','520 ml','images/shampoo/shampoo_obopekal_sinsilicona_520ml_chica.jpg',1,1,1),('0013',1,1,'shampoo reparacion profunda','reparacion profunda de 780 ml','780 ml','images/shampoo/shampoo_reparacionprofunda_780ml_chica.jpg',1,1,1),('0014',1,1,'shampoo sellado color','sellado de color de 780 ml','780 ml','images/shampoo/shampoo_selladocolor_780ml_chica.jpg',1,1,1),('0101',1,2,'balsamo de caballo','balsamo de caballo de 500 ml','500 ml','images/balsamo/balsamo_obopekal_caballo_500ml_chica.jpg',1,2,1),('0102',1,2,'balsamo de keratina','balsamo de keratina de 500 ml','500 ml','images/balsamo/balsamo_obopekal_keratina_500ml_chica.jpg',1,2,1),('0103',1,2,'balsamo de argan oil','balsamo de argan oil 500 ml','500 ml','images/balsamo/balsamo_obopekal_arganoil_500ml_chica.jpg',1,2,1),('0104',1,2,'balsamo de ortiga','balsamo de ortiga de 500 ml','500 ml','images/balsamo/balsamo_obopekal_ortiga_500ml_chica.jpg',1,2,1),('0105',1,2,'balsamo de carbon','balsamo de carbon de 500 ml','500 ml','images/balsamo/balsamo_obopekal_carbon_500ml_chica.jpg',1,2,1),('0106',1,2,'balsamo de argan morocco reparacion profunda','balsamo de argan morocco de 500 ml','500 ml','images/balsamo/balsamo_obopekal_argan_morocco_500ml_chica.jpg',1,2,1),('0107',1,2,'balsamo de argan morocco reparacion profunda','balsamo de argan morocco de 800 ml','800 ml','images/balsamo/balsamo_obopekal_argan_morocco_800ml_chica.jpg',1,2,1),('0108',1,2,'balsamo reparacion profunda de 780 ml','balsamo reparacion profunda de 780 ml','780 ml','images/balsamo/balsamo_reparacionprofunda_780ml_chica.jpg',1,2,1),('0109',1,2,'balsamo sellado color de 780 ml','balsamo sellado color de 780 ml','780 ml','images/balsamo/balsamo_selladocolor_780ml_chica.jpg',1,2,1),('0201',1,3,'Crema Capilar Caballo','Crema Capilar de Caballo Obopekal de 1 kilo','1 kilo','images/cremas/crema_obopekal_caballo_1kilo_chica.jpg',1,3,1),('0202',1,3,'Crema Capilar Argan Oil','Crema Capilar de Argan Oil de 1 kilo','1 kilo','images/cremas/crema_obopekal_arganoil_1kilo_chica.jpg',1,3,1),('0203',1,3,'Crema Capilar Shock Keratina','Crema Capilar Shock Keratina de 1 kilo','1 kilo','images/cremas/crema_obopekal_shockkeratina_1kilo_chica.jpg',1,3,1),('0204',1,3,'Crema Capilar Reparacion Profunda Almendra Nutritiva','Crema Capilar Reparacion Profunda Almendra Nutritiva Obopekal de 1 Kilo','1 kilo','images/cremas/crema_obopekal_repprofundaalmendranutritiva_1kilo_chica.jpg',1,3,1),('0205',1,3,'Crema Almendras marca Terse','Crema Almendras marca Terse de 1 kilo','1 kilo','images/cremas/crema_terse_almendras_1kilo_chica.jpg',1,3,1),('0206',1,3,'Crema Keratina Choc','Crema Keratina Choc marca mflora de 1 kilo','1 kilo','images/cremas/crema_mflora_keratinachoc_1kilo_chica.jpg',1,3,1),('0207',1,3,'Crema Reparación Total 4','Crema Reparación Total 4 Obopekal de 1 kilo','1 kilo','images/cremas/crema_obopekal_reparaciontotal4_1kilo_chica.jpg',1,3,1),('0208',1,3,'Crema Sellado Color','Crema Sellado Color Obopekal de 1 kilo','1 kilo','images/cremas/crema_obopekal_selladocolor_1kilo_chica.jpg',1,3,1),('0209',1,3,'Crema Argan Morocco de 1 kilo','Crema Argan Morocco Obopekal de 1 kilo','1 kilo','images/cremas/crema_obopekal_arganmorocco_1kilo_chica.jpg',1,3,1),('0210',1,3,'Crema Argan Morocco de 500 ml','Crema Argan Morocco Obopekal de 500 ml','500 ml','images/cremas/crema_obopekal_arganmorocco_500ml_chica.jpg',1,3,1),('0211',1,3,'Crema Almendras marca Terse','Crema Almendras marca Terse de 300 ml','300 ml','images/cremas/crema_terse_almendras_300ml_chica.jpg',1,3,1),('0212',1,3,'Crema Keratina Choc','Crema Keratina Choc marca mflora de 300 ml','300 ml','images/cremas/crema_mflora_keratinachoc_300ml_chica.jpg',1,3,1),('0300',4,4,'aceite de argan 30 ml Naranja','aceite de argan 30 ml FLORA','30 ml','images/aceites/aceite_argan_flora_naranja_30ml_chica.jpg',1,4,1),('0301',3,4,'aceite de argan 60 ml ROCCO','aceite de argan 60 ml ROCCO','60 ml','images/aceites/aceite_argan_rocco_60ml_chica.jpg',1,4,1),('0302',6,4,'aceite de argan 30 ml GLEMO','aceite de argan 30 ml GLEMO','30 ml','images/aceites/aceite_glemo_30ml_chica.jpg',1,4,1),('0303',1,4,'aceite de caballo de 30 ml','aceite de caballo de 30 ml','30 ml','images/aceites/aceite_caballo_30ml_chica.jpg',1,4,1),('0400',3,5,'reparador de puntas marca ROCCO','reparador de puntas marca ROCCO','50 ml','images/reparador/reparadorpuntas_rocco_50ml_chica.jpg',1,5,1),('0401',5,5,'reparador de puntas marca Kesling','reparador de puntas marca KESLING','30 ml','images/reparador/reparadorpuntas_kesling_30ml_chica.jpg',1,5,1),('0402',1,5,'reparador de puntas marca KERATINE','reparador de puntas marca KERATINE','30 ml','images/reparador/reparadorpuntas_keratine_30ml_chica.jpg',1,5,1),('0403',4,5,'reparador de puntas marca Flora','reparador de puntas marca FLORA','50 ml','images/reparador/reparadorpuntas_flora_30ml_chica.jpg',1,5,1),('0500',1,6,'keratina D Brasil full cacao de 3 pasos','keratina D Brasil full cacao de 3 pasos de 3 litros','1 litro cada paso','images/keratina/keratina_dbrasilfullcacao_litrocadapaso_chica.jpg',1,6,1),('0501',1,6,'keratina Organix de 3 pasos de 1 litro','keratina Organix de 3 pasos de 3 litros','1 litro cada paso','images/keratina/keratina_organix_litrocadapaso_chica.jpg',1,6,1),('0502',1,6,'keratina LOOK Repair de 2 pasos','keratina LOOK Repair de 2 pasos','2 litros cada paso','images/keratina/keratina_lookrepair_litrocadapaso_chica.jpg',1,6,1),('0503',1,6,'keratina Organix de 3 pasos de 250 ml','keratina Organix de 3 pasos de 250 ml cada paso','250 ml cada paso','images/keratina/keratina_organix_250mlcadapaso_chica.jpg',1,6,1),('0504',1,6,'keratina LOOK Repair de 2 pasos de 250 ml','keratina LOOK Repair de 2 pasos de 250 ml cada paso','250 ml cada paso','images/keratina/keratina_lookrepair_250mlcadapaso_chica.jpg',1,6,1),('0600',1,7,'Botox Capilar Argan Oil + AntiFrizz','Botox Capilar Argan Oil + AntiFrizz de 500 ml','500 ml','images/botox/botox_argan_oil_500ml_chica.jpg',1,7,1),('0601',1,7,'Botox Capilar Tonalizante + AntiFrizz','Botox Capilar Tonalizante + AntiFrizz de 500 ml','500 ml','images/botox/botox_tonalizante_500ml_chica.jpg',1,7,1),('0602',1,7,'Botox Capilar Brasil Full Cacao 500ml+500ml+botella chica','Botox Capilar Brasil Full Cacao','500ml+500ml+botella chica','images/botox/botox_capilar_brasil_full_cacao_500ml_chica.jpg',1,7,1),('0603',1,7,'Botox Capilar Brasil Full Cacao 1000ml+1000ml+botella chica','Botox Capilar Brasil Full Cacao','1000ml+1000ml+botella chica','images/botox/botox_capilar_brasil_full_cacao_1000ml_chica.jpg',1,7,1),('0700',1,8,'Exfoliante de manos Frutilla','Exfoliante de manos Frutilla de 300 ml','300 ml','images/exfoliante/exfoliante_frutilla_300ml_chica.jpg',2,8,1),('0701',1,8,'Exfoliante de manos Coco','Exfoliante de manos Coco de 300 ml','300 ml','images/exfoliante/exfoliante_coco_300ml_chica.jpg',2,8,1),('0702',1,8,'Exfoliante de manos Almendra','Exfoliante de manos Almendra de 300 ml','300 ml','images/exfoliante/exfoliante_almendra_300ml_chica.jpg',2,8,1),('0800',1,9,'Guantes de 100 unidades latex','Guantes de 100 unidades latex','-','images/guantes/guantes_manos_latex_100unidades_chica.jpg',2,8,1),('0801',1,9,'Guantes de keratina para manos acahuate','Guantes de keratina para manos acahuate','-','images/guantes/guantes_manos_acahuate_chica.jpg',2,8,1),('0802',1,9,'Guantes de keratina para manos olivo','Guantes de keratina para manos olivo','-','images/guantes/guantes_manos_olivo_chica.jpg',2,8,1),('0803',1,9,'Guantes de keratina para manos miel','Guantes de keratina para manos miel','-','images/guantes/guantes_manos_miel_chica.jpg',2,8,1),('0804',1,9,'Guantes de keratina para pies acahuate','Guantes de keratina para pies acahuate','-','images/guantes/guantes_pies_acahuate_chica.jpg',2,8,1),('0805',1,9,'Guantes de keratina para pies olivo','Guantes de keratina para pies olivo','-','images/guantes/guantes_pies_olivo_chica.jpg',2,8,1),('0806',1,9,'Guantes de keratina para pies miel','Guantes de keratina para pies miel','-','images/guantes/guantes_pies_miel_chica_chica.jpg',2,8,1),('0900',1,10,'Ampolla Argan Oil Concentrado','Ampolla Argan Oil Concentrado','X ml','images/ampollas/ampolla_obopekal_arganoil_chica.jpg',1,10,1),('0901',1,10,'Ampolla Keratina','Ampolla Keratina','X ml','images/ampollas/ampolla_obopekal_keratina_chica.jpg',1,10,1),('0902',2,10,'Ampolla Aceite Iluminacion Escencial','Ampolla Aceite Iluminacion Escencial de 13 ml','13 ml','images/ampollas/ampolla_alfaparfmilano_iluminacionescencial_chica.jpg',1,10,1),('0903',2,10,'Ampolla Locion de brillo iluminador','Ampolla Locion de brillo iluminador de 13 ml','13 ml','images/ampollas/ampolla_alfaparfmilano_locionbrilloiluminador_chica.jpg',1,10,1),('1000',1,11,'Cera depilatoria de 1 kilo','Cera depilatoria de 1 kilo, marca flora','-','images/depilacion/ceradepilatoria_flora_1kilo_chica.jpg',3,11,1),('1001',1,11,'Kit depilacion','Kit depilacion maquina + bandas + cartucho','-','images/depilacion/kitdepilacion_1kilo_chica.jpg',3,11,1),('1002',1,11,'Olla depilatoria Pro WAX 100','Olla depilatoria Pro WAX 100 de 1/2 kilo','-','images/depilacion/olladepilatoria_mediokilo_chica.jpg',3,11,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto_propiedades`
--

LOCK TABLES `producto_propiedades` WRITE;
/*!40000 ALTER TABLE `producto_propiedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (0,2,'CCCC',1),(1,1,'shamposs',1),(2,2,'balsamoss',1),(3,1,'aceitesSSS',1);
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,1,'santiago',1),(2,1,'coquimbo',1);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_cliente`
--

LOCK TABLES `tipo_cliente` WRITE;
/*!40000 ALTER TABLE `tipo_cliente` DISABLE KEYS */;
INSERT INTO `tipo_cliente` VALUES (1,'mayor santiago',1),(2,'menor santiago ',1),(3,'mayor coquimbo',1),(4,'menor coquimbo ',1);
/*!40000 ALTER TABLE `tipo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_envio`
--

LOCK TABLES `tipo_envio` WRITE;
/*!40000 ALTER TABLE `tipo_envio` DISABLE KEYS */;
INSERT INTO `tipo_envio` VALUES (1,'No enviado',1),(2,'Enviado',1);
/*!40000 ALTER TABLE `tipo_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_estado_pedido`
--

LOCK TABLES `tipo_estado_pedido` WRITE;
/*!40000 ALTER TABLE `tipo_estado_pedido` DISABLE KEYS */;
INSERT INTO `tipo_estado_pedido` VALUES (1,'Pedido Solicitado',1),(2,'Pedido Pagado por revisar',1),(3,'Pedido Pagado Revisado',1);
/*!40000 ALTER TABLE `tipo_estado_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_marca`
--

LOCK TABLES `tipo_marca` WRITE;
/*!40000 ALTER TABLE `tipo_marca` DISABLE KEYS */;
INSERT INTO `tipo_marca` VALUES (1,'Obopekal',1),(2,'Alfaparf Milano',1),(3,'Rocco',1),(4,'Flora',1),(5,'Kesling',1),(6,'Glemo',1),(7,'Hair Line',1);
/*!40000 ALTER TABLE `tipo_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'shampoo',1),(2,'balsamo',1),(3,'cremas capilares',1),(4,'aceites de argan',1),(5,'reparador de puntas',1),(6,'keratina',1),(7,'botox',1),(8,'exfoliante de manos',1),(9,'Guantes de manos y de pies',1),(10,'Ampollas',1),(11,'Depilacion',1),(12,'Otros',1),(13,'Tijeras',1),(14,'Uñas',1);
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('\"0599700',1,'05997002k','808080','k','wilsonnn','diazzzz','salfateeee','santiago','santiago','los inciensos',994,'94298318','wsalfate@gmail.com','56994298318',1,1),('05997002',1,'05997002k','808080','k','wilsonnn','diazzzz','salfateeee','santiago','santiago','los inciensos',994,'94298318','wsalfate@gmail.com','56994298318',1,1),('06484469',3,'064844695','123456','5','maria angelica','sierra','gonzalez','coquimbo','coquimbo','los inciensos 994',NULL,'912345678',NULL,'+56912345678',0,1),('13745275',NULL,NULL,NULL,NULL,'aracelli diaz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('14515778',1,'145157781','123456','1','matias','diaz','sierra','santiago','santiago','fray camilo henriquez 190',NULL,'94298318',NULL,'+56994298318',1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-22 14:50:26
