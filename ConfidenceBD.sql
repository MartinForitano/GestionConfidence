-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: confidence
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adheridos`
--

DROP TABLE IF EXISTS `adheridos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adheridos` (
  `idA` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `apellido` varchar(70) DEFAULT NULL,
  `DNI` int(10) unsigned NOT NULL,
  `domicilio` varchar(150) DEFAULT NULL,
  `barrio` varchar(60) DEFAULT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT 'Santiago del Estero',
  `telefono` varchar(11) DEFAULT NULL,
  `profesion` varchar(60) DEFAULT NULL,
  `fecha_ing` date DEFAULT NULL,
  `fecha_prob_cobro` date DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL,
  `reingresante` tinyint(1) DEFAULT '0',
  `estado` tinyint(1) DEFAULT '1',
  `CantHijos` int(1) DEFAULT '0',
  `dniPadre` int(10) DEFAULT NULL,
  PRIMARY KEY (`idA`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adheridos`
--

LOCK TABLES `adheridos` WRITE;
/*!40000 ALTER TABLE `adheridos` DISABLE KEYS */;
INSERT INTO `adheridos` VALUES (1,'Marta Carolina','Taboada',141,'Belgrano y Rep del Libano',NULL,'rbbbrw','wggw','1935781','wg','2019-04-08','2019-05-14','r',0,1,0,0),(2,'ntr','rtnrnt',235235,'reh234',NULL,'rhfs','rhrhw','1231231231','rhw','2019-04-01','2019-05-07','',0,1,0,0),(3,'Raul','rhw',235,'etn',NULL,'net','nteten','1231231231','ten','2019-04-10','2019-05-16','A',0,0,0,0),(4,'rwb','wrg',1324123,'erb',NULL,'grw','wgrgrw','13421413123','wgr','2019-04-01','2019-05-07','',0,1,0,0),(5,'ergf','reh',12312312,'4tgwesdv',NULL,'swrf','weg','12312312312','wgre','2019-04-01','2019-05-07','',0,1,0,NULL),(6,'rrr','gr',235555,'837523',NULL,'krnbr','rnhb','3756298','hfbk.','2019-04-01','2019-05-07','o',0,1,0,0),(7,'Mario Ruben','Ferreyra',14567687,'Belgrano 777',NULL,'Stgo del Estero','Stgo del Estero','45476877645','Ingeniero','2019-04-10','2019-05-16','',0,1,0,NULL);
/*!40000 ALTER TABLE `adheridos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobros`
--

DROP TABLE IF EXISTS `cobros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cobros` (
  `idC` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` int(10) unsigned zerofill NOT NULL,
  `fecha_cobro` date DEFAULT NULL,
  `monto` decimal(15,2) DEFAULT '0.00',
  `cobrado` tinyint(4) DEFAULT NULL,
  `cant_personas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idC`),
  KEY `FK_CobroAdheridos_idx` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobros`
--

LOCK TABLES `cobros` WRITE;
/*!40000 ALTER TABLE `cobros` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','poder.exito'),(2,'usuario','confidence');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_comodines`
--

DROP TABLE IF EXISTS `view_comodines`;
/*!50001 DROP VIEW IF EXISTS `view_comodines`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_comodines` AS SELECT 
 1 AS `DNI`,
 1 AS `concat(nombre," ", apellido)`,
 1 AS `CantHijos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'confidence'
--

--
-- Dumping routines for database 'confidence'
--
/*!50003 DROP PROCEDURE IF EXISTS `buscarDNI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarDNI`(IN doc int)
begin 
   SELECT concat(t1.nombre," ", t1.apellido) as Adherido, t1.telefono, t1.fecha_Ing as "Fecha de Ingreso", t1.fecha_prob as "Fecha Probable de Cobro", concat(t2.nombre," ", t2.apellido) as Adherente_Padre, t2.telefono FROM adheridos AS t1 left  JOIN adheridos AS t2 ON t1.IdPadre = t2.idA  where t1.DNI=doc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarId`(IN id int)
begin 
   SELECT concat(t1.nombre," ", t1.apellido) as Adherido,t1.telefono, t1.fecha_Ing as "Fecha de Ingreso", t1.fecha_prob as "Fecha Probable de Cobro", concat(t2.nombre," ", t2.apellido) as Adherente_Padre, t2.telefono FROM adheridos AS t1 left  JOIN adheridos AS t2 ON t1.IdPadre = t2.idA  where t1.ida=id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPadreDeHijos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarPadreDeHijos`(in dni int)
BEGIN
	update adheridos set dniPadre = 0 where dniPadre = dni;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `existeDNI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `existeDNI`(in dnius int, out cod int)
BEGIN
if(exists(select * from adheridos where DNI = dnius))
then
select DNI into cod from adheridos where DNI = dnius;
else
set cod = -1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nivelcinco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nivelcinco`(IN doc int(11))
begin 
  SELECT concat(t1.nombre," ", t1.apellido) AS Adherente, count(distinct t6.nombre) as Nivel5, t1.telefono, t1.telefono, t1.fecha_Ing as "Fecha de Ingreso", t1.fecha_prob as "Fecha Probable de Cobro" FROM adheridos AS t1 LEFT JOIN adheridos AS t2 ON t2.IdPadre = t1.idA   LEFT JOIN adheridos AS t3 ON t3.IdPadre = t2.idA LEFT JOIN adheridos AS t4 ON t4.idPadre = t3.idA LEFT JOIN adheridos AS t5 ON   t5.idPadre = t4.idA LEFT JOIN adheridos AS t6 ON t6.idPadre = t5.idA WHERE t1.DNI =doc  group by t1.nombre; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `niveles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `niveles`(IN id int)
begin 
  SELECT concat(t1.nombre," ", t1.apellido) AS Adherente, count(distinct t2.Ida) as Nivel1, count(distinct t3.Ida) as Nivel2, count(distinct t4.Ida) as Nivel3, count(distinct t5.Ida) as Nivel4, count(distinct t6.Ida) as Nivel5, t1.telefono, t1.telefono, t1.fecha_Ing as "Fecha de Ingreso", t1.fecha_prob as "Fecha Probable de Cobro" FROM adheridos AS t1 LEFT JOIN adheridos AS t2 ON t2.IdPadre = t1.idA   LEFT JOIN adheridos AS t3 ON t3.IdPadre = t2.idA LEFT JOIN adheridos AS t4 ON t4.idPadre = t3.idA LEFT JOIN adheridos AS t5 ON   t5.idPadre = t4.idA LEFT JOIN adheridos AS t6 ON t6.idPadre = t5.idA WHERE t1.idA = id group by t1.nombre; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `traerCantHijos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `traerCantHijos`(in dnius int, out cant int)
BEGIN
if(exists(select * from adheridos where DNI = dnius))
then
select cantHijos into cant from adheridos where DNI = dnius;
else
set cant = -1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verificarEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verificarEstado`(in dnius int, out est boolean)
BEGIN
if(exists(select * from adheridos where DNI = dnius))
then
select estado into est from adheridos where DNI = dnius;
else
set est = 0;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verificarusuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verificarusuario`(in nom varchar(45) , in cont varchar(45), out permiso int)
BEGIN
declare usuario varchar(45);
declare contra varchar(45);
select nombre into usuario from usuarios where nombre = nom and contrasenia = cont;
select contrasenia into contra from usuarios where nombre = nom and contrasenia = cont;
if(nom = usuario and cont = contra)
then
	if(nom = "admin")
    then
    set permiso = 1;
    ELSE
    set permiso = 2;
    END IF;
ELSE
	set permiso = 0;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_comodines`
--

/*!50001 DROP VIEW IF EXISTS `view_comodines`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_comodines` AS select `adheridos`.`DNI` AS `DNI`,concat(`adheridos`.`nombre`,`adheridos`.`apellido`) AS `concat(nombre," ", apellido)`,`adheridos`.`CantHijos` AS `CantHijos` from `adheridos` where ((`adheridos`.`CantHijos` < 4) and (`adheridos`.`estado` = TRUE)) */;
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

-- Dump completed on 2019-04-12 22:49:57
