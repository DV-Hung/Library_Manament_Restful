-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library_manager_system
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `favorite_books`
--

DROP TABLE IF EXISTS `favorite_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_books` (
  `favorite_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `favorite_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`),
  CONSTRAINT `favorite_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `tblbook` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_books`
--

LOCK TABLES `favorite_books` WRITE;
/*!40000 ALTER TABLE `favorite_books` DISABLE KEYS */;
INSERT INTO `favorite_books` VALUES (1,32,1,'2024-06-05 05:21:32'),(2,32,2,'2024-06-05 05:27:49');
/*!40000 ALTER TABLE `favorite_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblauthor`
--

DROP TABLE IF EXISTS `tblauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblauthor` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) DEFAULT NULL,
  `author_date_of_birth` date DEFAULT NULL,
  `author_description` text,
  `author_image` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_total_book` int DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblauthor`
--

LOCK TABLES `tblauthor` WRITE;
/*!40000 ALTER TABLE `tblauthor` DISABLE KEYS */;
INSERT INTO `tblauthor` VALUES (1,'John Smith','1975-08-15','John Smith is a prolific author known for his gripping thrillers.','john_smith.jpg','2024-04-26 01:00:00','2024-06-04 03:36:43',8),(2,'Emily Johnson','1982-04-25','Emily Johnson is a renowned poet celebrated for her evocative verses.','emily_johnson.jpg','2024-04-25 03:30:00','2024-06-04 03:36:43',2),(3,'Michael Brown','1968-11-10','Michael Brown is an expert in business strategy and leadership.','michael_brown.jpg','2024-04-24 07:15:00','2024-06-04 03:36:43',1),(4,'Sarah White','1990-03-05','Sarah White specializes in children\'s literature, bringing joy to young readers.','sarah_white.jpg','2024-04-23 04:45:00','2024-06-04 03:36:43',1),(5,'David Lee','1979-09-20','David Lee is a travel writer with a passion for exploring different cultures.','david_lee.jpg','2024-04-22 02:20:00','2024-06-04 03:36:43',1),(6,'Emma Garcia','1985-06-12','Emma Garcia is an emerging author known for her heartwarming romance novels.','emma_garcia.jpg','2024-04-21 06:10:00','2024-06-04 03:36:43',3),(7,'Daniel Martinez','1973-01-30','Daniel Martinez is a respected historian specializing in ancient civilizations.','daniel_martinez.jpg','2024-04-20 09:50:00','2024-06-04 03:36:43',2),(8,'Sophia Clark','1988-07-18','Sophia Clark writes insightful self-help books aimed at personal growth.','sophia_clark.jpg','2024-04-19 03:00:00','2024-06-04 03:36:43',2),(9,'James Anderson','1965-12-08','James Anderson is a well-known author of science fiction novels.','james_anderson.jpg','2024-04-18 05:30:00','2024-06-04 03:36:43',2),(10,'Lily Moore','1971-02-14','Lily Moore explores the depths of human psychology in her novels.','lily_moore.jpg','2024-04-17 07:45:00','2024-06-04 03:36:43',2),(11,'Benjamin Taylor','1980-10-03','Benjamin Taylor is an accomplished philosopher known for his profound insights.','benjamin_taylor.jpg','2024-04-16 10:20:00','2024-06-04 03:36:43',3),(12,'Olivia Wilson','1995-05-28','Olivia Wilson writes captivating fantasy novels for young adult readers.','olivia_wilson.jpg','2024-04-15 02:10:00','2024-06-04 03:37:18',2),(13,'Lucas Thompson','1977-08-02','Lucas Thompson is an expert in culinary arts and a best-selling cookbook author.','lucas_thompson.jpg','2024-04-14 04:55:00','2024-06-04 03:37:18',2),(14,'Grace Carter','1983-03-15','Grace Carter delves into the complexities of human relationships in her novels.','grace_carter.jpg','2024-04-13 08:40:00','2024-06-04 03:37:18',2),(15,'Nathan Harris','1970-11-28','Nathan Harris is a talented artist and author known for his unique approach to storytelling.','nathan_harris.jpg','2024-04-12 01:25:00','2024-06-04 03:37:18',2),(16,'Ava Rodriguez','1986-09-10','Ava Rodriguez is an accomplished playwright with a knack for crafting compelling dramas.','ava_rodriguez.jpg','2024-04-11 03:50:00','2024-06-04 03:37:18',2),(17,'Ethan Walker','1974-02-18','Ethan Walker writes thought-provoking essays on contemporary issues.','ethan_walker.jpg','2024-04-10 06:15:00','2024-06-04 03:37:18',2),(18,'Isabella Martinez','1981-07-22','Isabella Martinez is an expert in art history and a published author.','isabella_martinez.jpg','2024-04-09 09:30:00','2024-06-04 03:37:18',1),(19,'Jack Wright','1978-12-05','Jack Wright writes gripping horror novels that keep readers on the edge of their seats.','jack_wright.jpg','2024-04-08 02:40:00','2024-06-04 03:37:18',0),(20,'Madison Evans','1989-06-30','Madison Evans is a talented young author with a passion for exploring futuristic worlds.','madison_evans.jpg','2024-04-07 04:20:00','2024-06-04 03:37:18',0),(21,'Nguyễn Nhật Ánh','1955-05-07','Tác giả nổi tiếng với các tác phẩm về tuổi thơ và tình yêu.','nguyennhatanh.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(22,'Ngô Tất Tố','1893-06-03','Nhà văn hiện thực phê phán của Việt Nam.','ngotatto.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(23,'Nam Cao','1915-10-29','Tác giả của nhiều tác phẩm hiện thực phê phán.','namcao.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(24,'Vũ Trọng Phụng','1912-10-20','Nhà văn nổi tiếng với các tác phẩm châm biếm.','vutrongphung.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(25,'Kim Lân','1920-08-01','Tác giả của nhiều truyện ngắn nổi tiếng.','kimlan.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(26,'Tô Hoài','1920-09-27','Nhà văn lớn của nền văn học Việt Nam.','tohoai.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(27,'Nguyễn Du','1766-01-03','Tác giả của tác phẩm kinh điển Truyện Kiều.','nguyendu.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(28,'Thạch Lam','1910-06-07','Nhà văn lãng mạn Việt Nam.','thachlam.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(29,'Lê Minh Khuê','1949-12-06','Nhà văn viết về đề tài chiến tranh.','leminhkhe.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0),(30,'Phạm Thị Hoài','1960-07-09','Nhà văn viết về cuộc sống đô thị.','phamthihoai.jpg','2024-06-04 03:00:20','2024-06-04 03:37:18',0);
/*!40000 ALTER TABLE `tblauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbook`
--

DROP TABLE IF EXISTS `tblbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbook` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) DEFAULT NULL,
  `book_publishing_year` int DEFAULT NULL,
  `book_description` text,
  `book_price` decimal(10,2) DEFAULT NULL,
  `book_inventory_number` int DEFAULT NULL,
  `book_page_number` int DEFAULT NULL,
  `book_status` varchar(50) DEFAULT NULL,
  `book_language` varchar(50) DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `book_weight` float DEFAULT NULL,
  `book_size` varchar(45) DEFAULT NULL,
  `ratings_star` float DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  KEY `category_id` (`category_id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `tblbook_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `tblauthor` (`author_id`),
  CONSTRAINT `tblbook_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tblcategory` (`category_id`),
  CONSTRAINT `tblbook_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `tblpublisher` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbook`
--

LOCK TABLES `tblbook` WRITE;
/*!40000 ALTER TABLE `tblbook` DISABLE KEYS */;
INSERT INTO `tblbook` VALUES (1,'The Silent Patient',2019,'A gripping psychological thriller that will leave you guessing until the very end.',15.99,0,336,'Available','English',1,5,1,'2024-04-26 01:00:00','2024-06-07 14:26:42',1.2,'6x9',4),(2,'Where the Crawdads Sing',2018,'A hauntingly beautiful novel about love, loneliness, and the beauty of nature.',12.50,200,384,'Available','English',2,5,2,'2024-04-25 03:30:00','2024-05-27 13:25:50',1.1,'5.5x8.25',4),(9,'The Four Agreements',1997,'A practical guide to personal freedom based on ancient Toltec wisdom.',9.75,210,160,'Available','English',10,8,10,'2024-04-17 07:45:00','2024-06-02 15:55:29',1,'5.25x8',4),(10,'The Alchemist',1988,'Follow Santiago on his journey to find his personal legend and fulfill his dreams.',12.99,249,208,'Available','English',11,8,11,'2024-04-16 10:20:00','2024-06-02 15:55:29',1.1,'5.5x8.25',4),(11,'To Kill a Mockingbird',1960,'Harper Lee\'s timeless classic about racial injustice and moral growth in the American South.',8.99,260,336,'Available','English',12,3,12,'2024-04-15 02:10:00','2024-06-02 15:55:29',1.2,'5.25x8',4),(12,'1984',1949,'George Orwell\'s dystopian masterpiece about a totalitarian regime and the power of language.',7.95,280,328,'Available','English',13,1,13,'2024-04-14 04:55:00','2024-06-02 15:55:29',1.3,'5.5x8.5',4),(13,'Pride and Prejudice',1813,'Jane Austen\'s classic romance novel about love, marriage, and social class in 19th-century England.',6.50,290,432,'Available','English',14,3,14,'2024-04-13 08:40:00','2024-06-02 15:55:29',1.4,'5x8',5),(14,'The Great Gatsby',1925,'F. Scott Fitzgerald\'s iconic novel capturing the decadence and disillusionment of the Jazz Age.',9.25,200,180,'Available','English',15,3,15,'2024-04-12 01:25:00','2024-06-02 15:55:29',1,'5.25x7.75',3),(15,'The Hobbit',1937,'J.R.R. Tolkien\'s enchanting tale of Bilbo Baggins\'s unexpected adventure and discovery of the One Ring.',11.50,220,320,'Available','English',16,2,16,'2024-04-11 03:50:00','2024-06-02 15:55:29',1.2,'5.5x8.25',2),(16,'The Catcher in the Rye',1951,'J.D. Salinger\'s iconic novel following Holden Caulfield as he navigates adolescence and society.',8.75,210,224,'Available','English',17,3,17,'2024-04-10 06:15:00','2024-06-02 15:55:29',1.1,'5.25x8',1),(17,'The Girl on the Train',2015,'A gripping psychological thriller about a woman who becomes entangled in a missing persons investigation.',14.99,240,336,'Available','English',1,5,1,'2024-04-09 09:30:00','2024-06-02 15:55:29',1.2,'6x9',5),(18,'The Goldfinch',2013,'Donna Tartt\'s Pulitzer Prize-winning novel about a young boy who becomes involved in the art underworld.',16.95,250,784,'Available','English',18,2,18,'2024-04-08 02:40:00','2024-06-02 15:55:29',1.6,'6.25x9.25',4),(19,'Introduction to Programming',2020,'A comprehensive guide to programming basics.',29.99,100,350,'available','English',1,1,1,'2023-05-01 03:00:00','2024-06-02 15:55:29',1.2,'15x23cm',4.5),(20,'Advanced Data Structures',2018,'In-depth exploration of data structures.',39.99,50,450,'available','English',1,1,1,'2023-05-02 04:00:00','2024-06-05 07:31:04',1.3,'16x24cm',4.5),(21,'Machine Learning Basics',2021,'An introductory book on machine learning concepts.',49.99,70,300,'available','English',1,1,1,'2023-05-03 05:00:00','2024-06-05 07:31:04',1.1,'14x22cm',4),(22,'Web Development with JavaScript',2019,'Learn how to build web applications using JavaScript.',25.99,80,400,'available','English',1,1,1,'2023-05-04 06:00:00','2024-06-05 07:31:04',1.4,'17x25cm',4),(23,'Database Management Systems',2017,'A detailed look at database management systems.',34.99,60,500,'available','English',1,1,1,'2023-05-05 07:00:00','2024-06-05 07:31:04',1.5,'18x26cm',4),(34,'Số đỏ',1936,'Truyện dài châm biếm xã hội thực dân nửa phong kiến của Vũ Trọng Phụng.',80000.00,30,200,'Available','Vietnamese',3,1,3,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.3,'14 x 20 cm',4),(35,'Tắt đèn',1939,'Tiểu thuyết hiện thực phê phán của Ngô Tất Tố về đời sống người nông dân.',75000.00,60,280,'Available','Vietnamese',4,1,4,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.35,'15 x 21 cm',4),(39,'Mắt biếc',1990,'Tiểu thuyết lãng mạn của Nguyễn Nhật Ánh.',85000.00,40,300,'Available','Vietnamese',8,1,3,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.35,'14 x 22 cm',4),(45,'Quân khu Nam Đồng',2015,'Tiểu thuyết của Bình Ca về một nhóm thanh niên trong quân khu.',95000.00,50,350,'Available','Vietnamese',13,1,4,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.45,'14 x 21 cm',5),(47,'Truyện Kiều',1820,'Tác phẩm kinh điển của Nguyễn Du.',70000.00,100,500,'Available','Vietnamese',15,1,1,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.5,'17 x 24 cm',5),(48,'Bên kia đường',2001,'Truyện ngắn của Phạm Thị Hoài về cuộc sống đô thị.',65000.00,60,180,'Available','Vietnamese',16,1,2,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.25,'13 x 18 cm',3),(51,'Áo trắng',1992,'Tập truyện ngắn của Tô Hoài về tuổi trẻ và tình yêu.',80000.00,60,200,'Available','Vietnamese',6,1,5,'2024-06-04 02:59:18','2024-06-05 07:31:04',0.3,'14 x 19 cm',3),(53,'Sách 11',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-12 13:25:06','2024-06-12 13:25:06',0.3,'15x20',0),(64,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-13 09:41:02','2024-06-13 09:41:02',0.3,'15x20',0),(69,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-13 09:57:25','2024-06-13 09:57:26',0.3,'15x20',0),(78,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-14 06:23:32','2024-06-14 06:23:33',0.3,'15x20',0),(80,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-14 06:27:34','2024-06-14 06:27:35',0.3,'15x20',0),(82,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-14 06:31:44','2024-06-14 06:31:44',0.3,'15x20',0),(83,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-14 06:31:46','2024-06-14 06:31:46',0.3,'15x20',0),(84,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-14 06:34:49','2024-06-14 06:34:49',0.3,'15x20',0),(87,'Sách 12',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-14 06:40:08','2024-06-14 06:40:08',0.3,'15x20',0),(95,'Sách 100',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-15 04:09:22','2024-06-15 04:09:22',0.3,'15x20',0),(96,'Sách 100',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-15 04:11:24','2024-06-15 04:11:24',0.3,'15x20',0),(97,'Sách 100',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-15 06:53:23','2024-06-15 06:53:23',0.3,'15x20',0),(98,'Trí tuệ nhân tạo',2000,'Sách trí tuệ nhân tạo',100000.00,4,200,'Available','Tiếng Việt',22,1,14,'2024-06-15 14:50:41','2024-06-15 14:50:41',0.35,NULL,0),(99,'Trí tuệ nhân tạo',2000,'Sách trí tuệ nhân tạo',100000.00,4,200,'Available','Tiếng Việt',22,1,14,'2024-06-15 14:52:27','2024-06-15 14:52:27',0.35,NULL,0),(100,'Trí tuệ nhân tạo',2000,'Sách trí tuệ nhân tạo',100000.00,4,200,'Available','Tiếng Việt',22,1,14,'2024-06-15 14:52:44','2024-06-15 14:52:44',0.35,NULL,0),(102,'Trí tuệ nhân tạo',2000,'Sách trí tuệ nhân tạo',100000.00,4,200,'Available','Tiếng Việt',22,1,14,'2024-06-15 14:54:20','2024-06-15 14:54:20',0.35,NULL,0),(103,'Trí tuệ nhân tạo',2000,'Sách trí tuệ nhân tạo',100000.00,4,200,'Available','Tiếng Việt',22,1,14,'2024-06-15 14:54:32','2024-06-15 14:54:32',0.35,NULL,0),(104,'Sách 100',2023,'Sách 10 điểm',100000.00,10,120,'Còn hàng','Tiếng Việt',1,1,1,'2024-06-15 15:19:58','2024-06-15 15:19:58',0.3,'15x20',0),(105,'Trí tuệ nhận tạo',2000,'nguyen',10000.00,10,200,'Available','Tiếng Việt',1,1,22,'2024-06-15 15:24:45','2024-06-15 15:24:45',0.35,NULL,0),(106,'Trí tuệ nhận tạo',2000,'nguyen',10000.00,10,200,'Available','Tiếng Việt',1,1,22,'2024-06-15 15:26:25','2024-06-15 15:26:26',0.35,NULL,0),(110,'Trí tuệ nhân tạo',2005,'Sách trí tuệ nhân tạo dạy về các mô hình trí tuệ nhân tạo',10000.00,4,200,'Available','Tiếng Việt',25,26,22,'2024-06-16 15:47:17','2024-06-16 15:47:17',0.5,NULL,0),(113,'Trí tuệ',2003,'sách oke',12.00,12,200,'Available','Tiếng Việt',1,1,9,'2024-06-16 16:21:55','2024-06-16 16:21:55',0.35,NULL,0),(114,'Trí tuệ',23,'sssssssssssssss',111.00,1,123,'Available','English',10,13,12,'2024-06-16 16:46:20','2024-06-16 16:46:20',0.5,NULL,0),(115,'Công nghệ thông tin',2003,'Hải Anh',12000.00,3,200,'Available','Tiếng Việt',26,1,24,'2024-06-17 02:33:58','2024-06-17 02:33:58',0.35,NULL,0);
/*!40000 ALTER TABLE `tblbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbook_files`
--

DROP TABLE IF EXISTS `tblbook_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbook_files` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `upload_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbook_files`
--

LOCK TABLES `tblbook_files` WRITE;
/*!40000 ALTER TABLE `tblbook_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbook_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblborrowing_form`
--

DROP TABLE IF EXISTS `tblborrowing_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblborrowing_form` (
  `borrowing_form_id` int NOT NULL AUTO_INCREMENT,
  `borrowing_form_date` date DEFAULT NULL,
  `borrowing_form_type` varchar(50) DEFAULT NULL,
  `borrowing_form_deposit` decimal(10,2) DEFAULT NULL,
  `borrowing_form_due_date` date DEFAULT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`borrowing_form_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `tblborrowing_form_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`),
  CONSTRAINT `tblborrowing_form_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `tblbook` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblborrowing_form`
--

LOCK TABLES `tblborrowing_form` WRITE;
/*!40000 ALTER TABLE `tblborrowing_form` DISABLE KEYS */;
INSERT INTO `tblborrowing_form` VALUES (7,'2024-05-10','Mượn',120000.00,'2024-06-10',33,11),(8,'2024-05-15','Mượn',90000.00,'2024-06-15',34,12),(9,'2024-05-20','Mượn',110000.00,'2024-06-20',35,13),(10,'2024-05-25','Mượn',80000.00,'2024-06-25',36,14),(11,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10),(12,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10),(13,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10),(14,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10),(15,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10),(16,'2024-06-07','Mượn',100000.00,'2024-06-07',32,1),(17,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10),(18,'2024-06-07','Mượn',100000.00,'2024-06-07',32,10);
/*!40000 ALTER TABLE `tblborrowing_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategory` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_total_book` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
INSERT INTO `tblcategory` VALUES (1,'Công nghệ thông tin',26,'2024-04-26 01:00:00','2024-06-14 06:00:00'),(2,'Fantasy',3,'2024-04-25 03:30:00','2024-05-30 02:09:20'),(3,'Mystery',4,'2024-04-24 07:15:00','2024-05-30 02:09:20'),(5,'Thriller',3,'2024-04-22 02:20:00','2024-05-30 02:09:20'),(8,'Self-Help',3,'2024-04-19 03:00:00','2024-05-30 02:10:48'),(9,'Science',1,'2024-04-18 05:30:00','2024-05-30 02:11:01'),(12,'Poetry',0,'2024-04-15 02:10:00','2024-05-30 02:13:35'),(13,'Business',0,'2024-04-14 04:55:00','2024-05-30 02:13:51'),(15,'Psychology',0,'2024-04-12 01:25:00','2024-05-30 02:12:58'),(16,'Philosophy',0,'2024-04-11 03:50:00','2024-05-30 02:12:39'),(26,'Văn học Việt Nam',0,'2024-06-04 03:00:39','2024-06-04 03:30:00'),(36,'Công nghệ thông tin',0,'2024-06-18 01:56:31','2024-06-18 01:56:31'),(38,'Hải Anh',0,'2024-06-18 01:57:53','2024-06-18 01:57:53'),(39,'Hải Anh',0,'2024-06-18 01:59:14','2024-06-18 01:59:14'),(40,'Nguyễn Ngọc Hải Anh',0,'2024-06-18 02:01:22','2024-06-18 02:35:58');
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcoupon_code`
--

DROP TABLE IF EXISTS `tblcoupon_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcoupon_code` (
  `coupon_code_id` int NOT NULL,
  `book_id` int DEFAULT NULL,
  `coupon_code_count` int DEFAULT NULL,
  `coupon_code_sale_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`coupon_code_id`),
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `tblcoupon_code_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `tblbook` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcoupon_code`
--

LOCK TABLES `tblcoupon_code` WRITE;
/*!40000 ALTER TABLE `tblcoupon_code` DISABLE KEYS */;
INSERT INTO `tblcoupon_code` VALUES (1,10,10,10000.00),(2,20,15,15000.00),(3,13,20,20000.00),(4,14,25,25000.00),(5,15,30,30000.00);
/*!40000 ALTER TABLE `tblcoupon_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblimage`
--

DROP TABLE IF EXISTS `tblimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblimage` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `image_link` varchar(125) NOT NULL,
  `image_avatar` bit(1) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`image_id`),
  KEY `tblimage_ibfk_1` (`book_id`),
  CONSTRAINT `tblimage_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `tblbook` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblimage`
--

/*!40000 ALTER TABLE `tblimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpublisher`
--

DROP TABLE IF EXISTS `tblpublisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpublisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(255) DEFAULT NULL,
  `publisher_phone_number` varchar(20) DEFAULT NULL,
  `publisher_address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpublisher`
--

LOCK TABLES `tblpublisher` WRITE;
/*!40000 ALTER TABLE `tblpublisher` DISABLE KEYS */;
INSERT INTO `tblpublisher` VALUES (1,'Penguin Random House','+1234567890','123 Main Street, New York, NY','2024-04-26 01:00:00','2024-04-26 01:00:00'),(2,'HarperCollins Publishers','+1987654321','456 Broadway, San Francisco, CA','2024-04-25 03:30:00','2024-04-25 03:30:00'),(3,'Simon & Schuster','+1122334455','789 Elm Street, Los Angeles, CA','2024-04-24 07:15:00','2024-04-24 07:15:00'),(4,'Hachette Livre','+1654321876','321 Oak Avenue, Chicago, IL','2024-04-23 04:45:00','2024-04-23 04:45:00'),(5,'Macmillan Publishers','+1223344556','987 Pine Street, Boston, MA','2024-04-22 02:20:00','2024-04-22 02:20:00'),(6,'Harlequin Enterprises','+1334455667','654 Cedar Street, Seattle, WA','2024-04-21 06:10:00','2024-04-21 06:10:00'),(7,'Scholastic Corporation','+1445566778','789 Maple Avenue, Philadelphia, PA','2024-04-20 09:50:00','2024-04-20 09:50:00'),(8,'Pearson Education','+1556677889','321 Walnut Street, Miami, FL','2024-04-19 03:00:00','2024-04-19 03:00:00'),(9,'Random House','+1667788990','123 Oak Street, Houston, TX','2024-04-18 05:30:00','2024-04-18 05:30:00'),(10,'Bloomsbury Publishing','+1778899001','456 Elm Avenue, Atlanta, GA','2024-04-17 07:45:00','2024-04-17 07:45:00'),(11,'Oxford University Press','+1889900112','789 Maple Street, Denver, CO','2024-04-16 10:20:00','2024-04-16 10:20:00'),(12,'Cambridge University Press','+1990011223','321 Cedar Avenue, Dallas, TX','2024-04-15 02:10:00','2024-04-15 02:10:00'),(13,'Houghton Mifflin Harcourt','+1001122334','987 Walnut Avenue, Phoenix, AZ','2024-04-14 04:55:00','2024-04-14 04:55:00'),(14,'Wiley','+1112233445','654 Pine Avenue, Detroit, MI','2024-04-13 08:40:00','2024-04-13 08:40:00'),(15,'McGraw-Hill Education','+1223344556','789 Oak Street, Minneapolis, MN','2024-04-12 01:25:00','2024-04-12 01:25:00'),(16,'Hogan Press','+1334455667','321 Cedar Street, Salt Lake City, UT','2024-04-11 03:50:00','2024-04-11 03:50:00'),(17,'Princeton University Press','+1445566778','987 Maple Avenue, Portland, OR','2024-04-10 06:15:00','2024-04-10 06:15:00'),(18,'Yale University Press','+1556677889','654 Walnut Street, Austin, TX','2024-04-09 09:30:00','2024-04-09 09:30:00'),(19,'Harvard University Press','+1667788990','789 Pine Avenue, Nashville, TN','2024-04-08 02:40:00','2024-04-08 02:40:00'),(20,'Stanford University Press','+1778899001','321 Oak Street, Orlando, FL','2024-04-07 04:20:00','2024-04-07 04:20:00'),(21,'NXB Trẻ','0123456789','12 Nguyễn Văn Bảo, Q.Gò Vấp, TP.HCM','2024-06-04 03:00:58','2024-06-04 03:00:58'),(22,'NXB Kim Đồng','0987654321','52 Hai Bà Trưng, Q.Hoàn Kiếm, Hà Nội','2024-06-04 03:00:58','2024-06-04 03:00:58'),(23,'NXB Văn Học','0345678901','75 Nguyễn Đình Chiểu, Q.3, TP.HCM','2024-06-04 03:00:58','2024-06-04 03:00:58'),(24,'NXB Phụ Nữ','0567890123','20 Thụy Khuê, Q.Tây Hồ, Hà Nội','2024-06-04 03:00:58','2024-06-04 03:00:58'),(25,'NXB Giáo Dục','0789012345','15 Lê Lợi, Q.1, TP.HCM','2024-06-04 03:00:58','2024-06-04 03:00:58');
/*!40000 ALTER TABLE `tblpublisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreturn_slip`
--

DROP TABLE IF EXISTS `tblreturn_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblreturn_slip` (
  `return_slip_id` int NOT NULL AUTO_INCREMENT,
  `return_slip_date` date DEFAULT NULL,
  `return_slip_refund` decimal(10,2) DEFAULT NULL,
  `return_slip_late_fee` decimal(10,2) DEFAULT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `borrow_date` date DEFAULT NULL,
  `is_late` tinyint(1) DEFAULT NULL,
  `status_return` text,
  PRIMARY KEY (`return_slip_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id_idx` (`book_id`),
  CONSTRAINT `tblreturn_slip_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`user_id`),
  CONSTRAINT `tblreturn_slip_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `tblbook` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreturn_slip`
--

LOCK TABLES `tblreturn_slip` WRITE;
/*!40000 ALTER TABLE `tblreturn_slip` DISABLE KEYS */;
INSERT INTO `tblreturn_slip` VALUES (1,'2024-06-02',50000.00,20000.00,32,15,'2024-07-02',0,'ok'),(2,'2024-06-11',60000.00,15000.00,33,16,'2024-07-02',0,'ok'),(3,'2024-06-16',45000.00,10000.00,34,17,'2024-07-02',0,'ok'),(4,'2024-06-21',55000.00,25000.00,35,18,'2024-07-02',0,'ok'),(5,'2024-06-26',40000.00,5000.00,36,19,'2024-07-02',0,'ok'),(6,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn'),(7,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn'),(8,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn'),(9,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn'),(10,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn'),(11,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn'),(12,'2024-06-08',0.00,0.00,32,10,'2024-05-01',1,'Sách ổn');
/*!40000 ALTER TABLE `tblreturn_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_phone_number` varchar(20) DEFAULT NULL,
  `user_address` text,
  `user_account_name` varchar(255) DEFAULT NULL,
  `user_account_password` varchar(255) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_money` decimal(10,0) DEFAULT '0',
  `user_active` tinyint(1) DEFAULT NULL,
  `key_active` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (32,'Nguyễn Văn Bình','nguyenvanbinh.jpg','0912345678','123 Lê Lợi, Q.1, TP.HCM','admin@gmail.com','$2a$10$kLxn.wIcLpg91E4gTd3/G.Ehi3O3ovKP00hGltZhn3UZWb/jT3Xn2','ADMIN','2024-06-04 03:07:18','2024-06-11 16:47:22',500000,1,'key123'),(33,'Trần Thị Lan','tranthilan.jpg','0923456789','456 Trần Hưng Đạo, Q.5, TP.HCM','tranthilan','password456','USER','2024-06-04 03:07:18','2024-06-11 16:47:22',200000,1,'key456'),(34,'Lê Văn Minh','levanminh.jpg','0934567890','789 Điện Biên Phủ, Q.3, TP.HCM','levanminh','password789','USER','2024-06-04 03:07:18','2024-06-11 16:47:22',300000,1,'key789'),(35,'Phạm Thị Hồng','phamthihong.jpg','0945678901','101 Nguyễn Huệ, Q.1, TP.HCM','phamthihong','password012','USER','2024-06-04 03:07:18','2024-06-11 16:47:22',400000,1,'key012'),(36,'Võ Văn Nam','vovannam.jpg','0956789012','202 Lý Thường Kiệt, Q.10, TP.HCM','vovannam','password345','USER','2024-06-04 03:07:18','2024-06-11 16:47:22',150000,1,'key345'),(37,'Nguyễn Văn Bình','nguyenvanbinh.jpg','0912345678','123 Lê Lợi, Q.1, TP.HCM','nguyenvanbinh','password123','USER','2024-06-04 03:08:08','2024-06-11 16:47:22',500000,1,'key123'),(38,'Trần Thị Lan','tranthilan.jpg','0923456789','456 Trần Hưng Đạo, Q.5, TP.HCM','tranthilan','password456','USER','2024-06-04 03:08:08','2024-06-11 16:47:22',200000,1,'key456'),(39,'Lê Văn Minh','levanminh.jpg','0934567890','789 Điện Biên Phủ, Q.3, TP.HCM','levanminh','password789','USER','2024-06-04 03:08:08','2024-06-11 16:47:22',300000,1,'key789'),(40,'Phạm Thị Hồng','phamthihong.jpg','0945678901','101 Nguyễn Huệ, Q.1, TP.HCM','phamthihong','password012','USER','2024-06-04 03:08:08','2024-06-11 16:47:22',400000,1,'key012'),(41,'Võ Văn Nam','vovannam.jpg','0956789012','202 Lý Thường Kiệt, Q.10, TP.HCM','vovannam','password345','USER','2024-06-04 03:08:08','2024-06-11 16:47:22',150000,1,'key345'),(42,'Nguyễn Ngọc Hòa',NULL,NULL,NULL,'nguyenngochoa1491980@gmail.com','haianh123','USER',NULL,NULL,NULL,0,'4482'),(43,'Nguyễn Ngọc Hòa',NULL,NULL,NULL,'nguyenngochoa1980@gmail.com','haianh123','USER',NULL,NULL,NULL,0,'6797'),(44,'Nguyễn Ngọc Hòa',NULL,NULL,NULL,'nguyenngochoa190@gmail.com','$2a$10$kLxn.wIcLpg91E4gTd3/G.Ehi3O3ovKP00hGltZhn3UZWb/jT3Xn2','USER',NULL,NULL,NULL,0,'7102'),(45,'Nguyễn Ngọc Hòa',NULL,NULL,NULL,'nguyenngochoa1900@gmail.com','$2a$10$tixjCIawJO.K/ShesmF8jeSOrav0RoTnv0Hm9.t84MM00ZjpUiugi','USER',NULL,NULL,NULL,0,'7213'),(46,'Nguyễn Ngọc Hải Anh',NULL,NULL,NULL,'haianh@gmail.com','$2a$10$iqorkRiZOUxW3AYsXAZNcu.0iobdCTGI55zwWG0xPEiuUCbGW7mHy','USER',NULL,NULL,NULL,0,'6535');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19  8:01:51
