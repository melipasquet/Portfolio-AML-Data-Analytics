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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` varchar(10) NOT NULL,
  `customer_type` varchar(20) DEFAULT NULL,
  `full_name_company_name` varchar(255) DEFAULT NULL,
  `onboarding_date` date DEFAULT NULL,
  `country_of_residence` varchar(100) DEFAULT NULL,
  `industry_code_occupation` varchar(100) DEFAULT NULL,
  `pep_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('SB-1001','Individual','Liam Smith','2023-01-15','USA','Ingeniero de Software','NO'),('SB-1002','Individual','Olivia Johnson','2022-05-20','Canada','Doctor','NO'),('SB-1003','Individual','Noah Williams','2024-07-01','Australia','Arquitecto','NO'),('SB-1004','Individual','Emma Brown','2023-09-05','Alemania','Diseñador Gráfico','NO'),('SB-1005','Individual','Lucas Jones','2023-04-18','Brasil','Abogado','NO'),('SB-1006','Individual','Ava Garcia','2024-01-25','Mexico','Chef','NO'),('SB-1007','Individual','Mia Rodriguez','2022-08-14','Argentina','Profesor','NO'),('SB-1008','Individual','Elijah Martinez','2023-12-01','España','Artista','NO'),('SB-1009','Individual','Charlotte Hernandez','2023-10-22','Francia','Científico','NO'),('SB-1010','Individual','James Lopez','2022-03-19','Italia','Músico','NO'),('SB-1011','Individual','Sophia Gonzalez','2024-05-16','Chile','Periodista','NO'),('SB-1012','Individual','Benjamin Wilson','2023-07-29','Sudáfrica','Fotógrafo','NO'),('SB-1013','Individual','Isabella Anderson','2024-02-09','Japón','Traductor','NO'),('SB-1014','Individual','Henry Thomas','2023-05-21','Corea del Sur','Desarrollador de Videojuegos','NO'),('SB-1015','Individual','Amelia Taylor','2022-10-17','India','Consultor de TI','NO'),('SB-1016','Individual','William Moore','2024-06-23','Irlanda','Veterinario','NO'),('SB-1017','Individual','Evelyn Jackson','2022-12-13','Suecia','Psicólogo','NO'),('SB-1018','Individual','Alexander White','2023-01-28','Países Bajos','Piloto','NO'),('SB-1019','Individual','Abigail Harris','2023-02-14','Bélgica','Diplomático','SI'),('SB-1020','Individual','Michael Martin','2022-07-07','Austria','Gerente de Hotel','NO'),('SB-1021','Individual','Emily Thompson','2024-04-02','Finlandia','Investigador','NO'),('SB-1022','Individual','Daniel Lee','2023-10-09','Taiwan','Ingeniero Eléctrico','NO'),('SB-1023','Individual','Harper Clark','2024-09-01','USA','Analista Financiero','NO'),('SB-1024','Individual','Sebastian Lewis','2023-08-27','Portugal','Guía Turístico','NO'),('SB-1025','Individual','Elena Petrova','2025-08-15','Valeria','Consultor Internacional','SI'),('SB-1026','Individual','Madison Walker','2022-04-22','USA','Agente Inmobiliario','NO'),('SB-1027','Individual','Logan Hall','2024-10-03','Reino Unido','Atleta','NO'),('SB-1028','Individual','Avery Allen','2023-06-15','Canada','Nutricionista','NO'),('SB-1029','Individual','David Young','2022-02-18','Australia','Bombero','NO'),('SB-1030','Individual','Chloe King','2023-11-25','Irlanda','Diseñador de Moda','NO'),('SB-1031','Individual','Joseph Wright','2022-01-09','Reino Unido','Juez','SI'),('SB-1032','Individual','Sofia Scott','2024-08-30','España','Bailarín','NO'),('SB-1033','Individual','Mateo Green','2023-10-12','Mexico','Agricultor','NO'),('SB-1034','Individual','Aria Adams','2024-01-07','USA','Vlogger','NO'),('SB-1035','Individual','Leo Baker','2023-03-23','Canada','Paramédico','NO'),('SB-1036','Individual','Mila Nelson','2022-05-01','Suecia','Desarrollador de Software','NO'),('SB-1037','Individual','Samuel Carter','2024-02-15','Nueva Zelanda','Biólogo Marino','NO'),('SB-1038','Individual','Layla Mitchell','2023-12-28','Italia','Curador de Arte','NO'),('SB-1039','Individual','Gabriel Perez','2022-10-06','Colombia','Productor de Café','NO'),('SB-1040','Individual','Zoey Roberts','2023-04-25','Australia','Instructor de Surf','NO'),('SB-1041','Individual','Isaac Turner','2022-11-19','Reino Unido','Librero','NO'),('SB-1042','Individual','Penelope Phillips','2024-03-29','USA','Terapeuta Ocupacional','NO'),('SB-1043','Individual','Ryan Campbell','2023-02-02','Canada','Guardabosques','NO'),('SB-1044','Individual','Lillian Parker','2024-09-14','USA','Wedding Planner','NO'),('SB-1045','Individual','Wyatt Evans','2023-01-19','Australia','Mecánico','NO'),('SB-1046','Individual','Stella Edwards','2022-07-23','Reino Unido','Actriz','NO'),('SB-1047','Individual','Owen Collins','2024-04-18','Irlanda','Músico Callejero','NO'),('SB-1048','Individual','Aurora Stewart','2023-06-06','Finlandia','Arquitecto de Interiores','NO'),('SB-1049','Individual','Caleb Sanchez','2022-04-14','Mexico','Arqueólogo','NO'),('SB-1050','Individual','Hazel Morris','2023-11-11','Australia','Ceramista','NO'),('SB-1051','Individual','Levi Rogers','2022-03-03','USA','Camionero','NO'),('SB-1052','Individual','Savannah Peterson','2024-05-27','USA','Influencer','NO'),('SB-1053','Individual','Nathan Reed','2023-02-26','Reino Unido','Historiador','NO'),('SB-1054','Individual','Audrey Cook','2024-10-10','Francia','Sommelier','NO'),('SB-1055','Individual','Theodore Bailey','2023-07-17','Canadá','Pescador','NO'),('SB-1056','Individual','Clara Bell','2022-06-01','USA','Bibliotecaria','NO'),('SB-1057','Individual','Julian Rivera','2024-07-09','Puerto Rico','Artista de Graffiti','NO'),('SB-1058','Individual','Skylar Gray','2023-08-11','Canadá','DJ','NO'),('SB-1059','Individual','Leo Kelly','2022-09-16','Irlanda','Fabricante de Cerveza','NO'),('SB-1060','Individual','Paisley Murphy','2023-12-21','USA','Entrenador Personal','NO'),('SB-1088','Individual','Viktor Orlov','2023-11-10','Russonia','Inversor Privado','SI'),('SB-2001','Corporativo','Innovatech Solutions Ltd.','2023-02-10','Reino Unido','Tecnología','NO'),('SB-2002','Corporativo','GreenLeaf Organics','2022-11-12','Nueva Zelanda','Agricultura','NO'),('SB-2003','Corporativo','Quantum Logistics','2023-06-30','Singapur','Transporte','NO'),('SB-2004','Corporativo','Starlight Studios','2024-03-11','USA','Entretenimiento','NO'),('SB-2005','Corporativo','Oceanic Exploration Inc.','2023-08-08','Noruega','Energía','NO'),('SB-2006','Corporativo','Pinnacle Construction','2022-09-03','Emiratos Árabes Unidos','Construcción','NO'),('SB-2007','Corporativo','Silverstone Mining','2023-11-04','Canada','Minería','SI'),('SB-2008','Corporativo','Apex Global Trading S.A.','2024-03-22','Kaiman Islands','Import/Export Commodities','NO'),('SB-2009','Corporativo','Azure Pharmaceuticals','2023-03-05','Suiza','Farmacéutica','NO'),('SB-2010','Corporativo','Crimson Holdings','2024-08-19','Hong Kong','Holding de Inversiones','NO'),('SB-2011','Corporativo','Vertex Automotive','2023-09-18','Alemania','Automotriz','NO'),('SB-2012','Corporativo','Zenith Aerospace','2022-06-25','Francia','Aeroespacial','NO'),('SB-2013','Corporativo','Evergreen Imports','2023-04-10','Vietnam','Comercio Minorista','NO'),('SB-2014','Corporativo','Dynamic Digital','2023-01-05','Israel','Marketing Digital','NO'),('SB-2015','Corporativo','Global Aid Foundation','2022-01-30','España','Organización Sin Fines de Lucro','NO'),('SB-2016','Corporativo','Redwood Capital','2024-07-20','USA','Capital Privado','NO'),('SB-2017','Corporativo','Blue Ocean Shipping','2023-05-14','Panamá','Logística Marítima','NO'),('SB-2018','Corporativo','Sunstone Energy','2022-08-04','Arabia Saudita','Petróleo y Gas','SI'),('SB-2019','Corporativo','Ironclad Security','2023-09-09','Israel','Seguridad Privada','NO'),('SB-2020','Corporativo','Gastronomique Group','2023-07-03','Francia','Restaurantes de Lujo','NO'),('SB-2021','Corporativo','Celestial Gems','2024-06-11','Bélgica','Comercio de Diamantes','SI'),('SB-2022','Corporativo','Andromeda Biotech','2023-08-17','Corea del Sur','Biotecnología','NO'),('SB-2023','Corporativo','Helios Renewables','2022-09-28','Alemania','Energías Renovables','NO'),('SB-2024','Corporativo','Meridian Bank','2023-05-08','Suiza','Banca Privada','NO'),('SB-2025','Corporativo','Nightingale Health','2023-10-01','Canadá','Cuidado de la Salud','NO'),('SB-2026','Corporativo','Vanguard Defense','2024-08-05','USA','Contratista de Defensa','SI'),('SB-2027','Corporativo','Elysian Resorts','2023-09-22','Maldivas','Hotelería de Lujo','NO'),('SB-2028','Corporativo','Pegasus Airlines','2022-12-08','Turquía','Aerolínea','NO'),('SB-2029','Corporativo','Valhalla Crypto Exchange','2024-01-22','Estonia','Criptomonedas','SI'),('SB-2030','Corporativo','Magnolia Real Estate','2023-04-04','USA','Bienes Raíces','NO'),('SB-2031','Corporativo','Titan Manufacturing','2024-06-19','China','Manufactura Pesada','NO');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
