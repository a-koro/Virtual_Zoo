-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: database-1.ccbxx7wy7jpj.eu-west-3.rds.amazonaws.com    Database: virtual_zoo
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `animal_id` varchar(36) NOT NULL DEFAULT (uuid()),
  `NAME` varchar(255) NOT NULL,
  `SPECIES_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`animal_id`),
  UNIQUE KEY `UC_ANIMAL` (`NAME`,`SPECIES_ID`),
  KEY `SPECIES_ID` (`SPECIES_ID`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`SPECIES_ID`) REFERENCES `species` (`species_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES ('be04e246-2de3-465a-9fe9-b606a576ec90','Didi','651990ea-8280-4933-a797-2bc4954ec897'),('203b3902-65e8-4f00-ac4c-ffdca1f02574','Fluffy','9b56577f-5e06-49ad-9306-eb5c0c1e6b45'),('c67373c3-47f9-4102-9005-1ceefa4ba5f3','Garry','e82ee068-cd07-4b4d-9488-7ca1609506cc'),('6d11c25b-dabc-4eb0-9db1-e43141f3e80f','Henry','d1fcf727-2a11-48f2-b304-3273b5ad3f7d'),('60fbc802-7bc1-49a8-86e1-dc63bfd1b6b2','Jack','9b56577f-5e06-49ad-9306-eb5c0c1e6b45'),('df9927dc-8c25-4cad-ac34-d23a00a5bbe3','Jerry','fd5ecc35-9146-4b30-98bf-d768c2c0a150'),('f571d6a2-5d87-440e-88e6-03753ac5d1a2','Rocky','d4c969c4-6e21-41cf-890b-68310b891fc7'),('e452695d-79fa-4e4d-8196-ffd4c7562e3b','Sandy','651990ea-8280-4933-a797-2bc4954ec897');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal_trick`
--

DROP TABLE IF EXISTS `animal_trick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal_trick` (
  `ANIMAL_TRICK_ID` varchar(36) NOT NULL DEFAULT (uuid()),
  `ANIMAL_ID` varchar(36) NOT NULL,
  `TRICK_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ANIMAL_TRICK_ID`),
  UNIQUE KEY `UC_ANIMAL_TRICK` (`ANIMAL_ID`,`TRICK_ID`),
  KEY `TRICK_ID` (`TRICK_ID`),
  CONSTRAINT `animal_trick_ibfk_1` FOREIGN KEY (`ANIMAL_ID`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `animal_trick_ibfk_2` FOREIGN KEY (`TRICK_ID`) REFERENCES `trick` (`TRICK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_trick`
--

LOCK TABLES `animal_trick` WRITE;
/*!40000 ALTER TABLE `animal_trick` DISABLE KEYS */;
INSERT INTO `animal_trick` VALUES ('c644c887-2dab-11ec-9cae-065a343272d0','203b3902-65e8-4f00-ac4c-ffdca1f02574','0b65feb2-0505-4583-9963-efef1229f95f'),('8ecefd41-2dab-11ec-9cae-065a343272d0','60fbc802-7bc1-49a8-86e1-dc63bfd1b6b2','0b65feb2-0505-4583-9963-efef1229f95f'),('8ed7f336-2dab-11ec-9cae-065a343272d0','60fbc802-7bc1-49a8-86e1-dc63bfd1b6b2','9ee45196-2cc5-11ec-8d3d-0242ac130003'),('8eea30eb-2dab-11ec-9cae-065a343272d0','60fbc802-7bc1-49a8-86e1-dc63bfd1b6b2','bb72d0a8-2cc5-11ec-8d3d-0242ac130003'),('8ee11ab2-2dab-11ec-9cae-065a343272d0','60fbc802-7bc1-49a8-86e1-dc63bfd1b6b2','e4b6df18-2cc5-11ec-8d3d-0242ac130003'),('40dd888e-37e3-4fe3-8800-76326cb558c6','6d11c25b-dabc-4eb0-9db1-e43141f3e80f','c82c1f98-2cc5-11ec-8d3d-0242ac130003'),('fbf8ae98-2cce-11ec-97bc-5c879c282ca5','be04e246-2de3-465a-9fe9-b606a576ec90','0d2b836c-933e-4430-813d-5292cfc20d3d'),('fbf8e370-2cce-11ec-97bc-5c879c282ca5','be04e246-2de3-465a-9fe9-b606a576ec90','1bb0c13c-1253-4e3d-8092-2bfded593699'),('fbf8f5b8-2cce-11ec-97bc-5c879c282ca5','be04e246-2de3-465a-9fe9-b606a576ec90','d4a95b1e-2cc5-11ec-8d3d-0242ac130003'),('36961302-2da4-11ec-9cae-065a343272d0','df9927dc-8c25-4cad-ac34-d23a00a5bbe3','0b65feb2-0505-4583-9963-efef1229f95f'),('369f118f-2da4-11ec-9cae-065a343272d0','df9927dc-8c25-4cad-ac34-d23a00a5bbe3','ad8f5515-2a94-4a96-ad41-b1e169fbb2e7'),('b92fbad3-f7b0-481e-88ba-48bb36b6c62f','e452695d-79fa-4e4d-8196-ffd4c7562e3b','0d2b836c-933e-4430-813d-5292cfc20d3d'),('0dc740fb-a5c4-4a22-aa05-de3c93aa8f92','e452695d-79fa-4e4d-8196-ffd4c7562e3b','d4a95b1e-2cc5-11ec-8d3d-0242ac130003');
/*!40000 ALTER TABLE `animal_trick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `species_id` varchar(36) NOT NULL DEFAULT (uuid()),
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`species_id`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES ('370ca227-9155-4588-9eef-bfa9eafaf466','baboon'),('9b56577f-5e06-49ad-9306-eb5c0c1e6b45','cat'),('651990ea-8280-4933-a797-2bc4954ec897','dog'),('fec47b54-2cc5-11ec-8d3d-0242ac130003','fish'),('d4c969c4-6e21-41cf-890b-68310b891fc7','gorilla'),('9f0b510b-82a0-469a-adc2-ab189786fa7b','parrot'),('e82ee068-cd07-4b4d-9488-7ca1609506cc','tiger'),('d1fcf727-2a11-48f2-b304-3273b5ad3f7d','turtle'),('fd5ecc35-9146-4b30-98bf-d768c2c0a150','zebra');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species_trick`
--

DROP TABLE IF EXISTS `species_trick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species_trick` (
  `SPECIES_TRICK_ID` varchar(36) NOT NULL,
  `SPECIES_ID` varchar(36) NOT NULL,
  `TRICK_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SPECIES_TRICK_ID`),
  UNIQUE KEY `SPECIES_ID` (`SPECIES_ID`,`TRICK_ID`),
  KEY `TRICK_ID` (`TRICK_ID`),
  CONSTRAINT `species_trick_ibfk_1` FOREIGN KEY (`SPECIES_ID`) REFERENCES `species` (`species_id`),
  CONSTRAINT `species_trick_ibfk_2` FOREIGN KEY (`TRICK_ID`) REFERENCES `trick` (`TRICK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species_trick`
--

LOCK TABLES `species_trick` WRITE;
/*!40000 ALTER TABLE `species_trick` DISABLE KEYS */;
INSERT INTO `species_trick` VALUES ('bda69c56-d935-491c-b773-30887ade565f','370ca227-9155-4588-9eef-bfa9eafaf466','060a816d-28a4-4512-9966-18176817bfc9'),('9bd86cfc-14e4-4654-b18f-a946ba0258fb','651990ea-8280-4933-a797-2bc4954ec897','0b65feb2-0505-4583-9963-efef1229f95f'),('36ed5ee7-26a8-46a1-bf45-db5e3e7cac16','651990ea-8280-4933-a797-2bc4954ec897','0d2b836c-933e-4430-813d-5292cfc20d3d'),('096b5f96-10c3-47cf-a2f6-d7a171cbecc7','651990ea-8280-4933-a797-2bc4954ec897','1bb0c13c-1253-4e3d-8092-2bfded593699'),('55f18705-389c-436b-bb3a-2284303019e2','651990ea-8280-4933-a797-2bc4954ec897','d4a95b1e-2cc5-11ec-8d3d-0242ac130003'),('adad0543-64c3-4cb9-8335-eb3b65ecf309','9b56577f-5e06-49ad-9306-eb5c0c1e6b45','0b65feb2-0505-4583-9963-efef1229f95f'),('1db736f7-df06-48ad-bf37-be0e23927786','9b56577f-5e06-49ad-9306-eb5c0c1e6b45','9ee45196-2cc5-11ec-8d3d-0242ac130003'),('ae6baf99-047a-49cc-a532-08c2d36a902a','9b56577f-5e06-49ad-9306-eb5c0c1e6b45','bb72d0a8-2cc5-11ec-8d3d-0242ac130003'),('12034302-0de6-4d87-93ab-9451cb0fb985','9b56577f-5e06-49ad-9306-eb5c0c1e6b45','e4b6df18-2cc5-11ec-8d3d-0242ac130003'),('370ca227-9155-4588-9eef-bfa9eafaf466','9f0b510b-82a0-469a-adc2-ab189786fa7b','667fa732-205f-4af4-8c10-ec04a5830156'),('7599d58e-1d27-4b8a-a279-e24329ad888f','d1fcf727-2a11-48f2-b304-3273b5ad3f7d','c82c1f98-2cc5-11ec-8d3d-0242ac130003'),('e8a253d9-636f-417c-964c-dfd904249aca','d4c969c4-6e21-41cf-890b-68310b891fc7','c90e1707-4813-4f42-9621-842a1538e527'),('5f5fdb47-01a7-4748-be8e-c18381db5b82','e82ee068-cd07-4b4d-9488-7ca1609506cc','0b65feb2-0505-4583-9963-efef1229f95f'),('a5548444-490a-4d93-9eca-b4f4358d2b19','fd5ecc35-9146-4b30-98bf-d768c2c0a150','0b65feb2-0505-4583-9963-efef1229f95f'),('aa3a25f9-0f24-41d6-8e1d-98b577f9aa0a','fd5ecc35-9146-4b30-98bf-d768c2c0a150','ad8f5515-2a94-4a96-ad41-b1e169fbb2e7'),('20ee75da-2ee6-4514-b648-ccafc2847210','fec47b54-2cc5-11ec-8d3d-0242ac130003','c82c1f98-2cc5-11ec-8d3d-0242ac130003');
/*!40000 ALTER TABLE `species_trick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trick`
--

DROP TABLE IF EXISTS `trick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trick` (
  `TRICK_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`TRICK_ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trick`
--

LOCK TABLES `trick` WRITE;
/*!40000 ALTER TABLE `trick` DISABLE KEYS */;
INSERT INTO `trick` VALUES ('0273565d-218d-41ca-963b-1a87f45a9bab','backFlip'),('0d2b836c-933e-4430-813d-5292cfc20d3d','barks'),('d4a95b1e-2cc5-11ec-8d3d-0242ac130003','chasesTail'),('060a816d-28a4-4512-9966-18176817bfc9','dances'),('be6d8941-777f-46c6-beb2-eb08e8fc0b34','fetchBall'),('9ee45196-2cc5-11ec-8d3d-0242ac130003','jumps'),('ad8f5515-2a94-4a96-ad41-b1e169fbb2e7','kicks'),('c82c1f98-2cc5-11ec-8d3d-0242ac130003','makesBubbles'),('1bb0c13c-1253-4e3d-8092-2bfded593699','rollsOver'),('e4b6df18-2cc5-11ec-8d3d-0242ac130003','scratchesPole'),('c90e1707-4813-4f42-9621-842a1538e527','showsFists'),('82372f39-4286-49df-8dd0-70f6cde68a72','sings'),('667fa732-205f-4af4-8c10-ec04a5830156','speaks'),('bb72d0a8-2cc5-11ec-8d3d-0242ac130003','walksOnTable'),('0b65feb2-0505-4583-9963-efef1229f95f','wavesTail');
/*!40000 ALTER TABLE `trick` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 15:25:47
