-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `billno` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_name` text DEFAULT NULL,
  `Doctor_name` text DEFAULT NULL,
  `Datetime` datetime DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `patientid` int(11) DEFAULT NULL,
  PRIMARY KEY (`billno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'Sushma','Dr.Mandar','2020-10-15 12:24:01',900,4),(2,'Abhishek','Dr.Vaishali','2020-11-21 20:09:21',1500,1),(3,'Dipesh','Dr.Asmita','2020-11-25 09:10:15',2000,2),(4,'Pooja','Dr.Amit','2020-12-10 15:01:30',8000,5),(5,'Rupesh','Dr.Vishal','2020-12-21 01:01:10',6000,3);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `doctorid` int(11) DEFAULT NULL,
  `doctor_name` text DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `Gender` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Dr.Manish','Immunologists','Male'),(2,'Dr.Sanket','Cardiologist','Male'),(3,'Dr.Kishori','Dermatologists','Female'),(4,'Dr.Poonam','Endocrinologists','Female'),(5,'Dr.Mandar','Gastroenterologists','Male'),(6,'Dr.Vaishali','Endocrinologists','Female'),(7,'Dr.Vishal','Hematologists','Male'),(8,'Dr.Amit','Infectious Disease Specialists','Male'),(9,'Dr.Asmita','Internists','Female'),(10,'Dr.Sachin','Neurologists','Male'),(11,'Dr.Anjali','Gynecologists','Female'),(12,'Dr.Akshay','Ophthalmologists','Male'),(13,'Dr.Swati','Dentist','Female'),(14,'Dr.Sandeep','Pathologist','Male'),(15,'Dr.Kushal','Psychiatrists','Male'),(16,'Dr.Sanjeet','Plastic Surgeons','Male'),(17,'Dr.Dinesh','Radiologists','Male');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inpatient`
--

DROP TABLE IF EXISTS `inpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inpatient` (
  `Patientid` int(11) NOT NULL,
  `Room_no` int(11) DEFAULT NULL,
  `Date_of_adm` date DEFAULT NULL,
  `Advance` int(11) DEFAULT NULL,
  `Lab_no` int(11) DEFAULT NULL,
  `date_of_dis` date DEFAULT NULL,
  PRIMARY KEY (`Patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inpatient`
--

LOCK TABLES `inpatient` WRITE;
/*!40000 ALTER TABLE `inpatient` DISABLE KEYS */;
INSERT INTO `inpatient` VALUES (1,4,'2021-06-15',500,4,'2022-01-16'),(2,3,'2021-07-22',1000,6,'2022-01-08'),(3,1,'2021-08-10',1000,3,'2022-02-25'),(4,5,'2021-07-29',1000,2,'2022-02-16'),(5,2,'2021-09-14',500,1,'2022-02-18');
/*!40000 ALTER TABLE `inpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab` (
  `Labno` int(11) NOT NULL,
  `Patient_id` int(11) DEFAULT NULL,
  `Doctorid` int(11) DEFAULT NULL,
  `Category` text DEFAULT NULL,
  `Patient_type` text DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,3,7,'Hematology','Anemia',1500),(2,5,8,'Microbiology','T.B.',1600),(2,4,5,'Microbiology','Ulcer',1600),(1,1,6,'Hematology','Diabetes',1500),(2,2,9,'Microbiology','Cancer',1600);
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outpatient` (
  `Patient_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Lab_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatient`
--

LOCK TABLES `outpatient` WRITE;
/*!40000 ALTER TABLE `outpatient` DISABLE KEYS */;
INSERT INTO `outpatient` VALUES (11,'2021-10-15',5),(12,'2021-11-30',7),(13,'2021-11-25',5),(14,'2021-12-20',7),(15,'2021-12-26',5);
/*!40000 ALTER TABLE `outpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_diagnosis`
--

DROP TABLE IF EXISTS `pat_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_diagnosis` (
  `DiagNo` int(11) DEFAULT NULL,
  `Diag_details` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `Diag_Datetime` datetime DEFAULT NULL,
  `Other` text DEFAULT NULL,
  `pat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_diagnosis`
--

LOCK TABLES `pat_diagnosis` WRITE;
/*!40000 ALTER TABLE `pat_diagnosis` DISABLE KEYS */;
INSERT INTO `pat_diagnosis` VALUES (1,'Anemia','Serious','2022-01-20 17:29:31','Admit',3),(2,'Diabetes','well','2022-01-27 06:05:15','medicine',1),(3,'Ulcer','well','2022-01-19 08:12:18','noadmit',4),(4,'T.B.','Serious','2022-01-25 10:22:15','Admit',5),(5,'Cancer','Serious','2022-01-28 03:16:19','Admit',2);
/*!40000 ALTER TABLE `pat_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `Patient_id` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone_No` text DEFAULT NULL,
  `Disease` varchar(20) DEFAULT NULL,
  `Doctor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Abhishek',25,'Male','Mumbai','8964786654','Diabetes',6),(2,'Dipesh',32,'Male','Mumbai','9564517842','Cancer',9),(3,'Rupesh',49,'Male','Pune','6123759485','Anemia',7),(4,'Sushma',38,'Female','ratnagiri','8524613741','Ulcer',5),(5,'Pooja',46,'Female','Nashik','7541236489','T.B.',8);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `room_no` int(11) NOT NULL,
  `room_type` text DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Twin sharing room',3),(2,'suite room',5),(3,'single room',2),(4,'single room',1),(5,'Deluxe room',4);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `Staf_id` int(11) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Dept_name` text DEFAULT NULL,
  `Gender` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `doctorid` int(11) DEFAULT NULL,
  `phone_no` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Sarvesh','OPD','Male','Mumbai',13,'7738818493'),(35,'Kamal','Heart','Female','Pune',2,'6354782123'),(12,'Komal','Lab','Female','Mumbai',7,'7456321547'),(5,'Deepak','Paramedical','Male','Kolhapur',14,'881245678'),(41,'Prashant','Pharmacy','Male','Satara',9,'8546214563'),(30,'Prathmesh','Radiology department','Male','Nagpur',17,'8451236547'),(19,'Samiksha','Surgical Department','Female','Nagpur',16,'8451236547'),(25,'Suman','Inpatient Service','Female','Ratnagiri',15,'88974564447'),(21,'Megha','Operation Theatre','Female','Chennai',8,'6584556651');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 13:03:48
