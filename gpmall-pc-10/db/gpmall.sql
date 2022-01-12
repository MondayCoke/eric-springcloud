/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.8.132（上课专用）
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.8.132:3306
 Source Schema         : gpmall

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 05/01/2022 23:15:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gs_item
-- ----------------------------
DROP TABLE IF EXISTS `gs_item`;
CREATE TABLE `gs_item`  (
  `id` bigint NOT NULL COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `sell_point` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品卖点',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '商品价格',
  `num` int NULL DEFAULT NULL COMMENT '库存数量',
  `limit_num` int NULL DEFAULT NULL COMMENT '售卖数量限制',
  `image` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `cid` bigint NULL DEFAULT NULL COMMENT '所属分类',
  `status` int NULL DEFAULT 1 COMMENT '商品状态 1正常 0下架',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `updated`(`updated`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gs_item
-- ----------------------------
INSERT INTO `gs_item` VALUES (100023501, 'Smartisan 双口 & 快充车载充电器', '铝合金机身、双口 & 快充、智能调节', 79.00, 100, 100, 'https://resource.smartisan.com/resource/d4480234a2f24b0ff5acd98288fd902d.jpg,https://resource.smartisan.com/resource/69ebf4ca620e6d5a1bb7cb54741e24d3.jpg,https://resource.smartisan.com/resource/214a422b7d250333bec4398d47eac601.jpg,https://resource.smartisan.com/resource/f512a3c4b97d204555f864d4aa17e7e9.jpg,https://resource.smartisan.com/resource/fc8a5d50ed260d9798cfba39ff5234d0.jpg', 221, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100026701, 'Smartisan 原装快充充电器 18W', '18W 安全快充、支持主流 QC3.0, MTK PE+2.0 快充协议', 49.00, 100, 100, 'https://resource.smartisan.com/resource/dc53bd870ee64d2053ecc51750ece43a.jpg,https://resource.smartisan.com/resource/83ab82fa6d9637d29d6af79d912ee572.jpg,https://resource.smartisan.com/resource/47461596fad00d37cb7a032a03d79286.jpg,https://resource.smartisan.com/resource/f4f6346bea727862087b4761fc8b01d2.jpg,https://resource.smartisan.com/resource/0286c84dba36577f37591f1af2b97402.jpg', 215, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100026801, 'Smartisan 耳机转接头', '即插即用、全面兼容', 19.00, 100, 100, 'https://resource.smartisan.com/resource/45312fb748d54aa2e58a8f4d637e9e65.jpg,https://resource.smartisan.com/resource/1dddddf6488ba89d592a37e9db93ffa2.jpg,https://resource.smartisan.com/resource/31b291594192c568b9fff9190a0d8f44.jpg,https://resource.smartisan.com/resource/561c002e74f6a5982dfaf3b4a44c9af4.jpg', 214, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100036501, '畅呼吸除霾除甲醛高效复合滤芯', '精选双层防护材质，过滤更精细，去味更有效', 699.00, 100, 100, 'https://resource.smartisan.com/resource/00eee903962f17d75950397843117e6e.jpg,https://resource.smartisan.com/resource/7a1f7380f2f2851fe133bd84115c42fe.jpg,https://resource.smartisan.com/resource/e2cd33328fe96214c2bff3ef0652350a.jpg', 228, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100039702, 'Smartisan 帆布鞋', '用于支付测试使用', 1.00, 100, 100, 'https://resource.smartisan.com/resource/578116bddf1d170c89e9af7ba5073fb6.jpg,https://resource.smartisan.com/resource/ebb01298315bf2ebdb6b21ee2c8e4237.jpg,https://resource.smartisan.com/resource/bd634d820859032b4c0f7a521eda486d.jpg,https://resource.smartisan.com/resource/51958a0a771f24e405f1b5de98108528.jpg,https://resource.smartisan.com/resource/e8791dd06c1e964d89436407f8827fe4.jpg', 236, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100040501, '畅呼吸智能空气净化器 · 超级除甲醛版', '800CADR 超强空气净化能力，400CADR超强除甲醛能力，app远程操控，多种专业滤芯可供选择', 2999.00, 100, 100, 'https://resource.smartisan.com/resource/71432ad30288fb860a4389881069b874.png,https://resource.smartisan.com/resource/6ff92d05a3bfab4fad489ca04d3eea5a.png', 226, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100040607, '坚果 3', '坚果 3 意外碎屏保修服务（碎屏险）', 2999.00, 100, 100, 'https://resource.smartisan.com/resource/13e91511f6ba3227ca5378fd2e93c54b.png,https://resource.smartisan.com/resource/fac4130efc39ed4db697cc8d137890e9.png,https://resource.smartisan.com/resource/91dc3f577960e30ca11b632e7b6ebd0f.png,https://resource.smartisan.com/resource/61586b59793ac16bd973010aecad2ca9.png', 210, 1, '2019-08-12 13:06:26', '2019-08-12 13:06:28');
INSERT INTO `gs_item` VALUES (100042203, '坚果“电池形电池”移动电源', 'Type-C 接口、轻巧便携、多重电路保护', 49.00, 100, 100, 'https://resource.smartisan.com/resource/33954b3f6a2f1614c5482ef130af9cc8.jpg,https://resource.smartisan.com/resource/1910dba5f999debab84c97c55845c74d.jpg,https://resource.smartisan.com/resource/3e62068911a78fb4b7c4ac20520a5216.jpg,https://resource.smartisan.com/resource/0329e3f7d4fd64659b36a9f3726ccf37.jpg', 218, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100042801, 'Smartisan 半入耳式耳机', '经典配色、专业调音、高品质麦克风', 59.00, 100, 100, 'https://resource.smartisan.com/resource/ce632bd67465027861707ec221b37c2d.jpg,https://resource.smartisan.com/resource/10525c4b21f039fc8ccb42cd1586f5cd.jpg,https://resource.smartisan.com/resource/d14645b66ff52c2e5958cd866a7d91e5.jpg,https://resource.smartisan.com/resource/7a4257950f953d6a7048d72de374530f.jpg,https://resource.smartisan.com/resource/dbe085a6f133b944e4e23bbb515c31ff.jpg', 217, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100046401, '坚果 R1', '骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能', 2999.00, 100, 100, 'https://resource.smartisan.com/resource/06c2253354096f5e9ebf0616f1af2086.png', 210, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100047001, '坚果 QuickCharge 4+ 快速充电器', '全面兼容的 18W 快速充电', 1.00, 100, 100, 'https://resource.smartisan.com/resource/a668d1a5f41b04ece82d76ded1e94d3a.jpg,https://resource.smartisan.com/resource/c2375861762d557f65cf880b00161a41.jpg,https://resource.smartisan.com/resource/630dc5c945e78c0613d872cb83222b9e.jpg', 215, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100047101, '坚果 Type-C To Type-C 数据线', 'TPE 环保材质，PTC 过温保护', 39.00, 100, 100, 'https://resource.smartisan.com/resource/8635cb91f2cdbbc5576e069c52b99412.jpg,https://resource.smartisan.com/resource/a9a02318cb09ab38562092a556d0dedc.jpg', 214, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100051701, '坚果 Pro 2S', '双系统，无限屏，骁龙 ™ 710 处理器 · 前置 1600 万像素摄像头 · 6.01 英寸全高清全面屏 · AI 通话降噪 · 人脸解锁 + 指纹解锁 ', 1798.00, 100, 100, 'https://resource.smartisan.com/resource/b07b9765e272f866da6acda4ee107d88.png', 210, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100052801, '坚果砖式蓝牙小音箱', '一款设计出色、音质出众的随身音箱', 149.00, 100, 100, 'https://resource.smartisan.com/resource/6e96ccea3bd56bdd2243eb20330cec30.jpg,https://resource.smartisan.com/resource/a99de61d502b2f29b4a6d847751cf478.jpg,https://resource.smartisan.com/resource/3f6594f3537db91a3a4d6196111429df.jpg,https://resource.smartisan.com/resource/9e45ff0ce5d60627f0b07b1df4c56ed6.jpg,https://resource.smartisan.com/resource/830389bcd0e66569acd5ce05a304a3ea.jpg', 223, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100053001, '坚果彩虹数据线', '七彩配色随机发货，为生活增添一份小小惊喜', 19.00, 100, 100, 'https://resource.smartisan.com/resource/82aab62886740f165a3631ce6cffe895.jpg', 214, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100053202, '地平线 8 号商务旅行箱', '为了野心和远方', 999.00, 100, 100, 'https://resource.smartisan.com/resource/d1dcca9144e8d13ffb33026148599d0a.png', 238, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100053312, '地平线 8 号旅行箱', '简约设计、德国拜耳 PC 箱体', 299.00, 100, 100, 'https://resource.smartisan.com/resource/db4895e45ee6f3339037dbf7200e63f2.png', 238, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100055301, 'Smartisan 快充移动电源 10000mAh', '10000mAh 双向快充、轻盈便携、高标准安全保护', 129.00, 100, 100, 'https://resource.smartisan.com/resource/b7105b0d819e610a9c38d7ca2a813e58.jpg,https://resource.smartisan.com/resource/e47687c8288b324fb997c5bd7b709e80.jpg,https://resource.smartisan.com/resource/c933dd520c84c32edd9f50f664ec53ff.jpg,https://resource.smartisan.com/resource/1ae4fda7154eb92196f78fe9efb0c25f.jpg,https://resource.smartisan.com/resource/422ec86b9924bd5e45d5caa3ba1eaf7d.jpg', 218, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100055601, '各色DNA检测套装', '国内唯一聚焦于行为-基因关联性分析的基因检测解读', 499.00, 100, 100, 'https://resource.smartisan.com/resource/9bffe702b1f0aea221b1f18ddf886958.jpg,https://resource.smartisan.com/resource/30a1fce6a4280847eebf1b412fca39b0.jpg,https://resource.smartisan.com/resource/6681f43f88b9d867a0f33639cbeb47bf.jpg,https://resource.smartisan.com/resource/4fa597703a83cf326713faf2648744ac.jpg,https://resource.smartisan.com/resource/760637b38ba5ec5792e1e99c0d893462.jpg', 263, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100057401, 'Smartisan T恤 迪特拉姆斯', '', 149.00, 100, 100, 'https://resource.smartisan.com/resource/005c65324724692f7c9ba2fc7738db13.png,https://resource.smartisan.com/resource/5068afef4f8866fae065d8c0d450e244.png,https://resource.smartisan.com/resource/a8dfe8f52dfb15c17e2e5c504c7ae2c6.png,https://resource.smartisan.com/resource/d6a6c06e5b51f0c18d8bfc45318163ea.png,https://resource.smartisan.com/resource/46724a81b037d1eca31d665c223b77a1.png', 231, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100057501, 'Smartisan T恤 毕加索', '', 149.00, 100, 100, 'https://resource.smartisan.com/resource/e9cd634b62470713f6b9c5a6065f4a10.jpg,https://resource.smartisan.com/resource/2ea973de25dffab6373dbe5e343f76c8.jpg,https://resource.smartisan.com/resource/57c12d9b6788d005341fe4aefd209fab.jpg,https://resource.smartisan.com/resource/25fb00a88fe6ababcd580a2cf0a14032.jpg,https://resource.smartisan.com/resource/bab385bd6811378389a12d7b7254ed7e.jpg', 231, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100057601, 'Smartisan T恤 皇帝的新装', '', 149.00, 100, 100, 'https://resource.smartisan.com/resource/d9586f7c5bb4578e3128de77a13e4d85.png,https://resource.smartisan.com/resource/07f77245d0f5f78f8ea580e181ec3dce.jpg,https://resource.smartisan.com/resource/0c9c397c8ac68a2ad327e1da8a5cb7d0.jpg,https://resource.smartisan.com/resource/154b35897ed3c1cb8dc1c7aae7b88f1f.jpg,https://resource.smartisan.com/resource/4a1686f2fde86e0aaac49c92395d4b32.jpg', 231, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item` VALUES (100057701, 'Smartisan T恤 丑小鸭', '', 149.00, 100, 100, 'https://resource.smartisan.com/resource/c23837ddfa3de0103be11bcbbb744066.png,https://resource.smartisan.com/resource/dad3d8d5ed151ad235ca9215815bc38b.png,https://resource.smartisan.com/resource/95f78a96e20b8e697e9df1c221d585c4.png,https://resource.smartisan.com/resource/33b0c45b3036d2a4267a05d192ccc45f.png,https://resource.smartisan.com/resource/b8bb658cf5cc22f23fb81a4c2ea028ac.png', 231, 1, '2019-07-29 14:37:02', '2019-07-29 14:37:02');

-- ----------------------------
-- Table structure for gs_item_category
-- ----------------------------
DROP TABLE IF EXISTS `gs_item_category`;
CREATE TABLE `gs_item_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父分类ID=0时代表一级根分类',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `status` int NULL DEFAULT 1 COMMENT '状态 1启用 0禁用',
  `sort_order` int NULL DEFAULT NULL COMMENT '排列序号',
  `is_parent` tinyint(1) NULL DEFAULT 1 COMMENT '是否为父分类 1为true 0为false',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`, `status`) USING BTREE,
  INDEX `sort_order`(`sort_order`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 298 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类目' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gs_item_category
-- ----------------------------
INSERT INTO `gs_item_category` VALUES (1, 1, '官方配件', 1, 0, 1, 'https://www.smartisan.com/category/185?type=shop', NULL, '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (2, 1, '耳机', 1, 0, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (3, 1, '手机充电配件', 1, 1, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (4, 1, '自拍杆', 1, 2, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (5, 1, '音箱', 1, 3, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (6, 1, '车载配件', 1, 4, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (7, 1, '服饰箱包', 1, 1, 1, 'https://www.smartisan.com/category/157', NULL, '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (8, 7, '服饰', 1, 0, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (9, 7, '鞋', 1, 1, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (10, 7, '箱包', 1, 2, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (11, 1, '畅呼吸', 1, 2, 1, 'https://www.smartisan.com/category/296?type=shop', NULL, '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (12, 11, '生活电器', 1, 0, 0, '', 'shop', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (202, 8, 'T恤', 1, 0, 0, 'https://resource.smartisan.com/resource/d01dcb91b34b26cda7064a3c9bf655c4.png', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (204, 8, 'POLO衫', 1, 1, 0, 'https://resource.smartisan.com/resource/daa975651d6d700c0f886718c520ee19.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (206, 9, '帆布鞋', 1, 0, 0, 'https://resource.smartisan.com/resource/1db1a8bfee3623fded41c9115b5a5335.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (207, 10, '拉杆箱', 1, 0, 0, 'https://resource.smartisan.com/resource/9960e83a55544fbf7b046013a6f7f414.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (231, 3, '数据线', 1, 0, 0, 'https://resource.smartisan.com/resource/c79a73ffc6f8e782160d978f49f543dc.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (232, 3, '充电器', 1, 1, 0, 'https://resource.smartisan.com/resource/dc53bd870ee64d2053ecc51750ece43a.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (234, 2, '线控耳机', 1, 0, 0, 'https://resource.smartisan.com/resource/72e4c31e4e623f5c37c6489f6d91efc6.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (235, 3, '移动电源', 1, 2, 0, 'https://resource.smartisan.com/resource/afcec520933673b8e03a867e6502f6e0.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (236, 4, '自拍杆', 1, 0, 0, 'https://resource.smartisan.com/resource/b9e61c6d93464454fa2e382632e34cee.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (238, 6, '车载充电器', 1, 0, 0, 'https://resource.smartisan.com/resource/d4480234a2f24b0ff5acd98288fd902d.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (252, 5, '音箱', 1, 0, 0, 'https://resource.smartisan.com/resource/c44f0ab4da5591fc3d0f82b7ac0f4f65.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (292, 10, '包', 1, 1, 0, 'https://resource.smartisan.com/resource/cef4a5433eb95cbdf242d3c1bf5617f8.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (297, 12, '空气净化器', 1, 0, 0, 'https://resource.smartisan.com/resource/71432ad30288fb860a4389881069b874.png', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');
INSERT INTO `gs_item_category` VALUES (298, 12, '生活电器配件', 1, 1, 0, 'https://resource.smartisan.com/resource/4d83d72c5ecc288e8d5ddd9d06b80f99.jpg', '', '2019-07-29 14:01:59', '2019-07-29 14:01:59');

-- ----------------------------
-- Table structure for gs_item_desc
-- ----------------------------
DROP TABLE IF EXISTS `gs_item_desc`;
CREATE TABLE `gs_item_desc`  (
  `item_id` bigint NOT NULL COMMENT '商品ID',
  `item_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品描述表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gs_item_desc
-- ----------------------------
INSERT INTO `gs_item_desc` VALUES (100023501, '<img src=\"https://resource.smartisan.com/resource/1a4b3d159317fe26377b2db040aaa2dc.jpg\" style=\"width:880px;height:7966px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100026701, '<img src=\"https://resource.smartisan.com/resource/4a7b87fe01ec8339985702ee922d205a.jpg\" style=\"width:1220px;height:4526px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100026801, '<img src=\"https://resource.smartisan.com/resource/586f7bfcf88f14935918943bb0421c26.jpg\" style=\"width:1220px;height:4715px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100036501, '<img src=\"https://resource.smartisan.com/resource/55191eb9aeb1367eefcb6d946fdc0546.jpg\" style=\"width:1220px;height:9823px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100039702, '<img src=\"https://resource.smartisan.com/resource/88cfe3dc879813dd6f60e57405a58cc1.jpg\" style=\"width:1220px;height:8863px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100040501, '<img src=\"https://resource.smartisan.com/resource/cf9cd35a37fed165577358b5cf72df7a.jpg\" style=\"width:1220px;height:12671px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100040607, '<img src=\"https://resource.smartisan.com/resource/d5a1453ad115e15bd79579e8bdb20ba0.jpg\" style=\"width:1220px;height:18021px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100042203, '<img src=\"https://resource.smartisan.com/resource/7d9e5c72d2af941602228d78c7b8904f.jpg\" style=\"width:1220px;height:8173px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100042801, '<img src=\"https://resource.smartisan.com/resource/234a5b125db07de264b5467d9ac15f1b.jpg\" style=\"width:1220px;height:8701px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100046401, '<img src=\"https://resource.smartisan.com/resource/79217e13f5f8d55cfb036edd93b2ce11.jpg\" style=\"width:1220px;height:24948px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100047001, '<img src=\"https://resource.smartisan.com/resource/a115f37d26c5ce4a99c0b5569cb736ab.jpg\" style=\"width:1220px;height:27384px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100047101, '<img src=\"https://resource.smartisan.com/resource/c6796a8fbe89a6ee92ede798be60c7ac.jpg\" style=\"width:1220px;height:5513px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100051701, '<img src=\"https://resource.smartisan.com/resource/a115f37d26c5ce4a99c0b5569cb736ab.jpg\" style=\"width:1220px;height:27384px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100052801, '<img src=\"https://resource.smartisan.com/resource/79217e13f5f8d55cfb036edd93b2ce11.jpg\" style=\"width:1220px;height:24948px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100053001, '<img src=\"https://resource.smartisan.com/resource/11e577bdce56fcf2048cd9a59a1498ad.jpg\" style=\"width:1220px;height:8475px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100053202, '<img src=\"https://resource.smartisan.com/resource/4285feb829a243a566cbe53af4b85438.jpg\" style=\"width:1220px;height:11689px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100053312, '<img src=\"https://resource.smartisan.com/resource/7d9803ef381540aa1c8097d3fc0680ea.png\" style=\"width:1220px;height:9166px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100055301, '<img src=\"https://resource.smartisan.com/resource/3ac96791a0b246a88ed8007223d5a2e2.jpg\" style=\"width:1220px;height:10486px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100055601, '<img src=\"https://resource.smartisan.com/resource/13bc92fefafd8583bcab13b4ff02b4a4.jpg\" style=\"width:1220px;height:28140px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100057401, '<img src=\"https://resource.smartisan.com/resource/6406be8c9066fd0fa6d4495f7aec9bfb.jpg\" style=\"width:1220px;height:14827px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100057501, '<img src=\"https://resource.smartisan.com/resource/6406be8c9066fd0fa6d4495f7aec9bfb.jpg\" style=\"width:1220px;height:14827px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100057601, '<img src=\"https://resource.smartisan.com/resource/6406be8c9066fd0fa6d4495f7aec9bfb.jpg\" style=\"width:1220px;height:14827px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');
INSERT INTO `gs_item_desc` VALUES (100057701, '<img src=\"https://resource.smartisan.com/resource/6406be8c9066fd0fa6d4495f7aec9bfb.jpg\" style=\"width:1220px;height:14827px\"/>', '2019-07-29 14:37:02', '2019-07-29 14:37:02');

-- ----------------------------
-- Table structure for mk_panel
-- ----------------------------
DROP TABLE IF EXISTS `mk_panel`;
CREATE TABLE `mk_panel`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块名称',
  `type` int NULL DEFAULT NULL COMMENT '类型 0轮播图 1板块种类一 2板块种类二 3板块种类三 ',
  `sort_order` int NULL DEFAULT NULL COMMENT '排列序号',
  `position` int NULL DEFAULT NULL COMMENT '所属位置 0首页 1商品推荐 2我要捐赠',
  `limit_num` int NULL DEFAULT NULL COMMENT '板块限制商品数量',
  `status` int NULL DEFAULT 1 COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`status`) USING BTREE,
  INDEX `sort_order`(`sort_order`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '内容分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mk_panel
-- ----------------------------
INSERT INTO `mk_panel` VALUES (1, '热门商品', 2, 1, 0, 3, 1, '', '2018-04-18 23:49:13', '2018-04-15 19:05:16');
INSERT INTO `mk_panel` VALUES (2, '服饰箱包', 3, 3, 0, 8, 1, '', NULL, '2018-04-19 11:20:59');
INSERT INTO `mk_panel` VALUES (3, '官方精选配件', 3, 2, 0, 7, 1, '', '2018-04-18 23:49:19', '2018-04-17 18:54:15');
INSERT INTO `mk_panel` VALUES (6, '热门推荐', 2, 6, 1, 2, 1, '热门推荐', '2019-07-29 23:58:19', '2019-07-29 23:58:23');
INSERT INTO `mk_panel` VALUES (7, '轮播图', 0, 0, 0, 5, 1, 'banner板块', '2018-04-15 12:33:07', '2018-04-15 12:33:07');
INSERT INTO `mk_panel` VALUES (8, '活动版块', 1, 5, 0, 4, 1, '', '2018-04-15 19:05:00', '2018-04-15 19:05:00');
INSERT INTO `mk_panel` VALUES (10, '坚果手机及配件', 3, 4, 0, 7, 1, NULL, '2018-04-18 23:50:32', '2018-04-18 23:50:35');

-- ----------------------------
-- Table structure for mk_panel_content
-- ----------------------------
DROP TABLE IF EXISTS `mk_panel_content`;
CREATE TABLE `mk_panel_content`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `panel_id` int NOT NULL COMMENT '所属板块id',
  `type` int NULL DEFAULT NULL COMMENT '类型 0关联商品 1其他链接',
  `item_id` bigint NULL DEFAULT NULL COMMENT '关联商品id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品标题（冗余字段）',
  `sell_point` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品卖点（冗余字段）',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '商品价格（冗余字段）',
  `sort_order` int NULL DEFAULT NULL COMMENT '排序号',
  `full_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他链接',
  `pic_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic_url2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图备用',
  `pic_url3` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图备用',
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`panel_id`) USING BTREE,
  INDEX `updated`(`updated`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mk_panel_content
-- ----------------------------
INSERT INTO `mk_panel_content` VALUES (2, 3, 0, 100026701, 'Smartisan 原装快充充电器 18W', '18W 安全快充、支持主流 QC3.0, MTK PE+2.0 快充协议', 49.00, 1, '', 'https://resource.smartisan.com/resource/dc53bd870ee64d2053ecc51750ece43a.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-09-23 00:03:02', '2018-04-20 00:23:40');
INSERT INTO `mk_panel_content` VALUES (7, 3, 0, 100023501, 'Smartisan 双口 & 快充车载充电器', '铝合金机身、双口 & 快充、智能调节', 79.00, 2, '', 'https://resource.smartisan.com/resource/d4480234a2f24b0ff5acd98288fd902d.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-09-23 22:58:11', '2018-04-20 00:14:29');
INSERT INTO `mk_panel_content` VALUES (8, 2, 0, 100053202, '地平线 8 号商务旅行箱', '为了野心和远方', 999.00, 1, '', 'https://resource.smartisan.com/resource/db4895e45ee6f3339037dbf7200e63f2.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-09-25 17:03:48', '2018-04-19 23:23:26');
INSERT INTO `mk_panel_content` VALUES (9, 2, 0, 100053312, '地平线 8 号旅行箱', '简约设计、德国拜耳 PC 箱体', 299.00, 2, '', 'https://resource.smartisan.com/resource/d1dcca9144e8d13ffb33026148599d0a.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-09-25 17:04:35', '2018-04-20 10:48:17');
INSERT INTO `mk_panel_content` VALUES (14, 2, 0, 100057401, 'Smartisan T恤 迪特拉姆斯', '', 149.00, 3, '', 'https://resource.smartisan.com/resource/c892f825c80767c2bef15081352d2aa4.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:14:01', '2018-04-20 10:48:29');
INSERT INTO `mk_panel_content` VALUES (15, 2, 0, 100057501, 'Smartisan T恤 毕加索', '', 149.00, 4, '', 'https://resource.smartisan.com/resource/005c65324724692f7c9ba2fc7738db13.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:14:52', '2018-04-20 10:48:43');
INSERT INTO `mk_panel_content` VALUES (16, 2, 0, 100057601, 'Smartisan T恤 皇帝的新装', '', 149.00, 5, '', 'https://resource.smartisan.com/resource/d9586f7c5bb4578e3128de77a13e4d85.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:15:51', '2018-04-20 10:49:02');
INSERT INTO `mk_panel_content` VALUES (17, 2, 0, 100057701, 'Smartisan T恤 丑小鸭', '', 149.00, 6, '', 'https://resource.smartisan.com/resource/e9cd634b62470713f6b9c5a6065f4a10.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:17:01', '2018-04-20 10:49:17');
INSERT INTO `mk_panel_content` VALUES (18, 3, 0, 100042801, 'Smartisan 半入耳式耳机', '经典配色、专业调音、高品质麦克风', 59.00, 3, NULL, 'https://resource.smartisan.com/resource/30ac0a1ab02999667f1362c501447e58.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:22:52', '2017-10-22 22:22:52');
INSERT INTO `mk_panel_content` VALUES (19, 3, 0, 100053001, '坚果彩虹数据线', '七彩配色随机发货，为生活增添一份小小惊喜', 19.00, 4, '', 'https://resource.smartisan.com/resource/82aab62886740f165a3631ce6cffe895.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:23:35', '2018-04-20 11:25:38');
INSERT INTO `mk_panel_content` VALUES (20, 3, 0, 100042203, '坚果“电池形电池”移动电源', 'Type-C 接口、轻巧便携、多重电路保护', 49.00, 5, '', 'https://resource.smartisan.com/resource/f5a36dfc37d52a643683f4a21247f3ff.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:24:54', '2018-04-20 00:15:03');
INSERT INTO `mk_panel_content` VALUES (21, 3, 0, 100055301, 'Smartisan 快充移动电源 10000mAh', '10000mAh 双向快充、轻盈便携、高标准安全保护', 129.00, 6, '', 'https://resource.smartisan.com/resource/f319b26eb69e8ba351423abfad347eae.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:25:28', '2018-04-20 00:24:11');
INSERT INTO `mk_panel_content` VALUES (22, 1, 0, 100039702, 'Smartisan 帆布鞋', '用于支付测试使用', 1.00, 1, NULL, 'https://resource.smartisan.com/resource/2f9a0f5f3dedf0ed813622003f1b287b.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:26:31', '2017-10-22 22:26:31');
INSERT INTO `mk_panel_content` VALUES (23, 1, 0, 100047001, '坚果 QuickCharge 4+ 快速充电器', '全面兼容的 18W 快速充电', 1.00, 2, '', 'https://resource.smartisan.com/resource/a668d1a5f41b04ece82d76ded1e94d3a.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2017-10-22 22:26:40', '2018-04-17 20:59:35');
INSERT INTO `mk_panel_content` VALUES (25, 8, 7, NULL, '', '', 0.00, 1, 'https://gper.club/answers/7e7e7f7ff4g56gc9g6e', 'https://resource.smartisan.com/resource/6/610400xinpinpeijian.jpg', NULL, NULL, '2018-04-15 19:07:43', '2018-04-19 23:20:34');
INSERT INTO `mk_panel_content` VALUES (26, 8, 7, NULL, '', '', 0.00, 2, 'https://www/gupaoedu.com', 'https://resource.smartisan.com/resource/6/610400yijiuhuanxin.jpg', NULL, NULL, '2018-04-15 19:08:00', '2018-04-19 23:20:48');
INSERT INTO `mk_panel_content` VALUES (27, 8, 7, NULL, '', '', 0.00, 3, 'https://ke.qq.com/course/185189?taid=1885512117965669', 'https://resource.smartisan.com/resource/4/489673079577637073.png', NULL, NULL, '2018-04-15 19:08:24', '2018-04-19 23:21:01');
INSERT INTO `mk_panel_content` VALUES (28, 8, 7, NULL, '', '', 0.00, 4, 'https://www.gupaoedu.com/course-java.html', 'https://resource.smartisan.com/resource/fe6ab43348a43152b4001b4454d206ac.jpg', NULL, NULL, '2018-04-15 19:08:58', '2018-04-19 23:21:13');
INSERT INTO `mk_panel_content` VALUES (29, 2, 2, 100053312, '地平线 8 号旅行箱', '简约设计、德国拜耳 PC 箱体', 299.00, 0, '', 'https://resource.smartisan.com/resource/3e931e9d0d270dae19b7fe9695551b4c.png?x-oss-process=image/resize,w_609/format,jpg/quality,Q_100', NULL, NULL, '2018-04-15 20:14:35', '2018-04-20 11:41:27');
INSERT INTO `mk_panel_content` VALUES (30, 3, 2, 100052801, '坚果砖式蓝牙小音箱', '一款设计出色、音质出众的随身音箱', 149.00, 0, '', 'https://resource.smartisan.com/resource/fde550fa598718a4d9661c0f1557ce55.png?x-oss-process=image/resize,w_609/format,jpg/quality,Q_100', NULL, NULL, '2018-04-15 20:15:18', '2018-04-20 11:18:03');
INSERT INTO `mk_panel_content` VALUES (32, 7, 0, 100053312, '地平线 8 号旅行箱', '简约设计、德国拜耳 PC 箱体', 299.00, 1, '', 'https://resource.smartisan.com/resource/52427d5ed690525b545d296159ffc63b.png?x-oss-process=image/format,jpg/quality,Q_100', '', '', '2018-04-17 20:41:02', '2018-04-17 20:58:41');
INSERT INTO `mk_panel_content` VALUES (33, 7, 0, 100057401, 'Smartisan T恤 迪特拉姆斯', '', 149.00, 2, '', 'https://resource.smartisan.com/resource/l/lou1.png?x-oss-process=image/format,jpg/quality,Q_100', '', '', '2018-04-17 21:08:22', '2018-04-20 10:47:19');
INSERT INTO `mk_panel_content` VALUES (34, 7, 0, 100040501, '畅呼吸智能空气净化器 · 超级除甲醛版', '800CADR 超强空气净化能力，400CADR超强除甲醛能力，app远程操控，多种专业滤芯可供选择', 2999.00, 3, NULL, 'https://resource.smartisan.com/resource/a9b9b5083118db99a58fe65afb6167e3.png?x-oss-process=image/format,jpg/quality,Q_100', '', '', '2018-04-17 21:08:30', '2018-04-17 21:08:32');
INSERT INTO `mk_panel_content` VALUES (40, 10, 3, 100046401, '坚果 R1', '骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能', 2999.00, 0, '', 'https://resource.smartisan.com/resource/896f85d0ee0669ee1fdd8efc19bffc57.jpg?x-oss-process=image/resize,w_609/format,jpg/quality,Q_100', NULL, NULL, '2018-04-19 00:02:53', '2018-04-20 11:15:59');
INSERT INTO `mk_panel_content` VALUES (41, 10, 0, 100051701, '坚果 Pro 2S', '双系统，无限屏，骁龙 ™ 710 处理器 · 前置 1600 万像素摄像头 · 6.01 英寸全高清全面屏 · AI 通话降噪 · 人脸解锁 + 指纹解锁 ', 1798.00, 1, '', 'https://resource.smartisan.com/resource/b07b9765e272f866da6acda4ee107d88.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2018-04-19 00:02:56', '2018-04-20 00:24:36');
INSERT INTO `mk_panel_content` VALUES (42, 10, 0, 100046401, '坚果 R1', '骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能', 2999.00, 2, '', 'https://resource.smartisan.com/resource/17f254e6f809355d8fe66260ccb48fb0.png?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2018-04-19 00:03:00', '2018-04-20 00:25:01');
INSERT INTO `mk_panel_content` VALUES (43, 10, 0, 100053001, '坚果彩虹数据线', '七彩配色随机发货，为生活增添一份小小惊喜', 19.00, 3, '', 'https://resource.smartisan.com/resource/82aab62886740f165a3631ce6cffe895.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2018-04-19 00:03:04', '2018-04-20 00:25:17');
INSERT INTO `mk_panel_content` VALUES (44, 10, 0, 100047101, '坚果 Type-C To Type-C 数据线', 'TPE 环保材质，PTC 过温保护', 39.00, 4, '', 'https://resource.smartisan.com/resource/8635cb91f2cdbbc5576e069c52b99412.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2018-04-19 00:03:10', '2018-04-20 10:55:52');
INSERT INTO `mk_panel_content` VALUES (45, 10, 0, 100026801, 'Smartisan 耳机转接头', '即插即用、全面兼容', 19.00, 5, '', 'https://resource.smartisan.com/resource/45312fb748d54aa2e58a8f4d637e9e65.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2018-04-19 00:03:15', '2018-04-20 10:54:56');
INSERT INTO `mk_panel_content` VALUES (46, 10, 0, 100042801, 'Smartisan 半入耳式耳机', '经典配色、专业调音、高品质麦克风', 59.00, 6, '', 'https://resource.smartisan.com/resource/8a875418797690e26b665cc0d86dffc7.jpg?x-oss-process=image/resize,w_216/format,webp', NULL, NULL, '2018-04-19 00:03:20', '2018-04-20 10:55:03');
INSERT INTO `mk_panel_content` VALUES (47, 6, 0, 100046401, '坚果 R1', '骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能', 2999.00, 1, '', 'https://resource.smartisan.com/resource/17f254e6f809355d8fe66260ccb48fb0.png', NULL, NULL, '2018-04-19 11:15:35', '2018-04-19 11:15:35');
INSERT INTO `mk_panel_content` VALUES (48, 6, 0, 100046401, '坚果 R1', '骁龙 845 处理器 · 光学防抖双摄像头 · 6.17 英寸压力感应屏幕 · 10W快速无线充电功能', 2999.00, 2, NULL, 'https://resource.smartisan.com/resource/06c2253354096f5e9ebf0616f1af2086.png', NULL, NULL, '2018-04-19 11:18:16', '2018-04-19 11:18:18');
INSERT INTO `mk_panel_content` VALUES (49, 6, 0, 100051701, '坚果 Pro 2S', '双系统，无限屏，骁龙 ™ 710 处理器 · 前置 1600 万像素摄像头 · 6.01 英寸全高清全面屏 · AI 通话降噪 · 人脸解锁 + 指纹解锁 ', 1798.00, 3, '', 'https://resource.smartisan.com/resource/b07b9765e272f866da6acda4ee107d88.png', '', '', '2018-04-19 11:18:16', '2018-04-19 11:18:18');
INSERT INTO `mk_panel_content` VALUES (50, 6, 0, 100040607, '', '', 0.00, 4, '', 'https://resource.smartisan.com/resource/718bcecced0df1cd23bbdb9cc1f70b7d.png', '', '', '2018-04-19 11:18:16', '2018-04-19 11:18:18');
INSERT INTO `mk_panel_content` VALUES (55, 0, 1, NULL, '', '', 0.00, 1, '', '手机', NULL, NULL, '2018-07-27 20:48:21', '2018-07-27 22:32:51');
INSERT INTO `mk_panel_content` VALUES (58, 0, 1, NULL, '', '', 0.00, 2, '', '官方配件', NULL, NULL, '2018-07-27 20:50:07', '2018-07-27 22:25:18');
INSERT INTO `mk_panel_content` VALUES (59, 0, 0, NULL, '', '', 0.00, 3, '', '服饰箱包', NULL, NULL, '2018-07-27 22:25:44', '2018-07-27 22:26:54');
INSERT INTO `mk_panel_content` VALUES (60, 0, 0, NULL, '', '', 0.00, 4, '', '畅呼吸', NULL, NULL, '2018-07-27 22:26:03', '2018-07-27 22:26:50');
INSERT INTO `mk_panel_content` VALUES (61, 0, 0, NULL, '', '', 0.00, 5, '', '服务', NULL, NULL, '2018-07-27 22:26:21', '2018-07-27 22:26:47');

SET FOREIGN_KEY_CHECKS = 1;
