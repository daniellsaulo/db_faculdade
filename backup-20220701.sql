-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  KEY `idx_CPF` (`CPF`),
  KEY `idx_nome_aluno` (`nome_aluno`),
  KEY `idx_email` (`email`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Daniel','Saulo','5712345874',1,'m','João Paulo Conceição','Maria Conceição','danielsaulo@gmail.com','61996002771',10,8,4),(2,'Rafael','Torres','13090776465',1,'m','Miguel Torres','Alice Torres','rafaeltorres@gmail.com','61992155745',NULL,7,3),(3,'João','Souza','43493297142',1,'m','Arthur Souza','Maria Helena Souza','joaosouza@gmail.com','',8,6,2),(4,'Ricardo','Souza','52234588007',1,'m','Samuel Souza','Valentina Souza','ricardosouza@gmail.com','61999413419',7,5,1),(5,'Sergio','Conceição','56128082106',1,'m','Carlos Eduardo Conceição','Maria da Conceição','sergioconceicao@gmail.com','61997066213',NULL,4,4),(6,'Daniel','Souza','67069738277',1,'m','Pedro Souza','Helena Souza','danielsouza@gmail.com','61996856837',5,3,2),(7,'Lenilza','Torres','65959231400',1,'f','Matheus Torres','Valentina Torres','lenilzatorres@gmail.com','61991072480',4,2,2),(8,'Kislem','Martins','2017709750',1,'f','Samuel Martins','Ana Martins','kislemmartins@gmail.com','',3,1,1),(9,'Katya','Zamolodchikova','68777755224',1,'f','Eduardo Souza','Maria Sarah','katyazamolodchikova@gmail.com','61994568240',2,8,4),(10,'Paulo','Torres','77497250587',1,'m','Murilo Torres','Nicole Torres','paulotorres@gmail.com','61992509705',1,7,3),(11,'Ives','Souza','96440105673',1,'m','Caio Souza','Bianca Souza','ivessouza@gmail.com','',10,6,2),(12,'Filipe','Medeiros','17203983322',1,'m','Isaac Medeiros','Alice Medeiros','filipemedeiros@gmail.com','61997527608',9,5,1),(13,'Antônio','Martins','22179014372',1,'m','Cauã Martins','Manuela Martins','daniantoniomartinselsaulo@gmail.com','61996739076',8,4,4),(14,'Jonas','Souza','43512724344',1,'m','João Souza','Lorena Souza','jonassouza@gmail.com','61998516499',7,3,3),(15,'Edgar','Maia','52643044297',1,'m','Emanual Maia','Agnes Maia','edgarmaia@gmail.com','',6,2,2),(16,'Yasmin','Souza','66025892034',1,'f','Enrico Souza','Brenda Souza','yasminsouza@gmail.com','61999228422',NULL,1,1),(17,'Isis','Meira','87877917112',1,'f','Miguel Meira','Isabela Meira','isismeira@gmail.com','61994944033',4,8,4),(18,'Larissa','Martins','44450426062',1,'f','Lorenzo Martins','Carol Martins','larissamartins@gmail.com','61993087300',3,7,3),(19,'Amanda','Maia','53064596707',1,'f','Rafael Maia','Daniella Maia','amandamaia@gmail.com','61993815956',2,6,2),(20,'Letícia','Torres','14758592578',1,'f','Victor Torres','Lia Torres','leticiatorres@gmail.com','61992382493',1,5,1);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`fk_cod_disciplina`,`fk_RA`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(1,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(1,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(1,5),(2,5),(3,5),(4,5),(5,5),(29,5),(30,5),(1,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,8),(21,8),(22,8),(23,8),(24,8),(25,8),(26,8),(1,9),(2,9),(3,9),(27,9),(28,9),(29,9),(30,9),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,11),(12,11),(13,11),(14,11),(15,11),(16,11),(17,11),(18,12),(19,12),(20,12),(21,12),(22,12),(23,12),(24,12),(1,13),(25,13),(26,13),(27,13),(28,13),(29,13),(30,13),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,15),(10,15),(11,15),(12,15),(13,15),(14,15),(15,15),(16,16),(17,16),(18,16),(19,16),(20,16),(21,16),(22,16),(23,17),(24,17),(25,17),(26,17),(27,17),(28,17),(29,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(30,18),(7,19),(8,19),(9,19),(10,19),(11,19),(12,19),(13,19),(14,20),(15,20),(16,20),(17,20),(18,20),(19,20),(20,20);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_alunos_disciplina` AFTER INSERT ON `aluno_disciplina` FOR EACH ROW UPDATE disciplina 
		   SET num_alunos = qtd_alunos_disciplina(NEW.fk_cod_disciplina)
		 WHERE cod_disciplina = NEW.fk_cod_disciplina */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(20) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  KEY `idx_nome_curso` (`nome_curso`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Eng. de software',5),(2,'Analise de sistemas',5),(3,'Biologia',3),(4,'Historia',1),(5,'Matematica',2),(6,'Engenharia eletrica',4),(7,'Pscicologia',1),(8,'Data Science',5),(9,'Engenheiro de Dados',5),(10,'Enfermagem',3);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (5,1),(4,2),(5,3),(1,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(3,27),(3,28),(3,29),(3,30);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(20) NOT NULL,
  PRIMARY KEY (`cod_departamento`),
  KEY `idx_nome_departamento` (`nome_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (3,'Biologicas'),(1,'Ciencias Humanas'),(4,'Estagio'),(2,'Matematica'),(5,'Tecnologia Informaçã');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(20) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  KEY `idx_nome_disciplina` (`nome_disciplina`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Raciocinio logico',40,'Estudo da lógica em preposições e tabelas',9,2),(2,'Pscicolog Cognitiva',50,'Estud da capacidade de perceber, aprender, lembrar',35,1),(3,'Eletronica digital',35,'Estudo de circuitos eletrônicos digitais',42,2),(4,'Programacao em C',60,'Estudo da linguagem de programação C',45,5),(5,'Geografia',50,'Estudo do espaço que ocupamos e suas característic',15,1),(6,'História',50,'Analisa todos os movimentos e fatos que ocorreram',19,1),(7,'Filosofia',30,'Conhecimento, com a criação de ideias',18,1),(8,'Sociologia',30,'Busca entender como nos comportamos na sociedade',21,1),(9,'Ética e justiça',20,'Estudo da ética e justça',26,1),(10,'Relações de trabalho',30,'Estudo das relações no ambiente de trabalho',23,1),(11,'Biologia Celular',30,'Estudo da Biologia celular',34,3),(12,'Botânica',40,'Estudo da botânica',31,3),(13,'Ciência Fisiológicas',30,'Estudo das ciências fisiológicas',30,3),(14,'Ecologia',30,'Estudo da ecologia',29,3),(15,'Fitopatologia',40,'Estudo da fitopatologia',19,3),(16,'Genética',70,'Estudo da genética',22,3),(17,'Morfologia',30,'Estudo da Morfologia',20,3),(18,'Zoologia',40,'Estudo da Zoologia',12,3),(19,'Gestão Seguran de TI',60,'Estudo da Gestão da Segurança de TI',32,5),(20,'Gestão de Projetos',50,'Estudo da Gestão de Projetos',30,5),(21,'Banco de Dados',70,'Estudo do Banco de Dados',46,5),(22,'Engenharia de Softwa',60,'Estudo da Engenharia de Software',45,5),(23,'Gestão de Infraestru',40,'Estudo da Gestão de Infraestrutura',40,5),(24,'Modelagem de Softwar',30,'Estudo da Modelagem de Software',49,5),(25,'Empreendedorismo',30,'Estudo do Empreendedorismo',32,5),(26,'Desenho Técnico',20,'Estudo do Desenho Técnico',35,5),(27,'Evolução',60,'Estudo da Evolução humana',22,3),(28,'Imunologia',40,'Estudo da Imunologia',19,3),(29,'Patologia',50,'Estudo da Patologia',27,3),(30,'Morfologia Vegetal',45,'Estudo da Morfologia Vegetal',17,3);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_disciplina` int NOT NULL,
  `fk_cod_historico` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_disciplina`,`fk_cod_historico`),
  KEY `fk_cod_historico` (`fk_cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
INSERT INTO `disciplina_historico` VALUES (1,1,6.00,107),(2,1,6.00,187),(3,1,10.00,164),(4,1,10.00,185),(5,1,10.00,227),(6,1,10.00,220),(7,1,10.00,126),(8,2,9.00,243),(9,2,9.00,131),(10,2,6.00,185),(11,2,6.00,182),(12,2,7.00,215),(13,2,8.00,150),(14,2,10.00,244),(15,3,6.00,231),(16,3,9.00,101),(17,3,7.00,222),(18,3,6.00,194),(19,3,9.00,237),(20,3,7.00,220),(21,3,7.00,226),(22,4,7.00,176),(23,4,10.00,136),(24,4,7.00,187),(25,4,6.00,122),(26,4,8.00,139),(27,4,9.00,211),(28,4,8.00,133),(29,5,6.00,211),(30,5,10.00,209);
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_professor`
--

DROP TABLE IF EXISTS `disciplina_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_professor` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `disciplina_professor_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `disciplina_professor_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_professor`
--

LOCK TABLES `disciplina_professor` WRITE;
/*!40000 ALTER TABLE `disciplina_professor` DISABLE KEYS */;
INSERT INTO `disciplina_professor` VALUES (4,1),(5,2),(4,3),(1,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(3,27),(3,28),(3,29),(3,30);
/*!40000 ALTER TABLE `disciplina_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `complemento` char(20) DEFAULT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradouro` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  KEY `idx_CEP` (`CEP`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua Oscar Freire',1345,'Oeste','70235498',1),(2,'Rua Freire Oscar',845,'Leste','70235798',2),(3,'Rua Madalena',545,'Norte','70015498',3),(4,'Rua Gustavo Paulo',45,'Sul','70287498',4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'2022-02-01','2025-12-10',1),(2,'2021-07-21','2025-06-12',2),(3,'2022-02-01','2023-12-01',3),(4,'2021-07-21','2024-11-30',4),(5,'2021-02-10','2025-12-02',5),(6,'2020-08-07','2023-06-10',6),(7,'2020-02-05','2023-12-04',7),(8,'2019-08-08','2023-06-02',8),(9,'2022-02-01','2025-12-09',9),(10,'2019-07-31','2023-06-02',10),(11,'2022-02-01','2025-12-10',11),(12,'2021-07-21','2025-06-12',12),(13,'2022-02-01','2023-12-01',13),(14,'2021-07-21','2024-11-30',14),(15,'2021-02-10','2025-12-02',15),(16,'2020-08-07','2023-06-10',16),(17,'2020-02-05','2023-12-04',17),(18,'2019-08-08','2023-06-02',18),(19,'2022-02-01','2025-12-09',19),(20,'2019-07-31','2023-06-02',20);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(50) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  KEY `idx_nome_professor` (`nome_professor`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Luciano','Lopes',1,5),(2,'Telma','Rocha',1,4),(3,'Ricardo','Amaral',1,3),(4,'Fabiana','Silva',1,2),(5,'Valda','Martins',1,1),(6,'Valdireny','Santos',1,5),(7,'Pedro','Silva',1,3),(8,'Raul','Anthony',0,2),(9,'Isabel','Mariah',0,1),(10,'Aparecida','Isadora',0,5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_remover_professor` BEFORE DELETE ON `professor` FOR EACH ROW DELETE FROM disciplina_professor 
        WHERE fk_cod_professor = OLD.cod_professor */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo` int NOT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo_telefone` (`fk_cod_tipo`),
  KEY `idx_num_telefone` (`num_telefone`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo`) REFERENCES `tipo_telefone` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'61992155745',1),(2,'61997527608',1),(3,'61996739076',1),(4,'61998516499',1),(5,'61993087300',1),(6,'61993727611',1),(7,'61990995419',1),(8,'61999231161',1),(9,'61997342782',1),(10,'61994057709',1),(11,'61992008006',1),(12,'61999194852',1),(13,'61999194852',1),(14,'61995156276',1),(15,'6133411327',2),(16,'6133678539',2),(17,'6133334771',2),(18,'6133674015',2),(19,'6133341408',2),(20,'6133095220',2),(21,'6133874259',2),(22,'6133225555',2),(23,'6133730221',3),(24,'6133683227',3),(25,'6133826132',3),(26,'6133254076',3),(27,'6133878773',3),(28,'6133460742',3);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_aluno_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,1,6),(2,1,15),(3,1,23),(4,2,1),(5,3,7),(6,4,8),(7,5,9),(8,5,16),(9,5,24),(10,6,10),(11,7,11),(12,8,12),(13,9,13),(14,9,17),(15,9,25),(16,10,14),(17,11,18),(18,12,2),(19,13,3),(20,14,4),(21,15,19),(22,16,20),(23,17,21),(24,18,5),(25,19,22),(26,20,26);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'apartamento'),(2,'casa'),(3,'loja'),(4,'lote'),(5,'quadra'),(6,'avenida'),(7,'chacara'),(8,'condominio'),(9,'setor');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'celular'),(2,'residenc'),(3,'comercia');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(8) DEFAULT NULL,
  `num_alunos` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `idx_periodo` (`periodo`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'vesperti',35,'2022-07-25','2022-12-02',1),(2,'matutino',42,'2022-08-02','2022-11-21',2),(3,'noturno',39,'2022-06-21','2022-10-29',3),(4,'vesperti',27,'2022-07-10','2022-09-15',4),(5,'matutino',41,'2022-09-03','2022-12-08',5),(6,'norutno',32,'2022-08-18','2022-10-30',6),(7,'vesperti',31,'2022-06-11','2022-08-12',7),(8,'noturno',30,'2022-07-05','2022-11-14',8);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_alunocurso`
--

DROP TABLE IF EXISTS `vw_alunocurso`;
/*!50001 DROP VIEW IF EXISTS `vw_alunocurso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunocurso` AS SELECT 
 1 AS `RA`,
 1 AS `nome`,
 1 AS `nome_curso`,
 1 AS `periodo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_alunodados`
--

DROP TABLE IF EXISTS `vw_alunodados`;
/*!50001 DROP VIEW IF EXISTS `vw_alunodados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_alunodados` AS SELECT 
 1 AS `nome_aluno`,
 1 AS `sobrenome_aluno`,
 1 AS `CPF`,
 1 AS `status`,
 1 AS `sexo`,
 1 AS `nome_pai`,
 1 AS `nome_mae`,
 1 AS `email`,
 1 AS `whatsapp`,
 1 AS `nome_rua`,
 1 AS `numero_rua`,
 1 AS `complemento`,
 1 AS `CEP`,
 1 AS `tipo_logradouro`,
 1 AS `num_telefone`,
 1 AS `tipo_telefone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_disciplinadepartamento`
--

DROP TABLE IF EXISTS `vw_disciplinadepartamento`;
/*!50001 DROP VIEW IF EXISTS `vw_disciplinadepartamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_disciplinadepartamento` AS SELECT 
 1 AS `nome_disciplina`,
 1 AS `nome_departamento`,
 1 AS `nome_curso`,
 1 AS `nome_professor`,
 1 AS `sobrenome_professor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_disciplinasnotas`
--

DROP TABLE IF EXISTS `vw_disciplinasnotas`;
/*!50001 DROP VIEW IF EXISTS `vw_disciplinasnotas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_disciplinasnotas` AS SELECT 
 1 AS `nome_disciplina`,
 1 AS `nota`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_professordisciplinas`
--

DROP TABLE IF EXISTS `vw_professordisciplinas`;
/*!50001 DROP VIEW IF EXISTS `vw_professordisciplinas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_professordisciplinas` AS SELECT 
 1 AS `nome_professor`,
 1 AS `sobrenome_professor`,
 1 AS `nome_disciplina`,
 1 AS `carga_horaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_qtd_alunos_disciplinas`
--

DROP TABLE IF EXISTS `vw_qtd_alunos_disciplinas`;
/*!50001 DROP VIEW IF EXISTS `vw_qtd_alunos_disciplinas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_qtd_alunos_disciplinas` AS SELECT 
 1 AS `Qtd de alunos por disciplina`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_qtd_alunos_todas_turmas`
--

DROP TABLE IF EXISTS `vw_qtd_alunos_todas_turmas`;
/*!50001 DROP VIEW IF EXISTS `vw_qtd_alunos_todas_turmas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_qtd_alunos_todas_turmas` AS SELECT 
 1 AS `Total de alunos por turma`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_alunocurso`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunocurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunocurso` AS select `a`.`RA` AS `RA`,concat(`a`.`nome_aluno`,' ',`a`.`sobrenome_aluno`) AS `nome`,`c`.`nome_curso` AS `nome_curso`,`t`.`periodo` AS `periodo` from ((`aluno` `a` join `curso` `c` on((`c`.`cod_curso` = `a`.`fk_cod_curso`))) join `turma` `t` on((`t`.`fk_cod_curso` = `c`.`cod_curso`))) order by `a`.`nome_aluno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_alunodados`
--

/*!50001 DROP VIEW IF EXISTS `vw_alunodados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_alunodados` AS select `a`.`nome_aluno` AS `nome_aluno`,`a`.`sobrenome_aluno` AS `sobrenome_aluno`,`a`.`CPF` AS `CPF`,`a`.`status` AS `status`,`a`.`sexo` AS `sexo`,`a`.`nome_pai` AS `nome_pai`,`a`.`nome_mae` AS `nome_mae`,`a`.`email` AS `email`,`a`.`whatsapp` AS `whatsapp`,`e`.`nome_rua` AS `nome_rua`,`e`.`numero_rua` AS `numero_rua`,`e`.`complemento` AS `complemento`,`e`.`CEP` AS `CEP`,`tl`.`tipo_logradouro` AS `tipo_logradouro`,`t`.`num_telefone` AS `num_telefone`,`tt`.`tipo_telefone` AS `tipo_telefone` from (((((`aluno` `a` join `endereco` `e` on((`e`.`cod_endereco` = `a`.`fk_cod_endereco`))) join `tipo_logradouro` `tl` on((`tl`.`cod_tipo_logradouro` = `e`.`fk_cod_tipo_logradouro`))) join `telefone_aluno` `ta` on((`ta`.`fk_RA` = `a`.`RA`))) join `telefone` `t` on((`t`.`cod_telefone` = `ta`.`fk_cod_telefone`))) join `tipo_telefone` `tt` on((`tt`.`cod_tipo` = `t`.`fk_cod_tipo`))) order by `a`.`nome_aluno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_disciplinadepartamento`
--

/*!50001 DROP VIEW IF EXISTS `vw_disciplinadepartamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_disciplinadepartamento` AS select `dis`.`nome_disciplina` AS `nome_disciplina`,`dep`.`nome_departamento` AS `nome_departamento`,`cur`.`nome_curso` AS `nome_curso`,`p`.`nome_professor` AS `nome_professor`,`p`.`sobrenome_professor` AS `sobrenome_professor` from (((((`disciplina` `dis` join `departamento` `dep` on((`dep`.`cod_departamento` = `dis`.`fk_cod_departamento`))) join `curso_disciplina` `cd` on((`cd`.`fk_cod_disciplina` = `dis`.`cod_disciplina`))) join `curso` `cur` on((`cur`.`cod_curso` = `cd`.`fk_cod_curso`))) join `disciplina_professor` `dp` on((`dp`.`fk_cod_disciplina` = `dis`.`cod_disciplina`))) join `professor` `p` on((`p`.`cod_professor` = `dp`.`fk_cod_professor`))) order by `dis`.`nome_disciplina` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_disciplinasnotas`
--

/*!50001 DROP VIEW IF EXISTS `vw_disciplinasnotas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_disciplinasnotas` AS select `d`.`nome_disciplina` AS `nome_disciplina`,`dh`.`nota` AS `nota` from (((`disciplina` `d` join `disciplina_historico` `dh` on((`dh`.`fk_cod_disciplina` = `d`.`cod_disciplina`))) join `historico` `h` on((`h`.`cod_historico` = `dh`.`fk_cod_historico`))) join `aluno` `a` on((`a`.`RA` = `h`.`fk_RA`))) where (`a`.`RA` = '10') order by `dh`.`nota` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_professordisciplinas`
--

/*!50001 DROP VIEW IF EXISTS `vw_professordisciplinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_professordisciplinas` AS select `p`.`nome_professor` AS `nome_professor`,`p`.`sobrenome_professor` AS `sobrenome_professor`,`d`.`nome_disciplina` AS `nome_disciplina`,`d`.`carga_horaria` AS `carga_horaria` from ((`professor` `p` join `disciplina_professor` `dp` on((`dp`.`fk_cod_professor` = `p`.`cod_professor`))) join `disciplina` `d` on((`d`.`cod_disciplina` = `dp`.`fk_cod_disciplina`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_qtd_alunos_disciplinas`
--

/*!50001 DROP VIEW IF EXISTS `vw_qtd_alunos_disciplinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_qtd_alunos_disciplinas` AS select `qtd_alunos_disciplina`(`aluno_disciplina`.`fk_cod_disciplina`) AS `Qtd de alunos por disciplina` from `aluno_disciplina` group by `aluno_disciplina`.`fk_cod_disciplina` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_qtd_alunos_todas_turmas`
--

/*!50001 DROP VIEW IF EXISTS `vw_qtd_alunos_todas_turmas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_qtd_alunos_todas_turmas` AS select `qtd_alunos_turma`(`turma`.`cod_turma`) AS `Total de alunos por turma` from `turma` order by `turma`.`cod_turma` */;
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

-- Dump completed on 2022-07-01 11:13:40
