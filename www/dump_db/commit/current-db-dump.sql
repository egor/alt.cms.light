-- MySQL dump 10.10
--
-- Host: localhost    Database: alt_light
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--


/*!40000 ALTER TABLE `user` DISABLE KEYS */;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'egor.developer@gmail.com','e08a7c49d96c2b475656cc8fe18cee8e','Егор','admin');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

--
-- Table structure for table `user_action_log`
--

DROP TABLE IF EXISTS `user_action_log`;
CREATE TABLE `user_action_log` (
  `user_action_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `array` text NOT NULL,
  `comment` varchar(255) NOT NULL,
  `error` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_action_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_action_log`
--


/*!40000 ALTER TABLE `user_action_log` DISABLE KEYS */;
LOCK TABLES `user_action_log` WRITE;
INSERT INTO `user_action_log` VALUES (1,1,'тест',1361533465,'{\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.22 (KHTML, like Gecko) Chrome\\/25.0.1364.97 Safari\\/537.22\"}','',0),(2,1,'тест',1361533465,'{\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.22 (KHTML, like Gecko) Chrome\\/25.0.1364.97 Safari\\/537.22\"}','',0),(3,1,'добавление пользователя',1361533494,'{\"new_user_id\":\"8\",\"new_user_email\":\"egor.developer4@gmail.com\",\"new_user_name\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.22 (KHTML, like Gecko) Chrome\\/25.0.1364.97 Safari\\/537.22\"}','',0),(4,1,'удаление пользователя',1361535973,'{\"user_id\":6,\"email\":\"egor.developer2@gmail.com\",\"name\":\"1\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.22 (KHTML, like Gecko) Chrome\\/25.0.1364.97 Safari\\/537.22\"}','',0),(5,1,'удаление пользователя',1361536012,'{\"user_id\":8,\"email\":\"egor.developer4@gmail.com\",\"name\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(6,1,'удаление пользователя',1361536049,'{\"user_id\":8,\"email\":\"egor.developer4@gmail.com\",\"name\":\"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(7,1,'удаление пользователя',1361536240,'{\"user_id\":7,\"email\":\"egor.developer3@gmail.com\",\"name\":\"123123\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64) AppleWebKit\\/537.22 (KHTML, like Gecko) Chrome\\/25.0.1364.97 Safari\\/537.22\"}','',0),(8,1,'удаление пользователя',1361536266,'{\"user_id\":6,\"email\":\"egor.developer2@gmail.com\",\"name\":\"1\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(9,1,'удаление пользователя',1361536296,'{\"user_id\":5,\"email\":\"egor.developer1@gmail.com\",\"name\":\"1\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(10,1,'удаление пользователя',1361536323,'{\"user_id\":4,\"email\":\"1\",\"name\":\"1\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(11,1,'удаление пользователя',1361536395,'{\"user_id\":3,\"email\":\"1\",\"name\":\"1\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(12,1,'удаление пользователя',1361536436,'{\"user_id\":2,\"email\":\"1\",\"name\":\"1\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(13,1,'добавление пользователя',1361536458,'{\"new_user_id\":\"9\",\"new_user_email\":\"test2@test.ru\",\"new_user_name\":\"1111\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(14,1,'удаление пользователя. ошибка при удалении. самоудаление запрещено',1361536677,'{\"user_id\":1,\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',1),(15,1,'удаление пользователя. ошибка при удалении. самоудаление запрещено',1361536712,'{\"user_id\":1,\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',1),(16,1,'добавление пользователя',1361539379,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(17,1,'добавление пользователя',1361539387,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(18,1,'добавление пользователя',1361539405,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(19,1,'добавление пользователя',1361539416,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(20,1,'добавление пользователя',1361539478,'{\"new_user_id\":\"10\",\"new_user_email\":\"egor@gmail.com\",\"new_user_name\":\"123123123\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(21,1,'добавление пользователя',1361539550,'{\"new_user_id\":\"11\",\"new_user_email\":\"test123@test.ru\",\"new_user_name\":\"rwerwer\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(22,1,'добавление пользователя',1361539569,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(23,1,'добавление пользователя',1361539574,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u04401\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(24,1,'добавление пользователя',1361539862,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u04401\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(25,1,'добавление пользователя',1361539872,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u04401\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(26,1,'добавление пользователя',1361539962,'{\"new_user_id\":\"1\",\"new_user_email\":\"egor.developer@gmail.com\",\"new_user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(27,1,'редактирование пользователя',1361540007,'{\"user_id\":\"1\",\"user_email\":\"egor.developer@gmail.com\",\"user_name\":\"\\u0415\\u0433\\u043e\\u0440\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(28,1,'удаление пользователя',1361540321,'{\"user_id\":11,\"email\":\"test123@test.ru\",\"name\":\"rwerwer\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(29,1,'удаление пользователя',1361540323,'{\"user_id\":10,\"email\":\"egor@gmail.com\",\"name\":\"123123123\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0),(30,1,'удаление пользователя',1361540327,'{\"user_id\":9,\"email\":\"test2@test.ru\",\"name\":\"1111\",\"ip\":\"127.0.0.1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 6.1; WOW64; rv:19.0) Gecko\\/20100101 Firefox\\/19.0\"}','',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_action_log` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

