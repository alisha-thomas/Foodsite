-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `foodapp_food`
--

DROP TABLE IF EXISTS `foodapp_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodapp_food` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `foodname` varchar(15) NOT NULL,
  `price` int NOT NULL,
  `foodtype` varchar(15) DEFAULT NULL,
  `ingredients` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodapp_food`
--

LOCK TABLES `foodapp_food` WRITE;
/*!40000 ALTER TABLE `foodapp_food` DISABLE KEYS */;
INSERT INTO `foodapp_food` VALUES (3,'Biriyani',210,'maincourse','Chicken'),(5,'Biriyani',210,'starters','Chicken'),(7,'cocktail',120,'drinks','mint, lime'),(8,'cocktail',120,'drinks','mint, lime'),(9,'cocktail',120,'drinks','mint, lime'),(10,'cocktail',120,'drinks','mint, lime'),(11,'cocktail',120,'drinks','mint, lime'),(12,'cocktail',120,'drinks','mint, lime'),(13,'cocktail',120,'drinks','mint, lime'),(14,'cocktail',120,'drinks','mint, lime'),(15,'cocktail',120,'drinks','mint, lime');
/*!40000 ALTER TABLE `foodapp_food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 23:04:41
