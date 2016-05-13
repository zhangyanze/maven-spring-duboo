/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : goshop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-05-14 06:50:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gs_album_class
-- ----------------------------
DROP TABLE IF EXISTS `gs_album_class`;
CREATE TABLE `gs_album_class` (
  `aclass_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `aclass_name` varchar(100) NOT NULL COMMENT '相册名称',
  `store_id` int(10) unsigned NOT NULL COMMENT '所属店铺id',
  `aclass_des` varchar(255) DEFAULT NULL COMMENT '相册描述',
  `aclass_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `aclass_cover` varchar(255) DEFAULT NULL COMMENT '相册封面',
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '图片上传时间',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为默认相册,1代表默认',
  PRIMARY KEY (`aclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='相册表';

-- ----------------------------
-- Records of gs_album_class
-- ----------------------------
INSERT INTO `gs_album_class` VALUES ('1', '默认相册2', '1', '2', '1', '', '2016-05-04 20:52:35', '0');
INSERT INTO `gs_album_class` VALUES ('19', '默认相册', '1', '', '255', '', '2016-04-28 21:19:50', '1');

-- ----------------------------
-- Table structure for gs_album_pic
-- ----------------------------
DROP TABLE IF EXISTS `gs_album_pic`;
CREATE TABLE `gs_album_pic` (
  `apic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册图片表id',
  `apic_name` varchar(100) NOT NULL COMMENT '图片名称',
  `apic_tag` varchar(255) NOT NULL COMMENT '图片标签',
  `aclass_id` int(10) unsigned NOT NULL COMMENT '相册id',
  `apic_cover` varchar(255) NOT NULL COMMENT '图片路径',
  `apic_size` int(10) unsigned NOT NULL COMMENT '图片大小',
  `apic_spec` varchar(100) NOT NULL COMMENT '图片规格',
  `store_id` int(10) unsigned NOT NULL COMMENT '所属店铺id',
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '图片上传时间',
  PRIMARY KEY (`apic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=941 DEFAULT CHARSET=utf8 COMMENT='相册图片表';

-- ----------------------------
-- Records of gs_album_pic
-- ----------------------------
INSERT INTO `gs_album_pic` VALUES ('388', '11', '', '19', '1_04418206625430066.jpg', '174541', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('389', '12', '', '19', '1_04418207021778349.jpg', '336218', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('390', '13', '', '19', '1_04418207062633139.jpg', '457837', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('391', '14', '', '19', '1_04418207107006930.jpg', '314892', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('392', '31', '', '19', '1_04418207207476705.jpg', '282850', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('393', '32', '', '19', '1_04418207237197915.jpg', '521077', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('394', '33', '', '19', '1_04418207258840120.jpg', '502581', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('395', '34', '', '19', '1_04418207283569084.jpg', '383670', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('396', '12', '', '19', '1_04418207321967915.jpg', '336218', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('397', '13', '', '19', '1_04418207350682444.jpg', '457837', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('398', '14', '', '19', '1_04418207374719006.jpg', '314892', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('399', '21', '', '19', '1_04418207428759462.jpg', '161981', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('400', '21', '', '19', '1_04418207471410641.jpg', '161981', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('401', '22', '', '19', '1_04418207575073862.jpg', '384532', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('402', '23', '', '19', '1_04418207617911287.jpg', '427267', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('403', '24', '', '19', '1_04418207651522662.jpg', '491681', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('404', '41', '', '19', '1_04418207748921454.jpg', '239524', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('405', '42', '', '19', '1_04418207775017390.jpg', '129511', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('406', '43', '', '19', '1_04418207803169795.jpg', '356141', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('407', '44', '', '19', '1_04418207830061660.jpg', '146314', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('408', '11', '', '19', '1_04418211211965600.jpg', '131570', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('409', '22', '', '19', '1_04418211624146737.jpg', '251896', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('410', '21', '', '19', '1_04418211646104580.jpg', '234534', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('411', '23', '', '19', '1_04418211670177204.jpg', '311451', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('412', '24', '', '19', '1_04418211696227370.jpg', '287928', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('413', '12', '', '19', '1_04418211725315624.jpg', '239674', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('414', '13', '', '19', '1_04418211757384304.jpg', '465717', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('415', '14', '', '19', '1_04418211785719847.jpg', '425344', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('416', '32', '', '19', '1_04418211827276143.jpg', '239282', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('417', '31', '', '19', '1_04418211855225368.jpg', '233100', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('418', '33', '', '19', '1_04418211883385668.jpg', '239952', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('419', '34', '', '19', '1_04418211907013907.jpg', '241641', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('420', '11', '', '19', '1_04418239521122578.jpg', '263011', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('421', '21', '', '19', '1_04418240378724556.jpg', '227648', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('422', '22', '', '19', '1_04418240412383742.jpg', '177558', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('423', '23', '', '19', '1_04418240440076521.jpg', '365455', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('424', '24', '', '19', '1_04418240469700467.jpg', '324199', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('425', '51', '', '19', '1_04418240514917358.jpg', '151339', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('426', '52', '', '19', '1_04418240547037748.jpg', '190841', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('427', '53', '', '19', '1_04418240569316654.jpg', '148740', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('428', '54', '', '19', '1_04418240593223779.jpg', '187276', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('429', '31', '', '19', '1_04418240641767556.jpg', '359584', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('430', '32', '', '19', '1_04418240666885368.jpg', '283091', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('431', '33', '', '19', '1_04418240697199699.jpg', '332601', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('432', '34', '', '19', '1_04418240726658802.jpg', '281580', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('433', '41', '', '19', '1_04418240795665638.jpg', '142770', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('434', '42', '', '19', '1_04418240827143666.jpg', '131160', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('435', '43', '', '19', '1_04418240859146562.jpg', '374630', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('436', '44', '', '19', '1_04418240886330482.jpg', '346866', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('437', '51', '', '19', '1_04418240955916042.jpg', '151339', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('438', '52', '', '19', '1_04418240987274775.jpg', '190841', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('439', '53', '', '19', '1_04418241012342707.jpg', '148740', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('440', '54', '', '19', '1_04418241035889286.jpg', '187276', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('441', '1', '', '19', '1_04418241398474746.jpg', '208231', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('442', '11', '', '19', '1_04418242684128103.jpg', '263011', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('443', '12', '', '19', '1_04418242714323222.jpg', '189817', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('444', '13', '', '19', '1_04418242742004222.jpg', '65729', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('445', '14', '', '19', '1_04418242771276943.jpg', '334143', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('446', '1', '', '19', '1_04418242839438481.jpg', '208231', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('447', '1', '', '19', '1_04418242873386601.jpg', '208231', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('448', '1', '', '19', '1_04418242912771108.jpg', '208231', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('449', '12', '', '19', '1_04418253211770278.jpg', '165391', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('450', '11', '', '19', '1_04418253240878850.jpg', '171643', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('451', '12', '', '19', '1_04418253965368434.jpg', '165391', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('452', '13', '', '19', '1_04418253993341194.jpg', '128894', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('453', '14', '', '19', '1_04418254020459178.jpg', '111305', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('454', '22', '', '19', '1_04418254088878407.jpg', '198054', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('455', '21', '', '19', '1_04418254118588220.jpg', '277621', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('456', '23', '', '19', '1_04418254147327427.jpg', '261169', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('457', '24', '', '19', '1_04418254171863431.jpg', '258254', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('458', '31', '', '19', '1_04418254218437108.jpg', '177831', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('459', '32', '', '19', '1_04418254243309723.jpg', '192984', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('460', '33', '', '19', '1_04418254270788167.jpg', '299184', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('461', '34', '', '19', '1_04418254463390448.jpg', '244684', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('912', '5', '', '19', '1_04423392298369303.jpg', '175464', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('913', '副本', '', '19', '1_04423392645620711.jpg', '449848', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('914', '1', '', '19', '1_04423411880302392.png', '638634', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('915', '副本', '', '19', '1_04423412221350722.jpg', '868721', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('916', '2', '', '19', '1_04423412434387147.png', '346293', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('917', '3', '', '19', '1_04423412474341466.png', '446748', '1x1', '1', null);
INSERT INTO `gs_album_pic` VALUES ('918', '2', '', '19', '1_04919072257200649.jpg', '509606', '1000x1000', '1', null);
INSERT INTO `gs_album_pic` VALUES ('919', '2', '', '19', '1_04919072496045934.jpg', '509606', '1000x1000', '1', null);
INSERT INTO `gs_album_pic` VALUES ('920', '2', '', '19', '1_04919088646930110.jpg', '509606', '1000x1000', '1', null);
INSERT INTO `gs_album_pic` VALUES ('921', '2', '', '19', '1_04919088916028101.jpg', '509606', '1000x1000', '1', null);
INSERT INTO `gs_album_pic` VALUES ('922', 'IMAG2678', '', '19', '1_04919089075755533.jpg', '1031750', '1840x3264', '1', null);
INSERT INTO `gs_album_pic` VALUES ('923', '20', '', '19', '1_04919089348895922.jpg', '53324', '660x200', '1', null);
INSERT INTO `gs_album_pic` VALUES ('924', 'IMAG2678', '', '19', '1_04919089482543338.jpg', '1031750', '1840x3264', '1', null);
INSERT INTO `gs_album_pic` VALUES ('925', 'a1', '', '19', '1_04919243543239161.jpg', '70753', '539x960', '1', null);
INSERT INTO `gs_album_pic` VALUES ('926', '20', '', '19', '1_04919255413339215.jpg', '40212', '539x960', '1', null);
INSERT INTO `gs_album_pic` VALUES ('927', 'QQ图片20150609120852', '', '19', '1_04928585569474265.jpg', '81573', '801x798', '1', null);
INSERT INTO `gs_album_pic` VALUES ('928', 'QQ图片20150609120852', '', '19', '1_04928586044062761.jpg', '81573', '801x798', '1', null);
INSERT INTO `gs_album_pic` VALUES ('929', 'QQ图片20150609120907', '', '19', '1_04928628259220627.jpg', '102859', '803x803', '1', null);
INSERT INTO `gs_album_pic` VALUES ('930', 'QQ图片20150609120852', '', '19', '1_04928652283443171.jpg', '81573', '801x798', '1', null);
INSERT INTO `gs_album_pic` VALUES ('931', '69622954b9424c9992fa820a9e7b4061', '', '19', '1_04928757206146875.png', '27210', '392x124', '1', null);
INSERT INTO `gs_album_pic` VALUES ('932', '69622954b9424c9992fa820a9e7b4061', '', '19', '1_04931403208687929.png', '27210', '392x124', '1', null);
INSERT INTO `gs_album_pic` VALUES ('933', 'IMAG2678', '', '19', '1_04991902058352505.jpg', '1031750', '1840x3264', '1', null);
INSERT INTO `gs_album_pic` VALUES ('934', 'LZ-stand', '', '19', '1_05004022005562695.jpg', '765392', '1200x1800', '1', null);
INSERT INTO `gs_album_pic` VALUES ('935', '授权书2', '', '19', '1_05028085656945191.jpg', '119950', '1088x960', '1', null);
INSERT INTO `gs_album_pic` VALUES ('936', 'action_icon_default', '', '19', '1_05028085984323487.gif', '301', '15x13', '1', null);
INSERT INTO `gs_album_pic` VALUES ('937', 'file', 'tab_zxzz_wlbtdy_1.gif', '1', '/2016-05-04/fa88f157-2d07-496b-80e8-11c5c2e1aede.gif', '192646', '1870x852', '1', '2016-05-04 22:04:19');
INSERT INTO `gs_album_pic` VALUES ('938', 'file', 'tab_zxzz_wlbtdy_1.gif', '1', '/2016-05-04/fa88f157-2d07-496b-80e8-11c5c2e1aede.gif', '192646', '1870x852', '1', '2016-05-04 22:04:31');
INSERT INTO `gs_album_pic` VALUES ('939', 'file', 'tab_zxzz_wlbtdy_1.gif', '1', '/2016-05-04/fa88f157-2d07-496b-80e8-11c5c2e1aede.gif', '192646', '1870x852', '1', '2016-05-04 22:04:32');
INSERT INTO `gs_album_pic` VALUES ('940', 'file', 'tab_zxzz_wlbtdy_1.gif', '19', '/2016-05-04/1cf1518b-14be-4fd6-80ca-1258d6973417.gif', '192646', '1870x852', '1', '2016-05-04 22:07:21');

-- ----------------------------
-- Table structure for gs_article_lang_info
-- ----------------------------
DROP TABLE IF EXISTS `gs_article_lang_info`;
CREATE TABLE `gs_article_lang_info` (
  `article_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文章详细主键',
  `article_id` bigint(20) NOT NULL COMMENT '文章主表主键',
  `lang_type` varchar(10) NOT NULL DEFAULT 'zh' COMMENT '语言类型:en英文，zh中文',
  `article_title` varchar(255) NOT NULL COMMENT '文章标题',
  `article_author` varchar(50) DEFAULT NULL COMMENT '文章作者',
  `article_abstract` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `article_content` text COMMENT '文章正文',
  `article_keyword` varchar(255) DEFAULT NULL COMMENT '文章关键字',
  `article_click` int(10) DEFAULT '1',
  PRIMARY KEY (`article_info_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_article_lang_info
-- ----------------------------
INSERT INTO `gs_article_lang_info` VALUES ('5', '4', 'zh', '【精神见证】Antonio Rosario作品展', '我', '再要1', '<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:25.6px;background-color:#FFFFFF;\">開幕現場</span></strong> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879655661.jpg\" title=\"750 _MG_2155副本.JPG\" /><img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879649124.jpg\" title=\"750 _MG_2143副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879715369.jpg\" title=\"750 _MG_2186副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879755506.jpg\" title=\"750 _MG_2192副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/1460687982649.jpg\" title=\"750 DSC01260副本.JPG\" /> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">展覽現場</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\"></span></strong> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881014794.jpg\" title=\"750 IMG_0764副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881053268.jpg\" title=\"750 IMG_0767.jpg\" /><img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881075037.jpg\" title=\"750 IMG_0777副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881093494.jpg\" title=\"750 IMG_0782副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881104632.jpg\" title=\"750 IMG_0783副本.JPG\" /> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n<strong><span style=\"color:#3E3E3E;line-height:25.6px;background-color:#FFFFFF;\">展览信息</span></strong></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;\"><strong><span style=\"color:#3E3E3E;line-height:25.6px;background-color:#FFFFFF;\"><br />\r\n</span></strong></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"color:#AB1942;font-size:14px;line-height:1.6;\">&nbsp; 【精神見證】是一系列的體驗項目，雖然並不一定有實質的發生，但是仍然是人類體驗的一部分。這種體驗可以反映意識形態和一些無法感知的存在。我們為了生存體驗了各種人生項目。那麼我們在處理我們任性的掙扎的時候是一種什麼態度？一切都是莊嚴肅穆的嗎？</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">&nbsp; &nbsp;作為一個見證者，我努力刻畫各種內在的體驗，包括各種關係，社會，環境，工作以及生活本身。</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:right;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;\"><img src=\"https://mmbiz.qlogo.cn/mmbiz/ZTyG8s085vK5qOh0RvQQFTSDA77ico4xQuHWVIcwUP9odEHia0LxFuicH7YfUwicibVcUulN07yMKY9IZ9icS0p9TWqw/0?wx_fmt=jpeg\" style=\"height:auto !important;\" /></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<strong><span style=\"color:#000000;\"><span style=\"font-size:14px;\">駐留藝術家</span><span style=\"font-size:14px;line-height:25.6px;\">:</span></span></strong><span style=\"color:#000000;font-size:14px;line-height:25.6px;\"></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:14px;color:#AB1942;line-height:25.6px;\"><span style=\"line-height:25.6px;\">Antonio Rosario</span>&nbsp;(<span style=\"line-height:22.4px;\">波多黎各</span>)</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"font-size:14px;\">策展人 &nbsp;:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;line-height:22.4px;color:#AB1942;\">曾途 &nbsp;</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"font-size:14px;\">開幕酒會 &nbsp;:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">2016.1.20 &nbsp;19:30</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"font-size:14px;\">展覽週期 &nbsp;:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">2016.1.21 - 2016.1.25</span><span style=\"color:#AB1942;font-size:14px;line-height:25.6px;\">（14:00 - 18:00）</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:14px;line-height:25.6px;color:#000000;\">地址 &nbsp;:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"color:#AB1942;\"><span style=\"font-size:14px;line-height:25.6px;\">十方藝術中心 &nbsp;</span></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"font-size:14px;\">有關藝術家</span></strong> \r\n</p>\r\n<p class=\"p1\" style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"color:#AB1942;font-size:14px;line-height:1.6;\"></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">&nbsp; &nbsp;<span style=\"line-height:22.4px;\">Antonio Rosario</span>，出生並成長於波多黎各島嶼的畫家，通過人物畫像表達並組合各種生動的場景。除了人物畫，<span style=\"line-height:22.4px;\">Antonio</span>鐘情於運用斑駁的色彩和錯綜複雜的圖案來表達特別的情愫。他曾在聖胡安基多藝術學院學習油畫，也在佛羅倫薩聖雷帕拉塔國際藝術學院學習過一年。</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">&nbsp; &nbsp;<span style=\"line-height:22.4px;\">Antonio</span>為法國酒莊繪制大型壁畫。他展出了部分他在威尼斯畫報國際學校駐留，西西里島A\'jureka藝術駐留以及在目前美國加州地區舊金山駐留期間創作的作品。伯克利市在市政廳展覽中為他頒發了2014購買獎，橘子郡創意美術館在「藍」展覽中為他頒發了2015最佳展覽。<span style=\"line-height:22.4px;\">Antonio</span>也喜歡工程設計和釀酒。</span> \r\n</p>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('6', '4', 'en', '[Mental Witness] Solo Exhibition by Antonio Rosario', 'z', 'zz1', '<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:25.6px;background-color:#FFFFFF;\">THE PICTURES OF OPENING</span></strong> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879655661.jpg\" title=\"750 _MG_2155副本.JPG\" /><img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879649124.jpg\" title=\"750 _MG_2143副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879715369.jpg\" title=\"750 _MG_2186副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606879755506.jpg\" title=\"750 _MG_2192副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/1460687982649.jpg\" title=\"750 DSC01260副本.JPG\" /> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:25.6px;background-color:#FFFFFF;\">THE PICTURES OF EXHIBITION</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:25.6px;background-color:#FFFFFF;\"></span></strong> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881014794.jpg\" title=\"750 IMG_0764副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881053268.jpg\" title=\"750 IMG_0767.jpg\" /><img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881075037.jpg\" title=\"750 IMG_0777副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881093494.jpg\" title=\"750 IMG_0782副本.JPG\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://chongqingdac.org/ueditor/php/upload/20160415/14606881104632.jpg\" title=\"750 IMG_0783副本.JPG\" /> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"color:#3E3E3E;font-size:14px;line-height:25.6px;background-color:#FFFFFF;\"><br />\r\n</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<span style=\"font-size:14px;\"><br />\r\n<strong><span style=\"color:#3E3E3E;line-height:25.6px;background-color:#FFFFFF;\">ABOUT EXHIBITION</span></strong></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"color:#AB1942;font-size:14px;line-height:1.6;\">&nbsp;&nbsp;</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">&nbsp; &nbsp;[Mental Witness] refers to experiencing events that do not necessarily have a physical occurrence but are still part of a human experience. This experience can reflect consciousness and non perceivable realities. Events are experienced as we strive in life. What is our attitude for handling our struggle? Is everything solemn?</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">&nbsp; &nbsp;As a witness, I am depicting internal experiences of relationships, society, environment, work, and life itself.</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:right;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:right;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">-Antonio Rosario</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:right;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">http://www.antoniofrosario.wix.com/arte</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:right;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<strong><span style=\"color:#000000;\"><span style=\"font-size:14px;\">R</span><span style=\"font-size:14px;line-height:25.6px;\">esident Artist:</span></span></strong><span style=\"color:#000000;font-size:14px;line-height:25.6px;\"></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:14px;color:#AB1942;line-height:25.6px;\"><span style=\"line-height:25.6px;\">Antonio Rosario</span>&nbsp;(PUR)</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"font-size:14px;\">Curator:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;line-height:22.4px;color:#AB1942;\">Tu Zeng</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"font-size:14px;\">Opening Party:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">2016.1.20 &nbsp;19:30</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<strong><span style=\"font-size:14px;\">Exhibition Duration:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">2016.1.21 - 2016.1.25</span><span style=\"color:#AB1942;font-size:14px;line-height:25.6px;\">（14:00 - 18:00）</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:14px;line-height:25.6px;color:#000000;\">Address:</span></strong> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"color:#AB1942;\"><span style=\"font-size:14px;line-height:25.6px;\">Dimensions Art Center</span></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:center;\">\r\n	<strong><span style=\"font-size:14px;\">ABOUT ANTONIO ROSARIO</span></strong> \r\n</p>\r\n<p class=\"p1\" style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"color:#AB1942;font-size:14px;line-height:1.6;\"></span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<br />\r\n</p>\r\n<p class=\"p1\" style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"color:#AB1942;font-size:14px;line-height:1.6;\">&nbsp; &nbsp;Antonio Rosario, born and raised in the island of Puerto Rico, is a painter who employs the human figure to explore and compose vivid situations.In addition to the human figure, Antonio is passionate about the use of color distortions and intricate patterns to communicate particular temperaments. He has studied painting at the Liga de Arte de San Juan and, for a year, at Firenze with the Santa Reparata International School of Art.</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;\">\r\n	<span style=\"font-size:14px;color:#AB1942;\">&nbsp; &nbsp;Antonio enjoyed composing a mural for a winery in France. He has created and exhibited as part of residencies at the Scuola Internationale di Grafica di Venezia, A\'jureka Art Residency in Sicily, and also in the San Francisco California area, where he currently resides. The city of Berkeley awarded him the purchase prize (2014) for the City Hall exhibition and the Orange County Creatives gallery awarded him “Best in Show” (2015) in the “Blue”exhibit. Antonio also enjoys engineering and winemaking.</span> \r\n</p>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('9', '6', 'zh', '藝術活動', '', '再要1', '<h3>\r\n	藝術活動\r\n</h3>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('10', '6', 'en', 'ssss', '', 'zz1', 'sssss', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('11', '7', 'zh', '團隊/顧問', '', '再要', '<div class=\"staff-div\" style=\"margin:0px;padding:52px 0px 0px 32px;font-size:13px;font-family:Arial, \'Microsoft Yahei\';\">\r\n	<div class=\"bto\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<strong>十 方 團 隊</strong> \r\n	</div>\r\n	<div class=\"nero\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				理事长\r\n			</p>\r\n曾途<br />\r\n<a href=\"mailto:zengtu@chongqingdac.org\">zengtu@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				藝務總聯\r\n			</p>\r\n邵麗樺<br />\r\n<a href=\"mailto:lihua@chongqingdac.org\">lihua@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				藝務助理\r\n			</p>\r\n張羅娜<br />\r\n<a href=\"mailto:luona@chongqingdac.org\">luona@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				總務\r\n			</p>\r\n胡克<br />\r\n<a href=\"mailto:huke@chongqingdac.org\">huke@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				工作坊總聯\r\n			</p>\r\n李濟深<br />\r\n<a href=\"mailto:jishen@chongqingdac.org\">jishen@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				媒体顾问\r\n			</p>\r\n陈灿<br />\r\n<a href=\"mailto:tc@chongqingdac.org\">tc@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				藝務助理\r\n			</p>\r\n何京<br />\r\n<a href=\"mailto:hejing@chongqingdac.rog\">hejing@chongqingdac.rog</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				藝務助理\r\n			</p>\r\n胡燕子<br />\r\n<a href=\"mailto:yanzi@chongqingdac.org\">yanzi@chongqingdac.org</a> \r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"staff-div\" style=\"margin:0px;padding:0px 0px 30px 32px;font-size:13px;font-family:Arial, \'Microsoft Yahei\';\">\r\n	<div class=\"bto\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<span style=\"background-color:#BFBFBF;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">十 方 顧 問 2017</span></strong></span> \r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://zacharyformwalt.com/\">Zachary Formwalt</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Zachary Formwalt (1979）　出生於美國佐治亞州奧爾巴尼，2008-2009年生活和工作於阿姆斯特丹，在Rijksakademie van beeldende kunsten參加駐留計劃。他畢業於芝加哥藝術學院（藝術學士學位）、西北大學（藝術碩士學位），並參加了Malmö藝術學院的研究生批評研究計劃。他的作品曾展出於：蒙特利爾VOX Centre de l\'image contemporaine（2013），博爾紮諾AR/GE Kunst Galerie Museum（2011），烏得勒支Casco—Office for Art, Design and Theory（2010），俄亥俄州哥倫布市Wexner Center for the Arts: The Box（2010）和巴塞爾Kunsthalle（2009）。2013年，其電影Unsupported Transit在鹿特丹國際電影節獲得了短篇電影金虎獎和Osnabrück歐洲媒體藝術節Di-alogpreis獎項。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://ramkatzir.com/\">Ram Katzir</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Ram Katzir（1969）　在以色列和荷蘭工作和生活。1993-1995在紐約庫柏聯合藝術學院學習雕塑和攝影，1995年在阿姆斯特丹裏特韋爾學院獲得學士學位。Katzir曾參與國際展覽，個展包括：1997年，荷蘭阿姆斯特丹Stedelijk美術館；1997年，以色列耶路撒冷以色列美術館；2005年，以色列赫茲利亞當代藝術美術館；2009年，日本京都藝術中心。Ram Katzir 的作品也曾展出於：2001年，紐約現代藝術美術館；2003年，鹿特丹建築雙年展；2007年，青森當代藝術中心；2009年，新潟水和大地藝術節。Katzir的雕塑被作為地標性作品放置在歐洲，目前他正在東京和北京進行新項目。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://pmpmpm.com/\">Persijn Broersen &amp; Margit Lukacs</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Persijin Broersen（1974）&amp; Margit Lukács（1973）　作品富於探尋當代視覺文化起源的特徵。通過合併選用来自媒體拍攝的連續鏡頭、數碼動畫和圖像製作的視頻作品，他們演示現實、（大眾）媒體和谎言在當代社會中如何互相强烈交织在一起。Broersen &amp; Lukács曾在阿姆斯特丹桑德伯格學院和Rijksakademie學習。他們的電影、裝置和平面美术作品曾在國際間展出。包括：悉尼雙年展（澳大利亞），阿姆斯特丹Stedelijk美術館（荷蘭），巴黎蓬皮杜藝術中心（法國），上海世博會（中國），廈門CEAC（中國），鹿特丹國際電影節（荷蘭），馬德裏Casa Enscendida（西班牙）等。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.rumikohagiwara.com/english/\">Rumiko Hagiwara</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Rumiko Hagiwara (1979)是居住于阿姆斯特丹的日本視覺藝術家。她在觀念藝術實踐中以她微妙的活動向人們建議了日常生活的其它觀念視角。她以其敏銳微妙的幽默感關注平凡的奇人趣事。這些微小的介入不做補充，卻將由於忽視而通常流逝的記憶強化，就如我們的注意力被日常生活的消遣消散。通過做出這些微妙細小的調整，她旨在喚回人們對看起來日常的境況的關心。她的作品經常以特定場地的裝置、照片和視頻的方式呈現。她於2000-2004期間就讀於the Tokyo Zokei Uni-versity（學士），2008-2009在阿姆斯特丹Rijksakademie van Beeldende Kunsten參加藝術家駐留計劃，2013-2014期間於AIR Antwerpen駐留。自2012年10月，Rumiko通過幾個由北京Institute for Provocation (IFP)、東京Tokyo Wonder Site (TWS)和廈門Chinese European Art Center機構的藝術家駐留項目為一個關於亞洲式幽默的獨立研究項目工作。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.buypichler.com/\">Louis Lüthi</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Louis Lüthi (1980)是生活在阿姆斯特丹的圖書設計師和作家。另在出版方面和包括Kasper Andreasen, Katinka Bock, Rossella Biscotti, Lonnie van Brummelen &amp; Siebren de Haan, Ellen Gallagher, and Benoît Maire在內的藝術家合作緊密。他是On the SelfReflexive Page（羅馬圖書，2010）和Infant A （巴拉圭出版社，2012）的作者。他的寫作曾刊登於Ubuweb和Dot Dot Dot, F. R. David，以及The Bulletins of the Serving Library。他也任教於Gerrit Rietveld學院。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.metahaven.net/Site/Metahaven.html\">Mihnea Mircan</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Mihnea Mircan (1976)是一位策展人和作家。他是Extra City Kunsthal的藝術總監，2011年在安特維普他策劃了A Slowdown at the Museum和1:1 Hans van Houwelingen &amp; Jonas Staal展覽。他在Extra City即將到來的項目包括一個Jean-Luc Moulène的個展和群展Allegory of the Cave Painting。2005-2006他曾是巴黎Le Pavillon, Palais de Tokyo的策展人。在布加勒斯特國家當代美術館，Mircan策劃的展覽包括：Sean Snyder (和Florin Tudor), 2007; SUBLIME OBJECTS, 2007; Video Works—Jaan Toomik, 2005; 和 特定場地干預展覽系列Under Destruction, 2004–2007. 他策展的其它項目包括：Image to be projected until it vanishes, Museion，布爾紮諾，2011；Hans van Houweligen個展Until it stops resembling itself，海牙Stroom，2011；History of Art，David Roberts藝術基金，倫敦，2010；以及Low-Budget Monuments, Romanian Pavilion,第52屆威尼斯雙年展，威尼斯，2007。他編輯了圖書Hans van Houwelingen: Undone (2012) ；最近他參與了展覽Six Lines of Flight: Shifting Geographies in Contemporary Art的簡介，舊金山現代藝術美術館，舊金山（2012） 和Pavel Büchler的專題論文Labor in Vain (2011)；和Nina Beier: Text (2010)。他的文章刊登於Mousse和Manifesta Journal等雜誌。Mircan生活和工作於安特維普。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.pilvitakala.com/\">Pilvi Takala</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Pilvi Takala (1981)生活和工作於赫爾辛基和伊斯坦布爾。她2006年畢業自芬蘭藝術學院（藝術碩士），她於2009-2010期間在阿姆斯特丹Rijksakademie參加藝術家駐留計劃，並於2011年獲得Dutch Prix de Rome 獎項，2013年獲得芬蘭國家視覺藝術獎和Emdash獎。她的個展包括：斯德哥爾摩Bonniers Konsthall；謝菲爾德Site美術館；不來梅Künstlerhaus；赫爾辛基Kunsthalle Erfurt, Kiasma當代藝術美術館；圖爾庫藝術美術館；Kunsthalle Lissabon；挪威Sorlandets Kunst美術館。她的作品曾展出於：紐約MoMA PS1和New Museum；巴黎Palais de Tokyo；S.M.A.K., Ghent；巴塞爾 Kunsthalle ；哈勒姆De Hallen；布魯塞爾Wiels；第四屆莫斯科雙年展；鹿特丹 Witte de With；第四屆布加勒斯特雙年展；第九屆伊斯坦布爾雙年展和赫爾辛基Kunsthalle。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.geeven.nl/\">Lotte Geeven</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Lotte Geeven (1980)是一位來自阿姆斯特丹的為獨立的地方縫製肖像的多媒體藝術家。這些簡單卻個性生動的肖像意在捕捉自主權的魔力并探究複雜的事物和力量超越我們的控制與一個特定的地方聯繫在了一起。例如The sound of the earth--一個錄自這個行星洞開最深處的聲音--是一幅泥土深處的抽象肖像。又如作品Sovereign--一輛翻轉的捷豹車在一個空曠的停車場繞著它的背緩慢地轉動--是一次對這個獨立的地點的含糊不清個性的探索。她的作品曾在中國、日本、義大利、紐約、英國、印度尼西亞、加拿大、德國、比利時和荷蘭展出。2010年Geeven被授予了對大部份革新藝術家來說極具聲望的Illy Prize。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.tinemelzer.eu/\">Tine Melzer</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Tine Melzer (1978)是一位藝術家、研究人員和教師，自2004年起在學院和大學任教。她曾於荷蘭阿姆斯特丹學習藝術和哲學，後獲得英國the University of Plymouth的博士學位。她關於跨媒介語言的作品在國際間發表，并於荷蘭阿姆斯特丹Stedelijk Museum、de Appel、比利時安特維普MuHkA Museum for contemporary Art、愛爾蘭都柏林Irish Museum of Modern Art、愛沙尼亞共和國塔林Kumu Art Museum、瑞士蘇黎世Helmaus展出。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://yuxf.1kapp.com/\">喻曉風</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			喻曉風 （1969） 現生活工作於重慶。2003在荷蘭阿姆斯特丹雷特費爾德藝術設計學院攝影系( Gerrit Rietveld Academy)獲藝術學士學位。2004年任教四川美術學院攝影專業至今。展覽包括：2003年，“確認”攝影展，荷蘭馮.蘇藤達畫廊；2003年“丹修頓國際視覺藝術展”荷蘭丹修頓；2004年 “轍印”中韓藝術家攝影展，中國重慶；2008年，“KUNSTVLAAI”視覺藝術展，荷蘭阿姆斯特丹； 2009年 “話石”PALATTI CHONGQING，中國重慶；2009年 “FORMAT”國際攝影節，中國重慶；2009年 “零零散散”當代視覺藝術作品展，中國成都；2010年連州國際攝影節，中國連州；2013年“言外之”視覺藝術展，中國澳門。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://ahmetogut.com/\">Ahmet Öğüt</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Ahmet Öğüt (1981) 是一個社會文化發起人、鏈接者、藝術家、交涉者和講師。居住和工作於伊斯布爾和阿姆斯特丹，作品媒介多樣。Öğüt於機構舉辦的個展包括：多倫多大學Blackwood畫廊（2014）， Stacion – Center for Contemporary Art Prishtina (2013)，斯圖加特Künstlerhaus Stuttgart（2012），伊斯坦堡SALT Beyoglu（2011），UC Berkeley藝術博物館的The MATRIX計劃（2010），不來梅Künstlerhaus（2009），巴塞爾Kunsthalle（2008）。他也參加了許多聯展，包括：第八屆深圳雕塑雙年展（2014），紐約第五屆視覺藝術表演雙年展13 performa（2013），第七屆利物浦雙年展（2012），第十二屆伊斯坦堡雙年展（2011），Trickster Makes This World, Nam June Paik 藝術中心（2010），紐約New Museum三年展（2009），第五屆柏林當代藝術雙年展（2008）。Ögüt曾參加數個駐留項目， 如Delfina Foundation and Tate Modern (2012), 瑞典IASPIS (2011), 阿姆斯特丹Rijksakademie van Beeldende Kunsten（2007-2008）。曾任教於荷蘭 Dutch Art Institute（2012），荷蘭De Volkskrant Beeldende Kunst Prijs 2011（2011），德國Kunstpreis Europas Zukunft, Museum of Contemporary Art（2010）。2009年他和Banu Cennetoğlu聯合代表土耳其參與了第53屆威尼斯雙年展。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://chongqingdac.org/index.php/www.meiyalin.com\">林美雅</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			林美雅（1979），生活工作於阿姆斯特丹，畢業於阿姆斯特丹桑德伯格研究所，並參與過荷蘭皇家學院藝術家駐留計畫。作品曾在阿姆斯特丹市立博物館、廈門CEAC、海牙Filmhuis、徐州Architecture Museum 等地展出，您可訪問她的個人網站了解更多mayyalin.com\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://hanlei.artron.net/\">韓 磊</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			1967 出生於河南開封，1989 畢業於中央工藝美術學院書籍藝術系，現工作、生活於北京。从1996年至2014年共举办個展12次，包括：2014，Spiral - 韓磊個展, M97畫廊, 上海；2012，勿妄我： 韓磊個展, M97畫廊, 上海；2010，照相法： 韓磊+攝影, 瑪吉畫廊, 馬德里，西班牙。参与群展：2014，戴漢志：5000個名字，北京（UCCA）- 荷蘭2013，時代肖像——當代藝術30年，上海當代藝術博物館；2013，新建構： 中國八十至九十年代先鋒攝影, 刺點畫廊，香港；2010；中國攝影馬德里展 @ 世博會馬德里館，趣味的共同體——2000年以來的中國當代藝術，聖地牙哥，智利當代美術館（MAC）；2010，攝影劫-中國藝術家在第二屆馬德里攝影節，伊比利亞當代藝術中心, 北京；2009，連州國際攝影節；2008，在瓦倫西亞55天—中國當代藝術展，西班牙瓦倫西亞現代藝術博物館（IVAM），瓦倫西亞，西班牙；東方紅—中國當代影像藝術，瑪吉畫廊（馬德里），馬德里，西班牙；2007， 目測距離：當代中國攝影8人展覽，關山月美術館，深圳；溫存—關於記憶的十二種繪本，帝門藝術中心，北京-臺北；中國當代藝術展，光州美術館，光州，韓國；2006，連州國際攝影節，連州；中國先鋒攝影十人展，亞洲藝術中心，北京；中國先鋒20年，四方美術館，南京；2005，巴黎攝影博覽會，巴黎，法國；羅馬攝影節，羅馬，義大利；城市-重視：2005廣州攝影雙年展，廣東美術館，廣州；2004，羅馬攝影節， 羅馬，義大利；遊春，亦安畫廊，上海；如果你是收藏家，亦安畫廊，上海；錯覺，亦安畫廊，上海；紫禁城國際攝影展，故宮，北京；三藩市國際攝影博覽會，三藩市，美國；交叉：當代油畫和攝影，前波畫廊，紐約，美國；風景，外灘三號、滬申畫廊，上海，中國等等。您可登陸韓磊的個人網站了解更多。\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.lizhanyang.cn/\">李占洋</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			1969 生於中國吉林長春，生活和工作在重慶。曾舉辦個展包括：2003&nbsp;&nbsp;&nbsp;《人間萬象》，藝術檔倉庫（CAAW），中國，北京；2007&nbsp;&nbsp;&nbsp;《裸露的人性》，朱屺瞻美術館，中國，上海；2008 &nbsp;&nbsp;《“&nbsp;租”–收租院》，麥勒畫廊&nbsp;北京－盧森，中國，北京；2010&nbsp;&nbsp;&nbsp;《中國病人》，“七九八藝術區”白盒子藝術館，中國，北京；2012&nbsp;&nbsp;《噩夢》，麥勒畫廊&nbsp;北京－盧森，中國，北京；2013&nbsp;&nbsp;&nbsp;《香蕉》，器·Haus空間，中國，重慶；主要聯展有：2004 &nbsp;&nbsp;《2004武漢首屆美術文獻提名展》，湖北美術學院美術館，中國，武漢；2005&nbsp;《寬容與同一：聚焦中國》，自由視覺藝術學院，荷蘭，海牙；2006&nbsp;《麻將–中國當代藝術希克收藏展》，漢堡美術館，德國，漢堡；2007&nbsp;《藝術的溫躍層–亞洲新浪潮》，藝術和媒體技術中心（ZKM），德國，卡爾斯魯厄；2007&nbsp;《麻將–中國當代藝術希克收藏展》，薩爾茲堡美術館，奧地利，薩爾茲堡；2008&nbsp;《麻將–希克中國現代藝術收藏展》，加利福尼亞大學，伯克利美術館，太平洋電影文獻館，&nbsp;美國，伯克利；2008&nbsp;《啊，我們——中國當代藝術三十年回顧展》，國家大劇院，中國，北京；2009&nbsp;《第十一屆全國美術作品展覽》，中國美術館，中國，北京；2009&nbsp;&nbsp;&nbsp;《BEG&nbsp;BORROW&nbsp;AND&nbsp;STEAL，Rubell&nbsp;Family&nbsp;Collection》，魯貝爾家族當代藝術金會，美國，邁阿密；2010&nbsp;《事物狀態–中比當代藝術交流展》，中國美術館，中國，北京；2012 &nbsp;《雕塑中國，中央美術學院雕塑創作回顧展》中央美術學院，中國，北京；2014 &nbsp;《拆掉那堵牆》，魯迅美術學院、瀋陽天地 ，中國，瀋陽；2014&nbsp;&nbsp;&nbsp;《月影–韓國昌原國際雕塑展》，昌原文信美術館，韓國，昌原；2014&nbsp;&nbsp;&nbsp;《再雕塑–2014三官殿1號藝術展》，湖北美術館，中國，武漢等。您可搜索其個人網站http://www.lizhanyang.cn/瞭解更多。\r\n		</div>\r\n		<div>\r\n			<br />\r\n		</div>\r\n	</div>\r\n</div>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('12', '7', 'en', 'CHONGQING AIR STAFF', '', 'zz', '<div class=\"staff-div\" style=\"margin:0px;padding:52px 0px 0px 32px;font-size:13px;font-family:Arial, \'Microsoft Yahei\';\">\r\n	<div class=\"bto\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<a class=\"nf\">CHONGQING AIR STAFF</a> \r\n	</div>\r\n	<div class=\"nero\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				General Director\r\n			</p>\r\nTu Zeng&nbsp;<br />\r\n<a href=\"mailto:zengtu@chongqingdac.org\">zengtu@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				Head of Ateliers\r\n			</p>\r\nLihua Shao<br />\r\n<a href=\"mailto:lihua@chongqingdac.org\">lihua@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				Facilitator Ateliers\r\n			</p>\r\nLuona Zhang<br />\r\n<a href=\"mailto:luona@chongqingdac.org\">luona@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				General Services\r\n			</p>\r\nKe Hu<br />\r\n<a href=\"mailto:huke@chongqingdac.org\">huke@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				Head of Workshop\r\n			</p>\r\nJishen Li<br />\r\n<a href=\"mailto:jishen@chongqingdac.org\">jishen@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				Media Consultant\r\n			</p>\r\nTony Chen<br />\r\n<a href=\"mailto:      tc@chongqingdac.org\">tc@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				Facilitator Ateliers\r\n			</p>\r\nJing He<br />\r\n<a href=\"mailto:hejing@chongqingdac.org\">hejing@chongqingdac.org</a> \r\n		</div>\r\n		<div class=\"nerone\" style=\"margin:0px;padding:0px;font-size:13px;\">\r\n			<p class=\"nf\" style=\"font-size:14px;font-weight:bold;\">\r\n				Facilitator Ateliers\r\n			</p>\r\nYanzi Hu<br />\r\n<a href=\"mailto:yanzi@chongqingdac.org\">yanzi@chongqingdac.org</a> \r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"staff-div\" style=\"margin:0px;padding:0px 0px 30px 32px;font-size:13px;font-family:Arial, \'Microsoft Yahei\';\">\r\n	<div class=\"bto\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<a class=\"nf\">CHONGQING AIR ADVISORS 2017</a> \r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://ramkatzir.com/\">Ram Katzir</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Ram Katzir (1969) lives and works in Israel and the Netherlands. He studied sculpture and photography at The Cooper Union School of Art in New York (1993-94) and received a Bachelor’s degree from the Rietveld Academy in Amsterdam in 1995. Katzir has exhibited internationally and had solo exhibitions at the Stedelijk Museum, Amsterdam, The Netherlands (1997), The Israel Museum in Jerusalem, Israel (1997), The Herzliya Museum of Contemporary Art, Israel (2005) and Kyoto Art Center in Japan (2009). Ram Katzir’s work has also been exhibited at the Museum of Modern Art, New York (2001), the Architecture Biennale Rotterdam (2003), Aomori Contemporary Art Center (2007) and Niigata Water and Land Art Festival (2009). Katzir\'s public sculptures have been placed in land mark locations across Europe and he is currently working on new projects for Tokyo and Beijing.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://pmpmpm.com/\">Persijn Broersen &amp; Margit Lukacs</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Persijn Broersen (1974) en Margit Lukács (1973) create work that is characterized by a quest for the sources of contemporary visual culture. With video pieces that incorporate filmed footage, digital animation and images appropriated from the media they demonstrate how reality, (mass) media and fiction are strongly intertwined in contemporary society. Broersen &amp; Lukács studied at the Sandberg Institute and at the Rijksakademie in Amsterdam. Their films, installations and graphic work have been shown internationally, including: Biennale of Sydney (AUS), Stedelijk Museum Amsterdam (NL), Centre Pompidou Paris (FR), Shanghai World Expo (CN), CEAC Xiamen (CN), International Filmfestival Rotterdam (NL), Casa Enscendida, Madrid (ESP) and more.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://zacharyformwalt.com/\">Zachary Formwalt</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Zachary Formwalt (1979) born in Albany, Georgia (US) has been living and working in Amsterdam since 2008, where he was a resident at the Rijksakademie van beeldende kunsten until 2009. He is a graduate of the School of the Art Institute of Chicago (BFA) and Northwestern University (MFA) and attended the Critical Studies Postgraduate Program at the Malmö Art Academy. He has presented solo projects at VOX Centre de l\'image contemporaine, Montreal (2013); AR/GE Kunst Galerie Museum, Bolzano (2011); Casco—Office for Art, Design and Theory, Utrecht (2010); Wexner Center for the Arts: The Box, Columbus, OH (2010); and Kunsthalle Basel (2009). In 2013, his film, Unsupported Transit, received a Tiger Award for Short Films at the International Film Festival Rotterdam (NL) and the Di-alogpreis at the European Media Art Festival, Osnabrück (DE).\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.geeven.nl/\">Lotte Geeven</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Lotte Geeven (1980) is a multi-media artist from Amsterdam creating tailor-made portraits of sovereign places. These simple portraits with a graphical character aim to envelope the magic of autonomy and explore complex matter &amp; power beyond our control related to a specific place. For example The sound of the earth –a sound recording from the deepest open hole in the planet- is a portrait of the abstract deep earth. Or the work Sovereign -an upside down Jaguar spinning on it’s back in slow motion in an empty parking lot- is an exploration of the ambiguous character of this sovereign location. Her work has been amongst other shown in China, Japan, Italy, New York, The UK, Indonesia, Canada, Germany, Belgium and the Netherlands. In 2010 Geeven was awarded with the prestigious Illy Prize for most innovative artist.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.rumikohagiwara.com/english/\">Rumiko Hagiwara</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Rumiko Hagiwara (1979) is a Japanese visual artist based in Amsterdam. Her subtle actions in conceptual art practices suggest people the different angles of perceptions in daily life. She draws attentions to ordinary phenomenon with her subtle sense of humors. These minimal interventions do not add, but rather address and point out the memories that usually pass by unnoticed as our attention is drawn away by the distractions of daily life. By making these subtle and tiny adjustments, she intends to return the viewers attention to these seemingly daily situations. Her art practices are often registered into site-specific installation, photo and video works. She studied at the Tokyo Zokei Uni-versity (BA)in Tokyo (2000-2004), She was an artist in residence at the Rijksakademie van Beeldende Kunsten in Amsterdam (2008-2009), AIR Antwerpen (2013-2014). Rumiko has been working for an individual research project about sense of humors on Asia since October 2012 via several artists in residency programs in Institute for Provocation (IFP), Beijing, Tokyo Wonder Site (TWS), Tokyo and Chinese European Art Center, Xiamen.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.buypichler.com/\">Louis Lüthi</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Louis Lüthi (1980) is a book designer and writer based in Amsterdam. In addition to working on publications in close collaboration with artists including Kasper Andreasen, Katinka Bock, Rossella Biscotti, Lonnie van Brummelen &amp; Siebren de Haan, Ellen Gallagher, and Benoît Maire, he is the author of On the SelfReflexive Page (Roma Publications, 2010) and Infant A (Paraguay Press, 2012). His writing has appeared on Ubuweb and in Dot Dot Dot, F. R. David, and The Bulletins of the Serving Library. He teaches at the Amsterdam Gerrit Rietveld Academy.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.metahaven.net/Site/Metahaven.html\">Mihnea Mircan</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Mihnea Mircan (1976) is a curator and writer. He is the artistic director of Extra City Kunsthal, Antwerp where in 2011 he curated A Slowdown at the Museum and 1:1 Hans van Houwelingen &amp; Jonas Staal. His upcoming projects at Extra City include a solo presentation by Jean-Luc Moulène and the group exhibition Allegory of the Cave Painting. From 2005 to 2006 he was curator of Le Pavillon, Palais de Tokyo, Paris. At the National Museum of Contemporary Art in Bucharest, Mircan curated exhibitions such as: Sean Snyder (with Florin Tudor), 2007; SUBLIME OBJECTS, 2007; Video Works—Jaan Toomik, 2005; and the series of site-specific interventions Under Destruction, 2004–2007. His other curatorial projects include: Image to be projected until it vanishes, Museion, Bolzano, 2011; the solo exhibition of Hans van Houweligen Until it stops resembling itself, Stroom Den Haag, Den Haag, 2011; History of Art, the, David Roberts Art Foundation, London, 2010; and Low-Budget Monuments, Romanian Pavilion, 52nd Venice Biennale, Venice, 2007. He edited the book Hans van Houwelingen: Undone (2012) and has recently contributed to the catalog of the exhibition Six Lines of Flight: Shifting Geographies in Contemporary Art, San Francisco Museum of Modern Art, San Francisco, 2012 and to monographs of Pavel Büchler, Labor in Vain (2011), and of Nina Beier, Nina Beier: Text (2010). His writing appears in magazines such as Mousse and Manifesta Journal. Mircan lives and works in Antwerp.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.pilvitakala.com/\">Pilvi Takala</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Pilvi Takala (1981) lives and works in Helsinki and Istanbul. She graduated from the Finnish Academy of Fine Arts in 2006 (MFA), was artist-in-residence at Rijksakademie, Amsterdam 2009-2010 and won the Dutch Prix de Rome 2011, Finnish State Prize for Visual Arts and Emdash Award 2013. Her solo exhibitions include Bonniers Konsthall, Stockholm; Site Gallery, Sheffield; Künstlerhaus Bremen; Kunsthalle Erfurt, Kiasma Museum of Contemporary Art, Helsinki; Turku Art Museum; Kunsthalle Lissabon; Sorlandets Kunstmuseum, Norway. Her work has been shown in MoMA PS1 and New Museum, New York; Palais de Tokyo, Paris; S.M.A.K., Ghent; Kunsthalle Basel; De Hallen Haarlem; Wiels, Brussels; 4th Moscow Biennial; Witte de With, Rotterdam; 4th Bucharest Biennial; 5th Berlin Biennial; 9th Istanbul Biennial and Kunsthalle Helsinki.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.tinemelzer.eu/\">Tine Melzer</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Tine Melzer (1978) works as artist and researcher and teaches at academies and universities since 2004. She studied Fine Arts and Philosophy in Amsterdam, NL, and received her doctoral degree from the University of Plymouth, UK. Her transdisciplinary work on language is internationally published and has been shown at Stedelijk Museum Amsterdam, NL, de Appel, Amsterdam, NL, MuHkA Museum for contemporary Art, Antwerp, BE, Irish Museum of Modern Art, Dublin, IR, Kumu Art Museum, Tallinn, EST, Helmaus Zürich, CH.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://yuxf.1kapp.com/\">XiaoFeng Yu</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Xiaofeng Yu (1969) lives and works in Chongqing. Gerrit Rietveld Academy, photography department, Amsterdam/NL, 2000-2003.Teaches at the photography Department of SiChuan Fine Art Institute from 2004. 2003 Identified, Galerie Van Zoetendaal, Amsterdam/NL；2003 Kaap Helder, an international art exhibition in Den Helder/NL；2004 Trace, Photographer from korea and China, Chongqing/China；2008 Palatti Kunstvlaai, Amsterdam/NL；2009 Speaking Stone- Palatti chongqing, 501 art center, Chongqing/China；2009 Format Photography Festival, Tank loft art center,Chongqing/China；2009 Linglingsansan, Sichuan University, Chengdu/China；2010 Mixed Dacron, lianzhou International Photo Festival, lianzhou/China；2013 Beyond Words, Macau Literary Festival, Macau/China.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://ahmetogut.com/\">Ahmet Öğüt</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Ahmet Öğüt (1981) is a socio-cultural initiator, mediator, artist, negotiator and lecturer, who lives and works in Istanbul and Amsterdam. Working across a variety of media, Öğüt\'s institutional solo exhibitions include Blackwood Gallery, University of Toronto (2014), Stacion – Center for Contemporary Art Prishtina (2013), Künstlerhaus Stuttgart, Stuttgart (2012) SALT Beyoglu, Istanbul (2011), The MATRIX Program at the UC Berkeley Art Museum (2010), Künstlerhaus Bremen (2009) and Kunsthalle Basel (2008). He has also participated in numerous group exhibitions, including 8th Shenzhen Sculpture Biennale (2014), Performa 13, The Fifth Biennial of Visual Art Performance, New York (2013), 7th Liverpool Biennial (2012), 12th Istanbul Biennial (2011), Trickster Makes This World, Nam June Paik Art Center (2010), New Museum Triennial, New York (2009) and 5th Berlin Biennial for Contemporary Art, Berlin (2008). Ögüt has completed several residency programs such as Delfina Foundation and Tate Modern (2012), IASPIS, Sweden (2011), Rijksakademie van Beeldende Kunsten in Amsterdam (2007-2008). Has taught at the Dutch Art Institute, Netherlands (2012), Finnish Academy of Fine Arts, Finland (2011 and 2013), Yildiz Teknik University, Turkey (2004-2006), among others. Ögüt was awarded with the Visible Award for the Silent University (2013), the special prize of the Future Generation Art Prize, Pinchuk Art Centre, Ukraine (2012), De Volkskrant Beeldende Kunst Prijs 2011, Netherlands (2011), and Kunstpreis Europas Zukunft, Museum of Contemporary Art, Germany (2010). He co-represented Turkey at the 53rd Venice Biennale together with Banu Cennetoğlu (2009).\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.meiyalin.com/\">MeiYa Lin</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			MeiYa Lin (1979) lives and works in Amsterdam. She graduated from the Sandberg Institute, Amsterdam, and was artist-in-residence at the Rijksakademie voor Beeldende Kunsten, Amsterdam. Her works have been exhibited at among others the Stedelijk Museum, Amsterdam, NL, CEAC, Xiamen, CN, Filmhuis, The Hague, NL, and the Architecture Museum of Xuzhou, CN.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://hanlei.artron.net/\">Lei Han</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			1967，Born in Kaifeng, Henan Province, China；1989，Graduated from Central Academy of Craft and Design, Beijing, China.Currently works and lives in Beijing, China. Total of 12 times solo exhibitions have been held from 1996 to 2014 include: 2014，Spiral: Han Lei solo show, M97 Gallery,Shanghai, china；2012，Don\'t Get Me Wrong: Han Lei solo show, M97 Gallery,Shanghai, china；2010，Han Lei：RUPTURA BREAKTHROUGH, Magee Art Gallery, Madrid, Spain；2010，in between: Han Lei Solo Exhibition, Talkang Space, Beijing, China；2010，The Light of Day: Han Lei Solo Exhibition, M97 Gallery,Shanghai, china； Participate in group exhibitions: 2014，Hans van dijk: 5000 names, Beijing（UCCA）- Holland；2013，Portrait of the times:30 Years of Chinese Contemporary，Power station of Art，Shanghai, China；New Framework: Chinese Avant-garde Photography from 1980s-90s，blindspot gallery，Hong Kong；Rencontres Internationales Paris/Berlin/2013；2010，China photographs Madrid @ Madrid Pavillion, EXPO, Shanghai；Community of Tastes – Chinese contemporary Art since 2000, Museo de Arte Contemporaneo(MAC), Santiago, Chile；Kalpastival of Photography, Iberia Center for Contemporary Art ，Beijing, China；2009，Lianzhou International Photo Festival, Lianzhou, Guangdong, China；55 Days in Valencia: Chinese Art Meeting, Instituto Valenciano de Arte Moderno (IVAM), Valencia, Spain；2008，The Oriental Rainbow: An Index of Images in China’s Urbanization Process, Magee Art Gallery (Madrid), Madrid, Spain；2007，Distance Estimated by Eyes Photography of Eight Chinese, Guan Shanyue Art Museum, Shenzhen, China；Lianzhou International Photo Festival, Lianzhou, China；Memories of Twelve Artists’ Works, Dimensions Art Center, Beijing &amp; Taipei, China；Chinese Contemporary Art Exhibition: The New Wind from China, Gwangju Museum of Art, Gwangju, Korea；2006，Lianzhou International Photo Festival, Lianzhou, Guangdong, China；Chinese Avant-garde Photography since 1990, Asia Art Center, Beijing, China；Chinese Contemporary Photography for 20 years, Square Gallery of Contemporary Art, Nanjing, China；Han Tsungwoo, Han Lei, Hong Lei Photography Exhibition, C5ART, Beijing, China, and so on. Please feel free to log in Hanlei’s website to learn more.\r\n		</div>\r\n	</div>\r\n	<div class=\"leftone\" style=\"margin:0px;padding:0px 0px 10px;font-size:12px;font-family:\'Arial Black\';\">\r\n		<div class=\"lefttwo\" style=\"margin:0px;padding:0px;\">\r\n			<a target=\"_blank\" class=\"nf advisor-url\" href=\"http://www.lizhanyang.cn/\">Zhanyang Li</a> \r\n		</div>\r\n		<div class=\"xg\" style=\"margin:0px;padding:6px 0px 0px;font-size:18px;\">\r\n			&nbsp;/&nbsp;\r\n		</div>\r\n		<div class=\"leftthree\" style=\"margin:0px;padding:10px 0px 0px;color:#A2A2A3;\">\r\n			Zhanyang Li，1969 Born in Changchun, Jilin Province, China, Lives and works in Chongqing, China. Solo Exhibitions include 2013 《 Banana》, Organhaus Art Space, Chongqing, China; 2012 《The Nightmare》, Galerie Urs Meile, Beijing-Lucerne, Beijing, China; 2010 《Chinese Patients》, Dashanzi Art District white box museun of art, Beijing, China; 2009 《Libido》, Galerie Urs Meile, Beijing-Lucerne, Lucerne, Switzerland; 2008 《‘ Rent’ – Rent Collection Yard》, Galerie Urs Meile, Beijing-Lucerne, Beijing, China; 2007 《 The Naked Human Body 》, Zhu Qizhan Museum, Shanghai, China; 2006 《Scenes》, Galerie Urs Meile, Beijing-Lucerne, Lucerne, Switzerland; 1998 《Li Zhanyang’s Scluptures》, Alleyway Gallery of the Central Academy of Fine Arts, Beijing, China; 2014 《Street–Garden,Solo Exhibition of Li Zhanyang》, Being 3 Art Gallery, Bejing China; Group Exhibitions include 2014 《The Shadow of theMoon Changwon Sculpture Biennale 2014》，Changwon, Korea; 2014 《Re-Sculpture 1Sanguandian Art 2014 》,HUBEI MUSEUM OF ART ,Wu han, China; 2014 《 Nanjing International Art Festival Work Collections》, Nanjing International Expo Contro, Nanjing China;2014 《 LESSER LOGIC-LINGUISTIC ENCODING AND DISCURSIVE EXPERSSION IN CONTEMPORARY ART 》,PARKVIEW GREEN ART FESTIVAL 2014, Beijing, China; 2013 《28 Chinese, Rubell Family Collection 》/ Contemporary Arts Foundation, Miami, USA;《 Collateral Event of the 55th International Art Exhibition - La Biennale di Venezia Voice of the Unseen/ Chinese Independent art 1979-today》, Venice Arsenal Tese alle Nappe No. 91/Tesa di San Cristoforo No. 92-93-94, Venice, Italy;《 Portrait of The Times, 30 years of Chinese Contemporary Art》, Power Station of Art, Shanghai, China; 《 Contemporary Art in China》, Zhong Gallery Gmbh, Berlin, Germany; 2012 《 The Second Session of the International Art Biennale In the West of China 2012》, Yinchuan Cultural Arts Center, Yinchuan, China;《 Magnanimity – Collection of Atypical Works by 21 Chinese Artists》, Dashanzi Art District White Box Museum of Art, Beijing, China;《National Exhibition of Art Works in Celebration of 85th Anniversary of the Chinese People’s Liberation Army (PLA) – the 12th Exhibition of Art Works of the Whole Army》, National Art Museum of China (NAMOC), Beijing, China; 《Hundred Years of the National Museum of China – Exhibition of Hundred Years of Chinese Sculpture Works》, National Museum of China, Beijing, China;《Environment Spirit, 2012 Western China International Art Biennale》, TianYe Art Museum,Yinchuan, China;《The 1st Project of the 4th Guangzhou Triennial – Disenchantement of Chinese Imagination》, Guangdong　Museum of Art, Guangzhou, China; You can search http://www.lizhanyang.cn/ to know more information about Zhanyang Li.\r\n		</div>\r\n		<div>\r\n			<br />\r\n		</div>\r\n	</div>\r\n</div>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('17', '8', 'zh', '關於', '', '', '<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'arial black\', \'avant garde\';\">\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"background-color:#A5A5A5;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">概 述</span></strong></span><span style=\"background-color:#7F7F7F;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\"></span></strong><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\"></span></strong></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:14px;font-family:宋体;\">十方藝術中心</span><span>(</span><span style=\"font-size:14px;font-family:宋体;\">重慶國際藝術家駐留計劃</span><span>)</span><span style=\"font-size:14px;font-family:宋体;\">位於中國中部城市重慶，是旨在促進藝術及文化研究與當代中國社會社群發展互動的文化藝術機構，致力於藝術文化同時也是一個致力於幫助處於成長期的國際藝術家、批評家和策展人的當代藝術和文化交流平臺及藝術家駐留機構。</span><span style=\"font-family:宋体, SimSun;\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp; &nbsp;</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp; &nbsp;&nbsp;&nbsp;</span><span style=\"font-size:14px;font-family:宋体;\">十方藝術中心成立於</span><span>2013</span><span style=\"font-size:14px;font-family:宋体;\">年，坐落於重慶九龍藝術區一所</span><span>3000</span><span style=\"font-size:14px;font-family:宋体;\">㎡的前藝術學院內。十方藝術中心可以同時為</span><span>20</span><span style=\"font-size:14px;font-family:宋体;\">名藝術家提供帶起居間的工作室，一個</span><span>550</span><span style=\"font-size:14px;font-family:宋体;\">㎡的展覽空間，以及主要的創作支持。</span><span style=\"font-family:宋体, SimSun;\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp; &nbsp;&nbsp;&nbsp;</span><span style=\"font-size:14px;font-family:宋体;\">十方藝術中心為藝術家提供藝術、理論以及製作上的支援，並致力於創造一個讓國際和中國的參與藝術家都能夠成長並成長為傑出藝術家的環境，幫助他們深化其獨立創作或協作的能力。</span><span style=\"font-family:宋体, SimSun;\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:14px;font-family:宋体;\">駐留計劃擁有一個不斷發展的中國及國際藝術顧問團隊的支持。他們將不定期訪問中心駐留藝術家工作室，並為藝術家提供研究、創作和公眾展示方面的交流指導。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;\">我們根據每年的公開申請挑選駐留藝術家，為期3——12個月。</span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"background-color:#A5A5A5;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">我 們 提 供</span></strong></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-size:4px;font-family:宋体, SimSun;\"><strong><br />\r\n</strong></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-size:4px;font-family:宋体, SimSun;\"><strong><span style=\"font-family:宋体, SimSun;\"><strong>▪</strong></span><strong><span style=\"font-size:10px;font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;</span></strong></strong></span><span style=\"font-size:14px;font-family:宋体, SimSun;\">一個鼓勵、刺激國際和中國成長中的藝術家、批評家、策展人專業發展的環境。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">&nbsp; &nbsp;</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\"><strong>▪</strong></span><strong><span style=\"font-size:10px;font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;</span></strong><span style=\"font-size:14px;font-family:宋体;\">一個中國當代藝術文化與中國當下社會社群的橋梁，一個多維文化間的專業交流平臺。</span><span style=\"font-family:宋体, SimSun;\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\"><span><strong>▪</strong></span><strong><span style=\"font-size:10px;font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;</span></strong><span style=\"font-size:14px;font-family:宋体;\">圍繞著以藝術的當代性為核心，多元價值碰撞的演講、展覽和論壇。</span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-size:14px;background-color:#A5A5A5;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">聯 系 我 們</span></strong></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-size:14px;background-color:#A5A5A5;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\"></span></strong></span><a href=\"http://chongqingdac.org/ss/?action-mesch\"><span style=\"font-family:宋体, SimSun;color:#00B0F0;\">请点击发送站内消息</span></a>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<a href=\"http://ditu.google.cn/maps?client=aff-cs-360se&amp;q=%E5%AE%98%E5%AE%B6%E6%9E%97&amp;um=1&amp;ie=UTF-8&amp;hl=zh-CN&amp;sa=N&amp;tab=wl\" target=\"_self\"><span style=\"font-family:宋体, SimSun;\">地址：</span><span style=\"font-family:宋体, SimSun;\"><span style=\"color:#00B0F0;\">重慶市九龍坡區黃桷坪官家林190號 十方藝術文化創意中心</span></span></a>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n		<span style=\"font-family:宋体, SimSun;\">郵箱：<a href=\"http://mailto:info@chongqingdac.org/\" target=\"_self\">info@chongqingdac.org</a></span><span style=\"font-family:宋体, SimSun;\"><strong>&nbsp;</strong></span>\r\n	</p>\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<a href=\"http://www.transartists.org/\" target=\"_self\"><span></span></a>\r\n</p>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('18', '8', 'en', 'about', '', '', '<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'arial black\', \'avant garde\';\">GENERAL INFORMATION</span><span><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\"></span><span style=\"font-size:14px;font-family:\'times new roman\';\">DAC &amp; CHONGQING AIR, located in Chongqing of central China, aims at enhancing development and interaction of art and culture research with modern society in mainland China, dedicating to assisting international artists, critics, writers, and curators emerging to mid-career as an exchange platform of contemporary art and culture.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><span style=\"font-family:arial, helvetica, sans-serif;\"></span><span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">Founded in 2013, DAC &amp; CHONGQING AIR is located in the central art district of the city of Chongqing. The residency is housed in a 3000-square-meter former art academy building. As facilities, DAC &amp; CHONGQING AIR offers separate studios with incorporated and fully furnished living quarters for 20 artists, including a 550-square-meter exhibition space and necissities for creation.</span><span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;</span></span><span style=\"font-family:arial, helvetica, sans-serif;\"><br />\r\n<br />\r\n</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">DAC &amp; CHONGQING AIR provides residents with artistic, theoretical, and production support, and aims at creating an environment in which international and Chinese residents can thrive, excel, and deepen their individual or collaborative practices.</span><span style=\"font-family:arial, helvetica, sans-serif;\"><br />\r\n</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">The residency program collaborates with an expanding pool of advisors from home and abroad who pay irregular visits to the center to guide residents in the research, production, or public presentation of their work.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\">Artists are selected based on open application for a three to twelve months residency.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n<span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n<span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:16px;font-family:\'arial black\', \'avant garde\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:16px;font-family:\'arial black\', \'avant garde\';\">CONTACT AND INFORMATION</span><span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\"><br />\r\n</span><a href=\"http://chongqingdac.org/ss/?action-mes\"><span style=\"text-decoration:none;\">Click hear to leave a message</span></a>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<a href=\"http://ditu.google.cn/maps?client=aff-cs-360se&amp;q=%E5%AE%98%E5%AE%B6%E6%9E%97&amp;um=1&amp;ie=UTF-8&amp;hl=zh-CN&amp;sa=N&amp;tab=wl\" target=\"_self\"><span><span style=\"font-family:arial, helvetica, sans-serif;\">Address:</span><span style=\"color:#00B0F0;\">&nbsp;Huangjueping GuanJiaLin 190, Jiulongpo, Chongqing, CN.</span><span><br />\r\n</span></span></a>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Email:&nbsp;</span><a href=\"http://mailto:info@chongqingdac.org/\" target=\"_self\"><span>info@chongqingdac.org</span></a>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span>&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'arial black\', \'avant garde\';\">PARTNERS&nbsp;<span style=\"font-size:14px;font-family:Arial, \'Microsoft Yahei\';\"><br />\r\n</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Mondriaan Foundation, Amsterdam, The Netherlands</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<a href=\"http://www.mondriaanfonds.nl/\" target=\"_self\"><span>www.mondriaanfonds.nl</span></a>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'times new roman\';\"><span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\"></span>&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Transartists, Amsterdam, The Netherlands</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<a href=\"http://www.transartists.org/\" target=\"_self\"><span>www.transartists.org</span></a>\r\n</p>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('19', '9', 'zh', '社會項目', '', '', '<ul style=\"font-size:14px;font-family:Gotham, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n	<li>\r\n		<a href=\"http://211.149.161.219/sf/article/page?id=2\">社會項目</a>\r\n	</li>\r\n</ul>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('20', '9', 'en', 'Social Programs', '', '', '<ul style=\"font-size:14px;font-family:Gotham, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n	<li>\r\n		<a href=\"http://211.149.161.219/sf/article/page?id=2\">Social Programs</a>\r\n	</li>\r\n</ul>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('21', '10', 'zh', '駐留／工作坊', '', '', '<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;background-color:#BFBFBF;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">概 述</span></strong></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;</span></span><span style=\"font-size:14px;\">十方藝術中心爲有意在重慶駐留的藝術家提供2-12個月的居住和工作的可能性，駐留期間，中心工作人員及技术工作室將在创作、研究、發展、新作品以及新項目等方面給予駐留藝術家在實踐上的帮助。</span><span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>十方藝術中心擁有3000多平米的空間 ，包括每位藝術家30平米的獨立工作室和居室，550m²的项目空间及展厅的展廳，摄影棚、金属和木材的加工工作室，以及公共廚房和洗衣室等公用空間和設施。</span><span></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span>此外，中心的外邀顧問團隊覆盖當代藝術和藝術教育等多個領域，他们不定期的来访将給予藝術家专业上建设性的意見，爲藝術家提供更廣闊的國際平台。</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">　&nbsp;</span><span style=\"font-family:宋体;\">十方藝術中心可同時爲</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">20</span><span style=\"font-family:宋体;\">位藝術家提供獨立工作室。其中，將爲</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">3</span><span style=\"font-family:宋体;\">名畢業</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">3</span><span style=\"font-family:宋体;\">年內的新興中國籍藝術家和</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">3</span><span style=\"font-family:宋体;\">名國際藝術家保留席位。另有</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">14</span><span style=\"font-family:宋体;\">間工作室可供國際藝術家、策展人、作家申請，無年齡國籍限制。</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-align:justify;\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;background-color:#BFBFBF;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">申 請 步 驟</span></strong></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">　　</span><span>十方藝術中心接受藝術家、評論家、作家和策展人的申請。並爲申請人提供14間獨立工作室，對申請人無年齡國籍限制。我們特別鼓勵年輕的新興藝術家提出申請，並特別爲中國籍藝術家和國際藝術家各保留3個席位，但要求申請人畢業不超過3年。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">　　</span><span style=\"font-family:宋体;\">申請材料應通過互聯網以完整的</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">Zip</span><span style=\"font-family:宋体;\">或</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">PDF</span><span style=\"font-family:宋体;\">格式遞交。材料應包括完整的作品集、履曆表、一份簡短的個人描述、一封個人陳述書用以說明申請動機（可包含項目設想等）和其它相關信息。所有材料應以英文書寫。</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">　　</span><span style=\"font-family:宋体;\">作品集應包含本人近期作品（</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">10-20</span><span style=\"font-family:宋体;\">張中等分辨率的</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">JPG</span><span style=\"font-family:宋体;\">格式圖片，每張不小于</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">3MB</span><span style=\"font-family:宋体;\">），以及在線資料的網址鏈接，例如</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">Vimeo</span><span style=\"font-family:宋体;\">、</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">YouTube</span><span style=\"font-family:宋体;\">、網站或博客等。</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　完整的申請材料及下載鏈接應發送至&nbsp;<span style=\"font-family:Arial, \'Microsoft Yahei\';\"><a href=\"http://mailto:info@chongqingdac.org/\" target=\"_self\">info@chongqingdac.org</a>，材料不完整將不被納入考慮範圍。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　由</span><a href=\"http://chongqingair.org/index.php/staffadvisors\" target=\"_self\"><span>國際顧問</span></a><span style=\"font-size:14px;font-family:宋体, SimSun;\">組成的陪審團將于2個月內評審材料。</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">　　</span><span style=\"font-family:宋体;\">申請成功後，申請人將收到郵件通知和一封確認信函，信函將對申請人的基金申請提供可能性幫助。十方藝術中心將盡可能幫助申請人募集資金。相關程序將和每位申請人單獨討論。但申請人對固定資金全權負責。</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　<span style=\"font-family:宋体;\">當贊助人確認後，十方藝術中心工作人員和申請人將就駐留計劃做出日程安排。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　<span style=\"font-family:宋体;\">申請人將收到的所有相關信息都以英文書寫。申請人也應該能夠與十方藝術中心工作人員進行英語交流。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　<span style=\"font-family:宋体;\">在十方藝術中心駐留計劃開始前</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">5</span><span style=\"font-family:宋体;\">個月，所有的非中國籍申請人應前往其所在國家中國使館申請簽證。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span>&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span>&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;background-color:#BFBFBF;\"><strong><span style=\"font-size:14px;font-family:宋体, SimSun;\">费用</span></strong></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　&nbsp;&nbsp;<span style=\"font-family:宋体;\">重慶十方藝術中心是一個非營利性組織。這意味著所有收入將由駐留獲得，用於維持駐留機構的運作和支付由邀請駐留藝術家和協作發生的管理花費。重慶十方藝術中心不提供任何形式的經濟贊助。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\"></span>&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-size:12px;\">　　&nbsp;</span><span style=\"font-family:宋体;\">由于</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">2014-2015</span><span style=\"font-family:宋体;\">年度由于重庆十方艺术中心对地区艺术文化发展的贡献，获得地方财政的项目支持，使得我们可以相应下调原有的艺术家驻留费用</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">28%</span><span style=\"font-family:宋体;\">。十方藝術中心驻留计划因由艺术家计划分为兩種不同的駐留費用。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">&nbsp;·</span><span style=\"font-family:宋体;\">對於沒有任何第三方支持</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">--</span><span style=\"font-family:宋体;\">如贊助或機構援助</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">--</span><span style=\"font-family:宋体;\">的藝術家，駐留所有費用為每月</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">500</span><span style=\"font-family:宋体;\">歐。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:Arial, \'Microsoft Yahei\';\">&nbsp;·</span><span style=\"font-family:宋体;\">對於有第三方支持的藝術家，包括機構支持級類似情況，駐留所有費用為每月</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">950</span><span style=\"font-family:宋体;\">歐。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;&nbsp;&nbsp; 重慶十方藝術中心基於以下原因理解保有兩種不同費用的需要：</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　十方藝術中心作為一個功能完整的駐留機構運營和維護含有事實花費，一方面包括場地租用費用、能源费、維修費用、網絡、電話、公共設施等；另一方面包含重慶十方藝術中心團隊日常運營中心的時間与精力投入，和顧問團隊前往重慶提供咨詢的相关投入。</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">　　我們相信才能並非總是仅仅以經濟的方式得到回報，十方藝術中心歡迎有贊助和無贊助的藝術家前來。為了能保持有效的運行，十方藝術中心需要支付費用，包括一部分為藝術家駐留付出的工作時間。</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><span style=\"font-family:宋体;\">　　對於無贊助的駐留藝術家，十方藝術中心以無償工作時間支助藝術家，以帮助其順利完成駐留创作，在這種情況下</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">500</span><span style=\"font-family:宋体;\">歐</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">/</span><span style=\"font-family:宋体;\">月的總費用僅包含其實際财物的花費。由於機構支持的藝術家有项目创作預算配额，十方藝術中心將把運行工作時間作為一個必要標準，不對機構藝術家提供類似义务贊助。</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\">&nbsp;驻留费用包含项</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:宋体, SimSun;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:宋体;\">無贊助獨立藝術家</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">500</span><span style=\"font-family:宋体;\">歐</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">/</span><span style=\"font-family:宋体;\">月和機構藝術家</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">950</span><span style=\"font-family:宋体;\">歐</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">/</span><span style=\"font-family:宋体;\">月駐留費用，包括一间</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">30</span><span style=\"font-family:宋体;\">平米的可</span><span style=\"font-family:Arial, \'Microsoft Yahei\';\">24</span><span style=\"font-family:宋体;\">小時使用的附帶起居室的獨立工作室，十方藝術中心所有設施，展覽空間，工坊技术支持，網絡，關於重慶的生活引導，少量的翻譯，由機場或火車站至藝術中心的交通費用。</span></span>\r\n</p>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('22', '10', 'en', 'Residency／Workshops', '', '', '<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'times new roman\';\"><span style=\"font-size:16px;font-family:\'arial black\', \'avant garde\';\">GENERAL INFORMATION</span><strong><br />\r\n</strong></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';text-indent:0em;\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">DAC(Dimensions Art Centre) &amp; CHONGQING AIR offers artists, critics, writers, and curators, the possibility of living and working in the city of Chongqing for two months to twelve months. Throughout the period of residency, the staff and the team of advisors provide practical assistance to residents in the creation, research, development and production of new works and projects.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">DAC &amp; CHONGQING AIR offers an independent 30-square-meter studio with incorporated living quarters, a 550-square-meter production and exhibition space, a public area with shared kitchen and laundry utilities, as well as&nbsp;<span style=\"font-family:宋体, SimSun;\">photographing&nbsp;</span>studio and metal, wood workshops.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\">Moreover, a team of external advisors from multiple fields of contemporary art and art education offers constructive advices and international perspectives to resident artists by paying irregular visits.<br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">20 independent studios are available in DAC &amp; CHONGQING AIR, reserving 3 studios each for emerging artists from home and abroad no more than 3 years after graduation,and 14 studios for international artists, curators and writers, with no limits on age or nationality.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'times new roman\';\"><span style=\"font-size:14px;font-family:\'andale mono\';\"></span><span style=\"font-size:16px;font-family:\'arial black\', \'avant garde\';\">APPLICATION PROCEDURE</span><span style=\"font-size:14px;font-family:\'andale mono\';\"><span style=\"font-size:12px;font-family:\'arial black\', \'avant garde\';\"></span><span style=\"font-size:12px;font-family:Arial, \'Microsoft Yahei\';\"></span></span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'times new roman\';\"><span style=\"font-size:14px;font-family:\'andale mono\';line-height:32px;\"><br />\r\n</span><span style=\"font-size:14px;\">DAC &amp; CHONGQING AIR welcome sapplications from artists, critics, writers, and curators, reserving 14 independent studios with no limits on age and nationality. Young emerging artists are especially encouraged to apply. DAC &amp; CHONGQING AIR reserves 3studios each for artists from home and abroad no more than 3 years after graduation.</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Applications are submitted to DAC &amp;CHONGQING AIR by Internet only, as Zip files or PDF file, and are accompanied by a full Portfolio, a Curriculum Vitae, a short biography, and a letter of motivation which may include a project proposal, and other relevant information. All materials should be written in English.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">The Portfolio should include 10 to 20 medium resolution JPG images of &nbsp;recent works, no smaller than 3 MB each, as well as links to online resources, such as Vimeo&nbsp;or Youtube&nbsp;channels,websites or blogs. &nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Download links and complete applications shoud&nbsp;be emailed to:&nbsp;</span><a href=\"mailto:info@chongqingdac.org\" target=\"_blank\"><span>info@chongqingdac.org</span></a>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Incomplete applications will not betaken into consideration.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">A panel of international&nbsp;</span><a href=\"http://chongqingdac.org/index.php/staffadvisors\" target=\"_blank\"><span>Advisors</span></a><span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;reviews the applications in two months.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">Upon a successful application, the applicant is notified by email, and receives both a letter of acceptance, as well as a letter of support concerning possible fundraising by the applicant . DAC &amp; CHONGQING AIR will aid as much as possible in the process of fundraising. Relevant procedures will be discussed individually with all applicants. Applicants bear sole responsibility for fixed assets.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">When funding has been secured,the staff &nbsp;of&nbsp; DAC &amp; CHONGQING AIR and the applicant will schedule the forthcoming residency.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">The applicant will receive all relevant information in English. The applicant should also be able to communicate with&nbsp;<br />\r\nthe DAC &amp; CHONGQING AIR staff in English.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">All non-Chinese applicants must apply for a visa from Chinese Embassy in their home countries five months before the start of a residency at DAC &amp; CHONGQING AIR.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:16px;font-family:\'arial black\', \'avant garde\';\">COSTS</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';line-height:32px;\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">DAC &amp; CHONGQING AIR functions as a non profit organization. This means that all income generated during residency has to be used in maintaining the organization operational and in covering costs from inviting and collaborating with residents. DAC &amp; CHONGQING AIR does not offer any kind of monetary sponsorship.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">As contributor to Y2014-2015 Local Art &amp; Culture Development, DAC &amp; CHONGQING AIR receives financial support from local government so as to adjust the original residence fee 28% lower. We maintains two different residency fees:</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">* For residents who do not benefit from any third party sponsorship, such as patronage or institutional aid, the residency fee amounts to 500 Euro per month all inclusive.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">* For residents who do benefit from a third party sponsorship, as well as for institutions and similar, the residency fee amounts to 950 Euro per month all inclusive.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">DAC &amp; CHONGQING AIR maintains two different fees out of following causes:</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">As a fully functional residency facility, on one hand DAC &amp; CHONGQING AIR spends factual costs on operation and maintenance as rents, energy, internet,telephone, utilities, and so forth, and on the other hand costs comprised of stuff employment of daily work and expenditures from international advisors to visit Chongqing.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">DAC &amp; CHONGQING AIR believes talent are not always rewarded financially and we welcome artists with fund or not. In order to remain functional, DAC &amp; CHONGQING AIR needs to cover daily expenditures and manpower of employment.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">&nbsp;</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">In the case of non-subsidized residents, DAC &amp; CHONGQING AIR stuff&nbsp; work for free for artist to make sure successful creation during residency. In such case, the 500 Euro per month fee covers only the factual cost. DAC &amp; CHONGQING AIR does not sponsor free working hour for artists with fund in similar way as institutions already have budgets allocated.</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:16px;font-family:\'arial black\', \'avant garde\';\">THE RESIDENCY FEE COMPOSITION</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-family:\'times new roman\';\"><span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;\"><br />\r\n</span></span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\">The residency fee of 500 Euro per month for independent non-funded artists, and 950 Euro per month for funded artists includes access to a 30 square meter studio with incorporated and furnished living quarters, all DAC &amp; CHONGQING AIR facilities, exhibition spaces, and workshops, Internet service, active guidance to the city of &nbsp;Chongqing, limited translations, and transport from airport or trainstation&nbsp;to the residency location.&nbsp;<br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n<br />\r\n</span>\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\';\">\r\n	<span style=\"font-size:14px;font-family:\'times new roman\';\"><br />\r\n</span>\r\n</p>', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('23', '11', 'zh', '1', '', '123\r\n456\r\nfr', '333<br />', null, '1');
INSERT INTO `gs_article_lang_info` VALUES ('24', '11', 'en', '2', '', '', '444<br />', null, '1');

-- ----------------------------
-- Table structure for gs_article_lang_main
-- ----------------------------
DROP TABLE IF EXISTS `gs_article_lang_main`;
CREATE TABLE `gs_article_lang_main` (
  `article_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `article_class_id` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  `article_origin` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `article_origin_address` varchar(255) DEFAULT NULL COMMENT '文章来源链接',
  `article_image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `article_link` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `article_start_time` timestamp NULL DEFAULT NULL COMMENT '文章有效期开始时间',
  `article_end_time` timestamp NULL DEFAULT NULL COMMENT '文章有效期结束时间',
  `article_publish_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章发布时间',
  `article_sort` tinyint(1) unsigned NOT NULL DEFAULT '255' COMMENT '文章排序0-255',
  `article_digest` tinyint(1) NOT NULL DEFAULT '0' COMMENT '精华等级（0非精华,1精华I，2精华II,3精华III  ）',
  `article_commend_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志0-未推荐，1-已推荐',
  `article_comment_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否允许评论1-允许，0-不允许',
  `article_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1-草稿、2-待审核、3-已发布、4-回收站',
  `article_publisher_name` varchar(50) DEFAULT NULL COMMENT '发布者用户名 ',
  `article_publisher_id` bigint(20) unsigned DEFAULT NULL COMMENT '发布者编号',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章类型1-管理员发布，2-用户投稿',
  `article_attachment_path` varchar(50) DEFAULT NULL COMMENT '文章附件路径',
  `article_image_all` text COMMENT '文章全部图片',
  `article_modify_time` timestamp NULL DEFAULT NULL COMMENT '文章修改时间',
  `article_share_count` int(10) unsigned DEFAULT '0' COMMENT '文章分享数',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='CMS文章表';

-- ----------------------------
-- Records of gs_article_lang_main
-- ----------------------------
INSERT INTO `gs_article_lang_main` VALUES ('4', '2', null, null, '/2016-05-08/864d035e-f374-46f5-9170-9dbc49164895.jpg', '', null, null, '2016-05-02 00:00:00', '255', '0', '0', '1', '3', 'admin', '0', '1', null, '[{\"id\":\"64c00e4be9a34da294dd207986709418\",\"path\":\"/2016-05-08/a99b0be6-a4e7-4cdd-932b-6c3842c38018.gif\"},{\"id\":\"0975e014e3e74fb3a9b0ee188f79d59f\",\"path\":\"/2016-05-08/363f11ff-896d-490a-ad0c-b8caa774c800.gif\"}]', null, '0');
INSERT INTO `gs_article_lang_main` VALUES ('6', '2', null, null, '/2016-05-08/e7792be3-4f56-46cd-8f1a-ba73000f9426.gif', '', null, null, '2016-05-08 00:00:00', '255', '0', '0', '1', '3', 'admin', '0', '1', null, null, null, '0');
INSERT INTO `gs_article_lang_main` VALUES ('7', '4', null, null, '', '', null, null, '2014-05-08 00:00:00', '255', '0', '0', '1', '3', 'admin', '0', '1', null, null, null, '0');
INSERT INTO `gs_article_lang_main` VALUES ('8', '4', null, null, '', '', null, null, '2015-05-09 19:16:20', '255', '0', '0', '1', '3', 'admin', '0', '1', null, null, null, '0');
INSERT INTO `gs_article_lang_main` VALUES ('9', '4', null, null, '', '', null, null, '2016-05-09 19:19:13', '255', '0', '0', '1', '3', 'admin', '0', '1', null, null, null, '0');
INSERT INTO `gs_article_lang_main` VALUES ('10', '4', null, null, '', '', null, null, '2015-05-09 19:20:19', '255', '0', '0', '1', '3', 'admin', '0', '1', null, null, null, '0');
INSERT INTO `gs_article_lang_main` VALUES ('11', '2', null, null, '/2016-05-13/084de8dc-c576-4e91-aa0b-1a9d90bfd5ce.jpg', '', null, '2016-05-14 00:00:00', '2016-05-09 00:00:00', '255', '0', '0', '1', '3', 'admin', '0', '1', null, null, null, '0');

-- ----------------------------
-- Table structure for gs_cms_article
-- ----------------------------
DROP TABLE IF EXISTS `gs_cms_article`;
CREATE TABLE `gs_cms_article` (
  `article_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `article_title` varchar(50) NOT NULL COMMENT '文章标题',
  `article_class_id` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  `article_origin` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `article_origin_address` varchar(255) DEFAULT NULL COMMENT '文章来源链接',
  `article_author` varchar(50) DEFAULT NULL COMMENT '文章作者',
  `article_abstract` varchar(140) DEFAULT NULL COMMENT '文章摘要',
  `article_content` text COMMENT '文章正文',
  `article_image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `article_keyword` varchar(255) DEFAULT NULL COMMENT '文章关键字',
  `article_link` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `article_goods` text COMMENT '相关商品',
  `article_start_time` timestamp NULL DEFAULT NULL COMMENT '文章有效期开始时间',
  `article_end_time` timestamp NULL DEFAULT NULL COMMENT '文章有效期结束时间',
  `article_publish_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章发布时间',
  `article_click` int(10) unsigned DEFAULT '0' COMMENT '文章点击量',
  `article_sort` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章排序0-255',
  `article_digest` tinyint(1) NOT NULL DEFAULT '0' COMMENT '精华等级（0非精华,1精华I，2精华II,3精华III  ）',
  `article_commend_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志0-未推荐，1-已推荐',
  `article_comment_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否允许评论1-允许，0-不允许',
  `article_verify_admin` varchar(50) DEFAULT NULL COMMENT '文章审核管理员',
  `article_verify_time` timestamp NULL DEFAULT NULL COMMENT '文章审核时间',
  `article_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1-草稿、2-待审核、3-已发布、4-回收站',
  `article_publisher_name` varchar(50) NOT NULL COMMENT '发布者用户名 ',
  `article_publisher_id` bigint(20) unsigned NOT NULL COMMENT '发布者编号',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章类型1-管理员发布，2-用户投稿',
  `article_attachment_path` varchar(50) DEFAULT NULL COMMENT '文章附件路径',
  `article_image_all` text COMMENT '文章全部图片',
  `article_modify_time` timestamp NULL DEFAULT NULL COMMENT '文章修改时间',
  `article_tag` varchar(255) DEFAULT NULL COMMENT '文章标签',
  `article_comment_count` int(10) unsigned DEFAULT NULL COMMENT '文章评论数',
  `article_attitude_1` int(10) unsigned DEFAULT '0' COMMENT '文章心情1',
  `article_attitude_2` int(10) unsigned DEFAULT '0' COMMENT '文章心情2',
  `article_attitude_3` int(10) unsigned DEFAULT '0' COMMENT '文章心情3',
  `article_attitude_4` int(10) unsigned DEFAULT '0' COMMENT '文章心情4',
  `article_attitude_5` int(10) unsigned DEFAULT '0' COMMENT '文章心情5',
  `article_attitude_6` int(10) unsigned DEFAULT '0' COMMENT '文章心情6',
  `article_title_short` varchar(50) DEFAULT '' COMMENT '文章短标题',
  `article_attitude_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章态度开关1-允许，0-不允许',
  `article_commend_image_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志(图文)',
  `article_share_count` int(10) unsigned DEFAULT '0' COMMENT '文章分享数',
  `article_verify_reason` varchar(255) DEFAULT NULL COMMENT '审核失败原因',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='CMS文章表';

-- ----------------------------
-- Records of gs_cms_article
-- ----------------------------
INSERT INTO `gs_cms_article` VALUES ('3', '12345', '1', '', '', '', '', '发发发发发发发发发方法', '/2016-04-28/c830d318-497f-40b7-b156-7a054d74047d.gif', null, '', null, null, null, '2016-04-26 14:41:08', '1', '2', '1', '1', '1', null, null, '3', 'admin', '0', '1', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '', '1', '0', '0', null);
INSERT INTO `gs_cms_article` VALUES ('4', 'wwwww', '1', '', '', '', '', 'wwwwwww', '', null, '', null, null, null, '2016-04-29 15:25:42', '0', '0', '0', '1', '1', null, null, '1', 'admin', '0', '1', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '', '0', '1', '0', null);

-- ----------------------------
-- Table structure for gs_cms_article_class
-- ----------------------------
DROP TABLE IF EXISTS `gs_cms_article_class`;
CREATE TABLE `gs_cms_article_class` (
  `class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号 ',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父ID',
  `class_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `class_sort` tinyint(1) unsigned DEFAULT '255' COMMENT '排序',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='cms文章分类表';

-- ----------------------------
-- Records of gs_cms_article_class
-- ----------------------------
INSERT INTO `gs_cms_article_class` VALUES ('1', null, '藝術活動', '1');
INSERT INTO `gs_cms_article_class` VALUES ('2', null, '新聞', '0');
INSERT INTO `gs_cms_article_class` VALUES ('3', null, '公眾活動', '2');
INSERT INTO `gs_cms_article_class` VALUES ('4', null, '网站文章', '255');

-- ----------------------------
-- Table structure for gs_cms_slide
-- ----------------------------
DROP TABLE IF EXISTS `gs_cms_slide`;
CREATE TABLE `gs_cms_slide` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_path` varchar(500) DEFAULT NULL,
  `slide_url` varchar(500) DEFAULT NULL,
  `slide_sort` int(1) DEFAULT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_cms_slide
-- ----------------------------
INSERT INTO `gs_cms_slide` VALUES ('1', '/2016-05-07/07550797-7b9f-41e6-bf21-1232fed2a6ce.jpg', 'http://11', '1');
INSERT INTO `gs_cms_slide` VALUES ('2', '/2016-05-07/6309f1b9-dc94-48f9-bad3-be51ded4c9fe.jpg', 'http://2', '2');
INSERT INTO `gs_cms_slide` VALUES ('3', '/2016-05-07/a62286c9-5018-4a46-a878-c83e3bd9c9b3.jpg', 'http://3', '3');

-- ----------------------------
-- Table structure for gs_find_password
-- ----------------------------
DROP TABLE IF EXISTS `gs_find_password`;
CREATE TABLE `gs_find_password` (
  `login_name` varchar(255) NOT NULL COMMENT '登录账号名',
  `created` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `random` varchar(255) DEFAULT NULL COMMENT '随机值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_find_password
-- ----------------------------
INSERT INTO `gs_find_password` VALUES ('gugu', '2016-03-25 13:39:02', 'xghj6l5ovqSAJcbE2DhyZZjmhZ5N');

-- ----------------------------
-- Table structure for gs_goods
-- ----------------------------
DROP TABLE IF EXISTS `gs_goods`;
CREATE TABLE `gs_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共表id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称（+规格名称）',
  `goods_jingle` varchar(50) NOT NULL COMMENT '商品广告词',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `gc_id` int(10) unsigned NOT NULL COMMENT '商品分类id',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_marketprice` decimal(10,2) NOT NULL COMMENT '市场价',
  `goods_serial` varchar(50) NOT NULL COMMENT '商家编号',
  `goods_click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `goods_salenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `goods_collect` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `goods_spec` text NOT NULL COMMENT '商品规格序列化',
  `goods_storage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品库存',
  `goods_image` varchar(100) NOT NULL DEFAULT '' COMMENT '商品主图',
  `goods_state` tinyint(3) unsigned NOT NULL COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `goods_verify` tinyint(3) unsigned NOT NULL COMMENT '商品审核 1通过，0未通过，10审核中',
  `goods_addtime` timestamp NULL DEFAULT NULL COMMENT '商品添加时间',
  `goods_edittime` timestamp NULL DEFAULT NULL COMMENT '商品编辑时间',
  `areaid_1` int(10) unsigned NOT NULL COMMENT '一级地区id',
  `areaid_2` int(10) unsigned NOT NULL COMMENT '二级地区id',
  `color_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '颜色规格id',
  `transport_id` mediumint(8) unsigned NOT NULL COMMENT '运费模板id',
  `goods_freight` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `goods_vat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `goods_commend` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品推荐 1是，0否 默认0',
  `goods_stcids` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `evaluation_good_star` tinyint(3) unsigned DEFAULT '5' COMMENT '好评星级',
  `evaluation_count` int(10) unsigned DEFAULT '0' COMMENT '评价数',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of gs_goods
-- ----------------------------
INSERT INTO `gs_goods` VALUES ('46', '100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟 绿色', '', '1', '官方店铺', '14', '103', '129.00', '358.00', '', '6', '0', '0', 'a:1:{i:239;s:6:\"绿色\";}', '122', '1_04418240378724556.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '239', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('47', '100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟 梅红', '', '1', '官方店铺', '14', '103', '129.00', '358.00', '', '1', '0', '0', 'a:1:{i:240;s:6:\"梅红\";}', '122', '1_04418240641767556.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '240', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('48', '100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟 蓝色', '', '1', '官方店铺', '14', '103', '129.00', '358.00', '', '1', '1', '0', 'a:1:{i:241;s:6:\"蓝色\";}', '121', '1_04418240795665638.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '241', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('49', '100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟 黑色', '', '1', '官方店铺', '14', '103', '129.00', '358.00', '', '3', '1', '0', 'a:1:{i:242;s:6:\"黑色\";}', '121', '1_04418240955916042.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '242', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('50', '100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟 橙色', '', '1', '官方店铺', '14', '103', '129.00', '358.00', '', '0', '0', '0', 'a:1:{i:243;s:6:\"橙色\";}', '122', '1_04418241398474746.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '243', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('51', '100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟 灰色', '', '1', '官方店铺', '14', '103', '129.00', '358.00', '', '4', '0', '0', 'a:1:{i:228;s:6:\"灰色\";}', '122', '1_04418242684128103.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '228', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('231', '100085', '至尊金奖 法国原瓶进口AOC红酒 任选一箱 红沙城堡红葡萄酒 原装进口', '全国唯一支持开瓶试饮7天无理由退换货', '1', '官方店铺', '630', '263', '899.00', '1688.00', '', '31', '12', '0', 'a:1:{i:403;s:12:\"原装进口\";}', '4988', '1_04423392298369303.jpg', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '0', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('232', '100086', '中华老字号 东阿阿胶桃花姬阿胶糕300g', '', '1', '官方店铺', '617', '250', '150.00', '168.00', '', '6', '2', '0', 'N;', '41', '1_04423411880302392.png', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '0', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('246', '100098', '1111 绿色 e2', '1111', '1', '官方店铺', '14', '81', '211.00', '1111.00', '111', '0', '0', '0', 'a:2:{i:239;s:6:\"绿色\";i:446;s:2:\"e2\";}', '1', '1_04931403208687929.png', '10', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3', '0', '239', '0', '0.00', '0', '1', ',2,', '5', '0');
INSERT INTO `gs_goods` VALUES ('247', '100098', '1111 梅红 e2', '1111', '1', '官方店铺', '14', '81', '211.00', '1111.00', '222', '0', '0', '0', 'a:2:{i:240;s:6:\"梅红\";i:446;s:2:\"e2\";}', '2', '1_04931403208687929.png', '10', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3', '0', '240', '0', '0.00', '0', '1', ',2,', '5', '0');
INSERT INTO `gs_goods` VALUES ('248', '100098', '1111 黑色 e2', '1111', '1', '官方店铺', '14', '81', '211.00', '1111.00', '333', '1', '0', '0', 'a:2:{i:242;s:6:\"黑色\";i:446;s:2:\"e2\";}', '3', '1_04931403208687929.png', '10', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3', '0', '242', '0', '0.00', '0', '1', ',2,', '5', '0');
INSERT INTO `gs_goods` VALUES ('249', '100099', '审核商品名称', '', '1', '官方店铺', '14', '0', '222.00', '1170.00', '111', '1', '0', '0', 'N;', '111', '1_05028085984323487.gif', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('250', '100009', '2014春款打底毛衫拼色毛衣 长袖套头针织衫 莺 绿色 e1', '', '1', '官方店铺', '14', '101', '179.00', '568.00', '00001', '0', '0', '0', 'a:2:{i:239;s:6:\"绿色\";i:442;s:2:\"e1\";}', '10', '1_04418211211965600.jpg', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '239', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('251', '100011', '新款 女款 拼接 不规则摆 长袖针织衫开衫 杏雨 白色 e2', '2014新款，特惠促销', '1', '官方店铺', '14', '108', '99.00', '483.00', '', '0', '0', '0', 'a:2:{i:249;s:6:\"白色\";i:446;s:2:\"e2\";}', '10', '1_04418253240878850.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '249', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('252', '100011', '新款 女款 拼接 不规则摆 长袖针织衫开衫 杏雨 紫色 e2', '2014新款，特惠促销', '1', '官方店铺', '14', '108', '99.00', '483.00', '', '0', '0', '0', 'a:2:{i:250;s:6:\"紫色\";i:446;s:2:\"e2\";}', '12', '1_04418254088878407.jpg', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '250', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('253', '100008', '正品 2014春装新款 女 绣花针织衫 开衫外套浮桑初 橙色 e1', '', '1', '官方店铺', '14', '103', '189.00', '702.00', '5', '0', '0', '0', 'a:2:{i:243;s:6:\"橙色\";i:442;s:2:\"e1\";}', '100', '1_04418206625430066.jpg', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '243', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('254', '100009', '2014春款打底毛衫拼色毛衣 长袖套头针织衫 莺 绿色 e2', '', '1', '官方店铺', '14', '101', '179.00', '568.00', '', '0', '0', '0', 'a:2:{i:239;s:6:\"绿色\";i:446;s:2:\"e2\";}', '2', '1_04418211211965600.jpg', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '239', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('255', '100009', '2014春款打底毛衫拼色毛衣 长袖套头针织衫 莺 梅红 e1', '', '1', '官方店铺', '14', '101', '179.00', '568.00', '', '0', '0', '0', 'a:2:{i:240;s:6:\"梅红\";i:442;s:2:\"e1\";}', '3', '1_04418211211965600.jpg', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '240', '0', '0.00', '0', '1', ',0,', '5', '0');
INSERT INTO `gs_goods` VALUES ('256', '100009', '2014春款打底毛衫拼色毛衣 长袖套头针织衫 莺 梅红 e2', '', '1', '官方店铺', '14', '101', '179.00', '568.00', '', '6', '0', '0', 'a:2:{i:240;s:6:\"梅红\";i:446;s:2:\"e2\";}', '6', '1_04418211211965600.jpg', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '36', '240', '0', '0.00', '0', '1', ',0,', '5', '0');

-- ----------------------------
-- Table structure for gs_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `gs_goods_class`;
CREATE TABLE `gs_goods_class` (
  `gc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `gc_name` varchar(100) NOT NULL COMMENT '分类名称',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型id',
  `type_name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `gc_parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `gc_sort` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `gc_title` varchar(200) DEFAULT NULL COMMENT '名称',
  `gc_keywords` varchar(255) DEFAULT '' COMMENT '关键词',
  `gc_description` varchar(255) DEFAULT '' COMMENT '描述',
  `gc_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gc_id`),
  KEY `store_id` (`gc_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of gs_goods_class
-- ----------------------------
INSERT INTO `gs_goods_class` VALUES ('1', '服饰鞋帽6', '0', '', '0', '0', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('2', '礼品箱包', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('3', '家居家装', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('4', '女装', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('5', '男装', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('6', '内衣', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('7', '运动', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('8', '女鞋', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('9', '男鞋', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('10', '配饰', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('11', '童装', '0', '', '1', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('12', 'T恤', '32', '服饰鞋帽/女装/T恤', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('13', '衬衫', '33', '服饰鞋帽/女装/衬衫', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('14', '针织衫', '34', '服饰鞋/女装/针织衫', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('15', '雪纺衫', '35', '服饰鞋帽/女装/雪纺衫', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('16', '卫衣', '36', '服饰鞋帽/女装/卫衣', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('17', '马甲', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('18', '连衣裙', '35', '服饰鞋帽/女装/雪纺衫', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('19', '半身裙', '34', '服饰鞋/女装/针织衫', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('20', '牛仔裤', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('21', '休闲裤', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('22', '打底裤', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('23', '正装裤', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('24', '西服', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('25', '短外套', '35', '服饰鞋帽/女装/雪纺衫', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('26', '风衣', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('27', '大衣', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('28', '皮衣皮草', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('29', '棉服', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('30', '羽绒服', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('31', '孕妇装', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('32', '大码装', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('33', '中老年装', '0', '', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('34', '婚纱礼服', '32', '服饰鞋帽/女装/T恤', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('35', '衬衫', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('36', 'T恤', '51', '男士T恤', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('37', 'POLO衫', '51', '男士T恤', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('38', '针织衫', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('39', '羊绒衫', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('40', '卫衣', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('41', '马甲／背心', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('42', '夹克', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('43', '风衣', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('44', '大衣', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('45', '皮衣', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('46', '外套', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('47', '西服', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('48', '棉服', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('49', '羽绒服', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('50', '牛仔裤', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('51', '休闲裤', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('52', '西裤', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('53', '西服套装', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('54', '大码装', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('55', '中老年装', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('56', '唐装', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('57', '工装', '0', '', '5', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('58', '文胸', '38', '内衣', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('59', '女式内裤', '39', '女士内裤', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('60', '男式内裤', '39', '女士内裤', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('61', '家居', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('62', '睡衣', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('63', '塑身衣', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('64', '睡袍／浴袍', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('65', '泳衣', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('66', '背心', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('67', '抹胸', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('68', '连裤袜', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('69', '美腿袜', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('70', '男袜', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('71', '女袜', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('72', '情趣内衣', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('73', '保暖内衣', '0', '', '6', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('74', '休闲鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('75', '帆布鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('76', '跑步鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('77', '篮球鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('78', '足球鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('79', '训练鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('80', '乒羽鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('81', '拖鞋', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('82', '卫衣', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('83', '夹克', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('84', 'T恤', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('85', '棉服／羽绒服', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('86', '运动裤', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('87', '套装', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('88', '运动包', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('89', '运动配件', '0', '', '7', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('90', '平底鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('91', '高跟鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('92', '单鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('93', '休闲鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('94', '凉鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('95', '女靴', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('96', '雪地靴', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('97', '拖鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('98', '裸靴', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('99', '筒靴', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('100', '帆布鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('101', '雨鞋／雨靴', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('102', '妈妈鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('103', '鞋配件', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('104', '特色鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('105', '鱼嘴鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('106', '布鞋／绣花鞋', '0', '', '8', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('107', '商务休闲鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('108', '正装鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('109', '休闲鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('110', '凉鞋／沙滩鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('111', '男靴', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('112', '功能鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('113', '拖鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('114', '传统布鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('115', '鞋配件', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('116', '帆布鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('117', '豆豆鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('118', '驾车鞋', '0', '', '9', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('119', '太阳镜', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('120', '框镜', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('121', '皮带', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('122', '围巾', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('123', '手套', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('124', '帽子', '48', '女包', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('125', '领带', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('126', '袖扣', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('127', '其他配件', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('128', '丝巾', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('129', '披肩', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('130', '腰带', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('131', '腰链／腰封', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('132', '棒球帽', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('133', '毛线', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('134', '遮阳帽', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('135', '防紫外线手套', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('136', '草帽', '0', '', '10', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('137', '套装', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('138', '上衣', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('139', '裤子', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('140', '裙子', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('141', '内衣／家居服', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('142', '羽绒服／棉服', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('143', '亲子装', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('144', '儿童配饰', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('145', '礼服／演出服', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('146', '运动鞋', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('147', '单鞋', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('148', '靴子', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('149', '凉鞋', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('150', '功能鞋', '0', '', '11', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('151', '潮流女包', '0', '', '2', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('152', '时尚男包', '0', '', '2', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('153', '功能箱包', '0', '', '2', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('154', '礼品', '0', '', '2', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('155', '奢侈品', '0', '', '2', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('156', '钱包/卡包', '0', '', '151', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('157', '手拿包', '0', '', '151', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('158', '单肩包', '0', '', '151', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('159', '双肩包', '0', '', '151', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('160', '手提包', '0', '', '151', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('161', '斜挎包', '0', '', '151', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('162', '钱包/卡包', '0', '', '152', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('163', '男士手包', '0', '', '152', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('164', '腰带／礼盒', '0', '', '152', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('165', '商务公文包', '0', '', '152', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('166', '电脑数码包', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('167', '拉杆箱', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('168', '旅行包', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('169', '旅行配件', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('170', '休闲运动包', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('171', '登山包', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('172', '妈咪包', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('173', '书包', '0', '', '153', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('174', '火机烟具', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('175', '礼品文具', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('176', '瑞士军刀', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('177', '收藏品', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('178', '工艺礼品', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('179', '创意礼品', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('180', '礼卡礼卷', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('181', '鲜花速递', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('182', '婚庆用品', '0', '', '154', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('184', '奢侈品箱包', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('185', '钱包', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('186', '服饰', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('187', '腰带', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('188', '太阳镜眼镜', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('189', '配件', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('190', 'GUCCI', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('191', 'PRADA', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('192', 'FENDI', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('193', 'BURBERRY', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('194', 'MONTBLANC', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('195', 'ARMANI', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('196', 'RIMOWA', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('197', 'RAY-BAN', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('198', 'COACH', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('199', '更多品牌', '0', '', '155', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('200', '家纺', '0', '', '3', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('201', '灯具', '0', '', '3', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('202', '生活日用', '0', '', '3', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('203', '家装软饰', '0', '', '3', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('204', '清洁日用', '0', '', '3', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('205', '宠物生活', '0', '', '3', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('206', '床品件套', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('207', '被子', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('208', '枕芯枕套', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('209', '床单被罩', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('210', '毛巾被/毯', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('211', '床垫/床褥', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('212', '蚊帐/凉席', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('213', '抱枕坐垫', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('214', '毛巾家纺', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('215', '电热毯', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('216', '窗帘/窗纱', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('217', '酒店用品', '0', '', '200', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('218', '台灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('219', '节能灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('220', '装饰灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('221', '落地灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('222', '应急灯/手电', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('223', 'LED灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('224', '吸顶灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('225', '五金电器', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('226', '吊灯', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('227', '氛围照明', '0', '', '201', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('228', '收纳用品', '0', '', '202', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('229', '雨伞雨具', '0', '', '202', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('230', '浴室用品', '0', '', '202', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('231', '缝纫用品', '0', '', '202', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('232', '洗晒用品', '0', '', '202', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('233', '净化除味', '0', '', '202', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('234', '桌布/罩件', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('235', '地毯地垫', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('236', '沙发垫套', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('237', '相框/相片墙', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('238', '墙画墙贴', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('239', '节庆饰品', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('240', '手工/十字绣', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('241', '工艺摆件', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('242', '其他', '0', '', '203', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('243', '纸品湿巾', '0', '', '204', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('244', '衣物清洁', '0', '', '204', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('245', '清洁工具', '0', '', '204', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('246', '驱虫用品', '0', '', '204', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('247', '居室清洁', '0', '', '204', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('248', '皮具护理', '0', '', '204', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('249', '宠物主粮', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('250', '宠物零食', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('251', '营养品', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('252', '家居日用', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('253', '玩具服饰', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('254', '出行装备', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('255', '医护美容', '0', '', '205', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('256', '数码办公', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('258', '手机配件', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('259', '摄影摄像', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('260', '数码配件', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('261', '时尚影音', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('264', '手机电池', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('265', '蓝牙耳机', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('266', '充电器/数据线', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('267', '手机耳机', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('268', '手机贴膜', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('269', '手机存储卡', '49', '存储卡', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('270', '手机保护套', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('271', '车载配件', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('272', 'iPhone 配件', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('273', '创意配件', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('274', '便携/无线音响', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('275', '手机饰品', '0', '', '258', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('276', '数码相机', '0', '', '259', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('277', '单电/微单相机', '0', '', '259', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('278', '单反相机', '0', '', '259', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('279', '摄像机', '0', '', '259', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('280', '拍立得', '0', '', '259', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('281', '镜头', '0', '', '259', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('282', '存储卡', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('283', '读卡器', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('284', '滤镜', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('285', '闪光灯/手柄', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('286', '相机包', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('287', '三脚架/云台', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('288', '相机清洁', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('289', '相机贴膜', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('290', '机身附件', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('291', '镜头附件', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('292', '电池/充电器', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('293', '移动电源', '0', '', '260', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('294', 'MP3/MP4', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('295', '智能设备', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('296', '耳机/耳麦', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('297', '音箱', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('298', '高清播放器', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('299', '电子书', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('300', '电子词典', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('301', 'MP3/MP4配件', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('302', '录音笔', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('303', '麦克风', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('304', '专业音频', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('305', '电子教育', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('306', '数码相框', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('307', '苹果配件', '0', '', '261', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('308', '家用电器', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('309', '大家电', '0', '', '308', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('310', '生活电器', '0', '', '308', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('311', '厨房电器', '0', '', '308', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('312', '个护健康', '0', '', '308', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('313', '五金家装', '0', '', '308', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('314', '平板电视', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('315', '空调', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('316', '冰箱', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('317', '洗衣机', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('318', '家庭影院', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('319', 'DVD播放机', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('320', '迷你音响', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('321', '烟机/灶具', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('322', '热水器', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('323', '消毒柜/洗碗机', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('324', '酒柜/冰吧/冷柜', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('325', '家电配件', '0', '', '309', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('326', '净化器', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('327', '电风扇', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('328', '吸尘器', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('329', '加湿器', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('330', '净水设备', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('331', '饮水机', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('332', '冷风扇', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('333', '挂烫机/熨斗', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('334', '电话机', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('335', '插座', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('336', '收录/音机', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('337', '除湿/干衣机', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('338', '清洁机', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('339', '取暖电器', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('340', '其它生活电器', '0', '', '310', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('341', '料理/榨汁机', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('342', '豆浆机', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('343', '电饭煲', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('344', '电压力锅', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('345', '面包机', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('346', '咖啡机', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('347', '微波炉', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('348', '电烤箱', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('349', '电磁炉', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('350', '电饼铛/烧烤盘', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('351', '煮蛋器', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('352', '酸奶机', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('353', '电炖锅', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('354', '电水壶/热水瓶', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('355', '多用途锅', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('356', '果蔬解毒机', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('357', '其它厨房电器', '0', '', '311', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('358', '剃须刀', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('359', '剃/脱毛器', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('360', '口腔护理', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('361', '电吹风', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('362', '美容器', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('363', '美发器', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('364', '按摩椅', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('365', '按摩器', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('366', '足浴盆', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('367', '血压计', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('368', '健康秤/厨房秤', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('369', '血糖仪', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('370', '体温计', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('371', '计步器/脂肪检测仪', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('372', '其它健康电器', '0', '', '312', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('373', '电动工具', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('374', '手动工具', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('375', '仪器仪表', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('376', '浴霸/排气扇', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('377', '灯具', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('378', 'LED灯', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('379', '洁身器', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('380', '水槽', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('381', '龙头', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('382', '淋浴花洒', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('383', '厨卫五金', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('384', '家具五金', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('385', '门铃', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('386', '电气开关', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('387', '插座', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('388', '电工电料', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('389', '监控安防', '0', '', '313', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('390', '电脑整机', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('391', '电脑配件', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('392', '外设产品', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('393', '网络产品', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('394', '办公打印', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('395', '办公文仪', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('398', '笔记本', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('399', '超极本', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('400', '游戏本', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('401', '平板电脑', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('402', '平板电脑配件', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('403', '台式机', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('404', '服务器', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('405', '笔记本配件', '0', '', '390', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('406', 'CPU', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('407', '主板', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('408', '显卡', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('409', '硬盘', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('410', 'SSD固态硬盘', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('411', '内存', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('412', '机箱', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('413', '电源', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('414', '显示器', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('415', '刻录机/光驱', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('416', '散热器', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('417', '声卡/扩展卡', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('418', '装机配件', '0', '', '391', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('419', '鼠标', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('420', '键盘', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('421', '移动硬盘', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('422', 'U盘', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('423', '摄像头', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('424', '外置盒', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('425', '游戏设备', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('426', '电视盒', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('427', '手写板', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('428', '鼠标垫', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('429', '插座', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('430', 'UPS电源', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('431', '线缆', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('432', '电脑工具', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('433', '电脑清洁', '0', '', '392', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('434', '路由器', '0', '', '393', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('435', '网卡', '0', '', '393', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('436', '交换机', '0', '', '393', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('437', '网络存储', '0', '', '393', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('438', '3G上网', '0', '', '393', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('439', '网络盒子', '0', '', '393', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('440', '打印机', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('441', '一体机', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('442', '投影机', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('443', '投影配件', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('444', '传真机', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('445', '复合机', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('446', '碎纸机', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('447', '扫描仪', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('448', '墨盒', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('449', '硒鼓', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('450', '墨粉', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('451', '色带', '0', '', '394', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('452', '办公文具', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('453', '文件管理', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('454', '笔类', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('455', '纸类', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('456', '本册/便签', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('457', '学生文具', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('458', '财务用品', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('459', '计算器', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('460', '激光笔', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('461', '白板/封装', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('462', '考勤机', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('463', '刻录碟片/附件', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('464', '点钞机', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('465', '支付设备/POS机', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('466', '安防监控', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('467', '呼叫/会议设备', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('468', '保险柜', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('469', '办公家具', '0', '', '395', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('470', '个护化妆', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('471', '面部护理', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('472', '身体护理', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('473', '口腔护理', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('474', '女性护理', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('475', '男士护理', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('476', '魅力彩妆', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('477', '香水SPA', '0', '', '470', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('478', '洁面乳', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('479', '爽肤水', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('480', '精华露', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('481', '乳液面霜', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('482', '面膜面贴', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('483', '眼部护理', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('484', '颈部护理', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('485', 'T区护理', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('486', '护肤套装', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('487', '防晒隔离', '0', '', '471', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('488', '洗发护发', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('489', '染发/造型', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('490', '沐浴', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('491', '磨砂/浴盐', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('492', '身体乳', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('493', '手工/香皂', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('494', '香薰精油', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('495', '纤体瘦身', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('496', '脱毛膏', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('497', '手足护理', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('498', '洗护套装', '0', '', '472', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('499', '牙膏/牙粉', '0', '', '473', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('500', '牙刷/牙线', '0', '', '473', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('501', '漱口水', '0', '', '473', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('502', '卫生巾', '0', '', '474', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('503', '卫生护垫', '0', '', '474', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('504', '洗液', '0', '', '474', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('505', '美容食品', '0', '', '474', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('506', '其他', '0', '', '474', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('507', '脸部护理', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('508', '眼部护理', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('509', '身体护理', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('510', '男士香水', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('511', '剃须护理', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('512', '防脱洗护', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('513', '男士唇膏', '0', '', '475', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('514', '粉底/遮瑕', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('515', '腮红', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('516', '眼影/眼线', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('517', '眉笔', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('518', '睫毛膏', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('519', '唇膏唇彩', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('520', '彩妆组合', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('521', '卸妆', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('522', '美甲', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('523', '彩妆工具', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('524', '假发', '0', '', '476', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('525', '女士香水', '0', '', '477', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('526', '男士香水', '0', '', '477', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('527', '组合套装', '0', '', '477', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('528', '迷你香水', '0', '', '477', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('529', '香体走珠', '0', '', '477', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('530', '珠宝手表', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('531', '时尚饰品', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('532', '纯金K金饰品', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('533', '金银投资', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('534', '银饰', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('535', '钻石饰品', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('536', '翡翠玉石', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('537', '水晶玛瑙', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('538', '宝石珍珠', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('539', '婚庆', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('540', '钟表手表', '0', '', '530', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('541', '项链', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('542', '手链/脚链', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('543', '戒指', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('544', '耳饰', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('545', '头饰', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('546', '胸针', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('547', '婚庆饰品', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('548', '饰品配件', '0', '', '531', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('549', '吊坠/项链', '0', '', '532', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('550', '手镯/手链/脚链', '0', '', '532', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('551', '戒指', '0', '', '532', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('552', '耳饰', '0', '', '532', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('553', '工艺金', '0', '', '533', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('554', '工艺银', '0', '', '533', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('555', '吊坠/项链', '0', '', '534', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('556', '手镯/手链/脚链', '0', '', '534', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('557', '戒指/耳饰', '0', '', '534', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('558', '宝宝金银', '0', '', '534', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('559', '千足银', '0', '', '534', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('560', '裸钻', '0', '', '535', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('561', '戒指', '0', '', '535', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('563', '项链/吊坠', '0', '', '535', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('564', '耳饰', '0', '', '535', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('565', '手镯/手链', '0', '', '535', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('566', '项链/吊坠', '0', '', '536', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('567', '手镯/手串', '0', '', '536', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('568', '戒指', '0', '', '536', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('569', '耳饰', '0', '', '536', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('570', '挂件/摆件/把件', '0', '', '536', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('571', '高值收藏', '0', '', '536', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('572', '耳饰', '0', '', '537', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('573', '手镯/手链/脚链', '0', '', '537', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('574', '戒指', '0', '', '537', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('575', '头饰/胸针', '0', '', '537', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('576', '摆件/挂件', '0', '', '537', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('577', '项链/吊坠', '0', '', '538', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('578', '耳饰', '0', '', '538', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('579', '手镯/手链', '0', '', '538', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('580', '戒指', '0', '', '538', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('581', '婚嫁首饰', '0', '', '539', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('582', '婚纱摄影', '0', '', '539', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('583', '婚纱礼服', '0', '', '539', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('584', '婚庆服务', '0', '', '539', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('585', '婚庆礼品/用品', '0', '', '539', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('586', '婚宴', '0', '', '539', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('587', '瑞士品牌', '0', '', '540', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('588', '国产品牌', '0', '', '540', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('589', '日本品牌', '0', '', '540', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('590', '时尚品牌', '0', '', '540', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('591', '闹钟挂钟', '0', '', '540', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('592', '儿童手表', '0', '', '540', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('593', '食品饮料', '50', '食品通用', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('594', '进口食品', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('595', '地方特产', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('596', '休闲食品', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('597', '粮油调味', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('598', '中外名酒', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('599', '饮料冲调', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('600', '营养健康', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('601', '亚健康调理', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('602', '健康礼品', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('603', '生鲜食品', '50', '食品通用', '593', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('604', '饼干蛋糕', '50', '食品通用', '594', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('605', '糖果巧克力', '50', '食品通用', '594', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('606', '休闲零食', '50', '食品通用', '594', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('607', '冲调饮品', '50', '食品通用', '594', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('608', '粮油调味', '50', '食品通用', '594', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('609', '华北', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('610', '西北', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('611', '西南', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('612', '东北', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('613', '华南', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('614', '华东', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('615', '华中', '50', '食品通用', '595', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('616', '休闲零食', '50', '食品通用', '596', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('617', '坚果炒货', '50', '食品通用', '596', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('618', '肉干肉松', '50', '食品通用', '596', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('619', '蜜饯果脯', '50', '食品通用', '596', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('620', '糖果/巧克力', '50', '食品通用', '596', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('621', '饼干蛋糕', '50', '食品通用', '596', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('622', '米面杂粮', '50', '食品通用', '597', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('623', '食用油', '50', '食品通用', '597', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('624', '调味品', '50', '食品通用', '597', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('625', '南北干货', '50', '食品通用', '597', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('626', '方便食品', '50', '食品通用', '597', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('627', '有机食品', '50', '食品通用', '597', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('628', '白酒', '50', '食品通用', '598', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('629', '洋酒', '50', '食品通用', '598', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('630', '葡萄酒', '50', '食品通用', '598', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('631', '啤酒', '50', '食品通用', '598', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('632', '黄酒', '50', '食品通用', '598', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('633', '水', '50', '食品通用', '599', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('634', '饮料', '50', '食品通用', '599', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('635', '牛奶', '50', '食品通用', '599', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('636', '茶叶', '50', '食品通用', '599', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('637', '咖啡/奶茶', '50', '食品通用', '599', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('638', '冲饮谷物', '50', '食品通用', '599', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('639', '基础营养', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('640', '美体养颜', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('641', '滋补调养', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('642', '骨骼健康', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('643', '保健茶饮', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('644', '成分保健', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('645', '无糖食品', '50', '食品通用', '600', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('646', '调节三高', '50', '食品通用', '601', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('647', '心脑养护', '50', '食品通用', '601', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('648', '改善睡眠', '50', '食品通用', '601', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('649', '肝肾养护', '50', '食品通用', '601', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('650', '免疫调节', '50', '食品通用', '601', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('651', '更多调理', '50', '食品通用', '601', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('652', '参茸礼品', '50', '食品通用', '602', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('653', '更多礼品', '50', '食品通用', '602', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('654', '水果', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('655', '蔬菜', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('656', '海鲜水产', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('657', '禽蛋', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('658', '鲜肉', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('659', '加工类肉食', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('660', '冻品', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('661', '半成品', '50', '食品通用', '603', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('662', '运动健康', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('663', '户外鞋服', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('664', '户外装备', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('665', '运动器械', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('666', '纤体瑜伽', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('667', '体育娱乐', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('668', '成人用品', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('669', '保健器械', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('670', '急救卫生', '0', '', '662', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('671', '户外服装', '0', '', '663', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('672', '户外鞋袜', '0', '', '663', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('673', '户外配饰', '0', '', '663', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('674', '帐篷', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('675', '睡袋', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('676', '登山攀岩', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('677', '户外背包', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('678', '户外照明', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('679', '户外垫子', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('680', '户外仪表', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('681', '户外工具', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('682', '望远镜', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('683', '垂钓用品', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('684', '旅游用品', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('685', '便携桌椅床', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('686', '烧烤用品', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('687', '野餐炊具', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('688', '军迷用品', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('689', '游泳用具', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('690', '泳衣', '0', '', '664', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('691', '健身器械', '0', '', '665', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('692', '运动器材', '0', '', '665', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('693', '极限轮滑', '0', '', '665', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('694', '骑行运动', '0', '', '665', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('695', '运动护具', '0', '', '665', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('696', '武术搏击', '0', '', '665', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('697', '瑜伽垫', '0', '', '666', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('698', '瑜伽服', '0', '', '666', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('699', '瑜伽配件', '0', '', '666', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('700', '瑜伽套装', '0', '', '666', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('701', '舞蹈鞋服', '0', '', '666', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('702', '羽毛球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('703', '乒乓球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('704', '篮球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('705', '足球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('706', '网球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('707', '排球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('708', '高尔夫球', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('709', '棋牌麻将', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('710', '其他', '0', '', '667', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('711', '安全避孕', '0', '', '668', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('712', '验孕测孕', '0', '', '668', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('713', '人体润滑', '0', '', '668', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('714', '情爱玩具', '0', '', '668', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('715', '情趣内衣', '0', '', '668', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('716', '组合套装', '0', '', '668', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('717', '养生器械', '0', '', '669', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('718', '保健用品', '0', '', '669', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('719', '康复辅助', '0', '', '669', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('720', '家庭护理', '0', '', '669', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('721', '跌打损伤', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('722', '烫伤止痒', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('723', '防裂抗冻', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('724', '口腔咽部', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('725', '眼部保健', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('726', '鼻炎健康', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('727', '风湿骨痛', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('728', '生殖泌尿', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('729', '美体塑身', '0', '', '670', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('730', '汽车用品', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('731', '电子电器', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('732', '系统养护', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('733', '改装配件', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('734', '汽车美容', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('735', '座垫脚垫', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('736', '内饰精品', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('737', '安全自驾', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('738', '便携GPS导航', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('739', '嵌入式导航', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('740', '安全预警仪', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('741', '行车记录仪', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('742', '跟踪防盗器', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('743', '倒车雷达', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('744', '车载电源', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('745', '车载蓝牙', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('746', '车载影音', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('747', '车载净化器', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('748', '车载冰箱', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('749', '车载吸尘器', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('750', '充气泵', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('751', '胎压监测', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('752', '车载生活电器', '0', '', '731', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('753', '机油', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('754', '添加剂', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('755', '防冻冷却液', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('756', '附属油', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('757', '底盘装甲', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('758', '空调清洗剂', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('759', '金属养护', '0', '', '732', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('760', '雨刷', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('761', '车灯', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('762', '轮胎', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('763', '贴膜', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('764', '装饰贴', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('765', '后视镜', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('766', '机油滤', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('767', '空气滤', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('768', '空调滤', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('769', '燃油滤', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('770', '火花塞', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('771', '喇叭', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('772', '刹车片', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('773', '刹车盘', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('774', '减震器', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('775', '车身装饰', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('776', '尾喉/排气管', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('777', '踏板', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('778', '蓄电池', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('779', '其他配件', '0', '', '733', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('780', '漆面美容', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('781', '漆面修复', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('782', '内饰清洁', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('783', '玻璃美容', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('784', '补漆笔', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('785', '轮胎轮毂清洗', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('786', '洗车器', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('787', '洗车水枪', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('788', '洗车配件', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('789', '洗车液', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('790', '车掸', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('791', '擦车巾/海绵', '0', '', '734', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('792', '凉垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('793', '四季垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('794', '毛垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('795', '专车专用座垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('796', '专车专用座套', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('797', '通用座套', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('798', '多功能垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('799', '专车专用脚垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('800', '通用脚垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('801', '后备箱垫', '0', '', '735', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('802', '车用香水', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('803', '车用炭包', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('804', '空气净化', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('805', '颈枕/头枕', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('806', '抱枕/腰靠', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('807', '方向盘套', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('808', '挂件', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('809', '摆件', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('810', '布艺软饰', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('811', '功能用品', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('812', '整理收纳', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('813', 'CD夹', '0', '', '736', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('814', '儿童安全座椅', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('815', '应急救援', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('816', '汽修工具', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('817', '自驾野营', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('818', '自驾照明', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('819', '保温箱', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('820', '置物箱', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('821', '车衣', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('822', '遮阳挡雪挡', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('823', '车锁地锁', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('824', '摩托车装备', '0', '', '737', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('825', '玩具乐器', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('826', '适用年龄', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('827', '遥控/电动', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('828', '毛绒布艺', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('829', '娃娃玩具', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('830', '模型玩具', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('831', '健身玩具', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('832', '动漫玩具', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('833', '益智玩具', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('834', '积木拼插', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('835', 'DIY玩具', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('836', '创意减压', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('837', '乐器相关', '0', '', '825', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('838', '0-6个月', '0', '', '826', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('839', '6-12个月', '0', '', '826', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('840', '1-3岁', '0', '', '826', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('841', '3-6岁', '0', '', '826', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('842', '6-14岁', '0', '', '826', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('843', '14岁以上', '0', '', '826', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('844', '遥控车', '0', '', '827', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('845', '遥控飞机', '0', '', '827', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('846', '遥控船', '0', '', '827', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('847', '机器人/电动', '0', '', '827', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('848', '轨道/助力', '0', '', '827', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('849', '毛绒/布艺', '0', '', '828', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('850', '靠垫/抱枕', '0', '', '828', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('851', '芭比娃娃', '0', '', '829', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('852', '卡通娃娃', '0', '', '829', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('853', '智能娃娃', '0', '', '829', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('854', '仿真模型', '0', '', '830', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('855', '拼插模型', '0', '', '830', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('856', '收藏爱好', '0', '', '830', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('857', '炫舞毯', '0', '', '831', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('858', '爬行垫/毯', '0', '', '831', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('859', '户外玩具', '0', '', '831', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('860', '戏水玩具', '0', '', '831', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('861', '电影周边', '0', '', '832', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('862', '卡通周边', '0', '', '832', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('863', '网游周边', '0', '', '832', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('864', '摇铃/床铃', '0', '', '833', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('865', '健身架', '0', '', '833', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('866', '早教启智', '0', '', '833', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('867', '拖拉玩具', '0', '', '833', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('868', '积木', '0', '', '834', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('869', '拼图', '0', '', '834', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('870', '磁力棒', '0', '', '834', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('871', '立体拼插', '0', '', '834', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('872', '手工彩泥', '0', '', '835', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('873', '绘画工具', '0', '', '835', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('874', '情景玩具', '0', '', '835', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('875', '减压玩具', '0', '', '836', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('876', '创意玩具', '0', '', '836', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('877', '钢琴', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('878', '电子琴', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('879', '手风琴', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('880', '吉他/贝斯', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('881', '民族管弦乐器', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('882', '西洋管弦乐', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('883', '口琴/口风琴/竖笛', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('884', '西洋打击乐器', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('885', '各式乐器配件', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('886', '电脑音乐', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('887', '工艺礼品乐器', '0', '', '837', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('888', '厨具', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('889', '烹饪锅具', '0', '', '888', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('890', '刀剪菜板', '0', '', '888', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('891', '收纳保鲜', '0', '', '888', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('892', '水具酒具', '0', '', '888', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('893', '餐具', '0', '', '888', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('895', '炒锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('896', '煎锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('897', '压力锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('898', '蒸锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('899', '汤锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('900', '奶锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('901', '套锅', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('902', '煲类', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('903', '水壶', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('904', '厨用杂件', '0', '', '889', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('905', '单刀', '0', '', '890', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('906', '剪刀', '0', '', '890', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('907', '套刀', '0', '', '890', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('908', '砧板', '0', '', '890', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('909', '刀具配件', '0', '', '890', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('910', '保鲜盒', '0', '', '891', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('911', '保鲜膜/袋', '0', '', '891', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('912', '调料器皿', '0', '', '891', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('913', '饭盒/提锅', '0', '', '891', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('914', '塑料杯', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('915', '运动水壶', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('916', '玻璃杯', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('917', '陶瓷杯', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('918', '保温杯', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('919', '保温壶', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('920', '酒杯/套装', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('921', '酒具配件', '0', '', '892', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('922', '餐具套装', '0', '', '893', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('923', '碗/碟/盘', '0', '', '893', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('924', '筷勺/刀叉', '0', '', '893', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('925', '一次性餐具', '0', '', '893', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('935', '茶具/咖啡具', '0', '', '888', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('936', '整套茶具', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('937', '茶杯', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('938', '茶壶', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('939', '茶盘茶托', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('940', '茶叶罐', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('941', '茶具配件', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('942', '茶宠摆件', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('943', '咖啡具', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('944', '其他', '0', '', '935', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('959', '母婴用品', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('960', '奶粉', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('961', '营养辅食', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('962', '尿裤湿巾', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('963', '喂养用品', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('964', '洗护用品', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('965', '童车童床', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('966', '服饰寝居', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('967', '妈妈专区', '0', '', '959', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('968', '品牌奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('969', '妈妈奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('970', '1段奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('971', '2段奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('972', '3段奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('973', '4段奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('974', '羊奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('975', '特殊配方', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('976', '成人奶粉', '0', '', '960', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('977', '婴幼营养', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('978', '初乳', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('979', '米粉/菜粉', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('980', '果泥/果汁', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('981', '肉松/饼干', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('982', '辅食', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('983', '孕期营养', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('984', '清火/开胃', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('985', '面条/粥', '0', '', '961', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('986', '品牌尿裤', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('987', '新生儿', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('988', 'S号', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('989', 'M号', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('990', 'L号', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('991', 'XL/XXL号', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('992', '裤型尿裤', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('993', '湿巾', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('994', '尿布/尿垫', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('995', '成人尿裤', '0', '', '962', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('996', '奶瓶', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('997', '奶嘴', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('998', '吸奶器', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('999', '暖奶/消毒', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1000', '餐具', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1001', '水具', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1002', '牙胶/安抚', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1003', '辅助用品', '0', '', '963', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1004', '宝宝护肤', '0', '', '964', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1005', '洗浴用品', '0', '', '964', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1006', '洗发沐浴', '0', '', '964', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1007', '清洁用品', '0', '', '964', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1008', '护理用品', '0', '', '964', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1009', '妈妈护肤', '0', '', '964', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1010', '婴儿推车', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1011', '餐椅摇椅', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1012', '婴儿床', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1013', '学步车', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1014', '三轮车', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1015', '自行车', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1016', '电动车', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1017', '健身车', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1018', '安全座椅', '0', '', '965', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1019', '婴儿外出服', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1020', '婴儿内衣', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1021', '婴儿礼盒', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1022', '婴儿鞋帽袜', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1023', '安全防护', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1024', '家居床品', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1025', '其他', '0', '', '966', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1026', '包/背婴带', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1027', '妈妈护理', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1028', '产后塑身', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1029', '孕妇内衣', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1030', '防辐射服', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1031', '孕妇装', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1032', '孕妇食品', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1033', '妈妈美容', '0', '', '967', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1034', '手机通讯', '0', '', '256', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1035', '手机', '0', '', '1034', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1036', '对讲机', '0', '', '1034', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1037', '虚拟充值', '0', '', '0', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1041', '充值', '0', '', '1037', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1042', '游戏', '0', '', '1037', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1043', '票务', '0', '', '1037', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1044', '手机充值', '0', '', '1041', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1045', '游戏点卡', '0', '', '1042', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1046', 'QQ充值', '0', '', '1042', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1047', '电影票', '0', '', '1043', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1048', '演唱会', '0', '', '1043', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1049', '话剧/歌剧/音乐剧', '0', '', '1043', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1050', '体育赛事', '0', '', '1043', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1051', '舞蹈芭蕾', '0', '', '1043', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1052', '戏曲综艺', '0', '', '1043', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1053', '女装', '32', '服饰鞋帽/女装/T恤', '4', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1054', '整车', '0', '', '730', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1055', '新车', '52', '汽车', '1054', '255', '', '', '', null);
INSERT INTO `gs_goods_class` VALUES ('1056', '二手车', '52', '汽车', '1054', '255', '', '', '', null);

-- ----------------------------
-- Table structure for gs_goods_class_staple
-- ----------------------------
DROP TABLE IF EXISTS `gs_goods_class_staple`;
CREATE TABLE `gs_goods_class_staple` (
  `staple_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '常用分类id',
  `staple_name` varchar(255) NOT NULL COMMENT '常用分类名称',
  `gc_id_1` int(10) unsigned NOT NULL COMMENT '一级分类id',
  `gc_id_2` int(10) unsigned NOT NULL COMMENT '二级商品分类',
  `gc_id_3` int(10) unsigned NOT NULL COMMENT '三级商品分类',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `member_id` bigint(20) unsigned NOT NULL COMMENT '会员id',
  `counter` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '计数器',
  PRIMARY KEY (`staple_id`),
  KEY `store_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='店铺常用分类表';

-- ----------------------------
-- Records of gs_goods_class_staple
-- ----------------------------
INSERT INTO `gs_goods_class_staple` VALUES ('1', '服饰鞋帽 >女装 >连衣裙', '1', '4', '18', '35', '1', '2');
INSERT INTO `gs_goods_class_staple` VALUES ('2', '服饰鞋帽 >女装 >牛仔裤', '1', '4', '20', '0', '1', '7');
INSERT INTO `gs_goods_class_staple` VALUES ('3', '服饰鞋帽 >男鞋 >拖鞋', '1', '9', '113', '0', '1', '1');
INSERT INTO `gs_goods_class_staple` VALUES ('4', '服饰鞋帽 >男鞋 >功能鞋', '1', '9', '112', '0', '1', '11');
INSERT INTO `gs_goods_class_staple` VALUES ('5', '服饰鞋帽 >童装 >礼服／演出服', '1', '11', '145', '0', '1', '2');
INSERT INTO `gs_goods_class_staple` VALUES ('6', '服饰鞋帽 >童装 >套装', '1', '11', '137', '0', '1', '21');
INSERT INTO `gs_goods_class_staple` VALUES ('7', '服饰鞋帽 >女装 >针织衫', '1', '4', '14', '34', '1', '58');
INSERT INTO `gs_goods_class_staple` VALUES ('8', '服饰鞋帽 >女装 >卫衣', '1', '4', '16', '36', '1', '5');
INSERT INTO `gs_goods_class_staple` VALUES ('14', '家居家装>清洁日用>居室清洁', '3', '204', '247', '0', '46', '1');

-- ----------------------------
-- Table structure for gs_goods_common
-- ----------------------------
DROP TABLE IF EXISTS `gs_goods_common`;
CREATE TABLE `gs_goods_common` (
  `goods_commonid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品公共表id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_jingle` varchar(50) NOT NULL COMMENT '商品广告词',
  `gc_id` int(10) unsigned NOT NULL COMMENT '商品分类',
  `gc_name` varchar(200) NOT NULL COMMENT '商品分类',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `spec_name` varchar(255) NOT NULL COMMENT '规格名称',
  `spec_value` text NOT NULL COMMENT '规格值',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型id',
  `goods_image` varchar(100) NOT NULL COMMENT '商品主图',
  `goods_attr` text NOT NULL COMMENT '商品属性',
  `goods_body` text NOT NULL COMMENT '商品内容',
  `goods_state` tinyint(3) unsigned NOT NULL COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `goods_stateremark` varchar(255) DEFAULT NULL COMMENT '违规原因',
  `goods_verify` tinyint(3) unsigned NOT NULL COMMENT '商品审核 1通过，0未通过，10审核中',
  `goods_verifyremark` varchar(255) DEFAULT NULL COMMENT '审核失败原因',
  `goods_lock` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品锁定 0未锁，1已锁',
  `goods_addtime` timestamp NULL DEFAULT NULL COMMENT '商品添加时间',
  `goods_selltime` timestamp NULL DEFAULT NULL COMMENT '上架时间',
  `goods_specname` text NOT NULL COMMENT '规格名称序列化（下标为规格id）',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_marketprice` decimal(10,2) NOT NULL COMMENT '市场价',
  `goods_costprice` decimal(10,2) NOT NULL COMMENT '成本价',
  `goods_discount` float unsigned NOT NULL COMMENT '折扣',
  `goods_serial` varchar(50) NOT NULL COMMENT '商家编号',
  `transport_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板',
  `transport_title` varchar(60) NOT NULL DEFAULT '' COMMENT '运费模板名称',
  `goods_commend` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品推荐 1是，0否，默认为0',
  `goods_freight` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `goods_vat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `areaid_1` int(10) unsigned NOT NULL COMMENT '一级地区id',
  `areaid_2` int(10) unsigned NOT NULL COMMENT '二级地区id',
  `goods_stcids` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `plateid_top` int(10) unsigned DEFAULT NULL COMMENT '顶部关联板式',
  `plateid_bottom` int(10) unsigned DEFAULT NULL COMMENT '底部关联板式',
  PRIMARY KEY (`goods_commonid`)
) ENGINE=InnoDB AUTO_INCREMENT=100087 DEFAULT CHARSET=utf8 COMMENT='商品公共内容表';

-- ----------------------------
-- Records of gs_goods_common
-- ----------------------------
INSERT INTO `gs_goods_common` VALUES ('100008', '正品 2014春装新款 女 绣花针织衫 开衫外套浮桑初', '', '14', '服饰鞋帽 &gt;女装 &gt;针织衫', '1', '官方店铺', 'a:2:{i:1;s:6:\"颜色\";i:16;s:2:\"ee\";}', 'a:2:{i:1;a:1:{i:243;s:6:\"橙色\";}i:16;a:1:{i:442;s:2:\"e1\";}}', '103', 'ELLE HOME', '34', '1_04418206625430066.jpg', 'a:5:{i:206;a:2:{s:4:\"name\";s:6:\"款式\";i:3050;s:6:\"毛衣\";}i:207;a:2:{s:4:\"name\";s:6:\"材质\";i:3059;s:3:\"棉\";}i:208;a:2:{s:4:\"name\";s:6:\"价格\";i:3069;s:7:\"100-199\";}i:209;a:2:{s:4:\"name\";s:6:\"袖长\";i:3076;s:6:\"长袖\";}i:210;a:2:{s:4:\"name\";s:6:\"风格\";i:3087;s:12:\"原创设计\";}}', '<div id=\"detail2\" class=\"detail\">\r\n	<div class=\"cont tabc\">\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" title=\"温馨提示.jpg\" src=\"http://pimg2.imglefeng.com/decoration/1000000029/947d983961bd9a8fcc2ea78818fbd5f1_1379469491798.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2o_1tXXtcXXXXXXXX_%21%21228784630.jpg\" /><img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2kgHfXbBbXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<br />\r\n					</td>\r\n					<td align=\"left\" valign=\"top\">\r\n						<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2vDzeXf0aXXXXXXXX_%21%21228784630.gif\" height=\"13\" width=\"14\" /> \r\n					</td>\r\n					<td style=\"font-size:14px;font-weight:bold;\">\r\n						23160037 浮桑初凉 &nbsp;绣团花偏开襟秀美小毛衫\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td colspan=\"2\">\r\n						<br />\r\n					</td>\r\n					<td style=\"font-size:12px;\">\r\n						设计点：<span style=\"font-family:宋体;\">圆领</span>&nbsp;/ 彩线绣花 /<span style=\"font-family:宋体;\">偏开襟/</span><span style=\"font-family:宋体;\">不规则下摆</span><br />\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2f8haXetOXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T24vu6XbVbXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2aXuZXeFbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2kOeLXaNbXXXXXXXX_%21%21228784630.jpg\" /><br />\r\n<a href=\"http://item.taobao.com/item.htm?spm=a220z.1000880.0.41.79yC08&amp;id=17627712443&amp;bucket_id=1\" target=\"_self\"><img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T29pTjXo0aXXXXXXXX_%21%21228784630.jpg\" /></a><br />\r\n<a href=\"http://detail.tmall.com/item.htm?spm=a1z10.3.w4011-1127672680.228.50YS3y&amp;id=16160903240&amp;rn=1fc977d36692d690abf6e1d0aca92509\" target=\"_blank\"><img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2ZxTjXcRaXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2meCUXeFbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<a href=\"http://detail.tmall.com/item.htm?spm=a1z10.3.w4011-1127672680.133.50YS3y&amp;id=5780117087&amp;rn=1fc977d36692d690abf6e1d0aca92509\" target=\"_blank\"><img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2hGrgXcXbXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2vua0XbVbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2pqHkXaXXXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T241PjXl8aXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<a href=\"http://detail.tmall.com/item.htm?spm=a1z10.5.w4011-1127672677.232.PJJLn9&amp;id=14011986267&amp;rn=e0ac95696e6379fbbb09762e4a1783d6\" target=\"_blank\"><img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T20xC0Xd8bXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2JIHkXcxXXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2tlR8Xl8cXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2kOiZXbdbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2DD5_XcXbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2U5TjXfpaXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2J3LXXoBaXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2FUWGXohbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T26K6hXm4aXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<a href=\"http://detail.tmall.com/item.htm?spm=a1z10.5.w4011-1127672677.108.lZibYM&amp;id=12501106699&amp;rn=62c1af367fed33a46a39abcd6e78a60a\" target=\"_blank\"><img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2jLzeXo0aXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2UffkXclXXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2ePbXXbXbXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2bMBsXdpOXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n						<p>\r\n							<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2ogh4XmBdXXXXXXXX_%21%21228784630.jpg\" /> \r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						？\r\n					</td>\r\n					<td>\r\n						？\r\n					</td>\r\n					<td>\r\n						？\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2vGfcXaBaXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2GUFkXcFOXXXXXXXX_%21%21228784630.jpg\" height=\"46\" width=\"748\" /> \r\n		</p>\r\n		<table style=\"color:#292929;font-size:12px;font-weight:bold;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"685\">\r\n			<tbody>\r\n				<tr>\r\n					<td align=\"right\">\r\n						产品款号：\r\n					</td>\r\n					<td>\r\n						23160037\r\n					</td>\r\n					<td align=\"right\">\r\n						柔软：\r\n					</td>\r\n					<td valign=\"center\">\r\n						<ul class=\"list-paddingleft-2\">\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#ffffff;color:#000000;\">柔软</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#5b5b5b;color:#ffffff;\">适中</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									偏硬\r\n								</p>\r\n							</li>\r\n						</ul>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td align=\"right\">\r\n						产品昵称：\r\n					</td>\r\n					<td>\r\n						扶桑初凉\r\n					</td>\r\n					<td align=\"right\">\r\n						厚度：\r\n					</td>\r\n					<td>\r\n						<ul class=\"list-paddingleft-2\">\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#ffffff;color:#000000;\">厚</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#595959;color:#ffffff;\">适中</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									微薄\r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									透视\r\n								</p>\r\n							</li>\r\n						</ul>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td align=\"right\">\r\n						产品颜色：\r\n					</td>\r\n					<td>\r\n						蓝色 粉色 玫红 绿色 黑色\r\n					</td>\r\n					<td align=\"right\">\r\n						柔软：\r\n					</td>\r\n					<td>\r\n						<ul class=\"list-paddingleft-2\">\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#ffffff;color:#000000;\">超弹</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									弹力\r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#595959;color:#ffffff;\">微弹</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#ffffff;color:#000000;\">无弹力</span> \r\n								</p>\r\n							</li>\r\n						</ul>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td align=\"right\">\r\n						产品成份：\r\n					</td>\r\n					<td>\r\n						<span style=\"background-color:#f7f7f7;color:#6e6e6e;\"><span style=\"background-color:#ffffff;color:#222222;\"><strong><span style=\"color:#000000;\">55%聚丙烯腈纤维45%棉</span></strong></span></span> \r\n					</td>\r\n					<td align=\"right\">\r\n						版型：\r\n					</td>\r\n					<td>\r\n						<ul class=\"list-paddingleft-2\">\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#ffffff;color:#000000;\">修身</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									适中\r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									<span style=\"background-color:#555555;color:#ffffff;\">宽松</span> \r\n								</p>\r\n							</li>\r\n							<li>\r\n								<p>\r\n									直筒\r\n								</p>\r\n							</li>\r\n						</ul>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td align=\"right\">\r\n						克 &nbsp; &nbsp;重：\r\n					</td>\r\n					<td>\r\n						<span style=\"background-color:#f7f7f7;color:#6e6e6e;\"><span style=\"background-color:#ffffff;color:#222222;\"><strong><span style=\"color:#000000;\">0.3kg</span></strong></span></span> \r\n					</td>\r\n					<td align=\"right\">\r\n						？\r\n					</td>\r\n					<td>\r\n						？\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2Why2XbhbXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2PcG.XblbXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T25GTaXh4aXXXXXXXX_%21%21228784630.jpg\" /> \r\n					</td>\r\n					<td>\r\n						<p>\r\n							① 领型\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			圆领，修饰脖颈及锁骨线条。\r\n		</p>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<p>\r\n							② 前襟\r\n						</p>\r\n					</td>\r\n					<td>\r\n						<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T22qhXXhVOXXXXXXXX_%21%21228784630.jpg\" /> \r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			偏开襟设计，活泼中透着婉约气质\r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2c9fiXftaXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2j2edXilcXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T25GTaXh4aXXXXXXXX_%21%21228784630.jpg\" /> \r\n					</td>\r\n					<td>\r\n						<p>\r\n							③ 绣花\r\n						</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			低调而精美，图案古典，针法密实\r\n		</p>\r\n		<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<p>\r\n							④ 下摆\r\n						</p>\r\n					</td>\r\n					<td>\r\n						<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T22qhXXhVOXXXXXXXX_%21%21228784630.jpg\" /> \r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			不规则下摆，打破死板\r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2qNnjXktaXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2hf6jXjdaXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2vwSPXdJbXXXXXXXX_%21%21228784630.jpg\" height=\"31\" width=\"748\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2PbafXhpXXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"460\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<strong>尺码</strong> \r\n					</td>\r\n					<td>\r\n						<strong>后中长</strong> \r\n					</td>\r\n					<td>\r\n						<strong>胸围</strong> \r\n					</td>\r\n					<td>\r\n						<strong>摆围</strong> \r\n					</td>\r\n					<td>\r\n						<strong>袖长</strong> \r\n					</td>\r\n					<td>\r\n						<strong>袖肥</strong> \r\n					</td>\r\n					<td>\r\n						<strong>领宽</strong> \r\n					</td>\r\n					<td>\r\n						<strong>-</strong> \r\n					</td>\r\n					<td>\r\n						<strong>-</strong> \r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						S\r\n					</td>\r\n					<td>\r\n						64\r\n					</td>\r\n					<td>\r\n						92\r\n					</td>\r\n					<td>\r\n						92\r\n					</td>\r\n					<td>\r\n						61\r\n					</td>\r\n					<td>\r\n						26\r\n					</td>\r\n					<td>\r\n						29\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						M\r\n					</td>\r\n					<td>\r\n						66\r\n					</td>\r\n					<td>\r\n						96\r\n					</td>\r\n					<td>\r\n						96\r\n					</td>\r\n					<td>\r\n						63\r\n					</td>\r\n					<td>\r\n						27\r\n					</td>\r\n					<td>\r\n						29\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						L\r\n					</td>\r\n					<td>\r\n						68\r\n					</td>\r\n					<td>\r\n						100\r\n					</td>\r\n					<td>\r\n						100\r\n					</td>\r\n					<td>\r\n						65\r\n					</td>\r\n					<td>\r\n						28\r\n					</td>\r\n					<td>\r\n						30\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						XL\r\n					</td>\r\n					<td>\r\n						70\r\n					</td>\r\n					<td>\r\n						104\r\n					</td>\r\n					<td>\r\n						104\r\n					</td>\r\n					<td>\r\n						67\r\n					</td>\r\n					<td>\r\n						29\r\n					</td>\r\n					<td>\r\n						30\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n					<td>\r\n						-\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			由于尺码是纯手工测量所以难免存在1CM-3CM,请精灵见谅。\r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T293WhXdNcXXXXXXXX_%21%21228784630.jpg\" height=\"33\" width=\"748\" /> \r\n		</p>\r\n		<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"690\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						模特橙子\r\n					</td>\r\n					<td>\r\n						身高168CM\r\n					</td>\r\n					<td>\r\n						体重45KG\r\n					</td>\r\n					<td>\r\n						三围： 81/57/82/\r\n					</td>\r\n					<td>\r\n						肩宽 37CM &nbsp; 穿S码（裤子穿25码）\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						模特田心\r\n					</td>\r\n					<td>\r\n						身高165CM\r\n					</td>\r\n					<td>\r\n						体重45KG\r\n					</td>\r\n					<td>\r\n						三围： 80/58.5/83/\r\n					</td>\r\n					<td>\r\n						肩宽 37CM &nbsp; 穿S码（裤子穿25码）\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						试衣模特\r\n					</td>\r\n					<td>\r\n						身高160CM\r\n					</td>\r\n					<td>\r\n						体重50KG\r\n					</td>\r\n					<td>\r\n						三围： 84/66/85/\r\n					</td>\r\n					<td>\r\n						平时穿M码/裤子26 码 此款***码 合适\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						试衣模特\r\n					</td>\r\n					<td>\r\n						身高168CM\r\n					</td>\r\n					<td>\r\n						体重62.5KG\r\n					</td>\r\n					<td>\r\n						三围： 100/82/95/\r\n					</td>\r\n					<td>\r\n						平时穿L码/裤子29 码 此款***码 合适\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2l1PkXaNXXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n		<p>\r\n			<img alt=\"裂帛 裂帛正品 2013秋装新款 女 绣花针织衫 开衫外套23160037浮桑初\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2vh2cXhBaXXXXXXXX_%21%21228784630.jpg\" /> \r\n		</p>\r\n	</div>\r\n</div>', '1', null, '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '189.00', '702.00', '56.00', '26', '23160037', '0', '', '1', '0.00', '0', '1', '36', ',0,', '0', '0');
INSERT INTO `gs_goods_common` VALUES ('100009', '2014春款打底毛衫拼色毛衣 长袖套头针织衫 莺', '', '14', '服饰鞋帽 &gt;女装 &gt;针织衫', '1', '官方店铺', 'a:2:{i:1;s:6:\"颜色\";i:16;s:2:\"ee\";}', 'a:2:{i:1;a:2:{i:239;s:6:\"绿色\";i:240;s:6:\"梅红\";}i:16;a:2:{i:442;s:2:\"e1\";i:446;s:2:\"e2\";}}', '101', '爱帝', '34', '1_04418211211965600.jpg', 'a:5:{i:206;a:2:{s:4:\"name\";s:6:\"款式\";i:3050;s:6:\"毛衣\";}i:207;a:2:{s:4:\"name\";s:6:\"材质\";i:3064;s:13:\"羊毛/羊绒\";}i:208;a:2:{s:4:\"name\";s:6:\"价格\";i:3069;s:7:\"100-199\";}i:209;a:2:{s:4:\"name\";s:6:\"袖长\";i:3076;s:6:\"长袖\";}i:210;a:2:{s:4:\"name\";s:6:\"风格\";i:3087;s:12:\"原创设计\";}}', '<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" title=\"温馨提示.jpg\" src=\"http://pimg1.imglefeng.com/decoration/1000000029/947d983961bd9a8fcc2ea78818fbd5f1_1386214294101.jpg\" />&nbsp;\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2bpwSXeNaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" id=\"ids-tag-m-5\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2_JMRXdtaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2GPiRXj8bXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				&nbsp;\r\n			</td>\r\n			<td>\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2o5ciXfpXXXXXXXXX_%21%211124754276.jpg\" height=\"90\" width=\"750\" /> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n				<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2p2jJXaxbXXXXXXXX_%21%211124754276.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T25UIRXb8aXXXXXXXX_%21%211124754276.jpg\" height=\"58\" width=\"440\" /> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:微软雅黑;font-size:12px;background-color:#ffffff;\">\r\n				<p>\r\n					分割的情感落成一片一片的<br />\r\n棱角坚实地分布在人们身着的欣喜中<br />\r\n温暖自空气 流入身体<br />\r\n你在一个果园里采摘到热爱<br />\r\n或者简单的设计以及无法藏掖的暧昧<br />\r\n拒绝无所适从的情感<br />\r\n一切都很自然、美丽以及大方\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n					<tbody>\r\n						<tr>\r\n							<td>\r\n								&nbsp;\r\n							</td>\r\n							<td>\r\n								<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2269NXjNbXXXXXXXX_%21%211124754276.jpg\" height=\"30\" width=\"14\" /> \r\n							</td>\r\n							<td>\r\n								<p>\r\n									24160069 莺伞 腈棉直筒螺纹下摆梭织毛衣\r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n					<tbody>\r\n						<tr>\r\n							<td style=\"background-color:#ffffff;\">\r\n								&nbsp;\r\n							</td>\r\n							<td style=\"font-family:微软雅黑;font-size:12px;\">\r\n								设计点：直筒型/大圆领/拼接袖/腈棉/几何分割图案/罗纹下摆\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2FZESXk0XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T22BrjXf0XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T298ZRXdhaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2.6niXmlaXXXXXXXX_%21%211124754276.jpg\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2Z0VvXXtOXXXXXXXX_%21%211124754276.jpg\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2BX6kXbtXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2mWbnXfBaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2KX_nXgXaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2CdDnXgRXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2o.2iXXNbXXXXXXXX_%21%211124754276.jpg\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2uWlvXcdOXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" id=\"ids-tag-m-4\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2JksTXXtXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"color:#292929;font-size:12px;font-weight:bold;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"685\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品款号：\r\n			</td>\r\n			<td>\r\n				24160069\r\n			</td>\r\n			<td align=\"right\">\r\n				柔软：\r\n			</td>\r\n			<td valign=\"center\">\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#5d5d5d;color:#ffffff;\">柔软</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							偏硬\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品昵称：\r\n			</td>\r\n			<td>\r\n				莺伞\r\n			</td>\r\n			<td align=\"right\">\r\n				厚度：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">加厚</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							厚&nbsp;\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中&nbsp;\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#626262;color:#ffffff;\">薄款</span> \r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品颜色：\r\n			</td>\r\n			<td>\r\n				蓝色 绿色 橙色\r\n			</td>\r\n			<td align=\"right\">\r\n				弹力：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">超弹</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							弹力\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#5f5f5f;color:#ffffff;\">微弹</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							无弹力\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品成份：\r\n			</td>\r\n			<td>\r\n				54.2%聚丙烯腈纤维45.8%棉\r\n			</td>\r\n			<td align=\"right\">\r\n				版型：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">修身</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							直筒&nbsp;\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#626262;color:#ffffff;\">宽松</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				克&nbsp;&nbsp;&nbsp; 重：\r\n			</td>\r\n			<td>\r\n				0.26kg\r\n			</td>\r\n			<td align=\"right\">\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" id=\"ids-tag-m-1\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T26aZSXo4XXXXXXXXX_%21%211124754276.jpg\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2XXwgXe0aXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2I5cgXaRaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"460\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<b>尺码</b> \r\n			</td>\r\n			<td>\r\n				<b>左身长</b> \r\n			</td>\r\n			<td>\r\n				<b>适用胸围</b> \r\n			</td>\r\n			<td>\r\n				<b>摆围</b> \r\n			</td>\r\n			<td>\r\n				<b>肩宽</b> \r\n			</td>\r\n			<td>\r\n				<b>袖长</b> \r\n			</td>\r\n			<td>\r\n				<b>袖肥</b> \r\n			</td>\r\n			<td>\r\n				<b>袖口</b> \r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				S\r\n			</td>\r\n			<td>\r\n				66\r\n			</td>\r\n			<td>\r\n				92-96\r\n			</td>\r\n			<td>\r\n				71\r\n			</td>\r\n			<td>\r\n				56\r\n			</td>\r\n			<td>\r\n				46\r\n			</td>\r\n			<td>\r\n				25\r\n			</td>\r\n			<td>\r\n				16\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				M\r\n			</td>\r\n			<td>\r\n				68\r\n			</td>\r\n			<td>\r\n				96-100\r\n			</td>\r\n			<td>\r\n				75\r\n			</td>\r\n			<td>\r\n				58\r\n			</td>\r\n			<td>\r\n				47\r\n			</td>\r\n			<td>\r\n				26\r\n			</td>\r\n			<td>\r\n				17\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				L\r\n			</td>\r\n			<td>\r\n				70\r\n			</td>\r\n			<td>\r\n				100-104\r\n			</td>\r\n			<td>\r\n				79\r\n			</td>\r\n			<td>\r\n				60\r\n			</td>\r\n			<td>\r\n				48\r\n			</td>\r\n			<td>\r\n				27\r\n			</td>\r\n			<td>\r\n				18\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				XL\r\n			</td>\r\n			<td>\r\n				72\r\n			</td>\r\n			<td>\r\n				104-108\r\n			</td>\r\n			<td>\r\n				83\r\n			</td>\r\n			<td>\r\n				62\r\n			</td>\r\n			<td>\r\n				49\r\n			</td>\r\n			<td>\r\n				28\r\n			</td>\r\n			<td>\r\n				19\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				XXL\r\n			</td>\r\n			<td>\r\n				74\r\n			</td>\r\n			<td>\r\n				108-112\r\n			</td>\r\n			<td>\r\n				87\r\n			</td>\r\n			<td>\r\n				64\r\n			</td>\r\n			<td>\r\n				50\r\n			</td>\r\n			<td>\r\n				29\r\n			</td>\r\n			<td>\r\n				20\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	由于尺码是纯手工测量所以难免存在1CM-3CM，请精灵们谅解。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" id=\"ids-tag-m-2\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛  裂帛2013秋款打底毛衫拼色毛衣 长袖套头针织衫24160069莺\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2eJkSXm0XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"690\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				模特橙子\r\n			</td>\r\n			<td>\r\n				身高168CM\r\n			</td>\r\n			<td>\r\n				体重45KG\r\n			</td>\r\n			<td>\r\n				三围： 81/57/82/\r\n			</td>\r\n			<td>\r\n				肩宽 37CM&nbsp;&nbsp; 穿S码（裤子穿25码）\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				模特田心\r\n			</td>\r\n			<td>\r\n				身高165CM\r\n			</td>\r\n			<td>\r\n				体重45KG\r\n			</td>\r\n			<td>\r\n				三围： 80/58.5/83/\r\n			</td>\r\n			<td>\r\n				肩宽 37CM&nbsp;&nbsp; 穿S码（裤子穿25码）\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				试衣模特\r\n			</td>\r\n			<td>\r\n				身高**CM\r\n			</td>\r\n			<td>\r\n				体重**KG\r\n			</td>\r\n			<td>\r\n				三围： **/**/**/\r\n			</td>\r\n			<td>\r\n				平时穿M码/裤子26 码 此款***码 合适\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				试衣模特\r\n			</td>\r\n			<td>\r\n				身高**CM\r\n			</td>\r\n			<td>\r\n				体重**KG\r\n			</td>\r\n			<td>\r\n				三围： **/**/**/\r\n			</td>\r\n			<td>\r\n				平时穿L码/裤子29 码 此款***码 合适\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>', '1', null, '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '179.00', '568.00', '0.00', '31', '24160069', '0', '', '1', '0.00', '0', '1', '36', ',0,', '0', '0');
INSERT INTO `gs_goods_common` VALUES ('100010', '春装 披肩式 超短款 针织 衫开衫 女装 青鸟', '', '14', '服饰鞋帽 &gt;女装 &gt;针织衫', '1', '官方店铺', 'a:1:{i:1;s:6:\"颜色\";}', 'a:1:{i:1;a:6:{i:239;s:6:\"绿色\";i:240;s:6:\"梅红\";i:241;s:6:\"蓝色\";i:242;s:6:\"黑色\";i:243;s:6:\"橙色\";i:228;s:6:\"灰色\";}}', '103', '', '34', '1_04418239521122578.jpg', 'a:5:{i:206;a:2:{s:4:\"name\";s:6:\"款式\";i:3050;s:6:\"毛衣\";}i:207;a:2:{s:4:\"name\";s:6:\"材质\";i:3064;s:13:\"羊毛/羊绒\";}i:208;a:2:{s:4:\"name\";s:6:\"价格\";i:3069;s:7:\"100-199\";}i:209;a:2:{s:4:\"name\";s:6:\"袖长\";i:3076;s:6:\"长袖\";}i:210;a:2:{s:4:\"name\";s:6:\"风格\";i:3087;s:12:\"原创设计\";}}', '<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2o_1tXXtcXXXXXXXX_%21%21228784630.jpg\" /><img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2uNvKXfBaXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td align=\"left\" valign=\"top\">\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2vDzeXf0aXXXXXXXX_%21%21228784630.gif\" height=\"13\" width=\"14\" /> \r\n			</td>\r\n			<td style=\"font-size:14px;font-weight:bold;\">\r\n				21160068 青鸟 披肩式超短款针织开衫\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<br />\r\n			</td>\r\n			<td style=\"font-size:12px;\">\r\n				设计点：百搭 \\ 无扣 \\ 连襟领 \\ 坎肩型 \\ 粘纤纱线 \\ 可做空调衫\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T29NbrXjVaXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T24vu6XbVbXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2ULmqXXRcXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<a target=\"_blank\" href=\"http://item.taobao.com/item.htm?spm=a220z.1000881.0.46.x5VeTX&amp;id=16502932964&amp;bucket_id=19\"><img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2EvfsXkdXXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2dq9KXjBbXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T29urrXjVaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<a target=\"_blank\" href=\"http://item.taobao.com/item.htm?spm=a220z.1000880.0.44.QoN0fi&amp;id=16277417495&amp;bucket_id=19\"><img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2qWHrXhhaXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2ZY0HXXXOXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2HrHsXnhXXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<a target=\"_blank\" href=\"http://item.taobao.com/item.htm?spm=a220z.1000880.0.44.CgfZ7Y&amp;id=16824833952&amp;bucket_id=19\"><img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2BFPoXXpbXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2Xc6rXkVaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2nOPrXjtaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2ImYmXoRaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T24dyTXchbXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2F8zgXfBbXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2X1_sXetXXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2enfrXd8aXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<a target=\"_blank\" href=\"http://item.taobao.com/item.htm?spm=a220z.1000881.0.51.1vaa5j&amp;id=18538963088&amp;bucket_id=19\"><img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2l6e7XcXbXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T248brXgtaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2NId2XmpcXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T230lnXf0OXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2D3LrXhBaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2GdjKXflaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T22UbCXbVbXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2gqHLXnlXXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2w56KXjhXXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2V6fKXglaXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2rEzrXeFXXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2VEVpXfxOXXXXXXXX_%21%21228784630.jpg\" /> \r\n				</p>\r\n				<p>\r\n					<a target=\"_blank\" href=\"http://item.taobao.com/item.htm?spm=a220z.1000880.0.44.Sty9W6&amp;id=16143249430&amp;bucket_id=19\"><img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2OKOGXapcXXXXXXXX_%21%21228784630.jpg\" /></a> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2_6bcXmRXXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2GUFkXcFOXXXXXXXX_%21%21228784630.jpg\" height=\"46\" width=\"748\" /> \r\n</p>\r\n<table style=\"color:#292929;font-size:12px;font-weight:bold;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"685\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品款号：\r\n			</td>\r\n			<td>\r\n				21160068\r\n			</td>\r\n			<td align=\"right\">\r\n				柔软：\r\n			</td>\r\n			<td valign=\"center\">\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#5d5d5d;\">柔软</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							偏硬\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品昵称：\r\n			</td>\r\n			<td>\r\n				青鸟\r\n			</td>\r\n			<td align=\"right\">\r\n				厚度：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;\">加厚</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							厚&nbsp;\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中&nbsp;\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#5d5d5d;\">薄款</span> \r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品颜色：\r\n			</td>\r\n			<td>\r\n				黑色 红色 绿色 玫红 蓝色 灰色\r\n			</td>\r\n			<td align=\"right\">\r\n				弹力：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;\">超弹</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#626262;\">弹力</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							微弹\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							无弹力\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品成份：\r\n			</td>\r\n			<td>\r\n				100%粘纤\r\n			</td>\r\n			<td align=\"right\">\r\n				版型：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#5d5d5d;\">修身</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							宽松\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							直筒\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				克&nbsp;&nbsp;&nbsp; 重：\r\n			</td>\r\n			<td>\r\n				0.137KG\r\n			</td>\r\n			<td align=\"right\">\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2iO8XXhdOXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T25GTaXh4aXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<p>\r\n					① 超短款\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	短款设计，让上下身比例趋于完美，更显高瘦\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					② 连襟领\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T22qhXXhVOXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	连襟领配无扣前襟，展现锁骨和颈部的精致线条\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2OlPpXcFXXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2eOpOXfVeXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T25GTaXh4aXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<p>\r\n					③ 罗纹袖口\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	袖口螺纹，纤长手臂，方便挽起\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					④ 前下摆\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T22qhXXhVOXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	后摆下收成，更贴身舒适\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2icyAXaXcXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T2CRjKXddaXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2dbvbXglXXXXXXXXX_%21%21228784630.jpg\" height=\"37\" width=\"748\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2huDcXo8XXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2vUteXiNOXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img02.taobaocdn.com/imgextra/i2/228784630/T2TnvcXeRXXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2EcLcXjRaXXXXXXXX_%21%21228784630.jpg\" /> \r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2vwSPXdJbXXXXXXXX_%21%21228784630.jpg\" height=\"31\" width=\"748\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T2PbafXhpXXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"460\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<b>尺码</b> \r\n			</td>\r\n			<td>\r\n				<b>身长</b> \r\n			</td>\r\n			<td>\r\n				<b>胸围</b> \r\n			</td>\r\n			<td>\r\n				<b>袖长</b> \r\n			</td>\r\n			<td>\r\n				<strong>袖肥</strong> \r\n			</td>\r\n			<td>\r\n				<strong>袖口</strong> \r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				S\r\n			</td>\r\n			<td>\r\n				41\r\n			</td>\r\n			<td>\r\n				63\r\n			</td>\r\n			<td>\r\n				57\r\n			</td>\r\n			<td>\r\n				24\r\n			</td>\r\n			<td>\r\n				17\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				M\r\n			</td>\r\n			<td>\r\n				43\r\n			</td>\r\n			<td>\r\n				67\r\n			</td>\r\n			<td>\r\n				58\r\n			</td>\r\n			<td>\r\n				25\r\n			</td>\r\n			<td>\r\n				18\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				L\r\n			</td>\r\n			<td>\r\n				45\r\n			</td>\r\n			<td>\r\n				71\r\n			</td>\r\n			<td>\r\n				59\r\n			</td>\r\n			<td>\r\n				26\r\n			</td>\r\n			<td>\r\n				19\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				XL\r\n			</td>\r\n			<td>\r\n				47\r\n			</td>\r\n			<td>\r\n				75\r\n			</td>\r\n			<td>\r\n				60\r\n			</td>\r\n			<td>\r\n				27\r\n			</td>\r\n			<td>\r\n				20\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				XXL\r\n			</td>\r\n			<td>\r\n				49\r\n			</td>\r\n			<td>\r\n				79\r\n			</td>\r\n			<td>\r\n				61\r\n			</td>\r\n			<td>\r\n				28\r\n			</td>\r\n			<td>\r\n				21\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	由于尺码是纯手工测量所以难免存在1CM-3CM，请精灵们谅解。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T293WhXdNcXXXXXXXX_%21%21228784630.jpg\" height=\"33\" width=\"748\" /> \r\n</p>\r\n<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"690\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				模特橙子\r\n			</td>\r\n			<td>\r\n				身高168CM\r\n			</td>\r\n			<td>\r\n				体重45KG\r\n			</td>\r\n			<td>\r\n				三围： 81/57/82/\r\n			</td>\r\n			<td>\r\n				肩宽 37CM&nbsp;&nbsp; 穿S码（裤子穿25码）\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				模特田心\r\n			</td>\r\n			<td>\r\n				身高165CM\r\n			</td>\r\n			<td>\r\n				体重45KG\r\n			</td>\r\n			<td>\r\n				三围： 80/58.5/83/\r\n			</td>\r\n			<td>\r\n				肩宽 37CM&nbsp;&nbsp; 穿S码（裤子穿25码）\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				试衣模特\r\n			</td>\r\n			<td>\r\n				身高160CM\r\n			</td>\r\n			<td>\r\n				体重50KG\r\n			</td>\r\n			<td>\r\n				三围： 84/66/85/\r\n			</td>\r\n			<td>\r\n				平时穿M码/裤子26 码 此款***码 合适\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				试衣模特\r\n			</td>\r\n			<td>\r\n				身高168CM\r\n			</td>\r\n			<td>\r\n				体重62.5KG\r\n			</td>\r\n			<td>\r\n				三围： 100/82/95/\r\n			</td>\r\n			<td>\r\n				平时穿L码/裤子29 码 此款***码 合适\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img03.taobaocdn.com/imgextra/i3/228784630/T29qR4XnXdXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛 秋装 披肩式 超短款 针织 衫开衫 女21160068青鸟\" src=\"http://img01.taobaocdn.com/imgextra/i1/228784630/T2vh2cXhBaXXXXXXXX_%21%21228784630.jpg\" /> \r\n</p>', '0', null, '1', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '129.00', '358.00', '0.00', '36', '', '0', '', '1', '0.00', '0', '1', '36', ',0,', '1', '2');
INSERT INTO `gs_goods_common` VALUES ('100011', '新款 女款 拼接 不规则摆 长袖针织衫开衫 杏雨', '2014新款，特惠促销', '14', '服饰鞋帽 &gt;女装 &gt;针织衫', '1', '官方店铺', 'a:2:{i:1;s:6:\"颜色\";i:16;s:2:\"ee\";}', 'a:2:{i:1;a:2:{i:249;s:6:\"白色\";i:250;s:6:\"紫色\";}i:16;a:1:{i:446;s:2:\"e2\";}}', '108', '挪巍', '34', '1_04418253240878850.jpg', 'a:5:{i:206;a:2:{s:4:\"name\";s:6:\"款式\";i:3056;s:9:\"蝙蝠衫\";}i:207;a:2:{s:4:\"name\";s:6:\"材质\";i:3059;s:3:\"棉\";}i:208;a:2:{s:4:\"name\";s:6:\"价格\";i:3068;s:4:\"0-99\";}i:209;a:2:{s:4:\"name\";s:6:\"袖长\";i:3076;s:6:\"长袖\";}i:210;a:2:{s:4:\"name\";s:6:\"风格\";i:3088;s:6:\"百搭\";}}', '<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" title=\"温馨提示.jpg\" src=\"http://pimg2.imglefeng.com/decoration/1000000029/947d983961bd9a8fcc2ea78818fbd5f1_1378452905642.jpg\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2jUjiXn0aXXXXXXXX_%21%211124754276.jpg?4caa155c10bcc783150746582de00275\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" id=\"ids-tag-m-5\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2CEZIXelXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td align=\"left\" valign=\"top\">\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2HRYjXfhXXXXXXXXX_%21%211124754276.jpg\" /> \r\n			</td>\r\n			<td style=\"font-size:14px;font-weight:bold;\">\r\n				51130454 杏雨 清新色系花边拼接长袖针织衫\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				？\r\n			</td>\r\n			<td style=\"font-size:12px;\">\r\n				设计点：精巧圆领（两侧开小口） /插肩袖 / 网布绣花花边拼接 / 单排扣门襟 / 甜美糖果色纽扣 / 百搭长袖 / 罗纹袖口 / 高腰分割效果 / 褶皱装饰 / 不规则下摆 /轻薄针织衫\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2uht5XlBdXXXXXXXX_%21%211124754276.jpg\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2CVgIXdlaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2OncIXgtXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2iV7IXn8XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2YVAIXdNaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2I7kGXhlaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2e9EHXclaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2ytgHXjxaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2qJsIXapaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2VaMJXbFXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2TvZIXihXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2Su3IXkBXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T28_.HXfdaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2t9gHXd0aXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2aHkJXb4XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" id=\"ids-tag-m-4\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2.kjjXjXXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2TDm1XctbXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"color:#292929;font-size:12px;font-weight:bold;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"685\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品款号：\r\n			</td>\r\n			<td>\r\n				51130454\r\n			</td>\r\n			<td align=\"right\">\r\n				柔软：\r\n			</td>\r\n			<td valign=\"center\">\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">柔软</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#636363;color:#ffffff;\">适中</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							偏硬\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品昵称：\r\n			</td>\r\n			<td>\r\n				杏雨\r\n			</td>\r\n			<td align=\"right\">\r\n				厚度：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">加厚</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							厚\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#636363;color:#ffffff;\">适中</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							薄款\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品颜色：\r\n			</td>\r\n			<td>\r\n				粉色 紫色 白色\r\n			</td>\r\n			<td align=\"right\">\r\n				弹力：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">超弹</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#626262;color:#ffffff;\">弹力</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							微弹\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							无弹力\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				产品成份：\r\n			</td>\r\n			<td>\r\n				55%聚丙烯腈纤维45%棉\r\n			</td>\r\n			<td align=\"right\">\r\n				版型：\r\n			</td>\r\n			<td>\r\n				<ul class=\"list-paddingleft-2\">\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#ffffff;color:#000000;\">修身</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							直筒\r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							<span style=\"background-color:#6b6b6b;color:#ffffff;\">宽松</span> \r\n						</p>\r\n					</li>\r\n					<li>\r\n						<p>\r\n							适中\r\n						</p>\r\n					</li>\r\n				</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"right\">\r\n				克 重：\r\n			</td>\r\n			<td>\r\n				0.156KG\r\n			</td>\r\n			<td align=\"right\">\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/228784630/T25.VBXdpOXXXXXXXX_%21%21228784630.jpg\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2DLAHXcXaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T20hcIXe0XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2DQjiXhFaXXXXXXXX_%21%211124754276.jpg?82c0a15cd9b4e1656ddf9534acc87ac8\" /> \r\n			</td>\r\n			<td>\r\n				<p>\r\n					① 精致开口圆领\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	小巧精致的圆领，两侧插肩接缝处添加小小开口设计，趣味感十足\r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					② 雅致花边拼接\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2LO16XeXbXXXXXXXX_%21%211124754276.jpg?02e8eefb6edde3e53093aac4a2b6f462\" /> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	肩袖处拼接白色羽毛状绣花网眼布，在清新色彩上更显雅致\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2BQL6XeRbXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2ZqMHXmRaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2DQjiXhFaXXXXXXXX_%21%211124754276.jpg?82c0a15cd9b4e1656ddf9534acc87ac8\" /> \r\n			</td>\r\n			<td>\r\n				<p>\r\n					③ 糖果色纽扣\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	单排扣门襟，纽扣与衣服同一色系，色彩更加鲜亮活泼，非常俏皮可爱\r\n</p>\r\n<table class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					④ 不规则下摆\r\n				</p>\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2LO16XeXbXXXXXXXX_%21%211124754276.jpg?02e8eefb6edde3e53093aac4a2b6f462\" /> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	不要中规中矩，优雅独特的气质跳跃而出\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2JakIXo4XXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2fIgGXjhaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2B59pXeVcXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"font-family:微软雅黑;color:#000000;font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n				？\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2HRYjXfhXXXXXXXXX_%21%211124754276.jpg\" height=\"13\" width=\"14\" /> \r\n			</td>\r\n			<td>\r\n				<p>\r\n					素雅绣花网眼布拼接\r\n				</p>\r\n			</td>\r\n			<td rowspan=\"2\">\r\n				？\r\n			</td>\r\n			<td>\r\n				<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2HRYjXfhXXXXXXXXX_%21%211124754276.jpg\" height=\"13\" width=\"14\" /> \r\n			</td>\r\n			<td>\r\n				<p>\r\n					柔和亲肤腈棉材质\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" valign=\"top\">\r\n				<p>\r\n					肩袖处拼接绣花网眼布，使用单色线绣法，用色淡雅，纹样精美，做工精致。由于绣在网布之上，使网布绣花看起来接近蕾丝的质地，古典婉约，并且兼具蕾丝的甜美与性感。\r\n				</p>\r\n			</td>\r\n			<td colspan=\"2\" valign=\"top\">\r\n				<p>\r\n					腈棉是聚丙烯腈纤维和棉的混纺物。拥有聚丙烯腈纤维弹性好、蓬松卷曲而柔软的特点，柔软蓬松，易染色、色泽鲜艳、耐光、抗菌，不怕虫蛀等。同时结合棉吸湿性好，手感柔软、卫生舒适、光泽柔和、有自然美感等贴点，穿着更加柔和亲肤。\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2XXwgXe0aXXXXXXXX_%21%211124754276.jpg\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2.fJ8XktcXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img04.taobaocdn.com/imgextra/i4/1124754276/T2I5cgXaRaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"460\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<strong>尺码</strong> \r\n			</td>\r\n			<td>\r\n				<strong>身长</strong> \r\n			</td>\r\n			<td>\r\n				<strong>胸围</strong> \r\n			</td>\r\n			<td>\r\n				<strong>摆围</strong> \r\n			</td>\r\n			<td>\r\n				<strong>袖长</strong> \r\n			</td>\r\n			<td>\r\n				<strong>袖肥</strong> \r\n			</td>\r\n			<td>\r\n				<strong>袖口</strong> \r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				S\r\n			</td>\r\n			<td>\r\n				58\r\n			</td>\r\n			<td>\r\n				84\r\n			</td>\r\n			<td>\r\n				138\r\n			</td>\r\n			<td>\r\n				69\r\n			</td>\r\n			<td>\r\n				26\r\n			</td>\r\n			<td>\r\n				17\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				M\r\n			</td>\r\n			<td>\r\n				60\r\n			</td>\r\n			<td>\r\n				88\r\n			</td>\r\n			<td>\r\n				142\r\n			</td>\r\n			<td>\r\n				70.5\r\n			</td>\r\n			<td>\r\n				27\r\n			</td>\r\n			<td>\r\n				18\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					L\r\n				</p>\r\n			</td>\r\n			<td>\r\n				62\r\n			</td>\r\n			<td>\r\n				92\r\n			</td>\r\n			<td>\r\n				146\r\n			</td>\r\n			<td>\r\n				72\r\n			</td>\r\n			<td>\r\n				28\r\n			</td>\r\n			<td>\r\n				19\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				XL\r\n			</td>\r\n			<td>\r\n				64\r\n			</td>\r\n			<td>\r\n				96\r\n			</td>\r\n			<td>\r\n				150\r\n			</td>\r\n			<td>\r\n				73.5\r\n			</td>\r\n			<td>\r\n				29\r\n			</td>\r\n			<td>\r\n				20\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				XXL\r\n			</td>\r\n			<td>\r\n				66\r\n			</td>\r\n			<td>\r\n				100\r\n			</td>\r\n			<td>\r\n				154\r\n			</td>\r\n			<td>\r\n				75\r\n			</td>\r\n			<td>\r\n				30\r\n			</td>\r\n			<td>\r\n				21\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				-\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n			<td>\r\n				？\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	由于尺码是纯手工测量所以难免存在1CM-3CM，请精灵们谅解。\r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" id=\"ids-tag-m-2\" class=\"ke_anchor\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" /><img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img03.taobaocdn.com/imgextra/i3/1124754276/T2id2jXctaXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<table style=\"font-size:12px;\" class=\"ke-zeroborder\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"690\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				模特橙子\r\n			</td>\r\n			<td>\r\n				身高168CM\r\n			</td>\r\n			<td>\r\n				体重45KG\r\n			</td>\r\n			<td>\r\n				三围： 81/57/82/\r\n			</td>\r\n			<td>\r\n				肩宽 37CM 穿S码（裤子穿25码）\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				模特田心\r\n			</td>\r\n			<td>\r\n				身高165CM\r\n			</td>\r\n			<td>\r\n				体重45KG\r\n			</td>\r\n			<td>\r\n				三围： 80/58.5/83/\r\n			</td>\r\n			<td>\r\n				肩宽 37CM 穿S码（裤子穿25码）\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				试衣模特\r\n			</td>\r\n			<td>\r\n				身高**CM\r\n			</td>\r\n			<td>\r\n				体重**KG\r\n			</td>\r\n			<td>\r\n				三围： **/**/**/\r\n			</td>\r\n			<td>\r\n				平时穿M码/裤子26 码 此款***码 合适\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				试衣模特\r\n			</td>\r\n			<td>\r\n				身高**CM\r\n			</td>\r\n			<td>\r\n				体重**KG\r\n			</td>\r\n			<td>\r\n				三围： **/**/**/\r\n			</td>\r\n			<td>\r\n				平时穿L码/裤子29 码 此款***码 合适\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img01.taobaocdn.com/imgextra/i1/1124754276/T2DIsIXoXXXXXXXXXX_%21%211124754276.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"裂帛 裂帛新款 女 拼接 不规则摆 长袖针织衫开衫51130454杏雨\" src=\"http://img02.taobaocdn.com/imgextra/i2/1124754276/T2YEDiXmVaXXXXXXXX_%21%211124754276.jpg?2bb287f60d61e3f3159f1bbaa3b7e3c6\" /> \r\n</p>', '0', null, '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '99.00', '483.00', '0.00', '20', '', '0', '', '1', '0.00', '0', '1', '36', ',0,', '0', '0');
INSERT INTO `gs_goods_common` VALUES ('100085', '至尊金奖 法国原瓶进口AOC红酒 任选一箱 红沙城堡红葡萄酒', '全国唯一支持开瓶试饮7天无理由退换货', '630', '食品饮料 &gt;中外名酒 &gt;葡萄酒', '1', '官方店铺', 'a:1:{i:29;s:6:\"口味\";}', 'a:1:{i:29;a:1:{i:403;s:12:\"原装进口\";}}', '263', '长城葡萄酒', '50', '1_04423392298369303.jpg', 'a:4:{i:273;a:2:{s:4:\"name\";s:6:\"产地\";i:3512;s:6:\"其他\";}i:274;a:2:{s:4:\"name\";s:6:\"价格\";i:3517;s:8:\"500-1000\";}i:275;a:2:{s:4:\"name\";s:6:\"特性\";i:3520;s:9:\"无添加\";}i:276;a:2:{s:4:\"name\";s:6:\"包装\";i:3529;s:6:\"箱装\";}}', '<img src=\"../data/upload/shop/store/goods/1/1_04423392645620711_1280.jpg\" alt=\"image\" />', '1', null, '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '899.00', '1688.00', '0.00', '53', '', '0', '', '1', '0.00', '0', '1', '36', ',0,', '0', '0');
INSERT INTO `gs_goods_common` VALUES ('100086', '中华老字号 东阿阿胶桃花姬阿胶糕300g', '', '617', '食品饮料 &gt;休闲食品 &gt;坚果炒货', '1', '官方店铺', 'N;', 'N;', '250', '养生堂', '50', '1_04423411880302392.png', 'a:4:{i:273;a:2:{s:4:\"name\";s:6:\"产地\";i:3510;s:6:\"中国\";}i:274;a:2:{s:4:\"name\";s:6:\"价格\";i:3515;s:7:\"100-200\";}i:275;a:2:{s:4:\"name\";s:6:\"特性\";i:3520;s:9:\"无添加\";}i:276;a:2:{s:4:\"name\";s:6:\"包装\";i:3527;s:9:\"礼盒装\";}}', '<img src=\"../data/upload/shop/store/goods/1/1_04423412221350722_1280.jpg\" alt=\"image\" />', '1', null, '1', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '150.00', '168.00', '0.00', '89', '', '0', '', '1', '0.00', '0', '1', '36', ',0,', '0', '0');

-- ----------------------------
-- Table structure for gs_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `gs_goods_type`;
CREATE TABLE `gs_goods_type` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `type_name` varchar(100) NOT NULL COMMENT '类型名称',
  `type_sort` tinyint(1) unsigned NOT NULL COMMENT '排序',
  `class_id` int(10) unsigned DEFAULT '0' COMMENT '所属分类id',
  `class_name` varchar(100) NOT NULL COMMENT '所属分类名称',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

-- ----------------------------
-- Records of gs_goods_type
-- ----------------------------
INSERT INTO `gs_goods_type` VALUES ('34', '服饰鞋/女装/针织衫', '3', '14', '针织衫');
INSERT INTO `gs_goods_type` VALUES ('35', '服饰鞋帽/女装/雪纺衫', '4', '15', '雪纺衫');
INSERT INTO `gs_goods_type` VALUES ('36', '服饰鞋帽/女装/卫衣', '5', '16', '卫衣');

-- ----------------------------
-- Table structure for gs_member
-- ----------------------------
DROP TABLE IF EXISTS `gs_member`;
CREATE TABLE `gs_member` (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `member_truename` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `member_avatar` varchar(500) DEFAULT NULL COMMENT '会员头像',
  `member_sex` tinyint(1) DEFAULT '0' COMMENT '会员性别',
  `member_birthday` date DEFAULT NULL COMMENT '生日',
  `member_email` varchar(100) NOT NULL COMMENT '会员邮箱',
  `member_qq` varchar(100) DEFAULT NULL COMMENT 'qq',
  `member_ww` varchar(100) DEFAULT NULL COMMENT '阿里旺旺',
  `member_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '会员注册时间',
  `member_qqopenid` varchar(100) DEFAULT NULL COMMENT 'qq互联id',
  `member_qqinfo` text COMMENT 'qq账号相关信息',
  `member_points` int(11) NOT NULL DEFAULT '0' COMMENT '会员积分',
  `available_predeposit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '预存款可用金额',
  `freeze_predeposit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '预存款冻结金额',
  `inform_allow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许举报(1可以/2不可以)',
  `is_buy` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员是否有购买权限 1为开启 0为关闭',
  `is_allowtalk` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员是否有咨询和发送站内信的权限 1为开启 0为关闭',
  `member_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员的开启状态 1为开启 0为关闭',
  `member_credit` int(11) NOT NULL DEFAULT '0' COMMENT '会员信用',
  `member_areaid` int(11) DEFAULT NULL COMMENT '地区ID',
  `member_cityid` int(11) DEFAULT NULL COMMENT '城市ID',
  `member_provinceid` int(11) DEFAULT NULL COMMENT '省份ID',
  `member_privacy` varchar(255) DEFAULT NULL COMMENT '隐私设定',
  `member_areainfo` varchar(255) DEFAULT NULL COMMENT '地区内容',
  PRIMARY KEY (`member_id`),
  KEY `member_name` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of gs_member
-- ----------------------------
INSERT INTO `gs_member` VALUES ('0', '0', '彭树洞', '', '2', null, 'feng@shopnc.com', '46140184', 'www', '2016-03-06 09:36:04', '', '', '240', '0.00', '0.00', '2', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO `gs_member` VALUES ('5', '46', '真实姓名', '', '2', '2016-04-20', 'pzh_DD@11.com', '111111', 'www', '2016-04-18 09:35:58', null, null, '0', '0.00', '0.00', '1', '1', '1', '1', '0', '1308', '2', '1', '{\"email\":0,\"truename\":1,\"sex\":2,\"birthday\":0,\"area\":1,\"qq\":2,\"ww\":0}', '');
INSERT INTO `gs_member` VALUES ('6', '47', '', '', '0', null, 'hy@126.com', '', '', '2016-05-08 17:21:05', null, null, '0', '0.00', '0.00', '1', '1', '1', '1', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for gs_permission
-- ----------------------------
DROP TABLE IF EXISTS `gs_permission`;
CREATE TABLE `gs_permission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `per_code` varchar(255) DEFAULT NULL COMMENT '授权编码',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父ID',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `enable` int(1) DEFAULT '1' COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_permission
-- ----------------------------
INSERT INTO `gs_permission` VALUES ('0', '管理权限', '1', null, 'admin:read', null, '0', '1');
INSERT INTO `gs_permission` VALUES ('1', '卖家权限', '1', null, 'seller:read', null, '0', '1');

-- ----------------------------
-- Table structure for gs_role
-- ----------------------------
DROP TABLE IF EXISTS `gs_role`;
CREATE TABLE `gs_role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `enable` int(1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_role
-- ----------------------------
INSERT INTO `gs_role` VALUES ('0', 'user', '用户', '1', '1');
INSERT INTO `gs_role` VALUES ('1', 'admin', '管理员', '1', '1');
INSERT INTO `gs_role` VALUES ('2', 'seller', '卖家', '1', '1');

-- ----------------------------
-- Table structure for gs_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `gs_role_permission`;
CREATE TABLE `gs_role_permission` (
  `per_id` bigint(20) DEFAULT NULL,
  `r_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_role_permission
-- ----------------------------
INSERT INTO `gs_role_permission` VALUES ('0', '0');
INSERT INTO `gs_role_permission` VALUES ('1', '2');

-- ----------------------------
-- Table structure for gs_spec
-- ----------------------------
DROP TABLE IF EXISTS `gs_spec`;
CREATE TABLE `gs_spec` (
  `sp_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格id',
  `sp_name` varchar(100) NOT NULL COMMENT '规格名称',
  `sp_sort` tinyint(1) unsigned NOT NULL COMMENT '排序',
  `class_id` int(10) unsigned DEFAULT '0' COMMENT '所属分类id',
  `class_name` varchar(100) DEFAULT NULL COMMENT '所属分类名称',
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Records of gs_spec
-- ----------------------------
INSERT INTO `gs_spec` VALUES ('1', '颜色', '0', '0', '');
INSERT INTO `gs_spec` VALUES ('16', 'ee', '0', '0', '');
INSERT INTO `gs_spec` VALUES ('19', '33', '0', '0', '');

-- ----------------------------
-- Table structure for gs_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `gs_spec_value`;
CREATE TABLE `gs_spec_value` (
  `sp_value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格值id',
  `sp_value_name` varchar(100) NOT NULL COMMENT '规格值名称',
  `sp_id` int(10) unsigned NOT NULL COMMENT '所属规格id',
  `gc_id` int(10) unsigned NOT NULL COMMENT '分类id',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `sp_value_color` varchar(10) DEFAULT NULL COMMENT '规格颜色',
  `sp_value_sort` tinyint(1) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`sp_value_id`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8 COMMENT='商品规格值表';

-- ----------------------------
-- Records of gs_spec_value
-- ----------------------------
INSERT INTO `gs_spec_value` VALUES ('221', '落月黄', '1', '15', '1', '#ffff00', '1');
INSERT INTO `gs_spec_value` VALUES ('222', '蓝色', '1', '15', '1', '#4f81bd', '2');
INSERT INTO `gs_spec_value` VALUES ('223', '白色', '1', '15', '1', '#ffffff', '3');
INSERT INTO `gs_spec_value` VALUES ('224', '绿色', '1', '15', '1', '#00b050', '4');
INSERT INTO `gs_spec_value` VALUES ('225', '梅红', '1', '15', '1', '#b2a2c7', '5');
INSERT INTO `gs_spec_value` VALUES ('226', '黑色', '1', '15', '1', '#000000', '6');
INSERT INTO `gs_spec_value` VALUES ('227', '橙色', '1', '15', '1', '#f79646', '7');
INSERT INTO `gs_spec_value` VALUES ('228', '灰色', '1', '14', '1', '#d8d8d8', '8');
INSERT INTO `gs_spec_value` VALUES ('239', '绿色', '1', '14', '1', '#92d050', '1');
INSERT INTO `gs_spec_value` VALUES ('240', '梅红', '1', '14', '1', '#c0504d', '2');
INSERT INTO `gs_spec_value` VALUES ('241', '蓝色', '1', '14', '1', '#4f81bd', '3');
INSERT INTO `gs_spec_value` VALUES ('242', '黑色', '1', '14', '1', '#000000', '4');
INSERT INTO `gs_spec_value` VALUES ('243', '橙色', '1', '14', '1', '#f79646', '5');
INSERT INTO `gs_spec_value` VALUES ('244', '红色', '1', '16', '1', '#ff0000', '1');
INSERT INTO `gs_spec_value` VALUES ('245', '黑色', '1', '13', '1', '#000000', '1');
INSERT INTO `gs_spec_value` VALUES ('246', '白色', '1', '12', '1', '#ffffff', '1');
INSERT INTO `gs_spec_value` VALUES ('247', '条纹', '1', '12', '1', '#4f81bd', '2');
INSERT INTO `gs_spec_value` VALUES ('248', '黑色', '1', '12', '1', '#000000', '3');
INSERT INTO `gs_spec_value` VALUES ('249', '白色', '1', '14', '1', '#ffffff', '6');
INSERT INTO `gs_spec_value` VALUES ('250', '紫色', '1', '14', '1', '#8064a2', '7');
INSERT INTO `gs_spec_value` VALUES ('252', '薄荷绿', '1', '58', '1', '#ebf1dd', '1');
INSERT INTO `gs_spec_value` VALUES ('253', '肤色', '1', '58', '1', '#fdeada', '2');
INSERT INTO `gs_spec_value` VALUES ('391', '法国 黑色', '1', '620', '1', '#000000', '1');
INSERT INTO `gs_spec_value` VALUES ('392', '法国 红色', '1', '620', '1', '#c00000', '2');
INSERT INTO `gs_spec_value` VALUES ('393', '法国 棕色', '1', '620', '1', '#938953', '3');
INSERT INTO `gs_spec_value` VALUES ('394', '比利时 黑色', '1', '620', '1', '#000000', '4');
INSERT INTO `gs_spec_value` VALUES ('395', '比利时 棕色', '1', '620', '1', '#7f7f7f', '5');
INSERT INTO `gs_spec_value` VALUES ('396', '1', '1', '617', '1', '#ffffff', '1');
INSERT INTO `gs_spec_value` VALUES ('397', '2', '1', '617', '1', '#ffffff', '2');
INSERT INTO `gs_spec_value` VALUES ('398', '3', '1', '617', '1', '#ffffff', '3');
INSERT INTO `gs_spec_value` VALUES ('399', '4', '1', '617', '1', '#ffffff', '4');
INSERT INTO `gs_spec_value` VALUES ('400', '5', '1', '617', '1', '#ffffff', '5');
INSERT INTO `gs_spec_value` VALUES ('402', '6', '1', '617', '1', '#ffffff', '6');
INSERT INTO `gs_spec_value` VALUES ('413', '1', '1', '36', '1', '#000000', '1');
INSERT INTO `gs_spec_value` VALUES ('414', '2', '1', '36', '1', '#d8d8d8', '2');
INSERT INTO `gs_spec_value` VALUES ('415', '3', '1', '36', '1', '#595959', '3');
INSERT INTO `gs_spec_value` VALUES ('416', '4', '1', '36', '1', '#c6d9f0', '4');
INSERT INTO `gs_spec_value` VALUES ('417', '5', '1', '36', '1', '#f2dcdb', '5');
INSERT INTO `gs_spec_value` VALUES ('418', '6', '1', '36', '1', '#938953', '6');
INSERT INTO `gs_spec_value` VALUES ('419', '7', '1', '36', '1', '#ddd9c3', '7');
INSERT INTO `gs_spec_value` VALUES ('421', '红色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('422', '黑色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('423', '红白', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('428', '白色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('429', '黄色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('430', '桔色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('431', '蓝色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('432', '银色', '1', '1055', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('437', '2', '1', '14', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('441', '白色', '1', '16', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('442', 'e1', '16', '14', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('443', '3', '19', '14', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('444', 'mm', '16', '16', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('445', 'ss', '19', '16', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('446', 'e2', '16', '14', '1', null, '0');
INSERT INTO `gs_spec_value` VALUES ('447', 'e3', '16', '14', '1', null, '0');

-- ----------------------------
-- Table structure for gs_store
-- ----------------------------
DROP TABLE IF EXISTS `gs_store`;
CREATE TABLE `gs_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺索引id',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `store_auth` tinyint(1) DEFAULT '0' COMMENT '店铺认证',
  `name_auth` tinyint(1) DEFAULT '0' COMMENT '店主认证',
  `grade_id` int(11) NOT NULL COMMENT '店铺等级',
  `member_id` bigint(20) NOT NULL COMMENT '会员id',
  `member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `seller_name` varchar(50) DEFAULT NULL COMMENT '店主卖家用户名',
  `store_owner_card` varchar(50) DEFAULT NULL COMMENT '身份证',
  `sc_id` int(11) NOT NULL COMMENT '店铺分类',
  `store_company_name` varchar(50) DEFAULT NULL COMMENT '店铺公司名称',
  `area_id` int(11) DEFAULT NULL COMMENT '地区id',
  `area_info` varchar(100) DEFAULT NULL COMMENT '地区内容，冗余数据',
  `store_address` varchar(100) DEFAULT NULL COMMENT '详细地区',
  `store_zip` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `store_tel` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `store_image` varchar(100) DEFAULT NULL COMMENT '证件上传',
  `store_image1` varchar(100) DEFAULT NULL COMMENT '执照上传',
  `store_state` tinyint(1) NOT NULL DEFAULT '2' COMMENT '店铺状态，0关闭，1开启，2审核中',
  `store_close_info` varchar(255) DEFAULT NULL COMMENT '店铺关闭原因',
  `store_sort` int(11) NOT NULL DEFAULT '0' COMMENT '店铺排序',
  `store_time` date DEFAULT NULL COMMENT '店铺时间',
  `store_end_time` date DEFAULT NULL COMMENT '店铺关闭时间',
  `store_label` varchar(255) DEFAULT NULL COMMENT '店铺logo',
  `store_banner` varchar(255) DEFAULT NULL COMMENT '店铺横幅',
  `store_keywords` varchar(255) DEFAULT '' COMMENT '店铺seo关键字',
  `store_description` varchar(255) DEFAULT '' COMMENT '店铺seo描述',
  `store_qq` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `store_ww` varchar(50) DEFAULT NULL COMMENT '阿里旺旺',
  `description` text COMMENT '店铺简介',
  `store_zy` text COMMENT '主营商品',
  `store_domain` varchar(50) DEFAULT NULL COMMENT '店铺二级域名',
  `store_domain_times` tinyint(1) unsigned DEFAULT '0' COMMENT '二级域名修改次数',
  `store_recommend` tinyint(1) DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `store_theme` varchar(50) DEFAULT 'default' COMMENT '店铺当前主题',
  `store_credit` int(10) DEFAULT '0' COMMENT '店铺信用',
  `praise_rate` float DEFAULT '0' COMMENT '店铺好评率',
  `store_desccredit` float DEFAULT '0' COMMENT '描述相符度分数',
  `store_servicecredit` float DEFAULT '0' COMMENT '服务态度分数',
  `store_deliverycredit` float DEFAULT '0' COMMENT '发货速度分数',
  `store_collect` int(10) unsigned DEFAULT '0' COMMENT '店铺收藏数量',
  `store_slide` text COMMENT '店铺幻灯片',
  `store_slide_url` text COMMENT '店铺幻灯片链接',
  `store_stamp` varchar(200) DEFAULT NULL COMMENT '店铺印章',
  `store_printdesc` varchar(500) DEFAULT NULL COMMENT '打印订单页面下方说明文字',
  `store_sales` int(10) unsigned DEFAULT '0' COMMENT '店铺销量',
  `store_presales` text COMMENT '售前客服',
  `store_aftersales` text COMMENT '售后客服',
  `store_workingtime` varchar(100) DEFAULT NULL COMMENT '工作时间',
  `store_free_price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '超出该金额免运费，大于0才表示该值有效',
  `store_storage_alarm` tinyint(3) unsigned DEFAULT '10' COMMENT '库存警报',
  PRIMARY KEY (`store_id`),
  KEY `store_name` (`store_name`),
  KEY `sc_id` (`sc_id`),
  KEY `area_id` (`area_id`),
  KEY `store_state` (`store_state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='店铺数据表';

-- ----------------------------
-- Records of gs_store
-- ----------------------------
INSERT INTO `gs_store` VALUES ('1', '古古', '0', '0', '1', '46', 'gugu', 'gugu_shop', null, '7', '公司名称', null, null, null, null, '联系人电话', null, '/2016-04-15/ccb6d27c-2738-43c9-ae31-5687258407ca.gif', '1', '关闭原因1', '0', '2016-04-17', '2026-04-30', null, null, '', '', null, null, null, null, null, '0', '0', 'default', '0', '0', '0', '0', '0', '0', null, null, null, null, '0', null, null, null, '0.00', '10');

-- ----------------------------
-- Table structure for gs_store_class
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_class`;
CREATE TABLE `gs_store_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k8are5foo7cgj6ytmlqulgsu7` (`PARENT_ID`) USING BTREE,
  CONSTRAINT `gs_store_class_tree` FOREIGN KEY (`PARENT_ID`) REFERENCES `gs_store_class` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_store_class
-- ----------------------------
INSERT INTO `gs_store_class` VALUES ('1', '1', '女装', '9');
INSERT INTO `gs_store_class` VALUES ('2', '1', 'T恤', '9');
INSERT INTO `gs_store_class` VALUES ('3', '3', '衬衫', '9');
INSERT INTO `gs_store_class` VALUES ('4', '4', '针织衫', '9');
INSERT INTO `gs_store_class` VALUES ('5', '5', '雪纺衫', '9');
INSERT INTO `gs_store_class` VALUES ('6', '6', '卫衣', '9');
INSERT INTO `gs_store_class` VALUES ('7', '1', '礼品箱包', null);
INSERT INTO `gs_store_class` VALUES ('9', '0', '服饰鞋帽', null);
INSERT INTO `gs_store_class` VALUES ('17', '2', '3C数码', null);
INSERT INTO `gs_store_class` VALUES ('18', '3', '美容护理', null);
INSERT INTO `gs_store_class` VALUES ('19', '8', '家居用品', null);

-- ----------------------------
-- Table structure for gs_store_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_goods_class`;
CREATE TABLE `gs_store_goods_class` (
  `stc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `stc_name` varchar(50) NOT NULL COMMENT '店铺商品分类名称',
  `stc_parent_id` int(11) NOT NULL COMMENT '父级id',
  `stc_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '店铺商品分类状态',
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `stc_sort` int(11) NOT NULL DEFAULT '0' COMMENT '商品分类排序',
  PRIMARY KEY (`stc_id`),
  KEY `stc_parent_id` (`stc_parent_id`,`stc_sort`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='店铺商品分类表';

-- ----------------------------
-- Records of gs_store_goods_class
-- ----------------------------
INSERT INTO `gs_store_goods_class` VALUES ('1', 'www', '0', '0', '1', '0');
INSERT INTO `gs_store_goods_class` VALUES ('2', '1', '0', '1', '1', '0');
INSERT INTO `gs_store_goods_class` VALUES ('3', '2', '1', '1', '1', '0');
INSERT INTO `gs_store_goods_class` VALUES ('4', '3', '1', '1', '1', '0');
INSERT INTO `gs_store_goods_class` VALUES ('5', '4', '1', '1', '1', '0');
INSERT INTO `gs_store_goods_class` VALUES ('6', '1.1', '2', '1', '1', '0');

-- ----------------------------
-- Table structure for gs_store_grade
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_grade`;
CREATE TABLE `gs_store_grade` (
  `sg_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `sg_name` char(50) DEFAULT NULL COMMENT '等级名称',
  `sg_goods_limit` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '允许发布的商品数量',
  `sg_album_limit` mediumint(8) unsigned DEFAULT '0' COMMENT '允许上传图片数量',
  `sg_space_limit` int(10) unsigned DEFAULT '0' COMMENT '上传空间大小，单位MB',
  `sg_template_number` tinyint(3) unsigned DEFAULT '0' COMMENT '选择店铺模板套数',
  `sg_template` varchar(255) DEFAULT NULL COMMENT '模板内容',
  `sg_price` varchar(100) DEFAULT NULL COMMENT '费用',
  `sg_confirm` tinyint(1) DEFAULT '1' COMMENT '审核，0为否，1为是，默认为1',
  `sg_description` text COMMENT '申请说明',
  `sg_function` varchar(255) DEFAULT NULL COMMENT '附加功能',
  `sg_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '级别，数目越大级别越高',
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店铺等级表';

-- ----------------------------
-- Records of gs_store_grade
-- ----------------------------
INSERT INTO `gs_store_grade` VALUES ('1', '系统默认', '100', '500', '100', '6', 'default|style1|style2|style3|style4|style5', '100元/年', '0', '用户选择“默认等级”，可以立即开通。', '', '0');
INSERT INTO `gs_store_grade` VALUES ('2', '白金店铺', '200', '1000', '100', '6', 'default|style1|style2|style3|style4|style5', '200元/年', '1', '享受更多特权', 'editor_multimedia', '2');
INSERT INTO `gs_store_grade` VALUES ('3', '钻石店铺', '1000', '1000', '100', '6', 'default|style1|style2|style3|style4|style5', '1000元/年', '0', '', 'editor_multimedia', '100');

-- ----------------------------
-- Table structure for gs_store_join
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_join`;
CREATE TABLE `gs_store_join` (
  `member_id` bigint(20) unsigned NOT NULL COMMENT '用户编号',
  `member_name` varchar(50) DEFAULT NULL COMMENT '店主用户名',
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `company_address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `company_address_detail` varchar(50) DEFAULT NULL COMMENT '公司详细地址',
  `company_phone` varchar(20) DEFAULT NULL COMMENT '公司电话',
  `company_employee_count` int(10) unsigned DEFAULT NULL COMMENT '员工总数',
  `company_registered_capital` int(10) unsigned DEFAULT NULL COMMENT '注册资金',
  `contacts_name` varchar(50) DEFAULT NULL COMMENT '联系人姓名',
  `contacts_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `contacts_email` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `business_licence_number` varchar(50) DEFAULT NULL COMMENT '营业执照号',
  `business_licence_address` varchar(50) DEFAULT NULL COMMENT '营业执所在地',
  `business_licence_start` date DEFAULT NULL COMMENT '营业执照有效期开始',
  `business_licence_end` date DEFAULT NULL COMMENT '营业执照有效期结束',
  `business_sphere` varchar(1000) DEFAULT NULL COMMENT '法定经营范围',
  `business_licence_number_electronic` varchar(500) DEFAULT NULL COMMENT '营业执照电子版',
  `organization_code` varchar(50) DEFAULT NULL COMMENT '组织机构代码',
  `organization_code_electronic` varchar(500) DEFAULT NULL COMMENT '组织机构代码电子版',
  `general_taxpayer` varchar(500) DEFAULT NULL COMMENT '一般纳税人证明',
  `bank_account_name` varchar(50) DEFAULT NULL COMMENT '银行开户名',
  `bank_account_number` varchar(50) DEFAULT NULL COMMENT '公司银行账号',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '开户银行支行名称',
  `bank_code` varchar(50) DEFAULT NULL COMMENT '支行联行号',
  `bank_address` varchar(50) DEFAULT NULL COMMENT '开户银行所在地',
  `bank_licence_electronic` varchar(500) DEFAULT NULL COMMENT '开户银行许可证电子版',
  `is_settlement_account` tinyint(1) DEFAULT NULL COMMENT '开户行账号是否为结算账号 1-开户行就是结算账号 2-独立的计算账号',
  `settlement_bank_account_name` varchar(50) DEFAULT NULL COMMENT '结算银行开户名',
  `settlement_bank_account_number` varchar(50) DEFAULT NULL COMMENT '结算公司银行账号',
  `settlement_bank_name` varchar(50) DEFAULT NULL COMMENT '结算开户银行支行名称',
  `settlement_bank_code` varchar(50) DEFAULT NULL COMMENT '结算支行联行号',
  `settlement_bank_address` varchar(50) DEFAULT NULL COMMENT '结算开户银行所在地',
  `tax_registration_certificate` varchar(250) DEFAULT NULL COMMENT '税务登记证号',
  `taxpayer_id` varchar(250) DEFAULT NULL COMMENT '纳税人识别号',
  `tax_registration_certificate_electronic` varchar(500) DEFAULT NULL COMMENT '税务登记证号电子版',
  `seller_name` varchar(50) DEFAULT NULL COMMENT '卖家帐号',
  `store_name` varchar(50) DEFAULT NULL COMMENT '店铺名称',
  `store_class_ids` varchar(1000) DEFAULT NULL COMMENT '店铺分类编号集合',
  `store_class_names` varchar(1000) DEFAULT NULL COMMENT '店铺分类名称集合',
  `joinin_state` varchar(50) DEFAULT NULL COMMENT '申请状态 10-已提交申请 11-缴费完成  20-审核成功 30-审核失败 31-缴费审核失败 40-审核通过开店',
  `joinin_message` varchar(200) DEFAULT NULL COMMENT '管理员审核信息',
  `sg_name` varchar(50) DEFAULT NULL COMMENT '店铺等级名称',
  `sg_id` int(10) unsigned DEFAULT NULL COMMENT '店铺等级编号',
  `sc_name` varchar(50) DEFAULT NULL COMMENT '店铺分类名称',
  `sc_id` int(10) unsigned DEFAULT NULL COMMENT '店铺分类编号',
  `store_class_commis_rates` varchar(200) DEFAULT NULL COMMENT '分类佣金比例',
  `paying_money_certificate` varchar(200) DEFAULT NULL COMMENT '付款凭证',
  `paying_money_certificate_explain` varchar(200) DEFAULT NULL COMMENT '付款凭证说明',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺入住表';

-- ----------------------------
-- Records of gs_store_join
-- ----------------------------
INSERT INTO `gs_store_join` VALUES ('46', 'gugu', '公司名称', '内蒙古自治区 乌海市 乌达区', null, '110', '1', '2', '联系人姓名', '联系人电话', 'pzh_gugu@126.com', '营业执照号1', '河北省 石家庄市 元氏县', '2016-04-03', '2016-04-29', '法定经营范围1', '/2016-04-15/ccb6d27c-2738-43c9-ae31-5687258407ca.gif', '组织机构代码', '/2016-04-15/10e7802b-2131-4b2a-ba73-852403d4963a.gif', '/2016-04-15/49ab71d1-43fc-4528-beaa-f99600bdafe6.gif', '银行开户名', '公司银行账号', '开户银行支行名称', '支行联行号', '北京 北京市 西城区', '/2016-04-14/15bf46c0-3f01-441f-8dd9-6f982a43e000.gif', '1', '银行开户名', '公司银行账号', '开户银行支行名称', '支行联行号', '广东省 潮州市 湘桥区', '税务登记证号', '纳税人识别号', '/2016-04-14/858added-1250-4e55-98d9-295993313873.gif', 'gugu_shop', '古古', '[{\"jmcs\":[{\"id\":\"2\",\"name\":\"礼品箱包\"},{\"id\":\"151\",\"name\":\"潮流女包\"},{\"id\":\"157\",\"name\":\"手拿包\"}]},{\"jmcs\":[{\"id\":\"308\",\"name\":\"家用电器\"},{\"id\":\"310\",\"name\":\"生活电器\"},{\"id\":\"326\",\"name\":\"净化器\"}]}]', null, '40', '找到', '白金店铺', '2', '  服饰鞋帽', '9', null, '/2016-04-15/adb60ac8-2ba7-475b-96eb-1a5269716a93.gif', '已付款');

-- ----------------------------
-- Table structure for gs_store_nav
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_nav`;
CREATE TABLE `gs_store_nav` (
  `id` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `lastUpdater` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `snIfShow` varchar(255) DEFAULT NULL,
  `snNewOpen` varchar(255) DEFAULT NULL,
  `snSort` varchar(255) DEFAULT NULL,
  `snTitle` varchar(255) DEFAULT NULL,
  `snUrl` varchar(255) DEFAULT NULL,
  `storeId` varchar(255) DEFAULT NULL,
  `snContent` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_store_nav
-- ----------------------------
INSERT INTO `gs_store_nav` VALUES ('4028978151334697015133481cb10000', '2015-11-23 15:39:02', 'administrator', 'administrator', '2015-12-23 10:23:57', '8', '1', '0', '2', '多肉繁殖', '', '402897815123d77f015123dee3910001', '<div id=\"J_DivItemDesc\" class=\"content\" style=\"margin:0px;padding:10px 0px 0px;\">\r\n	<p>\r\n		温馨提醒：\r\n	</p>\r\n	<p style=\"text-align:left;background-color:#FFFFFF;text-indent:0px;color:#000000;\">\r\n		<strong><span style=\"color:#FF0000;\"><span style=\"color:#000000;\">1.由于植物的特殊性，不支持退货，换货，15天内有问题我们都会帮您退款，请放心购买！</span></span></strong> \r\n	</p>\r\n	<p style=\"background-color:#FFFFFF;text-indent:0px;color:#000000;\">\r\n		<strong><span style=\"color:#FF0000;\"><span style=\"color:#000000;\">2.收到货需自己栽种，不是栽种好发货，栽种步骤参考本页面下方。</span></span></strong> \r\n	</p>\r\n	<p style=\"background-color:#FFFFFF;text-indent:0px;color:#000000;\">\r\n		<strong><span style=\"color:#FF0000;\"><span style=\"color:#000000;\">3.<strong>玻璃盆是人工吹制而成，会有气泡等现象，属正常，尽请谅解，不能接受的亲请勿拍！</strong></span></span></strong> \r\n	</p>\r\n	<p style=\"background-color:#FFFFFF;text-indent:0px;color:#000000;\">\r\n		<strong><span style=\"color:#FF0000;\"></span></strong><strong>4.</strong><span style=\"font-size:14px;\"><strong><span style=\"color:#FF0000;\">因光照，温度，环境等各方面因素影响</span></strong><span style=\"color:#FF0000;\"><strong>夏季植物颜色普遍变绿，对多肉了解的买家都知道这个常识，四季颜色不同，下面图片是春季拍的，现在虹之玉，火祭或红叶</strong></span><strong>祭</strong><span style=\"color:#FF0000;\"><strong>，初恋，姬胧月，秋丽，黄丽，紫珍珠颜色都变绿或者颜色变淡不红了，秋季植物又会变红，请新手买家们知悉，不要因此给中差评，只能说明您对多肉不是那么热爱。<img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB21noYeFXXXXX6XpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"559\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB2xV4ceVXXXXaGXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"705\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB2wltaeVXXXXaOXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"615\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2rt2XfFXXXXc6XXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"376\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2B7q.fFXXXXXAXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"310\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2FYaZfFXXXXaLXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"310\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2sprcfFXXXXcWXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"309\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB2ox2kfFXXXXazXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"310\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB24su4fFXXXXaIXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"310\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB2uwMTeFXXXXbCXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"514\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2A1k7eFXXXXbZXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"463\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB2ppo0eFXXXXX3XpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"478\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB2bt._eFXXXXbEXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"462\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2jPgWeFXXXXaGXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"478\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2wUNfeVXXXXXSXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"472\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2_VA9eFXXXXb9XXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"472\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB2Vaw8eFXXXXb.XXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"472\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB2MgIMeFXXXXcKXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"465\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2fHo7eFXXXXcxXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"464\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2dqQ_eFXXXXbzXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"462\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB28ipgeVXXXXXLXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"478\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB245A0eFXXXXX2XpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"462\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2ej.PeFXXXXcbXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"478\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB2qc7_eFXXXXaIXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"671\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2X7s8eFXXXXb3XXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"185\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB2nG.NeFXXXXb4XpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"464\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i1/2274072695/TB2LqoUeFXXXXbnXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"521\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i3/2274072695/TB2yQ.6eFXXXXckXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"480\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i2/2274072695/TB2qD.TeFXXXXbrXpXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"468\" width=\"750\" /><img src=\"https://img.alicdn.com/imgextra/i4/2274072695/TB2GORgeVXXXXXAXXXXXXXXXXXX_!!2274072695.jpg\" class=\"\" style=\"border:0px;\" align=\"middle\" height=\"1897\" width=\"750\" /></strong></span></span> \r\n	</p>\r\n</div>');

-- ----------------------------
-- Table structure for gs_store_plate
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_plate`;
CREATE TABLE `gs_store_plate` (
  `id` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `lastUpdater` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `plateContent` varchar(255) DEFAULT NULL,
  `plateName` varchar(255) DEFAULT NULL,
  `platePosition` varchar(255) DEFAULT NULL,
  `storeId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_store_plate
-- ----------------------------
INSERT INTO `gs_store_plate` VALUES ('402897814f8185bc014f818a31150000', '2015-08-31 10:16:01', 'administrator', 'administrator', '2015-08-31 10:16:01', '0', '2222', '2222', '0', '402897814ed3230d014ed324742f0000');
INSERT INTO `gs_store_plate` VALUES ('402897815174b6d6015174c08b1e0001', '2015-12-06 08:45:54', 'administrator', 'administrator', '2015-12-06 08:45:54', '0', '我是顶部<img src=\"/show/att/download/402897814ef88553014ef8fdb7740002\" />', '顶部1', '1', '402897815123d77f015123dee3910001');
INSERT INTO `gs_store_plate` VALUES ('402897814f680224014f680d10450000', '2015-08-26 11:28:50', 'administrator', 'administrator', '2015-08-29 16:23:59', '1', '1111', '1111', '1', '402897814ed3230d014ed324742f0000');
INSERT INTO `gs_store_plate` VALUES ('402897815174b6d6015174c0db890002', '2015-12-06 08:46:14', 'administrator', 'administrator', '2015-12-06 08:46:14', '0', '我是底部', '底部1', '0', '402897815123d77f015123dee3910001');

-- ----------------------------
-- Table structure for gs_store_warning
-- ----------------------------
DROP TABLE IF EXISTS `gs_store_warning`;
CREATE TABLE `gs_store_warning` (
  `id` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `lastUpdater` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `storeId` varchar(255) DEFAULT NULL,
  `warningValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_store_warning
-- ----------------------------
INSERT INTO `gs_store_warning` VALUES ('402897815190361f0151903764540000', '2015-12-11 16:45:28', 'administrator', 'administrator', '2015-12-11 16:52:20', '1', '402897815123d77f015123dee3910001', '20');

-- ----------------------------
-- Table structure for gs_type
-- ----------------------------
DROP TABLE IF EXISTS `gs_type`;
CREATE TABLE `gs_type` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `type_name` varchar(100) NOT NULL COMMENT '类型名称',
  `type_sort` tinyint(1) unsigned NOT NULL COMMENT '排序',
  `class_id` int(10) unsigned DEFAULT '0' COMMENT '所属分类id',
  `class_name` varchar(100) NOT NULL COMMENT '所属分类名称',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

-- ----------------------------
-- Records of gs_type
-- ----------------------------
INSERT INTO `gs_type` VALUES ('34', '服饰鞋/女装/针织衫', '3', '14', '针织衫');
INSERT INTO `gs_type` VALUES ('35', '服饰鞋帽/女装/雪纺衫', '4', '15', '雪纺衫');
INSERT INTO `gs_type` VALUES ('36', '服饰鞋帽/女装/卫衣', '5', '16', '卫衣');

-- ----------------------------
-- Table structure for gs_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_user`;
CREATE TABLE `gs_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户中文名',
  `login_name` varchar(255) NOT NULL COMMENT '用户登陆名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `salt` varchar(255) DEFAULT NULL COMMENT '盐值',
  `enable` int(1) DEFAULT NULL COMMENT '是否启用',
  `type` int(1) DEFAULT NULL COMMENT '用户类型(1:注册用户，2：管理员添加)',
  `created` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `upcreated` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `login_num` int(11) DEFAULT '1' COMMENT '登录次数',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '当前登录时间',
  `old_login_time` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `login_ip` varchar(20) DEFAULT NULL COMMENT '当前登录ip',
  `old_login_ip` varchar(20) DEFAULT NULL COMMENT '上次登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_user
-- ----------------------------
INSERT INTO `gs_user` VALUES ('0', '管理员', 'admin', '468570faadd8ee01480fb85b82278c3c', '4N05k', '1', '1', '2016-03-15 00:00:00', '2016-03-15 00:00:00', '71', '2016-05-13 19:23:47', '2016-05-12 22:37:07', '127.0.0.1', '127.0.0.1');
INSERT INTO `gs_user` VALUES ('46', '古古', 'gugu', '067d33c46b9c1f15315a4619e2bc4c6a', 'pE1kn', '1', '1', '2016-03-20 00:00:00', '2016-03-20 00:00:00', '30', '2016-05-12 22:37:40', '2016-05-12 21:31:41', '127.0.0.1', '127.0.0.1');
INSERT INTO `gs_user` VALUES ('47', null, 'hey', 'fe94c3835527c5f40420bf7077ecab55', 'OLUqH', null, null, null, null, '5', '2016-05-12 22:43:12', '2016-05-12 22:41:24', '127.0.0.1', '127.0.0.1');

-- ----------------------------
-- Table structure for gs_user_role
-- ----------------------------
DROP TABLE IF EXISTS `gs_user_role`;
CREATE TABLE `gs_user_role` (
  `r_id` bigint(20) NOT NULL,
  `u_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gs_user_role
-- ----------------------------
INSERT INTO `gs_user_role` VALUES ('0', '0');
INSERT INTO `gs_user_role` VALUES ('2', '46');
INSERT INTO `gs_user_role` VALUES ('1', '0');
