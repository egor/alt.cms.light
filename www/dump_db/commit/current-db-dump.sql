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
INSERT INTO `banners` VALUES (1,'1_b2.png','','',1,'Баннер № 2 23232323',1,'',0),(2,'2_b1.png','','',2,'Баннер № 1',1,'',1);
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
INSERT INTO `edit_fields` VALUES (1,'top_logo_alt','alt для логотипа в шапке','alt для логотипа в шапке1',10,'0'),(2,'top_logo_title','title для логотипа в шапке','title для логотипа в шапке2',20,'0'),(3,'top_phone','номера телефонов в шапке','<img src=\"/images/site/header-call-me.png\">',30,'area'),(4,'top_work_time','время работы в шапке','<img src=\"/images/site/header-work-time.png\">',40,'0'),(5,'top_map_alt','alt для карты в шапке','alt для карты в шапке',50,'0'),(6,'top_map_title','title для карты в шапке','title для карты в шапке',60,'0'),(7,'start_breadcrumbs','заголовок для хлебных крошек','Фабрика окон',70,'0'),(8,'foter_logo_alt','alt для лого в подвале','alt для лого в подвале',80,'0'),(9,'footer_logo_title','title для логотипа в подвале','title для логотипа в подвале',100,'0'),(10,'footer_phone_1','номера телефонов в подвале 1','(050) 322-16-19',110,'0'),(11,'footer_work_time','время работы в подвале','Пн-Пт 8:00 - 17:00; Сб-Вс 8:00 - 14:00',120,'0'),(12,'footer_slogan_title','заголовок слогана в подвале','О нас',130,'0'),(13,'footer_slogan_text','текст слогана в подвале','текст слогана в подвале',140,'area'),(14,'footer_soc_title','заголовок для списка в соц сетях','Мы в популярных сетях',150,'0'),(15,'footer_soc_list','список ссылок на соц сети','список ссылок на соц сети',160,'area'),(16,'footer_copyright','текст копирайта','Copyright &copy; 2012. Все права защищены',170,'0'),(17,'footer_map_alt','alt для карты сайта в подвале','alt для карты сайта в подвале',180,'0'),(18,'footer_map_title','title для карты сайта в подвале','title для карты сайта в подвале',190,'0'),(19,'footer_phone_2','номера телефонов в подвале 2','(067) 139-57-57',112,''),(20,'footer_phone_3','номера телефонов в подвале 3','(061) 220-79-01',114,'0'),(21,'footer_map_text','текст для карты сайта в подвале','Карта сайта',200,''),(22,'footer_google_link','ссылка на google в подвале','http://google.ru',220,''),(23,'footer_facebook_link','ссылка на facebook в подвале','http://facebook.com',225,''),(24,'footer_youtube_link','ссылка на youtube в подвале','http://youtube.com',230,''),(25,'footer_vk_link','ссылка на \"В контакте\" в подвале','http://vk.com',235,''),(26,'footer_ok_link','ссылка на однокласники в подвале','http://ya.ru',240,''),(27,'footer_ok_link','ссылка на твитер в подвале','https://twitter.com',245,''),(28,'left_blog','заголовок блога','Наш блог',500,''),(29,'left_last_info','заголовок последних статей','Свежие статьи',505,''),(32,'right_consul_header','заголовок для консультанта','Ваш консультант',1010,''),(33,'right_foto_consul','Фото консультанта','<img src=\"/images/site/foto-m.jpg\">',1050,''),(34,'right_consul_name','имя консультанта','Настя Бондарева',1060,''),(35,'right_phone_header','заголовок для телефонов справа','Звоните Сейчас!',2000,''),(36,'right_phone_phone_1','телефон справа 1','(050) 322-16-19',2010,''),(37,'right_phone_phone_2','телефон справа 2','(067) 139-57-57',2020,''),(38,'right_phone_phone_3','телефон справа 3','(061) 220-79-01',2030,''),(39,'right_video_header','заголовок для видео','Окна для каждого',3000,''),(40,'right_video_link','ссылка на видео','<iframe width=\"200\" height=\"113\" src=\"http://www.youtube.com/embed/n1pCwi25jCM\" frameborder=\"0\" allowfullscreen></iframe>',3010,''),(41,'right_otz_header','заголовок для отзывов','О нас говорят',3200,''),(42,'right_otz_link_text','текст ссылки ведущая на отзывовы','Все отзывы',3210,''),(43,'right_otz_link','ссылка на отзывы','/reviews',3220,''),(44,'news_list_text','текст ссылки \"подробнее\" в списке новостей','Подробнее...',4000,''),(45,'left_last_info','количество выводимых последних статей слева','3',510,''),(46,'right_last_reviews','количество выводимых последних отзывов справа','3',520,''),(47,'pages_list_text','текст ссылки \"подробнее\" в списке страниц','Подробнее...',5000,''),(48,'form_back_call_header','заголовок формы заказа звонка','Мы Вам перезвоним',2040,''),(49,'form_back_call_text','текст под формой заказа звонка','<span>Перезванисвем<br /></span>в Пн-Пт 8:00 - 17:00; Сб-Вс 8:00 - 14:00',2050,''),(50,'soc_text','текст над кнопками лайка','Рассказать друзьям',75,''),(51,'contacts_list_text','текст ссылки \"подробнее\" в списке контактов','Подробнее...',6000,''),(52,'map_1','карта в контактах 1 (ключ: map_1)','<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (начало) -->\r\n<div id=\"ymaps-map-id_136100213945340363789\" style=\"width: 320px; height: 180px;\"></div>\r\n<div style=\"width: 320px; text-align: right;\"><a href=\"http://api.yandex.ru/maps/tools/constructor/index.xml\" target=\"_blank\" style=\"color: #1A3DC1; font: 13px Arial, Helvetica, sans-serif;\">Создано с помощью инструментов Яндекс.Карт</a></div>\r\n<script type=\"text/javascript\">\r\nfunction fid_136100213945340363789(ymaps) {\r\n    var map = new ymaps.Map(\"ymaps-map-id_136100213945340363789\", {\r\n        center: [30.172517343749984, -16.565272978373194],\r\n        zoom: 6,\r\n        type: \"yandex#map\"\r\n    });\r\n    map.controls\r\n        .add(\"zoomControl\")\r\n        .add(\"mapTools\")\r\n        .add(new ymaps.control.TypeSelector([\"yandex#map\", \"yandex#satellite\", \"yandex#hybrid\", \"yandex#publicMap\"]));\r\n    map.geoObjects\r\n        .add(new ymaps.Placemark([31.015251, -17.7771], {\r\n            balloonContent: \"\"\r\n        }, {\r\n            preset: \"twirl#lightblueDotIcon\"\r\n        }));\r\n};\r\n</script>\r\n<script type=\"text/javascript\" src=\"http://api-maps.yandex.ru/2.0-stable/?lang=ru-RU&coordorder=longlat&load=package.full&wizard=constructor&onload=fid_136100213945340363789\"></script>\r\n<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (конец) -->',7000,'area'),(53,'map_2','карта в контактах 2 (ключ: map_2)','',7010,'area'),(54,'map_3','карта в контактах 3 (ключ: map_3)','',7020,'area'),(55,'map_4','карта в контактах 4 (ключ: map_4)','',7030,'area'),(56,'map_5','карта в контактах 5 (ключ: map_5)','',7040,'area'),(57,'map_6','карта в контактах 6 (ключ: map_6)','',7050,'area');
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
INSERT INTO `news` VALUES (6,'ewrewerw','Окна Днепропетровск - фабрика окон Окна Днепропетровск - фабрика окон Окна Днепропетровск - фабрика окон Окна Днепропетровск - фабрика окон','Окна Днепропетровск - фабрика окон','<p>Окна Днепропетровск - фабрика окон</p>','<p>Окна Днепропетровск - фабрика окон</p>','6_diamond_white.jpg','Окна Днепропетровск - фабрика окон','Окна Днепропетровск - фабрика окон','Окна Днепропетровск - фабрика окон',1357164000,1,0,'',''),(7,'test1123','Немецкое качество','Немецкое качество','<p>Немецкое качество</p>','<p>Немецкое качество</p>','7_diamondAllianceIndex01.jpg','Немецкое качество','Немецкое качество','Немецкое качество',1359151200,1,0,'123','12321321332'),(8,'asdasdasdsadsad','Металлопластиковые окна Rehau в детский дом семейного типа','Металлопластиковые окна Rehau в детский дом семейного типа','<p><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span></p>','<p><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span></p>\r\n<p><br /><span style=\"color: #000000; font-size: 12px; font-family: tahoma, geneva, sans-serif;\">Компания  Открытые окна заботится не только о совершенствовании и развитии своего  бизнеса, но и принимает активное участие в благотворительной  деятельности, помогая родителям дарящим приемным детям семью и  родительский уют.</span></p>','8_okna.jpg','Металлопластиковые окна Rehau в детский дом семейного типа','Металлопластиковые окна Rehau в детский дом семейного типа','Металлопластиковые окна Rehau в детский дом семейного типа',1359576000,1,0,'1','2'),(9,'advf7675','Солнцезащита улучшилась!','Солнцезащита улучшилась!','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Но  в некоторых случаях ролшторы &ndash; экономная альтернатива классическим  шторам. Особенной популярностью рулонные шторы пользуются у жителей  &laquo;малометражек&raquo;, ведь классические шторы занимают хоть небольшое, но  ощутимое место рядом с окном. Раньше здесь планировали быть шторы, а  теперь стоит рабочая поверхность кухни. В данном случае рулонные шторы  сэкономили полезную площадь жилого помещения.</span></span></span></p>','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Но  в некоторых случаях ролшторы &ndash; экономная альтернатива классическим  шторам. Особенной популярностью рулонные шторы пользуются у жителей  &laquo;малометражек&raquo;, ведь классические шторы занимают хоть небольшое, но  ощутимое место рядом с окном. Раньше здесь планировали быть шторы, а  теперь стоит рабочая поверхность кухни. В данном случае рулонные шторы  сэкономили полезную площадь жилого помещения.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Но  в некоторых случаях ролшторы &ndash; экономная альтернатива классическим  шторам. Особенной популярностью рулонные шторы пользуются у жителей  &laquo;малометражек&raquo;, ведь классические шторы занимают хоть небольшое, но  ощутимое место рядом с окном. Раньше здесь планировали быть шторы, а  теперь стоит рабочая поверхность кухни. В данном случае рулонные шторы  сэкономили полезную площадь жилого помещения.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Но  в некоторых случаях ролшторы &ndash; экономная альтернатива классическим  шторам. Особенной популярностью рулонные шторы пользуются у жителей  &laquo;малометражек&raquo;, ведь классические шторы занимают хоть небольшое, но  ощутимое место рядом с окном. Раньше здесь планировали быть шторы, а  теперь стоит рабочая поверхность кухни. В данном случае рулонные шторы  сэкономили полезную площадь жилого помещения.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Но  в некоторых случаях ролшторы &ndash; экономная альтернатива классическим  шторам. Особенной популярностью рулонные шторы пользуются у жителей  &laquo;малометражек&raquo;, ведь классические шторы занимают хоть небольшое, но  ощутимое место рядом с окном. Раньше здесь планировали быть шторы, а  теперь стоит рабочая поверхность кухни. В данном случае рулонные шторы  сэкономили полезную площадь жилого помещения.</span></span></span></p>','','Солнцезащита улучшилась!','Солнцезащита улучшилась!','Солнцезащита улучшилась!',1359583200,1,0,'',''),(10,'sadf324','«Открытые Окна» на выставке «Фасад - 2012»','«Открытые Окна» на выставке «Фасад - 2012»','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span></p>\r\n<p><br /><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">15-17  марта 2012 года в Днепропетровске прошла 23-я Национальная выставка  строительства и архитектуры &laquo;Фасад весна &ndash; 2012&raquo;. &nbsp;Выставка проходила в  Экспо-центре &laquo;Метеор&raquo;.</span></span></span></p>','','','«Открытые Окна» на выставке «Фасад - 2012»','«Открытые Окна» на выставке «Фасад - 2012»','«Открытые Окна» на выставке «Фасад - 2012»',1359583200,1,0,'',''),(11,'fdssr4534534dfgfdgdfg','Не окнами едиными','Не окнами едиными','<div class=\"views-field views-field-body\">\r\n<div class=\"field-content\">\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">В преддверии Нового 2012 года&nbsp; в компани</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">и по производству </span><a href=\"http://oknadnepr.com.ua/\"><span style=\"color: #000000;\">металлопластиковых окон</span></a><span style=\"color: #000000;\"> в Павлограде &laquo;Открытые окна&raquo; воз</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">ник  вопрос: как провести корпоративную вечеринку? Как правило, перед Новым  годом, сотрудники предприятий в узком кругу могут отдохнуть и подвести  итоги уходящего года.</span></span></span></p>\r\n</div>\r\n</div>','','','Не окнами едиными','','',1359583200,1,0,'',''),(12,'novaya-fur','Новая фурнитура – новые возможности','Новая фурнитура – новые возможности','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Наши клиенты хотят максимально обезопасить свой дом, офис или любое другое помещение от взлома или не желат</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">ельного проникновения. Компания &laquo;Открытые окна</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">&raquo;</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"> внедрила в производство новую, более инновационную,&nbsp; линейку немецкой  фурнитуры для окон Winkhaus - а именно систему Activ Pilot. <br /></span></span></span></p>','','','','','',1359583200,1,0,'',''),(13,'dsfkk','Боремся за звание лучших','Боремся за звание лучших','<div class=\"views-field views-field-body\">\r\n<div class=\"field-content\">\r\n<p class=\"rteindent1\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">Компания &laquo;Открытые окна</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><a href=\"http://oknadnepr.com.ua/\"></a><span style=\"color: #000000;\">&raquo;  успешно борется за звание &laquo;Авторизованный партнер REHAU&raquo;, постоянно  работая над улучшением качества предоставляемых клиентам услуг. Статус  авторизованного партнера компания REHAU присваивает только тем  компаниям, которые соответствуют требуемым нормам.</span></span></span></p>\r\n</div>\r\n</div>','','','','','',1359583200,1,0,'','');
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
INSERT INTO `pages` VALUES (33,33,1,52,1,'header_menu',1,0,'Горизонтальное меню','Горизонтальное меню','','','','','','','','','','',-14400,'',0,0,'',0,0,0,'','','',0,0,'',''),(34,34,1,12,1,'produktsiya',1,1,'Продукция','Продукция','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(35,35,1,8,1,'test',1,1,'Материалы','Материалы','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(36,33,12,27,2,'kontaktyi',1,1,'Контакты','Контакты','Контакты','Контакты','Контакты','','','','','','','',-14400,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(38,34,4,5,2,'derevyannyie_okna',1,1,'Деревянные окна','Деревянные окна','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(40,33,2,3,2,'main',1,1,'Главная','Главная страница','Немецкое качество','Немецкое качество','Немецкое качество','','<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Окна  Rehau производятся на собственном производстве на высокотехнологичном  оборудовании. Наличие современного оборудования в производстве позволяет  достичь высочайшего качества окон. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Собственный  транспорт позволяет поддерживать на должном уровне доставку готовых  изделий в любой населенный пункт Днепропетровской области. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Уже  4 года предприятие &laquo;Открытые Окна&raquo; устанавливает окна в  Днепропетровске, Днепродзержинске, Царичанке, Першотравенске,  Синельниково, Петриковке, Терновке и других населенных пунктах области.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Наличие  собственного производства, монтажных бригад и центра сервисного  обслуживания окон (ЦСО) позволяет нам обеспечить максимальный контроль  на всех этапах работы.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Окна  Rehau производятся на собственном производстве на высокотехнологичном  оборудовании. Наличие современного оборудования в производстве позволяет  достичь высочайшего качества окон. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Собственный  транспорт позволяет поддерживать на должном уровне доставку готовых  изделий в любой населенный пункт Днепропетровской области. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Уже  4 года предприятие &laquo;Открытые Окна&raquo; устанавливает окна в  Днепропетровске, Днепродзержинске, Царичанке, Першотравенске,  Синельниково, Петриковке, Терновке и других населенных пунктах области.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Наличие  собственного производства, монтажных бригад и центра сервисного  обслуживания окон (ЦСО) позволяет нам обеспечить максимальный контроль  на всех этапах работы.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Окна  Rehau производятся на собственном производстве на высокотехнологичном  оборудовании. Наличие современного оборудования в производстве позволяет  достичь высочайшего качества окон. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Собственный  транспорт позволяет поддерживать на должном уровне доставку готовых  изделий в любой населенный пункт Днепропетровской области. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Уже  4 года предприятие &laquo;Открытые Окна&raquo; устанавливает окна в  Днепропетровске, Днепродзержинске, Царичанке, Першотравенске,  Синельниково, Петриковке, Терновке и других населенных пунктах области.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Наличие  собственного производства, монтажных бригад и центра сервисного  обслуживания окон (ЦСО) позволяет нам обеспечить максимальный контроль  на всех этапах работы.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Окна  Rehau производятся на собственном производстве на высокотехнологичном  оборудовании. Наличие современного оборудования в производстве позволяет  достичь высочайшего качества окон. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Собственный  транспорт позволяет поддерживать на должном уровне доставку готовых  изделий в любой населенный пункт Днепропетровской области. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Уже  4 года предприятие &laquo;Открытые Окна&raquo; устанавливает окна в  Днепропетровске, Днепродзержинске, Царичанке, Першотравенске,  Синельниково, Петриковке, Терновке и других населенных пунктах области.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Наличие  собственного производства, монтажных бригад и центра сервисного  обслуживания окон (ЦСО) позволяет нам обеспечить максимальный контроль  на всех этапах работы.</span></span></span></p>\r\n<p class=\"rteindent1\">&nbsp;</p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Окна  Rehau производятся на собственном производстве на высокотехнологичном  оборудовании. Наличие современного оборудования в производстве позволяет  достичь высочайшего качества окон. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Собственный  транспорт позволяет поддерживать на должном уровне доставку готовых  изделий в любой населенный пункт Днепропетровской области. </span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Уже  4 года предприятие &laquo;Открытые Окна&raquo; устанавливает окна в  Днепропетровске, Днепродзержинске, Царичанке, Першотравенске,  Синельниково, Петриковке, Терновке и других населенных пунктах области.</span></span></span></p>\r\n<p class=\"rteindent1\"><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Наличие  собственного производства, монтажных бригад и центра сервисного  обслуживания окон (ЦСО) позволяет нам обеспечить максимальный контроль  на всех этапах работы.</span></span></span></p>','','','','','',-14400,'',0,0,'',-14400,1354233600,0,'','','',0,1,'',''),(42,75,12,13,2,'novosti',1,1,'Новости','Новости','Новости','Новости','Новости','','','','','','','',0,'news',0,0,'',0,0,0,'','','',0,0,'',''),(44,33,8,9,2,'tsenyi_na_okna',1,1,'Цены на окна','Цены на окна','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(68,33,10,11,2,'nashi_rabotyi',1,1,'Наши работы','Наши работы','Наши работы','Наши работы','Наши работы','','','','','','','',0,'works',0,0,'',0,0,0,'','','',0,0,'',''),(69,33,6,7,2,'otzivi',1,1,'Отзывы клиентов','Отзывы клиентов','Отзывы клиентов','Отзывы клиентов','Отзывы клиентов','','','','','','','',-14400,'reviews',0,0,'',0,0,0,'','','',0,0,'',''),(70,33,4,5,2,'aktsii',1,1,'Акции','Акции','Акции','Акции','Акции','','','70_header-map.png','','','','',1356984000,'stock',0,0,'70_main-top-form.jpg',1364673600,1354244400,0,'','','',0,0,'',''),(72,33,30,31,2,'kak_vyibrat_plastikovoe_okno',1,0,'Как выбрать пластиковое окно выбрать пластиковое окно','Как выбрать пластиковое окно выбрать пластиковое окно выбрать пластиковое окно выбрать пластиковое окно выбрать пластиковое окно','','','','<p>На рынке деревянных окон существует множество предприятий, которые изготавливают деревянные окна.</p>','<p>На рынке деревянных окон существует множество предприятий, которые изготавливают деревянные окна.</p>','','','','','',1359489600,'',1,0,'',0,0,0,'','','',0,0,'',''),(73,33,28,29,2,'karta_sayta',1,0,'Карта сайта','Карта сайта','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(74,74,1,6,1,'uslugi',1,1,'Услуги','Услуги','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(75,75,1,14,1,'o_kompanii',1,1,'О компании','О компании','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(76,34,6,7,2,'plastikovyie_okna',1,1,'Пластиковые окна','Пластиковые окна','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(77,34,8,9,2,'jalyuzi',1,1,'Жалюзи','Жалюзи','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(78,34,10,11,2,'rolletyi',1,1,'Роллеты','Роллеты','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(79,35,2,3,2,'steklopaketyi',1,1,'Стеклопакеты','Стеклопакеты','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(80,35,4,5,2,'furnitura',1,1,'Фурнитура','Фурнитура','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(81,35,6,7,2,'otkosyi',1,1,'Откосы','Откосы','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(82,74,2,3,2,'uslugi2',1,1,'Услуги','Услуги','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(83,74,4,5,2,'zamer',1,1,'Замер','Замер','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(84,75,2,11,2,'novaya_stranitsa',1,1,'Давно выяснено','Давно выяснено, что при оценке дизайна','Давно выяснено, что при оценке дизайна','Давно выяснено, что при оценке дизайна','Давно выяснено, что при оценке дизайна','<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>','<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>&nbsp;</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>&nbsp;</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>&nbsp;</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>&nbsp;</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>&nbsp;</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>\r\n<p>&nbsp;</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст  мешает сосредоточиться. Lorem Ipsum используют потому, что тот  обеспечивает более или менее стандартное заполнение шаблона, а также  реальное распределение букв и пробелов в абзацах, которое не получается  при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш  текст..\" Многие программы электронной вёрстки и редакторы HTML  используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по  ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц  всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст  Lorem Ipsum получил много версий. Некоторые версии появились по ошибке,  некоторые - намеренно (например, юмористические варианты).</p>','','','','','',1357070400,'',0,1,'84_a1.jpg',1366920000,1354233600,1,'<p><strong><span style=\"color: #ffffff; font-size: large;\">Отправить заявка на пластиковые окна REHAU</span></strong></p>\r\n<p><span style=\"color: #0000ff; font-size: medium;\">и получить-климат контроль в подарок</span></p>','aeafdc','Менеджеры компании Харвест Индустриалес свяжутся с Вами в ближайшее время!',1,1,'',''),(85,85,1,18,1,'nash_blog',1,1,'Наш блог','Наш блог','','','','','','','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(86,85,2,3,2,'okna',1,1,'Окна','Окна','','','','','','86_okna.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(87,85,4,5,2,'dveri',1,1,'Двери','Двери','','','','','','87_dveri.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(88,85,6,7,2,'balkonyi_lodjii',1,1,'Балконы, лоджии','Балконы, лоджии','','','','','','88_balkoni_lodjii.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(89,85,8,9,2,'fasadyi',1,1,'Фасады','Фасады','','','','','','89_fasadi.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(90,85,10,11,2,'rulonnyie_shtoryi',1,1,'Рулонные шторы','Рулонные шторы','','','','','','90_rulonnie_shtori.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(91,85,12,13,2,'podokonniki',1,1,'Подоконники','Подоконники','','','','','','91_podokonniki.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(92,85,14,15,2,'roletyi',1,1,'Ролеты','Ролеты','','','','','','92_roleti.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(93,85,16,17,2,'vorota',1,1,'Ворота','Ворота','','','','','','93_vorota.jpg','','','','',0,'',0,0,'',0,0,0,'','','',0,0,'',''),(94,33,32,33,2,'vyibiraem_derevyannoe_okno',1,0,'Выбираем деревянное окно ','Выбираем деревянное окно ','','','','<p>На рынке деревянных окон существует множество предприятий, которые изготавливают деревянные окна.</p>','<p>На рынке деревянных окон существует множество предприятий, которые изготавливают деревянные окна. Среди этих предприятий многие стараются удешевить изготовление деревянного окна за счет экономии на комплектующих и за счет недорогого сырья. Лишь немногие предлагают к продаже именно качественные деревянные окна. Мы с вами понимаем, что окна &ndash; это не только элемент интерьера, а также конструктивный и многофункциональный элемент здания. Сквозь окна в дом попадает солнечный свет, именно окна мы ежедневно используем с целью проветривания помещений. Окна должны нести своим хозяевам не только комфорт, но и эстетическое и моральное удовлетворение от правильно сделанного выбора.</p>','','','','','',1356984000,'',1,0,'',0,0,0,'','','',0,0,'',''),(95,33,34,47,2,'osobennosti_montaja_okon',1,0,'Особенности монтажа окон','Особенности монтажа окон','','','','<p><span style=\"font-family: tahoma, geneva, sans-serif; color: #000000;\">При выборе поставщика окон обратите внимание на то, как предприятие производит установку окна. </span></p>','<p><span style=\"font-family: tahoma, geneva, sans-serif; color: #000000;\">При выборе поставщика окон обратите внимание на то, как предприятие производит установку окна. </span></p>','','','','','',1359662400,'',1,0,'',0,0,0,'','','',0,0,'',''),(96,33,35,40,3,'na_chto_stoit_obratit_vnimanie_pri_vyibore_firmyi-izgotovitelya_okon_pvh',1,0,'На что стоит обратить внимание при выборе фирмы-изготовителя окон ПВХ','На что стоит обратить внимание при выборе фирмы-изготовителя окон ПВХ','','','','','','','','','','',1359921600,'',1,0,'',0,0,0,'','','',0,0,'',''),(97,33,48,49,2,'zayavka-otpravlena',1,0,'Заявка отправлена','Заявка отправлена','','','','','','','','','','',1359921600,'',0,0,'',0,0,0,'','','',0,0,'',''),(98,33,41,42,3,'qweqwe',1,0,'qweqwe','qweqwe','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(99,33,43,46,3,'qweqweqwe',1,0,'qweqweqwewqe','qweqweqweqwe','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(100,33,44,45,4,'privet_kak_ono',1,0,'Привет как оно','Привет как оно','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(101,33,36,39,4,'avpvapavp',1,0,'авпвапавп','авпвапавп','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(102,33,37,38,5,'yivayivayiva',1,0,'ываываыва','ываываыва','','','','','','','','','','',1360008000,'',0,0,'',0,0,0,'','','',0,0,'',''),(104,34,2,3,2,'video-sovetyi',1,1,'Видео-советы','Видео-советы','Видео-советы','Видео-советы','Видео-советы','','','','','','','',1360094400,'videoTips',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(105,33,13,20,3,'zaporoje',1,0,'Запорожье','Запорожье','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(106,33,21,22,3,'volnyansk',1,0,'Вольнянск','Вольнянск','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(107,33,23,24,3,'dneprorudnoe',1,0,'Днепрорудное','Днепрорудное','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(108,33,25,26,3,'vasilivka',1,0,'Василивка','Василивка','','','','','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(109,33,14,15,4,'salon_na_volodarskogo',1,0,'Салон на володарского','Салон на володарского','Салон на володарского','Салон на володарского','Салон на володарского','<p>ул. Володарского, 1</p>\r\n<p>(0562) 38-19-21</p>\r\n<p>(099) 208-30-78</p>','<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>ул. Володарского, 1</p>\r\n<p><span style=\"font-size: x-small;\"><em>напротив бывшего<br />маг. Клеопатра</em></span></p>\r\n<p>(0562) 99-21-22</p>\r\n<p>(099) 123-12-11</p>\r\n<p>&nbsp;</p>\r\n<p>Пн-Пт: 9:00 -18:00</p>\r\n<p>Сб: 9:00 - 14:00</p>\r\n<p>Вс: выходной</p>\r\n</td>\r\n<td style=\"text-align: right; width: 320px;\">{map_1}</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>&nbsp;</p>\r\n<p><img src=\"../../../upload/foto-kon-test.jpg\" alt=\"\" width=\"530\" height=\"146\" /></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(110,33,16,17,4,'salon_na_geroev_stalingrada',1,0,'Салон на героев сталинграда','Салон на героев сталинграда','','','','<p>ул. Героев Сталинграда, 127</p>\r\n<p>(0562) 38-19-21</p>\r\n<p>(099) 208-30-78</p>','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(111,33,18,19,4,'salon_na_titova',1,0,'Салон на титова','Салон на титова','','','','<p>ул. Титова, 1</p>\r\n<p>(0562) 38-19-21</p>\r\n<p>(099) 112-12-33</p>','','','','','','',1360180800,'',0,0,'',-14400,1354233600,0,'','','',0,0,'1','2'),(112,75,3,4,3,'1111111',1,0,'1111111','1111111','','','','','','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(113,75,5,8,3,'est_mnogo_variantov',1,0,'Есть много вариантов','Есть много вариантов','','','','<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>','','113_okna.jpg','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(114,75,9,10,3,'esche_chto_to',1,0,'Еще что то','Еще что то','','','','<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>','','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(115,75,6,7,4,'Array_of_Active_Record_objects_corresponding_to_iPhone__Samsung_and_Motorola',1,0,'Array of Active Record objects corresponding to iPhone, Samsung and Motorola.','Array of Active Record objects corresponding to iPhone, Samsung and Motorola.','','','','','','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'',''),(116,33,50,51,2,'404',1,0,'404','404','404','404','404','','<p><span style=\"font-size: xx-large;\">Ошибка 404</span></p>','','','','','',1360440000,'',0,0,'',-14400,1354233600,0,'','','',0,0,'','');
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
INSERT INTO `reviews` VALUES (1,'Сначала решили заменить часть окон','','<p>В  компанию Открытые окна обратились по рекомендации знакомых. Сначала мы  решили заменить и заменили два окна &ndash; остались довольны. Затем  установили еще три пластиковых окна, также все нас устроило. Недавно  заказали и установили оставшиеся окна на весь дом. Работа менеджера и  монтажников понравилась, люди очень серьезно относятся к своей работе. Я  советую всем обращаться в Открытые окна.</p>','с. Вербки, Павлоградский р-н.',1,2,'Жмайло Елена Александровна','<p>Сначала решили заменить часть окон Сначала решили заменить часть окон Сначала решили заменить часть окон</p>','','','','','','',1356811200),(2,'Работа очень понравилась – опять обратились в «Открытые Окна»','','<p><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline !important; float: none;\">В компанию Открытые окна обратились по рекомендации знакомых. Сначала мы решили заменить и заменили два окна &ndash; остались довольны. Затем установили еще три пластиковых окна, также все нас устроило. Недавно заказали и установили оставшиеся окна на весь дом. Работа менеджера и монтажников понравилась, люди очень серьезно относятся к своей работе. Я советую всем обращаться в Открытые окна.</span><br class=\"Apple-interchange-newline\" /></p>','г. Павлоград',1,1,'Бондаренко Антонина Николаевна','','2_b1.png','','','2_b2.png','','',1351713600),(3,'Ждем зиму с нетерпением.','','','Романцова Людмила Викторовна, с. Вербоватовка, Павлоградский р-н',0,3,'','','','','','','','',0),(4,'Новый дом, новые окна!','','','Громова Яна Викторовна, с. Вербоватовка, Павлоградский р-н',0,4,'','','','','','','','',0),(5,'Нам очень понравилось качество окон.','','','Пробачай Надежда Васильевна, г. Павлоград',0,5,'','','','','','','','',0),(6,'Оформил заказ в «Открытых окнах» и не прогадал.','','','',0,6,'','','','','','','','',0),(7,'Выбрали \"Открытые Окна\" и остались довольны.','','','',0,7,'','','','','','','','',0),(8,'\"Открытые Окна\" будем советовать друзьям и знакомым.','','','',0,8,'','','','','','','','',0),(9,'Окна с видом на лес.','','','',0,9,'','','','','','','','',0),(10,'Думали, если установим металлопластиковые окна - влажности станет меньше. Так и произошло...','','','',0,10,'','','','','','','','',0),(11,'Прежде, чем менять окна, я советовался...','','','',0,11,'','','','','','','','',0),(12,'Прежде, чем менять окна','<iframe width=\"300\" height=\"200\" src=\"http://www.youtube.com/embed/LvegVh9VLJs\" frameborder=\"0\" allowfullscreen></iframe>','<p>В компанию Открытые окна обратились по рекомендации знакомых. Сначала мы решили заменить и заменили два окна &ndash; остались довольны. Затем установили еще три пластиковых окна, также все нас устроило. Недавно заказали и установили оставшиеся окна на весь дом. Работа менеджера и монтажников понравилась, люди очень серьезно относятся к своей работе. Я советую всем обращаться в Открытые окна.</p>','г. Терновка',1,13,'Ильяшевич Екатерина Валентиновна','<p>Сначала мы решили заменить и заменили два окна &ndash; остались довольны.</p>','','','','','','',1357070400),(13,'Думали, если установим металлопластиковые','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/LvegVh9VLJs\" frameborder=\"0\" allowfullscreen></iframe>','<p>В компанию Открытые окна обратились по рекомендации знакомых. Сначала мы решили заменить и заменили два окна &ndash; остались довольны. Затем установили еще три пластиковых окна, также все нас устроило. Недавно заказали и установили оставшиеся окна на весь дом. Работа менеджера и монтажников понравилась, люди очень серьезно относятся к своей работе. Я советую всем обращаться в Открытые окна.В компанию Открытые окна обратились по рекомендации знакомых. Сначала мы решили заменить и заменили два окна &ndash; остались довольны. Затем установили еще три пластиковых окна, также все нас устроило. Недавно заказали и установили оставшиеся окна на весь дом. Работа менеджера и монтажников понравилась, люди очень серьезно относятся к своей работе. Я советую всем обращаться в Открытые окна.</p>','г. Павлоград',1,14,'Бондаренко Антонина Николаевна','<p>Думали, если установим металлопластиковые. Думали, если установим металлопластиковые</p>','','2','1','','','',1356984000);
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
INSERT INTO `settings` VALUES (1,'news_name_page','Количество новостей на страницу','5'),(2,'form_email','Email получателя заявок','egor.developer@gmail.com; reklama@oknadnepr.com.ua'),(3,'admin_email','Email администратора сайта','egor.developer@gmail.com'),(4,'reviews_name_page','Количество отзывов на страницу','3'),(5,'video_tips_name_page','Количество советов на страницу','3'),(6,'works_name_page','Количество работ на страницу','3'),(7,'stock_name_page','Количество акций на страницу','3'),(8,'main_slider_time','Время слайда','5'),(9,'name_page','Количество подстраниц на страницу','2');
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
INSERT INTO `stock` VALUES (1,1,'Энергосберегающий стеклопакет по цене обычного',1360094400,0,'<p>Балконная рама &ndash; это первый барьер взаимодействия атмосферы и помещения. Поэтому мы рекомендуем ставить на балконную раму качественные окна. Для того, чтобы помочь Вам сделать выбор в сторону лучших окон Rehau, предприятие в своих салонах выдает рассрочку без процентов.&nbsp;</p>','1_a2.jpg',0,1360094400,1,''),(2,1,'Климат-контроль в подарок',1360440000,0,'<p>При заказе окон ПВХ Вы можете установить бесплатно в каждую третью створку окна систему климат-контроля, благодаря которой Вы сможете организовать проветривание помещения без Вашего личного участия и получить другие преимущества.</p>','2_a3.jpg',0,1360440000,0,'2'),(3,1,'Рассрочка 0% ',1360872000,0,'<p>При заказе окон ПВХ Вы можете установить бесплатно в каждую третью створку окна систему климат-контроля, благодаря которой Вы сможете организовать проветривание помещения без Вашего личного участия и получить другие преимущества.</p>','3_a1.jpg',0,1360440000,1,''),(4,1,'Климат-контроль в подарок',1364673600,0,'<p>При заказе окон ПВХ Вы можете установить бесплатно в каждую третью  створку окна систему климат-контроля, благодаря которой Вы сможете  организовать проветривание помещения без Вашего личного участия и  получить другие преимущества.</p>','4_a2.jpg',0,1360440000,1,'');
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
INSERT INTO `users` VALUES (1,'egor.developer@gmail.com','06dc5813908303f4f64c3594dad50501','Егор','admin'),(2,'reklama@oknadnepr.com.ua','6e6838a06ea76d2702f3034432322579','Ольга','admin');
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
INSERT INTO `video_tips` VALUES (1,1,'Как правильно выбрать окна ПВХ','<p>При выборе пластиковых окон мы сталкиваемся с продавцами, которые пытаются нам продать окна, которые сами бы себе не поставили. На что стоит обратить внимание и как избежать самых непоправимых ошибок при выборе окон ПВХ смотрите в этом видео.</p>','<iframe width=\"300\" height=\"225\" src=\"http://www.youtube.com/embed/MXhGMSC6XsQ\" frameborder=\"0\" allowfullscreen></iframe>','Владислав Бондаревский, директор предприятия \"Открытые Окна\"',1360094400),(2,1,'Ламинированные окна – нестандартные цветовые решения','<p>Предприятие &laquo;Открытые Окна&raquo; идет навстречу пожеланиям своих клиентов и изготавливает окна, двери,  балконное остекление не только белого цвета, но и предлагает большой выбор цветных решений оконной продукции. Ламинированные цветные окна изготавливаются путем нанесения пленки необходимого цвета на профиль. &laquo;Открытые Окна&raquo; предлагают ламинирование с одной или с двух сторон. Ламинированные окна не только меняют цвет профиля, они улучшают ряд характеристик. Окно приобретает защиту от внешних факторов и требует минимального ухода.</p>','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/qTG_KNKO0BM\" frameborder=\"0\" allowfullscreen></iframe>','Булава Илона, менеджер предприятия \"Открытые окна\"',1360094400),(3,1,'Нравятся пожелтевшие окна?','<p>Многие люди устанавливают пластиковые окна, не задумываясь о том, как они будут выглядеть спустя годы и сталкиваются с проблемой, когда окна меняют цвет: желтеют, становятся серыми. Это происходит с окнами, в состав профиля которых не добавили определенное количество компонентов. Наше предприятие для производства окон использует только немецкий профиль Rehau, поставки которого осуществляются непосредственно с завода производителя. Окна Rehau не меняют цвет и остаются белоснежными долгие десятилетия.</p>','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/RjkpDs0wuVU\" frameborder=\"0\" allowfullscreen></iframe>','Алина Киярова, менеджер предприятия \"Открытые окна\"',1359662400),(4,1,'Беспокоитесь о безопасности Ваших детей?','<p>С помощью дополнительной функции &laquo;замок безопасности&raquo; фурнитуры Winkhaus для пластиковых окон можно найти решение. Замок безопасности устанавливается на поворотно-откидные створки окна и блокируется ключом, который можно хранить в недоступном месте для детей. При этом, есть возможность проветривания помещения, так как функция откидывания створки сохраняется. С фурнитурой Winkhaus Ваши дети будут в безопасности в Ваше отсутствие!</p>','<iframe width=\"300\" height=\"169\" src=\"http://www.youtube.com/embed/pQ6lITYfFjQ\" frameborder=\"0\" allowfullscreen></iframe>','Илона Мальгинова, менеджер предприятия \"Открытые окна\"',1359921600);
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
INSERT INTO `works` VALUES (1,1,'Пляжный сезон круглый год!','<p>орой нашему предприятию приходится браться за нестандартные виды работ и работать с другими материалами, кроме окон ПВХ и деревянных окон. В данном случае был использован алюминиевый профиль Talisman. Необходимо было сделать витражную конструкцию для помещения, в котором находится бассейн. В результате, бассейн от улицы отделила надежная остеклённая энергосберегающими стеклопакетами с применением стекла &laquo;триплекс&raquo; стена. А чтобы внутрь не проникали жаркие лучи и нежелательные взгляды &ndash; стеклопакеты покрыли специальной светоотражающей плёнкой.  В итоге, убедитесь сами, стройка еще не окончена, а витраж придает зданию презентабельный вид.</p>','1_8.jpg','1_8.jpg','Днепропетровская обл., г. Павлоград, ул. Восстания, Анастасия У.',1,'123','123213','21321','213213',1356984000),(2,1,'Пляжный сезон круглый год!','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Порой нашему предприятию приходится браться за нестандартные виды работ и работать с другими мате</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">риалами, кроме </span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">окон ПВХ</span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\"> </span></span></span><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\"><span style=\"color: #000000;\">и </span><a href=\"http://oknadnepr.com.ua/\"><span style=\"color: #000000;\">деревянных окон</span></a><span style=\"color: #000000;\">. В данном с</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">лучае  был использован алюминиевый профиль Talisman. Необходимо было сделать  витражную конструкцию для помещения, в котором находится бассейн. В  результате, бассейн от улицы отделила надежная остеклённая  энергосберегающими стеклопакетами с применением стекла &laquo;триплекс&raquo; стена.  А чтобы внутрь не проникали жаркие лучи и нежелательные взгляды &ndash;  стеклопакеты покр</span></span></span><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">ыли  специальной светоотражающей плёнкой. &nbsp;В итоге, убедитесь сами, стройка  еще не окончена, а витраж придает зданию презентабельный вид.</span></span></span></p>','','','Днепропетровская обл. с. Межиричи, И.В.',2,'','','','',0),(3,1,'Мелочь, а приятно!','<p><span style=\"color: #000000;\"><span style=\"font-size: 12px;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Окна  нестандартных форм - это ещё один пример того, как важно правильно и с  душой оформить своё жилище. Казалось бы, ничего особенного, а на самом  деле, такие мелочи &ndash; важные составляющие комфортного и уютного дома! С  помощью таких окон ПВХ Вы решаете сразу несколько проблем: остекление  сложных фрагментов зданий, вентилирование нежилых помещений,  эстетическая составляющая строения и т.д. Вот и выходит, что мелочей в  деле остекления не бывает!</span></span></span></p>','','','Днепропетровская обл., г. Павлоград, ул. Восстания, Анастасия У.',3,'','','','',1356984000),(4,1,'По окнам не скажешь, что стройка не закончена…','<p>О том, как важно правильно оформить фасад здания, можно увидеть на примере этого дома. Здание еще на стадии строительства, а готовые деревянные окна уже установлены и выглядят прекрасно, идеально дополняя облицовочный кирпич. И заметьте, в этом случае деревянные окна смотрятся лучше окон ПВХ.</p>','4_7d.jpg','4_7d.jpg','г. Днепропетровск, Владимир С.',4,'','','','',1360180800);
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

