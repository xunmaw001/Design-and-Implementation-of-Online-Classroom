-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmp4905
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889702104 DEFAULT CHARSET=utf8 COMMENT='在线答疑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-01-28 02:54:25',1,1,'提问1','回复1',1),(42,'2021-01-28 02:54:25',2,2,'提问2','回复2',2),(43,'2021-01-28 02:54:25',3,3,'提问3','回复3',3),(44,'2021-01-28 02:54:25',4,4,'提问4','回复4',4),(45,'2021-01-28 02:54:25',5,5,'提问5','回复5',5),(46,'2021-01-28 02:54:25',6,6,'提问6','回复6',6),(1611805079617,'2021-01-28 03:37:59',1611804932810,NULL,'老师你好sad防守打法手打',NULL,0),(1611805130453,'2021-01-28 03:38:50',1611804932810,1,NULL,'你好，撒撒范德萨',NULL),(1611889702103,'2021-01-29 03:08:21',1611889545307,NULL,'你好',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmp4905/upload/1611804893241.jpg'),(2,'picture2','http://localhost:8080/ssmp4905/upload/1611889490073.jpg'),(3,'picture3','http://localhost:8080/ssmp4905/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixianxuexi`
--

DROP TABLE IF EXISTS `discusszaixianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889570575 DEFAULT CHARSET=utf8 COMMENT='在线学习评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixianxuexi`
--

LOCK TABLES `discusszaixianxuexi` WRITE;
/*!40000 ALTER TABLE `discusszaixianxuexi` DISABLE KEYS */;
INSERT INTO `discusszaixianxuexi` VALUES (111,'2021-01-28 02:54:25',1,1,'评论内容1','回复内容1'),(112,'2021-01-28 02:54:25',2,2,'评论内容2','回复内容2'),(113,'2021-01-28 02:54:25',3,3,'评论内容3','回复内容3'),(114,'2021-01-28 02:54:25',4,4,'评论内容4','回复内容4'),(115,'2021-01-28 02:54:25',5,5,'评论内容5','回复内容5'),(116,'2021-01-28 02:54:25',6,6,'评论内容6','回复内容6'),(1611804978684,'2021-01-28 03:36:17',1611804734341,1611804932810,'sad富士达发的富士达',NULL),(1611889570574,'2021-01-29 03:06:09',1611889278298,1611889545307,'sdf gdfsgdsg的所得税法规都是广东省',NULL);
/*!40000 ALTER TABLE `discusszaixianxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889294840 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1611804751015,'2021-01-28 03:32:30','试卷1',100,1),(1611889294839,'2021-01-29 03:01:34','试卷2',100,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889420183 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1611804785934,'2021-01-28 03:33:05',1611804751015,'试卷1','阿萨德防守打法撒旦法sad','[{\"text\":\"A.sad富士达富士达\",\"code\":\"A\"},{\"text\":\"B.士大夫手打富士达\",\"code\":\"B\"},{\"text\":\"C.士大夫手打富士达\",\"code\":\"C\"},{\"text\":\"D.士大夫手打富士达\",\"code\":\"D\"}]',1,'A','手打发电房sad',0,1),(1611804815721,'2021-01-28 03:33:35',1611804751015,'试卷1','手打富士达富士达','[{\"text\":\"A.士大夫手打富士达\",\"code\":\"A\"},{\"text\":\"B.士大夫所发生的\",\"code\":\"B\"},{\"text\":\"C.士大夫手打方式\",\"code\":\"C\"},{\"text\":\"D.撒旦法是\",\"code\":\"D\"}]',1,'A,B','手打发电房',1,1),(1611804828279,'2021-01-28 03:33:47',1611804751015,'试卷1','士大夫手打富士达','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'B','sad富士达发的f',2,1),(1611804839217,'2021-01-28 03:33:59',1611804751015,'试卷1','撒旦法士大夫撒','[]',1,'sad富士达富士达','sad富士达发的',3,1),(1611889333192,'2021-01-29 03:02:13',1611804751015,'试卷1','手打fsadf','[{\"text\":\"A.撒旦法撒旦法撒\",\"code\":\"A\"},{\"text\":\"B.防守打法士大夫是\",\"code\":\"B\"},{\"text\":\"C.士大夫撒的发生大\",\"code\":\"C\"},{\"text\":\"D.士大夫三大发生\",\"code\":\"D\"}]',2,'A','答复萨法',0,2),(1611889378096,'2021-01-29 03:02:57',1611804751015,'试卷1','sad放散阀sa','[{\"text\":\"B.撒旦法撒发撒\",\"code\":\"B\"},{\"text\":\"C.士大夫三大发生大\",\"code\":\"C\"},{\"text\":\"D.士大夫士大夫撒\",\"code\":\"D\"},{\"text\":\"A.士大夫撒的发撒的\",\"code\":\"A\"}]',2,'B,C','撒旦法撒旦法按时',1,1),(1611889398392,'2021-01-29 03:03:17',1611889294839,'试卷2','电风扇感到十分感到十分感到十分广东佛山','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'A','士大夫士大夫士大夫士大夫sa',2,1),(1611889420182,'2021-01-29 03:03:39',1611804751015,'试卷1','士大夫撒旦法sad','[]',2,'手打发','士大夫sadf',3,1);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889653548 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1611805026784,'2021-01-28 03:37:05',1611804932810,NULL,1611804751015,'试卷1',1611804785934,'阿萨德防守打法撒旦法sad','[{\"text\":\"A.sad富士达富士达\",\"code\":\"A\"},{\"text\":\"B.士大夫手打富士达\",\"code\":\"B\"},{\"text\":\"C.士大夫手打富士达\",\"code\":\"C\"},{\"text\":\"D.士大夫手打富士达\",\"code\":\"D\"}]',1,'A','手打发电房sad',1,'A'),(1611805031018,'2021-01-28 03:37:10',1611804932810,NULL,1611804751015,'试卷1',1611804839217,'撒旦法士大夫撒','[]',1,'sad富士达富士达','sad富士达发的',0,'A'),(1611805033780,'2021-01-28 03:37:13',1611804932810,NULL,1611804751015,'试卷1',1611804815721,'手打富士达富士达','[{\"text\":\"A.士大夫手打富士达\",\"code\":\"A\"},{\"text\":\"B.士大夫所发生的\",\"code\":\"B\"},{\"text\":\"C.士大夫手打方式\",\"code\":\"C\"},{\"text\":\"D.撒旦法是\",\"code\":\"D\"}]',1,'A,B','手打发电房',1,'A,B'),(1611805036234,'2021-01-28 03:37:16',1611804932810,NULL,1611804751015,'试卷1',1611804828279,'士大夫手打富士达','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'B','sad富士达发的f',0,'A'),(1611889633594,'2021-01-29 03:07:13',1611889545307,NULL,1611804751015,'试卷1',1611804785934,'阿萨德防守打法撒旦法sad','[{\"text\":\"A.sad富士达富士达\",\"code\":\"A\"},{\"text\":\"B.士大夫手打富士达\",\"code\":\"B\"},{\"text\":\"C.士大夫手打富士达\",\"code\":\"C\"},{\"text\":\"D.士大夫手打富士达\",\"code\":\"D\"}]',1,'A','手打发电房sad',1,'A'),(1611889637199,'2021-01-29 03:07:16',1611889545307,NULL,1611804751015,'试卷1',1611889378096,'sad放散阀sa','[{\"text\":\"B.撒旦法撒发撒\",\"code\":\"B\"},{\"text\":\"C.士大夫三大发生大\",\"code\":\"C\"},{\"text\":\"D.士大夫士大夫撒\",\"code\":\"D\"},{\"text\":\"A.士大夫撒的发撒的\",\"code\":\"A\"}]',2,'B,C','撒旦法撒旦法按时',0,'C'),(1611889640543,'2021-01-29 03:07:20',1611889545307,NULL,1611804751015,'试卷1',1611804839217,'撒旦法士大夫撒','[]',1,'sad富士达富士达','sad富士达发的',0,'C的双方各第三方'),(1611889643841,'2021-01-29 03:07:23',1611889545307,NULL,1611804751015,'试卷1',1611804815721,'手打富士达富士达','[{\"text\":\"A.士大夫手打富士达\",\"code\":\"A\"},{\"text\":\"B.士大夫所发生的\",\"code\":\"B\"},{\"text\":\"C.士大夫手打方式\",\"code\":\"C\"},{\"text\":\"D.撒旦法是\",\"code\":\"D\"}]',1,'A,B','手打发电房',1,'A,B'),(1611889647376,'2021-01-29 03:07:27',1611889545307,NULL,1611804751015,'试卷1',1611804828279,'士大夫手打富士达','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'B','sad富士达发的f',1,'B'),(1611889650541,'2021-01-29 03:07:30',1611889545307,NULL,1611804751015,'试卷1',1611889420182,'士大夫撒旦法sad','[]',2,'手打发','士大夫sadf',0,'B讽德诵功第三方g'),(1611889653547,'2021-01-29 03:07:32',1611889545307,NULL,1611804751015,'试卷1',1611889333192,'手打fsadf','[{\"text\":\"A.撒旦法撒旦法撒\",\"code\":\"A\"},{\"text\":\"B.防守打法士大夫是\",\"code\":\"B\"},{\"text\":\"C.士大夫撒的发生大\",\"code\":\"C\"},{\"text\":\"D.士大夫三大发生\",\"code\":\"D\"}]',2,'A','答复萨法',2,'A');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889617040 DEFAULT CHARSET=utf8 COMMENT='系统论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (51,'2021-01-28 02:54:25','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(52,'2021-01-28 02:54:25','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-01-28 02:54:25','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-01-28 02:54:25','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-01-28 02:54:25','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-01-28 02:54:25','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1611805003840,'2021-01-28 03:36:43','s答复手打富士达发电房sad','<p>请输入内容撒旦法手打防守打法sad富士达</p>',0,1611804932810,'123','开放'),(1611805013556,'2021-01-28 03:36:52',NULL,'士大夫手打发的',51,1611804932810,'123',NULL),(1611889605351,'2021-01-29 03:06:44','单方事故第三方公司的风格电风扇','<p>请输入内容个电风扇 公司的风格第三方</p>',0,1611889545307,'234','开放'),(1611889617039,'2021-01-29 03:06:56',NULL,'森岛帆高单方事故第三方',1611805003840,1611889545307,'234',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889210135 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (21,'2021-01-28 02:54:25','课程类型1'),(22,'2021-01-28 02:54:25','课程类型2'),(23,'2021-01-28 02:54:25','课程类型3'),(24,'2021-01-28 02:54:25','课程类型4'),(25,'2021-01-28 02:54:25','课程类型5'),(26,'2021-01-28 02:54:25','课程类型6'),(1611804626891,'2021-01-28 03:30:26','课程类型7'),(1611889210134,'2021-01-29 03:00:10','课程类型8');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889464275 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-01-28 02:54:25','标题1','简介1','http://localhost:8080/ssmp4905/upload/news_picture1.jpg','内容1'),(102,'2021-01-28 02:54:25','标题2','简介2','http://localhost:8080/ssmp4905/upload/news_picture2.jpg','内容2'),(103,'2021-01-28 02:54:25','标题3','简介3','http://localhost:8080/ssmp4905/upload/news_picture3.jpg','内容3'),(104,'2021-01-28 02:54:25','标题4','简介4','http://localhost:8080/ssmp4905/upload/news_picture4.jpg','内容4'),(105,'2021-01-28 02:54:25','标题5','简介5','http://localhost:8080/ssmp4905/upload/news_picture5.jpg','内容5'),(106,'2021-01-28 02:54:25','标题6','简介6','http://localhost:8080/ssmp4905/upload/news_picture6.jpg','内容6'),(1611804865477,'2021-01-28 03:34:24','士大夫手打富士达富士达','士大夫手打富士达富士达','http://localhost:8080/ssmp4905/upload/1611804862805.jpg','<p>士大夫士大夫撒旦法撒旦法sad富士达</p>'),(1611889464274,'2021-01-29 03:04:23','士大夫士大夫撒法撒旦','手打防守打法萨法','http://localhost:8080/ssmp4905/upload/1611889462070.jpg','<p>撒旦法sad发的发的</p><p>sad发的发生</p><p><br></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889575514 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611804968043,'2021-01-28 03:36:07',1611804932810,1611804734341,'zaixianxuexi','手打广东佛山广泛地','http://localhost:8080/ssmp4905/upload/1611804658186.jpg'),(1611889575513,'2021-01-29 03:06:15',1611889545307,1611889278298,'zaixianxuexi','发过火发过火 ','http://localhost:8080/ssmp4905/upload/1611889235489.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','t5757e37mm0exi7kvibuh5t5d3pvmpcl','2021-01-28 03:30:08','2021-01-29 04:08:54'),(2,1611804932810,'123','yonghu','用户','nt55e2s07033f4dddtot6dmdpza3oguk','2021-01-28 03:35:39','2021-01-28 04:35:40'),(3,1611889545307,'234','yonghu','用户','0v9esyeblqe3z5av52cda2azthm1gdr9','2021-01-29 03:05:53','2021-01-29 04:05:54');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-28 02:54:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889545308 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-28 02:54:25','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-01-28 02:54:25','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-01-28 02:54:25','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-01-28 02:54:25','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-01-28 02:54:25','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-01-28 02:54:25','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','440300199606060006'),(1611804932810,'2021-01-28 03:35:32','123','123','都是','21','男','13455667788','456546@qq.com','112233445566778899'),(1611889545307,'2021-01-29 03:05:45','234','234','士大夫','21',NULL,'13455667788','4564564@qq.com','112233445566778899');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianxuexi`
--

DROP TABLE IF EXISTS `zaixianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `xuexiziliao` varchar(200) DEFAULT NULL COMMENT '学习资料',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengliangdian` longtext COMMENT '课程亮点',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611889278299 DEFAULT CHARSET=utf8 COMMENT='在线学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianxuexi`
--

LOCK TABLES `zaixianxuexi` WRITE;
/*!40000 ALTER TABLE `zaixianxuexi` DISABLE KEYS */;
INSERT INTO `zaixianxuexi` VALUES (31,'2021-01-28 02:54:25','课程编号1','课程名称1','课程类型1','http://localhost:8080/ssmp4905/upload/zaixianxuexi_tupian1.jpg','','','课程内容1','课程亮点1','课程介绍1',1,1),(32,'2021-01-28 02:54:25','课程编号2','课程名称2','课程类型2','http://localhost:8080/ssmp4905/upload/zaixianxuexi_tupian2.jpg','','','课程内容2','课程亮点2','课程介绍2',2,2),(33,'2021-01-28 02:54:25','课程编号3','课程名称3','课程类型3','http://localhost:8080/ssmp4905/upload/zaixianxuexi_tupian3.jpg','','','课程内容3','课程亮点3','课程介绍3',3,3),(34,'2021-01-28 02:54:25','课程编号4','课程名称4','课程类型4','http://localhost:8080/ssmp4905/upload/zaixianxuexi_tupian4.jpg','','','课程内容4','课程亮点4','课程介绍4',4,4),(35,'2021-01-28 02:54:25','课程编号5','课程名称5','课程类型5','http://localhost:8080/ssmp4905/upload/zaixianxuexi_tupian5.jpg','','','课程内容5','课程亮点5','课程介绍5',5,5),(36,'2021-01-28 02:54:25','课程编号6','课程名称6','课程类型6','http://localhost:8080/ssmp4905/upload/zaixianxuexi_tupian6.jpg','','','课程内容6','课程亮点6','课程介绍6',6,6),(1611804734341,'2021-01-28 03:32:13','1611804746127','手打广东佛山广泛地','课程类型7','http://localhost:8080/ssmp4905/upload/1611804658186.jpg','http://localhost:8080/ssmp4905/upload/1611804697281.mp4','http://localhost:8080/ssmp4905/upload/1611804686361.docx','割发代首个地方官讽德诵功第三方g','发电工单方事故单方事故第三方广东佛山','<p>第三方感到十分广东佛山更电风扇第三方广东佛山感到十分</p><p>第三方广东佛山感到十分广东佛山广东佛山g单方事故电风扇感到十分</p><p><img src=\"http://localhost:8080/ssmp4905/upload/1611804732963.jpg\"></p>',1,1),(1611889278298,'2021-01-29 03:01:17','1611889331226','发过火发过火 ','课程类型7','http://localhost:8080/ssmp4905/upload/1611889235489.jpg','http://localhost:8080/ssmp4905/upload/1611889248960.mp4','http://localhost:8080/ssmp4905/upload/1611889259069.docx','电风扇广东佛山告诉对方感到十分广东佛山感到十分','fds 感到十分感到十分感到十分g','<p>电风扇感到十分感到十分感到十分gd</p><p>大师法规十多个森岛帆高第三个大师法规单方事故大师法规第三方</p><p>第三方广东省法规大师法规大师法规第三个大师法规都是</p><p>大师法规大师法规第三方让他羊肉汤遇突发的 </p><p><br></p>',1,1);
/*!40000 ALTER TABLE `zaixianxuexi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29 14:50:59
