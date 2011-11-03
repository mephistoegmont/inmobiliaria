-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.12


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema inmobiliaria
--

CREATE DATABASE IF NOT EXISTS inmobiliaria;
USE inmobiliaria;

--
-- Definition of table `inmobiliaria`.`anuncios`
--

DROP TABLE IF EXISTS `inmobiliaria`.`anuncios`;
CREATE TABLE  `inmobiliaria`.`anuncios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inmobiliaria`.`anuncios`
--

/*!40000 ALTER TABLE `anuncios` DISABLE KEYS */;
LOCK TABLES `anuncios` WRITE;
INSERT INTO `inmobiliaria`.`anuncios` VALUES  (1,'Casa','\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"',NULL,'2011-10-03 13:08:14','2011-10-06 13:11:56'),
 (2,'que no!','NO ME TRATES DE ENGAÑAR!',NULL,'2011-10-03 13:08:31','2011-10-03 13:08:31'),
 (3,'3','Me vale Madres Todo',NULL,'2011-10-06 13:17:48','2011-10-06 13:17:48');
UNLOCK TABLES;
/*!40000 ALTER TABLE `anuncios` ENABLE KEYS */;


--
-- Definition of table `inmobiliaria`.`schema_migrations`
--

DROP TABLE IF EXISTS `inmobiliaria`.`schema_migrations`;
CREATE TABLE  `inmobiliaria`.`schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inmobiliaria`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `inmobiliaria`.`schema_migrations` VALUES  ('20110929124003');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
