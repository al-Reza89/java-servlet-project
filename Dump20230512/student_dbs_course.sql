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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `courseId` int NOT NULL,
  `studentEmail` varchar(45) NOT NULL,
  `courseTitle` varchar(45) DEFAULT NULL,
  `courseCode` varchar(45) DEFAULT NULL,
  `courseTeacher` varchar(45) DEFAULT NULL,
  `courseEnroll` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,14,'name@gmail.com','course title','200D CSE','teacher name1','2023-05-06'),(3,15,'name@gmail.com','no course title','cse 494D','teacher name  2','2023-05-12'),(6,16,'name@gmail.com','no title','course 202','bipul','2023-05-11'),(9,14,'bipul@gmail.com','course title','200D CSE','teacher name1','2023-05-06'),(10,15,'bipul@gmail.com','no course title','cse 494D','teacher name  2','2023-05-12'),(11,16,'bipul@gmail.com','no title','course 202','bipul','2023-05-11'),(12,16,'bipul@gmail.com','no title','course 202','bipul','2023-05-11'),(13,16,'omar@gmail.com','DATA STRUCTURE','CSE 303','bipul','2023-05-11'),(14,16,'bipul1@gmail.com','DATA STRUCTURE','CSE 303','bipul','2023-05-11'),(15,21,'bipul1@gmail.com','WEB TECHNOLOGY','CSE 204D','saiful','2023-05-11'),(16,16,'nihal@gmail.com','DATA STRUCTURE','CSE 303','bipul','2023-05-11'),(17,16,'nihal@gmail.com','DATA STRUCTURE','CSE 303','bipul','2023-05-11'),(18,27,'nihal@gmail.com','ML','cse 203','Nishat','2023-05-12'),(19,21,'naim@gmail.com','WEB TECHNOLOGY','CSE 204D','saiful','2023-05-11'),(20,22,'naim@gmail.com','C Programming','CSE 133D','Titu','2023-05-10'),(21,21,'nihalmd1@gmail.com','WEB TECHNOLOGY','CSE 204D','saiful','2023-05-11');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 13:06:18
