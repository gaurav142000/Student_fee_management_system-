/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.5-10.3.16-MariaDB : Database - fee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`fee` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fee`;

/*Table structure for table `accountant` */

DROP TABLE IF EXISTS `accountant`;

CREATE TABLE `accountant` (
  `emp_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accountant` */

insert  into `accountant`(`emp_no`,`name`,`designation`,`contact`,`email`) values ('A124B2','Payal lakhotia','Accountant','24548453','p@gmail.com');

/*Table structure for table `admin_data` */

DROP TABLE IF EXISTS `admin_data`;

CREATE TABLE `admin_data` (
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_data` */

insert  into `admin_data`(`name`,`address`,`contact`,`email`) values ('gaurav bhardwaj','71 gopal vihar 2 Police Line','8949336757','gaurav233@gmail.com');

/*Table structure for table `login_data` */

DROP TABLE IF EXISTS `login_data`;

CREATE TABLE `login_data` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_data` */

insert  into `login_data`(`email`,`password`,`usertype`) values ('gaurav233@gmail.com','203','admin'),('p@gmail.com','103','accountant');

/*Table structure for table `photo_data` */

DROP TABLE IF EXISTS `photo_data`;

CREATE TABLE `photo_data` (
  `email` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `photo_data` */

insert  into `photo_data`(`email`,`photo`) values ('gaurav233@gmail.com','1649388576.jpeg'),('gaurav233@gmail.com','1649388593.jpeg'),('gaurav233@gmail.com','1649388609.jpeg'),('gaurav233@gmail.com','1649388613.jpeg'),('gaurav233@gmail.com','1649388643.jpeg'),('p@gmail.com','1649388980.jpg'),('p@gmail.com','1649388997.jpg'),('p@gmail.com','1649389214.jpg'),('p@gmail.com','1649389261.jpg');

/*Table structure for table `st_course` */

DROP TABLE IF EXISTS `st_course`;

CREATE TABLE `st_course` (
  `course_id` varchar(100) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_course` */

insert  into `st_course`(`course_id`,`reg_no`,`course`,`fee`,`remark`) values ('c001','19/N/001','C Programming',3500,'Fee  deposited in  installments'),('c002','19/N/003','DSA',7000,'Fee deposited in installments'),('p001','19/N/002','Python',5000,'Fee deposited in installments'),('p002','19/N/004','Python',5000,'Fee deposited in installments');

/*Table structure for table `st_data` */

DROP TABLE IF EXISTS `st_data`;

CREATE TABLE `st_data` (
  `reg_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_data` */

insert  into `st_data`(`reg_no`,`name`,`address`,`contact`,`email`) values ('19/N/001','Aman','kunhari','9874563210','aman@gmail.com'),('19/N/002','Bhawna singh','Khelri Phatak','8945623485','bhawna@gmail.com'),('19/N/003','Manish Sharma','Thermal Colony','4545454482','manish@gmail.com'),('19/N/004','Lakshya Laddha','Rk Puram','8949336753','lakshya@gmail.com ');

/*Table structure for table `st_fee` */

DROP TABLE IF EXISTS `st_fee`;

CREATE TABLE `st_fee` (
  `tno` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(100) DEFAULT NULL,
  `course_id` varchar(100) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `dep_date` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `st_fee` */

insert  into `st_fee`(`tno`,`reg_no`,`course_id`,`amt`,`dep_date`,`remark`) values (1,'19/N/001','c001',1500,'08/04/2022','2000 yet to be deposited'),(2,'19/N/002','p001',1000,'07/04/2022','4000'),(3,'19/N/003','c002',1500,'04/042022',''),(4,'19/N/004','p002',3000,'05/04/2022','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
