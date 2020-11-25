-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: survey_app
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_sequence`
--

DROP TABLE IF EXISTS `option_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_sequence`
--

LOCK TABLES `option_sequence` WRITE;
/*!40000 ALTER TABLE `option_sequence` DISABLE KEYS */;
INSERT INTO `option_sequence` VALUES (251);
/*!40000 ALTER TABLE `option_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_option`
--

DROP TABLE IF EXISTS `question_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_option` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  KEY `FK4u4pqylxhpqbialbsgt73of5v` (`question_id`),
  CONSTRAINT `FK4u4pqylxhpqbialbsgt73of5v` FOREIGN KEY (`question_id`) REFERENCES `survey_question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_option`
--

LOCK TABLES `question_option` WRITE;
/*!40000 ALTER TABLE `question_option` DISABLE KEYS */;
INSERT INTO `question_option` VALUES (1,'opt1.1.1',1),(2,'opt1.1.2',1),(3,'opt1.1.3',1),(4,'opt1.1.4',1),(5,'opt1.1.1',2),(6,'opt1.1.2',2),(7,'opt1.1.3',2),(8,'opt1.1.4',2),(102,'ques2.1.1',102),(103,'dfdf',103),(104,'dfdf',103),(105,'fafaf',103),(114,'1212',106),(115,'1212',106),(116,'121',106),(117,'12121',106),(118,'1212',107),(119,'212',107),(120,'1212',107),(121,'1212',107),(152,'opt4.1.1',152),(153,'opt4.1.1',152),(154,'opt4.1.1',152),(155,'opt4.1.1',152),(156,'dsd',153),(157,'sdasd',153),(158,'dsad',153);
/*!40000 ALTER TABLE `question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_sequence`
--

DROP TABLE IF EXISTS `question_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_sequence`
--

LOCK TABLES `question_sequence` WRITE;
/*!40000 ALTER TABLE `question_sequence` DISABLE KEYS */;
INSERT INTO `question_sequence` VALUES (251);
/*!40000 ALTER TABLE `question_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_sequence`
--

DROP TABLE IF EXISTS `result_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_sequence`
--

LOCK TABLES `result_sequence` WRITE;
/*!40000 ALTER TABLE `result_sequence` DISABLE KEYS */;
INSERT INTO `result_sequence` VALUES (151);
/*!40000 ALTER TABLE `result_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_question` (
  `question_id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `FK6qwxhscjyuurceeboc1r5y95s` (`title_id`),
  CONSTRAINT `FK6qwxhscjyuurceeboc1r5y95s` FOREIGN KEY (`title_id`) REFERENCES `survey_title` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_question`
--

LOCK TABLES `survey_question` WRITE;
/*!40000 ALTER TABLE `survey_question` DISABLE KEYS */;
INSERT INTO `survey_question` VALUES (1,'Ques1.1',1),(2,'Ques1.2',1),(102,'ques2.1',102),(103,'ques2.2',102),(106,'tst',103),(107,'tst2',103),(152,'quest4.1',152),(153,'quest4.2',152);
/*!40000 ALTER TABLE `survey_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_result`
--

DROP TABLE IF EXISTS `survey_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_result` (
  `result_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `FKlsxi8ifk84jlc259gmtakhkkn` (`option_id`),
  KEY `FKhosl5rp34q2ftx4t5w29h4sff` (`user_id`),
  CONSTRAINT `FKhosl5rp34q2ftx4t5w29h4sff` FOREIGN KEY (`user_id`) REFERENCES `survey_user` (`user_id`),
  CONSTRAINT `FKlsxi8ifk84jlc259gmtakhkkn` FOREIGN KEY (`option_id`) REFERENCES `question_option` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_result`
--

LOCK TABLES `survey_result` WRITE;
/*!40000 ALTER TABLE `survey_result` DISABLE KEYS */;
INSERT INTO `survey_result` VALUES (1,1,1),(2,5,1),(3,1,2),(4,5,2),(5,1,3),(6,5,3),(7,1,4),(8,5,4),(9,1,5),(10,5,5),(11,1,6),(12,5,6),(13,2,7),(14,6,7),(15,102,8),(16,104,8),(17,102,9),(18,105,9),(19,4,10),(20,7,10),(21,102,11),(22,105,11),(23,102,12),(24,103,12),(25,102,13),(26,104,13),(52,1,52),(53,5,52),(54,155,53),(55,158,53),(56,152,54),(57,157,54),(58,155,55),(59,158,55),(60,152,56),(61,156,56);
/*!40000 ALTER TABLE `survey_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_title`
--

DROP TABLE IF EXISTS `survey_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_title` (
  `title_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_title`
--

LOCK TABLES `survey_title` WRITE;
/*!40000 ALTER TABLE `survey_title` DISABLE KEYS */;
INSERT INTO `survey_title` VALUES (1,'Product_1'),(102,'product_2'),(103,'product_3'),(152,'product_4');
/*!40000 ALTER TABLE `survey_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_user`
--

DROP TABLE IF EXISTS `survey_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_user`
--

LOCK TABLES `survey_user` WRITE;
/*!40000 ALTER TABLE `survey_user` DISABLE KEYS */;
INSERT INTO `survey_user` VALUES (1,'anonymous','anonymous'),(2,'anonymous','anonymous'),(3,'anonymous','anonymous'),(4,'dfsdf','hey'),(5,'fdsfsdf','hello'),(6,'fdsfsdf','wait'),(7,'anonymous','anonymous'),(8,'anonymous','anonymous'),(9,'anonymous','anonymous'),(10,'anonymous','anonymous'),(11,'anonymous','anonymous'),(12,'anonymous','anonymous'),(13,'anonymous','anonymous'),(14,'anonymous','anonymous'),(15,'anonymous','anonymous'),(16,'anonymous','anonymous'),(17,'anonymous','anonymous'),(18,'anonymous','anonymous'),(19,'anonymous','anonymous'),(20,'anonymous','anonymous'),(21,'anonymous','anonymous'),(22,'anonymous','anonymous'),(52,'anonymous','anonymous'),(53,'anonymous','anonymous'),(54,'anonymous','anonymous'),(55,'anonymous','anonymous'),(56,'anonymous','anonymous');
/*!40000 ALTER TABLE `survey_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_sequence`
--

DROP TABLE IF EXISTS `title_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_sequence`
--

LOCK TABLES `title_sequence` WRITE;
/*!40000 ALTER TABLE `title_sequence` DISABLE KEYS */;
INSERT INTO `title_sequence` VALUES (251);
/*!40000 ALTER TABLE `title_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sequence`
--

DROP TABLE IF EXISTS `user_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sequence`
--

LOCK TABLES `user_sequence` WRITE;
/*!40000 ALTER TABLE `user_sequence` DISABLE KEYS */;
INSERT INTO `user_sequence` VALUES (151);
/*!40000 ALTER TABLE `user_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-25 15:17:29
