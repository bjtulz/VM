-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016-05-16 14:36:42
-- 服务器版本: 5.5.46
-- PHP 版本: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `vm`
--

-- --------------------------------------------------------

--
-- 表的结构 `doge`
--

CREATE TABLE IF NOT EXISTS `doge` (
  `doge_id` int(11) NOT NULL AUTO_INCREMENT,
  `doge_code` varchar(40) NOT NULL,
  `doge_from` varchar(20) NOT NULL,
  `doge_to` varchar(20) NOT NULL,
  `doge_price` double NOT NULL,
  `doge_mission` int(11) DEFAULT NULL,
  `doge_status` int(11) NOT NULL,
  `doge_ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`doge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `drive`
--

CREATE TABLE IF NOT EXISTS `drive` (
  `drive_id` int(11) NOT NULL AUTO_INCREMENT,
  `drive_driver` int(11) NOT NULL,
  `drive_vehicle` int(11) NOT NULL,
  `drive_status` int(11) NOT NULL,
  `drive_start` timestamp NULL DEFAULT NULL,
  `drive_end` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`drive_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(20) NOT NULL,
  `driver_age` int(11) NOT NULL,
  `driver_gender` int(11) NOT NULL,
  `driver_license` varchar(40) NOT NULL,
  `driver_experience` int(11) NOT NULL,
  `driver_class` varchar(20) NOT NULL,
  `driver_status` int(11) NOT NULL,
  `driver_tel` varchar(20) NOT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `mission`
--

CREATE TABLE IF NOT EXISTS `mission` (
  `mission_id` int(11) NOT NULL AUTO_INCREMENT,
  `mission_code` varchar(40) NOT NULL,
  `mission_origin` varchar(40) NOT NULL,
  `mission_dest` varchar(40) NOT NULL,
  `mission_current` varchar(40) DEFAULT NULL,
  `mission_origin_loc` varchar(40) NOT NULL,
  `mission_dest_loc` varchar(40) NOT NULL,
  `mission_current_loc` varchar(40) DEFAULT NULL,
  `mission_drive` int(11) NOT NULL,
  `mission_starttime` timestamp NULL DEFAULT NULL,
  `mission_endtime` timestamp NULL DEFAULT NULL,
  `mission_status` int(11) NOT NULL,
  `mission_goods` varchar(30) NOT NULL,
  `mission_weight` double NOT NULL,
  `mission_contact` varchar(40) NOT NULL,
  `mission_route` varchar(2048) DEFAULT NULL,
  `mission_distance` double DEFAULT NULL,
  `mission_cost` double DEFAULT NULL,
  PRIMARY KEY (`mission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_number` varchar(20) NOT NULL,
  `vehicle_type` varchar(40) NOT NULL,
  `vehicle_load` int(11) NOT NULL,
  `vehicle_status` int(11) NOT NULL,
  `vehicle_location` varchar(40) DEFAULT NULL,
  `vehicle_loc_desc` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
