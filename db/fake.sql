-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.17-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for fakeproduct
CREATE DATABASE IF NOT EXISTS `fakeproduct` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fakeproduct`;

-- Dumping structure for table fakeproduct.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL default '0',
  `email` varchar(150) NOT NULL default '0',
  `phone` varchar(150) NOT NULL default '0',
  `address` varchar(500) NOT NULL default '0',
  `password` varchar(150) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.customer: ~1 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
	(1, 'customer', 'customer@gmail.com', '8521478563', 'mysore', '123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table fakeproduct.customerfeedbacks
CREATE TABLE IF NOT EXISTS `customerfeedbacks` (
  `id` int(11) NOT NULL auto_increment,
  `rating` int(11) NOT NULL default '0',
  `description` varchar(500) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `FK_feedbacks_customer` (`cid`),
  KEY `FK_feedbacks_seller` (`sid`),
  CONSTRAINT `FK_feedbacks_customer` FOREIGN KEY (`cid`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_feedbacks_seller` FOREIGN KEY (`sid`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.customerfeedbacks: ~6 rows (approximately)
/*!40000 ALTER TABLE `customerfeedbacks` DISABLE KEYS */;
INSERT INTO `customerfeedbacks` (`id`, `rating`, `description`, `cid`, `sid`) VALUES
	(1, 4, 'best seller ever', 1, 1),
	(2, 4, 'best seller ever', 1, 1),
	(3, 4, 'best seller ever', 1, 1),
	(4, 4, 'best seller ever', 1, 1),
	(5, 4, 'best seller ever', 1, 1),
	(6, 4, 'best seller ever', 1, 1);
/*!40000 ALTER TABLE `customerfeedbacks` ENABLE KEYS */;

-- Dumping structure for table fakeproduct.manufacturer
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL default '0',
  `email` varchar(150) NOT NULL default '0',
  `phone` varchar(150) NOT NULL default '0',
  `address` varchar(500) NOT NULL default '0',
  `password` varchar(150) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.manufacturer: ~1 rows (approximately)
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
	(1, 'manufacture', 'manufacture@gmail.com', '9874563214', 'mysore', '123');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;

-- Dumping structure for table fakeproduct.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL auto_increment,
  `pname` varchar(150) NOT NULL default '0',
  `pid` varchar(150) NOT NULL default '0',
  `price` varchar(150) NOT NULL default '0',
  `des` text NOT NULL,
  `qrpath` varchar(500) NOT NULL default '0',
  `productimage` varchar(500) NOT NULL default '0',
  `mid` int(11) NOT NULL default '0',
  `mfg_date` varchar(50) NOT NULL default '0',
  `exp_date` varchar(50) NOT NULL default '0',
  `ingredients` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_products_manufacturer` (`mid`),
  CONSTRAINT `FK_products_manufacturer` FOREIGN KEY (`mid`) REFERENCES `manufacturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.products: ~7 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `pname`, `pid`, `price`, `des`, `qrpath`, `productimage`, `mid`, `mfg_date`, `exp_date`, `ingredients`) VALUES
	(1, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(2, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(3, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(4, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(5, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(6, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(7, 'rose water', 'rosewater1', '50', 'rose water spray', 'static/uploads/qrcodes/rosewater1.png', 'rosewater1_71-674rpyBL.jpg', 1, '0', '0', '0'),
	(8, 'fair and lovely', '123fair', '100', 'sjhglsbfy', 'static/uploads/qrcodes/123fair.png', '123fair_pngtree-the-female-teacher-with-glasses-is-in-class-image_1048445.jpg', 1, '1992-05-10', '1992-05-11', 'hsaiguabsgr,aiugawygyaw., charcoal, rose waater, holsu, galiju , kocche');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table fakeproduct.seller
CREATE TABLE IF NOT EXISTS `seller` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL default '0',
  `email` varchar(150) NOT NULL default '0',
  `phone` varchar(150) NOT NULL default '0',
  `address` varchar(500) NOT NULL default '0',
  `password` varchar(150) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.seller: ~1 rows (approximately)
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
	(1, 'seller', 'seller@gmail.com', '7894561236', 'mysore', '123');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;

-- Dumping structure for table fakeproduct.sellerfeedbacks
CREATE TABLE IF NOT EXISTS `sellerfeedbacks` (
  `id` int(11) NOT NULL auto_increment,
  `rating` int(11) NOT NULL default '0',
  `description` varchar(500) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `mid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `FK_sellerfeedbacks_seller` (`sid`),
  KEY `FK_sellerfeedbacks_manufacturer` (`mid`),
  CONSTRAINT `FK_sellerfeedbacks_manufacturer` FOREIGN KEY (`mid`) REFERENCES `manufacturer` (`id`),
  CONSTRAINT `FK_sellerfeedbacks_seller` FOREIGN KEY (`sid`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.sellerfeedbacks: ~6 rows (approximately)
/*!40000 ALTER TABLE `sellerfeedbacks` DISABLE KEYS */;
INSERT INTO `sellerfeedbacks` (`id`, `rating`, `description`, `sid`, `mid`) VALUES
	(1, 5, 'best manufacturer', 1, 1),
	(2, 5, 'best manufacturer', 1, 1),
	(3, 5, 'best manufacturer', 1, 1),
	(4, 5, 'best manufacturer', 1, 1),
	(5, 5, 'best manufacturer', 1, 1),
	(6, 4, 'best manufacturer', 1, 1);
/*!40000 ALTER TABLE `sellerfeedbacks` ENABLE KEYS */;

-- Dumping structure for table fakeproduct.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL auto_increment,
  `sid` int(11) NOT NULL default '0',
  `mid` int(11) NOT NULL default '0',
  `pid` int(11) NOT NULL default '0',
  `productserial` varchar(150) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `FK_transactions_seller` (`sid`),
  KEY `FK_transactions_manufacturer` (`mid`),
  KEY `FK_transactions_products` (`pid`),
  CONSTRAINT `FK_transactions_manufacturer` FOREIGN KEY (`mid`) REFERENCES `manufacturer` (`id`),
  CONSTRAINT `FK_transactions_products` FOREIGN KEY (`pid`) REFERENCES `products` (`id`),
  CONSTRAINT `FK_transactions_seller` FOREIGN KEY (`sid`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fakeproduct.transactions: ~1 rows (approximately)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `sid`, `mid`, `pid`, `productserial`) VALUES
	(1, 1, 1, 3, 'rosewater1'),
	(2, 1, 1, 8, '123fair');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
