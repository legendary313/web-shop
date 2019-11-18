-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopshoe
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `shoe`
--

DROP TABLE IF EXISTS `shoe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoe` (
  `magiay` varchar(255) NOT NULL,
  `anh` varchar(15) DEFAULT NULL,
  `tengiay` varchar(255) DEFAULT NULL,
  `soluong` varchar(15) DEFAULT NULL,
  `nhanhieu` varchar(15) DEFAULT NULL,
  `mau` varchar(15) DEFAULT NULL,
  `giacu` int(11) DEFAULT NULL,
  `giamoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`magiay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoe`
--

LOCK TABLES `shoe` WRITE;
/*!40000 ALTER TABLE `shoe` DISABLE KEYS */;
INSERT INTO `shoe` VALUES ('0001','p1','NIKE NEW KING','10','NIKE','XAM',250000,149000),('0002','p2','ADIDAS NEW QUEEN','12','ADIDAS','XAM',250000,149000),('0003','p3','NIKE NEW LORD','8','NIKE','DEN',250000,149000),('0004','p4','ADIDAS NEW CYBER','50','ADIDAS','NAU',250000,149000),('0005','p5','BITIS NEW PHANTOM','6','BITIS','XAM',250000,149000),('0006','p6','VANS NEW LION','7','VANS','DO',250000,149000),('0007','p7','ADIDAS NEW DRAGON','4','ADIDAS','XAM',250000,149000),('0008','p8','SNEAKER NEW TIGER','3','SNEAKER','XAM',250000,149000);
/*!40000 ALTER TABLE `shoe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19  0:32:55