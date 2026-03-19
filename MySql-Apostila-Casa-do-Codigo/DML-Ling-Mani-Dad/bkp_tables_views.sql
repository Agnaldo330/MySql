-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: comercial
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `clientes_vendas`
--

DROP TABLE IF EXISTS `clientes_vendas`;
/*!50001 DROP VIEW IF EXISTS `clientes_vendas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_vendas` AS SELECT 
 1 AS `c_razaclien`,
 1 AS `c_nomeclien`,
 1 AS `c_cnpjclien`,
 1 AS `c_codivenda`,
 1 AS `n_totavenda`,
 1 AS `d_datavenda`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `comclien`
--

DROP TABLE IF EXISTS `comclien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comclien` (
  `n_numeclien` int NOT NULL AUTO_INCREMENT,
  `c_codiclien` varchar(10) DEFAULT NULL,
  `c_nomeclien` varchar(100) DEFAULT NULL,
  `c_razaclien` varchar(100) DEFAULT NULL,
  `d_dataclien` date DEFAULT NULL,
  `c_cnpjclien` varchar(20) DEFAULT NULL,
  `c_forneclien` varchar(20) DEFAULT NULL,
  `c_cidaclien` varchar(50) DEFAULT NULL,
  `c_estaclien` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`n_numeclien`),
  KEY `idx_comclien_3` (`c_razaclien`),
  KEY `idx_comclien_4` (`c_codiclien`),
  CONSTRAINT `comclien_ibfk_1` FOREIGN KEY (`n_numeclien`) REFERENCES `comvenda` (`n_numevenda`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comclien`
--

LOCK TABLES `comclien` WRITE;
/*!40000 ALTER TABLE `comclien` DISABLE KEYS */;
INSERT INTO `comclien` VALUES (1,'0001','AARONSON FURNITURE','AARONSON FURNITURE LTD','2015-02-17','17.807.928/0001-85','(21) 8167-6584','QUEIMADOS','RJ'),(2,'0002','LITTLER ','LITTLER  LTDA','2015-02-17','55.643.605/0001-92','(27) 7990-9502','SERRA','ES'),(3,'0003','KELSEY  NEIGHBOURHOOD','KELSEY  NEIGHBOURHOOD','2015-02-17','05.202.361/0001-34','(11) 4206-9703','BRAGANÇA PAULISTA','SP'),(4,'0004','GREAT AMERICAN MUSIC','GREAT AMERICAN MUSIC','2015-02-17','11.880.735/0001-73','(75) 7815-7801','SANTO ANTÔNIO DE JESUS','BA'),(5,'0005','LIFE PLAN COUNSELLING','LIFE PLAN COUNSELLING','2015-02-17','75.185.467/0001-52','(17) 4038-9355','BEBEDOURO','SP'),(6,'0006','PRACTI-PLAN','PRACTI-PLAN LTDA','2015-02-17','32.518.106/0001-78','(28) 2267-6159','CACHOEIRO DE ITAPEMIRI','ES'),(7,'0007','SPORTSWEST','SPORTSWEST LTDA','2015-02-17','83.175.645/0001-92','(61) 4094-7184','TAGUATINGA','DF'),(8,'0008','HUGHES MARKETS','HUGHES MARKETS LTDA','2015-02-17','04.728.160/0001-02','(21) 7984-9809','RIO DE JANEIRO','RJ'),(9,'0009','AUTO WORKS','AUTO WORKS LTDA','2015-02-17','08.271.985/0001-00','(21) 8548-5555','RIO DE JANEIRO','RJ'),(10,'00010','DAHLKEMPER ','DAHLKEMPER  LTDA','2015-02-17','49.815.047/0001-00','(11) 4519-7670','SÃO PAULO','SP');
/*!40000 ALTER TABLE `comclien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comclien_bkp`
--

DROP TABLE IF EXISTS `comclien_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comclien_bkp` (
  `n_numeclien` int NOT NULL DEFAULT '0',
  `c_codiclien` varchar(10) DEFAULT NULL,
  `c_nomeclien` varchar(100) DEFAULT NULL,
  `c_razaclien` varchar(100) DEFAULT NULL,
  `d_dataclien` date DEFAULT NULL,
  `c_cnpjclien` varchar(20) DEFAULT NULL,
  `c_forneclien` varchar(20) DEFAULT NULL,
  `c_cidaclien` varchar(50) DEFAULT NULL,
  `c_estaclien` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comclien_bkp`
--

LOCK TABLES `comclien_bkp` WRITE;
/*!40000 ALTER TABLE `comclien_bkp` DISABLE KEYS */;
INSERT INTO `comclien_bkp` VALUES (3,'0003','KELSEY  NEIGHBOURHOOD','KELSEY  NEIGHBOURHOOD','2015-02-17','05.202.361/0001-34','(11) 4206-9703','BRAGANÇA PAULISTA','SP'),(5,'0005','LIFE PLAN COUNSELLING','LIFE PLAN COUNSELLING','2015-02-17','75.185.467/0001-52','(17) 4038-9355','BEBEDOURO','SP'),(10,'00010','DAHLKEMPER ','DAHLKEMPER  LTDA','2015-02-17','49.815.047/0001-00','(11) 4519-7670','SÃO PAULO','SP');
/*!40000 ALTER TABLE `comclien_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comcontato`
--

DROP TABLE IF EXISTS `comcontato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comcontato` (
  `n_numecontato` int NOT NULL AUTO_INCREMENT,
  `c_nomecontato` varchar(200) DEFAULT NULL,
  `c_fornecontato` varchar(30) DEFAULT NULL,
  `c_cidacontato` varchar(200) DEFAULT NULL,
  `c_estacontato` varchar(2) DEFAULT NULL,
  `n_numeclien` int DEFAULT NULL,
  PRIMARY KEY (`n_numecontato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comcontato`
--

LOCK TABLES `comcontato` WRITE;
/*!40000 ALTER TABLE `comcontato` DISABLE KEYS */;
INSERT INTO `comcontato` VALUES (1,'AARONSON FURNITURE','(21) 8167-6584','QUEIMADOS','RJ',1),(2,'LITTLER ','(27) 7990-9502','SERRA','ES',2),(3,'KELSEY  NEIGHBOURHOOD','(11) 4206-9703','LONDRINA','PR',3),(4,'GREAT AMERICAN MUSIC','(75) 7815-7801','SANTO ANTÔNIO DE JESUS','BA',4),(5,'LIFE PLAN COUNSELLING','(17) 4038-9355','LONDRINA','PR',5),(6,'PRACTI-PLAN','(28) 2267-6159','CACHOEIRO DE ITAPEMIRI','ES',6),(7,'SPORTSWEST','(61) 4094-7184','TAGUATINGA','DF',7),(8,'HUGHES MARKETS','(21) 7984-9809','RIO DE JANEIRO','RJ',8),(9,'AUTO WORKS','(21) 8548-5555','RIO DE JANEIRO','RJ',9);
/*!40000 ALTER TABLE `comcontato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comforne`
--

DROP TABLE IF EXISTS `comforne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comforne` (
  `n_nomeforne` int NOT NULL AUTO_INCREMENT,
  `c_codiforne` varchar(10) DEFAULT NULL,
  `c_nomeforne` varchar(100) DEFAULT NULL,
  `c_razaforne` varchar(100) DEFAULT NULL,
  `c_forneforne` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`n_nomeforne`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comforne`
--

LOCK TABLES `comforne` WRITE;
/*!40000 ALTER TABLE `comforne` DISABLE KEYS */;
INSERT INTO `comforne` VALUES (1,'0001','DUN RITE LAWN MAINTENANCE','DUN RITE LAWN MAINTENANCE LTDA','(85) 7886-8837'),(2,'0002','SEWFRO FABRICS','SEWFRO FABRICS LTDA','(91) 5171-8483');
/*!40000 ALTER TABLE `comforne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comivenda`
--

DROP TABLE IF EXISTS `comivenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comivenda` (
  `n_numeivenda` int NOT NULL AUTO_INCREMENT,
  `n_numevenda` int NOT NULL,
  `n_numeprodu` int NOT NULL,
  `n_valorivenda` float(10,2) DEFAULT NULL,
  `n_qtdeivenda` int DEFAULT NULL,
  `n_descivenda` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`n_numeivenda`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comivenda`
--

LOCK TABLES `comivenda` WRITE;
/*!40000 ALTER TABLE `comivenda` DISABLE KEYS */;
INSERT INTO `comivenda` VALUES (1,1,1,1251.29,1,0.00),(2,1,2,1242.21,2,0.00),(3,1,3,1241.21,3,0.00),(4,1,4,1513.77,4,0.00),(5,1,5,2325.32,5,0.00),(6,2,1,1251.29,6,0.00),(7,3,3,1241.21,7,0.00),(8,4,1,1251.29,1,0.00),(9,5,3,1241.21,2,0.00),(10,6,1,1251.29,3,0.00),(11,7,2,1242.21,4,0.00),(12,8,5,2325.32,5,0.00),(13,9,2,1242.21,6,0.00),(14,10,3,1241.21,7,0.00),(15,11,1,1251.29,1,0.00),(16,12,1,1251.29,2,0.00),(17,13,2,1242.21,3,0.00),(18,14,2,1242.21,4,0.00),(19,15,3,1241.21,5,0.00),(20,16,3,1241.21,6,0.00),(21,17,4,1513.77,7,0.00),(22,18,4,1513.77,1,0.00),(23,19,5,2325.32,2,0.00),(24,20,5,2325.32,3,0.00),(25,2,2,1242.21,4,0.00),(26,3,4,1513.77,5,0.00),(27,4,2,1242.21,6,0.00),(28,5,4,1513.77,7,0.00),(29,6,5,2325.32,1,0.00),(30,7,3,1241.21,2,0.00),(31,8,1,1251.29,3,0.00),(32,9,4,1513.77,4,0.00),(33,10,5,2325.32,5,0.00),(34,11,2,1242.21,6,0.00),(35,12,2,1242.21,7,0.00),(36,13,3,1241.21,1,0.00),(37,14,3,1241.21,2,0.00),(38,15,4,1513.77,3,0.00),(39,16,4,1513.77,4,0.00),(40,17,5,2325.32,5,0.00),(41,18,5,2325.32,6,0.00);
/*!40000 ALTER TABLE `comivenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usermysql`@`%`*/ /*!50003 TRIGGER `tri_ivendas_af` AFTER DELETE ON `comivenda` FOR EACH ROW begin
## declaro as variáveis que utilizarei
declare vtotal_itens float(10,2);
declare vtotal_item float(10,2);
declare total_item float(10,2);
## cursor para buscar os itens já registrados da venda
declare busca_itens cursor for
select n_totaivenda
from comivenda
where n_numevenda = old.n_numevenda;
## abro o cursor
open busca_itens;
## declaro e inicio o loop
itens : loop
fetch busca_itens into total_item;
## somo o valor total dos itens(produtos)
set vtotal_itens = vtotal_itens + total_item;
end loop itens;
close busca_itens;
## atualizo o total da venda
update comvenda set n_totavenda = vtotal_itens
where n_numevenda = old.n_numevenda;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comprodu`
--

DROP TABLE IF EXISTS `comprodu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprodu` (
  `n_numeprodu` int NOT NULL AUTO_INCREMENT,
  `c_codiprodu` varchar(20) DEFAULT NULL,
  `c_descprodu` varchar(100) DEFAULT NULL,
  `n_valoprodu` float(10,2) DEFAULT NULL,
  `c_situprodu` varchar(1) DEFAULT NULL,
  `n_numeforne` int DEFAULT NULL,
  PRIMARY KEY (`n_numeprodu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprodu`
--

LOCK TABLES `comprodu` WRITE;
/*!40000 ALTER TABLE `comprodu` DISABLE KEYS */;
INSERT INTO `comprodu` VALUES (1,'123131','NOTEBOOK',1251.29,'A',1),(2,'123223','SMARTPHONE',1242.21,'A',2),(3,'1231','DESKTOP',1241.21,'A',1),(4,'142123','TELEVISÃO',2564.92,'A',2),(5,'7684','DRONE',2325.32,'A',1);
/*!40000 ALTER TABLE `comprodu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comvenda`
--

DROP TABLE IF EXISTS `comvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comvenda` (
  `n_numevenda` int NOT NULL AUTO_INCREMENT,
  `c_codivenda` varchar(10) DEFAULT NULL,
  `n_numeclien` int NOT NULL,
  `n_numeforne` int NOT NULL,
  `n_numevende` int NOT NULL,
  `n_valovenda` float(10,2) DEFAULT NULL,
  `n_descvenda` float(10,2) DEFAULT NULL,
  `n_totavenda` float(10,2) DEFAULT NULL,
  `d_datavenda` date DEFAULT NULL,
  `n_vcomvenda` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`n_numevenda`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comvenda`
--

LOCK TABLES `comvenda` WRITE;
/*!40000 ALTER TABLE `comvenda` DISABLE KEYS */;
INSERT INTO `comvenda` VALUES (1,'1',1,1,1,25141.02,0.00,25141.02,'2015-01-01',558.08),(2,'2',2,2,2,12476.58,0.00,12476.58,'2015-01-02',1743.99),(3,'3',3,1,1,16257.32,0.00,16257.32,'2015-01-03',NULL),(4,'4',4,2,2,8704.55,0.00,8704.55,'2015-01-04',NULL),(5,'5',5,1,1,13078.81,0.00,13078.81,'2015-01-01',NULL),(6,'6',6,2,2,6079.19,0.00,6079.19,'2015-01-02',NULL),(7,'7',7,1,1,7451.26,0.00,7451.26,'2015-01-03',NULL),(8,'8',8,2,2,15380.47,0.00,15380.47,'2015-01-04',NULL),(9,'9',9,1,1,13508.34,0.00,13508.34,'2015-01-01',NULL),(10,'10',1,2,2,20315.07,0.00,20315.07,'2015-01-02',NULL),(11,'11',1,1,1,8704.55,0.00,8704.55,'2015-01-01',NULL),(12,'12',2,2,2,11198.05,0.00,11198.05,'2015-01-02',NULL),(13,'13',3,1,1,4967.84,0.00,4967.84,'2015-01-03',NULL),(14,'14',3,2,2,7451.26,0.00,7451.26,'2015-01-04',NULL),(15,'15',5,1,1,10747.36,0.00,10747.36,'2015-01-01',NULL),(16,'16',6,2,2,13502.34,0.00,13502.34,'2015-01-02',NULL),(17,'17',7,1,1,22222.99,0.00,22222.99,'2015-01-03',NULL),(18,'18',8,2,2,15465.69,0.00,15465.69,'2015-01-04',NULL),(19,'19',9,1,1,4650.64,0.00,4650.64,'2015-01-01',NULL),(20,'20',9,2,2,6975.96,0.00,6975.96,'2015-01-02',NULL);
/*!40000 ALTER TABLE `comvenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usermysql`@`%`*/ /*!50003 TRIGGER `tri_vendas_bu` BEFORE UPDATE ON `comvenda` FOR EACH ROW begin
declare percentual_comissao float(10,2);
declare total_venda float(10,2);
declare valor_comissao float(10,2);
## No update, verifico se o valor total novo da venda
## é diferente do total anterior, pois se forem iguais,
## não há necessidade do cálculo
if (old.n_totavenda <> new.n_totavenda) then
select rt_percentual_comissao(new.n_numevende)
into percentual_comissao;
## cálculo da comissão
set
valor_comissao = ((total_venda * comissao) / 100);
## recebo no novo valor de comissão
set new.n_vcomvenda = valor_comissao;
end if;
end */;;
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
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usermysql`@`%`*/ /*!50003 TRIGGER `tri_vendas_bf` BEFORE DELETE ON `comvenda` FOR EACH ROW begin
## declaro as variáveis que utilizarei
declare vtotal_itens float(10,2);
declare vtotal_item float(10,2);
declare total_item float(10,2);
## verifico se há necessidade de alteração
## faço somente se o novo valor for alterado
## cursor para buscar os itens já registrados da venda
declare busca_itens cursor for
select n_totaivenda
from comivenda
where n_numevenda = old.n_numevenda;
## abro o cursor
open busca_itens;
## declaro e inicio o loop
itens : loop
fetch busca_itens into total_item;
## somo o valor total dos itens(produtos)
set vtotal_itens = vtotal_itens + total_item;
end loop itens;
close busca_itens;
## atualizo o total da venda
delete from comivenda where n_numevenda = venda;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comvende`
--

DROP TABLE IF EXISTS `comvende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comvende` (
  `n_numevende` int NOT NULL AUTO_INCREMENT,
  `c_codivende` varchar(10) DEFAULT NULL,
  `c_nomevende` varchar(100) DEFAULT NULL,
  `c_razavende` varchar(100) DEFAULT NULL,
  `c_fornevende` varchar(20) DEFAULT NULL,
  `n_porcvende` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`n_numevende`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comvende`
--

LOCK TABLES `comvende` WRITE;
/*!40000 ALTER TABLE `comvende` DISABLE KEYS */;
INSERT INTO `comvende` VALUES (1,'0001','CARLOS FERNANDES','CARLOS FERNANDES LTDA','(47) 7535-8144',12.00),(2,'0002','JÚLIA	GOMES','JÚLIA GOMES LTDA','(12) 8037-6661',25.00);
/*!40000 ALTER TABLE `comvende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'comercial'
--
/*!50003 DROP FUNCTION IF EXISTS `rt_nome_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usermysql`@`%` FUNCTION `rt_nome_cliente`(vn_numeclien int) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
begin
declare nome varchar(50);
select c_nomeclien into nome
from comclien
where n_numeclien = vn_numeclien;
return nome;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `rt_percentual_comissao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usermysql`@`%` FUNCTION `rt_percentual_comissao`(vn_n_numevende int) RETURNS float
    DETERMINISTIC
begin
declare percentual_comissao float(10,2);
select n_porcvende
into percentual_comissao
from convende
where n_numevende = vn_n_numevende;
return percentual_comissao;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `processa_comissionamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usermysql`@`%` PROCEDURE `processa_comissionamento`(
in data_inicial date,
in data_final date ,
out total_processado int )
begin
declare total_venda float(10,2) default 0;
declare venda int default 0;
declare vendedor int default 0;
declare comissao float(10,2) default 0;
declare valor_comissao float(10,2) default 0;
declare aux int default 0;
## cursor para buscar os registros a serem
## processados entre a data inicial e data final
## e valor total de venda é maior que zero
declare busca_pedido cursor for
select n_numevenda,
n_totavenda,
n_numevende
from comvenda
where d_datavenda between data_inicial
and data_final
and n_totavenda > 0 ;
## abro o cursor
open busca_pedido;
## inicio do loop
vendas: LOOP
##recebo o resultado da consulta em cada variável
fetch busca_pedido into venda, total_venda,
vendedor;
## busco o valor do percentual de cada vendedor
select n_porcvende
into comissao
from comvende
where n_numevende = vendedor;
## verifico se o percentual do vendedor é maior
## que zero logo após a condição deve ter o then
if (comissao > 0 ) then
## calculo o valor da comissao
set valor_comissao =
((total_venda * comissao) / 100);
## faço o update na tabela comvenda com o
## valor da comissão
update comvenda set
n_vcomvenda = valor_comissao
where n_numevenda = vendedor;
commit;
## verifico se o percentual do vendedor é igual
## zero na regra do nosso sistema se o vendedor
## tem 0 ele ganha 0 porcento de comissão
elseif(comissao = 0) then
update comvenda set n_vcomvenda = 0
where n_numevenda = vendedor;
commit;
## se ele não possuir registro no percentual de
## comissão ele irá ganhar 1 de comissão
## isso pela regra de negócio do nosso sistema
else
set comissao = 1;
set valor_comissao =
((total_venda * comissao) / 100);
update
comvenda set n_vcomvenda = valor_comissao
where n_numevenda = vendedor;
commit;
## fecho o if
end if;
set comissao = 0;
##utilizo a variável aux para contar a quantidade
set aux = aux +1 ;
end loop vendas;
## atribuo o total de vendas para a variável de
## saída
set total_processado = aux;
## fecho o cursor
close busca_pedido;
##retorno o total de vendas processadas
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `clientes_vendas`
--

/*!50001 DROP VIEW IF EXISTS `clientes_vendas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usermysql`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_vendas` AS select `comclien`.`c_razaclien` AS `c_razaclien`,`comclien`.`c_nomeclien` AS `c_nomeclien`,`comclien`.`c_cnpjclien` AS `c_cnpjclien`,`comvenda`.`c_codivenda` AS `c_codivenda`,`comvenda`.`n_totavenda` AS `n_totavenda`,`comvenda`.`d_datavenda` AS `d_datavenda` from (`comclien` join `comvenda`) where (`comclien`.`n_numeclien` = `comvenda`.`n_numeclien`) order by `comclien`.`c_razaclien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-19 15:21:55
