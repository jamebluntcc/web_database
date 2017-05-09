-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: SEQ_SAM_INFO
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `dna_analysis_type`
--

DROP TABLE IF EXISTS `dna_analysis_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dna_analysis_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `de_novo_sequencing` varchar(1) DEFAULT 'N',
  `whole_genome_re_sequencing` varchar(1) DEFAULT 'N',
  `exome_sequencing` varchar(1) DEFAULT 'N',
  `target_region_sequencing` varchar(1) DEFAULT 'N',
  `rad_sequencing` varchar(1) DEFAULT 'N',
  `chip_dna` varchar(1) DEFAULT 'N',
  `d16s_rdna` varchar(1) DEFAULT 'N',
  `metagenome` varchar(1) DEFAULT 'N',
  `dna_methy` varchar(1) DEFAULT 'N',
  `other` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dna_analysis_type`
--

LOCK TABLES `dna_analysis_type` WRITE;
/*!40000 ALTER TABLE `dna_analysis_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `dna_analysis_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dna_sample_sequencing_type`
--

DROP TABLE IF EXISTS `dna_sample_sequencing_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dna_sample_sequencing_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `resequencing` varchar(1) DEFAULT 'Y',
  `de_novo_sequencing` varchar(1) DEFAULT 'Y',
  `mate_pair` varchar(1) DEFAULT 'Y',
  `low_initial_weight_sequencing` varchar(1) DEFAULT 'Y',
  `exome` varchar(1) DEFAULT 'Y',
  `target_area_capture` varchar(1) DEFAULT 'Y',
  `purified` varchar(1) DEFAULT 'Y',
  `unpurified` varchar(1) DEFAULT 'Y',
  `d16s_rdna` varchar(1) DEFAULT 'Y',
  `rad` varchar(1) DEFAULT 'Y',
  `metagenome` varchar(1) DEFAULT 'Y',
  `chip_seq` varchar(1) DEFAULT 'Y',
  `dna_methylation_sequencing` varchar(1) DEFAULT 'Y',
  `rrbs` varchar(1) DEFAULT 'Y',
  `medip_seq` varchar(1) DEFAULT 'Y',
  `mitochondrial_dna_sequencing` varchar(1) DEFAULT 'Y',
  `dna_sample_sequencing_type_other` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dna_sample_sequencing_type`
--

LOCK TABLES `dna_sample_sequencing_type` WRITE;
/*!40000 ALTER TABLE `dna_sample_sequencing_type` DISABLE KEYS */;
INSERT INTO `dna_sample_sequencing_type` VALUES (1,'1','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N',''),(2,'2','Y','N','N','N','Y','N','N','N','N','N','Y','N','N','N','N','N',''),(3,'3','N','N','N','Y','N','N','N','N','N','N','N','N','Y','N','N','N','');
/*!40000 ALTER TABLE `dna_sample_sequencing_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dna_sample_type`
--

DROP TABLE IF EXISTS `dna_sample_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dna_sample_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `genome_dna` varchar(1) DEFAULT 'N',
  `pcr_fragment` varchar(1) DEFAULT 'N',
  `already_breaked_sample` varchar(1) DEFAULT 'N',
  `chiped_dna_sample` varchar(1) DEFAULT 'N',
  `type_other` varchar(45) DEFAULT NULL,
  `soluble_in_water` varchar(1) DEFAULT 'N',
  `soluble_in_TE_buffer` varchar(1) DEFAULT 'N',
  `soluble_in_alcohol` varchar(1) DEFAULT 'N',
  `soluble_in_qiagen_buffer` varchar(1) DEFAULT 'N',
  `dry_powder` varchar(1) DEFAULT 'N',
  `state_other` varchar(45) DEFAULT NULL,
  `reagent_kit_method` varchar(1) DEFAULT 'N',
  `ctab_method` varchar(1) DEFAULT 'N',
  `trizol_method` varchar(1) DEFAULT 'N',
  `other_method` varchar(45) DEFAULT NULL,
  `rnase_deal` varchar(1) DEFAULT 'N',
  `return_sample` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dna_sample_type`
--

LOCK TABLES `dna_sample_type` WRITE;
/*!40000 ALTER TABLE `dna_sample_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `dna_sample_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `down_machine_table`
--

DROP TABLE IF EXISTS `down_machine_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `down_machine_table` (
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `down_quant` varchar(45) DEFAULT NULL,
  `reads` varchar(45) DEFAULT NULL,
  `q30` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`sample_name`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `down_machine_table`
--

LOCK TABLES `down_machine_table` WRITE;
/*!40000 ALTER TABLE `down_machine_table` DISABLE KEYS */;
INSERT INTO `down_machine_table` VALUES ('test4','sam_id1','sam_1','34','45','34','','2017-04-24'),('test4','sam_id10','sam_10','','','32','','2017-04-24'),('test4','sam_id11','sam_11','63','12','','','2017-04-24'),('test4','sam_id12','sam_12','','','','','2017-04-24'),('test4','sam_id13','sam_13','53','33','','','2017-04-24'),('test4','sam_id14','sam_14','','','','','2017-04-24'),('test4','sam_id15','sam_15','','33','','','2017-04-24'),('test4','sam_id16','sam_16','65','','44','','2017-04-24'),('test4','sam_id17','sam_17','','','','','2017-04-24'),('test4','sam_id18','sam_18','','','','','2017-04-24'),('test4','sam_id19','sam_19','','','','','2017-04-24'),('test4','sam_id2','sam_2','32','','30','','2017-04-24'),('test4','sam_id3','sam_3','','','','','2017-04-24'),('test4','sam_id4','sam_4','','32','31','','2017-04-24'),('test4','sam_id5','sam_5','43','','','','2017-04-24'),('test4','sam_id6','sam_6','','','54','','2017-04-24'),('test4','sam_id7','sam_7','53','42','','','2017-04-24'),('test4','sam_id8','sam_8','','','','','2017-04-24'),('test4','sam_id9','sam_9','53','','12','','2017-04-24');
/*!40000 ALTER TABLE `down_machine_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_inspection_table`
--

DROP TABLE IF EXISTS `quality_inspection_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_inspection_table` (
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) DEFAULT NULL,
  `od_260_or_230` varchar(45) DEFAULT NULL,
  `od_260_or_280` varchar(45) DEFAULT NULL,
  `25S_or_18S` varchar(45) DEFAULT NULL,
  `rin` varchar(45) DEFAULT NULL,
  `volume` varchar(45) DEFAULT NULL,
  `concentration` varchar(45) DEFAULT NULL,
  `quantum` varchar(45) DEFAULT NULL,
  `database_type` varchar(45) DEFAULT NULL,
  `judgeresult` varchar(1) DEFAULT 'A',
  `comment` varchar(45) DEFAULT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`sample_name`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_inspection_table`
--

LOCK TABLES `quality_inspection_table` WRITE;
/*!40000 ALTER TABLE `quality_inspection_table` DISABLE KEYS */;
INSERT INTO `quality_inspection_table` VALUES ('test2','sample_1','sample_id_1','','','','','132.3','32','',NULL,'A','changed on 2017-04-26!','2017-04-26'),('test2','sample_10','sample_id_10','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_11','sample_id_11','','','','','100','43','',NULL,'B','','2017-04-24'),('test2','sample_12','sample_id_12','','','','','132.3','43','',NULL,'C','','2017-04-24'),('test2','sample_13','sample_id_13','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_14','sample_id_14','','','','','132.3','33','',NULL,'C','返样','2017-04-24'),('test2','sample_15','sample_id_15','','','','','144','43','',NULL,'A','','2017-04-24'),('test2','sample_16','sample_id_16','','','','','132.3','43','',NULL,'B','','2017-04-24'),('test2','sample_17','sample_id_17','','','','','132.3','43','',NULL,'B','','2017-04-24'),('test2','sample_18','sample_id_18','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_19','sample_id_19','','','','','132.3','43','',NULL,'C','返样','2017-04-24'),('test2','sample_2','sample_id_2','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_3','sample_id_3','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_4','sample_id_4','','','','','133.3','43','',NULL,'C','返样','2017-04-24'),('test2','sample_5','sample_id_5','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_6','sample_id_6','','','','','132.3','43','',NULL,'B','','2017-04-24'),('test2','sample_7','sample_id_7','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_8','sample_id_8','','','','','132.3','53','',NULL,'A','','2017-04-24'),('test2','sample_9','sample_id_9','','','','','132.3','43','',NULL,'C','返样','2017-04-24');
/*!40000 ALTER TABLE `quality_inspection_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_table`
--

DROP TABLE IF EXISTS `return_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_table` (
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `species` varchar(45) DEFAULT NULL,
  `surplus` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`sample_name`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_table`
--

LOCK TABLES `return_table` WRITE;
/*!40000 ALTER TABLE `return_table` DISABLE KEYS */;
INSERT INTO `return_table` VALUES ('test5','dog_1','狗','12','haha','2017-04-26'),('test5','dog_10','狗','','','2017-04-24'),('test5','dog_11','狗','','','2017-04-24'),('test5','dog_12','狗','65','','2017-04-24'),('test5','dog_13','狗','','','2017-04-24'),('test5','dog_14','狗','54','','2017-04-24'),('test5','dog_15','狗','','','2017-04-24'),('test5','dog_16','狗','34','','2017-04-24'),('test5','dog_17','狗','','','2017-04-24'),('test5','dog_18','狗','65','','2017-04-24'),('test5','dog_19','狗','','','2017-04-24'),('test5','dog_2','狗','32','','2017-04-24'),('test5','dog_3','狗','45','','2017-04-24'),('test5','dog_4','狗','','','2017-04-24'),('test5','dog_5','狗','','','2017-04-24'),('test5','dog_6','狗','43','','2017-04-24'),('test5','dog_7','狗','','','2017-04-24'),('test5','dog_8','狗','','','2017-04-24'),('test5','dog_9','狗','','','2017-04-24'),('test5','Pig_1','猪','4.5','','2017-04-26'),('test5','Pig_2','猪','6.3','','2017-04-26');
/*!40000 ALTER TABLE `return_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rna_analysis_type`
--

DROP TABLE IF EXISTS `rna_analysis_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rna_analysis_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `transcriptome_sequencing` varchar(1) DEFAULT 'N',
  `digital_gene_expression` varchar(1) DEFAULT 'N',
  `small_rna_sequencing` varchar(1) DEFAULT 'N',
  `long_non_coding_rna_sequencing` varchar(1) DEFAULT 'N',
  `other` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rna_analysis_type`
--

LOCK TABLES `rna_analysis_type` WRITE;
/*!40000 ALTER TABLE `rna_analysis_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `rna_analysis_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rna_sample_sequencing_type`
--

DROP TABLE IF EXISTS `rna_sample_sequencing_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rna_sample_sequencing_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `three_eukaryotic_mrna_seq` varchar(1) DEFAULT 'Y',
  `mrna_seq_prokaryotae` varchar(1) DEFAULT 'Y',
  `low_initial_amount_of_eukaryotic_mrna_seq` varchar(1) DEFAULT 'Y',
  `strand_specific_transcriptome` varchar(1) DEFAULT 'Y',
  `incrna_seq` varchar(1) DEFAULT 'Y',
  `c_dna_transcriptome` varchar(1) DEFAULT 'Y',
  `cdna_single_cell_transcriptom` varchar(1) DEFAULT 'Y',
  `small_rna_sequencing` varchar(1) DEFAULT 'Y',
  `plasma_small_rna_equencing` varchar(1) DEFAULT 'Y',
  `rna_sample_sequencing_type_other` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rna_sample_sequencing_type`
--

LOCK TABLES `rna_sample_sequencing_type` WRITE;
/*!40000 ALTER TABLE `rna_sample_sequencing_type` DISABLE KEYS */;
INSERT INTO `rna_sample_sequencing_type` VALUES (1,'1','N','N','N','N','N','N','N','N','N',''),(2,'2','N','N','N','N','N','N','N','Y','N',''),(3,'3','N','N','Y','N','N','N','Y','N','Y','');
/*!40000 ALTER TABLE `rna_sample_sequencing_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rna_sample_type`
--

DROP TABLE IF EXISTS `rna_sample_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rna_sample_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `total_rna` varchar(1) DEFAULT 'N',
  `ds_cdna` varchar(1) DEFAULT 'N',
  `removed_rrna` varchar(1) DEFAULT 'N',
  `removed_rmrna` varchar(1) DEFAULT 'N',
  `small_rna_sequencing` varchar(1) DEFAULT 'N',
  `type_other` varchar(1) DEFAULT 'N',
  `soluble_in_depc` varchar(1) DEFAULT 'N',
  `soluble_in_TE_buffer` varchar(1) DEFAULT 'N',
  `soluble_in_alcohol` varchar(1) DEFAULT 'N',
  `dry_powder` varchar(1) DEFAULT 'N',
  `state_other` varchar(45) DEFAULT NULL,
  `reagent_kit_method` varchar(1) DEFAULT 'N',
  `rnase_deal` varchar(1) DEFAULT 'N',
  `return_sample` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rna_sample_type`
--

LOCK TABLES `rna_sample_type` WRITE;
/*!40000 ALTER TABLE `rna_sample_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `rna_sample_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_other`
--

DROP TABLE IF EXISTS `sample_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) DEFAULT NULL,
  `reagent_kit_method` varchar(1) DEFAULT 'N',
  `ctab_method` varchar(1) DEFAULT 'N',
  `trizol_method` varchar(1) DEFAULT 'N',
  `other_method` varchar(45) DEFAULT '',
  `berry_handel` varchar(1) DEFAULT 'N',
  `ret_handel` varchar(1) DEFAULT 'N',
  `other_handel` varchar(45) DEFAULT '',
  `accord_contract` varchar(1) DEFAULT 'N',
  `special_needs` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_other`
--

LOCK TABLES `sample_other` WRITE;
/*!40000 ALTER TABLE `sample_other` DISABLE KEYS */;
INSERT INTO `sample_other` VALUES (1,'1','N','Y','Y','','Y','N','','N','N'),(2,'2','N','N','Y','','Y','N','','N','Y'),(3,'3','N','N','N','haha','Y','N','','Y','N');
/*!40000 ALTER TABLE `sample_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_project_master`
--

DROP TABLE IF EXISTS `sample_project_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_project_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_number` varchar(45) NOT NULL,
  `project_name` text,
  `cust_organization` text,
  `cust_user` varchar(45) DEFAULT '',
  `email` varchar(45) DEFAULT '',
  `cust_tel` varchar(45) DEFAULT '',
  `sale_name` varchar(45) DEFAULT '',
  `sp_delive_date` varchar(45) DEFAULT '',
  `sp_sum` varchar(45) DEFAULT '',
  `species` varchar(45) DEFAULT '',
  `project_leader` varchar(45) DEFAULT 'admin',
  `status` varchar(45) DEFAULT '等待送样',
  `created_by` varchar(45) DEFAULT '',
  `create_time` varchar(45) DEFAULT NULL,
  `project_log` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_number` (`project_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_project_master`
--

LOCK TABLES `sample_project_master` WRITE;
/*!40000 ALTER TABLE `sample_project_master` DISABLE KEYS */;
INSERT INTO `sample_project_master` VALUES (1,'test1','111','111','111','111','111','111','111','111','','admin','上机','test','2016-10-06 00:05:59.482134','2016-10-06 00:05:59.482094: test create new project.\n\n2016-11-20 11:13:14.620004: test update this project.\n\n2017-04-26 16:35:39.589163: admin update this project.\n\n2017-04-26 16:56:42.153522: admin update this project.\n'),(2,'test2','om-pig4','四川农业大学','江研制','test@test.com','8783236922','刘豪','2017-04-26','22','','admin','上机','admin','2017-04-26 16:44:10.409300','2017-04-26 16:44:10.409272: admin create new project.\n\n2017-04-26 16:44:33.238970: admin update this project.\n\n2017-04-26 17:08:56.892249: admin update this project.\n\n2017-04-26 17:30:06.252477: admin update this project.\n'),(3,'test_om-project-1','OM-dog-3','云南农业大学','狗肖','gouxiao@163.com','13529483048','刘豪','2017-04-28','37','','admin','送样','admin','2017-04-28 10:18:18.192585','2017-04-28 10:18:18.192556: admin create new project.\n');
/*!40000 ALTER TABLE `sample_project_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_species`
--

DROP TABLE IF EXISTS `sample_species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_species` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `lyophillization` varchar(1) DEFAULT 'Y',
  `te_buffer` varchar(1) DEFAULT 'Y',
  `ddh2o` varchar(1) DEFAULT 'N',
  `depc` varchar(1) DEFAULT 'N',
  `sample_species_other` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_species`
--

LOCK TABLES `sample_species` WRITE;
/*!40000 ALTER TABLE `sample_species` DISABLE KEYS */;
INSERT INTO `sample_species` VALUES (1,'1','Y','Y','Y','Y',''),(2,'2','Y','N','Y','N',''),(3,'3','Y','N','Y','N','');
/*!40000 ALTER TABLE `sample_species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_type`
--

DROP TABLE IF EXISTS `sample_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `genomic_dna` varchar(1) DEFAULT 'Y',
  `chip_dna` varchar(1) DEFAULT 'Y',
  `pcr_fragment` varchar(1) DEFAULT 'Y',
  `free_dna` varchar(1) DEFAULT 'Y',
  `mitochondrial_dna` varchar(1) DEFAULT 'Y',
  `others_dna` varchar(45) DEFAULT '',
  `total_rna` varchar(1) DEFAULT 'Y',
  `to_ribosomal_rna` varchar(1) DEFAULT 'Y',
  `small_rna` varchar(1) DEFAULT 'Y',
  `c_dna` varchar(1) DEFAULT 'Y',
  `plasma_rna` varchar(1) DEFAULT 'Y',
  `other_rna` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_type`
--

LOCK TABLES `sample_type` WRITE;
/*!40000 ALTER TABLE `sample_type` DISABLE KEYS */;
INSERT INTO `sample_type` VALUES (1,'1','N','N','N','N','N','','Y','N','N','N','N',''),(2,'2','N','Y','N','Y','N','','Y','N','N','Y','N',''),(3,'3','N','N','Y','N','N','','N','Y','N','N','Y','');
/*!40000 ALTER TABLE `sample_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_sample_table`
--

DROP TABLE IF EXISTS `send_sample_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_sample_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `species` varchar(45) DEFAULT NULL,
  `extract_part` varchar(45) NOT NULL,
  `sample_number` int(11) DEFAULT '1',
  `comment` varchar(100) DEFAULT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_sample_table`
--

LOCK TABLES `send_sample_table` WRITE;
/*!40000 ALTER TABLE `send_sample_table` DISABLE KEYS */;
INSERT INTO `send_sample_table` VALUES (1,'test1','dog-sam_1','狗','前肢',1,'haha','2017-04-28'),(2,'test1','dog-sam_1','狗','头',2,'提取头','2017-04-28'),(3,'test1','dog-sam_2','狗','前肢',1,'','2017-04-28'),(4,'test1','dog-sam_3','狗','骨头',3,'','2017-04-28'),(5,'test1','dog-sam_4','狗','骨头',1,'','2017-04-28'),(6,'test1','dog-sam_5','狗','骨头',1,'','2017-04-28'),(7,'test1','dog-sam_6','狗','骨头',1,'','2017-04-28'),(8,'test1','dog-sam_7','狗','骨头',1,'','2017-04-28'),(9,'test1','dog-sam_8','狗','骨头',1,'','2017-04-28'),(10,'test1','dog-sam_9','狗','骨头',2,'','2017-04-28'),(11,'test1','Ⅰ接10-A','高粱','叶片',1,'test','2017-04-18'),(12,'test1','Ⅰ接10-B','高粱','叶片',1,'test','2017-04-18'),(13,'test1','Ⅰ接11-B','高粱','叶片',1,'test','2017-04-18'),(14,'test1','Ⅰ接12-A','高粱','叶片',1,'test','2017-04-18'),(15,'test1','Ⅰ接12-B','高粱','叶片',1,'test','2017-04-18'),(16,'test1','Ⅰ接13-A','高粱','叶片',1,'test','2017-04-18'),(17,'test1','Ⅰ接13-B','高粱','叶片',1,'test','2017-04-18'),(18,'test1','Ⅰ接14-A','高粱','叶片',1,'test','2017-04-18'),(19,'test1','Ⅰ接14-B','高粱','叶片',1,'test','2017-04-18'),(20,'test1','Ⅰ接15-A','高粱','叶片',1,'test','2017-04-18'),(21,'test1','Ⅰ接15-B','高粱','叶片',1,'test','2017-04-18'),(22,'test1','Ⅰ接16-A','高粱','叶片',1,'test','2017-04-18'),(23,'test1','Ⅰ接16-B','高粱','叶片',1,'test','2017-04-18'),(24,'test1','Ⅰ接17-A','高粱','叶片',1,'test','2017-04-18'),(25,'test1','Ⅰ接17-B','高粱','叶片',1,'test','2017-04-18'),(26,'test1','Ⅰ接18-A','高粱','叶片',1,'test','2017-04-18'),(27,'test1','Ⅰ接18-B','高粱','叶片',1,'test','2017-04-18'),(28,'test1','Ⅰ接19-A','高粱','叶片',1,'test','2017-04-18'),(29,'test1','Ⅰ接19-B','高粱','叶片',2,'test','2017-04-26'),(30,'test1','Ⅰ接20-A','高粱','叶片',1,'test','2017-04-18'),(31,'test1','Ⅰ接20-B','高粱','叶片',1,'test','2017-04-18'),(32,'test1','Ⅰ接21-A','高粱','叶片',1,'test','2017-04-18');
/*!40000 ALTER TABLE `send_sample_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_machine_table`
--

DROP TABLE IF EXISTS `up_machine_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `up_machine_table` (
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) DEFAULT NULL,
  `upmachine_type` varchar(45) DEFAULT NULL,
  `upmachine_mode` varchar(45) DEFAULT NULL,
  `up_quant` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`sample_name`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_machine_table`
--

LOCK TABLES `up_machine_table` WRITE;
/*!40000 ALTER TABLE `up_machine_table` DISABLE KEYS */;
INSERT INTO `up_machine_table` VALUES ('test3','sample1','sampleid1','','','40','','2017-04-24'),('test3','sample10','sampleid10','','','','','2017-04-24'),('test3','sample11','sampleid11','','','','','2017-04-24'),('test3','sample12','sampleid12','','','','','2017-04-24'),('test3','sample13','sampleid13','','','','','2017-04-24'),('test3','sample14','sampleid14','','','','','2017-04-24'),('test3','sample15','sampleid15','','','','','2017-04-24'),('test3','sample16','sampleid16','','','','','2017-04-24'),('test3','sample17','sampleid17','','','','','2017-04-24'),('test3','sample18','sampleid18','','','','','2017-04-24'),('test3','sample19','sampleid19','','','','','2017-04-24'),('test3','sample2','sampleid2','','','43','','2017-04-24'),('test3','sample3','sampleid3','','','23','','2017-04-24'),('test3','sample4','sampleid4','','','43','','2017-04-24'),('test3','sample5','sampleid5','','','','','2017-04-24'),('test3','sample6','sampleid6','','','','','2017-04-24'),('test3','sample7','sampleid7','','','','','2017-04-24'),('test3','sample8','sampleid8','','','','','2017-04-24'),('test3','sample9','sampleid9','','','','','2017-04-24');
/*!40000 ALTER TABLE `up_machine_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `customer_name` varchar(45) DEFAULT '',
  `password` varchar(45) NOT NULL,
  `e_mail` varchar(45) DEFAULT '',
  `tel` varchar(45) DEFAULT '',
  `company` varchar(100) DEFAULT '',
  `age` int(5) unsigned DEFAULT '0',
  `sex` varchar(2) DEFAULT '',
  `role` varchar(45) DEFAULT 'user',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `field` varchar(100) DEFAULT '',
  `notes` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'admin','陈诚','admin','29155259@qq.com','18583994795','onmath',24,'','manager','2017-04-17 18:10:30','2017-04-26 16:35:21','Y','programmer','');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-09 10:13:01
