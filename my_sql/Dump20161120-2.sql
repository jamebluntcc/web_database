CREATE DATABASE  IF NOT EXISTS `SEQ_SA_INFO` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `SEQ_SA_INFO`;
-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SEQ_SA_INFO
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.04.1

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
-- Table structure for table `analysis_master`
--

DROP TABLE IF EXISTS `analysis_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analysis_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `refer_ensemble` varchar(1) DEFAULT 'N',
  `refer_ncbi` varchar(1) DEFAULT 'N',
  `refer_ucsc` varchar(1) DEFAULT 'N',
  `refer_null` varchar(1) DEFAULT 'N',
  `refer_Prov_customer` varchar(45) DEFAULT '',
  `compare_method` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis_master`
--

LOCK TABLES `analysis_master` WRITE;
/*!40000 ALTER TABLE `analysis_master` DISABLE KEYS */;
INSERT INTO `analysis_master` VALUES (1,2,'N','N','N','N','','两两全比较','2016-10-06 03:09:42','王云华','2016-10-06 03:09:42','王云华');
/*!40000 ALTER TABLE `analysis_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compare_table`
--

DROP TABLE IF EXISTS `compare_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compare_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` int(11) DEFAULT NULL,
  `number` varchar(45) DEFAULT '',
  `comparison_name` varchar(45) DEFAULT '',
  `sample1` varchar(45) DEFAULT '',
  `sample2` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compare_table`
--

LOCK TABLES `compare_table` WRITE;
/*!40000 ALTER TABLE `compare_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `compare_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dna_sample_sequencing_type`
--

DROP TABLE IF EXISTS `dna_sample_sequencing_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dna_sample_sequencing_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dna_sample_sequencing_type`
--

LOCK TABLES `dna_sample_sequencing_type` WRITE;
/*!40000 ALTER TABLE `dna_sample_sequencing_type` DISABLE KEYS */;
INSERT INTO `dna_sample_sequencing_type` VALUES (1,1,'N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N',''),(2,2,'N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','');
/*!40000 ALTER TABLE `dna_sample_sequencing_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rna_sample_sequencing_type`
--

DROP TABLE IF EXISTS `rna_sample_sequencing_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rna_sample_sequencing_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rna_sample_sequencing_type`
--

LOCK TABLES `rna_sample_sequencing_type` WRITE;
/*!40000 ALTER TABLE `rna_sample_sequencing_type` DISABLE KEYS */;
INSERT INTO `rna_sample_sequencing_type` VALUES (1,1,'N','N','N','N','N','N','N','N','N',''),(2,2,'N','N','N','N','N','N','N','N','N','');
/*!40000 ALTER TABLE `rna_sample_sequencing_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_info_detail`
--

DROP TABLE IF EXISTS `sample_info_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_info_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `sample_name` char(50) DEFAULT NULL,
  `product_num` char(50) DEFAULT NULL,
  `concentration` char(50) DEFAULT NULL,
  `volume` char(50) DEFAULT NULL,
  `od_260_or_280` char(50) DEFAULT NULL,
  `pre_time` char(50) DEFAULT NULL,
  `database_type` char(50) DEFAULT NULL,
  `data_quantity` char(50) DEFAULT NULL,
  `quality_inspection` char(50) DEFAULT NULL,
  `any_single_num` char(50) DEFAULT NULL,
  `sample_number` char(50) DEFAULT NULL,
  `library_name` char(50) DEFAULT NULL,
  `index_num` char(50) DEFAULT NULL,
  `index_sequence` char(50) DEFAULT NULL,
  `library_type` char(50) DEFAULT NULL,
  `length_of_gel` char(50) DEFAULT NULL,
  `fragment_length` char(50) DEFAULT NULL,
  `library_volume` char(50) DEFAULT NULL,
  `data_size` char(50) DEFAULT NULL,
  `wg_cid` char(50) DEFAULT NULL,
  `lib_id` char(50) DEFAULT NULL,
  `sample_type` char(50) DEFAULT NULL,
  `q_rcb` char(50) DEFAULT NULL,
  `od` char(50) DEFAULT NULL,
  `rin` char(50) DEFAULT NULL,
  `lib_size` char(50) DEFAULT NULL,
  `qty` char(50) DEFAULT NULL,
  `original_sample_name` char(50) DEFAULT NULL,
  `project_id_e` char(50) DEFAULT NULL,
  `yield` char(50) DEFAULT NULL,
  `reads` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sample_info_detail_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_info_detail`
--

LOCK TABLES `sample_info_detail` WRITE;
/*!40000 ALTER TABLE `sample_info_detail` DISABLE KEYS */;
INSERT INTO `sample_info_detail` VALUES (2,2,'777','777','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(3,1,'111','111','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `sample_info_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_other`
--

DROP TABLE IF EXISTS `sample_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `reagent_kit_method` varchar(1) DEFAULT 'N',
  `ctab_method` varchar(1) DEFAULT 'N',
  `trizol_method` varchar(1) DEFAULT 'N',
  `other_method` varchar(45) DEFAULT '',
  `berry_handel` varchar(1) DEFAULT 'N',
  `ret_handel` varchar(1) DEFAULT 'N',
  `other_handel` varchar(45) DEFAULT '',
  `accord_contract` varchar(1) DEFAULT 'N',
  `special_needs` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_other`
--

LOCK TABLES `sample_other` WRITE;
/*!40000 ALTER TABLE `sample_other` DISABLE KEYS */;
INSERT INTO `sample_other` VALUES (1,1,'N','Y','Y','','N','N','','N','N'),(2,2,'N','N','N','','N','N','','N','N');
/*!40000 ALTER TABLE `sample_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_packet_information`
--

DROP TABLE IF EXISTS `sample_packet_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_packet_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` int(11) DEFAULT NULL,
  `sample_group` varchar(45) DEFAULT '',
  `repeated_experiment` varchar(45) DEFAULT '',
  `sample_name` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_packet_information`
--

LOCK TABLES `sample_packet_information` WRITE;
/*!40000 ALTER TABLE `sample_packet_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_packet_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_project_master`
--

DROP TABLE IF EXISTS `sample_project_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_project_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_number` varchar(11) DEFAULT NULL,
  `project_name` text,
  `cust_organization` text,
  `cust_user` varchar(45) DEFAULT '',
  `email` varchar(45) DEFAULT '',
  `cust_tel` varchar(45) DEFAULT '',
  `sale_name` varchar(45) DEFAULT '',
  `sp_delive_date` varchar(45) DEFAULT '',
  `sp_sum` varchar(45) DEFAULT '',
  `species` varchar(45) DEFAULT '',
  `project_leader` varchar(45) DEFAULT '陈中旭',
  `status` varchar(45) DEFAULT '等待送样',
  `created_by` varchar(45) DEFAULT '',
  `create_time` varchar(45) DEFAULT NULL,
  `project_log` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_number` (`project_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_project_master`
--

LOCK TABLES `sample_project_master` WRITE;
/*!40000 ALTER TABLE `sample_project_master` DISABLE KEYS */;
INSERT INTO `sample_project_master` VALUES (1,111,'111','111','111','111','111','111','111','111','','admin','建库测序','test','2016-10-06 00:05:59.482134','2016-10-06 00:05:59.482094: test create new project.\n\n2016-11-20 11:13:14.620004: test update this project.\n'),(2,222,'222','222','22','222','222','222','22','22','','王云华','样品快递','test','2016-10-06 03:00:32.067947','2016-10-06 03:00:32.067910: test create new project.\n\n2016-10-06 03:09:41.865390: 王云华 created compare method.\n');
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
  `project_id` int(11) NOT NULL,
  `lyophillization` varchar(1) DEFAULT 'Y',
  `te_buffer` varchar(1) DEFAULT 'Y',
  `ddh2o` varchar(1) DEFAULT 'N',
  `depc` varchar(1) DEFAULT 'N',
  `sample_species_other` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_species`
--

LOCK TABLES `sample_species` WRITE;
/*!40000 ALTER TABLE `sample_species` DISABLE KEYS */;
INSERT INTO `sample_species` VALUES (1,1,'Y','Y','Y','Y',''),(2,2,'N','N','N','Y','');
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
  `project_id` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_type`
--

LOCK TABLES `sample_type` WRITE;
/*!40000 ALTER TABLE `sample_type` DISABLE KEYS */;
INSERT INTO `sample_type` VALUES (1,1,'N','N','N','N','N','','N','N','N','N','N',''),(2,2,'N','N','N','N','N','','N','N','N','N','N','');
/*!40000 ALTER TABLE `sample_type` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'test','','test','test@qq.com','13455556667','亚洲hifasdhf',0,'','user','2016-04-09 22:43:31','2016-10-06 02:56:58','Y','航天6666',''),(2,'test2','','test','test','test','',0,'','user','2016-09-03 10:11:53','2016-09-03 10:11:53','Y','',''),(3,'admin','','admin','12','112312312','',0,'','manager','2016-09-30 23:51:18','2016-09-30 23:51:18','Y','',''),(4,'test3','','test','12','112312312','',0,'','user','2016-09-30 23:51:59','2016-09-30 23:51:59','Y','','<input class=\"editable\" role=\"textbox\" style=\"width: 98%;\" rowid=\"4\" name=\"notes\" id=\"4_notes\" type=\"text\">'),(5,'特阿特','','dfasdf','对发生的','','',0,'','user','2016-10-01 01:04:06','2016-10-01 01:04:06','R','',''),(6,'','','','','','',0,'','user','2016-10-01 01:13:38','2016-10-01 01:13:38','R','',''),(7,'王云华','','wyh','33@aa.com','13458415440','',0,'','manager','2016-10-01 01:22:11','2016-10-01 01:22:11','Y','',''),(8,'cc','','cc','cc@qq.com','13455556666','zhongguo',0,'','user','2016-10-05 19:12:40','2016-10-05 19:12:40','R','不噶',''),(9,'ccc','','ccc','ccc@qq.com','13344445555','ccc',0,'','user','2016-10-05 19:15:02','2016-10-05 19:15:02','R','ccc',''),(10,'cccc','','cccc','cccc@synne.com','15566667777','cccc',0,'','user','2016-10-05 19:21:41','2016-10-05 19:21:41','R','cccc',''),(11,'ccccc','','cccc','cccc@synne.com','15566667777','cccc',0,'','user','2016-10-05 19:22:24','2016-10-05 19:22:24','R','cccc',''),(12,'cccccc','','cccc','cccc@qq.com','15678879999','cccc',0,'','user','2016-10-05 19:23:27','2016-10-05 19:23:27','R','cccc',''),(13,'qq','','qq','qq@qq.com','15678900000','qq',0,'','user','2016-10-05 19:56:56','2016-10-05 19:56:56','R','qq',''),(14,'ccvvv','','cc','cc@qq.com','18628264390','cc',0,'','user','2016-10-05 19:58:05','2016-10-05 19:58:05','R','cc',''),(15,'1231','','12345678900','12312@qq.com','15577778888','213123123',0,'','user','2016-10-05 20:31:14','2016-10-05 20:31:14','R','123123',''),(16,'vv','','vvvvvvvvvvv','vvv@vv.com','13455556699','vvv',0,'','user','2016-10-09 23:02:44','2016-10-09 23:02:44','R','vvv',''),(17,'mm','南方人','mmmmmmmmmmm','mm@qq.com','13355567788','mmmm',0,'','user','2016-10-09 23:04:45','2016-10-09 23:16:56','Y','mm','');
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

-- Dump completed on 2016-11-20 11:53:13
