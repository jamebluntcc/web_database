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
-- Dumping data for table `dna_sample_sequencing_type`
--

LOCK TABLES `dna_sample_sequencing_type` WRITE;
/*!40000 ALTER TABLE `dna_sample_sequencing_type` DISABLE KEYS */;
INSERT INTO `dna_sample_sequencing_type` VALUES (1,'1','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N',''),(2,'2','Y','N','N','N','Y','N','N','N','N','N','Y','N','N','N','N','N',''),(3,'3','N','N','N','Y','N','N','N','N','N','N','N','N','Y','N','N','N',''),(4,'4','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','');
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
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`sample_id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `down_machine_table`
--

LOCK TABLES `down_machine_table` WRITE;
/*!40000 ALTER TABLE `down_machine_table` DISABLE KEYS */;
INSERT INTO `down_machine_table` VALUES ('OM-A-5','Y 4.19-2','R195238','6.06','40.4','95.04','CR160133-09','2016-10-12'),('OM-A-5','M 4.19-1','R195242','6.24','41.6','95.2','CR160133-09','2016-10-12'),('OM-A-5','M 4.19-2','R195244','6.23','41.57','93.96','CR160133-09','2016-10-12'),('OM-A-5','M 4.19-3','R195247','6.15','41','94.8','CR160133-09','2016-10-12'),('OM-A-5','Y 4.25-1','R195248','6.19','41.25','94.39','CR160133-09','2016-10-12'),('OM-A-5','Y 4.25-3','R195252','6.06','40.42','94.65','CR160133-09','2016-10-12'),('OM-A-5','M 4.25-1','R195254','6.18','41.17','94.77','CR160133-09','2016-10-12'),('OM-A-5','M 4.25-2','R195256','6.09','40.6','94.8','CR160133-09','2016-10-12'),('OM-A-5','M 4.25-3','R195258','6.12','40.83','94.96','CR160133-09','2016-10-12'),('OM-A-5','Y 5.3-1','R195260','6.19','41.3','94.53','CR160133-09','2016-10-12'),('OM-A-5','Y 5.3-3','R195264','6.02','40.15','95.11','CR160133-09','2016-10-12'),('OM-A-5','M 5.3-1','R195267','6.23','41.51','95.3','CR160133-09','2016-10-12'),('OM-A-5','M 5.3-2','R195268','6.16','41.07','95.79','CR160133-09','2016-10-12'),('OM-A-5','M 5.3-3','R195270','6.27','41.8','95.81','CR160133-09','2016-10-12'),('OM-A-5','Y 5.9-2','R195275','6.11','40.7','95.2','CR160133-09','2016-10-12'),('OM-A-5','M 5.9-3','R195282','6.06','40.42','95.52','CR160133-09','2016-10-12'),('OM-A-5','Y 4.19-1','R205595','6.29','41.97','96.45','CR160133-09','2016-10-12'),('OM-A-5','Y 4.19-3','R205598','6.22','41.46','95.63','CR160133-09','2016-10-12'),('OM-A-5','Y 4.25-2','R205605','6.1','40.7','95.75','CR160133-09','2016-10-12'),('OM-A-5','Y 5.3-2','R205607','6.18','41.22','96.28','CR160133-09','2016-10-12'),('OM-A-5','Y 5.9-1','R205609','6.28','41.86','95.31','CR160133-09','2016-10-12'),('OM-A-5','Y 5.9-3','R205611','6.3','41.98','95.93','CR160133-09','2016-10-12'),('OM-A-5','M 5.9-1','R205613','6.26','41.76','95.97','CR160133-09','2016-10-12'),('OM-A-5','M 5.9-2','R205615','6.25','41.7','95.58','CR160133-09','2016-10-12'),('test4','sam_id1','sam_1','34','45','34','','2017-04-24'),('test4','sam_id10','sam_10','','','32','','2017-04-24'),('test4','sam_id11','sam_11','63','12','','','2017-04-24'),('test4','sam_id12','sam_12','','','','','2017-04-24'),('test4','sam_id13','sam_13','53','33','','','2017-04-24'),('test4','sam_id14','sam_14','','','','','2017-04-24'),('test4','sam_id15','sam_15','','33','','','2017-04-24'),('test4','sam_id16','sam_16','65','','44','','2017-04-24'),('test4','sam_id17','sam_17','','','','','2017-04-24'),('test4','sam_id18','sam_18','','','','','2017-04-24'),('test4','sam_id19','sam_19','','','','','2017-04-24'),('test4','sam_id2','sam_2','32','','30','','2017-04-24'),('test4','sam_id3','sam_3','','','','','2017-04-24'),('test4','sam_id4','sam_4','','32','31','','2017-04-24'),('test4','sam_id5','sam_5','43','','','','2017-04-24'),('test4','sam_id6','sam_6','','','54','','2017-04-24'),('test4','sam_id7','sam_7','53','42','','','2017-04-24'),('test4','sam_id8','sam_8','','','','','2017-04-24'),('test4','sam_id9','sam_9','53','','12','','2017-04-24');
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
  PRIMARY KEY (`sample_id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_inspection_table`
--

LOCK TABLES `quality_inspection_table` WRITE;
/*!40000 ALTER TABLE `quality_inspection_table` DISABLE KEYS */;
INSERT INTO `quality_inspection_table` VALUES ('OM-A-5','Y 4.19-1','R195236','2','2','0.9','6.6','10070','45','453.2',NULL,'B','','2016-7-24'),('OM-A-5','Y 4.19-1','R195237','2.1','2','0','2.1','3020','43','129.9',NULL,'C','','2016-7-24'),('OM-A-5','Y 4.19-2','R195238','2.1','2','1.2','6.6','7010','46','322.5',NULL,'A','','2016-7-24'),('OM-A-5','Y 4.19-2','R195239','2.2','2.1','0.8','6.5','6800','47','319.6',NULL,'B','','2016-7-24'),('OM-A-5','Y 4.19-3','R195240','2.3','1.9','0.9','6.6','3530','48','169.4',NULL,'B','','2016-7-24'),('OM-A-5','Y 4.19-3','R195241','1.7','2.1','0.8','6.6','3480','48','167',NULL,'B','','2016-7-24'),('OM-A-5','M 4.19-1','R195242','2.2','2','0.9','6.5','5310','48','254.9',NULL,'B','','2016-7-24'),('OM-A-5','M 4.19-1','R195243','2.2','2.1','0.8','6.7','7650','48','367.2',NULL,'B','','2016-7-24'),('OM-A-5','M 4.19-2','R195244','1.9','2.1','0.9','6.6','6890','44','303.2',NULL,'B','','2016-7-24'),('OM-A-5','M 4.19-2','R195245','1.9','2.1','0.7','6.5','6390','47','300.3',NULL,'B','','2016-7-24'),('OM-A-5','M 4.19-3','R195246','1.5','2.1','0.9','6.7','5380','48','258.2',NULL,'B','','2016-7-24'),('OM-A-5','M 4.19-3','R195247','2.1','2.1','0.8','6.6','9820','45','441.9',NULL,'B','','2016-7-24'),('OM-A-5','Y 4.25-1','R195248','2','2.1','1','6.5','4610','48','221.3',NULL,'A','','2016-7-24'),('OM-A-5','Y 4.25-1','R195249','1.6','2','0.9','6.5','2380','48','114.2',NULL,'B','','2016-7-24'),('OM-A-5','Y 4.25-2','R195250','2.1','2','1','6.5','2210','48','106.1',NULL,'B','','2016-7-24'),('OM-A-5','Y 4.25-2','R195251','1.5','2','0.3','2.8','1420','48','68.2',NULL,'C','','2016-7-24'),('OM-A-5','Y 4.25-3','R195252','2','2','1.1','6.5','4550','44','200.2',NULL,'A','','2016-7-24'),('OM-A-5','Y 4.25-3','R195253','1.9','2','0.3','2.9','1650','46','75.9',NULL,'C','','2016-7-24'),('OM-A-5','M 4.25-1','R195254','2.2','2.1','1.1','6.6','3770','46','173.4',NULL,'A','','2016-7-24'),('OM-A-5','M 4.25-1','R195255','1.9','2.1','0.8','5.8','5020','47','235.9',NULL,'B','','2016-7-24'),('OM-A-5','M 4.25-2','R195256','2.1','2','1.1','6.9','3120','47','146.6',NULL,'A','','2016-7-24'),('OM-A-5','M 4.25-2','R195257','1.7','2','0.6','4.3','2210','47','103.9',NULL,'C','','2016-7-24'),('OM-A-5','M 4.25-3','R195258','1.1','2.1','1.1','6.7','2600','47','122.2',NULL,'A','','2016-7-24'),('OM-A-5','M 4.25-3','R195259','1.6','2','0.9','6.1','3250','49','159.3',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.3-1','R195260','1.6','2','1.1','6.8','3450','49','169.1',NULL,'A','','2016-7-24'),('OM-A-5','Y 5.3-1','R195261','1.6','2','1.1','6.7','2620','49','128.4',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.3-2','R195262','1.3','2','1.1','6.5','3775','49','185',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.3-2','R195263','1.7','2','1','6.5','1150','49','56.4',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.3-3','R195264','1.3','2','1.2','6.5','3215','49','157.5',NULL,'A','','2016-7-24'),('OM-A-5','Y 5.3-3','R195265','1.7','2','1.1','6.6','2245','49','110',NULL,'B','','2016-7-24'),('OM-A-5','M 5.3-1','R195266','1.3','2','1.4','5.3','2145','49','105.1',NULL,'C','','2016-7-24'),('OM-A-5','M 5.3-1','R195267','1.2','2','1.2','6.9','4700','46','216.2',NULL,'A','','2016-7-24'),('OM-A-5','M 5.3-2','R195268','1.5','2','1.4','6.9','1910','42','80.2',NULL,'A','','2016-7-24'),('OM-A-5','M 5.3-2','R195269','1.5','2','1','6.4','2885','48','138.5',NULL,'A','','2016-7-24'),('OM-A-5','M 5.3-3','R195270','0.7','2','1.4','6.7','2652','48','127.3',NULL,'A','','2016-7-24'),('OM-A-5','M 5.3-3','R195271','1.2','2','1.3','7.2','1680','48','80.6',NULL,'A','','2016-7-24'),('OM-A-5','Y 5.9-1','R195272','2.2','2','0.6','6.3','3910','48','187.7',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.9-1','R195273','1.8','2','1','6.5','3100','48','148.8',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.9-2','R195274','1.8','2','1','6.3','3620','44','159.3',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.9-2','R195275','1.8','2','1.2','6.6','3555','48','170.6',NULL,'A','','2016-7-24'),('OM-A-5','Y 5.9-3','R195276','1.6','2','1.3','6.4','4410','45','198.5',NULL,'B','','2016-7-24'),('OM-A-5','Y 5.9-3','R195277','1.9','2','1','6.2','2310','48','110.9',NULL,'B','','2016-7-24'),('OM-A-5','M 5.9-1','R195278','1.5','2','1.5','7','1488','27','40.2',NULL,'B','','2016-7-24'),('OM-A-5','M 5.9-1','R195279','0.7','2','1.3','6.4','1236','48','59.3',NULL,'B','','2016-7-24'),('OM-A-5','M 5.9-2','R195280','1.2','2.1','1.2','5.5','2433','26','63.3',NULL,'C','','2016-7-24'),('OM-A-5','M 5.9-2','R195281','0.8','2','1','6.2','1431','47','67.3',NULL,'B','','2016-7-24'),('OM-A-5','M 5.9-3','R195282','1.4','1.9','1.5','7.5','960','27','25.9',NULL,'A','','2016-7-24'),('OM-A-5','M 5.9-3','R195283','1','2','1.5','7.4','1098','47','51.6',NULL,'A','','2016-7-24'),('OM-A-5','Y4.19-1','R200116','0.6','2','0','2.4','779','48','37.4',NULL,'C','','2016-8-12'),('OM-A-5','Y4.19-1','R200117','0.5','2','0','2.5','494','48','23.7',NULL,'C','','2016-8-12'),('OM-A-5','Y4.19-3','R200118','0.7','2','0','2.5','795','48','38.2',NULL,'C','','2016-8-12'),('OM-A-5','Y4.19-3','R200119','0.5','2','0','2.3','1215','48','58.3',NULL,'C','','2016-8-12'),('OM-A-5','M4.19-1','R200120','0.6','2','0','2.5','520','48','25',NULL,'C','','2016-8-12'),('OM-A-5','M4.19-1','R200121','0.5','2','0','2.5','695','48','33.4',NULL,'C','','2016-8-12'),('OM-A-5','M4.19-2','R200122','0.5','2','0','2.1','2634','48','126.4',NULL,'C','','2016-8-12'),('OM-A-5','M4.19-2','R200123','1.4','2','0','2','4190','48','201.1',NULL,'C','','2016-8-12'),('OM-A-5','M4.19-3','R200124','1.9','1.9','0','2.2','5480','48','263',NULL,'C','','2016-8-12'),('OM-A-5','M4.19-3','R200125','1.2','2','0','2.1','4800','48','230.4',NULL,'C','','2016-8-12'),('OM-A-5','Y4.25-2','R200126','0.6','2','0','2','5877','48','282.1',NULL,'C','','2016-8-12'),('OM-A-5','Y4.25-2','R200127','1.8','2','0','2.2','4980','48','239',NULL,'C','','2016-8-12'),('OM-A-5','Y5.3-2','R200128','0.6','1.9','0','2.5','402','48','19.3',NULL,'C','','2016-8-12'),('OM-A-5','Y5.3-2','R200129','1','1.9','0','2.1','5025','48','241.2',NULL,'C','','2016-8-12'),('OM-A-5','Y5.9-1','R200130','0.6','2','0','2.4','1725','48','82.8',NULL,'C','','2016-8-12'),('OM-A-5','Y5.9-1','R200131','0.5','2','0','2.5','795','48','38.2',NULL,'C','','2016-8-12'),('OM-A-5','Y5.9-3','R200132','1','1.9','0','2.5','1240','48','59.5',NULL,'C','','2016-8-12'),('OM-A-5','Y5.9-3','R200133','0.4','1.9','0','2.6','423','48','20.3',NULL,'C','','2016-8-12'),('OM-A-5','M5.9-1','R200134','1','1.8','0','2.5','2400','32','76.8',NULL,'C','','2016-8-12'),('OM-A-5','M5.9-1','R200135','0.7','1.9','0','2.5','2530','24','60.7',NULL,'C','','2016-8-12'),('OM-A-5','M5.9-2','R200136','0.6','1.7','0','2.4','885','30','26.6',NULL,'C','','2016-8-12'),('OM-A-5','M5.9-2','R200137','1','1.6','0','2.3','3920','29','113.7',NULL,'C','','2016-8-12'),('OM-A-5','Y4.19-1','R205595','1.9','2.1','0.9','7.2','2800','49','137.2',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','Y4.19-1','R205596','1.8','2.2','0.9','7.1','2420','46','111.3',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','Y4.19-3','R205597','1.7','2.1','0.9','7.1','2530','46','116.4',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','Y4.19-3','R205598','1.6','2.1','0.9','7.4','1255','47','59',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','M4.19-1','R205599','2.3','2.2','0.9','6.7','3020','45','135.9',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','M4.19-1','R205600','2','2.2','0.9','7.4','6460','44','284.2',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','M4.19-2','R205601','2.2','2.2','0.9','7.2','3060','49','149.9',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','M4.19-2','R205602','2.2','2.1','0.9','7.1','3020','47','141.9',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','M4.19-3','R205603','1.9','2.2','0.9','7.2','4920','51','250.9',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','M4.19-3','R205604','1.8','2.2','0.9','7.3','2600','45','117',NULL,'B','25S/18S<1.0','2016-9-4'),('OM-A-5','Y4.25-2','R205605','1.9','2.1','1.1','7.1','1690','41','69.3',NULL,'A','','2016-9-4'),('OM-A-5','Y4.25-2','R205606','1.8','2.1','1.1','7.3','1455','45','65.5',NULL,'A','','2016-9-4'),('OM-A-5','Y5.3-2','R205607','1.6','2.1','1.2','7.2','1270','46','58.4',NULL,'A','','2016-9-4'),('OM-A-5','Y5.3-2','R205608','1.5','2.1','1.2','7.4','1500','45','67.5',NULL,'A','','2016-9-4'),('OM-A-5','Y5.9-1','R205609','1.7','2.1','1.3','7.4','1910','54','103.1',NULL,'A','','2016-9-4'),('OM-A-5','Y5.9-1','R205610','1.3','2.1','1.3','7.3','1560','50','78',NULL,'A','','2016-9-4'),('OM-A-5','Y5.9-3','R205611','1.3','2.1','1.3','7.3','1105','49','54.1',NULL,'A','','2016-9-4'),('OM-A-5','Y5.9-3','R205612','1.6','2.1','1.3','7.4','965','49','47.3',NULL,'A','','2016-9-4'),('OM-A-5','M5.9-1','R205613','1.1','2.1','1.9','9.6','930','47','43.7',NULL,'A','','2016-9-4'),('OM-A-5','M5.9-1','R205614','0.5','2.1','1.8','8.8','259','45','11.7',NULL,'A','','2016-9-4'),('OM-A-5','M5.9-2','R205615','1.3','2.1','1.7','7.4','2006','46','92.3',NULL,'A','','2016-9-4'),('OM-A-5','M5.9-2','R205616','0.7','2.1','1.8','8.4','3048','47','143.3',NULL,'A','','2016-9-4'),('test2','sample_1','sample_id_1','','','','','132.3','32','',NULL,'A','changed on 2017-04-26!','2017-04-26'),('test2','sample_10','sample_id_10','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_11','sample_id_11','','','','','100','43','',NULL,'B','','2017-04-24'),('test2','sample_12','sample_id_12','','','','','132.3','43','',NULL,'C','','2017-04-24'),('test2','sample_13','sample_id_13','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_14','sample_id_14','','','','','132.3','33','',NULL,'C','返样','2017-04-24'),('test2','sample_15','sample_id_15','','','','','144','43','',NULL,'A','','2017-04-24'),('test2','sample_16','sample_id_16','','','','','132.3','43','',NULL,'B','','2017-04-24'),('test2','sample_17','sample_id_17','','','','','132.3','43','',NULL,'B','','2017-04-24'),('test2','sample_18','sample_id_18','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_19','sample_id_19','','','','','132.3','43','',NULL,'C','返样','2017-04-24'),('test2','sample_2','sample_id_2','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_3','sample_id_3','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_4','sample_id_4','','','','','133.3','43','',NULL,'C','返样','2017-04-24'),('test2','sample_5','sample_id_5','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_6','sample_id_6','','','','','132.3','43','',NULL,'B','','2017-04-24'),('test2','sample_7','sample_id_7','','','','','132.3','43','',NULL,'A','','2017-04-24'),('test2','sample_8','sample_id_8','','','','','132.3','53','',NULL,'A','','2017-04-24'),('test2','sample_9','sample_id_9','','','','','132.3','43','',NULL,'C','返样','2017-04-24'),('test2','sample_1','sam_1','','','','','132.3','32','',NULL,'A','','2017-4-24'),('test2','sample_10','sam_10','','','','','132.3','43','',NULL,'A','','2017-4-24'),('test2','sample_11','sam_11','','','','','100','43','',NULL,'B','','2017-4-24'),('test2','sample_12','sam_12','','','','','132.3','43','',NULL,'C','','2017-4-24'),('test2','sample_13','sam_13','','','','','132.3','43','',NULL,'A','','2017-4-24'),('test2','sample_14','sam_14','','','','','132.3','33','',NULL,'C','返样','2017-4-24'),('test2','sample_15','sam_15','','','','','144','43','',NULL,'A','','2017-4-24'),('test2','sample_16','sam_16','','','','','132.3','43','',NULL,'B','','2017-4-24'),('test2','sample_17','sam_17','','','','','132.3','43','',NULL,'B','','2017-4-24'),('test2','sample_18','sam_18','','','','','132.3','43','',NULL,'A','','2017-4-24'),('test2','sample_19','sam_19','','','','','132.3','43','',NULL,'C','返样','2017-4-24'),('test2','sample_2','sam_2','','','','','132.3','43','',NULL,'A','','2017-4-24'),('test2','sample_4','sam_4','','','','','133.3','43','',NULL,'C','返样','2017-4-24'),('test2','sample_5','sam_5','','','','','132.3','43','',NULL,'A','','2017-4-24'),('test2','sample_6','sam_6','','','','','132.3','43','',NULL,'B','','2017-4-24'),('test2','sample_7','sam_7','','','','','132.3','43','',NULL,'A','','2017-4-24');
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
  `time` varchar(45) NOT NULL,
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
-- Dumping data for table `sample_other`
--

LOCK TABLES `sample_other` WRITE;
/*!40000 ALTER TABLE `sample_other` DISABLE KEYS */;
INSERT INTO `sample_other` VALUES (1,'1','N','Y','Y','','Y','N','','N','N'),(2,'2','N','N','Y','','Y','N','','N','Y'),(3,'3','N','N','N','haha','Y','N','','Y','N'),(4,'4','N','N','Y','','Y','Y','','Y','N');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_project_master`
--

LOCK TABLES `sample_project_master` WRITE;
/*!40000 ALTER TABLE `sample_project_master` DISABLE KEYS */;
INSERT INTO `sample_project_master` VALUES (1,'test1','111','111','111','111','111','111','111','111','','admin','上机','test','2016-10-06 00:05:59.482134','2016-10-06 00:05:59.482094: test create new project.\n\n2016-11-20 11:13:14.620004: test update this project.\n\n2017-04-26 16:35:39.589163: admin update this project.\n\n2017-04-26 16:56:42.153522: admin update this project.\n'),(2,'test2','om-pig4','四川农业大学','江研制','test@test.com','8783236922','刘豪','2017-04-26','22','','admin','上机','admin','2017-04-26 16:44:10.409300','2017-04-26 16:44:10.409272: admin create new project.\n\n2017-04-26 16:44:33.238970: admin update this project.\n\n2017-04-26 17:08:56.892249: admin update this project.\n\n2017-04-26 17:30:06.252477: admin update this project.\n'),(3,'test_om-project-1','OM-dog-3','云南农业大学','狗肖','gouxiao@163.com','13529483048','刘豪','2017-04-28','37','','admin','送样','admin','2017-04-28 10:18:18.192585','2017-04-28 10:18:18.192556: admin create new project.\n'),(4,'OM-A-5','24个小麦转录组','北京作物所','孔秀英','XX','XX','XX','XX','XX','','YYF','下机','YYF','2017-05-19 18:31:25.651607','2017-05-19 18:31:25.651583: YYF create new project.\n');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_species`
--

LOCK TABLES `sample_species` WRITE;
/*!40000 ALTER TABLE `sample_species` DISABLE KEYS */;
INSERT INTO `sample_species` VALUES (1,'1','Y','Y','Y','Y',''),(2,'2','Y','N','Y','N',''),(3,'3','Y','N','Y','N',''),(4,'4','N','N','N','Y','');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_type`
--

LOCK TABLES `sample_type` WRITE;
/*!40000 ALTER TABLE `sample_type` DISABLE KEYS */;
INSERT INTO `sample_type` VALUES (1,'1','N','N','N','N','N','','Y','N','N','N','N',''),(2,'2','N','Y','N','Y','N','','Y','N','N','Y','N',''),(3,'3','N','N','Y','N','N','','N','Y','N','N','Y',''),(4,'4','N','N','N','N','N','','Y','N','N','N','N','');
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
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_sample_table`
--

LOCK TABLES `send_sample_table` WRITE;
/*!40000 ALTER TABLE `send_sample_table` DISABLE KEYS */;
INSERT INTO `send_sample_table` VALUES (167,'OM-A-5','Y 4.19-1','小麦','叶片',2,'','2016-8-2'),(168,'OM-A-5','Y 4.19-2','小麦','叶片',2,'','2016-8-2'),(169,'OM-A-5','M 4.19-1','小麦','叶片',2,'','2016-8-2'),(170,'OM-A-5','M 4.19-2','小麦','叶片',2,'','2016-8-2'),(171,'OM-A-5','M 4.19-3','小麦','叶片',2,'','2016-8-2'),(172,'OM-A-5','Y 4.25-2','小麦','叶片',2,'','2016-8-2'),(173,'OM-A-5','Y 5.3-2','小麦','叶片',2,'','2016-8-2'),(174,'OM-A-5','Y 5.9-1','小麦','叶片',2,'','2016-8-2'),(175,'OM-A-5','Y 5.9-3','小麦','叶片',2,'','2016-8-2'),(176,'OM-A-5','M 5.9-1','小麦','叶片',2,'','2016-8-2'),(177,'OM-A-5','M 5.9-2','小麦','叶片',2,'','2016-8-2'),(178,'OM-A-5','Y 4.19-1','小麦','叶片',2,'','2016-7-13'),(179,'OM-A-5','Y 4.19-2','小麦','叶片',2,'','2016-7-13'),(180,'OM-A-5','Y 4.19-3','小麦','叶片',2,'','2016-7-13'),(181,'OM-A-5','M 4.19-1','小麦','叶片',2,'','2016-7-13'),(182,'OM-A-5','M 4.19-2','小麦','叶片',2,'','2016-7-13'),(183,'OM-A-5','M 4.19-3','小麦','叶片',2,'','2016-7-13'),(184,'OM-A-5','Y 4.25-1','小麦','叶片',2,'','2016-7-13'),(185,'OM-A-5','Y 4.25-2','小麦','叶片',2,'','2016-7-13'),(186,'OM-A-5','Y 4.25-3','小麦','叶片',2,'','2016-7-13'),(187,'OM-A-5','M 4.25-1','小麦','叶片',2,'','2016-7-13'),(188,'OM-A-5','M 4.25-2','小麦','叶片',2,'','2016-7-13'),(189,'OM-A-5','M 4.25-3','小麦','叶片',2,'','2016-7-13'),(190,'OM-A-5','Y 5.3-1','小麦','叶片',2,'','2016-7-13'),(191,'OM-A-5','Y 5.3-2','小麦','叶片',2,'','2016-7-13'),(192,'OM-A-5','Y 5.3-3','小麦','叶片',2,'','2016-7-13'),(193,'OM-A-5','M 5.3-1','小麦','叶片',2,'','2016-7-13'),(194,'OM-A-5','M 5.3-2','小麦','叶片',2,'','2016-7-13'),(195,'OM-A-5','M 5.3-3','小麦','叶片',2,'','2016-7-13'),(196,'OM-A-5','Y 5.9-1','小麦','叶片',2,'','2016-7-13'),(197,'OM-A-5','Y 5.9-2','小麦','叶片',2,'','2016-7-13'),(198,'OM-A-5','Y 5.9-3','小麦','叶片',2,'','2016-7-13'),(199,'OM-A-5','M 5.9-1','小麦','叶片',2,'','2016-7-13'),(200,'OM-A-5','M 5.9-2','小麦','叶片',2,'','2016-7-13'),(201,'OM-A-5','M 5.9-3','小麦','叶片',2,'','2016-7-13'),(202,'OM-A-5','Y 4.19-1','小麦','叶片',2,'','2016-8-26'),(203,'OM-A-5','Y 4.19-2','小麦','叶片',2,'','2016-8-26'),(204,'OM-A-5','M 4.19-1','小麦','叶片',2,'','2016-8-26'),(205,'OM-A-5','M 4.19-2','小麦','叶片',2,'','2016-8-26'),(206,'OM-A-5','M 4.19-3','小麦','叶片',2,'','2016-8-26'),(207,'OM-A-5','Y 4.25-2','小麦','叶片',2,'','2016-8-26'),(208,'OM-A-5','Y 5.3-2','小麦','叶片',2,'','2016-8-26'),(209,'OM-A-5','Y 5.9-1','小麦','叶片',2,'','2016-8-26'),(210,'OM-A-5','Y 5.9-3','小麦','叶片',2,'','2016-8-26'),(211,'OM-A-5','M 5.9-1','小麦','叶片',2,'','2016-8-26'),(212,'OM-A-5','M 5.9-2','小麦','叶片',2,'','2016-8-26'),(213,'OM-A-5','Y2282-L-1','小麦','',1,'','2016-8-9'),(214,'OM-A-5','Y2282-L-2','小麦','',1,'','2016-8-9'),(215,'OM-A-5','Y2282-L-3','小麦','',1,'','2016-8-9'),(216,'OM-A-5','Y2282-R-1','小麦','',1,'','2016-8-9'),(217,'OM-A-5','Y2282-R-2','小麦','',1,'','2016-8-9'),(218,'OM-A-5','Y2282-R-3','小麦','',1,'','2016-8-9'),(222,'test1','Ⅰ接11-B','高粱','叶片',1,'test','2017-4-18'),(223,'test1','Ⅰ接12-A','高粱','叶片',1,'test','2017-4-18'),(224,'test1','Ⅰ接12-B','高粱','叶片',1,'test','2017-4-18'),(225,'test1','Ⅰ接13-A','高粱','叶片',1,'test','2017-4-18'),(226,'test1','Ⅰ接13-B','高粱','叶片',1,'test','2017-4-18'),(227,'test1','Ⅰ接14-A','高粱','叶片',1,'test','2017-4-18'),(228,'test1','Ⅰ接14-B','高粱','叶片',1,'test','2017-4-18'),(229,'test1','Ⅰ接15-A','高粱','叶片',1,'test','2017-4-18'),(230,'test1','Ⅰ接15-B','高粱','叶片',1,'test','2017-4-18'),(231,'test1','Ⅰ接16-A','高粱','叶片',1,'test','2017-4-18'),(232,'test1','Ⅰ接16-B','高粱','叶片',1,'test','2017-4-18'),(233,'test1','Ⅰ接17-A','高粱','叶片',1,'test','2017-4-18'),(234,'test1','Ⅰ接17-B','高粱','叶片',1,'test','2017-4-18'),(235,'test1','Ⅰ接18-A','高粱','叶片',1,'test','2017-4-18'),(236,'test1','Ⅰ接18-B','高粱','叶片',1,'test','2017-4-18'),(237,'test1','Ⅰ接19-A','高粱','叶片',1,'test','2017-4-18'),(238,'test1','Ⅰ接19-B','高粱','叶片',1,'test','2017-4-18'),(239,'test1','Ⅰ接20-A','高粱','叶片',1,'test','2017-4-18'),(240,'test1','Ⅰ接20-B','高粱','叶片',1,'test','2017-4-18'),(241,'test1','Ⅰ接21-A','高粱','叶片',1,'test','2017-4-18'),(242,'test1','Ⅰ接21-B','高粱','叶片',1,'test','2017-4-18'),(244,'test1','Ⅰ接11-B','高粱','叶片',1,'test','2017-4-18'),(245,'test1','Ⅰ接12-A','高粱','叶片',1,'test','2017-4-18'),(246,'test1','Ⅰ接12-B','高粱','叶片',1,'test','2017-4-18'),(247,'test1','Ⅰ接13-A','高粱','叶片',1,'test','2017-4-18'),(248,'test1','Ⅰ接13-B','高粱','叶片',1,'test','2017-4-18'),(249,'test1','Ⅰ接14-A','高粱','叶片',1,'test','2017-4-18'),(250,'test1','Ⅰ接14-B','高粱','叶片',1,'test','2017-4-18'),(251,'test1','Ⅰ接15-A','高粱','叶片',1,'test','2017-4-18'),(252,'test1','Ⅰ接15-B','高粱','叶片',1,'test','2017-4-18'),(253,'test1','Ⅰ接16-A','高粱','叶片',1,'test','2017-4-18'),(254,'test1','Ⅰ接16-B','高粱','叶片',1,'test','2017-4-18'),(255,'test1','Ⅰ接17-A','高粱','叶片',1,'test','2017-4-18'),(256,'test1','Ⅰ接17-B','高粱','叶片',1,'test','2017-4-18'),(257,'test1','Ⅰ接18-A','高粱','叶片',1,'test','2017-4-18'),(258,'test1','Ⅰ接18-B','高粱','叶片',1,'test','2017-4-18'),(259,'test1','Ⅰ接19-A','高粱','叶片',1,'test','2017-4-18'),(260,'test1','Ⅰ接19-B','高粱','叶片',1,'test','2017-4-18'),(261,'test1','Ⅰ接20-A','高粱','叶片',1,'test','2017-4-18'),(262,'test1','Ⅰ接20-B','高粱','叶片',1,'test','2017-4-18'),(263,'test1','Ⅰ接21-A','高粱','叶片',1,'test','2017-4-18'),(264,'test1','Ⅰ接21-B','高粱','叶片',1,'test','2017-4-18'),(265,'test1','Ⅰ接22-A','高粱','叶片',1,'test','2017-4-18'),(266,'test1','Ⅰ接22-B','高粱','叶片',1,'test','2017-4-18'),(268,'test1','Ⅰ接12-B','高粱','叶片',1,'test','2017-4-18'),(269,'test1','Ⅰ接13-A','高粱','叶片',1,'test','2017-4-18'),(270,'test1','Ⅰ接13-B','高粱','叶片',1,'test','2017-4-18'),(271,'test1','Ⅰ接14-A','高粱','叶片',1,'test','2017-4-18'),(272,'test1','Ⅰ接14-B','高粱','叶片',1,'test','2017-4-18'),(273,'test1','Ⅰ接15-A','高粱','叶片',1,'test','2017-4-18'),(274,'test1','Ⅰ接15-B','高粱','叶片',1,'test','2017-4-18'),(275,'test1','Ⅰ接16-A','高粱','叶片',1,'test','2017-4-18'),(276,'test1','Ⅰ接16-B','高粱','叶片',1,'test','2017-4-18'),(277,'test1','Ⅰ接17-A','高粱','叶片',1,'test','2017-4-18'),(278,'test1','Ⅰ接17-B','高粱','叶片',1,'test','2017-4-18'),(279,'test1','Ⅰ接18-A','高粱','叶片',1,'test','2017-4-18'),(280,'test1','Ⅰ接18-B','高粱','叶片',1,'test','2017-4-18'),(281,'test1','Ⅰ接19-A','高粱','叶片',1,'test','2017-4-18'),(282,'test1','Ⅰ接19-B','高粱','叶片',1,'test','2017-4-18'),(283,'test1','Ⅰ接20-A','高粱','叶片',1,'test','2017-4-18'),(284,'test1','Ⅰ接20-B','高粱','叶片',1,'test','2017-4-18'),(285,'test1','Ⅰ接21-A','高粱','叶片',1,'test','2017-4-18'),(286,'test1','Ⅰ接21-B','高粱','叶片',1,'test','2017-4-18'),(287,'test1','Ⅰ接22-A','高粱','叶片',1,'test','2017-4-18'),(288,'test1','Ⅰ接22-B','高粱','叶片',1,'test','2017-4-18'),(289,'test1','Ⅰ接23-A','高粱','叶片',1,'test','2017-4-18'),(290,'test1','Ⅰ接23-B','高粱','叶片',1,'test','2017-4-18'),(291,'test1','Ⅰ接13-A','高粱','叶片',1,'test','2017-4-18'),(292,'test1','Ⅰ接13-B','高粱','叶片',1,'test','2017-4-18'),(293,'test1','Ⅰ接14-A','高粱','叶片',1,'test','2017-4-18'),(294,'test1','Ⅰ接14-B','高粱','叶片',1,'test','2017-4-18'),(295,'test1','Ⅰ接15-A','高粱','叶片',1,'test','2017-4-18'),(296,'test1','Ⅰ接15-B','高粱','叶片',1,'test','2017-4-18'),(297,'test1','Ⅰ接16-A','高粱','叶片',1,'test','2017-4-18'),(298,'test1','Ⅰ接16-B','高粱','叶片',1,'test','2017-4-18'),(299,'test1','Ⅰ接17-A','高粱','叶片',1,'test','2017-4-18'),(300,'test1','Ⅰ接17-B','高粱','叶片',1,'test','2017-4-18'),(301,'test1','Ⅰ接18-A','高粱','叶片',1,'test','2017-4-18'),(302,'test1','Ⅰ接18-B','高粱','叶片',1,'test','2017-4-18'),(303,'test1','Ⅰ接19-A','高粱','叶片',1,'test','2017-4-18'),(304,'test1','Ⅰ接19-B','高粱','叶片',1,'test','2017-4-18'),(305,'test1','Ⅰ接20-A','高粱','叶片',1,'test','2017-4-18'),(306,'test1','Ⅰ接20-B','高粱','叶片',1,'test','2017-4-18'),(307,'test1','Ⅰ接21-A','高粱','叶片',1,'test','2017-4-18'),(308,'test1','Ⅰ接21-B','高粱','叶片',1,'test','2017-4-18'),(309,'test1','Ⅰ接22-A','高粱','叶片',1,'test','2017-4-18'),(310,'test1','Ⅰ接22-B','高粱','叶片',1,'test','2017-4-18'),(311,'test1','Ⅰ接23-A','高粱','叶片',1,'test','2017-4-18'),(312,'test1','Ⅰ接23-B','高粱','叶片',1,'test','2017-4-18'),(313,'test1','Ⅰ接24-A','高粱','叶片',1,'test','2017-4-18'),(314,'test1','Ⅰ接24-B','高粱','叶片',1,'test','2017-4-18'),(315,'test1','Ⅰ接14-A','高粱','叶片',1,'test','2017-4-18'),(316,'test1','Ⅰ接14-B','高粱','叶片',1,'test','2017-4-18'),(317,'test1','Ⅰ接15-A','高粱','叶片',1,'test','2017-4-18');
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
  `sample_id` varchar(45) NOT NULL,
  `upmachine_type` varchar(45) DEFAULT NULL,
  `upmachine_mode` varchar(45) DEFAULT NULL,
  `up_quant` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`sample_id`),
  UNIQUE KEY `sample_id` (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_machine_table`
--

LOCK TABLES `up_machine_table` WRITE;
/*!40000 ALTER TABLE `up_machine_table` DISABLE KEYS */;
INSERT INTO `up_machine_table` VALUES ('OM-A-5','Y 4.19-2','R195238','转录组','','6','','2016-9-12'),('OM-A-5','M 4.19-1','R195242','转录组','','6','','2016-9-12'),('OM-A-5','M 4.19-2','R195244','转录组','','6','','2016-9-12'),('OM-A-5','M 4.19-3','R195247','转录组','','6','','2016-9-12'),('OM-A-5','Y 4.25-1','R195248','转录组','','6','','2016-9-12'),('OM-A-5','Y 4.25-3','R195252','转录组','','6','','2016-9-12'),('OM-A-5','M 4.25-1','R195254','转录组','','6','','2016-9-12'),('OM-A-5','M 4.25-2','R195256','转录组','','6','','2016-9-12'),('OM-A-5','M 4.25-3','R195258','转录组','','6','','2016-9-12'),('OM-A-5','Y 5.3-1','R195260','转录组','','6','','2016-9-12'),('OM-A-5','Y 5.3-3','R195264','转录组','','6','','2016-9-12'),('OM-A-5','M 5.3-1','R195267','转录组','','6','','2016-9-12'),('OM-A-5','M 5.3-2','R195268','转录组','','6','','2016-9-12'),('OM-A-5','M 5.3-3','R195270','转录组','shangji ','6','','2016-9-12'),('OM-A-5','Y 5.9-2','R195275','转录组','','6','','2016-9-12'),('OM-A-5','M 5.9-3','R195282','转录组','','6','','2016-9-12'),('OM-A-5','Y4.19-1','R205595','转录组','','6','','2016-9-12'),('OM-A-5','Y4.19-3','R205598','转录组','','6','','2016-9-12'),('OM-A-5','Y4.25-2','R205605','转录组','','6','','2016-9-12'),('OM-A-5','Y5.3-2','R205607','转录组','','6','','2016-9-12'),('OM-A-5','Y5.9-1','R205609','转录组','','6','','2016-9-12'),('OM-A-5','Y5.9-3','R205611','转录组','','6','','2016-9-12'),('OM-A-5','M5.9-1','R205613','转录组','','6','','2016-9-12'),('OM-A-5','M5.9-2','R205615','转录组','','6','','2016-9-12'),('test3','sample1','sampleid1','','','40','','2017-04-24'),('test3','sample10','sampleid10','','','','','2017-04-24'),('test3','sample11','sampleid11','','','','','2017-04-24'),('test3','sample12','sampleid12','','','','','2017-04-24'),('test3','sample13','sampleid13','','','','','2017-04-24'),('test3','sample14','sampleid14','','','','','2017-04-24'),('test3','sample15','sampleid15','','','','','2017-04-24'),('test3','sample16','sampleid16','','','','','2017-04-24'),('test3','sample17','sampleid17','','','','','2017-04-24'),('test3','sample18','sampleid18','','','','','2017-04-24'),('test3','sample19','sampleid19','','','','','2017-04-24'),('test3','sample2','sampleid2','','','43','','2017-04-24'),('test3','sample3','sampleid3','','','23','','2017-04-24'),('test3','sample4','sampleid4','','','43','','2017-04-24'),('test3','sample5','sampleid5','','','','','2017-04-24'),('test3','sample6','sampleid6','','','','','2017-04-24'),('test3','sample7','sampleid7','','','','','2017-04-24'),('test3','sample8','sampleid8','','','','','2017-04-24'),('test3','sample9','sampleid9','','','','','2017-04-24');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23  9:45:04
