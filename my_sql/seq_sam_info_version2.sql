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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
-- Table structure for table `down_machine_table`
--

DROP TABLE IF EXISTS `down_machine_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `down_machine_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `down_quant` varchar(45) DEFAULT NULL,
  `reads` varchar(45) DEFAULT NULL,
  `q30` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `quality_inspection_table`
--
DROP TABLE IF EXISTS `quality_inspection_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_inspection_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
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
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `return_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `species` varchar(45) DEFAULT NULL,
  `surplus` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rna_sample_sequencing_type`
--

LOCK TABLES `rna_sample_sequencing_type` WRITE;
/*!40000 ALTER TABLE `rna_sample_sequencing_type` DISABLE KEYS */;
INSERT INTO `rna_sample_sequencing_type` VALUES (1,'1','N','N','N','N','N','N','N','N','N',''),(2,'2','N','N','N','N','N','N','N','Y','N',''),(3,'3','N','N','Y','N','N','N','Y','N','Y',''),(4,'4','Y','N','N','N','N','N','N','N','N','');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
  `change_time` varchar(45) DEFAULT NULL,
  `project_log` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_number` (`project_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `up_machine_table`
--

DROP TABLE IF EXISTS `up_machine_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `up_machine_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `upmachine_type` varchar(45) DEFAULT NULL,
  `upmachine_mode` varchar(45) DEFAULT NULL,
  `up_quant` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `up_down_compare_table`
--
DROP TABLE IF EXISTS `up_down_compare_table`;
CREATE TABLE `up_down_compare_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `sample_name` varchar(45) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `upmachine_time` varchar(45) DEFAULT NULL,
  `downmachine_time` varchar(45) DEFAULT NULL,
  `down_quant` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'admin','陈诚','admin','29155259@qq.com','18583994795','onmath',24,'','manager','2017-04-17 18:10:30','2017-04-26 16:35:21','Y','programmer',''),(2,'YYF','杨宇凡','123','','','',0,'','manager','0000-00-00 00:00:00','0000-00-00 00:00:00','Y','',''),(3,'test','jedrek','testtesttest','839588325@qq.com','17711112222','OnMath',0,'','user','2017-05-21 17:58:40','2017-05-21 17:58:40','Y','dd','');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count_upload_time_table`
--
DROP TABLE IF EXISTS `count_upload_time_table`;
CREATE TABLE `count_upload_time_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) NOT NULL,
  `send_sample_table` varchar(45) DEFAULT NULL,
  `quality_inspection_table` varchar(45) DEFAULT NULL,
  `up_machine_table` varchar(45) DEFAULT NULL,
  `down_machine_table` varchar(45) DEFAULT NULL,
  `return_table` varchar(45) DEFAULT NULL,
  `up_down_compare_table` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-22 17:26:10
