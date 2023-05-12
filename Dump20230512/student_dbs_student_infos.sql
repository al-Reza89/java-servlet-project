-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: student_dbs
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.1

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
-- Table structure for table `student_infos`
--

DROP TABLE IF EXISTS `student_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_infos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentName` varchar(45) NOT NULL,
  `studentEmail` varchar(45) NOT NULL,
  `studentPassword` varchar(45) NOT NULL,
  `studentDept` varchar(45) DEFAULT NULL,
  `studentReg` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`studentEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_infos`
--

LOCK TABLES `student_infos` WRITE;
/*!40000 ALTER TABLE `student_infos` DISABLE KEYS */;
INSERT INTO `student_infos` VALUES (1,'new name','name@gmail.com','123456','cse','2345667','admin'),(2,'bipul','bipul@gmail.com','123456','cse','201944','student'),(3,'Fahim','fahim@gmail.com','123456','cse','2018331042','teacher'),(4,'Fahim','fahim1@gmail.com','123456','cse','2018331042','teacher'),(5,'Reza','reza@gmail.com','123456','cse','2018331089','admin'),(6,'raisa','raisa@gmail.com','123456','cse','','teacher'),(7,'Arif','arif@gmail.com','123456','cse','2018331028','student'),(8,'omar','omar@gmail.com','123456','cse','2018331077','student'),(9,'bipul 1','bipul1@gmail.com','123456','cse','2018331028','student'),(10,'nihal','nihal@gmail.com','123456','cse','2018331095','student'),(11,'nishat','nishat@gmail.com','123456','cse','','teacher'),(12,'admin','admin@gmail.com','123456','cse','','admin'),(13,'naim','naim@gmail.com','123456','eee','2018331055','student'),(14,'nihalbaig','nihalmd1@gmail.com','123456','cse','2018331096','student');
/*!40000 ALTER TABLE `student_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 13:52:09
