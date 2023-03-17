-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cs_app_db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_user`
--

DROP TABLE IF EXISTS `_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user`
--

LOCK TABLES `_user` WRITE;
/*!40000 ALTER TABLE `_user` DISABLE KEYS */;
INSERT INTO `_user` VALUES (1,'alex@mail.com','alex','test','$2a$10$2fQhb5Dvwa.KJdo9w8YsbuatUZI9z6N.6LzNpQpI7cd0exNX.UNlK','USER'),(4,'aaa@mail.com','aaa','bbb','$2a$10$KoRkYQL.yI5XMcdXE7B6O.V0kNkQSbrR0noDRHU7imZPBrLA4ad3K','USER'),(5,'user@mail.com','test','user','$2a$10$OVY8bDPPOSbKoNaiXBJZJ.NlM8LecuJj86iZyDe0Vp10oBjZJI7c2','USER'),(6,'test@mail.com','test','test','$2a$10$QwMxae1lR/a9bMf8yRxU6.GuoHh8.PKJICJzXRYUSq9vy66ubtqXi','USER'),(7,'john@mail.com','john','doe','$2a$10$V2QJUxkUOalWIzMZuDZYJOdrrGKTp0lqb0..TQoRBO08scoPn1JWO','USER'),(8,'baka@mail.com','john','doe','$2a$10$C5c/3VyAaZv07/f0B3MrJOsOk0Tde1mx/AWUpqHkVJcUYDQ5KHTYq','USER'),(9,'david@mail.com','enko','denko','$2a$10$LJFbkDViutuvWvF4.sm2OedYfL5hRrziFs4YWBvMuMIgnqa8DsEjq','USER'),(10,'malish@mail.com','ma','da','$2a$10$.z4ccWuQHmKhT3OYPf3LreXHrchrz.mDIv0qgW.ItCp2FtOzuVv/m','USER'),(11,'qwer@mail.com','ty','da','$2a$10$FX66KaU7LkcjT1Z6.WN8mOwvx4rgexeBH6sPzJf4qOr5wgl8W2nVi','USER'),(12,'bob@mail.com','bob','bbb','$2a$10$ARN7l4lAsf3k9E6RSS4Ekuy.0YcjfZFRKCwgQ5TcUI04UGkrs2Fs.','USER'),(13,'peter@mail.com',NULL,NULL,'$2a$10$LuViLKELXhODukdD/hUwGeLQDd2BISgrUvet3mFgo0ErdqDbGAWL.','USER'),(14,'example.j@mail.com',NULL,NULL,'$2a$10$91gQLxn695sKNVVJqp8wOOtIZtnP/5/prvg.48y9XASDFbFGHDAIW','USER'),(15,'ginger@mail.com','david','hamelech','$2a$10$rDH.QzMQPTnfkdwlSzQsl.ATk/Dx.7YfnNJy.YKxRPL.YXoYnqVMy','USER'),(16,'pj@mail.com','paul','johnson','$2a$10$wYDDONwZBTAQvtHR4DifUuCQQ4AmitvbidDJSuCMY.R6wnEck3ie.','USER'),(17,'bob@mail.com','bob','bobby','$2a$10$sDCS.xHCuIHxNc6WOL/yxerjbNkZ6JiafkQQshvUHUgyN6/mSRK0C','USER'),(18,'pd@mail.com','paul','dean','$2a$10$4EKDsRquJZJqpLpioZQtkOZnFSn4qeYEz7n4QhsxeXY0fhfOZ4jme','USER'),(19,'pd@mail.com','paul','dean','$2a$10$FkjJ5Wov6wO7tEpunrUfiuV4GVQEWZPNyCzKeTXwAL8.r3QjNk7CS','USER'),(20,'pd@mail.com','paul','dean','$2a$10$kYQdVnEk/zwqh/9NL.KMJ.blMy/earVt6YwGzsB8lqBUvgjRzdxI2','USER'),(21,'vg@mail.com','vova','galkin','$2a$10$AJRZ0/NuOlSVvYgWPM60Y.MlVTPlOxJ.zPhAHrcX.2QNZKohqcxIW','USER'),(22,'maga.g@mail.com','maga','genashvili','$2a$10$ZqhUF8JgpfEQzz2gYQ03LOw5pjJUO.D5nzUuFV/XUm1tZRVEUYFSu','USER'),(23,'katie@mail.com','kate','moss','$2a$10$/XO9pvmJGwEqe0RE7rRY7.FbocHEiAqattygshzgSUz615BVBYO3.','USER'),(24,'bob.d@mail.com','bobby','brown','$2a$10$hw9/4LmA2zlrY5aU2q29C.RvNj9x/OaZfqhB6Tkuhph1uNhSVEuBy','USER'),(25,'rob@mail.com','robert','mashu','$2a$10$eegU917OboXai8.orckaEOSuJ1W0AQYXzRHzNnhTD/NRw20jSQMS.','USER'),(26,'sp@mail.com','sabina','pro','$2a$10$GrOQAF1uRrFpJy0882VPRO5sHCC87U22zpdLdwAL7zW7ib8ZORLOa','USER'),(27,'ml@mail.com','misha','lev','$2a$10$kFaeakLEunwDeHQmxuZejOFB5ow.U1FvMsVGph73lTkX54U2Qrdwm','USER'),(28,'md@mail.com','dima','madman','$2a$10$Miht3vXY31hjXmJ4qAk3SOLf5/Vk0GpZyrCYhlG5USlvbSlobnAjK','USER'),(29,'pt@mail.com','pasha','tehnik','$2a$10$AlQURZp/xOXPUY44paoH..qzbCTkDWDdc7czCnXJh91tGcUaHM5eC','USER'),(30,'ks@mail.com','kotik','salem','$2a$10$Xzpk3WdMNv3lttLuoVroNuW./BCJzOLEuDxCJJkcbvFKvWNoJbHa2','USER'),(31,'adidas@mail.com',NULL,NULL,'$2a$10$.BD.f.HuVCAdRR8CzSQV8e/W6nqpuTw96adA20CJrsmBdxj5ARoR6','COMPANY'),(32,'alex.ppp@mail.com',NULL,NULL,'$2a$10$SfYCr4ScPv8zPxoCJIlIfO2.jDDbCDCM6xZPNri95j0NhkBfRW8Gu','CUSTOMER'),(33,'bb@mail.com',NULL,NULL,'$2a$10$m.dP2UrcwzFrydUtCXjFA.0ghtESAyJ5YhzvpudNUhOgJ1lcwnnnG','CUSTOMER'),(34,'jb@mail.com',NULL,NULL,'$2a$10$6rwts6nTs4OWKri1DCqLnuiMX3f0x/sncCo5W2i9AHT/XXGMVItMW','CUSTOMER'),(35,'vn@mail.com',NULL,NULL,'$2a$10$90RYuzvDQO0QzKE3NhZKpOGkqzEFJ1nyQZmvUCpwB2cjXCRXXzejK','CUSTOMER'),(36,'ytu@mail.com',NULL,NULL,'$2a$10$7xkg7lDinDm5W3rVcXZz3OsnnBwkWuLnPTvdNk8ILsmyv.DeGw3eK','CUSTOMER');
/*!40000 ALTER TABLE `_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkout_date` varchar(255) DEFAULT NULL,
  `coupon_id` bigint DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES (1,'2023-02-20',1,'testuser@mail.com'),(2,'2023-02-20',2,'testuser@mail.com'),(3,'2023-02-20',1,'testuser@email.com'),(4,'2023-02-20',2,'test@email.com'),(7,'2023-03-02',2,'ml@mail.com'),(12,'2023-03-02',2,'sp@mail.com'),(13,'2023-03-02',3,'sp@mail.com'),(14,'2023-03-02',5,'sp@mail.com'),(15,'2023-03-02',4,'sp@mail.com'),(16,'2023-03-02',3,'pt@mail.com'),(17,'2023-03-02',5,'pt@mail.com'),(18,'2023-03-02',5,'test@mail.com'),(20,'2023-03-03',3,'ml@mail.com'),(21,'2023-03-06',9,'ml@mail.com');
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'adidas@mail.com','adidas','1ba1dc01-0a9e-4fb7-87db-44013b60c606');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_coupon`
--

DROP TABLE IF EXISTS `company_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_coupon` (
  `company_id` bigint NOT NULL,
  `coupon_id` bigint NOT NULL,
  PRIMARY KEY (`company_id`,`coupon_id`),
  UNIQUE KEY `UK_6lc2x6u7gyiuslb2dy0pklfun` (`coupon_id`),
  CONSTRAINT `FKanoit4kr8f302c67m5nxaxnb1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKb9ncht8822avdpr0bi3xbo8ho` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_coupon`
--

LOCK TABLES `company_coupon` WRITE;
/*!40000 ALTER TABLE `company_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_available` int DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (1,0,'footwear',1,'you wear them on feet!','2023-10-10','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwygBkVlh8JeeF6CxbpllFd0bmrJHZKAcqLQ&usqp=CAU',280.00,'2022-10-10','shoes',NULL),(2,3,'clothing',2,'warm and comfy!','2023-10-10','https://images.rawpixel.com/image_1000/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdXB3azYxNzc1MDU1LXdpa2ltZWRpYS1pbWFnZS1rb3dicWQ0Yi5qcGc.jpg',120.00,'2022-10-10','swether',NULL),(3,1,'clothing',2,'warm and comfy!','2023-10-10','https://live.staticflickr.com/65535/49390481077_b42e83319f_b.jpg',100.00,'2022-10-10','sweatshirt',NULL),(4,99,'food',2,'hot and tasty!','2023-10-10','https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/ns2719-image-kwvyc69a.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=dab432e75266e6ce1430f1e3b9df265a',20.00,'2022-10-10','tea',NULL),(5,96,'food',2,'hot and tasty!','2023-10-10','https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/l-intro-1645231221.jpg',20.00,'2022-10-10','coffee',NULL),(6,49,'food',2,'sweet!','2023-10-10','https://live.staticflickr.com/2385/2115916059_08fea33b98_b.jpg',6.00,'2022-10-10','sugar',NULL),(7,200,'food',2,'makes your mooood better!','2023-10-10','https://live.staticflickr.com/1904/30285206037_33dfe7b50c_b.jpg',8.00,'2022-10-10','milk',NULL),(8,25,'clothing',3,'stylish!','2023-10-10','https://live.staticflickr.com/420/19621433749_c4dca72474_b.jpg',80.00,'2022-10-10','hat',NULL),(9,24,'clothing',3,'stylish!','2023-10-10','https://images.pexels.com/photos/1124465/pexels-photo-1124465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',80.00,'2022-10-10','cap',NULL),(10,18,'travel',4,'strong and durable!','2023-10-10','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR88i8BnwgCUhmHhZEayaDxWF5nPs-CWlM3KA&usqp=CAU',200.00,'2022-10-10','tent',NULL),(11,18,'travel',4,'strong and durable!','2023-10-10','https://images.solecollector.com/complex/image/upload/fl_lossy,q_auto,w_1200/lv59pbanngooeiv2nwpd.jpg',200.00,'2022-10-10','boots',NULL),(12,18,'footwear',4,'strong and durable!','2023-10-10','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwygBkVlh8JeeF6CxbpllFd0bmrJHZKAcqLQ&usqp=CAU',200.00,'2022-10-10','boots',NULL),(13,18,'footwear',4,'strong and durable!','2023-10-10','https://images.pexels.com/photos/718981/pexels-photo-718981.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',200.00,'2022-10-10','boots',NULL);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'alex.ppp@mail.com',NULL,NULL,'7de007d5-072e-476b-addb-e2a151f4aceb'),(2,'bb@mail.com',NULL,NULL,'50a68668-3134-4906-ac34-37b1d9501b3f'),(3,'jb@mail.com',NULL,NULL,'2fbddff8-2c9f-4156-aa4e-2ef616f0a47e'),(4,'vn@mail.com',NULL,NULL,'d770e4eb-4fdb-4dd5-9eff-9573ffa0a4b1'),(5,'ytu@mail.com','yyt','ytyu','3dbbca98-8704-49f5-a5b6-8f33497e8bcd');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_coupon`
--

DROP TABLE IF EXISTS `customer_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_coupon` (
  `customer_id` bigint NOT NULL,
  `coupon_id` bigint NOT NULL,
  PRIMARY KEY (`customer_id`,`coupon_id`),
  KEY `FKppndqdpydmsumc9yqslm5hss4` (`coupon_id`),
  CONSTRAINT `FKi755t5tde9sf6nrp4rm2rnnmn` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKppndqdpydmsumc9yqslm5hss4` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_coupon`
--

LOCK TABLES `customer_coupon` WRITE;
/*!40000 ALTER TABLE `customer_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkout_date` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `remove_date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'2023-03-02','2','sweet!','https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fclothing%2520store%2F&psig=AOvVaw3MXhNLaEqVk0aONZo8b7MT&ust=1676612082228000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCNj6qO-omf0CFQAAAAAdAAAAABAE','2023-03-02','sugar','ml@mail.com'),(2,'2023-03-02','2','hot and tasty!','https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/l-intro-1645231221.jpg','2023-03-03','coffee','ml@mail.com');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review_description` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,2,'2022-10-10',3.5,'good overall','test@mail.com'),(2,3,'2023-03-02',4,'Nice overall!','test@mail.com'),(3,5,'2023-03-02',3,'perfect when Hot, and milk added...!','test@mail.com'),(4,2,'2023-03-02',5,'excellent!','vg@mail.com'),(5,2,'2023-03-02',5,'warm and comfy indeed!!','katie@mail.com'),(6,2,'2023-03-02',5,'my girlfriend has it, she is very satisfied!','ginger@mail.com'),(7,2,'2023-03-02',3,'one sleeve tear down at elbow after one week, poor quality!','peter@mail.com'),(8,2,'2023-03-02',4.5,'doesn\'t have much color choice, beside that - worth obtaining!','md@mail.com'),(9,6,'2023-03-02',5,'sweet!','ml@mail.com'),(10,2,'2023-03-06',5,'5/5great','ml@mail.com'),(11,9,'2023-03-06',3,'so so','ml@mail.com');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 11:24:36
