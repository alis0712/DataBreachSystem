-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema datadb
--

CREATE DATABASE IF NOT EXISTS datadb;
USE datadb;

--
-- Definition of table `agentrequest`
--

DROP TABLE IF EXISTS `agentrequest`;
CREATE TABLE `agentrequest` (
  `idAgentRequest` int(10) unsigned NOT NULL auto_increment,
  `description` varchar(45) NOT NULL,
  `ditributorid` int(10) unsigned NOT NULL,
  `udate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `sentFromIp` varchar(45) NOT NULL,
  `agentId` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL default '-1',
  PRIMARY KEY  (`idAgentRequest`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agentrequest`
--

/*!40000 ALTER TABLE `agentrequest` DISABLE KEYS */;
INSERT INTO `agentrequest` (`idAgentRequest`,`description`,`ditributorid`,`udate`,`sentFromIp`,`agentId`,`status`) VALUES 
 (1,'Need Data for Baltimore region',144,'2020-12-04 13:37:10','192.168.0.199',143,-1),
 (2,'Need Data for Baltimore region',143,'2020-12-04 14:10:57','192.168.0.199',143,1),
 (3,'',145,'2020-12-04 23:29:13','90-E6-BA-BA-38-9B',143,-1),
 (4,'Need Data',145,'2020-12-04 00:55:00','90-E6-BA-BA-38-9B',146,-1);
/*!40000 ALTER TABLE `agentrequest` ENABLE KEYS */;


--
-- Definition of table `backupinfo`
--

DROP TABLE IF EXISTS `backupinfo`;
CREATE TABLE `backupinfo` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Sender` int(10) unsigned NOT NULL,
  `FolderPath` varchar(255) default NULL,
  `TotalSize` varchar(10) default NULL,
  `Receiver` int(10) unsigned default NULL,
  `SaveTimestamp` datetime default NULL,
  `encryptionKey` varchar(100) NOT NULL,
  `originalPath` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  USING BTREE (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backupinfo`
--

/*!40000 ALTER TABLE `backupinfo` DISABLE KEYS */;
INSERT INTO `backupinfo` (`ID`,`Sender`,`FolderPath`,`TotalSize`,`Receiver`,`SaveTimestamp`,`encryptionKey`,`originalPath`,`description`) VALUES 
 (79,143,'C:/Users/syeda/OneDrive - Bowie State/COSC 565/Project/Archives/test','8920',143,'2020-12-04 04:53:17','DDDAB61613B70AF79BE0B459FA9F388C','test','C:/Users/syeda/OneDrive - Bowie State/COSC 565/Project/Archives/test');
/*!40000 ALTER TABLE `backupinfo` ENABLE KEYS */;


--
-- Definition of table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `rollId` int(10) unsigned NOT NULL auto_increment,
  `rollDesc` varchar(255) NOT NULL,
  PRIMARY KEY  (`rollId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`rollId`,`rollDesc`) VALUES 
 (1,'Distributor'),
 (2,'Agent'),
 (3,'Admin');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `senderreceiver`
--

DROP TABLE IF EXISTS `senderreceiver`;
CREATE TABLE `senderreceiver` (
  `Sender` int(10) unsigned NOT NULL,
  `Receiver` int(10) unsigned NOT NULL,
  `ARFlag` tinyint(3) unsigned default NULL,
  `RequestTimestamp` datetime NOT NULL,
  `ARTimestamp` datetime default NULL,
  `LogID` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`LogID`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `senderreceiver`
--

/*!40000 ALTER TABLE `senderreceiver` DISABLE KEYS */;
INSERT INTO `senderreceiver` (`Sender`,`Receiver`,`ARFlag`,`RequestTimestamp`,`ARTimestamp`,`LogID`) VALUES 
 (131,135,1,'2020-12-02 13:41:59','2020-12-02 13:42:12',51),
 (135,131,1,'2020-12-02 13:41:20','2020-12-02 13:41:42',50);
/*!40000 ALTER TABLE `senderreceiver` ENABLE KEYS */;


--
-- Definition of table `trackdownloads`
--

DROP TABLE IF EXISTS `trackdownloads`;
CREATE TABLE `trackdownloads` (
  `idtrackdownloads` int(10) unsigned NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL,
  `fileid` int(10) unsigned NOT NULL,
  `ipaddress` varchar(45) NOT NULL,
  `downloadtimestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`idtrackdownloads`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trackdownloads`
--

/*!40000 ALTER TABLE `trackdownloads` DISABLE KEYS */;
INSERT INTO `trackdownloads` (`idtrackdownloads`,`userid`,`fileid`,`ipaddress`,`downloadtimestamp`) VALUES 
 (1,143,86,'192.168.0.199','2020-12-02 13:38:32'),
 (2,143,87,'192.168.0.199','2020-12-02 14:11:09'),
 (3,143,86,'90-E6-BA-BA-38-9B','2020-12-02 00:45:35'),
 (4,147,97,'90-E6-BA-BA-38-9B','2020-12-02 01:04:06');
/*!40000 ALTER TABLE `trackdownloads` ENABLE KEYS */;


--
-- Definition of table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `LoginId` varchar(35) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserId` int(10) unsigned NOT NULL auto_increment,
  `FName` varchar(35) NOT NULL,
  `LName` varchar(35) NOT NULL,
  `IPAddress` varchar(30) NOT NULL,
  `CellNumber` varchar(15) NOT NULL,
  `EmailAddress` varchar(45) NOT NULL,
  `ActiveFlag` tinyint(1) NOT NULL default '2',
  `LogStatus` varchar(45) NOT NULL default '0',
  `LogOnTime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LogOffTime` timestamp NOT NULL default '2020-12-02 05:54:00',
  `rollId` int(10) unsigned default '1',
  `city` varchar(45) default NULL,
  `zipcode` varchar(45) default NULL,
  `changepassword` timestamp NOT NULL default '2020-12-02 05:54:00',
  PRIMARY KEY  (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `userinfo`
--

/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` (`LoginId`,`UserPassword`,`UserId`,`FName`,`LName`,`IPAddress`,`CellNumber`,`EmailAddress`,`ActiveFlag`,`LogStatus`,`LogOnTime`,`LogOffTime`,`rollId`,`city`,`zipcode`,`changepassword`) VALUES 
 ('admin','12345',143,'admin','admin','192.168.0.199','12345678910','admin@gmail.com',3,'Online','2020-12-02 03:24:59','2020-12-02 09:59:47','3','Baltimore','12345','2020-12-02 03:24:59'),
 ('dist','12345',146,'dist','dist','90-E6-BA-BA-38-9B','1234567890','dist@gmail.com',1,'Online','2020-12-05 03:31:55','2020-04-14 00:51:59', '1','Baltimore','12345','2020-12-02 03:31:55'),
 ('agent2','12345',147,'agent2','agent2','90-E6-BA-BA-38-9B','1234567898','a@gmail.com',2,'Online','2020-04-14 00:53:25','2020-04-14 00:52:31','2','Baltimore','12345', '2020-12-02 05:54:00');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
