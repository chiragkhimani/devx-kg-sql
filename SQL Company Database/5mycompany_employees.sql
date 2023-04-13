-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: mycompany
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `joining_date` date NOT NULL,
  `birth_date` date NOT NULL,
  `country` varchar(16) DEFAULT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `designation_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `designation_id` (`designation_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`designation_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (101,'Emily','Song','F','2020-06-07','1995-05-23','USA','4544607280','Andson@gmail.com',5000,NULL,601,403),(102,'Milana','Dzhamankulova','F','2015-05-01','1998-02-10','India',NULL,'Brady@hotmail.com',3200,101,603,402),(103,'Diana','Pelivan','F','2014-01-20','1991-05-25','UK','7713909547','Carson@yahoo.in',9000,105,605,NULL),(104,'Tamerlan','Shamshidinov','M','2018-06-15','1995-06-11','Canada','6598654236','Gibbs@hotmail.com',1200,108,603,401),(105,'Aigerim','Azamatova','F','2015-09-08','1800-04-10','Bangladesh','9999999999','Fahad@gmail.com',8500,102,606,407),(106,'Madina','Umutbekova','F','2012-07-08','1984-05-25','Uzbek','2137938588','mansur@mail.ru',45000,103,610,402),(107,'Tair','Tumanbaev','M','2016-06-12','1993-08-01','USA','9855255040','Rose@gmail.com',51000,101,608,406),(108,'Azat','Azamatov','M','2002-01-07','1996-08-04','UK','5581487081','Hilda@outlook.com',7200,104,609,NULL),(109,'Ariana','Grande','F','2019-11-30','2022-01-01','Turkey','9173227273','Julie@gmail.com',6600,102,604,406),(110,'Sherbolot','Arbaev','M','2022-02-09','2020-06-07','UK','3065317634','Joy@yahoo.com',1100,NULL,606,401),(111,'Max','Baish','M','2013-12-23','2000-06-28','Turkey','7294838953','Alex@gmail.com',4900,101,603,407),(112,'Nargiza','Alymbekova','F','2000-01-01','1995-05-01','Canada','4576586856','nargiza@yahoo.in',6200,107,604,401),(113,'Jasmin','Raimbekova','F','2013-10-10','2019-09-02','India','612347890','karishma@gmail.com',8900,105,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10  8:03:36
