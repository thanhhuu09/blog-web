-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int NOT NULL,
  `cat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (25,'Tại sao tôi nên sử dụng kỹ thuật Pomodoro để tăng năng suất?','<p>Nếu bạn đang cảm thấy mệt mỏi và thiếu động lực trong công việc hoặc học tập, hãy thử sử dụng kỹ thuật Pomodoro. Kỹ thuật này sử dụng phương pháp chia nhỏ công việc thành các đơn vị thời gian ngắn, thường là 25 phút, được gọi là \"pomodoro\". Sau mỗi pomodoro, bạn nên nghỉ ngơi trong 5 phút trước khi tiếp tục làm việc.</p><p><br></p><p>Tại sao lại phải làm như vậy? Bởi vì khi làm việc trong khoảng thời gian ngắn như vậy, bạn sẽ tập trung tối đa và tránh bị phân tâm. Đồng thời, việc có thời gian nghỉ ngơi sau mỗi pomodoro cũng giúp bạn tập trung hơn và giảm stress.</p><p><br></p><p>Nếu bạn muốn thử kỹ thuật Pomodoro, hãy tải ứng dụng hoặc sử dụng bộ đếm thời gian để theo dõi thời gian của mình. Hãy bắt đầu với một số pomodoro nhỏ và tăng dần số lượng pomodoro khi bạn cảm thấy thoải mái. Kỹ thuật Pomodoro không chỉ giúp bạn tăng năng suất mà còn giúp bạn tập trung và quản lý thời gian tốt hơn.</p>','1684245870734pexels-karolina-grabowska-4210653.jpg','2023-05-16 21:04:30',17,'science'),(28,'Công nghệ giúp tôi quản lý thời gian hiệu quả hơn','<p>Ứng dụng quản lý thời gian: Có rất nhiều ứng dụng quản lý thời gian trên thị trường như<u> Trello, Asana, Todoist</u>, và nhiều hơn nữa. Chúng giúp bạn tổ chức và quản lý công việc, lịch trình, và các nhiệm vụ khác. Với các tính năng như nhắc nhở, lịch trình, và đánh giá hiệu suất, chúng giúp bạn tận dụng thời gian hiệu quả hơn.</p><ol><li>Trình duyệt web: Các trình duyệt web như Google Chrome, Firefox, và Safari cung cấp nhiều tiện ích giúp bạn quản lý thời gian. Chẳng hạn như các tiện ích mở rộng như RescueTime, StayFocusd, và Forest, chúng giúp bạn kiểm soát thói quen lướt web không cần thiết và giúp bạn tập trung hơn vào công việc.</li><li>Ứng dụng theo dõi hoạt động: Các ứng dụng theo dõi hoạt động như Apple Health, Google Fit, và RescueTime giúp bạn theo dõi hoạt động của mình và đề xuất các cải tiến để tăng cường sức khỏe và hiệu suất.</li></ol>','1684247902491pexels-thisisengineering-3913025.jpg','2023-05-16 21:32:28',17,'technology'),(29,'Nghệ thuật giúp tôi thư giãn và tìm lại cân bằng trong cuộc sống','<p>Cuộc sống hiện đại với sự bận rộn và áp lực đôi khi khiến chúng ta cảm thấy mệt mỏi và căng thẳng. Để giải tỏa stress và tìm lại cân bằng trong cuộc sống, nghệ thuật là một lựa chọn tuyệt vời. Dưới đây là những cách mà nghệ thuật giúp tôi thư giãn và tìm lại cân bằng.</p><ol><li>Vẽ và Tô màu: Vẽ và tô màu là những hoạt động tuyệt vời để giảm stress và thư giãn. Bằng cách tập trung vào việc tạo ra một bức tranh đẹp hoặc tô màu cho một hình ảnh, chúng ta có thể giảm căng thẳng và tìm lại sự cân bằng trong cuộc sống.</li><li>Nghe nhạc: Nhạc là một nghệ thuật có thể giúp giảm stress và thư giãn. Bằng cách nghe nhạc yêu thích, chúng ta có thể giảm căng thẳng và tìm lại sự cân bằng trong cuộc sống.</li><li>Đọc sách và xem phim: Đọc sách và xem phim là những hoạt động giúp ta trốn thoát khỏi thế giới xung quanh và tìm lại sự bình yên. Những câu chuyện và những hình ảnh trong sách và phim giúp ta thư giãn và tìm lại sự cân bằng.</li></ol><p><br></p>','1684248741710pexels-colon-freld-2373201.jpg','2023-05-16 21:52:21',17,'art');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 21:59:50
