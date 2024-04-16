-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: colegio
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `colegio`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `colegio` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;

USE `colegio`;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `idalunos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `complemento` varchar(25) DEFAULT NULL,
  `cidade` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `fone` varchar(13) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idalunos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Maria de Fatima Gueiros','Rua das Pedras, 33','Santa Rita','Casa','Sao Joao Nepomuceno','MG','36680-000','3261-1010','mf@tybcc.com'),(2,'Luiz Felipe Doria','Rua das Conchas, 44','Sao Jose','Casa','Sao Joao Nepomuceno','MG','36680-000','3261-8855','lfd@xcc.com'),(3,'Julia Arinos Pontes	','Rua das Merces, 67','Cidade Nova','Casa','Sao Joao Nepomuceno','MG','36680-000','3261-0232','jap@yub.com'),(4,'Augusto Felix Simao','Rua Cel. Jose Dutra, 32/100','Centro','Apto','Sao Joao Nepomuceno','MG','36680-000','3261-7121','afs@uxn.com'),(5,'Maria Eugenia Simas','Rua Ten. Furtadinho, 22','Centro','Casa','Descoberto','MG','36690-000','3265-0011','mes@dcx.com'),(6,'Marcio Jose Bueno','Rua da Rede, 23','Centro','Casa','Bicas','MG','36600-000','3271-5533','mjb@fga.com'),(7,'Joana Maria Teixeira','Rua da Praia, 56','Alcantara','Casa','Descoberto','MG','36690-000','3265-9900','jmt@klmk.com'),(8,'Antonio Carlos Braga','Rua Duque de Caxias, 890','Alto dos Passos','Casa','Bicas','MG','36600-000','3271-7833','acb@ghf.com'),(9,'Gina Antunes','Av. Rio Branco, 7890/1001','Alto dos Passos','Apto','Juiz de Fora','MG','32211-098','3256-0061','gantunes@jqq.com'),(10,'Martha Albuquerque','Av. Perimetral, 786','Teixeiras','Casa','Juiz de Fora','MG','32556-998','3222-9876','ma@lop.com');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `turmas_idturmas` int(11) NOT NULL,
  `materias_idmaterias` int(11) NOT NULL,
  PRIMARY KEY (`turmas_idturmas`,`materias_idmaterias`),
  KEY `fk_turmas_has_materias_materias1_idx` (`materias_idmaterias`),
  KEY `fk_turmas_has_materias_turmas1_idx` (`turmas_idturmas`),
  CONSTRAINT `fk_turmas_has_materias_materias1` FOREIGN KEY (`materias_idmaterias`) REFERENCES `materias` (`idmaterias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_turmas_has_materias_turmas1` FOREIGN KEY (`turmas_idturmas`) REFERENCES `turmas` (`idturmas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,1),(1,2),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(3,6),(4,1),(4,2),(4,3),(4,4);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `idmaterias` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(45) NOT NULL,
  PRIMARY KEY (`idmaterias`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Portugues'),(2,'Matematica'),(3,'Geografia'),(4,'Historia'),(5,'Fisica'),(6,'Quimica');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculas` (
  `idmatriculas` int(11) NOT NULL AUTO_INCREMENT,
  `turmas_idturmas` int(11) NOT NULL,
  `alunos_idalunos` int(11) NOT NULL,
  `mensalidade` decimal(10,2) NOT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `dtinicio` date NOT NULL,
  `dtfim` date NOT NULL,
  PRIMARY KEY (`idmatriculas`),
  KEY `fk_alunos_has_turmas_turmas1_idx` (`turmas_idturmas`),
  KEY `fk_alunos_has_turmas_alunos1_idx` (`alunos_idalunos`),
  CONSTRAINT `fk_alunos_has_turmas_alunos1` FOREIGN KEY (`alunos_idalunos`) REFERENCES `alunos` (`idalunos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_has_turmas_turmas1` FOREIGN KEY (`turmas_idturmas`) REFERENCES `turmas` (`idturmas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (1,2,1,233.50,10.00,'2013-01-01','2013-12-20'),(2,4,3,233.50,30.00,'2013-01-01','2013-12-20'),(3,3,5,233.50,20.00,'2013-01-01','2013-12-20'),(4,1,4,233.50,15.00,'2013-01-01','2013-12-20'),(5,4,2,233.50,30.00,'2013-01-01','2013-12-20'),(6,3,6,233.50,40.00,'2013-01-01','2013-12-20'),(7,2,10,233.50,20.00,'2013-01-01','2013-12-20'),(8,1,8,233.50,10.00,'2013-01-01','2013-12-20'),(9,4,7,233.50,15.00,'2013-01-01','2013-12-20'),(10,4,9,233.50,25.00,'2013-01-01','2013-12-20');
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professores` (
  `idprofessores` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `complemento` varchar(25) DEFAULT NULL,
  `cidade` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `fone` varchar(13) NOT NULL,
  `materias_idmaterias` int(11) NOT NULL,
  PRIMARY KEY (`idprofessores`),
  KEY `fk_professores_materias1_idx` (`materias_idmaterias`),
  CONSTRAINT `fk_professores_materias1` FOREIGN KEY (`materias_idmaterias`) REFERENCES `materias` (`idmaterias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (1,'Joao Carlos Nunes','Rua dos Cravos, 32','Centro','Casa','Sao Joao Nepomuceno','MG','3261-1566',4),(2,'Luiz Fernando Aguiar','Rua das Rosas, 77','Sao Jose','Casa','Sao Joao Nepomuceno','MG','3261-7744',2),(3,'Maria Luisa Alcantara','Av. Rio Branco, 3000/102','Centro','Apartamento','Juiz de Fora','MG','32-3255-0099',1),(4,'Katia Farias de Sa','Rua Pres. Dutra, 22','Centro','Casa','Sao Joao Nepomuceno','MG','3261-8877',3);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turmas` (
  `idturmas` int(11) NOT NULL AUTO_INCREMENT,
  `turma` varchar(45) NOT NULL,
  PRIMARY KEY (`idturmas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'6 ano'),(2,'7 ano'),(3,'8 ano'),(4,'9 ano');
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16 19:42:39
