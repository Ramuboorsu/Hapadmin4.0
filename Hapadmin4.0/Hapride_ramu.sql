-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-glo02.eigbox.net
-- Generation Time: Apr 24, 2019 at 02:17 AM
-- Server version: 5.6.41
-- PHP Version: 4.4.9
-- 
-- Database: `hapride`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `Govt_proofs`
-- 

CREATE TABLE `Govt_proofs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `list` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `Govt_proofs`
-- 

INSERT INTO `Govt_proofs` VALUES (1, 'Aadhar Card');
INSERT INTO `Govt_proofs` VALUES (2, 'PAN Card');
INSERT INTO `Govt_proofs` VALUES (3, 'Voter Card');
INSERT INTO `Govt_proofs` VALUES (4, 'Others');

-- --------------------------------------------------------

-- 
-- Table structure for table `agentsRegistration`
-- 

CREATE TABLE `agentsRegistration` (
  `S_No` int(255) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `smartPhone` varchar(10) NOT NULL,
  `bike` varchar(10) NOT NULL,
  `requestedRole` varchar(20) NOT NULL,
  `assignedRole` varchar(20) NOT NULL,
  `referredBy` varchar(50) NOT NULL,
  `documentType` varchar(20) NOT NULL,
  `documentLocation` varchar(250) NOT NULL,
  `s_id` varchar(10) NOT NULL DEFAULT '-1',
  `workingStatus` varchar(10) NOT NULL,
  `createdBy` varchar(10) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `verified` varchar(20) NOT NULL DEFAULT 'Pending',
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`mobileNumber`),
  UNIQUE KEY `S_No` (`S_No`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

-- 
-- Dumping data for table `agentsRegistration`
-- 

INSERT INTO `agentsRegistration` VALUES (38, '', '', '', '', '', '', '', '', '', '', '', 'http://183.82.120.3:90/hapride/uploads/agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (71, '', 'rishitha', 'rishi', '6534216483', 'INTER', 'no', 'no', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (46, '', 'Uuuyy', 'Jdhd', '6673575885', 'Graduate', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (43, '', 'Uuuru', 'Kfkkf', '6766767527', 'INTER', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (47, '', 'Amith', 'Amith', '6767575588', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (67, '', 'Tttte', 'Rjjrjtj', '6767675475', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (32, '', 'Vineeth', 'Vinni', '7008888558', 'Graduate', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (31, '', 'Jagadeesh', 'Pojhhj', '7095311956', 'Graduate', 'yes', 'yes', 'agent', '', '', '', 'http://183.82.120.3:90/hapride/uploads/7095311956agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (10, 'A9', 'Sanjeev Kumar', 'Dhanana', '7325963585', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'PAN Card', 'http://183.82.120.3:90/hapride/uploads/7325963585agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (17, 'A15', 'Gundabattula', 'sriram', '7382957419', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/7382957419agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (44, '', 'Uuuytf', 'Ooooo', '7465628888', 'Others', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (80, '', 'Jfjfu', 'L', '7667575757', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (37, '', 'Helloo', 'Bdbdb', '7676755754', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (16, 'A14', 'Amith', 'Thodupounoori', '7702942012', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Voter Card', '', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (50, '', 'gibran', 'gibran', '7878787878', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (73, '', 'shshdh', 'hddhh', '7887876764', 'Graduate', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (66, '', 'Kkkjdjfjcj', 'Lllll', '7893113119', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (33, '', 'jagashh', 'hsshhs', '7997979799', 'Graduate', 'yes', 'yes', 'agent', '', '', '', 'http://183.82.120.3:90/hapride/uploads/7997979799agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (7, 'A6', 'Subhash', 'Katturi', '8008108137', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Aadhar Card', 'http://183.82.120.3:90/hapride/uploads/8008108137agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (24, 'A20', 'saiteja', 'mogatadakala', '8019562363', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/8019562363agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (9, 'A8', 'sreenu', 'nenavath', '8096141623', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Aadhar Card', 'http://183.82.120.3:90/hapride/uploads/8096141623agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (6, 'A5', 'Tulasi rao', 'Thonangi', '8121198994', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Aadhar Card', 'http://183.82.120.3:90/hapride/uploads/8121198994agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (15, 'A13', 'Srinivasa', 'Reddy', '8341569818', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Voter Card', 'http://183.82.120.3:90/hapride/uploads/8341569818agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (63, '', 'Hehdhe', 'Yheeh', '8484849544', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (45, '', 'Iiiii', 'Ogoo', '8558575755', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (64, '', 'fdsfdsf', 'ewffrewfre', '8576857869', 'INTER', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/8576857869agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (61, '', 'Yyfhfuf', 'Hyffyfyf', '8767655828', 'SSC', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/8767655828agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (62, '', 'Gyxgffu', 'Cyyfyfy', '8788777886', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (30, '', 'Sjjsjdjd', 'Ususud', '8875558885', 'Graduate', 'yes', 'yes', 'agent', '', '', '', 'http://183.82.120.3:90/hapride/uploads/8875558885agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (58, '', 'Rdrtfggy', 'Tttt', '8885558888', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (25, 'A21', 'ganesh', 'medidi', '8886214466', 'Graduate', 'yes', 'yes', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/8886214466agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (18, 'A16', 'Sethu', 'Kumar', '8886257181', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/8886257181agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (19, 'A17', 'Rajesh', 'chukkala', '8886478064', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'PAN Card', '', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (12, 'A11', 'Mahesh ', 'Reddy', '8978687964', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADCAC', 'PAN Card', 'http://183.82.120.3:90/hapride/uploads/8978687964agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (72, '', 'sadhgt', 'ygfyt', '8979787998', 'INTER', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/8979787998agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (11, 'A10', 'Sunil', 'Kumar', '9010889080', 'Graduate', 'yes', 'yes', 'agent', 'Agent', 'CADRAC', 'Aadhar Card', 'http://183.82.120.3:90/hapride/uploads/9010889080agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (5, 'A4', 'harsha', 'bhogaraju', '9052066779', 'Graduate', 'yes', 'yes', 'agent', 'Agent', 'CADRAC', 'Voter Card', '', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (13, 'A12', 'Ramachandra', 'Kotoju', '9399925333', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'PAN Card', 'http://183.82.120.3:90/hapride/uploads/9399925333agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (79, '', 'rishitha', 'soodireddy', '9438589435', 'Graduate', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/9438589435agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (74, '', 'hshshs', 'shehs', '9464664466', 'Graduate', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (3, 'A2', 'Chiranjeevi ', 'mudunuru', '9502715753', 'Graduate', 'yes', 'yes', 'agent', 'Agent', 'CADRAC', 'PAN Card', '', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (55, '', 'Ggcyfyfy', 'Ftfftyf', '9555555555', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (1, 'A1', 'Vishnu', 'Vardhan', '9642992503', 'Graduate', 'yes', 'yes', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/9642992503agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (48, '', 'Vvvv', 'Vvvvv', '9655885355', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (53, '', 'Guudddd', 'ttujhs', '9685755655', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (52, '', 'Naveeb', 'Udhd', '9686588555', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (76, '', 'gsgsgs', 'hdhdhd', '9696969696', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (4, 'A3', 'Santhosh', 'Panjala', '9700998829', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'PAN Card', '', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (68, '', 'vineetha', 'lllll', '9834873687', 'INTER', 'yes', 'yes', 'agent', '', '888', 'PAN Card', 'http://toobworks.com/hap/uploads/9834873687agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (70, '', 'amith', 'tyrrt', '9848775464', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (57, '', 'Ytfgggg', 'Fttygtg', '9852555552', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (56, '', 'Hogg gg', 'Gygugy', '9855555522', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (60, '', 'Ggffty', 'Ftyyy', '9855566654', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (75, '', 'santhosh', 'parfft', '9858568588', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (23, 'A19', 'Raghavender Reddy', 'Bandari', '9866918643', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Aadhar Card', 'http://183.82.120.3:90/hapride/uploads/9866918643agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (77, '', 'jfsgfugf', 'dsfyu', '9874986773', 'SSC', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/9874986773agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (42, '', 'asdasd', 'asdasd', '9875412399', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (49, '', 'Tulasi', 'Ttttt', '9876543210', 'SSC', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/9876543210agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (51, '', 'hutbh', 'bjKFCgf', '9876543211', 'SSC', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/9876543211agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (69, '', 'naven', 'kumar', '9876947364', 'INTER', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/9876947364agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (54, '', 'Ttcycgy', 'Vuygy', '9885755526', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (59, '', 'Ggfyggy', 'Fggggg', '9888888888', 'INTER', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (78, '', 'balu', 'uppari', '9898999999', 'SSC', 'yes', 'yes', 'agent', '', '', '', '', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');
INSERT INTO `agentsRegistration` VALUES (22, 'A18', 'vaheed', 'shaik', '9949343605', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/9949343605agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (8, 'A7', 'raju', 'raju', '9951591981', 'Graduate', 'yes', 'no', 'agent', 'Agent', 'CADRAC', 'Others', 'http://183.82.120.3:90/hapride/uploads/9951591981agentvoter.jpeg', '-1', 'Active', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Accepted', 'he is agent');
INSERT INTO `agentsRegistration` VALUES (65, '', 'uwdyq', 'uefwu', '9999999799', 'INTER', 'yes', 'yes', 'agent', '', '', '', 'http://toobworks.com/hap/uploads/9999999799agentvoter.jpeg', '-1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Pending', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `applicationType`
-- 

CREATE TABLE `applicationType` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `appName` varchar(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `applicationType`
-- 

INSERT INTO `applicationType` VALUES (1, 'Hap Ride');
INSERT INTO `applicationType` VALUES (2, 'Pool Ride');

-- --------------------------------------------------------

-- 
-- Table structure for table `cadbank`
-- 

CREATE TABLE `cadbank` (
  `id` int(11) NOT NULL,
  `cadcoins` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `cadbank`
-- 

INSERT INTO `cadbank` VALUES (1, 4921.25);

-- --------------------------------------------------------

-- 
-- Table structure for table `cadcoins`
-- 

CREATE TABLE `cadcoins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` varchar(255) NOT NULL,
  `cadcoins` varchar(255) NOT NULL,
  `Totalcoins` varchar(255) NOT NULL,
  `getinid` varchar(255) NOT NULL,
  `gincoins` varchar(255) NOT NULL,
  `getoutid` varchar(255) NOT NULL,
  `goutcoins` varchar(255) NOT NULL,
  `did` varchar(255) NOT NULL,
  `drcoins` varchar(255) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `scoins` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `pcoins` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `cadcoins`
-- 

INSERT INTO `cadcoins` VALUES (3, '3', '4953.75', '20', 'A2', '8', 'A13', '4', '', '4', '', '4', '', '');
INSERT INTO `cadcoins` VALUES (4, '4', '4947.5', '6.25', 'A2', '2.5', 'A13', '1.25', '', '1.25', '', '1.25', '', '');
INSERT INTO `cadcoins` VALUES (5, '3', '4927.5', '20', 'A2', '8', 'A13', '4', 'D1', '4', '-1', '4', '', '');
INSERT INTO `cadcoins` VALUES (6, '4', '4921.25', '6.25', 'A2', '2.5', 'A13', '1.25', 'D2', '1.25', '-1', '1.25', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `countV2`
-- 

CREATE TABLE `countV2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` varchar(20) NOT NULL,
  `count` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `countV2`
-- 

INSERT INTO `countV2` VALUES (36, 'A10', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `driverFeedback`
-- 

CREATE TABLE `driverFeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` varchar(10) NOT NULL,
  `go_id` varchar(10) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `comments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `driverFeedback`
-- 

INSERT INTO `driverFeedback` VALUES (1, '4', 'A2', 'D2', '3.5', '');
INSERT INTO `driverFeedback` VALUES (2, '4', 'A2', 'D2', '4.5', 'Hh');
INSERT INTO `driverFeedback` VALUES (3, '3', 'A2', 'D1', '2.5', '');
INSERT INTO `driverFeedback` VALUES (4, '3', 'A2', 'D1', '3.5', '');
INSERT INTO `driverFeedback` VALUES (5, '4', 'A2', 'D2', '4.0', '');
INSERT INTO `driverFeedback` VALUES (6, '3', 'A2', 'D1', '4.0', '');
INSERT INTO `driverFeedback` VALUES (7, '3', 'A2', 'D1', '4.0', '');
INSERT INTO `driverFeedback` VALUES (8, '3', 'A2', 'D1', '5.0', '');
INSERT INTO `driverFeedback` VALUES (9, '4', 'A2', 'D2', '5.0', '');
INSERT INTO `driverFeedback` VALUES (10, '3', 'A2', 'D1', '5.0', '');
INSERT INTO `driverFeedback` VALUES (11, '4', 'A2', 'D2', '5.0', '');
INSERT INTO `driverFeedback` VALUES (12, '3', 'A2', 'D1', '5.0', '');
INSERT INTO `driverFeedback` VALUES (13, '4', 'A2', 'D2', '4.0', '');
INSERT INTO `driverFeedback` VALUES (14, '3', 'A2', 'D1', '4.5', '');
INSERT INTO `driverFeedback` VALUES (15, '4', 'A2', 'D2', '5.0', '');
INSERT INTO `driverFeedback` VALUES (16, '3', 'A2', 'D1', '4.5', '');
INSERT INTO `driverFeedback` VALUES (17, '4', 'A2', 'D2', '4.5', '');
INSERT INTO `driverFeedback` VALUES (18, '3', 'A2', 'D1', '5.0', '');
INSERT INTO `driverFeedback` VALUES (19, '4', 'A2', 'D2', '4.5', '');
INSERT INTO `driverFeedback` VALUES (20, '3', 'A2', 'D1', '5.0', '');
INSERT INTO `driverFeedback` VALUES (21, '4', 'A2', 'D2', '4.5', '');
INSERT INTO `driverFeedback` VALUES (22, '4', 'A2', 'D2', '4.5', '');
INSERT INTO `driverFeedback` VALUES (23, '3', 'A2', 'D1', '3.0', '');
INSERT INTO `driverFeedback` VALUES (24, '4', 'A2', 'D2', '5.0', '');
INSERT INTO `driverFeedback` VALUES (25, '43', 'a10', 'D2', '4.5', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `driverRegistration`
-- 

CREATE TABLE `driverRegistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` varchar(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `vehicleType` varchar(10) NOT NULL,
  `seats` int(10) NOT NULL,
  `vehicleNumber` varchar(10) NOT NULL,
  `licenseNumber` varchar(20) NOT NULL,
  `pollutionCheck` varchar(50) NOT NULL,
  `p_expiryDate` date NOT NULL,
  `insurance` varchar(50) NOT NULL,
  `i_expiryDate` date NOT NULL,
  `referredBy` varchar(50) NOT NULL,
  `documentType` varchar(20) NOT NULL,
  `documentLocation` varchar(100) NOT NULL,
  `documentLocationRc` varchar(500) NOT NULL,
  `documentLocationLicense` varchar(500) NOT NULL,
  `documentLocationInsurance` varchar(500) NOT NULL,
  `documentLocationPollution` varchar(500) NOT NULL,
  `documentLocationAadhar` varchar(500) NOT NULL,
  `documentLocationPan` varchar(500) NOT NULL,
  `createdDate` datetime NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `workingStatus` varchar(20) NOT NULL,
  `verified` varchar(10) NOT NULL DEFAULT 'Pending',
  `reason` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobileNumber` (`mobileNumber`),
  UNIQUE KEY `vehicleNumber` (`vehicleNumber`),
  UNIQUE KEY `licenseNumber` (`licenseNumber`),
  UNIQUE KEY `insurance` (`insurance`),
  UNIQUE KEY `pollutionCheck` (`pollutionCheck`),
  UNIQUE KEY `vehicleNumber_2` (`vehicleNumber`,`licenseNumber`),
  UNIQUE KEY `vehicleNumber_3` (`vehicleNumber`),
  UNIQUE KEY `vehicleNumber_4` (`vehicleNumber`),
  UNIQUE KEY `vehicleNumber_5` (`vehicleNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1 AUTO_INCREMENT=263 ;

-- 
-- Dumping data for table `driverRegistration`
-- 

INSERT INTO `driverRegistration` VALUES (1, 'D1', 'NARESH', 'Kumar', '8374124126', 'Car', 4, 'TS13AC4231', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '2019-03-21 14:11:32', '', '0000-00-00 00:00:00', '', 'active', 'verified', '');
INSERT INTO `driverRegistration` VALUES (10, 'D2', 'GANESH', 'V', '9951639804', 'Auto', 4, 'TS28V7753', 'YES', 'YES', '2019-03-22', 'YES', '2019-03-22', '', '', '', '', '', '', '', '', '', '2019-03-21 14:33:14', '0', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (12, '', 'KUMAR', 'A', '9398814785', 'Auto', 3, 'TS32T3404', '1234', '1738', '2019-03-21', '52737', '2019-04-18', '', '', '', '', '', '', 'http://183.82.120.3:90/hapride/uploads/9398814785pollution.jpeg', '', '', '2019-03-21 14:36:57', 'chiru', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (14, '', 'SAIKUMAR', 'P', '9959925311', 'Auto', 3, 'TS32T0866', '1235469', '13949797', '2019-06-29', '5649467989', '2019-11-16', '', '', '', '', '', '', '', '', '', '2019-03-21 14:40:19', 'vishnu', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (16, '', 'NIZA', 'SIDDQUI', '9573292947', 'Auto', 3, 'TS30UA9780', '6883', '784', '0000-00-00', '579E', '0000-00-00', '', '', '', '', '', '', '', '', '', '2019-03-21 15:38:14', 'chiru', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (19, '', 'YadaIah', 'P', '9908897245', 'Auto', 3, 'TS07UC0446', 'DLFAP02292652005', '6627837737', '2018-12-21', '537282827', '2018-12-21', '', '', '', 'http://183.82.120.3:90/hapride/uploads/9908897245RC.jpeg', 'http://183.82.120.3:90/hapride/uploads/9908897245license.jpeg', '', '', 'http://183.82.120.3:90/hapride/uploads/9908897245aadhar.jpeg', '', '2019-03-21 16:25:16', 'Tulasi', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (240, '', 'VC', 'VC', '9698588588', 'Winger', 5, 'GV', 'BH', 'HH', '2019-04-09', 'NN', '2019-04-09', '', '', '', '', '', '', '', '', '', '2019-04-09 17:46:22', '0', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (243, '', 'JI', 'HI', '9696969696', 'Winger', 5, 'GH', 'GT', 'GG', '2019-04-09', 'HHJ', '2019-04-09', '', '', '', '', '', '', '', '', '', '2019-04-09 17:49:09', '0', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (244, '', 'NKKJV', 'NNNN', '9090909090', 'Car', 5, 'NNJJ', 'KIII', 'KJEJ', '2019-04-09', 'KJSJ', '2019-04-09', '', '', '', '', '', '', '', '', '', '2019-04-09 18:00:04', '0', '0000-00-00 00:00:00', '', '', 'Pending', '');
INSERT INTO `driverRegistration` VALUES (262, '', 'JJDD', 'NDND', '9898989898', 'Car', 5, 'NNDND', 'NSJDK', 'NJJXJ', '2019-04-09', 'JJXJ', '2019-04-09', '', '', '', '', '', '', '', '', '', '2019-04-09 18:04:37', '0', '0000-00-00 00:00:00', '', '', 'Pending', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `getdetails`
-- 

CREATE TABLE `getdetails` (
  `source` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `seats` int(20) NOT NULL,
  `vehicletype` varchar(200) NOT NULL,
  `fare` int(20) NOT NULL,
  `agent_confirm` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `getdetails`
-- 

INSERT INTO `getdetails` VALUES ('vizag', 'hyd', 2, 'auto', 2000, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `locationDetails`
-- 

CREATE TABLE `locationDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `autoLatestCost` int(10) NOT NULL,
  `autoOldCost` int(50) NOT NULL,
  `cabLatestCost` int(10) NOT NULL,
  `cabOldCost` int(50) NOT NULL,
  `estimatedTime` varchar(20) NOT NULL,
  `createdBy` varchar(10) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(10) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `locationDetails`
-- 

INSERT INTO `locationDetails` VALUES (1, 'Mehadipatnam', 'DLF', 30, 20, 50, 40, '30', 'admin', '2019-03-21 10:00:00', 'admin', '2019-03-21 10:00:00', 'active', 17.3916, 78.4401);
INSERT INTO `locationDetails` VALUES (2, 'JNTU', 'MindSpace', 25, 20, 40, 30, '30', 'admin', '2019-03-21 10:00:00', 'admin', '2019-03-21 10:00:00', 'active', 17.4933, 78.3915);
INSERT INTO `locationDetails` VALUES (3, 'Miyapur', 'DLF', 30, 20, 50, 40, '40', 'admin', '2019-03-21 10:00:00', 'admin', '2019-03-21 10:00:00', 'active', 17.5125, 78.3522);
INSERT INTO `locationDetails` VALUES (4, 'DLF', 'Miyapur', 30, 20, 50, 40, '40', 'admin', '2019-03-21 10:00:00', 'admin', '2019-03-21 10:00:00', 'active', 17.4475, 78.3556);
INSERT INTO `locationDetails` VALUES (5, 'DLF', 'MindSpace', 25, 20, 40, 30, '30', 'admin', '2019-03-21 10:00:00', 'admin', '2019-03-21 10:00:00', 'active', 17.4383, 78.3847);
INSERT INTO `locationDetails` VALUES (6, 'DLF', 'Mehadipatnam', 30, 20, 50, 40, '30', 'admin', '2019-03-21 10:00:00', 'admin', '2019-03-21 10:00:00', 'active', 17.4475, 78.3556);
INSERT INTO `locationDetails` VALUES (7, 'JNTU', 'DLF', 40, 30, 60, 50, '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `otp`
-- 

CREATE TABLE `otp` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `otpvalue` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `verified` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `otp`
-- 

INSERT INTO `otp` VALUES (18, '5416', '6666665554', '1');
INSERT INTO `otp` VALUES (20, '7186', '8099159124', '1');
INSERT INTO `otp` VALUES (21, '2105', '7364736473', '1');
INSERT INTO `otp` VALUES (22, '2951', '7095311956', '1');
INSERT INTO `otp` VALUES (23, '9853', '7893113119', '1');
INSERT INTO `otp` VALUES (24, '9992', '9700998829', '0');
INSERT INTO `otp` VALUES (25, '5062', '9797979779', '1');
INSERT INTO `otp` VALUES (26, '8240', '9704583211', '1');
INSERT INTO `otp` VALUES (27, '2724', '9441323340', '1');
INSERT INTO `otp` VALUES (28, '3669', '9856235689', '1');
INSERT INTO `otp` VALUES (30, '4232', '8341569818', '1');
INSERT INTO `otp` VALUES (31, '7422', '0000000000', '1');
INSERT INTO `otp` VALUES (37, '5827', '9912804571', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `pass_vehicles`
-- 

CREATE TABLE `pass_vehicles` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `Names` varchar(250) NOT NULL,
  `seatsCount` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `pass_vehicles`
-- 

INSERT INTO `pass_vehicles` VALUES (1, 'Auto', 3);
INSERT INTO `pass_vehicles` VALUES (2, 'Car', 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `passengerDetails`
-- 

CREATE TABLE `passengerDetails` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `number` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `registeredDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `passengerDetails`
-- 

INSERT INTO `passengerDetails` VALUES (1, 'aa', 7702942012, 'aa@gmail.com', '2019-04-03 13:01:45');
INSERT INTO `passengerDetails` VALUES (2, '', 0, '', '2019-04-03 14:38:52');
INSERT INTO `passengerDetails` VALUES (3, 'jagadeesh', 6666665554, 'jagadeeshpodilapu04@gmail.com', '2019-04-16 10:30:25');
INSERT INTO `passengerDetails` VALUES (4, 'jagadeeshp', 7095311956, 'jagadeesh@gmail.com', '2019-04-16 13:30:41');
INSERT INTO `passengerDetails` VALUES (5, 'Srinu', 9797979779, 'Hshsh@gmail.com', '2019-04-16 14:44:00');
INSERT INTO `passengerDetails` VALUES (6, 'sree', 9856235689, 'dri@gnail.com', '2019-04-18 10:23:59');
INSERT INTO `passengerDetails` VALUES (7, 'srinu', 8099159124, 'srinivasareddy039@gmail.com', '2019-04-19 09:00:19');
INSERT INTO `passengerDetails` VALUES (9, 'jagadeesh', 8341569818, 'jagadessh@gmail.com', '2019-04-23 13:01:54');

-- --------------------------------------------------------

-- 
-- Table structure for table `passengerFeedback`
-- 

CREATE TABLE `passengerFeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driverid` varchar(11) NOT NULL,
  `rideId` varchar(11) NOT NULL,
  `performance` varchar(50) NOT NULL,
  `review` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `passengerFeedback`
-- 

INSERT INTO `passengerFeedback` VALUES (1, 'www.bartec-', 'g', 'Average', 'gaua');

-- --------------------------------------------------------

-- 
-- Table structure for table `passengerRequest`
-- 

CREATE TABLE `passengerRequest` (
  `ride_id` int(11) NOT NULL AUTO_INCREMENT,
  `gi_id` varchar(11) NOT NULL,
  `passengerName` varchar(200) NOT NULL,
  `mobileNumber` varchar(10) NOT NULL,
  `source` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `vehicleType` varchar(20) NOT NULL,
  `seats` int(20) NOT NULL,
  `fare` int(20) NOT NULL,
  `requestedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_ride` int(10) NOT NULL DEFAULT '0',
  `d_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ride_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

-- 
-- Dumping data for table `passengerRequest`
-- 

INSERT INTO `passengerRequest` VALUES (107, 'A10', 'jagadeeshp', '7095311956', 'DLF', 'Mehadipatnam', 'Auto', 2, 60, '2019-04-24 00:53:48', 2, 'D2');
INSERT INTO `passengerRequest` VALUES (108, 'A6', 'srinu', '8099159124', 'Mehadipatnam', 'DLF', 'Auto', 2, 60, '2019-04-24 01:13:55', 4, '');
INSERT INTO `passengerRequest` VALUES (109, 'A10', 'jagadeeshp', '7095311956', 'DLF', 'Mehadipatnam', 'Auto', 2, 60, '2019-04-24 02:08:55', 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `qualification`
-- 

CREATE TABLE `qualification` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `qualification`
-- 

INSERT INTO `qualification` VALUES (1, 'SSC');
INSERT INTO `qualification` VALUES (2, 'INTER');
INSERT INTO `qualification` VALUES (3, 'Graduate');
INSERT INTO `qualification` VALUES (4, 'Others');

-- --------------------------------------------------------

-- 
-- Table structure for table `queryDetails`
-- 

CREATE TABLE `queryDetails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `s_id` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdTime` datetime NOT NULL,
  `modifiedTime` datetime NOT NULL,
  `queryStatus` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `queryDetails`
-- 

INSERT INTO `queryDetails` VALUES (1, 'A1', 'hi', '2019-03-23 01:24:07', '2019-03-23 01:24:10', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `referral`
-- 

CREATE TABLE `referral` (
  `id` varchar(10) NOT NULL,
  `referralCode` varchar(20) NOT NULL,
  `referredBy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `referral`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `rideDetails`
-- 

CREATE TABLE `rideDetails` (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `gi_id` varchar(10) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `go_id` varchar(10) NOT NULL,
  `old_go_id` varchar(100) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `source` varchar(25) NOT NULL,
  `destination` varchar(25) NOT NULL,
  `passengerCount` int(10) NOT NULL,
  `totalFare` int(10) NOT NULL,
  `addonPassCount` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `addonFare` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `rideStatus` varchar(10) NOT NULL,
  `rideTime` varchar(200) NOT NULL,
  `getinCadcoins` varchar(255) NOT NULL,
  `getoutCadcoins` varchar(255) NOT NULL,
  `driverCadcoins` varchar(255) NOT NULL,
  `supervisorCadcoins` varchar(255) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

-- 
-- Dumping data for table `rideDetails`
-- 

INSERT INTO `rideDetails` VALUES (43, 'a10', 'D2', 'A6', '', '-1', 'DLF', 'Mehadipatnam', 2, 60, '2', '60', '2019-04-24 10:07:51', '2019-04-24 10:08:46', '0000-00-00 00:00:00', '1', '2019-04-24 10:07:51', '', '', '', '');
INSERT INTO `rideDetails` VALUES (44, 'a10', 'D2', 'A6', '', '-1', 'DLF', 'Mehadipatnam', 0, 0, '2', '60', '2019-04-24 10:23:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '2019-04-24 10:23:47', '', '', '', '');
INSERT INTO `rideDetails` VALUES (45, 'dw', 'D1', 'uh', 'huu', 'uhu', 'uh', 'uhu', 4, 45, '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `roles`
-- 

CREATE TABLE `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `roles`
-- 

INSERT INTO `roles` VALUES (1, 'agent');
INSERT INTO `roles` VALUES (2, 'driver');

-- --------------------------------------------------------

-- 
-- Table structure for table `seatsCount`
-- 

CREATE TABLE `seatsCount` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Count` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `seatsCount`
-- 

INSERT INTO `seatsCount` VALUES (1, '3');
INSERT INTO `seatsCount` VALUES (2, '4');
INSERT INTO `seatsCount` VALUES (3, '5');
INSERT INTO `seatsCount` VALUES (4, '6');
INSERT INTO `seatsCount` VALUES (5, '7');
INSERT INTO `seatsCount` VALUES (6, '8');

-- --------------------------------------------------------

-- 
-- Table structure for table `settlementDetails`
-- 

CREATE TABLE `settlementDetails` (
  `set_id` int(10) NOT NULL AUTO_INCREMENT,
  `setDate` datetime NOT NULL,
  `paidDate` date NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `go_id` varchar(10) NOT NULL,
  `totalRides` int(10) NOT NULL,
  `totalPaid` int(10) NOT NULL,
  `totalUnpaid` int(10) NOT NULL,
  `digital` int(10) NOT NULL,
  `cash` int(10) NOT NULL,
  `settlementStatus` int(10) NOT NULL,
  `go_otp` int(10) NOT NULL,
  `s_otp` int(10) NOT NULL,
  PRIMARY KEY (`set_id`),
  UNIQUE KEY `setDate` (`setDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `settlementDetails`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tempSettlement`
-- 

CREATE TABLE `tempSettlement` (
  `set_id` int(10) NOT NULL AUTO_INCREMENT,
  `setDate` datetime NOT NULL,
  `paidDate` date NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `go_id` varchar(10) NOT NULL,
  `totalRides` int(10) NOT NULL,
  `totalPaid` int(10) NOT NULL,
  `totalUnpaid` int(10) NOT NULL,
  `digital` int(10) NOT NULL,
  `cash` int(10) NOT NULL,
  `tempStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tempSettlement`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `token_details`
-- 

CREATE TABLE `token_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(100) NOT NULL,
  `device_token` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `device_id` varchar(100) NOT NULL,
  `device_type` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `token_details`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `transactionDetails`
-- 

CREATE TABLE `transactionDetails` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `r_id` int(10) NOT NULL,
  `go_id` varchar(10) NOT NULL,
  `gi_id` varchar(10) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `passengerCount` int(10) NOT NULL,
  `totalFare` int(10) NOT NULL,
  `digital` int(10) NOT NULL,
  `cash` int(10) NOT NULL,
  `paidDate` datetime NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Dumping data for table `transactionDetails`
-- 

INSERT INTO `transactionDetails` VALUES (1, 4, 'A13', ' A2', 'D2', '-1', 1, 25, 0, 25, '2019-04-09 16:59:41', 0);
INSERT INTO `transactionDetails` VALUES (2, 3, 'A13', ' A2', 'D1', '-1', 2, 80, 0, 80, '2019-04-09 17:07:57', 0);
INSERT INTO `transactionDetails` VALUES (3, 3, 'A13', ' A2', 'D1', '-1', 2, 80, 0, 80, '2019-04-09 17:08:30', 0);
INSERT INTO `transactionDetails` VALUES (4, 3, 'A13', ' A2', 'D1', '-1', 2, 80, 0, 80, '2019-04-09 17:09:22', 0);
INSERT INTO `transactionDetails` VALUES (5, 3, 'A13', ' A2', 'D1', '-1', 2, 80, 0, 80, '2019-04-09 17:13:51', 0);
INSERT INTO `transactionDetails` VALUES (6, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 17:20:18', 0);
INSERT INTO `transactionDetails` VALUES (7, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 17:20:29', 0);
INSERT INTO `transactionDetails` VALUES (8, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 17:25:10', 0);
INSERT INTO `transactionDetails` VALUES (9, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 17:37:54', 0);
INSERT INTO `transactionDetails` VALUES (10, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 17:39:26', 0);
INSERT INTO `transactionDetails` VALUES (11, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 17:43:08', 0);
INSERT INTO `transactionDetails` VALUES (12, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 17:45:35', 0);
INSERT INTO `transactionDetails` VALUES (13, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 17:49:01', 0);
INSERT INTO `transactionDetails` VALUES (14, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 17:51:01', 0);
INSERT INTO `transactionDetails` VALUES (15, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 17:54:10', 0);
INSERT INTO `transactionDetails` VALUES (16, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 17:57:53', 0);
INSERT INTO `transactionDetails` VALUES (17, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:01:15', 0);
INSERT INTO `transactionDetails` VALUES (18, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:05:18', 0);
INSERT INTO `transactionDetails` VALUES (19, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:08:34', 0);
INSERT INTO `transactionDetails` VALUES (20, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:10:30', 0);
INSERT INTO `transactionDetails` VALUES (21, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:12:25', 0);
INSERT INTO `transactionDetails` VALUES (22, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:17:17', 0);
INSERT INTO `transactionDetails` VALUES (23, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:17:21', 0);
INSERT INTO `transactionDetails` VALUES (24, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:17:22', 0);
INSERT INTO `transactionDetails` VALUES (25, 3, 'A13', ' A2', 'D1', '-1', 4, 80, 20, 60, '2019-04-09 18:17:38', 0);
INSERT INTO `transactionDetails` VALUES (26, 4, 'A13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:18:01', 0);
INSERT INTO `transactionDetails` VALUES (27, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:26:14', 0);
INSERT INTO `transactionDetails` VALUES (28, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:26:16', 0);
INSERT INTO `transactionDetails` VALUES (29, 4, 'a13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:31:31', 0);
INSERT INTO `transactionDetails` VALUES (30, 4, 'a13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:31:52', 0);
INSERT INTO `transactionDetails` VALUES (31, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:33:18', 0);
INSERT INTO `transactionDetails` VALUES (32, 4, 'a13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:34:21', 0);
INSERT INTO `transactionDetails` VALUES (33, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:36:38', 0);
INSERT INTO `transactionDetails` VALUES (34, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 18:39:24', 0);
INSERT INTO `transactionDetails` VALUES (35, 4, 'a13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 18:50:44', 0);
INSERT INTO `transactionDetails` VALUES (36, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 19:09:38', 0);
INSERT INTO `transactionDetails` VALUES (37, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 19:09:38', 0);
INSERT INTO `transactionDetails` VALUES (38, 4, 'a13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 19:11:05', 0);
INSERT INTO `transactionDetails` VALUES (39, 3, 'a13', ' A2', 'D1', '-1', 4, 80, 0, 80, '2019-04-09 19:16:24', 0);
INSERT INTO `transactionDetails` VALUES (40, 4, 'a13', ' A2', 'D2', '-1', 3, 25, 0, 25, '2019-04-09 19:17:03', 0);
INSERT INTO `transactionDetails` VALUES (41, 43, 'a6', ' a10', 'D2', '-1', 2, 60, 0, 60, '2019-04-24 10:08:44', 0);
INSERT INTO `transactionDetails` VALUES (42, 43, 'a6', ' a10', 'D2', '-1', 2, 60, 0, 60, '2019-04-24 10:08:46', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `usersLogin`
-- 

CREATE TABLE `usersLogin` (
  `id` varchar(10) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `source` varchar(20) NOT NULL,
  `workingStatus` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `referralCode` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `rideStatus` int(10) NOT NULL DEFAULT '-1',
  `agentAvailability` int(10) NOT NULL DEFAULT '-1',
  `totalAgents` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `usersLogin`
-- 

INSERT INTO `usersLogin` VALUES ('A10', 'Sunil', '1234', 'DLF', '-1', 'Agent', 'ah9kwrgz', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:15:12', 'admin', 1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A11', 'Mahesh ', '1234', 'Miyapur', '-1', 'Agent', 'wcnutzpr', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:15:45', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A12', 'Ramachandra', '1234', 'JNTU', '-1', 'Agent', '4sap3wkz', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:16:08', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A14', 'Amith', '1234', '-1', '-1', 'Agent', 'g01xetzf', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:16:45', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A15', 'Gundabattula', '1234', 'DLF', '-1', 'Agent', '1kamx3pg', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:17:09', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A16', 'Sethu', '1234', 'DLF', '-1', 'Agent', 'mnfraeog', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:17:32', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A17', 'Rajesh', '1234', 'Miyapur', '-1', 'Agent', 'fe8qkv15', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:17:53', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A18', 'vaheed', '1234', '-1', '-1', 'Agent', '0sjt5c4d', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:18:21', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A19', 'Raghavender Reddy', '1234', 'Miyapur', '-1', 'Agent', 'g9rv1bfl', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:18:56', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A2', 'Chiranjeevi ', '1234', 'Mindspace', '-1', 'Agent', 'zsymcwuf', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:10:08', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A20', 'saiteja', '1234', 'Miyapur', '-1', 'Agent', 'uz6gyr3v', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:22:40', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A21', 'ganesh', '1234', 'JNTU', '-1', 'Agent', 'k7jud3i6', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:56:20', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A3', 'Santhosh', '1234', 'MindSpace', '-1', 'Agent', '07ihdzep', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:10:46', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A4', 'harsha', '1234', 'Miyapur', '-1', 'Agent', 'x9de60i3', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:11:17', 'admin', -1, -1, -1);
INSERT INTO `usersLogin` VALUES ('A5', 'Tulasi rao', '1234', 'DLF', '-1', 'Agent', 'jed1ixkr', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:12:38', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A6', 'Subhash', '1234', 'Mehadipatnam', '-1', 'Agent', '95o4k3jx', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:13:30', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A7', 'raju', '1234', 'Mehadipatnam', '-1', 'Agent', '4c2v9osr', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:14:03', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('A8', 'sreenu', '1234', 'DLF', '-1', 'Agent', 'n9el3ias', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:14:28', 'admin', -1, 1, -1);
INSERT INTO `usersLogin` VALUES ('D1', 'Naresh', '1234', 'DLF', 'active', 'Driver', '3mkyx0ul', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:09:12', 'admin', 1, 0, -1);
INSERT INTO `usersLogin` VALUES ('D2', 'Sanjeev Kumar', '1234', 'DLF', 'active', 'Driver', 'jxzwfn2a', '0000-00-00 00:00:00', 'admin', '2019-03-21 02:14:52', 'admin', 2, -1, -1);

-- --------------------------------------------------------

-- 
-- Table structure for table `v2addongetin`
-- 

CREATE TABLE `v2addongetin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `d_id` varchar(20) NOT NULL,
  `hap_pass_count` varchar(20) NOT NULL,
  `hap_fare` varchar(20) NOT NULL,
  `pass_count_addon` varchar(20) NOT NULL,
  `addon_fare` varchar(20) NOT NULL,
  `g_id` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Dumping data for table `v2addongetin`
-- 

INSERT INTO `v2addongetin` VALUES (28, 'JNTU', 'Mindspace', 'D1', '2', '80.0', 'Passenger 2', '80', 'A13', '0');
INSERT INTO `v2addongetin` VALUES (29, 'JNTU', 'MindSpace', 'D2', '1', '25.0', '3', '30', '', '0');
INSERT INTO `v2addongetin` VALUES (30, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (31, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (32, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (33, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (34, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'sreenu nenavath', '0');
INSERT INTO `v2addongetin` VALUES (35, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'sreenu nenavath', '0');
INSERT INTO `v2addongetin` VALUES (36, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (37, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (38, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (39, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'A16', '0');
INSERT INTO `v2addongetin` VALUES (40, 'JNTU', 'DLF', 'D2', '1', '40.0', '3', '30', 'sreenu nenavath', '0');
INSERT INTO `v2addongetin` VALUES (41, 'JNTU', 'DLF', 'D2', '2', '80.0', '2', '120', 'Sethu Kumar', '0');
INSERT INTO `v2addongetin` VALUES (42, 'JNTU', 'DLF', 'D2', '2', '80.0', '2', '120', 'Srinivasa Reddy', '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `v2agentRequeat`
-- 

CREATE TABLE `v2agentRequeat` (
  `passengerName` varchar(100) NOT NULL,
  `passengerNumber` varchar(100) NOT NULL,
  `seats` varchar(10) NOT NULL,
  `Destination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `v2agentRequeat`
-- 

INSERT INTO `v2agentRequeat` VALUES ('srinu1', '8341569818', '3', 'dlf');
INSERT INTO `v2agentRequeat` VALUES ('srikanth', '8341569818', '3', 'dlf');
INSERT INTO `v2agentRequeat` VALUES ('srinu', '8341569818', '3', 'dlf');

-- --------------------------------------------------------

-- 
-- Table structure for table `vehicles`
-- 

CREATE TABLE `vehicles` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `Names` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `vehicles`
-- 

INSERT INTO `vehicles` VALUES (1, 'Auto');
INSERT INTO `vehicles` VALUES (2, 'Car');
INSERT INTO `vehicles` VALUES (3, 'Winger');

-- --------------------------------------------------------

-- 
-- Table structure for table `videoupload`
-- 

CREATE TABLE `videoupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileLocation` varchar(250) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `videoupload`
-- 

INSERT INTO `videoupload` VALUES (1, 'http://toobworks.com/hapuploads/VID_20190404_111126.mp4', 2872730);
INSERT INTO `videoupload` VALUES (2, 'http://toobworks.com/hapuploads/VID_20190404_111504.mp4', 2595235);
INSERT INTO `videoupload` VALUES (3, 'http://toobworks.com/hapuploads/VID_20190404_111859.mp4', 5304180);
INSERT INTO `videoupload` VALUES (4, 'http://toobworks.com/hapuploads/VID_20190404_112356.mp4', 4649757);
INSERT INTO `videoupload` VALUES (5, 'http://toobworks.com/hapuploads/VID_20190404_112951.mp4', 3286202);
INSERT INTO `videoupload` VALUES (6, 'http://toobworks.com/hapuploads/VID_20190404_113326.mp4', 4099604);
INSERT INTO `videoupload` VALUES (7, 'http://toobworks.com/hapuploads/VID_20190404_114415.mp4', 4353864);
INSERT INTO `videoupload` VALUES (8, 'http://toobworks.com/hapuploads/VID_20190404_114620.mp4', 5209857);
INSERT INTO `videoupload` VALUES (9, 'http://toobworks.com/hapuploads/VID_20190404_114950.mp4', 6975338);
INSERT INTO `videoupload` VALUES (10, 'http://toobworks.com/hap/uploads/VID_20190404_115344.mp4', 4413858);
