-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: todolist_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `compiti`
--

DROP TABLE IF EXISTS `compiti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compiti` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomeCompito` varchar(255) NOT NULL,
  `giorno` date DEFAULT NULL,
  `utente_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_utente` (`utente_id`),
  CONSTRAINT `fk_utente` FOREIGN KEY (`utente_id`) REFERENCES `utente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compiti`
--

LOCK TABLES `compiti` WRITE;
/*!40000 ALTER TABLE `compiti` DISABLE KEYS */;
INSERT INTO `compiti` VALUES (3,'Compra la frutta','2030-12-04',2),(4,'Bere','2020-12-04',7),(5,'Bere','2020-12-04',7),(6,'Lavarsi','2020-12-04',4),(7,'Lavarsi','2020-12-04',4),(8,'Studiare','2020-12-04',3),(9,'Studiare','2020-12-04',3),(10,'Magnare','2020-12-04',6),(11,'nutella','2020-12-04',1),(12,'Lavarsi','2024-10-25',1);
/*!40000 ALTER TABLE `compiti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 18:59:23
