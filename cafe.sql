/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : cafe

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 29/05/2023 10:44:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_book
-- ----------------------------
DROP TABLE IF EXISTS `address_book`;
CREATE TABLE `address_book`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `consignee` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '收货人',
  `sex` tinyint(4) NOT NULL COMMENT '性别 0 女 1 男',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `province_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省级区划编号',
  `province_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省级名称',
  `city_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市级区划编号',
  `city_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市级名称',
  `district_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区级区划编号',
  `district_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区级名称',
  `detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '默认 0 否 1是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '地址管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address_book
-- ----------------------------
INSERT INTO `address_book` VALUES (1417414526093082626, 1417012167126876162, '小明', 1, '13812345678', NULL, NULL, NULL, NULL, NULL, NULL, '昌平区金燕龙办公楼', '公司', 1, '2021-07-20 17:22:12', '2021-07-20 17:26:33', 1417012167126876162, 1417012167126876162, 0);
INSERT INTO `address_book` VALUES (1417414926166769666, 1417012167126876162, '小李', 1, '13512345678', NULL, NULL, NULL, NULL, NULL, NULL, '测试', '家', 0, '2021-07-20 17:23:47', '2021-07-20 17:23:47', 1417012167126876162, 1417012167126876162, 0);
INSERT INTO `address_book` VALUES (1655829428727013377, 1, '盛', 1, '15725023725', NULL, NULL, NULL, NULL, NULL, NULL, '1号桌', '公司', 1, '2023-05-09 14:57:54', '2023-05-26 00:27:05', 1, 1, 0);
INSERT INTO `address_book` VALUES (1655877575364960257, 1643693068746555394, 'syc', 1, '15725023725', NULL, NULL, NULL, NULL, NULL, NULL, '3号桌', '无', 1, '2023-05-09 18:09:13', '2023-05-19 19:53:44', 1643693068746555394, 1643693068746555394, 0);
INSERT INTO `address_book` VALUES (1657457163463389186, 1657457035058966530, '盛', 1, '15725023725', NULL, NULL, NULL, NULL, NULL, NULL, '1号桌', '公司', 0, '2023-05-14 02:45:56', '2023-05-14 02:45:56', 1657457035058966530, 1657457035058966530, 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   1 菜品分类 2 套餐分类',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '分类名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '顺序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_category_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品及套餐分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1397844263642378242, 1, '炒菜', 1, '2021-05-27 09:16:58', '2023-04-10 20:21:47', 1, 1);
INSERT INTO `category` VALUES (1397844303408574465, 1, '烧烤', 2, '2021-05-27 09:17:07', '2023-04-10 20:21:38', 1, 1);
INSERT INTO `category` VALUES (1397844391040167938, 1, '汤煲', 3, '2021-05-27 09:17:28', '2023-04-10 20:21:54', 1, 1);
INSERT INTO `category` VALUES (1413341197421846529, 1, '饮品', 11, '2021-07-09 11:36:15', '2021-07-09 14:39:15', 1, 1);
INSERT INTO `category` VALUES (1413342269393674242, 2, '商务套餐', 5, '2021-07-09 11:40:30', '2021-07-09 14:43:45', 1, 1);
INSERT INTO `category` VALUES (1413384954989060097, 1, '主食', 12, '2021-07-09 14:30:07', '2021-07-09 14:39:19', 1, 1);
INSERT INTO `category` VALUES (1413386191767674881, 2, '优惠套餐', 6, '2021-07-09 14:35:02', '2021-07-09 14:39:05', 1, 1);
INSERT INTO `category` VALUES (1643680758762110977, 1, '甜品', 13, '2023-04-06 02:23:26', '2023-04-06 02:23:30', 1, 1);

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜品名称',
  `category_id` bigint(20) NOT NULL COMMENT '菜品分类id',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '菜品价格',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '图片',
  `description` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述信息',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 停售 1 起售',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '顺序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_dish_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1397849739276890114, '木须肉', 1397844263642378242, 3800.00, '222222222', 'a1116742-b42f-427e-b8e0-204aa1d1d931.png', '', 1, 0, '2021-05-27 09:38:43', '2023-04-10 20:50:28', 1, 1, 0);
INSERT INTO `dish` VALUES (1397850140982161409, '小炒黄牛肉', 1397844263642378242, 6800.00, '123412341234', 'ede8097f-dbb3-4618-84c2-4d45277cf84c.png', '新鲜滑牛肉\n', 1, 0, '2021-05-27 09:40:19', '2023-05-18 00:43:10', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397850392090947585, '腌笃鲜', 1397844391040167938, 4800.00, '123412341234', 'cee17e21-46f3-4bf9-9695-d9ac2087bf69.png', '', 1, 0, '2021-05-27 09:41:19', '2023-05-18 00:43:18', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397850851245600769, '炒时蔬', 1397844263642378242, 2800.00, '123412341234', 'f9785f9f-8f01-42ca-8877-afc9e9c52efa.png', '时蔬', 1, 0, '2021-05-27 09:43:08', '2023-05-18 00:43:41', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397851099502260226, '土豆丝', 1397844263642378242, 1200.00, '23412341234', '31a1e0df-6692-4708-a0ad-af60ebffd5b9.png', '', 1, 0, '2021-05-27 09:44:08', '2023-05-18 00:43:49', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397851370462687234, '熘肝尖', 1397844263642378242, 3800.00, '1246812345678', '94d31448-b1cd-4f73-86af-ae06dda71500.png', '', 1, 0, '2021-05-27 09:45:12', '2023-05-18 00:45:17', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397851668262465537, '红烧肉', 1397844263642378242, 4800.00, '1234567812345678', '8508c2b7-21ee-40b4-b488-34f5976ed5cd.png', '家常红烧肉', 1, 0, '2021-05-27 09:46:23', '2023-05-18 00:45:27', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397852391150759938, '可乐', 1413341197421846529, 300.00, '2346812468', '2ac16270-25f8-4f29-a8d2-df060406c6c1.png', '', 1, 0, '2021-05-27 09:49:16', '2023-05-18 00:44:08', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397853183287013378, '烤腰子', 1397844303408574465, 2800.00, '123456787654321', '07721889-9b06-4a11-9787-2f234a456924.png', '', 1, 0, '2021-05-27 09:52:24', '2023-05-18 00:44:17', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397853709101740034, '锅包肉', 1397844263642378242, 5800.00, '1234321234321', '8d650a16-6b6e-4691-975a-f96ce20c6ca2.png', '东北名菜', 1, 0, '2021-05-27 09:54:30', '2023-05-18 00:44:33', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397853890262118402, '鱼香肉丝', 1397844263642378242, 3800.00, '1234212321234', '8dcfda14-5712-4d28-82f7-ae905b3c2308.jpg', '鱼香肉丝简直就是我们童年回忆的一道经典菜，上学的时候点个鱼香肉丝盖饭坐在宿舍床上看着肥皂剧，绝了！现在完美复刻一下上学的时候感觉', 1, 0, '2021-05-27 09:55:13', '2023-05-18 00:43:25', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397854865672679425, '烤鸡心', 1397844303408574465, 300.00, '23456431·23456', 'e96b62d8-45ce-4316-a5ee-4b2232fa384e.png', '美味鸡心', 1, 0, '2021-05-27 09:59:06', '2023-04-10 20:43:04', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860242057375745, '脆皮烧鹅', 1397844263642378242, 10800.00, '123456786543213456', 'e476f679-5c15-436b-87fa-8c4e9644bf33.jpeg', '“广东烤鸭美而香，却胜烧鹅说古冈（今新会），燕瘦环肥各佳妙，君休偏重便宜坊”，可见烧鹅与烧鸭在粤菜之中已早负盛名。作为广州最普遍和最受欢迎的烧烤肉食，以它的“色泽金红，皮脆肉嫩，味香可口”的特色，在省城各大街小巷的烧卤店随处可见。', 1, 0, '2021-05-27 10:20:27', '2023-05-18 00:42:49', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397860578738352129, '歌山辣子鸡', 1397844263642378242, 5800.00, '12345678654', '1e0c5b4f-fe41-402c-882d-1072bed91a14.png', '一道经典的家常菜，一般以整鸡为主料，加上葱、干辣椒、花椒、盐、胡椒、味精等多种材料精制而成，虽然是同一道菜，各地制作也各有特色。', 1, 0, '2021-05-27 10:21:48', '2023-04-10 20:40:22', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860792492666881, '猪骨煲', 1397844391040167938, 8800.00, '213456432123456', '3cdbf149-69a8-4097-8f5f-36c4ad9ae01b.png', '', 1, 0, '2021-05-27 10:22:39', '2023-04-10 20:37:52', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860963880316929, '牛腩煲', 1397844391040167938, 6800.00, '1234563212345', '3fabb83a-1c09-4fd9-892b-4ef7457daafa.jpeg', '', 1, 0, '2021-05-27 10:23:19', '2023-05-18 00:46:06', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397861683434139649, '鲫鱼豆腐汤', 1397844391040167938, 4800.00, '1234567876543213456', '24e0338b-6302-4791-9160-8a3037b4dc4c.png', '', 1, 0, '2021-05-27 10:26:11', '2023-05-18 00:45:06', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397862198033297410, '老母鸡汤', 1397844391040167938, 6800.00, '123456786532455', '28d42933-590e-426d-982d-5ac80efd12e5.png', '', 1, 0, '2021-05-27 10:28:14', '2023-05-18 00:45:57', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1397862477831122945, '菌菇汤', 1397844391040167938, 3800.00, '1234567865432', 'c1a7cce6-e9e8-43f5-8ecd-5941f530da97.png', '', 1, 0, '2021-05-27 10:29:20', '2023-05-18 00:44:58', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1413342036832100354, '北冰洋', 1413341197421846529, 500.00, '', '3f0522cf-b5de-4311-93f9-530f4d5220d4.png', '', 1, 0, '2021-07-09 11:39:35', '2023-05-18 00:45:34', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1413384757047271425, '王老吉', 1413341197421846529, 500.00, '', '3f6889b0-b755-4a06-bc47-aadebdf14b4a.png', '', 1, 0, '2021-07-09 14:29:20', '2023-04-10 20:24:09', 1, 1, 0);
INSERT INTO `dish` VALUES (1413385247889891330, '米饭', 1413384954989060097, 200.00, '', 'ee04a05a-1230-46b6-8ad5-1a95b140fff3.png', '', 1, 0, '2021-07-09 14:31:17', '2021-07-11 16:35:26', 1, 1, 0);
INSERT INTO `dish` VALUES (1643707018787766274, '羊肉串', 1397844303408574465, 400.00, '', 'defadd5e-ac2d-4c72-a9a0-23f4e699d6cd.jpg', '', 1, 0, '2023-04-06 04:07:47', '2023-05-18 00:45:50', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1645443856078565378, '炒田螺', 1397844263642378242, 2300.00, '', '82987691-7293-4214-90fb-66ffe48cb44c.png', '', 1, 0, '2023-04-10 23:09:21', '2023-05-18 00:42:55', 1, 1643693068746555394, 0);
INSERT INTO `dish` VALUES (1648645981063409666, '沸腾鱼', 1397844391040167938, 12800.00, '', 'fbfcd78b-59e9-4e5b-8c20-d81665678928.png', '川渝名菜', 1, 0, '2023-04-19 19:13:27', '2023-05-18 00:42:41', 1, 1643693068746555394, 0);

-- ----------------------------
-- Table structure for dish_flavor
-- ----------------------------
DROP TABLE IF EXISTS `dish_flavor`;
CREATE TABLE `dish_flavor`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `dish_id` bigint(20) NOT NULL COMMENT '菜品',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '口味名称',
  `value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味数据list',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品口味关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dish_flavor
-- ----------------------------
INSERT INTO `dish_flavor` VALUES (1397849417888346113, 1397849417854791681, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:37:27', '2021-05-27 09:37:27', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397849936421761025, 1397849936404983809, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:39:30', '2021-05-27 09:39:30', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397849936438538241, 1397849936404983809, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:39:30', '2021-05-27 09:39:30', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850630734262274, 1397850630700707841, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:42:16', '2021-05-27 09:42:16', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850630755233794, 1397850630700707841, '辣度', '[\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:42:16', '2021-05-27 09:42:16', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397853423486414850, 1397853423461249026, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:53:22', '2021-05-27 09:53:22', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397854133632413697, 1397854133603053569, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-27 09:56:11', '2021-05-27 09:56:11', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397854865735593986, 1397854865672679425, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-04-10 20:43:04', '2023-04-10 20:43:04', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397855742303186946, 1397855742273826817, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:02:35', '2021-05-27 10:02:35', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397855906497605633, 1397855906468245506, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 10:03:14', '2021-05-27 10:03:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397856190573621250, 1397856190540066818, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:04:21', '2021-05-27 10:04:21', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859056709316609, 1397859056684150785, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:15:45', '2021-05-27 10:15:45', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859277837217794, 1397859277812051969, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:16:37', '2021-05-27 10:16:37', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859487502086146, 1397859487476920321, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:17:27', '2021-05-27 10:17:27', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859757061615618, 1397859757036449794, '甜味', '[\"无糖\",\"少糖\",\"半躺\",\"多糖\",\"全糖\"]', '2021-05-27 10:18:32', '2021-05-27 10:18:32', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861135754506242, 1397861135733534722, '甜味', '[\"无糖\",\"少糖\",\"半躺\",\"多糖\",\"全糖\"]', '2021-05-27 10:24:00', '2021-05-27 10:24:00', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861370035744769, 1397861370010578945, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:24:56', '2021-05-27 10:24:56', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861898467717121, 1397861898438356993, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 10:27:02', '2021-05-27 10:27:02', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398089545865015297, 1398089545676271617, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-28 01:31:38', '2021-05-28 01:31:38', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398089782323097601, 1398089782285348866, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:32:34', '2021-05-28 01:32:34', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090003262255106, 1398090003228700673, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:33:27', '2021-05-28 01:33:27', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090264554811394, 1398090264517062657, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:34:29', '2021-05-28 01:34:29', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090455399837698, 1398090455324340225, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:35:14', '2021-05-28 01:35:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090685449023490, 1398090685419663362, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-28 01:36:09', '2021-05-28 01:36:09', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090825358422017, 1398090825329061889, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:36:43', '2021-05-28 01:36:43', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091007051476993, 1398091007017922561, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:37:26', '2021-05-28 01:37:26', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091296164851713, 1398091296131297281, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:38:35', '2021-05-28 01:38:35', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091546531246081, 1398091546480914433, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:39:35', '2021-05-28 01:39:35', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091729809747969, 1398091729788776450, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:40:18', '2021-05-28 01:40:18', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091889499484161, 1398091889449152513, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:40:56', '2021-05-28 01:40:56', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398092095179763713, 1398092095142014978, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:41:45', '2021-05-28 01:41:45', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398092283877306370, 1398092283847946241, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:42:30', '2021-05-28 01:42:30', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398094018939236354, 1398094018893099009, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:49:24', '2021-05-28 01:49:24', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398094391494094850, 1398094391456346113, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:50:53', '2021-05-28 01:50:53', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1399574026165727233, 1399305325713600514, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-06-01 03:50:25', '2021-06-01 03:50:25', 1399309715396669441, 1399309715396669441, 0);
INSERT INTO `dish_flavor` VALUES (1413389540592263169, 1413384757047271425, '温度', '[\"常温\",\"冷藏\"]', '2023-04-10 20:24:09', '2023-04-10 20:24:09', 1, 1, 0);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '性别',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '身份证号',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态 0:禁用，1:正常',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '员工信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13812312312', '1', '110101199001010047', 1, '2021-05-06 17:20:07', '2023-04-06 02:48:28', 1, 1);
INSERT INTO `employee` VALUES (1643687188617543681, '王大力', 'user123', 'e10adc3949ba59abbe56e057f20f883e', '17315632643', '1', '320201200012185216', 1, '2023-04-06 02:48:59', '2023-04-07 15:15:27', 1, 1);
INSERT INTO `employee` VALUES (1645451413316759554, '王舒贤', 'wsx123', 'e10adc3949ba59abbe56e057f20f883e', '17315632643', '0', '320201200012185216', 1, '2023-04-10 23:39:23', '2023-05-13 22:28:46', 1, 1);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名字',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `dish_id` bigint(20) NULL DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint(20) NULL DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味',
  `number` int(11) NOT NULL DEFAULT 1 COMMENT '数量',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1648655340334067713, '木须肉', 'a1116742-b42f-427e-b8e0-204aa1d1d931.png', 1648655340271153153, 1397849739276890114, NULL, NULL, 1, 38.00);
INSERT INTO `order_detail` VALUES (1648655340334067714, '脆皮烧鹅', 'e476f679-5c15-436b-87fa-8c4e9644bf33.jpeg', 1648655340271153153, 1397860242057375745, NULL, '微辣', 1, 108.00);
INSERT INTO `order_detail` VALUES (1655829999324315649, '炒田螺', '82987691-7293-4214-90fb-66ffe48cb44c.png', 1655829999257206785, 1645443856078565378, NULL, '重辣', 1, 23.00);
INSERT INTO `order_detail` VALUES (1655956888755896322, '脆皮烧鹅', 'e476f679-5c15-436b-87fa-8c4e9644bf33.jpeg', 1655956888722341889, 1397860242057375745, NULL, '中辣', 1, 108.00);
INSERT INTO `order_detail` VALUES (1655970955600130051, '木须肉', 'a1116742-b42f-427e-b8e0-204aa1d1d931.png', 1655970955600130050, 1397849739276890114, NULL, NULL, 1, 38.00);
INSERT INTO `order_detail` VALUES (1655975251112685571, '木须肉', 'a1116742-b42f-427e-b8e0-204aa1d1d931.png', 1655975251112685570, 1397849739276890114, NULL, NULL, 1, 38.00);
INSERT INTO `order_detail` VALUES (1656179726953287681, '锅包肉', '8d650a16-6b6e-4691-975a-f96ce20c6ca2.png', 1656179726886178817, 1397853709101740034, NULL, '不要蒜', 1, 58.00);
INSERT INTO `order_detail` VALUES (1657457357508669441, '商务套餐B', 'a93d655d-29b4-4436-b3aa-78daac49c55b.png', 1657457357441560578, NULL, 1648650601517084674, NULL, 1, 198.00);
INSERT INTO `order_detail` VALUES (1657982800276058114, '腌笃鲜', 'cee17e21-46f3-4bf9-9695-d9ac2087bf69.png', 1657982800208949249, 1397850392090947585, NULL, '不辣,不辣', 1, 48.00);
INSERT INTO `order_detail` VALUES (1657982800276058115, '猪骨煲', '3cdbf149-69a8-4097-8f5f-36c4ad9ae01b.png', 1657982800208949249, 1397860792492666881, NULL, NULL, 1, 88.00);
INSERT INTO `order_detail` VALUES (1657982800276058116, '鲫鱼豆腐汤', '24e0338b-6302-4791-9160-8a3037b4dc4c.png', 1657982800208949249, 1397861683434139649, NULL, '不要葱', 1, 48.00);
INSERT INTO `order_detail` VALUES (1657982800276058117, '菌菇汤', 'c1a7cce6-e9e8-43f5-8ecd-5941f530da97.png', 1657982800208949249, 1397862477831122945, NULL, '不辣', 1, 38.00);
INSERT INTO `order_detail` VALUES (1658875522218283011, '歌山辣子鸡', '1e0c5b4f-fe41-402c-882d-1072bed91a14.png', 1658875522218283010, 1397860578738352129, NULL, NULL, 1, 58.00);
INSERT INTO `order_detail` VALUES (1659169030573432833, '北冰洋', '3f0522cf-b5de-4311-93f9-530f4d5220d4.png', 1659169030506323969, 1413342036832100354, NULL, NULL, 5, 5.00);
INSERT INTO `order_detail` VALUES (1659172651272806403, '可乐', '2ac16270-25f8-4f29-a8d2-df060406c6c1.png', 1659172651272806402, 1397852391150759938, NULL, NULL, 7, 3.00);
INSERT INTO `order_detail` VALUES (1659173889318100995, '米饭', 'ee04a05a-1230-46b6-8ad5-1a95b140fff3.png', 1659173889318100994, 1413385247889891330, NULL, NULL, 5, 2.00);
INSERT INTO `order_detail` VALUES (1659208747033600002, '炒田螺', '82987691-7293-4214-90fb-66ffe48cb44c.png', 1659208746966491138, 1645443856078565378, NULL, NULL, 3, 23.00);
INSERT INTO `order_detail` VALUES (1659209033299042307, '锅包肉', '8d650a16-6b6e-4691-975a-f96ce20c6ca2.png', 1659209033299042306, 1397853709101740034, NULL, NULL, 1, 58.00);
INSERT INTO `order_detail` VALUES (1659529859953106947, '炒时蔬', 'f9785f9f-8f01-42ca-8877-afc9e9c52efa.png', 1659529859953106946, 1397850851245600769, NULL, NULL, 2, 28.00);
INSERT INTO `order_detail` VALUES (1659529997136207874, '熘肝尖', '94d31448-b1cd-4f73-86af-ae06dda71500.png', 1659529997069099009, 1397851370462687234, NULL, NULL, 6, 38.00);
INSERT INTO `order_detail` VALUES (1659583872006471681, '熘肝尖', '94d31448-b1cd-4f73-86af-ae06dda71500.png', 1659583871943557121, 1397851370462687234, NULL, NULL, 5, 38.00);
INSERT INTO `order_detail` VALUES (1661771088141062145, '红烧肉', '8508c2b7-21ee-40b4-b488-34f5976ed5cd.png', 1661771087927152642, 1397851668262465537, NULL, NULL, 4, 48.00);
INSERT INTO `order_detail` VALUES (1661771555931787266, '土豆丝', '31a1e0df-6692-4708-a0ad-af60ebffd5b9.png', 1661771555931787265, 1397851099502260226, NULL, NULL, 5, 12.00);
INSERT INTO `order_detail` VALUES (1661772845395054595, '米饭', 'ee04a05a-1230-46b6-8ad5-1a95b140fff3.png', 1661772845395054594, 1413385247889891330, NULL, NULL, 5, 2.00);
INSERT INTO `order_detail` VALUES (1661775179709779969, '米饭', 'ee04a05a-1230-46b6-8ad5-1a95b140fff3.png', 1661775179642671106, 1413385247889891330, NULL, NULL, 9, 2.00);
INSERT INTO `order_detail` VALUES (1661775300467986434, '可乐', '2ac16270-25f8-4f29-a8d2-df060406c6c1.png', 1661775300467986433, 1397852391150759938, NULL, NULL, 4, 3.00);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单号',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '订单状态 1待付款，2待派送，3已派送，4已完成，5已取消',
  `user_id` bigint(20) NOT NULL COMMENT '下单用户',
  `address_book_id` bigint(20) NOT NULL COMMENT '地址id',
  `order_time` datetime NOT NULL COMMENT '下单时间',
  `checkout_time` datetime NOT NULL COMMENT '结账时间',
  `pay_method` int(11) NOT NULL DEFAULT 1 COMMENT '支付方式 1微信,2支付宝',
  `amount` decimal(10, 2) NOT NULL COMMENT '实收金额',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1648655340271153153, '1648655340271153153', 4, 1643693068746555394, 1644322441052876801, '2023-04-19 19:50:38', '2023-04-19 19:50:38', 1, 146.00, '无', '15725023725', '2号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1655829999257206785, '1655829999257206785', 4, 1643693068746555394, 1644322441052876801, '2023-05-09 15:00:10', '2023-05-09 15:00:10', 1, 23.00, '', '15725023725', '2号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1655956888722341889, '1655956888722341889', 4, 1643693068746555394, 1655877575364960257, '2023-05-09 23:24:23', '2023-05-09 23:24:23', 1, 108.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1655970955600130050, '1655970955600130050', 4, 1643693068746555394, 1655877575364960257, '2023-05-10 00:20:17', '2023-05-10 00:20:17', 1, 38.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1655975251112685570, '1655975251112685570', 2, 1643693068746555394, 1655877575364960257, '2023-05-10 00:37:21', '2023-05-10 00:37:21', 1, 38.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1656179726886178817, '1656179726886178817', 2, 1643693068746555394, 1655877575364960257, '2023-05-10 14:09:52', '2023-05-10 14:09:52', 1, 58.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1657457357441560578, '1657457357441560578', 2, 1643693068746555394, 1655877575364960257, '2023-05-14 02:46:43', '2023-05-14 02:46:43', 1, 198.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1657982800208949249, '1657982800208949249', 2, 1643693068746555394, 1655877575364960257, '2023-05-15 13:34:38', '2023-05-15 13:34:38', 1, 222.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1658875522218283010, '1658875522218283010', 2, 1643693068746555394, 1655877575364960257, '2023-05-18 00:42:00', '2023-05-18 00:42:00', 1, 58.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659169030506323969, '1659169030506323969', 2, 1643693068746555394, 1655877575364960257, '2023-05-18 20:08:17', '2023-05-18 20:08:17', 1, 25.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659172651272806402, '1659172651272806402', 2, 1643693068746555394, 1655877575364960257, '2023-05-18 20:22:41', '2023-05-18 20:22:41', 1, 21.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659173889318100994, '1659173889318100994', 2, 1643693068746555394, 1655877575364960257, '2023-05-18 20:27:36', '2023-05-18 20:27:36', 1, 10.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659208746966491138, '1659208746966491138', 2, 1643693068746555394, 1655877575364960257, '2023-05-18 22:46:07', '2023-05-18 22:46:07', 1, 69.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659209033299042306, '1659209033299042306', 2, 1643693068746555394, 1655877575364960257, '2023-05-18 22:47:15', '2023-05-18 22:47:15', 1, 58.00, '', '15725023725', '1号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659529859953106946, '1659529859953106946', 2, 1643693068746555394, 1655877575364960257, '2023-05-19 20:02:06', '2023-05-19 20:02:06', 1, 56.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659529997069099009, '1659529997069099009', 2, 1643693068746555394, 1655877575364960257, '2023-05-19 20:02:39', '2023-05-19 20:02:39', 1, 228.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1659583871943557121, '1659583871943557121', 2, 1643693068746555394, 1655877575364960257, '2023-05-19 23:36:43', '2023-05-19 23:36:43', 1, 190.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1661771087927152642, '1661771087927152642', 2, 1643693068746555394, 1655877575364960257, '2023-05-26 00:27:56', '2023-05-26 00:27:56', 1, 192.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1661771555931787265, '1661771555931787265', 2, 1643693068746555394, 1655877575364960257, '2023-05-26 00:29:48', '2023-05-26 00:29:48', 1, 60.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1661772845395054594, '1661772845395054594', 2, 1643693068746555394, 1655877575364960257, '2023-05-26 00:34:55', '2023-05-26 00:34:55', 1, 10.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1661775179642671106, '1661775179642671106', 2, 1643693068746555394, 1655877575364960257, '2023-05-26 00:44:12', '2023-05-26 00:44:12', 1, 18.00, '', '15725023725', '3号桌', NULL, 'syc');
INSERT INTO `orders` VALUES (1661775300467986433, '1661775300467986433', 2, 1643693068746555394, 1655877575364960257, '2023-05-26 00:44:41', '2023-05-26 00:44:41', 1, 12.00, '', '15725023725', '3号桌', NULL, 'syc');

-- ----------------------------
-- Table structure for schedule_detail
-- ----------------------------
DROP TABLE IF EXISTS `schedule_detail`;
CREATE TABLE `schedule_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL COMMENT '订单ID',
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT '订单状态:1待付款，2待制作，3已制作，4已完成，5已取消',
  `order_time` datetime NOT NULL COMMENT '下单时间',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `dish_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜品名称',
  `dish_number` int(11) NOT NULL DEFAULT 1 COMMENT '菜品数量',
  `dish_flavor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜品口味',
  `category_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜品分类名称',
  `dish_status` int(11) NOT NULL DEFAULT 2 COMMENT '菜品状态   ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单安排表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of schedule_detail
-- ----------------------------
INSERT INTO `schedule_detail` VALUES (1, 1648655340271153153, 4, '2023-04-19 19:50:38', '2号桌', '无', '木须肉', 1, NULL, '炒菜', 4);
INSERT INTO `schedule_detail` VALUES (2, 1648655340271153153, 4, '2023-04-19 19:50:38', '2号桌', '无', '脆皮烧鹅', 1, '微辣', '炒菜', 4);
INSERT INTO `schedule_detail` VALUES (3, 1655829999257206785, 4, '2023-05-09 15:00:10', '2号桌', '', '炒田螺', 1, '重辣', '炒菜', 4);
INSERT INTO `schedule_detail` VALUES (4, 1655956888722341889, 2, '2023-05-09 23:24:23', '3号桌', '', '脆皮烧鹅', 1, '中辣', '炒菜', 4);
INSERT INTO `schedule_detail` VALUES (5, 1655970955600130050, 2, '2023-05-10 00:20:17', '3号桌', '', '木须肉', 1, NULL, '炒菜', 4);
INSERT INTO `schedule_detail` VALUES (6, 1655975251112685570, 2, '2023-05-10 00:37:21', '1号桌', '', '木须肉', 1, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (7, 1656179726886178817, 2, '2023-05-10 14:09:52', '1号桌', '', '锅包肉', 1, '不要蒜', '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (8, 1657982800208949249, 2, '2023-05-15 13:34:38', '1号桌', '', '腌笃鲜', 1, '不辣,不辣', '汤煲', 2);
INSERT INTO `schedule_detail` VALUES (9, 1657982800208949249, 2, '2023-05-15 13:34:38', '1号桌', '', '猪骨煲', 1, NULL, '汤煲', 2);
INSERT INTO `schedule_detail` VALUES (10, 1657982800208949249, 2, '2023-05-15 13:34:38', '1号桌', '', '鲫鱼豆腐汤', 1, '不要葱', '汤煲', 2);
INSERT INTO `schedule_detail` VALUES (11, 1657982800208949249, 2, '2023-05-15 13:34:38', '1号桌', '', '菌菇汤', 1, '不辣', '汤煲', 2);
INSERT INTO `schedule_detail` VALUES (12, 1658875522218283010, 2, '2023-05-18 00:42:00', '1号桌', '', '歌山辣子鸡', 1, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (13, 1659169030506323969, 2, '2023-05-18 20:08:17', '1号桌', '', '北冰洋', 5, NULL, '饮品', 4);
INSERT INTO `schedule_detail` VALUES (14, 1659172651272806402, 2, '2023-05-18 20:22:41', '1号桌', '', '可乐', 7, NULL, '饮品', 4);
INSERT INTO `schedule_detail` VALUES (15, 1659173889318100994, 2, '2023-05-18 20:27:36', '1号桌', '', '米饭', 5, NULL, '主食', 4);
INSERT INTO `schedule_detail` VALUES (16, 1659208746966491138, 2, '2023-05-18 22:46:07', '1号桌', '', '炒田螺', 3, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (17, 1659209033299042306, 2, '2023-05-18 22:47:15', '1号桌', '', '锅包肉', 1, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (18, 1659529859953106946, 2, '2023-05-19 20:02:06', '3号桌', '', '炒时蔬', 2, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (19, 1659529997069099009, 2, '2023-05-19 20:02:39', '3号桌', '', '熘肝尖', 6, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (20, 1659583871943557121, 2, '2023-05-19 23:36:43', '3号桌', '', '熘肝尖', 5, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (21, 1661771087927152642, 2, '2023-05-26 00:27:56', '3号桌', '', '红烧肉', 4, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (22, 1661771555931787265, 2, '2023-05-26 00:29:48', '3号桌', '', '土豆丝', 5, NULL, '炒菜', 2);
INSERT INTO `schedule_detail` VALUES (23, 1661772845395054594, 2, '2023-05-26 00:34:55', '3号桌', '', '米饭', 5, NULL, '主食', 2);
INSERT INTO `schedule_detail` VALUES (24, 1661775179642671106, 2, '2023-05-26 00:44:12', '3号桌', '', '米饭', 9, NULL, '主食', 2);

-- ----------------------------
-- Table structure for setmeal
-- ----------------------------
DROP TABLE IF EXISTS `setmeal`;
CREATE TABLE `setmeal`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `category_id` bigint(20) NOT NULL COMMENT '菜品分类id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '套餐名称',
  `price` decimal(10, 2) NOT NULL COMMENT '套餐价格',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态 0:停用 1:启用',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '编码',
  `description` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述信息',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_setmeal_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '套餐' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setmeal
-- ----------------------------
INSERT INTO `setmeal` VALUES (1645409104902553601, 1413342269393674242, '商务A', 25800.00, 1, '', '经典套餐', '9b188515-0401-4edb-8d15-86e4e41fed07.png', '2023-04-10 20:51:15', '2023-04-19 19:31:19', 1, 1, 0);
INSERT INTO `setmeal` VALUES (1648650601517084674, 1413342269393674242, '商务套餐B', 19800.00, 1, '', '', 'a93d655d-29b4-4436-b3aa-78daac49c55b.png', '2023-04-19 19:31:49', '2023-04-19 19:46:27', 1, 1, 0);

-- ----------------------------
-- Table structure for setmeal_dish
-- ----------------------------
DROP TABLE IF EXISTS `setmeal_dish`;
CREATE TABLE `setmeal_dish`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `setmeal_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '套餐id ',
  `dish_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜品id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜品名称 （冗余字段）',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '菜品原价（冗余字段）',
  `copies` int(11) NOT NULL COMMENT '份数',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '套餐菜品关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setmeal_dish
-- ----------------------------
INSERT INTO `setmeal_dish` VALUES (1645409104915136513, '1645409104902553601', '1397849739276890114', '木须肉', 3800.00, 1, 0, '2023-04-10 20:51:15', '2023-04-10 20:51:15', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1645409104915136514, '1645409104902553601', '1397850140982161409', '小炒黄牛肉', 6800.00, 1, 0, '2023-04-10 20:51:15', '2023-04-10 20:51:15', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1645409104915136515, '1645409104902553601', '1397853890262118402', '鱼香肉丝', 3800.00, 1, 0, '2023-04-10 20:51:15', '2023-04-10 20:51:15', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1645409104915136516, '1645409104902553601', '1397850851245600769', '炒时蔬', 2800.00, 1, 0, '2023-04-10 20:51:15', '2023-04-10 20:51:15', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1648654284585791490, '1648650601517084674', '1397851668262465537', '红烧肉', 4800.00, 1, 0, '2023-04-19 19:46:27', '2023-04-19 19:46:27', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1648654284602568705, '1648650601517084674', '1397851370462687234', '熘肝尖', 3800.00, 1, 0, '2023-04-19 19:46:27', '2023-04-19 19:46:27', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1648654284602568706, '1648650601517084674', '1397850851245600769', '炒时蔬', 2800.00, 1, 0, '2023-04-19 19:46:27', '2023-04-19 19:46:27', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1648654284602568707, '1648650601517084674', '1643707018787766274', '羊肉串', 400.00, 7, 0, '2023-04-19 19:46:27', '2023-04-19 19:46:27', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1648654284602568708, '1648650601517084674', '1413384757047271425', '王老吉', 500.00, 1, 0, '2023-04-19 19:46:27', '2023-04-19 19:46:27', 1, 1, 0);

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `user_id` bigint(20) NOT NULL COMMENT '主键',
  `dish_id` bigint(20) NULL DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint(20) NULL DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味',
  `number` int(11) NOT NULL DEFAULT 1 COMMENT '数量',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '购物车' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (1643695015662784514, '口味蛇', '0f4bd884-dc9c-4cf9-b59e-7d5958fec3dd.jpg', 1643694553542733826, 1397851668262465537, NULL, '热饮', 4, 168.00, '2023-04-06 03:20:05');
INSERT INTO `shopping_cart` VALUES (1657457107075166210, '土豆丝', '31a1e0df-6692-4708-a0ad-af60ebffd5b9.png', 1657457035058966530, 1397851099502260226, NULL, '不要蒜,中辣', 1, 12.00, '2023-05-14 02:45:43');
INSERT INTO `shopping_cart` VALUES (1661770815674859522, '熘肝尖', '94d31448-b1cd-4f73-86af-ae06dda71500.png', 1, 1397851370462687234, NULL, NULL, 5, 38.00, '2023-05-26 00:26:51');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态 0:禁用，1:正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1643693068746555394, NULL, '15725023725', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1643693933494579201, NULL, '15725923411', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1643694553542733826, NULL, '17315632643', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1644420526470950913, NULL, '15225233421', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1657457035058966530, NULL, '15725023275', NULL, NULL, NULL, 1);

-- ----------------------------
-- Procedure structure for insert_into_schedule
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_into_schedule`;
delimiter ;;
CREATE PROCEDURE `insert_into_schedule`()
BEGIN
 INSERT IGNORE INTO `schedule` (order_id, order_status, order_time, address, remark, dish_name, dish_number, dish_flavor, category_name)
    SELECT
        o.id AS order_id,
        o.status AS order_status,
        o.order_time,
        o.address,
        o.remark,
        od.name AS dish_name,
        od.number AS dish_number,
        od.dish_flavor,
        c.name AS category_name
    FROM
        `orders` o
        JOIN `order_detail` od ON o.id = od.order_id
        JOIN `dish` d ON d.id = od.dish_id
        JOIN `category` c ON c.id = d.category_id
    WHERE
        NOT EXISTS (
            SELECT 1
            FROM `schedule` s
            WHERE s.order_id = o.id
              AND s.dish_name = od.name
        );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_into_schedule_detail
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_into_schedule_detail`;
delimiter ;;
CREATE PROCEDURE `insert_into_schedule_detail`()
BEGIN
    DECLARE i INT DEFAULT 0;
    
    WHILE i < 2 DO
        INSERT IGNORE INTO `schedule_detail` (order_id, order_status, order_time, address, remark, dish_name, dish_number, dish_flavor, category_name)
        SELECT
            o.id AS order_id,
            o.status AS order_status,
            o.order_time,
            o.address,
            o.remark,
            od.name AS dish_name,
            od.number AS dish_number,
            od.dish_flavor,
            c.name AS category_name
        FROM
            `orders` o
            JOIN `order_detail` od ON o.id = od.order_id
            JOIN `dish` d ON d.id = od.dish_id
            JOIN `category` c ON c.id = d.category_id
        WHERE
            NOT EXISTS (
                SELECT 1
                FROM `schedule_detail` s
                WHERE s.order_id = o.id
                AND s.dish_name = od.name
            );
            
        SET i = i + 1;
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table orders
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_schedule_detail_trigger`;
delimiter ;;
CREATE TRIGGER `insert_schedule_detail_trigger` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
    CALL insert_into_schedule_detail();
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
