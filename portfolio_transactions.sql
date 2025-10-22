CREATE DATABASE  IF NOT EXISTS `portfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portfolio`;
-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` varchar(15) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `destination_country` varchar(100) DEFAULT NULL,
  `is_cash_transaction` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('TR-100001','SB-1001','2025-01-20',1250.50,'USD','Transferencia Enviada','Canada','NO'),('TR-100002','SB-1002','2025-02-11',300.00,'CAD','Depósito','-','NO'),('TR-100003','SB-2001','2025-03-05',15000.00,'GBP','Transferencia Recibida','USA','NO'),('TR-100004','SB-1003','2025-04-15',5000.00,'AUD','Retiro','-','NO'),('TR-100005','SB-1004','2025-05-22',800.75,'EUR','Transferencia Enviada','Reino Unido','NO'),('TR-100006','SB-2002','2025-06-10',25000.00,'NZD','Transferencia Recibida','Australia','NO'),('TR-100007','SB-1005','2025-07-18',10000.00,'BRL','Transferencia Enviada','Portugal','NO'),('TR-100008','SB-1006','2025-08-01',550.00,'MXN','Depósito','-','SI'),('TR-100009','SB-2003','2025-09-09',120000.00,'SGD','Transferencia Enviada','China','NO'),('TR-100010','SB-1007','2025-10-14',200.00,'ARS','Retiro','-','NO'),('TR-100011','SB-1008','2025-11-20',1500.00,'EUR','Transferencia Recibida','Francia','NO'),('TR-100012','SB-2004','2025-12-01',75000.00,'USD','Transferencia Enviada','Reino Unido','NO'),('TR-100013','SB-1009','2025-01-28',3500.00,'EUR','Transferencia Enviada','Alemania','NO'),('TR-100014','SB-1010','2025-02-19',700.00,'EUR','Retiro','-','SI'),('TR-100015','SB-2005','2025-03-15',250000.00,'NOK','Transferencia Recibida','Suecia','NO'),('TR-100016','SB-1011','2025-04-21',890.00,'CLP','Depósito','-','NO'),('TR-100017','SB-1012','2025-05-30',450.00,'ZAR','Transferencia Enviada','Namibia','NO'),('TR-100018','SB-2006','2025-06-08',500000.00,'AED','Transferencia Enviada','India','NO'),('TR-100019','SB-1013','2025-07-16',12000.00,'JPY','Retiro','-','NO'),('TR-100020','SB-1014','2025-08-25',2000.00,'KRW','Transferencia Recibida','Japón','NO'),('TR-100021','SB-2007','2025-09-18',180000.00,'CAD','Transferencia Enviada','Sudáfrica','NO'),('TR-100022','SB-1015','2025-10-07',6000.00,'INR','Transferencia Enviada','USA','NO'),('TR-100023','SB-1016','2025-11-13',400.00,'EUR','Depósito','-','NO'),('TR-100024','SB-2009','2025-12-22',300000.00,'CHF','Transferencia Recibida','Alemania','NO'),('TR-100025','SB-1017','2025-01-09',950.00,'SEK','Retiro','-','NO'),('TR-100026','SB-1018','2025-02-17',2500.00,'EUR','Transferencia Enviada','España','NO'),('TR-100027','SB-2010','2025-03-28',1000000.00,'HKD','Transferencia Enviada','Kaiman Islands','NO'),('TR-100028','SB-1019','2025-04-03',8800.00,'USD','Depósito','-','SI'),('TR-100029','SB-1019','2025-04-04',9100.00,'USD','Depósito','-','SI'),('TR-100030','SB-1020','2025-05-11',1800.00,'EUR','Retiro','-','NO'),('TR-100031','SB-2011','2025-06-19',450000.00,'EUR','Transferencia Recibida','USA','NO'),('TR-100032','SB-1021','2025-07-26',300.00,'EUR','Depósito','-','NO'),('TR-100033','SB-1022','2025-08-04',780.00,'TWD','Transferencia Enviada','Corea del Sur','NO'),('TR-100034','SB-2012','2025-09-12',850000.00,'EUR','Transferencia Enviada','USA','NO'),('TR-100035','SB-1023','2025-10-29',15000.00,'USD','Retiro','-','NO'),('TR-100036','SB-1024','2025-11-06',600.00,'EUR','Depósito','-','NO'),('TR-100037','SB-2013','2025-12-18',65000.00,'USD','Transferencia Recibida','China','NO'),('TR-100038','SB-1026','2025-01-17',7200.00,'USD','Depósito','-','NO'),('TR-100039','SB-1027','2025-02-23',300.00,'GBP','Retiro','-','SI'),('TR-100040','SB-2014','2025-03-09',25000.00,'ILS','Transferencia Enviada','USA','NO'),('TR-100041','SB-1028','2025-04-13',150.00,'CAD','Depósito','-','NO'),('TR-100042','SB-1029','2025-05-25',500.00,'AUD','Retiro','-','NO'),('TR-100043','SB-2016','2025-06-30',2000000.00,'USD','Transferencia Recibida','Luxemburgo','NO'),('TR-100044','SB-1030','2025-07-08',980.00,'EUR','Depósito','-','NO'),('TR-100045','SB-1031','2025-08-15',100000.00,'USD','Depósito','-','SI'),('TR-100046','SB-2017','2025-09-22',35000.00,'USD','Transferencia Enviada','Singapur','NO'),('TR-100047','SB-1032','2025-10-31',250.00,'EUR','Retiro','-','NO'),('TR-100048','SB-1033','2025-11-17',1200.00,'MXN','Depósito','-','SI'),('TR-100049','SB-2018','2025-12-25',5000000.00,'SAR','Transferencia Enviada','Suiza','NO'),('TR-100050','SB-1034','2025-01-04',500.00,'USD','Transferencia Recibida','YouTube','NO'),('TR-100051','SB-1035','2025-02-12',180.00,'CAD','Depósito','-','NO'),('TR-100052','SB-2019','2025-03-20',150000.00,'ILS','Transferencia Recibida','USA','NO'),('TR-100053','SB-1036','2025-04-26',3000.00,'SEK','Retiro','-','NO'),('TR-100054','SB-1037','2025-05-05',250.00,'NZD','Depósito','-','NO'),('TR-100055','SB-2020','2025-06-14',88000.00,'EUR','Transferencia Enviada','Italia','NO'),('TR-100056','SB-1038','2025-07-22',750.00,'EUR','Transferencia Recibida','Reino Unido','NO'),('TR-100057','SB-1039','2025-08-29',1800.00,'USD','Transferencia Recibida','USA','NO'),('TR-100058','SB-2021','2025-09-06',220000.00,'EUR','Transferencia Enviada','India','NO'),('TR-100059','SB-1040','2025-10-18',150.00,'AUD','Retiro','-','SI'),('TR-100060','SB-1041','2025-11-28',95.50,'GBP','Depósito','-','NO'),('TR-100061','SB-2022','2025-12-07',400000.00,'KRW','Transferencia Recibida','USA','NO'),('TR-100062','SB-1042','2025-01-13',200.00,'USD','Depósito','-','NO'),('TR-100063','SB-1043','2025-02-21',120.00,'CAD','Retiro','-','NO'),('TR-100064','SB-2023','2025-03-16',330000.00,'EUR','Transferencia Enviada','España','NO'),('TR-100065','SB-1044','2025-04-24',1100.00,'USD','Depósito','-','NO'),('TR-100066','SB-1045','2025-05-09',450.00,'AUD','Retiro','-','SI'),('TR-100067','SB-2024','2025-06-18',1500000.00,'CHF','Transferencia Enviada','Kaiman Islands','NO'),('TR-100068','SB-1046','2025-07-27',5000.00,'GBP','Transferencia Recibida','USA','NO'),('TR-100069','SB-1047','2025-08-08',80.00,'EUR','Depósito','-','SI'),('TR-100070','SB-2025','2025-09-15',60000.00,'CAD','Transferencia Recibida','Gobierno de Canada','NO'),('TR-100071','SB-1048','2025-10-23',900.00,'EUR','Transferencia Enviada','Italia','NO'),('TR-100072','SB-1049','2025-11-03',350.00,'MXN','Depósito','-','NO'),('TR-100073','SB-2026','2025-12-11',2500000.00,'USD','Transferencia Recibida','Departamento de Defensa USA','NO'),('TR-100074','SB-1050','2025-01-31',180.00,'AUD','Retiro','-','NO'),('TR-100075','SB-1051','2025-02-06',200.00,'USD','Depósito','-','SI'),('TR-100076','SB-2027','2025-03-24',120000.00,'USD','Transferencia Recibida','USA','NO'),('TR-100077','SB-1052','2025-04-01',1500.00,'USD','Transferencia Recibida','Patreon','NO'),('TR-100078','SB-1053','2025-05-19',75.00,'GBP','Depósito','-','NO'),('TR-100079','SB-2028','2025-06-27',450000.00,'TRY','Transferencia Enviada','Alemania','NO'),('TR-100080','SB-1054','2025-07-06',400.00,'EUR','Retiro','-','NO'),('TR-100081','SB-1055','2025-08-13',600.00,'CAD','Depósito','-','SI'),('TR-100082','SB-2029','2025-09-30',50.00,'BTC','Transferencia Recibida','Desconocido','NO'),('TR-100083','SB-1056','2025-10-08',50.00,'USD','Depósito','-','NO'),('TR-100084','SB-1057','2025-11-16',200.00,'USD','Retiro','-','SI'),('TR-100085','SB-2030','2025-12-26',250000.00,'USD','Transferencia Recibida','Venta de Propiedad','NO'),('TR-100086','SB-1058','2025-01-11',350.00,'CAD','Depósito','-','NO'),('TR-100087','SB-1059','2025-02-14',700.00,'EUR','Retiro','-','SI'),('TR-100088','SB-2031','2025-03-04',1800000.00,'CNY','Transferencia Enviada','Vietnam','NO'),('TR-100089','SB-1060','2025-04-09',120.00,'USD','Depósito','-','NO'),('TR-955101','SB-1025','2025-09-02',9500.00,'USD','Depósito','-','SI'),('TR-955102','SB-1025','2025-09-03',9250.00,'USD','Depósito','-','SI'),('TR-955103','SB-1025','2025-09-05',9800.00,'USD','Depósito','-','SI'),('TR-955104','SB-1025','2025-09-06',9300.00,'USD','Depósito','-','SI'),('TR-955109','SB-1025','2025-09-10',37850.00,'USD','Transferencia Enviada','Norlandia','NO'),('TR-983450','SB-2008','2025-09-12',500000.00,'USD','Transferencia Enviada','Valeria','NO'),('TR-983451','SB-2008','2025-09-20',250000.00,'USD','Transferencia Enviada','Norlandia','NO'),('TR-991245','SB-2015','2025-09-18',150000.00,'EUR','Transferencia Enviada','Somalilandia','NO');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 14:42:10
