/*
Navicat MySQL Data Transfer

Source Server         : windeye
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-03-17 21:12:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `microgrids_devcontrol`
-- ----------------------------
DROP TABLE IF EXISTS `microgrids_devcontrol`;
CREATE TABLE `microgrids_devcontrol` (
  `num` varchar(255) NOT NULL,
  `dev_type` int(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `注解` varchar(255) DEFAULT NULL,
  `switch_status` varchar(255) DEFAULT NULL,
  `active_power` varchar(255) DEFAULT NULL,
  `reactive_power` varchar(255) DEFAULT NULL,
  `powerfactor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of microgrids_devcontrol
-- ----------------------------
INSERT INTO `microgrids_devcontrol` VALUES ('BS101011', '22', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('BS101021', '22', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('BS102011', '22', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('BS102021', '22', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('HS01', '20', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('HS1011', '20', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('HS1021', '20', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('PVI0101', '1', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('PVI0102', '1', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('PVI0201', '1', null, null, null, null, null, null, null);
INSERT INTO `microgrids_devcontrol` VALUES ('PVI0202', '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `microgrids_pvanalogquantitydata1`
-- ----------------------------
DROP TABLE IF EXISTS `microgrids_pvanalogquantitydata1`;
CREATE TABLE `microgrids_pvanalogquantitydata1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pv_num` varchar(10) NOT NULL,
  `matrix_cur` varchar(10) DEFAULT NULL,
  `matrix_volt` double(10,4) DEFAULT NULL,
  `grid_volt_ab` double(10,4) DEFAULT NULL,
  `grid_volt_bc` double(10,4) DEFAULT NULL,
  `grid_volt_ca` double(10,4) DEFAULT NULL,
  `on_grid_cur_a` double(10,4) DEFAULT NULL,
  `on_grid_cur_b` double(10,4) DEFAULT NULL,
  `on_grid_cur_c` double(10,4) DEFAULT NULL,
  `power_factor_a` double(10,4) DEFAULT NULL,
  `power_factor_b` double(10,4) DEFAULT NULL,
  `power_factor_c` double(10,4) DEFAULT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of microgrids_pvanalogquantitydata1
-- ----------------------------
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('233', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('234', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('235', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('236', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('237', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('238', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('239', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('240', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('241', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('242', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('243', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('244', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('245', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('246', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('247', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('248', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('249', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('250', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('251', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('252', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('253', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('254', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('255', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('256', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('257', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('258', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('259', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('260', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('261', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('262', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('263', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('264', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('265', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('266', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('267', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('268', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('269', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('270', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('271', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('272', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('273', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('274', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('275', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('276', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('277', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('278', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('279', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('280', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('281', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('282', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('283', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('284', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('285', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('286', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('287', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('288', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('289', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('290', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('291', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('292', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('293', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('294', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('295', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('296', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('297', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('298', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('299', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('300', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('301', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata1` VALUES ('302', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, '2020-03-17');

-- ----------------------------
-- Table structure for `microgrids_pvanalogquantitydata2`
-- ----------------------------
DROP TABLE IF EXISTS `microgrids_pvanalogquantitydata2`;
CREATE TABLE `microgrids_pvanalogquantitydata2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pv_num` varchar(20) DEFAULT NULL,
  `on_grid_p` double(10,4) DEFAULT NULL,
  `on_grid_q` double(10,4) DEFAULT NULL,
  `on_grid_s` double(10,4) DEFAULT NULL,
  `inv_cabin_temp` double(10,4) DEFAULT NULL,
  `day_gen_power` double(10,4) DEFAULT NULL,
  `day_runtime` double(10,4) DEFAULT NULL,
  `total_gen_power` double(10,4) DEFAULT NULL,
  `total_runtime` double(10,4) DEFAULT NULL,
  `co2_reduce` double(10,4) DEFAULT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of microgrids_pvanalogquantitydata2
-- ----------------------------
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('237', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('238', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('239', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('240', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('241', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('242', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('243', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('244', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('245', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('246', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('247', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('248', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('249', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('250', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('251', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('252', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('253', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('254', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('255', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('256', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('257', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('258', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('259', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('260', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('261', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('262', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('263', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('264', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('265', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('266', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('267', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('268', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('269', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('270', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('271', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('272', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('273', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('274', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('275', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('276', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('277', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('278', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('279', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('280', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('281', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('282', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('283', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('284', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('285', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('286', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('287', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('288', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('289', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('290', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('291', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('292', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('293', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('294', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('295', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('296', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('297', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('298', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('299', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('300', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('301', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('302', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('303', 'PVI0201', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('304', 'PVI0202', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('305', 'PVI0101', null, null, null, null, null, null, null, null, null, '2020-03-17');
INSERT INTO `microgrids_pvanalogquantitydata2` VALUES ('306', 'PVI0102', null, null, null, null, null, null, null, null, null, '2020-03-17');

-- ----------------------------
-- Table structure for `microgrids_pvdigitalquantitydata`
-- ----------------------------
DROP TABLE IF EXISTS `microgrids_pvdigitalquantitydata`;
CREATE TABLE `microgrids_pvdigitalquantitydata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pv_num` varchar(255) DEFAULT NULL,
  `status_down` int(11) DEFAULT NULL,
  `status_standby` int(11) DEFAULT NULL,
  `status_selftest` int(11) DEFAULT NULL,
  `status_ongrid` int(11) DEFAULT NULL,
  `locking_self` int(11) DEFAULT NULL,
  `emergency_stop` int(11) DEFAULT NULL,
  `remote_local` int(11) DEFAULT NULL,
  `reactive_power_compensation` int(11) DEFAULT NULL,
  `smoke_alarm` int(11) DEFAULT NULL,
  `DC_lightning_protection` int(11) DEFAULT NULL,
  `AC_lightning_protection` int(11) DEFAULT NULL,
  `PV_reverse_connection` int(11) DEFAULT NULL,
  `PV_insulation_resistance` int(11) DEFAULT NULL,
  `DC_overvoltage` int(11) DEFAULT NULL,
  `power_voltage` int(11) DEFAULT NULL,
  `grid_frequency` int(11) DEFAULT NULL,
  `grid_reverse_order` int(11) DEFAULT NULL,
  `inverter_overload` int(11) DEFAULT NULL,
  `inverter_overheating` int(11) DEFAULT NULL,
  `inverter_short_circuit` int(11) DEFAULT NULL,
  `ambient_temperature_overheating` int(11) DEFAULT NULL,
  `island_protection` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of microgrids_pvdigitalquantitydata
-- ----------------------------
INSERT INTO `microgrids_pvdigitalquantitydata` VALUES ('1', 'PVI0101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `microgrids_pvdigitalquantitydata` VALUES ('2', 'PVI0102', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `microgrids_pvdigitalquantitydata` VALUES ('3', 'PVI0201', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `microgrids_pvdigitalquantitydata` VALUES ('4', 'PVI0202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
