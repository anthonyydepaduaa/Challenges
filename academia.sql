CREATE DATABASE  IF NOT EXISTS `academia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `academia`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `matricula` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `cpf` char(11) NOT NULL,
  `telefone` char(11) NOT NULL,
  `endereço` varchar(250) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Anthony','10101778422','998922959','Aldeia - Camaragibe'),(2,'Lara','1145689230','996810529','Aldeia - Camaragibe'),(3,'Tarcio','35795146208','998526647','Santana - Camragibe'),(4,'Antonio','12345678900','995785313','Torre - Recife'),(5,'Maria','10014596322','999753654','Ibura - Recife'),(6,'Peter','15975365455','963258741','Queens - Brooklyn'),(7,'Itadori','00000000000','987654321','Toquio'),(8,'Roger','78945612300','951236478','Londres'),(9,'Jamal','78478478400','999999999','Nova Delhi'),(10,'Remy','11111111100','111111111','Paris');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `cpf` char(11) NOT NULL,
  `departamento` int NOT NULL,
  `salario` decimal(8,2) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Sara','26040213620',3,3600.00,NULL),(2,'Fernando','74554998594',1,1800.00,NULL),(3,'Geane','33361494297',3,7000.00,NULL),(4,'Italo','50684664132',1,600.00,NULL),(5,'Victoria','49783578252',5,1800.00,NULL),(6,'Heitor','8571135200',2,2000.00,NULL),(7,'Geovana','31093977016',5,1700.00,NULL),(8,'Tania','03779601443',6,2800.00,NULL),(9,'Xavier','89278416963',4,2500.00,NULL),(10,'Tom','52007684410',5,3600.00,NULL);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculado`
--

DROP TABLE IF EXISTS `matriculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculado` (
  `id_matriculado` int NOT NULL AUTO_INCREMENT,
  `fk_matricula` int DEFAULT NULL,
  PRIMARY KEY (`id_matriculado`),
  KEY `fk_matricula` (`fk_matricula`),
  CONSTRAINT `matriculado_ibfk_1` FOREIGN KEY (`fk_matricula`) REFERENCES `alunos` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculado`
--

LOCK TABLES `matriculado` WRITE;
/*!40000 ALTER TABLE `matriculado` DISABLE KEYS */;
/*!40000 ALTER TABLE `matriculado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidades`
--

DROP TABLE IF EXISTS `modalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidades` (
  `id_modalidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `duração` int DEFAULT NULL,
  PRIMARY KEY (`id_modalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidades`
--

LOCK TABLES `modalidades` WRITE;
/*!40000 ALTER TABLE `modalidades` DISABLE KEYS */;
INSERT INTO `modalidades` VALUES (1,'Jiu-Jitsu',120),(2,'Balé',90),(3,'Boxing',60),(4,'Musculação',90);
/*!40000 ALTER TABLE `modalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `cref` char(10) NOT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Renan','1598746302'),(2,'Ivan','7896541598');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 23:16:46
