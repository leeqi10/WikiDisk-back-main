/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : wiki_disk

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 05/12/2022 20:26:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '菜单名',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` bigint NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `del_flag` int NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, '测试', 'test', 'system/test/index', '0', '0', 'test:list', '#', NULL, '2011-12-31 23:12:03', NULL, '2022-12-30 20:44:55', 0, NULL);
INSERT INTO `sys_menu` VALUES (3, '列表', 'list', 'system/test/index', '0', '0', 'list', '#', NULL, '2022-12-03 20:44:27', NULL, '2022-12-03 20:45:00', 0, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色权限字符串',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
  `del_flag` int NULL DEFAULT 0 COMMENT 'del_flag',
  `create_by` bigint NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (3, '管理员', 'admin', '0', 0, 2, '2022-03-05 20:29:16', 2, '2022-03-05 20:29:30', NULL);
INSERT INTO `sys_role` VALUES (4, '组长', 'leader', '0', 0, 2, '2022-03-05 20:29:21', 2, '2022-03-05 20:29:34', NULL);
INSERT INTO `sys_role` VALUES (5, '成员', 'member', '0', 0, 2, '2022-03-05 20:29:24', 2, '2022-03-05 20:29:36', NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `menu_id` bigint NOT NULL DEFAULT 0 COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (3, 3);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专业',
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方向',
  `grade` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '年级',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '用户类型（0管理员，1普通用户）',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int NULL DEFAULT 0 COMMENT '删除标志（0代表未删除，1代表已删除）',
  `wx_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信openId',
  `qq_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'qq open id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (2, 'aa', 'aa', '$2a$10$6/PCgbtMLf1qqBeAPWrWouIXljQ.ZX9sl6pGheRtm3P8n9bsZ34XG', '0', '1223445@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `role_id` bigint NOT NULL DEFAULT 0 COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 3);

-- ----------------------------
-- Table structure for wiki_db_favorite
-- ----------------------------
DROP TABLE IF EXISTS `wiki_db_favorite`;
CREATE TABLE `wiki_db_favorite`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `datasource_id` bigint NULL DEFAULT NULL COMMENT '数据源ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收藏标题',
  `content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收藏内容',
  `create_user_id` bigint NULL DEFAULT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名字',
  `yn` tinyint NULL DEFAULT NULL COMMENT '是否有效 0=无效 1=有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_db_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_db_history
-- ----------------------------
DROP TABLE IF EXISTS `wiki_db_history`;
CREATE TABLE `wiki_db_history`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `datasource_id` bigint NULL DEFAULT NULL COMMENT '数据源ID',
  `content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'sql内容',
  `create_user_id` bigint NULL DEFAULT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名字',
  `yn` tinyint NULL DEFAULT NULL COMMENT '是否有效 0=无效 1=有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-历史纪录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_db_history
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_page
-- ----------------------------
DROP TABLE IF EXISTS `wiki_page`;
CREATE TABLE `wiki_page`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `space_id` bigint NOT NULL COMMENT '空间ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名字',
  `parent_id` bigint NOT NULL DEFAULT 0 COMMENT '父ID',
  `node_type` tinyint NOT NULL DEFAULT 0 COMMENT '节点类型 0=有子节点 1=终节点',
  `zan_num` int NOT NULL DEFAULT 0 COMMENT '赞的数量',
  `edit_type` tinyint NOT NULL DEFAULT 0 COMMENT '编辑类型 0=可编辑 1=不允许编辑',
  `create_user_id` bigint NOT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名字',
  `update_user_id` bigint NOT NULL COMMENT '修改人ID',
  `update_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '修改人名字',
  `del_flag` tinyint NOT NULL DEFAULT 0 COMMENT '0=有效 1=删除',
  `view_num` int NOT NULL DEFAULT 0 COMMENT '阅读数',
  `seq_no` int NOT NULL DEFAULT 0 COMMENT '顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI页面' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_page
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_page_comment
-- ----------------------------
DROP TABLE IF EXISTS `wiki_page_comment`;
CREATE TABLE `wiki_page_comment`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint NULL DEFAULT NULL COMMENT '页面ID',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父评论ID',
  `content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论内容',
  `zan_num` int NULL DEFAULT 0 COMMENT '赞的数量',
  `create_user_id` bigint NULL DEFAULT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名字',
  `del_flag` tinyint NULL DEFAULT 0 COMMENT '0=有效 1=删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI页面评论' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_page_comment
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_page_content
-- ----------------------------
DROP TABLE IF EXISTS `wiki_page_content`;
CREATE TABLE `wiki_page_content`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint NULL DEFAULT NULL COMMENT '页面ID',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `create_user_id` bigint NULL DEFAULT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名字',
  `update_user_id` bigint NULL DEFAULT NULL COMMENT '修改人ID',
  `update_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人名字',
  `preview` varchar(16000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预览内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `page_id`(`page_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI页面内容' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_page_content
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_page_file
-- ----------------------------
DROP TABLE IF EXISTS `wiki_page_file`;
CREATE TABLE `wiki_page_file`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint NOT NULL COMMENT '页面ID',
  `file_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件名',
  `file_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件URL',
  `create_user_id` bigint NOT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名字',
  `update_user_id` bigint NOT NULL COMMENT '修改人ID',
  `update_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '修改人名字',
  `del_flag` tinyint NOT NULL DEFAULT 0 COMMENT '0=有效 1=删除',
  `download_num` int NOT NULL DEFAULT 0 COMMENT '下载次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI页面文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_page_file
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_page_history
-- ----------------------------
DROP TABLE IF EXISTS `wiki_page_history`;
CREATE TABLE `wiki_page_history`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint NOT NULL COMMENT '页面ID',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '本次文章内容',
  `create_user_id` bigint NOT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名字',
  `del_flag` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记 0=正常 1=已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `page_id`(`page_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI修改纪录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_page_history
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_page_zan
-- ----------------------------
DROP TABLE IF EXISTS `wiki_page_zan`;
CREATE TABLE `wiki_page_zan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint NULL DEFAULT NULL COMMENT '页面ID',
  `comment_id` bigint NULL DEFAULT NULL COMMENT '评论ID',
  `create_user_id` bigint NULL DEFAULT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人名字',
  `yn` tinyint NULL DEFAULT NULL COMMENT '是否有效 0=无效 1=有效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI点赞' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_page_zan
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_space
-- ----------------------------
DROP TABLE IF EXISTS `wiki_space`;
CREATE TABLE `wiki_space`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '空间名',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '空间类型 1=公司 2=个人 3=私人',
  `space_explain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '描述',
  `edit_type` tinyint NOT NULL DEFAULT 0 COMMENT '编辑类型 0=可编辑 1=不允许编辑',
  `tree_lazy_load` tinyint NOT NULL DEFAULT 0 COMMENT '目录延迟加载 0=否 1=是',
  `open_doc` tinyint NOT NULL DEFAULT 0 COMMENT '是否是开放文档 0=否 1=是',
  `create_user_id` bigint NOT NULL COMMENT '创建人ID',
  `create_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人名字',
  `del_flag` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记 0=正常 1=已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-WIKI空间' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_space
-- ----------------------------

-- ----------------------------
-- Table structure for wiki_zyplayer_storage
-- ----------------------------
DROP TABLE IF EXISTS `wiki_zyplayer_storage`;
CREATE TABLE `wiki_zyplayer_storage`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `doc_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数名字',
  `doc_value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '参数值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `doc_key`(`doc_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'WIKI-存储网页上相关的数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wiki_zyplayer_storage
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
