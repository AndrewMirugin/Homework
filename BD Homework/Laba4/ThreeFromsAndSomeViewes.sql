-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 3nf
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `circuit`
--

DROP TABLE IF EXISTS `circuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circuit` (
  `idCircuit` int(11) NOT NULL,
  `Circuit Name` varchar(45) DEFAULT NULL,
  `Circuit City` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCircuit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circuit`
--

LOCK TABLES `circuit` WRITE;
/*!40000 ALTER TABLE `circuit` DISABLE KEYS */;
REPLACE INTO `circuit` VALUES (1,'Melbourne Grand Prix Circuit','Melbourne'),(2,'Shanghai International Circuit','Shanghai'),(3,'Bahrain International Circuit','Sakhir'),(4,'Sochi Autodrom','Sochi'),(5,'Circuit de Barcelona-Catalunya','Barcelona'),(6,'Circuit de Monaco','Monte Carlo'),(7,'Circuit Gilles Villeneuve','Montreal'),(8,'Baku City Circuit','Baku'),(9,'Red Bull Ring','Spielberg'),(10,'Silverstone Circuit','Silverstone'),(11,'Hungaroring','Budapest'),(12,'Circuit de Spa-Francorchamps','Stavelot'),(13,'Autodromo Nazionale Monza','Monza'),(14,'Marina Bay Street Circuit','Singapore'),(15,'Sepang International Circuit','Kuala Lumpur'),(16,'Suzuka International Racing Course','Suzuka'),(17,'Circuit of the Americas','Austin, Texas'),(18,'Autódromo Hermanos Rodríguez','Mexico City'),(19,'Circuit of the Americas','Austin,Texas'),(20,'Yas Marina Circuit','Abu Dhabi');
/*!40000 ALTER TABLE `circuit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `idLocation` int(11) NOT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Grand Prix` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
REPLACE INTO `location` VALUES (1,'Australia','Australian Grand Prix'),(2,'China',' Chinese Grand Prix'),(3,'Bahrain',' Bahrain Grand Prix'),(4,'Russia',' Russian Grand Prix'),(5,'Spain',' Spanish Grand Prix'),(6,'Monaco',' Monaco Grand Prix'),(7,'Canada',' Canadian Grand Prix'),(8,'Azerbaijan',' Azerbaijan Grand Prix'),(9,'Austria',' Austrian Grand Prix'),(10,'Great Britan',' British Grand Prix'),(11,'Hungary',' Hungarian Grand Prix'),(12,'Belgium',' Belgian Grand Prix'),(13,'Italy',' Italian Grand Prix'),(14,'Singapore',' Singapore Grand Prix'),(15,'Malaysia',' Malaysian Grand Prix'),(16,'Japan',' Japanese Grand Prix'),(17,'USA',' United States Grand Prix'),(18,'Mexico',' Mexican Grand Prix'),(19,'Brazil',' Brazilian Grand Prix'),(20,'Abu Dhabi',' Abu Dhabi Grand Prix');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racers`
--

DROP TABLE IF EXISTS `racers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racers` (
  `idRacers` int(11) NOT NULL,
  `Racer Name` varchar(45) DEFAULT NULL,
  `Racer Surname` varchar(45) DEFAULT NULL,
  `Racer Country` varchar(45) DEFAULT NULL,
  `Constructor name` varchar(45) DEFAULT NULL,
  `Constructor Country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRacers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racers`
--

LOCK TABLES `racers` WRITE;
/*!40000 ALTER TABLE `racers` DISABLE KEYS */;
REPLACE INTO `racers` VALUES (1,'Lewis','Hamilton','Great Britain','Mercedes','Germany'),(2,'Kimi','Räikkönen','Finland',NULL,NULL),(3,'Valtteri','Bottas','Finland',NULL,NULL),(4,'Sebastian','Vettel','Germany','Ferrari','Italy'),(5,'Sergio','Pérez','Mexico',NULL,NULL);
/*!40000 ALTER TABLE `racers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `idresult` int(11) NOT NULL,
  `Pole Position Racer ID` int(11) DEFAULT NULL,
  `Fastest Lap Racer ID` int(11) DEFAULT NULL,
  `Winning driver Racer ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idresult`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
REPLACE INTO `result` VALUES (1,1,2,4),(2,1,1,1),(3,3,1,4),(4,4,2,3),(5,1,1,1),(6,2,5,4),(7,1,1,1),(8,1,4,7),(9,3,1,3),(10,1,1,1),(11,4,8,4),(12,1,4,1),(13,1,7,1),(14,4,1,1),(15,1,4,6),(16,1,3,1),(17,1,4,1),(18,4,4,6),(19,3,6,4),(20,3,3,3);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thirdnf`
--

DROP TABLE IF EXISTS `thirdnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thirdnf` (
  `ID` int(11) NOT NULL,
  `LocationID` varchar(45) DEFAULT NULL,
  `Round` int(11) DEFAULT NULL,
  `idResult` int(11) DEFAULT NULL,
  `CircuitID` varchar(45) DEFAULT NULL,
  `Tournament` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thirdnf`
--

LOCK TABLES `thirdnf` WRITE;
/*!40000 ALTER TABLE `thirdnf` DISABLE KEYS */;
REPLACE INTO `thirdnf` VALUES (1,'1',1,1,'1','Grand Prix','2017-03-26'),(2,'2',2,2,'2','Grand Prix','2017-04-09'),(3,'3',3,3,'3','Grand Prix','2017-04-16'),(4,'4',4,4,'4','Grand Prix','2017-04-30'),(5,'5',5,5,'5','Grand Prix','2017-05-14'),(6,'6',6,6,'6','Grand Prix','2017-05-28'),(7,'7',7,7,'7','Grand Prix','2017-06-11'),(8,'8',8,8,'8','Grand Prix','2017-06-25'),(9,'9',9,9,'9','Grand Prix','2017-07-09'),(10,'10',10,10,'10','Grand Prix','2017-07-16'),(11,'11',11,11,'11','Grand Prix','2017-07-30'),(12,'12',12,12,'12','Grand Prix','2017-08-27'),(13,'13',13,13,'13','Grand Prix','2017-09-03'),(14,'14',14,14,'14','Grand Prix','2017-09-17'),(15,'15',15,15,'15','Grand Prix','2017-10-01'),(16,'16',16,16,'16','Grand Prix','2017-10-08'),(17,'17',17,17,'17','Grand Prix','2017-10-22'),(18,'18',18,18,'18','Grand Prix','2017-10-29'),(19,'19',19,19,'19','Grand Prix','2017-11-12'),(20,'20',20,20,'20','Grand Prix','2017-11-26');
/*!40000 ALTER TABLE `thirdnf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-25 21:29:46
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 1nf
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `1nf to circuit`
--

DROP TABLE IF EXISTS `1nf to circuit`;
/*!50001 DROP VIEW IF EXISTS `1nf to circuit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `1nf to circuit` AS SELECT 
 1 AS `Circuit Name`,
 1 AS `Circuit City`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `1nf to locations`
--

DROP TABLE IF EXISTS `1nf to locations`;
/*!50001 DROP VIEW IF EXISTS `1nf to locations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `1nf to locations` AS SELECT 
 1 AS `Country`,
 1 AS `Grand Prix`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `1nf to racers`
--

DROP TABLE IF EXISTS `1nf to racers`;
/*!50001 DROP VIEW IF EXISTS `1nf to racers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `1nf to racers` AS SELECT 
 1 AS `Racer name`,
 1 AS `Racer Surname`,
 1 AS `Racer country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `firstnf`
--

DROP TABLE IF EXISTS `firstnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firstnf` (
  `Round` int(11) NOT NULL,
  `Grand Prix Country` varchar(45) DEFAULT NULL,
  `GrandPrix` varchar(45) DEFAULT NULL,
  `Pole Position Country` varchar(45) DEFAULT NULL,
  `Pole Position Surname` varchar(45) DEFAULT NULL,
  `Pole Position Name` varchar(45) DEFAULT NULL,
  `Fastest Lap Country` varchar(45) DEFAULT NULL,
  `Fastest Lap Surname` varchar(45) DEFAULT NULL,
  `Fastest Lap Name` varchar(45) DEFAULT NULL,
  `Winning driver Country` varchar(45) DEFAULT NULL,
  `Winning driver Surname` varchar(45) DEFAULT NULL,
  `Winning driver Name` varchar(45) DEFAULT NULL,
  `Winning constructor  Coutry` varchar(45) DEFAULT NULL,
  `Winning Constructor` varchar(45) DEFAULT NULL,
  `Circuit Name` varchar(45) DEFAULT NULL,
  `Circuit City` varchar(45) DEFAULT NULL,
  `Tournament` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Round`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstnf`
--

LOCK TABLES `firstnf` WRITE;
/*!40000 ALTER TABLE `firstnf` DISABLE KEYS */;
REPLACE INTO `firstnf` VALUES (1,'Australia','Australian Grand Prix','Great Britain','Hamilton','Lewis','Finland','Räikkönen','Kimi','Germany','Vettel','Sebastian','Italy','Ferrari','Melbourne Grand Prix Circuit','Melbourne','Grand Prix 2017','2017-03-26'),(2,'Chinese','Chinese Grand Prix','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Germany','Mercedes','Shanghai International Circuit','Shanghai','Grand Prix 2017','2017-04-09'),(3,'Bahrain','Bahrain Grand Prix','Finland','Bottas','Valtteri','Great Britain','Hamilton','Lewis','Germany','Vettel','Sebastian','Italy','Ferrari','Bahrain International Circuit','Sakhir','Grand Prix 2017','2017-04-16'),(4,'Russia','Russian Grand Prix','Germany','Vettel','Sebastian','Finland','Räikkönen','Kimi','Finland','Bottas','Valtteri','Germany','Mercedes','Sochi Autodrom','Sochi','Grand Prix 2017','2017-04-30'),(5,'Spain','Spanish Grand Prix','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Germany','Mercedes','Circuit de Barcelona-Catalunya','Barcelona','Grand Prix 2017','2017-05-14'),(6,'Monaco','Monaco Grand Prix','Finland','Räikkönen','Kimi','Mexico','Pérez','Sergio','Germany','Vettel','Sebastian','Italy','Ferrari','Circuit de Monaco','Monte Carlo','Grand Prix 2017','2017-05-28'),(7,'Canada','Canadian Grand Prix','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Germany','Mercedes','Circuit Gilles Villeneuve','Montreal','Grand Prix 2017','2017-06-11'),(8,'Azerbaijan','Azerbaijan Grand Prix','Great Britain','Hamilton','Lewis','Germany','Vettel','Sebastian','Australia','Ricciardo','Daniel','Austria','Red Bull Racing-TAG Heuer','Baku City Circuit','Baku','Grand Prix 2017','2017-06-25'),(9,'Austria','Austrian Grand Prix','Finland','Bottas','Valtteri','Great Britain','Hamilton','Lewis','Finland','Bottas','Valtteri','Germany','Mercedes','Red Bull Ring','Spielberg','Grand Prix 2017','2017-07-09'),(10,'Great Britain','British Grand Prix','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Germany','Mercedes','Silverstone Circuit','Silverstone','Grand Prix 2017','2017-07-16'),(11,'Hungary','Hungarian Grand Prix','Germany','Vettel','Sebastian','Spain','Alonso','Fernando','Germany','Vettel','Sebastian','Italy','Ferrari','Melbourne Grand Prix Circuit','Melbourne','Grand Prix 2017','2017-07-30'),(12,'Belgium','Belgian Grand Prix','Great Britain','Hamilton','Lewis','Germany','Vettel','Sebastian','Great Britain','Hamilton','Lewis','Germany','Mercedes','Circuit de Spa-Francorchamps','Stavelot','Grand Prix 2017','2017-08-27'),(13,'Italy','Italian Grand Prix','Great Britain','Hamilton','Lewis','Australia','Ricciardo','Daniel','Great Britain','Hamilton','Lewis','Germany','Mercedes','Autodromo Nazionale Monza','Monza','Grand Prix 2017','2017-09-03'),(14,'Singapore','Singapore Grand Prix','Germany','Vettel','Sebastian','Great Britain','Hamilton','Lewis','Great Britain','Hamilton','Lewis','Germany','Mercedes','Marina Bay Street Circuit','Singapore','Grand Prix 2017','2017-09-17'),(15,'Malaysia','Malaysian Grand Prix','Great Britain','Hamilton','Lewis','Germany','Vettel','Sebastian','Netherlands','Verstappen','Max','Austria','Red Bull Racing-TAG Heuer','Sepang International Circuit','Kuala Lumpur','Grand Prix 2017','2017-10-01'),(16,'Japan','Japanese Grand Prix','Great Britain','Hamilton','Lewis','Finland','Bottas','Valtteri','Great Britain','Hamilton','Lewis','Germany','Mercedes','Suzuka International Racing Course','Suzuka','Grand Prix 2017','2017-10-08'),(17,'USA','United States Grand Prix','Great Britain','Hamilton','Lewis','Germany','Vettel','Sebastian','Great Britain','Hamilton','Lewis','Germany','Mercedes','Circuit of the Americas','Austin, Texas','Grand Prix 2017','2017-10-22'),(18,'Maxico','Mexican Grand Prix','Germany','Vettel','Sebastian','Germany','Vettel','Sebastian','Netherlands','Verstappen','Max','Austria','Red Bull Racing-TAG Heuer','Autódromo Hermanos Rodríguez','Mexico City','Grand Prix 2017','2017-10-29'),(19,'Brazil','Brazilian Grand Prix','Finland','Bottas','Valtteri','Netherlands','Verstappen','Max','Germany','Vettel','Sebastian','Italy','Ferrari','Circuit of the Americas','Austin,Texas','Grand Prix 2017','2017-11-12'),(20,'Abu Dhabi','Abu Dhabi Grand Prix','Finland','Bottas','Valtteri','Finland','Bottas','Valtteri','Finland','Bottas','Valtteri','Germany','Mercedes','Yas Marina Circuit','Abu Dhabi','Grand Prix 2017','2017-11-26');
/*!40000 ALTER TABLE `firstnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `1nf to circuit`
--

/*!50001 DROP VIEW IF EXISTS `1nf to circuit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Andrey.Mirugin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `1nf to circuit` AS select `firstnf`.`Circuit Name` AS `Circuit Name`,`firstnf`.`Circuit City` AS `Circuit City` from `firstnf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `1nf to locations`
--

/*!50001 DROP VIEW IF EXISTS `1nf to locations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Andrey.Mirugin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `1nf to locations` AS select `firstnf`.`Grand Prix Country` AS `Country`,`firstnf`.`GrandPrix` AS `Grand Prix` from `firstnf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `1nf to racers`
--

/*!50001 DROP VIEW IF EXISTS `1nf to racers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Andrey.Mirugin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `1nf to racers` AS select distinct `firstnf`.`Fastest Lap Name` AS `Racer name`,`firstnf`.`Fastest Lap Surname` AS `Racer Surname`,`firstnf`.`Fastest Lap Country` AS `Racer country` from `firstnf` union select distinct `firstnf`.`Pole Position Name` AS `Racer name`,`firstnf`.`Pole Position Surname` AS `Racer Surname`,`firstnf`.`Pole Position Country` AS `Racer country` from `firstnf` union select distinct `firstnf`.`Winning driver Name` AS `Racer name`,`firstnf`.`Winning driver Surname` AS `Racer Surname`,`firstnf`.`Winning driver Country` AS `Racer country` from `firstnf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-25 21:29:46
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 2nf
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `2nf to result`
--

DROP TABLE IF EXISTS `2nf to result`;
/*!50001 DROP VIEW IF EXISTS `2nf to result`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `2nf to result` AS SELECT 
 1 AS `Pole Position Racer ID`,
 1 AS `Fastest Lap Racer ID`,
 1 AS `Winning driver Racer ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `circuit`
--

DROP TABLE IF EXISTS `circuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circuit` (
  `idCircuit` int(11) NOT NULL,
  `Circuit Name` varchar(45) DEFAULT NULL,
  `Circuit City` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCircuit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circuit`
--

LOCK TABLES `circuit` WRITE;
/*!40000 ALTER TABLE `circuit` DISABLE KEYS */;
REPLACE INTO `circuit` VALUES (1,'Melbourne Grand Prix Circuit','Melbourne'),(2,'Shanghai International Circuit','Shanghai'),(3,'Bahrain International Circuit','Sakhir'),(4,'Sochi Autodrom','Sochi'),(5,'Circuit de Barcelona-Catalunya','Barcelona'),(6,'Circuit de Monaco','Monte Carlo'),(7,'Circuit Gilles Villeneuve','Montreal'),(8,'Baku City Circuit','Baku'),(9,'Red Bull Ring','Spielberg'),(10,'Silverstone Circuit','Silverstone'),(11,'Hungaroring','Budapest'),(12,'Circuit de Spa-Francorchamps','Stavelot'),(13,'Autodromo Nazionale Monza','Monza'),(14,'Marina Bay Street Circuit','Singapore'),(15,'Sepang International Circuit','Kuala Lumpur'),(16,'Suzuka International Racing Course','Suzuka'),(17,'Circuit of the Americas','Austin, Texas'),(18,'Autódromo Hermanos Rodríguez','Mexico City'),(19,'Circuit of the Americas','Austin,Texas'),(20,'Yas Marina Circuit','Abu Dhabi');
/*!40000 ALTER TABLE `circuit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `idLocation` int(11) NOT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Grand Prix` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
REPLACE INTO `location` VALUES (1,'Australia','Australian Grand Prix'),(2,'China',' Chinese Grand Prix'),(3,'Bahrain',' Bahrain Grand Prix'),(4,'Russia',' Russian Grand Prix'),(5,'Spain',' Spanish Grand Prix'),(6,'Monaco',' Monaco Grand Prix'),(7,'Canada',' Canadian Grand Prix'),(8,'Azerbaijan',' Azerbaijan Grand Prix'),(9,'Austria',' Austrian Grand Prix'),(10,'Great Britan',' British Grand Prix'),(11,'Hungary',' Hungarian Grand Prix'),(12,'Belgium',' Belgian Grand Prix'),(13,'Italy',' Italian Grand Prix'),(14,'Singapore',' Singapore Grand Prix'),(15,'Malaysia',' Malaysian Grand Prix'),(16,'Japan',' Japanese Grand Prix'),(17,'USA',' United States Grand Prix'),(18,'Mexico',' Mexican Grand Prix'),(19,'Brazil',' Brazilian Grand Prix'),(20,'Abu Dhabi',' Abu Dhabi Grand Prix');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racers`
--

DROP TABLE IF EXISTS `racers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racers` (
  `idRacers` int(11) NOT NULL,
  `Racer Name` varchar(45) DEFAULT NULL,
  `Racer Surname` varchar(45) DEFAULT NULL,
  `Racer Country` varchar(45) DEFAULT NULL,
  `Constructor name` varchar(45) DEFAULT NULL,
  `Constructor Country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRacers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racers`
--

LOCK TABLES `racers` WRITE;
/*!40000 ALTER TABLE `racers` DISABLE KEYS */;
REPLACE INTO `racers` VALUES (1,'Lewis','Hamilton','Great Britain','Mercedes','Germany'),(2,'Kimi','Räikkönen','Finland',NULL,NULL),(3,'Valtteri','Bottas','Finland',NULL,NULL),(4,'Sebastian','Vettel','Germany','Ferrari','Italy'),(5,'Sergio','Pérez','Mexico',NULL,NULL),(6,'Max','Verstppen','Netherlands','Red Bull Racing-TAG heuer','Austria'),(7,'Daniel','Ricciardo','Australia','Red Bull Racing-TAG heuer','Austria'),(8,'Fernando','Alonso','Sppain',NULL,NULL);
/*!40000 ALTER TABLE `racers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondnf`
--

DROP TABLE IF EXISTS `secondnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secondnf` (
  `ID` int(11) NOT NULL,
  `LocationID` varchar(45) DEFAULT NULL,
  `Round` int(11) DEFAULT NULL,
  `Pole Position Racer ID` int(11) DEFAULT NULL,
  `Fastest Lap Racer ID` int(11) DEFAULT NULL,
  `Winning driver Racer ID` int(11) DEFAULT NULL,
  `CircuitID` varchar(45) DEFAULT NULL,
  `Tournament` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondnf`
--

LOCK TABLES `secondnf` WRITE;
/*!40000 ALTER TABLE `secondnf` DISABLE KEYS */;
REPLACE INTO `secondnf` VALUES (1,'1',1,1,2,4,'1','Grand Prix','2017-03-26'),(2,'2',2,1,1,1,'2','Grand Prix','2017-04-09'),(3,'3',3,3,1,4,'3','Grand Prix','2017-04-16'),(4,'4',4,4,2,3,'4','Grand Prix','2017-04-30'),(5,'5',5,1,1,1,'5','Grand Prix','2017-05-14'),(6,'6',6,2,5,4,'6','Grand Prix','2017-05-28'),(7,'7',7,1,1,1,'7','Grand Prix','2017-06-11'),(8,'8',8,1,4,7,'8','Grand Prix','2017-06-25'),(9,'9',9,3,1,3,'9','Grand Prix','2017-07-09'),(10,'10',10,1,1,1,'10','Grand Prix','2017-07-16'),(11,'11',11,4,8,4,'11','Grand Prix','2017-07-30'),(12,'12',12,1,4,1,'12','Grand Prix','2017-08-27'),(13,'13',13,1,7,1,'13','Grand Prix','2017-09-03'),(14,'14',14,4,1,1,'14','Grand Prix','2017-09-17'),(15,'15',15,1,4,6,'15','Grand Prix','2017-10-01'),(16,'16',16,1,3,1,'16','Grand Prix','2017-10-08'),(17,'17',17,1,4,1,'17','Grand Prix','2017-10-22'),(18,'18',18,4,4,6,'18','Grand Prix','2017-10-29'),(19,'19',19,3,6,4,'19','Grand Prix','2017-11-12'),(20,'20',20,3,3,3,'20','Grand Prix','2017-11-26');
/*!40000 ALTER TABLE `secondnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `2nf to result`
--

/*!50001 DROP VIEW IF EXISTS `2nf to result`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Andrey.Mirugin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `2nf to result` AS select `secondnf`.`Pole Position Racer ID` AS `Pole Position Racer ID`,`secondnf`.`Fastest Lap Racer ID` AS `Fastest Lap Racer ID`,`secondnf`.`Winning driver Racer ID` AS `Winning driver Racer ID` from `secondnf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-25 21:29:46
