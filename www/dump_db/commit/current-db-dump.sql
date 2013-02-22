-- MySQL dump 10.10
--
-- Host: localhost    Database: okna
-- ------------------------------------------------------
-- Server version	5.5.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES cp1251 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `img_alt` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `link` varchar(255) NOT NULL,
  `new_window` tinyint(1) NOT NULL,
  PRIMARY KEY (`banners_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--


/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
LOCK TABLES `banners` WRITE;
INSERT INTO `banners` VALUES (1,'1_b2.png','','',1,'������ � 2 23232323',1,'',0),(2,'2_b1.png','','',2,'������ � 1',1,'',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;

--
-- Table structure for table `categorydemo`
--

DROP TABLE IF EXISTS `categorydemo`;
CREATE TABLE `categorydemo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `root` int(10) unsigned DEFAULT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `level` smallint(5) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `level` (`level`),
  KEY `root` (`root`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorydemo`
--


/*!40000 ALTER TABLE `categorydemo` DISABLE KEYS */;
LOCK TABLES `categorydemo` WRITE;
INSERT INTO `categorydemo` VALUES (95,101,2,19,2,'Category One',''),(96,101,13,14,7,'Category Two',''),(97,101,5,6,3,'SubCategory_1A',''),(98,101,12,15,6,'SubCategory_2A',''),(99,101,7,8,3,'SubCategory_2B',''),(101,101,1,20,1,'11111111',''),(102,101,3,4,3,'123123',''),(103,101,9,18,3,'trete',''),(104,101,10,17,4,'ertert',''),(105,101,11,16,5,'wer','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `categorydemo` ENABLE KEYS */;

--
-- Table structure for table `edit_fields`
--

DROP TABLE IF EXISTS `edit_fields`;
CREATE TABLE `edit_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `position` int(11) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `edit_fields`
--


/*!40000 ALTER TABLE `edit_fields` DISABLE KEYS */;
LOCK TABLES `edit_fields` WRITE;
INSERT INTO `edit_fields` VALUES (1,'top_logo_alt','alt ��� �������� � �����','alt ��� �������� � �����1',10,'0'),(2,'top_logo_title','title ��� �������� � �����','title ��� �������� � �����2',20,'0'),(3,'top_phone','������ ��������� � �����','<img src=\"/images/site/header-call-me.png\">',30,'area'),(4,'top_work_time','����� ������ � �����','<img src=\"/images/site/header-work-time.png\">',40,'0'),(5,'top_map_alt','alt ��� ����� � �����','alt ��� ����� � �����',50,'0'),(6,'top_map_title','title ��� ����� � �����','title ��� ����� � �����',60,'0'),(7,'start_breadcrumbs','��������� ��� ������� ������','������� ����',70,'0'),(8,'foter_logo_alt','alt ��� ���� � �������','alt ��� ���� � �������',80,'0'),(9,'footer_logo_title','title ��� �������� � �������','title ��� �������� � �������',100,'0'),(10,'footer_phone_1','������ ��������� � ������� 1','(050) 322-16-19',110,'0'),(11,'footer_work_time','����� ������ � �������','��-�� 8:00 - 17:00; ��-�� 8:00 - 14:00',120,'0'),(12,'footer_slogan_title','��������� ������� � �������','� ���',130,'0'),(13,'footer_slogan_text','����� ������� � �������','����� ������� � �������',140,'area'),(14,'footer_soc_title','��������� ��� ������ � ��� �����','�� � ���������� �����',150,'0'),(15,'footer_soc_list','������ ������ �� ��� ����','������ ������ �� ��� ����',160,'area'),(16,'footer_copyright','����� ���������','Copyright &copy; 2012. ��� ����� ��������',170,'0'),(17,'footer_map_alt','alt ��� ����� ����� � �������','alt ��� ����� ����� � �������',180,'0'),(18,'footer_map_title','title ��� ����� ����� � �������','title ��� ����� ����� � �������',190,'0'),(19,'footer_phone_2','������ ��������� � ������� 2','(067) 139-57-57',112,''),(20,'footer_phone_3','������ ��������� � ������� 3','(061) 220-79-01',114,'0'),(21,'footer_map_text','����� ��� ����� ����� � �������','����� �����',200,''),(22,'footer_google_link','������ �� google � �������','http://google.ru',220,''),(23,'footer_facebook_link','������ �� facebook � �������','http://facebook.com',225,''),(24,'footer_youtube_link','������ �� youtube � �������','http://youtube.com',230,''),(25,'footer_vk_link','������ �� \"� ��������\" � �������','http://vk.com',235,''),(26,'footer_ok_link','������ �� ������������ � �������','http://ya.ru',240,''),(27,'footer_ok_link','������ �� ������ � �������','https://twitter.com',245,''),(28,'left_blog','��������� �����','��� ����',500,''),(29,'left_last_info','��������� ��������� ������','������ ������',505,''),(32,'right_consul_header','��������� ��� ������������','��� �����������',1010,''),(33,'right_foto_consul','���� ������������','<img src=\"/images/site/foto-m.jpg\">',1050,''),(34,'right_consul_name','��� ������������','����� ���������',1060,''),(35,'right_phone_header','��������� ��� ��������� ������','������� ������!',2000,''),(36,'right_phone_phone_1','������� ������ 1','(050) 322-16-19',2010,''),(37,'right_phone_phone_2','������� ������ 2','(067) 139-57-57',2020,''),(38,'right_phone_phone_3','������� ������ 3','(061) 220-79-01',2030,''),(39,'right_video_header','��������� ��� �����','���� ��� �������',3000,''),(40,'right_video_link','������ �� �����','<iframe width=\"200\" height=\"113\" src=\"http://www.youtube.com/embed/n1pCwi25jCM\" frameborder=\"0\" allowfullscreen></iframe>',3010,''),(41,'right_otz_header','��������� ��� �������','� ��� �������',3200,''),(42,'right_otz_link_text','����� ������ ������� �� ��������','��� ������',3210,''),(43,'right_otz_link','������ �� ������','/reviews',3220,''),(44,'news_list_text','����� ������ \"���������\" � ������ ��������','���������...',4000,''),(45,'left_last_info','���������� ��������� ��������� ������ �����','3',510,''),(46,'right_last_reviews','���������� ��������� ��������� ������� ������','3',520,''),(47,'pages_list_text','����� ������ \"���������\" � ������ �������','���������...',5000,''),(48,'form_back_call_header','��������� ����� ������ ������','�� ��� ����������',2040,''),(49,'form_back_call_text','����� ��� ������ ������ ������','<span>�������������<br /></span>� ��-�� 8:00 - 17:00; ��-�� 8:00 - 14:00',2050,''),(50,'soc_text','����� ��� �������� �����','���������� �������',75,''),(51,'contacts_list_text','����� ������ \"���������\" � ������ ���������','���������...',6000,''),(52,'map_1','����� � ��������� 1 (����: map_1)','<!-- ���� ���� ���� ����� �������� � �� ����� ��������, ��� �� ������ ���������� ����� (������) -->\r\n<div id=\"ymaps-map-id_136100213945340363789\" style=\"width: 320px; height: 180px;\"></div>\r\n<div style=\"width: 320px; text-align: right;\"><a href=\"http://api.yandex.ru/maps/tools/constructor/index.xml\" target=\"_blank\" style=\"color: #1A3DC1; font: 13px Arial, Helvetica, sans-serif;\">������� � ������� ������������ ������.����</a></div>\r\n<script type=\"text/javascript\">\r\nfunction fid_136100213945340363789(ymaps) {\r\n    var map = new ymaps.Map(\"ymaps-map-id_136100213945340363789\", {\r\n        center: [30.172517343749984, -16.565272978373194],\r\n        zoom: 6,\r\n        type: \"yandex#map\"\r\n    });\r\n    map.controls\r\n        .add(\"zoomControl\")\r\n        .add(\"mapTools\")\r\n        .add(new ymaps.control.TypeSelector([\"yandex#map\", \"yandex#satellite\", \"yandex#hybrid\", \"yandex#publicMap\"]));\r\n    map.geoObjects\r\n        .add(new ymaps.Placemark([31.015251, -17.7771], {\r\n            balloonContent: \"\"\r\n        }, {\r\n            preset: \"twirl#lightblueDotIcon\"\r\n        }));\r\n};\r\n</script>\r\n<script type=\"text/javascript\" src=\"http://api-maps.yandex.ru/2.0-stable/?lang=ru-RU&coordorder=longlat&load=package.full&wizard=constructor&onload=fid_136100213945340363789\"></script>\r\n<!-- ���� ���� ���� ����� �������� � �� ����� ��������, ��� �� ������ ���������� ����� (�����) -->',7000,'area'),(53,'map_2','����� � ��������� 2 (����: map_2)','',7010,'area'),(54,'map_3','����� � ��������� 3 (����: map_3)','',7020,'area'),(55,'map_4','����� � ��������� 4 (����: map_4)','',7030,'area'),(56,'map_5','����� � ��������� 5 (����: map_5)','',7040,'area'),(57,'map_6','����� � ��������� 6 (����: map_6)','',7050,'area');
UNLOCK TABLES;
/*!40000 ALTER TABLE `edit_fields` ENABLE KEYS */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `h1` varchar(255) NOT NULL,
  `short_text` text NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_title` text NOT NULL,
  `date` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `in_main` tinyint(1) NOT NULL,
  `img_alt` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--


/*!40000 ALTER TABLE `news` DISABLE KEYS */;
LOCK TABLES `news` WRITE;
INSERT INTO `news` VALUES (6,'ewrewerw','���� �������������� - ������� ���� ���� �������������� - ������� ���� ���� �������������� - ������� ���� ���� �������������� - ������� ����','���� �������������� - ������� ����','<p>���� �������������� - ������� ����</p>','<p>���� �������������� - ������� ����</p>','6_diamond_white.jpg','���� �������������� - ������� ����','���� �������������� - ������� ����','���� �������������� - ������� ����',1357164000,1,0,'',''),(7,'test1123','�������� ��������','�������� ��������','<p>�������� ��������</p>','<p>�������� ��������</p>','7_diamondAllianceIndex01.jpg','�������� ��������','�������� ��������','�������� ��������',1359151200,1,0,'123','12321321332'),(8,'asdasdasdsadsad','������������������ ���� Rehau � ������� ��� ��������� ����','������������������ ���� Rehau � ������� ��� ��������� ����','<p><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span></p>','<p><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">��������  �������� ���� ��������� �� ������ � ����������������� � �������� ������  �������, �� � ��������� �������� ������� � �����������������  ������������, ������� ��������� ������� �������� ����� ����� �  ������������ ���.</span></p>','8_okna.jpg','������������������ ���� Rehau � ������� ��� ��������� ����','������������������ ���� Rehau � ������� ��� ��������� ����','������������������ ���� Rehau � ������� ��� ��������� ����',1359576000,1,0,'1','2'),(9,'advf7675','������������ ����������!','������������ ����������!','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">��  � ��������� ������� �������� &ndash; ��������� ������������ ������������  ������. ��������� ������������� �������� ����� ���������� � �������  &laquo;������������&raquo;, ���� ������������ ����� �������� ���� ���������, ��  �������� ����� ����� � �����. ������ ����� ����������� ���� �����, �  ������ ����� ������� ����������� �����. � ������ ������ �������� �����  ���������� �������� ������� ������ ���������.</span></span></span></p>','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">��  � ��������� ������� �������� &ndash; ��������� ������������ ������������  ������. ��������� ������������� �������� ����� ���������� � �������  &laquo;������������&raquo;, ���� ������������ ����� �������� ���� ���������, ��  �������� ����� ����� � �����. ������ ����� ����������� ���� �����, �  ������ ����� ������� ����������� �����. � ������ ������ �������� �����  ���������� �������� ������� ������ ���������.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">��  � ��������� ������� �������� &ndash; ��������� ������������ ������������  ������. ��������� ������������� �������� ����� ���������� � �������  &laquo;������������&raquo;, ���� ������������ ����� �������� ���� ���������, ��  �������� ����� ����� � �����. ������ ����� ����������� ���� �����, �  ������ ����� ������� ����������� �����. � ������ ������ �������� �����  ���������� �������� ������� ������ ���������.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">��  � ��������� ������� �������� &ndash; ��������� ������������ ������������  ������. ��������� ������������� �������� ����� ���������� � �������  &laquo;������������&raquo;, ���� ������������ ����� �������� ���� ���������, ��  �������� ����� ����� � �����. ������ ����� ����������� ���� �����, �  ������ ����� ������� ����������� �����. � ������ ������ �������� �����  ���������� �������� ������� ������ ���������.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">��  � ��������� ������� �������� &ndash; ��������� ������������ ������������  ������. ��������� ������������� �������� ����� ���������� � �������  &laquo;������������&raquo;, ���� ������������ ����� �������� ���� ���������, ��  �������� ����� ����� � �����. ������ ����� ����������� ���� �����, �  ������ ����� ������� ����������� �����. � ������ ������ �������� �����  ���������� �������� ������� ������ ���������.</span></span></span></p>','','������������ ����������!','������������ ����������!','������������ ����������!',1359583200,1,0,'',''),(10,'sadf324','��������� ���� �� �������� ������ - 2012�','��������� ���� �� �������� ������ - 2012�','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  ����� 2012 ���� � ��������������� ������ 23-� ������������ ��������  ������������� � ����������� &laquo;����� ����� &ndash; 2012&raquo;. &nbsp;�������� ��������� �  �����-������ &laquo;������&raquo;.</span></span></span></p>','','','��������� ���� �� �������� ������ - 2012�','��������� ���� �� �������� ������ - 2012�','��������� ���� �� �������� ������ - 2012�',1359583200,1,0,'',''),(11,'fdssr4534534dfgfdgdfg','�� ������ �������','�� ������ �������','<div class=\"views-field views-field-body\">\r\n<div class=\"field-content\">\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">� ���������� ������ 2012 ����&nbsp; � �������</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">� �� ������������ </span><a href=\"http://oknadnepr.com.ua/\"><span style=\"color: #000000;\">������������������ ����</span></a><span style=\"color: #000000;\"> � ���������� &laquo;�������� ����&raquo; ���</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  ������: ��� �������� ������������� ���������? ��� �������, ����� �����  �����, ���������� ����������� � ����� ����� ����� ��������� � ��������  ����� ��������� ����.</span></span></span></p>\r\n</div>\r\n</div>','','','�� ������ �������','','',1359583200,1,0,'',''),(12,'novaya-fur','����� ��������� � ����� �����������','����� ��������� � ����� �����������','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���� ������� ����� ����������� ����������� ���� ���, ���� ��� ����� ������ ��������� �� ������ ��� �� �����</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">������� �������������. �������� &laquo;�������� ����</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">&raquo;</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"> �������� � ������������ �����, ����� �������������,&nbsp; ������� ��������  ��������� ��� ���� Winkhaus - � ������ ������� Activ Pilot. <br /></span></span></span></p>','','','','','',1359583200,1,0,'',''),(13,'dsfkk','������� �� ������ ������','������� �� ������ ������','<div class=\"views-field views-field-body\">\r\n<div class=\"field-content\">\r\n<p class=\"rteindent1\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">�������� &laquo;�������� ����</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><a href=\"http://oknadnepr.com.ua/\"></a><span style=\"color: #000000;\">&raquo;  ������� ������� �� ������ &laquo;�������������� ������� REHAU&raquo;, ���������  ������� ��� ���������� �������� ��������������� �������� �����. ������  ��������������� �������� �������� REHAU ����������� ������ ���  ���������, ������� ������������� ��������� ������.</span></span></span></p>\r\n</div>\r\n</div>','','','','','',1359583200,1,0,'','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `pages_id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `in_menu` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `h1` varchar(255) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `short_text` text NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `img_alt` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `add_1` text NOT NULL,
  `add_2` text NOT NULL,
  `date` int(11) NOT NULL,
  `module` varchar(50) NOT NULL,
  `in_last` tinyint(1) NOT NULL,
  `print_top_form` tinyint(1) NOT NULL,
  `img_top_form` varchar(255) NOT NULL,
  `end_date_top_form` int(11) NOT NULL,
  `end_time_top_form` int(11) NOT NULL,
  `print_footer_form` tinyint(1) NOT NULL,
  `text_footer_form` text NOT NULL,
  `color_footer_form` varchar(7) NOT NULL,
  `line_footer_form` varchar(255) NOT NULL,
  `print_date` tinyint(1) NOT NULL,
  `like` tinyint(1) NOT NULL,
  `footer_form_remark` varchar(255) NOT NULL,
  `top_form_remark` varchar(255) NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--


/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
LOCK TABLES `pages` WRITE;
INSERT INTO `pages` VALUES (33,33,1,52,1,'header_menu',1,0,'�������������� ����','�������������� ����','','','','','','','','','','',-14400,'',0,0,'',0,0,0,'','','',0,0,'',''),(34,34,1,12,1,'produktsiya',1,1,'���������','���������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(35,35,1,8,1,'test',1,1,'���������','���������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(36,33,12,27,2,'kontaktyi',1,1,'��������','��������','��������','��������','��������','','','','','','','',-14400,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(38,34,4,5,2,'derevyannyie_okna',1,1,'���������� ����','���������� ����','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(40,33,2,3,2,'main',1,1,'�������','������� ��������','�������� ��������','�������� ��������','�������� ��������','','<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����  Rehau ������������ �� ����������� ������������ �� �������������������  ������������. ������� ������������ ������������ � ������������ ���������  ������� ����������� �������� ����. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�����������  ��������� ��������� ������������ �� ������� ������ �������� �������  ������� � ����� ���������� ����� ���������������� �������. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  4 ���� ����������� &laquo;�������� ����&raquo; ������������� ���� �  ���������������, ����������������, ���������, ��������������,  ������������, ����������, �������� � ������ ���������� ������� �������.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�������  ������������ ������������, ��������� ������ � ������ ����������  ������������ ���� (���) ��������� ��� ���������� ������������ ��������  �� ���� ������ ������.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����  Rehau ������������ �� ����������� ������������ �� �������������������  ������������. ������� ������������ ������������ � ������������ ���������  ������� ����������� �������� ����. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�����������  ��������� ��������� ������������ �� ������� ������ �������� �������  ������� � ����� ���������� ����� ���������������� �������. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  4 ���� ����������� &laquo;�������� ����&raquo; ������������� ���� �  ���������������, ����������������, ���������, ��������������,  ������������, ����������, �������� � ������ ���������� ������� �������.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�������  ������������ ������������, ��������� ������ � ������ ����������  ������������ ���� (���) ��������� ��� ���������� ������������ ��������  �� ���� ������ ������.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����  Rehau ������������ �� ����������� ������������ �� �������������������  ������������. ������� ������������ ������������ � ������������ ���������  ������� ����������� �������� ����. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�����������  ��������� ��������� ������������ �� ������� ������ �������� �������  ������� � ����� ���������� ����� ���������������� �������. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  4 ���� ����������� &laquo;�������� ����&raquo; ������������� ���� �  ���������������, ����������������, ���������, ��������������,  ������������, ����������, �������� � ������ ���������� ������� �������.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�������  ������������ ������������, ��������� ������ � ������ ����������  ������������ ���� (���) ��������� ��� ���������� ������������ ��������  �� ���� ������ ������.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����  Rehau ������������ �� ����������� ������������ �� �������������������  ������������. ������� ������������ ������������ � ������������ ���������  ������� ����������� �������� ����. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�����������  ��������� ��������� ������������ �� ������� ������ �������� �������  ������� � ����� ���������� ����� ���������������� �������. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  4 ���� ����������� &laquo;�������� ����&raquo; ������������� ���� �  ���������������, ����������������, ���������, ��������������,  ������������, ����������, �������� � ������ ���������� ������� �������.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�������  ������������ ������������, ��������� ������ � ������ ����������  ������������ ���� (���) ��������� ��� ���������� ������������ ��������  �� ���� ������ ������.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����  Rehau ������������ �� ����������� ������������ �� �������������������  ������������. ������� ������������ ������������ � ������������ ���������  ������� ����������� �������� ����. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�����������  ��������� ��������� ������������ �� ������� ������ �������� �������  ������� � ����� ���������� ����� ���������������� �������. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  4 ���� ����������� &laquo;�������� ����&raquo; ������������� ���� �  ���������������, ����������������, ���������, ��������������,  ������������, ����������, �������� � ������ ���������� ������� �������.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�������  ������������ ������������, ��������� ������ � ������ ����������  ������������ ���� (���) ��������� ��� ���������� ������������ ��������  �� ���� ������ ������.</span></span></span></p>','','','','','',-14400,'',0,0,'',-14400,1354233600,0,'','','',0,1,'',''),(42,75,12,13,2,'novosti',1,1,'�������','�������','�������','�������','�������','','','','','','','',0,'news',0,0,'',0,0,0,'','','',0,0,'',''),(44,33,8,9,2,'tsenyi_na_okna',1,1,'���� �� ����','���� �� ����','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(68,33,10,11,2,'nashi_rabotyi',1,1,'���� ������','���� ������','���� ������','���� ������','���� ������','','','','','','','',0,'works',0,0,'',0,0,0,'','','',0,0,'',''),(69,33,6,7,2,'otzivi',1,1,'������ ��������','������ ��������','������ ��������','������ ��������','������ ��������','','','','','','','',-14400,'reviews',0,0,'',0,0,0,'','','',0,0,'',''),(70,33,4,5,2,'aktsii',1,1,'�����','�����','�����','�����','�����','','','70_header-map.png','','','','',1356984000,'stock',0,0,'70_main-top-form.jpg',1364673600,1354244400,0,'','','',0,0,'',''),(72,33,30,31,2,'kak_vyibrat_plastikovoe_okno',1,0,'��� ������� ����������� ���� ������� ����������� ����','��� ������� ����������� ���� ������� ����������� ���� ������� ����������� ���� ������� ����������� ���� ������� ����������� ����','','','','<p>�� ����� ���������� ���� ���������� ��������� �����������, ������� ������������� ���������� ����.</p>','<p>�� ����� ���������� ���� ���������� ��������� �����������, ������� ������������� ���������� ����.</p>','','','','','',1359489600,'',1,0,'',0,0,0,'','','',0,0,'',''),(73,33,28,29,2,'karta_sayta',1,0,'����� �����','����� �����','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(74,74,1,6,1,'uslugi',1,1,'������','������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(75,75,1,14,1,'o_kompanii',1,1,'� ��������','� ��������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(76,34,6,7,2,'plastikovyie_okna',1,1,'����������� ����','����������� ����','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(77,34,8,9,2,'jalyuzi',1,1,'������','������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(78,34,10,11,2,'rolletyi',1,1,'�������','�������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(79,35,2,3,2,'steklopaketyi',1,1,'������������','������������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(80,35,4,5,2,'furnitura',1,1,'���������','���������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(81,35,6,7,2,'otkosyi',1,1,'������','������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(82,74,2,3,2,'uslugi2',1,1,'������','������','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(83,74,4,5,2,'zamer',1,1,'�����','�����','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(84,75,2,11,2,'novaya_stranitsa',1,1,'����� ��������','����� ��������, ��� ��� ������ �������','����� ��������, ��� ��� ������ �������','����� ��������, ��� ��� ������ �������','����� ��������, ��� ��� ������ �������','<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>','<p>����� ��������, ��� ��� ������ ������� � ���������� �������� ����� ������ ���������������. Lorem Ipsum ���������� ������, ��� ��� ������������ ����� ��� ����� ����������� ���������� �������, � ����� �������� ������������� ���� � �������� � �������, ������� �� ���������� ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ��� �����..\" ������ ��������� ����������� ������ � ��������� HTML ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� �� �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-������� �� ��� ���������� ������ ���������� ��������. �� ��������� ���� ����� Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������, ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>&nbsp;</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>&nbsp;</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>&nbsp;</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>&nbsp;</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>&nbsp;</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>\r\n<p>&nbsp;</p>\r\n<p>����� ��������, ��� ��� ������ ������� � ���������� �������� �����  ������ ���������������. Lorem Ipsum ���������� ������, ��� ���  ������������ ����� ��� ����� ����������� ���������� �������, � �����  �������� ������������� ���� � �������� � �������, ������� �� ����������  ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ���  �����..\" ������ ��������� ����������� ������ � ��������� HTML  ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� ��  �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-�������  �� ��� ���������� ������ ���������� ��������. �� ��������� ���� �����  Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������,  ��������� - ��������� (��������, �������������� ��������).</p>','','','','','',1357070400,'',0,1,'84_a1.jpg',1366920000,1354233600,1,'<p><strong><span style=\"color: #ffffff; font-size: large;\">��������� ������ �� ����������� ���� REHAU</span></strong></p>\r\n<p><span style=\"color: #0000ff; font-size: medium;\">� ��������-������ �������� � �������</span></p>','aeafdc','��������� �������� ������� ������������ �������� � ���� � ��������� �����!',1,1,'',''),(85,85,1,18,1,'nash_blog',1,1,'��� ����','��� ����','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(86,85,2,3,2,'okna',1,1,'����','����','','','','','','86_okna.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(87,85,4,5,2,'dveri',1,1,'�����','�����','','','','','','87_dveri.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(88,85,6,7,2,'balkonyi_lodjii',1,1,'�������, ������','�������, ������','','','','','','88_balkoni_lodjii.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(89,85,8,9,2,'fasadyi',1,1,'������','������','','','','','','89_fasadi.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(90,85,10,11,2,'rulonnyie_shtoryi',1,1,'�������� �����','�������� �����','','','','','','90_rulonnie_shtori.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(91,85,12,13,2,'podokonniki',1,1,'�����������','�����������','','','','','','91_podokonniki.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(92,85,14,15,2,'roletyi',1,1,'������','������','','','','','','92_roleti.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(93,85,16,17,2,'vorota',1,1,'������','������','','','','','','93_vorota.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(94,33,32,33,2,'vyibiraem_derevyannoe_okno',1,0,'�������� ���������� ���� ','�������� ���������� ���� ','','','','<p>�� ����� ���������� ���� ���������� ��������� �����������, ������� ������������� ���������� ����.</p>','<p>�� ����� ���������� ���� ���������� ��������� �����������, ������� ������������� ���������� ����. ����� ���� ����������� ������ ��������� ��������� ������������ ����������� ���� �� ���� �������� �� ������������� � �� ���� ���������� �����. ���� �������� ���������� � ������� ������ ������������ ���������� ����. �� � ���� ��������, ��� ���� &ndash; ��� �� ������ ������� ���������, � ����� �������������� � ������������������� ������� ������. ������ ���� � ��� �������� ��������� ����, ������ ���� �� ��������� ���������� � ����� ������������� ���������. ���� ������ ����� ����� �������� �� ������ �������, �� � ������������ � ��������� �������������� �� ��������� ���������� ������.</p>','','','','','',1356984000,'',1,0,'',0,0,0,'','','',0,0,'',''),(95,33,34,47,2,'osobennosti_montaja_okon',1,0,'����������� ������� ����','����������� ������� ����','','','','<p><span style=\"font-family: tahoma, geneva, sans-serif; color: #000000;\">��� ������ ���������� ���� �������� �������� �� ��, ��� ����������� ���������� ��������� ����. </span></p>','<p><span style=\"font-family: tahoma, geneva, sans-serif; color: #000000;\">��� ������ ���������� ���� �������� �������� �� ��, ��� ����������� ���������� ��������� ����. </span></p>','','','','','',1359662400,'',1,0,'',0,0,0,'','','',0,0,'',''),(96,33,35,40,3,'na_chto_stoit_obratit_vnimanie_pri_vyibore_firmyi-izgotovitelya_okon_pvh',1,0,'�� ��� ����� �������� �������� ��� ������ �����-������������ ���� ���','�� ��� ����� �������� �������� ��� ������ �����-������������ ���� ���','','','','','','','','','','',1359921600,'',1,0,'',0,0,0,'','','',0,0,'',''),(97,33,48,49,2,'zayavka-otpravlena',1,0,'������ ����������','������ ����������','','','','','','','','','','',1359921600,'',0,0,'',0,0,0,'','','',0,0,'',''),(98,33,41,42,3,'qweqwe',1,0,'qweqwe','qweqwe','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(99,33,43,46,3,'qweqweqwe',1,0,'qweqweqwewqe','qweqweqweqwe','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(100,33,44,45,4,'privet_kak_ono',1,0,'������ ��� ���','������ ��� ���','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(101,33,36,39,4,'avpvapavp',1,0,'���������','���������','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(102,33,37,38,5,'yivayivayiva',1,0,'���������','���������','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(104,34,2,3,2,'video-sovetyi',1,1,'�����-������','�����-������','�����-������','�����-������','�����-������','','','','','','','',1360094400,'videoTips',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(105,33,13,20,3,'zaporoje',1,0,'���������','���������','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(106,33,21,22,3,'volnyansk',1,0,'���������','���������','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(107,33,23,24,3,'dneprorudnoe',1,0,'������������','������������','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(108,33,25,26,3,'vasilivka',1,0,'���������','���������','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(109,33,14,15,4,'salon_na_volodarskogo',1,0,'����� �� ������������','����� �� ������������','����� �� ������������','����� �� ������������','����� �� ������������','<p>��. ������������, 1</p>\r\n<p>(0562) 38-19-21</p>\r\n<p>(099) 208-30-78</p>','<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>��. ������������, 1</p>\r\n<p><span style=\"font-size: x-small;\"><em>�������� �������<br />���. ���������</em></span></p>\r\n<p>(0562) 99-21-22</p>\r\n<p>(099) 123-12-11</p>\r\n<p>&nbsp;</p>\r\n<p>��-��: 9:00 -18:00</p>\r\n<p>��: 9:00 - 14:00</p>\r\n<p>��: ��������</p>\r\n</td>\r\n<td style=\"text-align: right; width: 320px;\">{map_1}</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>&nbsp;</p>\r\n<p><img src=\"../../../upload/foto-kon-test.jpg\" alt=\"\" width=\"530\" height=\"146\" /></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(110,33,16,17,4,'salon_na_geroev_stalingrada',1,0,'����� �� ������ �����������','����� �� ������ �����������','','','','<p>��. ������ �����������, 127</p>\r\n<p>(0562) 38-19-21</p>\r\n<p>(099) 208-30-78</p>','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(111,33,18,19,4,'salon_na_titova',1,0,'����� �� ������','����� �� ������','','','','<p>��. ������, 1</p>\r\n<p>(0562) 38-19-21</p>\r\n<p>(099) 112-12-33</p>','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'1','2'),(112,75,3,4,3,'1111111',1,0,'1111111','1111111','','','','','','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(113,75,5,8,3,'est_mnogo_variantov',1,0,'���� ����� ���������','���� ����� ���������','','','','<p>����� ��������, ��� ��� ������ ������� � ���������� �������� ����� ������ ���������������. Lorem Ipsum ���������� ������, ��� ��� ������������ ����� ��� ����� ����������� ���������� �������, � ����� �������� ������������� ���� � �������� � �������, ������� �� ���������� ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ��� �����..\" ������ ��������� ����������� ������ � ��������� HTML ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� �� �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-������� �� ��� ���������� ������ ���������� ��������. �� ��������� ���� ����� Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������, ��������� - ��������� (��������, �������������� ��������).</p>','','113_okna.jpg','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(114,75,9,10,3,'esche_chto_to',1,0,'��� ��� ��','��� ��� ��','','','','<p>����� ��������, ��� ��� ������ ������� � ���������� �������� ����� ������ ���������������. Lorem Ipsum ���������� ������, ��� ��� ������������ ����� ��� ����� ����������� ���������� �������, � ����� �������� ������������� ���� � �������� � �������, ������� �� ���������� ��� ������� ���������� \"����� ��� �����.. ����� ��� �����.. ����� ��� �����..\" ������ ��������� ����������� ������ � ��������� HTML ���������� Lorem Ipsum � �������� ������ �� ���������, ��� ��� ����� �� �������� ������ \"lorem ipsum\" ����� ����������, ��� ����� ���-������� �� ��� ���������� ������ ���������� ��������. �� ��������� ���� ����� Lorem Ipsum ������� ����� ������. ��������� ������ ��������� �� ������, ��������� - ��������� (��������, �������������� ��������).</p>','','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(115,75,6,7,4,'Array_of_Active_Record_objects_corresponding_to_iPhone__Samsung_and_Motorola',1,0,'Array of Active Record objects corresponding to iPhone, Samsung and Motorola.','Array of Active Record objects corresponding to iPhone, Samsung and Motorola.','','','','','','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(116,33,50,51,2,'404',1,0,'404','404','404','404','404','','<p><span style=\"font-size: xx-large;\">������ 404</span></p>','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL,
  `link_to_video` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `short_text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `img_alt` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `img_big` varchar(255) NOT NULL,
  `img_big_alt` varchar(255) NOT NULL,
  `img_big_title` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`reviews_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--


/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
LOCK TABLES `reviews` WRITE;
INSERT INTO `reviews` VALUES (1,'������� ������ �������� ����� ����','','<p>�  �������� �������� ���� ���������� �� ������������ ��������. ������� ��  ������ �������� � �������� ��� ���� &ndash; �������� ��������. �����  ���������� ��� ��� ����������� ����, ����� ��� ��� ��������. �������  �������� � ���������� ���������� ���� �� ���� ���. ������ ��������� �  ����������� �����������, ���� ����� �������� ��������� � ����� ������. �  ������� ���� ���������� � �������� ����.</p>','�. ������, ������������� �-�.',1,2,'������ ����� �������������','<p>������� ������ �������� ����� ���� ������� ������ �������� ����� ���� ������� ������ �������� ����� ����</p>','','','','','','',1356811200),(2,'������ ����� ����������� � ����� ���������� � ��������� ����','','<p><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline !important; float: none;\">� �������� �������� ���� ���������� �� ������������ ��������. ������� �� ������ �������� � �������� ��� ���� &ndash; �������� ��������. ����� ���������� ��� ��� ����������� ����, ����� ��� ��� ��������. ������� �������� � ���������� ���������� ���� �� ���� ���. ������ ��������� � ����������� �����������, ���� ����� �������� ��������� � ����� ������. � ������� ���� ���������� � �������� ����.</span><br class=\"Apple-interchange-newline\" /></p>','�. ���������',1,1,'���������� �������� ����������','','2_b1.png','','','2_b2.png','','',1351713600),(3,'���� ���� � �����������.','','','��������� ������� ����������, �. ������������, ������������� �-�',0,3,'','','','','','','','',0),(4,'����� ���, ����� ����!','','','������� ��� ����������, �. ������������, ������������� �-�',0,4,'','','','','','','','',0),(5,'��� ����� ����������� �������� ����.','','','�������� ������� ����������, �. ���������',0,5,'','','','','','','','',0),(6,'������� ����� � ��������� ������ � �� ��������.','','','',0,6,'','','','','','','','',0),(7,'������� \"�������� ����\" � �������� ��������.','','','',0,7,'','','','','','','','',0),(8,'\"�������� ����\" ����� ���������� ������� � ��������.','','','',0,8,'','','','','','','','',0),(9,'���� � ����� �� ���.','','','',0,9,'','','','','','','','',0),(10,'������, ���� ��������� ������������������ ���� - ��������� ������ ������. ��� � ���������...','','','',0,10,'','','','','','','','',0),(11,'������, ��� ������ ����, � �����������...','','','',0,11,'','','','','','','','',0),(12,'������, ��� ������ ����','<iframe width=\"300\" height=\"200\" src=\"http://www.youtube.com/embed/LvegVh9VLJs\" frameborder=\"0\" allowfullscreen></iframe>','<p>� �������� �������� ���� ���������� �� ������������ ��������. ������� �� ������ �������� � �������� ��� ���� &ndash; �������� ��������. ����� ���������� ��� ��� ����������� ����, ����� ��� ��� ��������. ������� �������� � ���������� ���������� ���� �� ���� ���. ������ ��������� � ����������� �����������, ���� ����� �������� ��������� � ����� ������. � ������� ���� ���������� � �������� ����.</p>','�. ��������',1,13,'��������� ��������� ������������','<p>������� �� ������ �������� � �������� ��� ���� &ndash; �������� ��������.</p>','','','','','','',1357070400),(13,'������, ���� ��������� ������������������','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/LvegVh9VLJs\" frameborder=\"0\" allowfullscreen></iframe>','<p>� �������� �������� ���� ���������� �� ������������ ��������. ������� �� ������ �������� � �������� ��� ���� &ndash; �������� ��������. ����� ���������� ��� ��� ����������� ����, ����� ��� ��� ��������. ������� �������� � ���������� ���������� ���� �� ���� ���. ������ ��������� � ����������� �����������, ���� ����� �������� ��������� � ����� ������. � ������� ���� ���������� � �������� ����.� �������� �������� ���� ���������� �� ������������ ��������. ������� �� ������ �������� � �������� ��� ���� &ndash; �������� ��������. ����� ���������� ��� ��� ����������� ����, ����� ��� ��� ��������. ������� �������� � ���������� ���������� ���� �� ���� ���. ������ ��������� � ����������� �����������, ���� ����� �������� ��������� � ����� ������. � ������� ���� ���������� � �������� ����.</p>','�. ���������',1,14,'���������� �������� ����������','<p>������, ���� ��������� ������������������. ������, ���� ��������� ������������������</p>','','2','1','','','',1356984000);
UNLOCK TABLES;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--


/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
LOCK TABLES `settings` WRITE;
INSERT INTO `settings` VALUES (1,'news_name_page','���������� �������� �� ��������','5'),(2,'form_email','Email ���������� ������','egor.developer@gmail.com; reklama@oknadnepr.com.ua'),(3,'admin_email','Email �������������� �����','egor.developer@gmail.com'),(4,'reviews_name_page','���������� ������� �� ��������','3'),(5,'video_tips_name_page','���������� ������� �� ��������','3'),(6,'works_name_page','���������� ����� �� ��������','3'),(7,'stock_name_page','���������� ����� �� ��������','3'),(8,'main_slider_time','����� ������','5'),(9,'name_page','���������� ���������� �� ��������','2');
UNLOCK TABLES;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `visibility` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `end_date` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `short_text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `in_main` tinyint(1) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--


/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
LOCK TABLES `stock` WRITE;
INSERT INTO `stock` VALUES (1,1,'����������������� ����������� �� ���� ��������',1360094400,0,'<p>��������� ���� &ndash; ��� ������ ������ �������������� ��������� � ���������. ������� �� ����������� ������� �� ��������� ���� ������������ ����. ��� ����, ����� ������ ��� ������� ����� � ������� ������ ���� Rehau, ����������� � ����� ������� ������ ��������� ��� ���������.&nbsp;</p>','1_a2.jpg',0,1360094400,1,''),(2,1,'������-�������� � �������',1360440000,0,'<p>��� ������ ���� ��� �� ������ ���������� ��������� � ������ ������ ������� ���� ������� ������-��������, ��������� ������� �� ������� ������������ ������������� ��������� ��� ������ ������� ������� � �������� ������ ������������.</p>','2_a3.jpg',0,1360440000,0,'2'),(3,1,'��������� 0% ',1360872000,0,'<p>��� ������ ���� ��� �� ������ ���������� ��������� � ������ ������ ������� ���� ������� ������-��������, ��������� ������� �� ������� ������������ ������������� ��������� ��� ������ ������� ������� � �������� ������ ������������.</p>','3_a1.jpg',0,1360440000,1,''),(4,1,'������-�������� � �������',1364673600,0,'<p>��� ������ ���� ��� �� ������ ���������� ��������� � ������ ������  ������� ���� ������� ������-��������, ��������� ������� �� �������  ������������ ������������� ��������� ��� ������ ������� ������� �  �������� ������ ������������.</p>','4_a2.jpg',0,1360440000,1,'');
UNLOCK TABLES;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'egor.developer@gmail.com','06dc5813908303f4f64c3594dad50501','����','admin'),(2,'reklama@oknadnepr.com.ua','6e6838a06ea76d2702f3034432322579','�����','admin');
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Table structure for table `video_tips`
--

DROP TABLE IF EXISTS `video_tips`;
CREATE TABLE `video_tips` (
  `video_tips_id` int(11) NOT NULL AUTO_INCREMENT,
  `visibility` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `short_text` text NOT NULL,
  `link_to_video` text NOT NULL,
  `line` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`video_tips_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_tips`
--


/*!40000 ALTER TABLE `video_tips` DISABLE KEYS */;
LOCK TABLES `video_tips` WRITE;
INSERT INTO `video_tips` VALUES (1,1,'��� ��������� ������� ���� ���','<p>��� ������ ����������� ���� �� ������������ � ����������, ������� �������� ��� ������� ����, ������� ���� �� ���� �� ���������. �� ��� ����� �������� �������� � ��� �������� ����� ������������ ������ ��� ������ ���� ��� �������� � ���� �����.</p>','<iframe width=\"300\" height=\"225\" src=\"http://www.youtube.com/embed/MXhGMSC6XsQ\" frameborder=\"0\" allowfullscreen></iframe>','��������� ������������, �������� ����������� \"�������� ����\"',1360094400),(2,1,'�������������� ���� � ������������� �������� �������','<p>����������� &laquo;�������� ����&raquo; ���� ��������� ���������� ����� �������� � ������������� ����, �����,  ��������� ���������� �� ������ ������ �����, �� � ���������� ������� ����� ������� ������� ������� ���������. �������������� ������� ���� ��������������� ����� ��������� ������ ������������ ����� �� �������. &laquo;�������� ����&raquo; ���������� ������������� � ����� ��� � ���� ������. �������������� ���� �� ������ ������ ���� �������, ��� �������� ��� �������������. ���� ����������� ������ �� ������� �������� � ������� ������������ �����.</p>','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/qTG_KNKO0BM\" frameborder=\"0\" allowfullscreen></iframe>','������ �����, �������� ����������� \"�������� ����\"',1360094400),(3,1,'�������� ����������� ����?','<p>������ ���� ������������� ����������� ����, �� ����������� � ���, ��� ��� ����� ��������� ������ ���� � ������������ � ���������, ����� ���� ������ ����: �������, ���������� ������. ��� ���������� � ������, � ������ ������� ������� �� �������� ������������ ���������� �����������. ���� ����������� ��� ������������ ���� ���������� ������ �������� ������� Rehau, �������� �������� �������������� ��������������� � ������ �������������. ���� Rehau �� ������ ���� � �������� ������������ ������ �����������.</p>','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/RjkpDs0wuVU\" frameborder=\"0\" allowfullscreen></iframe>','����� �������, �������� ����������� \"�������� ����\"',1359662400),(4,1,'������������ � ������������ ����� �����?','<p>� ������� �������������� ������� &laquo;����� ������������&raquo; ��������� Winkhaus ��� ����������� ���� ����� ����� �������. ����� ������������ ��������������� �� ���������-�������� ������� ���� � ����������� ������, ������� ����� ������� � ����������� ����� ��� �����. ��� ����, ���� ����������� ������������� ���������, ��� ��� ������� ����������� ������� �����������. � ���������� Winkhaus ���� ���� ����� � ������������ � ���� ����������!</p>','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/pQ6lITYfFjQ\" frameborder=\"0\" allowfullscreen></iframe>','����� ����������, �������� ����������� \"�������� ����\"',1359921600);
UNLOCK TABLES;
/*!40000 ALTER TABLE `video_tips` ENABLE KEYS */;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
CREATE TABLE `works` (
  `works_id` int(11) NOT NULL AUTO_INCREMENT,
  `visibility` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `img_big` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `img_alt` varchar(255) NOT NULL,
  `img_title` varchar(255) NOT NULL,
  `img_big_alt` varchar(255) NOT NULL,
  `img_big_title` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`works_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--


/*!40000 ALTER TABLE `works` DISABLE KEYS */;
LOCK TABLES `works` WRITE;
INSERT INTO `works` VALUES (1,1,'������� ����� ������� ���!','<p>���� ������ ����������� ���������� ������� �� ������������� ���� ����� � �������� � ������� �����������, ����� ���� ��� � ���������� ����. � ������ ������ ��� ����������� ����������� ������� Talisman. ���������� ���� ������� ��������� ����������� ��� ���������, � ������� ��������� �������. � ����������, ������� �� ����� �������� �������� ���������� ������������������ �������������� � ����������� ������ &laquo;��������&raquo; �����. � ����� ������ �� ��������� ������ ���� � ������������� ������� &ndash; ������������ ������� ����������� ��������������� ������.  � �����, ��������� ����, ������� ��� �� ��������, � ������ ������� ������ ��������������� ���.</p>','1_8.jpg','1_8.jpg','���������������� ���., �. ���������, ��. ���������, ��������� �.',1,'123','123213','21321','213213',1356984000),(2,1,'������� ����� ������� ���!','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����� ������ ����������� ���������� ������� �� ������������� ���� ����� � �������� � ������� ����</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">�������, ����� </span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">���� ���</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\"> </span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">� </span><a href=\"http://oknadnepr.com.ua/\"><span style=\"color: #000000;\">���������� ����</span></a><span style=\"color: #000000;\">. � ������ �</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">�����  ��� ����������� ����������� ������� Talisman. ���������� ���� �������  ��������� ����������� ��� ���������, � ������� ��������� �������. �  ����������, ������� �� ����� �������� �������� ����������  ������������������ �������������� � ����������� ������ &laquo;��������&raquo; �����.  � ����� ������ �� ��������� ������ ���� � ������������� ������� &ndash;  ������������ ����</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">���  ����������� ��������������� ������. &nbsp;� �����, ��������� ����, �������  ��� �� ��������, � ������ ������� ������ ��������������� ���.</span></span></span></p>','','','���������������� ���. �. ��������, �.�.',2,'','','','',0),(3,1,'������, � �������!','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">����  ������������� ���� - ��� ��� ���� ������ ����, ��� ����� ��������� � �  ����� �������� ��� ������. �������� ��, ������ ����������, � �� �����  ����, ����� ������ &ndash; ������ ������������ ����������� � ������� ����! �  ������� ����� ���� ��� �� ������� ����� ��������� �������: ����������  ������� ���������� ������, �������������� ������� ���������,  ������������ ������������ �������� � �.�. ��� � �������, ��� ������� �  ���� ���������� �� ������!</span></span></span></p>','','','���������������� ���., �. ���������, ��. ���������, ��������� �.',3,'','','','',1356984000),(4,1,'�� ����� �� �������, ��� ������� �� ����������','<p>� ���, ��� ����� ��������� �������� ����� ������, ����� ������� �� ������� ����� ����. ������ ��� �� ������ �������������, � ������� ���������� ���� ��� ����������� � �������� ���������, �������� �������� ������������ ������. � ��������, � ���� ������ ���������� ���� ��������� ����� ���� ���.</p>','4_7d.jpg','4_7d.jpg','�. ��������������, �������� �.',4,'','','','',1360180800);
UNLOCK TABLES;
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

