CREATE DATABASE  IF NOT EXISTS `fucapi`;
USE `fucapi`;

DROP TABLE IF EXISTS `aluno`;

CREATE TABLE `aluno` (
  `idaluno` int NOT NULL AUTO_INCREMENT,
  `nomealuno` varchar(45) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `datanascimento` date NOT NULL,
  `endereço` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`idaluno`)
);

LOCK TABLES `aluno` WRITE;

INSERT INTO `aluno` VALUES (1,'Joaquim Ruan Duarte','698.692.400-38','1982-06-15','rua 22 798','ruan@vizzacchi.com.br','fHjQIIRztn'),(2,'Ryan Martin Augusto Cavalcanti','315.181.490-57','1975-04-15','rua 23 546','ryan@formigueiromaquinas.com.br','NoaazhJ7BL'),(3,'Pedro Henrique Thomas Aparício','276.436.940-95','1962-06-03','Rua 58 250','pedro.henrique.aparicio@marramoncks.com.br','P4uAiMomMM');

UNLOCK TABLES;

DROP TABLE IF EXISTS `aula`;

CREATE TABLE `aula` (
  `idaula` int NOT NULL AUTO_INCREMENT,
  `id_turma` int NOT NULL,
  `dataaula` datetime NOT NULL,
  PRIMARY KEY (`idaula`)
);

LOCK TABLES `aula` WRITE;

INSERT INTO `aula` VALUES (1,1,'2022-11-05 00:00:00'),(2,2,'2022-11-05 00:00:00'),(3,3,'2022-11-05 00:00:00');

UNLOCK TABLES;

DROP TABLE IF EXISTS `disciplina`;

CREATE TABLE `disciplina` (
  `iddisciplina` int NOT NULL AUTO_INCREMENT,
  `nomedisplina` varchar(45) NOT NULL,
  `cargahoraria` varchar(45) NOT NULL,
  PRIMARY KEY (`iddisciplina`)
);

LOCK TABLES `disciplina` WRITE;

INSERT INTO `disciplina` VALUES (1,'Matematica','120 horas'),(2,'Portugues','220 horas'),(3,'Historia','200 horas');

UNLOCK TABLES;

DROP TABLE IF EXISTS `presenca`;

CREATE TABLE `presenca` (
  `idpresenca` int NOT NULL AUTO_INCREMENT,
  `id_aluno` int NOT NULL,
  `id_aula` int NOT NULL,
  PRIMARY KEY (`idpresenca`)
);

LOCK TABLES `presenca` WRITE;

INSERT INTO `presenca` VALUES (6,1,1),(7,2,3),(8,3,2);

UNLOCK TABLES;

DROP TABLE IF EXISTS `professor`;

CREATE TABLE `professor` (
  `idprofessor` int NOT NULL AUTO_INCREMENT,
  `nomeprofessor` varchar(45) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `datanascimento` datetime NOT NULL,
  `endereço` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`idprofessor`)
);

LOCK TABLES `professor` WRITE;

INSERT INTO `professor` VALUES (1,'Calebe Heitor Carvalho','700.200.033-07','1955-07-15 00:00:00','rua 26 728','calebe-carvalho95@carreiradasilva.com','Mf370eQhDn'),(2,'Yago Márcio Kauê Campos','909.657.632-26','1987-09-25 00:00:00','rua 11 566','yagomarciocampos@patrilarm.com.br','55MIIj9cUn'),(3,'Pietro Otávio Manoel de Paula','875.634.210-17','1992-01-08 00:00:00','Rua 238 230','pietro_otavio_depaula@consorciobcv.com.br','lX2DDKA4b3');

UNLOCK TABLES;

DROP TABLE IF EXISTS `turma`;

CREATE TABLE `turma` (
  `idturma` int NOT NULL AUTO_INCREMENT,
  `id_disciplina` int NOT NULL,
  `id_professor` varchar(45) NOT NULL,
  `datainicio` date NOT NULL,
  `datafim` date NOT NULL,
  PRIMARY KEY (`idturma`)
);

LOCK TABLES `turma` WRITE;

INSERT INTO `turma` VALUES (1,1,'3','2022-11-04','2022-12-04'),(2,2,'3','2022-11-04','2022-12-04'),(3,2,'2','2022-11-04','2022-12-04');

UNLOCK TABLES;

DROP TABLE IF EXISTS `turma_aluno`;

CREATE TABLE `turma_aluno` (
  `idturma_aluno` int NOT NULL AUTO_INCREMENT,
  `id_turma` int NOT NULL,
  `id_aluno` int NOT NULL,
  PRIMARY KEY (`idturma_aluno`)
);

LOCK TABLES `turma_aluno` WRITE;

INSERT INTO `turma_aluno` VALUES (44,1,1),(45,2,3),(46,3,2);

UNLOCK TABLES;
