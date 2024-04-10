/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : wms

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2023-06-04 18:44:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=882 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('877', 'k_approval', '审批表\r\n', null, null, 'KApproval', 'crud', 'com.cyl.wms', 'wms', 'kApproval', '审批表\r\n', 'zcc', '0', '/', null, '1', '2023-02-15 19:53:47', null, null, null);
INSERT INTO `gen_table` VALUES ('878', 'k_content', '', null, null, 'KContent', 'crud', 'com.cyl.wms', 'wms', 'kContent', null, 'zcc', '0', '/', null, '1', '2023-02-16 19:12:09', null, null, null);
INSERT INTO `gen_table` VALUES ('879', 'k_content_relation', '', null, null, 'KContentRelation', 'crud', 'com.cyl.wms', 'wms', 'kContentRelation', null, 'zcc', '0', '/', null, '1', '2023-02-16 19:12:09', null, null, null);
INSERT INTO `gen_table` VALUES ('880', 'k_checkout', '工单结算表', null, null, 'KCheckout', 'crud', 'com.cyl.wms', 'wms', 'kCheckout', '工单结算表', 'zcc', '0', '/', null, '1', '2023-02-20 19:13:49', null, null, null);
INSERT INTO `gen_table` VALUES ('881', 'k_company', '公司信息表', null, null, 'KCompany', 'crud', 'com.cyl.wms', 'wms', 'kCompany', '公司信息表', 'zcc', '0', '/', null, '1', '2023-02-23 11:29:40', null, null, null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11019 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('10983', '877', 'approval_id', '审批id', 'bigint(20)', 'Long', 'approvalId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10984', '877', 'approval_user_name', '审批人', 'varchar(20)', 'String', 'approvalUserName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10985', '877', 'approval_desc', '审批描述', 'varchar(100)', 'String', 'approvalDesc', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10986', '877', 'approval_time', '审批时间', 'datetime', 'LocalDateTime', 'approvalTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '4', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10987', '877', 'is_reject', '审批是否通过 1为通过 0为驳回', 'tinyint(1)', 'Integer', 'isReject', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10988', '877', 'approval_node', '审批结点', 'varchar(50)', 'String', 'approvalNode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10989', '877', 'application_id', '审批单号', 'bigint(20)', 'Long', 'applicationId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', '1', '2023-02-15 19:53:47', null, null);
INSERT INTO `gen_table_column` VALUES ('10990', '878', 'content_id', 'CONTENT_ID', 'bigint(20)', 'Long', 'contentId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10991', '878', 'content_specifications', 'CONTENT_SPECIFICATIONS', 'varchar(50)', 'String', 'contentSpecifications', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10992', '878', 'content_num', 'CONTENT_NUM', 'bigint(20)', 'Long', 'contentNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10993', '878', 'content_aid', 'CONTENT_AID', 'bigint(20)', 'Long', 'contentAid', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10994', '878', 'content_weight', 'CONTENT_WEIGHT', 'int(10)', 'Integer', 'contentWeight', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10995', '879', 'content_id', 'CONTENT_ID', 'bigint(20)', 'Long', 'contentId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '1', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10996', '879', 'employ_id', 'EMPLOY_ID', 'bigint(20)', 'Long', 'employId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10997', '879', 'car_id', 'CAR_ID', 'bigint(29)', 'Long', 'carId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', '1', '2023-02-16 19:12:09', null, null);
INSERT INTO `gen_table_column` VALUES ('10998', '880', 'check_id', 'CHECK_ID', 'bigint(20)', 'Long', 'checkId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('10999', '880', 'check_status', '结算状态', 'tinyint(2)', 'Integer', 'checkStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '2', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11000', '880', 'application_time', '派工日期', 'datetime', 'LocalDateTime', 'applicationTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '3', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11001', '880', 'application_id', 'APPLICATION_ID', 'bigint(20)', 'Long', 'applicationId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11002', '880', 'apply_dept_name', 'APPLY_DEPT_NAME', 'varchar(50)', 'String', 'applyDeptName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11003', '880', 'market_type_name', 'MARKET_TYPE_NAME', 'varchar(50)', 'String', 'marketTypeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11004', '880', 'car_cost', '机力花费', 'decimal(50,0)', 'Long', 'carCost', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11005', '880', 'labor_cost', '人力花费', 'decimal(50,0)', 'Long', 'laborCost', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11006', '880', 'total_cost', '总花费', 'decimal(50,0)', 'Long', 'totalCost', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11007', '880', 'check_time', '结算时间', 'datetime', 'LocalDateTime', 'checkTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '10', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11008', '880', 'work_type_name', 'WORK_TYPE_NAME', 'varchar(50)', 'String', 'workTypeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '11', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11009', '880', 'employ_num', 'EMPLOY_NUM', 'int(20)', 'Integer', 'employNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11010', '880', 'car_num', 'CAR_NUM', 'int(20)', 'Integer', 'carNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '13', '1', '2023-02-20 19:13:49', null, null);
INSERT INTO `gen_table_column` VALUES ('11011', '881', 'company_id', '公司ID', 'bigint(20)', 'Long', 'companyId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11012', '881', 'company_name', '公司名称', 'varchar(100)', 'String', 'companyName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11013', '881', 'company_address', '公司地址', 'varchar(50)', 'String', 'companyAddress', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11014', '881', 'company_lead', '公司代表', 'varchar(20)', 'String', 'companyLead', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11015', '881', 'company_phone', '公司联系电话', 'varchar(20)', 'String', 'companyPhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11016', '881', 'establish_time', '公司创建时间', 'date', 'LocalDate', 'establishTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'date', '', '6', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11017', '881', 'create_time', '记录创建时间', 'date', 'LocalDate', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'date', '', '7', '1', '2023-02-23 11:29:40', null, null);
INSERT INTO `gen_table_column` VALUES ('11018', '881', 'update_time', '记录更新时间', 'date', 'LocalDate', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'date', '', '8', '1', '2023-02-23 11:29:40', null, null);

-- ----------------------------
-- Table structure for k_application
-- ----------------------------
DROP TABLE IF EXISTS `k_application`;
CREATE TABLE `k_application` (
  `application_id` bigint(20) NOT NULL COMMENT '派公单主键',
  `market_type_name` varchar(50) DEFAULT NULL COMMENT '市场类型名称 内部 外部',
  `dispatch_type_name` varchar(50) DEFAULT NULL COMMENT '装载 零活 倒料 小车派工',
  `current_status_code` int(10) DEFAULT '0' COMMENT '当前状态名称',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '逻辑删除',
  `apply_dept_name` varchar(20) DEFAULT NULL COMMENT '用工部门',
  `apply_group_name` varchar(20) DEFAULT NULL COMMENT '用工班组',
  `employ_desc` varchar(255) DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL COMMENT '记录创建人id',
  `creator_name` varchar(50) DEFAULT NULL COMMENT '记录创建人',
  `create_time` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(6) DEFAULT NULL COMMENT '更新时间',
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `is_reject` int(11) DEFAULT '0',
  `remark` varchar(200) DEFAULT NULL,
  `work_type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='派工申请单表';

-- ----------------------------
-- Records of k_application
-- ----------------------------
INSERT INTO `k_application` VALUES ('2', '外部', '装卸', '0', '0', '乌储运公司', '乌储运公司', '物资出库', '117', '李英奇', '2023-02-03 17:26:13.000000', '2023-02-23 17:19:00.000000', '2023-02-15', '2023-02-28', '0', null, '人力-机力');
INSERT INTO `k_application` VALUES ('3', '外部', '装卸', '1', '0', '乌储运公司', '乌储运公司', '物资派送', '117', '李英奇', '2023-02-08 19:23:55.000000', '2023-02-08 19:24:51.000000', '2023-02-08', '2023-02-08', '0', null, '人力-机力');
INSERT INTO `k_application` VALUES ('5', '外部', '装卸', '1', '0', '乌储运公司', '乌储运公司', '物资分拣', '117', '李英奇', '2023-02-03 19:24:03.000000', '2023-02-09 19:24:57.000000', '2023-02-02', '2023-02-10', '0', null, '人力-机力');
INSERT INTO `k_application` VALUES ('6', '外部', '装卸', '1', '0', '乌储运公司', '乌储运公司', '清点货架', '117', '李英奇', '2023-02-08 19:24:06.000000', '2023-02-08 19:25:01.000000', '2023-02-08', '2023-02-08', '0', null, '人力-机力');
INSERT INTO `k_application` VALUES ('7', '外部', '装卸', '1', '0', '乌储运公司', '乌储运公司', '运输钢材', '117', '李英奇', '2023-02-08 19:24:09.000000', '2023-02-08 19:25:04.000000', '2023-02-08', '2023-02-08', '0', null, '人力-机力');
INSERT INTO `k_application` VALUES ('8', '外部', '装卸', '1', '0', '乌储运公司', '乌储运公司', '物资派送', '117', '李英奇', '2023-02-08 19:22:00.000000', '2023-02-09 19:21:47.000000', '2023-02-08', '2023-02-08', '0', '1', '人力-机力');
INSERT INTO `k_application` VALUES ('9', '外部', '装卸', '1', '0', '乌储运公司', '乌储运公司', '物资派送', '117', '李英奇', '2023-02-09 19:24:12.000000', '2023-02-09 19:24:22.000000', '2023-02-09', '2023-02-09', '0', null, '人力-机力');
INSERT INTO `k_application` VALUES ('10', '外部', '装载', '1', '0', '乌仓储运输部', '乌仓储运输部', '物资派送', null, '李英奇', '2023-02-13 04:27:02.000000', null, '2023-02-16', '2023-02-17', '0', '33', '人力-机力');
INSERT INTO `k_application` VALUES ('1660269230680989697', '外部', '装载', '10', '0', '乌仓储运输部', '乌仓储运输部', 'qq', null, '李英奇', '2023-05-21 21:00:05.565000', null, '2023-05-21', '2023-05-21', '0', '', '人力-机力');

-- ----------------------------
-- Table structure for k_application_car
-- ----------------------------
DROP TABLE IF EXISTS `k_application_car`;
CREATE TABLE `k_application_car` (
  `car_id` bigint(20) DEFAULT NULL COMMENT '车id',
  `application_id` bigint(20) DEFAULT NULL COMMENT '申请单id',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请单关联表';

-- ----------------------------
-- Records of k_application_car
-- ----------------------------
INSERT INTO `k_application_car` VALUES ('3', '1660269230680989697', '1');

-- ----------------------------
-- Table structure for k_application_employ
-- ----------------------------
DROP TABLE IF EXISTS `k_application_employ`;
CREATE TABLE `k_application_employ` (
  `application_id` bigint(20) DEFAULT NULL,
  `employ_id` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请单与对应人员表';

-- ----------------------------
-- Records of k_application_employ
-- ----------------------------
INSERT INTO `k_application_employ` VALUES ('1660269230680989697', '1', '1');
INSERT INTO `k_application_employ` VALUES ('1660269230680989697', '4', '1');

-- ----------------------------
-- Table structure for k_approval
-- ----------------------------
DROP TABLE IF EXISTS `k_approval`;
CREATE TABLE `k_approval` (
  `approval_id` bigint(20) NOT NULL COMMENT '审批id',
  `approval_user_name` varchar(20) DEFAULT NULL COMMENT '审批人',
  `approval_desc` varchar(100) DEFAULT NULL COMMENT '审批描述',
  `approval_time` datetime DEFAULT NULL COMMENT '审批时间',
  `is_reject` tinyint(1) DEFAULT NULL COMMENT '审批是否通过 1为通过 0为驳回',
  `approval_node` varchar(50) DEFAULT NULL COMMENT '审批结点',
  `application_id` bigint(20) DEFAULT NULL COMMENT '审批单号',
  PRIMARY KEY (`approval_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批表\r\n';

-- ----------------------------
-- Records of k_approval
-- ----------------------------
INSERT INTO `k_approval` VALUES ('1660269244555747329', '李英奇', '', '2023-05-21 21:00:09', '0', '派工申请', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269329771421698', '李英奇', '', '2023-05-21 21:00:29', '0', '调度派工', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269480950915074', '李英奇', '', '2023-05-21 21:01:05', '0', '用工确认', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269545597722625', '李英奇', '用工内容不合理', '2023-05-21 21:01:21', '1', '用工组长审核', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269639432691713', '李英奇', '', '2023-05-21 21:01:43', '0', '用工确认', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269674220249089', '李英奇', '', '2023-05-21 21:01:51', '0', '用工组长审核', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269722064674817', '李英奇', '', '2023-05-21 21:02:03', '0', '调度组长审核', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269761658904578', '李英奇', '', '2023-05-21 21:02:12', '0', '计价员审核', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269788519227393', '李英奇', '', '2023-05-21 21:02:19', '0', '计价组长审核', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269812938465282', '李英奇', '', '2023-05-21 21:02:24', '0', '结算', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269882060595201', '李英奇', '', '2023-05-21 21:02:41', '0', '用工结算', '1660269230680989697');
INSERT INTO `k_approval` VALUES ('1660269883562156033', '李英奇', '', '2023-05-21 21:02:41', '0', '用工结算', '1660269230680989697');

-- ----------------------------
-- Table structure for k_car
-- ----------------------------
DROP TABLE IF EXISTS `k_car`;
CREATE TABLE `k_car` (
  `car_id` bigint(20) NOT NULL COMMENT '车id',
  `car_license` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `car_driver` varchar(50) DEFAULT NULL COMMENT '司机',
  `car_cost` int(20) DEFAULT NULL COMMENT '车辆单价花费',
  `car_type_name` varchar(100) DEFAULT NULL COMMENT '车辆类型如:轿车、货车、拖车、动车、牵引车、推顶车',
  `car_number` varchar(100) DEFAULT NULL,
  `car_phone` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `is_job` tinyint(1) DEFAULT '0',
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息表';

-- ----------------------------
-- Records of k_car
-- ----------------------------
INSERT INTO `k_car` VALUES ('1', '新ALE257', '陈家洛', '4000', '货车', 'C01', '13040571109', '0', '0', '1');
INSERT INTO `k_car` VALUES ('2', '新ALE234', '郭靖', '450', '半挂车', 'C02', '13509093297', '0', '0', '1');
INSERT INTO `k_car` VALUES ('3', '新A2E23D', '狄云', '500', '客车', 'C03', '13119082319', '0', '0', '3');
INSERT INTO `k_car` VALUES ('4', '新A23ER2', '张无忌', '400', '轿车', 'C09', '13865523222', '0', '0', '3');
INSERT INTO `k_car` VALUES ('5', '新ALC666', '云中鹤', '400', '货车', 'C23', '13862357822', '0', '0', '1');
INSERT INTO `k_car` VALUES ('6', '新ELC666', '无崖子', '500', '越野车', 'C04', '13110596665', '0', '0', '3');

-- ----------------------------
-- Table structure for k_checkout
-- ----------------------------
DROP TABLE IF EXISTS `k_checkout`;
CREATE TABLE `k_checkout` (
  `check_id` bigint(20) NOT NULL,
  `check_status` tinyint(2) DEFAULT NULL COMMENT '结算状态',
  `application_time` date DEFAULT NULL COMMENT '派工日期',
  `application_id` bigint(20) DEFAULT NULL,
  `apply_dept_name` varchar(50) DEFAULT NULL,
  `market_type_name` varchar(50) DEFAULT NULL,
  `car_cost` decimal(50,0) DEFAULT NULL COMMENT '机力花费',
  `labor_cost` decimal(50,0) DEFAULT NULL COMMENT '人力花费',
  `total_cost` decimal(50,0) DEFAULT NULL COMMENT '总花费',
  `check_time` datetime DEFAULT NULL COMMENT '结算时间',
  `work_type_name` varchar(50) DEFAULT NULL,
  `employ_num` int(20) DEFAULT NULL,
  `car_num` int(20) DEFAULT NULL,
  `apply_group_name` varchar(50) DEFAULT NULL,
  `dispatch_type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单结算表';

-- ----------------------------
-- Records of k_checkout
-- ----------------------------
INSERT INTO `k_checkout` VALUES ('1660269815337607170', '1', '2023-05-21', '1660269230680989697', '乌仓储运输部', '外部', '500', '600', '1100', '2023-05-21 21:02:25', '人力-机力', '2', '1', '乌仓储运输部', '装载');

-- ----------------------------
-- Table structure for k_company
-- ----------------------------
DROP TABLE IF EXISTS `k_company`;
CREATE TABLE `k_company` (
  `company_id` bigint(20) NOT NULL COMMENT '公司ID',
  `company_name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `company_address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `company_lead` varchar(20) DEFAULT NULL COMMENT '公司代表',
  `company_phone` varchar(20) DEFAULT NULL COMMENT '公司联系电话',
  `establish_time` date DEFAULT NULL COMMENT '公司创建时间',
  `create_time` date DEFAULT NULL COMMENT '记录创建时间',
  `update_time` date DEFAULT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司信息表';

-- ----------------------------
-- Records of k_company
-- ----------------------------
INSERT INTO `k_company` VALUES ('1', '昌达物流有限公司', '新疆乌鲁木齐市天山区人民路280号', '王名', '13050672413', '2004-10-01', '2023-02-23', '2023-02-23');
INSERT INTO `k_company` VALUES ('2', '物资保障总公司', '新疆乌鲁木齐市水磨沟区南湖北路120号', '王国刚', '13310905182', '2014-02-23', '2023-02-23', '2023-02-23');
INSERT INTO `k_company` VALUES ('3', '顺蜂运输有限公司', '新疆昌吉州昌吉市延安南路37号', '耿燕', '13509972385', '2010-02-23', '2023-02-23', '2023-02-23');

-- ----------------------------
-- Table structure for k_content
-- ----------------------------
DROP TABLE IF EXISTS `k_content`;
CREATE TABLE `k_content` (
  `content_id` bigint(20) NOT NULL,
  `content_specifications` varchar(50) DEFAULT NULL,
  `content_num` int(20) DEFAULT NULL,
  `content_aid` bigint(20) DEFAULT NULL,
  `content_weight` int(10) DEFAULT NULL,
  `employ_text` varchar(100) DEFAULT NULL,
  `car_text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of k_content
-- ----------------------------
INSERT INTO `k_content` VALUES ('1660269483685601282', '钢材', '2', '1660269230680989697', '2', '张三-卸车二组-13040571109; ', '狄云-客车-新A2E23D; ');
INSERT INTO `k_content` VALUES ('1660269483752710145', '木材', '2', '1660269230680989697', '3', '王五-卸车二组-12345678100; ', '狄云-客车-新A2E23D; ');
INSERT INTO `k_content` VALUES ('1660269642171572226', '钢材', '1', '1660269230680989697', '1', '张三-卸车二组-13040571109; 王五-卸车二组-12345678100; ', '狄云-客车-新A2E23D; ');

-- ----------------------------
-- Table structure for k_content_car
-- ----------------------------
DROP TABLE IF EXISTS `k_content_car`;
CREATE TABLE `k_content_car` (
  `content_id` bigint(20) NOT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of k_content_car
-- ----------------------------
INSERT INTO `k_content_car` VALUES ('1660269483685601282', '3');
INSERT INTO `k_content_car` VALUES ('1660269483752710145', '3');
INSERT INTO `k_content_car` VALUES ('1660269642171572226', '3');

-- ----------------------------
-- Table structure for k_content_employ
-- ----------------------------
DROP TABLE IF EXISTS `k_content_employ`;
CREATE TABLE `k_content_employ` (
  `content_id` bigint(20) DEFAULT NULL,
  `employ_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of k_content_employ
-- ----------------------------
INSERT INTO `k_content_employ` VALUES ('1660269483685601282', '1');
INSERT INTO `k_content_employ` VALUES ('1660269483752710145', '4');
INSERT INTO `k_content_employ` VALUES ('1660269642171572226', '1');
INSERT INTO `k_content_employ` VALUES ('1660269642171572226', '4');

-- ----------------------------
-- Table structure for k_employ
-- ----------------------------
DROP TABLE IF EXISTS `k_employ`;
CREATE TABLE `k_employ` (
  `employ_id` bigint(20) NOT NULL,
  `employ_name` varchar(50) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `employ_type` varchar(30) DEFAULT NULL,
  `employ_phone` varchar(100) DEFAULT NULL,
  `employ_cost` decimal(40,0) DEFAULT NULL,
  `employ_number` varchar(20) DEFAULT NULL,
  `is_job` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`employ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of k_employ
-- ----------------------------
INSERT INTO `k_employ` VALUES ('1', '张三', '1', '卸车二组', '13040571109', '300', 'E01', '0');
INSERT INTO `k_employ` VALUES ('2', '李四', '2', '卸车一组', '12345678100', '300', 'E02', '0');
INSERT INTO `k_employ` VALUES ('4', '王五', '1', '卸车二组', '12345678100', '300', 'E03', '0');
INSERT INTO `k_employ` VALUES ('5', '石破天', '2', '卸车一组', '13049586654', '300', 'E05', '0');
INSERT INTO `k_employ` VALUES ('6', '虚竹', '2', '卸车二组', '13209098654', '300', 'E05', '0');
INSERT INTO `k_employ` VALUES ('1625059330447424209', '逍遥子', '1', '卸车二组', '12312312322', '300', 'E04', '0');

-- ----------------------------
-- Table structure for k_status
-- ----------------------------
DROP TABLE IF EXISTS `k_status`;
CREATE TABLE `k_status` (
  `current_status_code` int(10) NOT NULL COMMENT '当前状态编码',
  `current_status_name` varchar(50) DEFAULT NULL COMMENT '当前状态类型',
  PRIMARY KEY (`current_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态表';

-- ----------------------------
-- Records of k_status
-- ----------------------------
INSERT INTO `k_status` VALUES ('0', '未提交');
INSERT INTO `k_status` VALUES ('1', '待调度派工');
INSERT INTO `k_status` VALUES ('2', '待用工确认');
INSERT INTO `k_status` VALUES ('3', '待用工组长审核');
INSERT INTO `k_status` VALUES ('4', '待调度组长审核');
INSERT INTO `k_status` VALUES ('5', '待计价员审核');
INSERT INTO `k_status` VALUES ('6', '待计价组长审核');
INSERT INTO `k_status` VALUES ('7', '待主管领导审核');
INSERT INTO `k_status` VALUES ('8', '待结算');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-green', 'Y', '1', '2022-06-17 17:20:29', '1', '2023-01-05 14:29:11.000', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', '1', '2022-06-17 17:20:29', null, null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', '1', '2022-06-17 17:20:29', null, null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', '1', '2022-06-17 17:20:29', null, null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', '1', '2022-06-17 17:20:29', null, null, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', 'Test仓储', '0', '张三', '15888888888', 'ry@qq.com', '0', '0', '1', '2022-06-17 17:20:19.000', '1', '2023-01-16 18:42:44.000');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '信息部', '1', '李四', '15888888888', 'ry@qq.com', '0', '0', '1', '2022-06-17 17:20:19.000', '1', '2023-01-16 18:48:09.000');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '西安分仓', '2', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', '1', '2023-01-04 19:29:46.000');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '信息管理部', '1', '张三', '15888888888', 'ry@qq.com', '0', '0', '1', '2022-06-17 17:20:19.000', '1', '2023-02-25 12:54:20.000');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', null, null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '运输部门', '3', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', null, null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', null, null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', null, null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', null, null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '张三', '15888888888', 'ry@qq.com', '0', '2', '1', '2022-06-17 17:20:19.000', null, null);
INSERT INTO `sys_dept` VALUES ('110', '100', '0,100', '用工部', '2', '张三', '13313432222', '55298972@qq.com', '0', '0', '1', '2023-01-16 18:43:41.000', null, null);
INSERT INTO `sys_dept` VALUES ('111', '100', '0,100', '调度部', '3', '李四', '13040567777', '1241@163.com', '0', '0', '1', '2023-01-16 18:45:13.000', '1', '2023-01-16 18:52:16.000');
INSERT INTO `sys_dept` VALUES ('112', '100', '0,100', '财务部', '4', '王五', '13330305962', '2155@qq.com', '0', '0', '1', '2023-01-16 18:48:59.000', null, null);
INSERT INTO `sys_dept` VALUES ('113', '100', '0,100', '管理部', '5', '李英奇', '13048658666', '21@qq.com', '0', '0', '1', '2023-01-16 18:50:10.000', '1', '2023-01-16 18:50:53.000');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', '1', '2022-06-17 17:20:28.000', null, null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', '1', '2022-06-17 17:20:28.000', null, null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', '1', '2022-06-17 17:20:29.000', null, null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', '1', '2022-06-17 17:20:29.000', null, null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '原物料', '原物料', 'wms_item_type', null, 'default', 'N', '0', '1', '2022-08-18 15:49:33.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('101', '1', '半成品', '半成品', 'wms_item_type', null, 'default', 'N', '0', '1', '2022-08-18 15:49:58.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('102', '2', '产成品', '产成品', 'wms_item_type', null, 'default', 'N', '0', '1', '2022-08-18 15:50:15.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '3', '原辅料', '原辅料', 'wms_item_type', null, 'default', 'N', '0', '1', '2022-08-18 15:50:35.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '0', '第一级', '第一级', 'wms_carrier_level', null, 'default', 'N', '0', '1', '2022-08-18 17:51:14.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('105', '1', '第二级', '第二级', 'wms_carrier_level', null, 'default', 'N', '0', '1', '2022-08-18 17:51:27.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('106', '0', '第一级', '第一级', 'wms_supplier_level', null, 'default', 'N', '0', '1', '2022-08-18 18:05:23.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('107', '1', '第二级', '第二级', 'wms_supplier_level', null, 'default', 'N', '0', '1', '2022-08-18 18:05:35.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('108', '2', '第三级', '第三级', 'wms_supplier_level', null, 'default', 'N', '0', '1', '2022-08-18 18:05:48.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('109', '0', '采购入库', '1', 'wms_receipt_type', null, 'default', 'N', '0', '1', '2022-08-21 15:04:34.000', '1', '2022-08-23 17:37:07.000', null);
INSERT INTO `sys_dict_data` VALUES ('110', '1', '外协入库', '2', 'wms_receipt_type', null, 'default', 'N', '0', '1', '2022-08-21 15:05:39.000', '1', '2022-08-23 17:37:16.000', null);
INSERT INTO `sys_dict_data` VALUES ('112', '2', '退货入库', '3', 'wms_receipt_type', null, 'default', 'N', '0', '1', '2022-08-23 17:31:45.000', '1', '2022-08-23 17:37:21.000', null);
INSERT INTO `sys_dict_data` VALUES ('113', '0', '未发货', '0', 'wms_receipt_status', null, 'default', 'N', '0', '1', '2022-08-29 17:19:12.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('114', '1', '在途（已发货未入库）', '1', 'wms_receipt_status', null, 'default', 'N', '0', '1', '2022-08-29 17:19:24.000', '1', '2022-08-29 17:53:52.000', null);
INSERT INTO `sys_dict_data` VALUES ('115', '2', '部分入库', '2', 'wms_receipt_status', null, 'default', 'N', '0', '1', '2022-08-29 17:19:35.000', '1', '2022-08-29 17:19:47.000', null);
INSERT INTO `sys_dict_data` VALUES ('116', '4', '入库完成', '3', 'wms_receipt_status', null, 'default', 'N', '0', '1', '2022-08-29 17:20:35.000', '1', '2022-09-21 11:59:33.000', null);
INSERT INTO `sys_dict_data` VALUES ('117', '3', '作废', '4', 'wms_receipt_status', null, 'default', 'N', '0', '1', '2022-09-21 11:59:23.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('118', '0', '销售出库', '11', 'wms_shipment_type', null, 'default', 'N', '0', '1', '2022-10-20 13:34:06.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('119', '1', '外协出库', '12', 'wms_shipment_type', null, 'default', 'N', '0', '1', '2022-10-20 13:34:26.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('120', '2', '调拨出库', '13', 'wms_shipment_type', null, 'default', 'N', '0', '1', '2022-10-20 13:34:42.000', '1', '2022-11-01 17:50:58.000', null);
INSERT INTO `sys_dict_data` VALUES ('121', '0', '未发货', '11', 'wms_shipment_status', null, 'default', 'N', '0', '1', '2022-10-20 13:40:02.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('122', '1', '部分发货', '12', 'wms_shipment_status', null, 'default', 'N', '0', '1', '2022-10-20 13:40:26.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('123', '2', '已发货', '13', 'wms_shipment_status', null, 'default', 'N', '0', '1', '2022-10-20 13:40:44.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('124', '3', '作废', '14', 'wms_shipment_status', null, 'default', 'N', '0', '1', '2022-10-20 13:41:05.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('125', '0', '调拨出库', '21', 'wms_movement_type', null, 'default', 'N', '0', '1', '2022-10-20 14:23:13.000', '1', '2022-11-02 16:00:25.000', null);
INSERT INTO `sys_dict_data` VALUES ('126', '0', '调拨入库', '22', 'wms_movement_type', null, 'default', 'N', '0', '1', '2022-10-20 14:23:24.000', '1', '2022-11-02 16:00:32.000', null);
INSERT INTO `sys_dict_data` VALUES ('127', '0', '未操作', '21', 'wms_movement_status', null, 'default', 'N', '0', '1', '2022-10-20 14:25:46.000', '1', '2022-10-20 14:26:08.000', null);
INSERT INTO `sys_dict_data` VALUES ('128', '1', '部分移动', '22', 'wms_movement_status', null, 'default', 'N', '0', '1', '2022-10-20 14:26:20.000', null, null, null);
INSERT INTO `sys_dict_data` VALUES ('129', '2', '操作完毕', '23', 'wms_movement_status', null, 'default', 'N', '0', '1', '2022-10-20 14:26:35.000', '1', '2022-10-20 14:26:44.000', null);
INSERT INTO `sys_dict_data` VALUES ('130', '3', '已作废', '24', 'wms_movement_status', null, 'default', 'N', '0', '1', '2022-10-20 14:27:03.000', null, null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', '1', '2022-06-17 17:20:27.000', null, null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', '1', '2022-06-17 17:20:27.000', null, null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', '1', '2022-06-17 17:20:27.000', null, null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', '1', '2022-06-17 17:20:28.000', null, null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', '1', '2022-06-17 17:20:28.000', null, null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', '1', '2022-06-17 17:20:28.000', null, null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', '1', '2022-06-17 17:20:28.000', null, null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', '1', '2022-06-17 17:20:28.000', null, null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', '1', '2022-06-17 17:20:28.000', null, null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', '1', '2022-06-17 17:20:28.000', null, null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '物料分类', 'wms_item_type', '0', '1', '2022-08-18 15:47:49.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '承运商级别', 'wms_carrier_level', '0', '1', '2022-08-18 17:50:40.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('102', '供应商级别', 'wms_supplier_level', '0', '1', '2022-08-18 18:05:02.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('103', '入库类型', 'wms_receipt_type', '0', '1', '2022-08-21 15:03:58.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('104', '入库状态', 'wms_receipt_status', '0', '1', '2022-08-29 17:18:35.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('105', '出库类型', 'wms_shipment_type', '0', '1', '2022-10-20 13:33:29.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('106', '出库状态', 'wms_shipment_status', '0', '1', '2022-10-20 13:39:41.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('107', '移库类型', 'wms_movement_type', '0', '1', '2022-10-20 14:22:52.000', null, null, null);
INSERT INTO `sys_dict_type` VALUES ('108', '移库状态', 'wms_movement_status', '0', '1', '2022-10-20 14:24:43.000', '1', '2022-10-20 14:24:55.000', null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2023-01-04 18:58:59');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1179 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('920', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-03 20:09:26');
INSERT INTO `sys_logininfor` VALUES ('921', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-03 20:11:19');
INSERT INTO `sys_logininfor` VALUES ('922', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-03 20:11:53');
INSERT INTO `sys_logininfor` VALUES ('923', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-03 20:12:04');
INSERT INTO `sys_logininfor` VALUES ('924', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-03 20:12:09');
INSERT INTO `sys_logininfor` VALUES ('925', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-03 20:12:16');
INSERT INTO `sys_logininfor` VALUES ('926', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-03 20:19:19');
INSERT INTO `sys_logininfor` VALUES ('927', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-03 20:19:25');
INSERT INTO `sys_logininfor` VALUES ('928', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 12:00:16');
INSERT INTO `sys_logininfor` VALUES ('929', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-04 12:01:13');
INSERT INTO `sys_logininfor` VALUES ('930', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 12:01:17');
INSERT INTO `sys_logininfor` VALUES ('931', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-04 12:01:32');
INSERT INTO `sys_logininfor` VALUES ('932', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 12:02:18');
INSERT INTO `sys_logininfor` VALUES ('933', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 18:52:51');
INSERT INTO `sys_logininfor` VALUES ('934', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 20:29:30');
INSERT INTO `sys_logininfor` VALUES ('935', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 22:42:06');
INSERT INTO `sys_logininfor` VALUES ('936', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 14:27:23');
INSERT INTO `sys_logininfor` VALUES ('937', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-05 14:36:58');
INSERT INTO `sys_logininfor` VALUES ('938', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-05 14:37:04');
INSERT INTO `sys_logininfor` VALUES ('939', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 14:37:11');
INSERT INTO `sys_logininfor` VALUES ('940', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-05 14:38:23');
INSERT INTO `sys_logininfor` VALUES ('941', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-05 14:38:30');
INSERT INTO `sys_logininfor` VALUES ('942', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 14:38:35');
INSERT INTO `sys_logininfor` VALUES ('943', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-05 14:49:11');
INSERT INTO `sys_logininfor` VALUES ('944', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 14:49:14');
INSERT INTO `sys_logininfor` VALUES ('945', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 16:06:22');
INSERT INTO `sys_logininfor` VALUES ('946', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-05 18:01:48');
INSERT INTO `sys_logininfor` VALUES ('947', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 18:01:53');
INSERT INTO `sys_logininfor` VALUES ('948', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 19:22:09');
INSERT INTO `sys_logininfor` VALUES ('949', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-06 18:44:16');
INSERT INTO `sys_logininfor` VALUES ('950', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-06 18:44:19');
INSERT INTO `sys_logininfor` VALUES ('951', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-06 18:44:22');
INSERT INTO `sys_logininfor` VALUES ('952', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-06 20:20:40');
INSERT INTO `sys_logininfor` VALUES ('953', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-06 20:20:45');
INSERT INTO `sys_logininfor` VALUES ('954', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-06 20:20:58');
INSERT INTO `sys_logininfor` VALUES ('955', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-06 20:21:04');
INSERT INTO `sys_logininfor` VALUES ('956', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-06 21:36:22');
INSERT INTO `sys_logininfor` VALUES ('957', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-07 16:48:24');
INSERT INTO `sys_logininfor` VALUES ('958', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-15 15:52:13');
INSERT INTO `sys_logininfor` VALUES ('959', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:52:16');
INSERT INTO `sys_logininfor` VALUES ('960', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-15 15:52:23');
INSERT INTO `sys_logininfor` VALUES ('961', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:52:28');
INSERT INTO `sys_logininfor` VALUES ('962', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-15 15:52:37');
INSERT INTO `sys_logininfor` VALUES ('963', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:52:41');
INSERT INTO `sys_logininfor` VALUES ('964', 'cyl', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：cyl 不存在', '2023-01-15 15:53:49');
INSERT INTO `sys_logininfor` VALUES ('965', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:53:56');
INSERT INTO `sys_logininfor` VALUES ('966', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:54:11');
INSERT INTO `sys_logininfor` VALUES ('967', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:55:14');
INSERT INTO `sys_logininfor` VALUES ('968', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:55:19');
INSERT INTO `sys_logininfor` VALUES ('969', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:55:25');
INSERT INTO `sys_logininfor` VALUES ('970', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:55:58');
INSERT INTO `sys_logininfor` VALUES ('971', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:56:22');
INSERT INTO `sys_logininfor` VALUES ('972', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-15 15:56:42');
INSERT INTO `sys_logininfor` VALUES ('973', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:56:46');
INSERT INTO `sys_logininfor` VALUES ('974', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:58:10');
INSERT INTO `sys_logininfor` VALUES ('975', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-15 15:58:19');
INSERT INTO `sys_logininfor` VALUES ('976', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:58:27');
INSERT INTO `sys_logininfor` VALUES ('977', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-16 18:40:22');
INSERT INTO `sys_logininfor` VALUES ('978', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-16 19:26:49');
INSERT INTO `sys_logininfor` VALUES ('979', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-17 17:17:42');
INSERT INTO `sys_logininfor` VALUES ('980', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-19 17:52:03');
INSERT INTO `sys_logininfor` VALUES ('981', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-19 18:02:09');
INSERT INTO `sys_logininfor` VALUES ('982', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-19 18:02:19');
INSERT INTO `sys_logininfor` VALUES ('983', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:07:19');
INSERT INTO `sys_logininfor` VALUES ('984', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:11:59');
INSERT INTO `sys_logininfor` VALUES ('985', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:12:12');
INSERT INTO `sys_logininfor` VALUES ('986', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 11:12:15');
INSERT INTO `sys_logininfor` VALUES ('987', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:12:17');
INSERT INTO `sys_logininfor` VALUES ('988', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:12:25');
INSERT INTO `sys_logininfor` VALUES ('989', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:12:30');
INSERT INTO `sys_logininfor` VALUES ('990', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:12:39');
INSERT INTO `sys_logininfor` VALUES ('991', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:12:47');
INSERT INTO `sys_logininfor` VALUES ('992', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:14:04');
INSERT INTO `sys_logininfor` VALUES ('993', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-02 17:51:24');
INSERT INTO `sys_logininfor` VALUES ('994', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-02 18:31:14');
INSERT INTO `sys_logininfor` VALUES ('995', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 11:42:05');
INSERT INTO `sys_logininfor` VALUES ('996', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 13:24:05');
INSERT INTO `sys_logininfor` VALUES ('997', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 14:21:36');
INSERT INTO `sys_logininfor` VALUES ('998', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-03 14:42:16');
INSERT INTO `sys_logininfor` VALUES ('999', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 14:42:27');
INSERT INTO `sys_logininfor` VALUES ('1000', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-03 14:51:45');
INSERT INTO `sys_logininfor` VALUES ('1001', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-03 14:51:52');
INSERT INTO `sys_logininfor` VALUES ('1002', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 14:51:59');
INSERT INTO `sys_logininfor` VALUES ('1003', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 15:40:22');
INSERT INTO `sys_logininfor` VALUES ('1004', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 16:40:08');
INSERT INTO `sys_logininfor` VALUES ('1005', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-03 19:20:40');
INSERT INTO `sys_logininfor` VALUES ('1006', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-03 19:20:43');
INSERT INTO `sys_logininfor` VALUES ('1007', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-06 10:11:37');
INSERT INTO `sys_logininfor` VALUES ('1008', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-06 10:44:16');
INSERT INTO `sys_logininfor` VALUES ('1009', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-06 11:41:57');
INSERT INTO `sys_logininfor` VALUES ('1010', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-06 14:53:52');
INSERT INTO `sys_logininfor` VALUES ('1011', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-06 16:00:12');
INSERT INTO `sys_logininfor` VALUES ('1012', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-06 16:00:16');
INSERT INTO `sys_logininfor` VALUES ('1013', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-06 17:28:08');
INSERT INTO `sys_logininfor` VALUES ('1014', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-06 17:28:11');
INSERT INTO `sys_logininfor` VALUES ('1015', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 10:24:26');
INSERT INTO `sys_logininfor` VALUES ('1016', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 11:06:40');
INSERT INTO `sys_logininfor` VALUES ('1017', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-07 12:33:53');
INSERT INTO `sys_logininfor` VALUES ('1018', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 12:34:01');
INSERT INTO `sys_logininfor` VALUES ('1019', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-07 12:36:08');
INSERT INTO `sys_logininfor` VALUES ('1020', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 12:36:43');
INSERT INTO `sys_logininfor` VALUES ('1021', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 15:18:59');
INSERT INTO `sys_logininfor` VALUES ('1022', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 16:25:01');
INSERT INTO `sys_logininfor` VALUES ('1023', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-07 16:46:56');
INSERT INTO `sys_logininfor` VALUES ('1024', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-08 10:16:51');
INSERT INTO `sys_logininfor` VALUES ('1025', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-08 12:34:44');
INSERT INTO `sys_logininfor` VALUES ('1026', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-08 18:02:55');
INSERT INTO `sys_logininfor` VALUES ('1027', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-08 18:02:59');
INSERT INTO `sys_logininfor` VALUES ('1028', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-08 18:50:37');
INSERT INTO `sys_logininfor` VALUES ('1029', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-08 22:18:38');
INSERT INTO `sys_logininfor` VALUES ('1030', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-08 22:18:41');
INSERT INTO `sys_logininfor` VALUES ('1031', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-09 11:43:44');
INSERT INTO `sys_logininfor` VALUES ('1032', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-09 13:14:16');
INSERT INTO `sys_logininfor` VALUES ('1033', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-09 14:43:36');
INSERT INTO `sys_logininfor` VALUES ('1034', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-09 18:22:02');
INSERT INTO `sys_logininfor` VALUES ('1035', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-10 10:38:48');
INSERT INTO `sys_logininfor` VALUES ('1036', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-10 11:21:33');
INSERT INTO `sys_logininfor` VALUES ('1037', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-10 14:36:32');
INSERT INTO `sys_logininfor` VALUES ('1038', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-10 15:07:46');
INSERT INTO `sys_logininfor` VALUES ('1039', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-10 16:26:20');
INSERT INTO `sys_logininfor` VALUES ('1040', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：lyq 不存在', '2023-02-11 19:31:49');
INSERT INTO `sys_logininfor` VALUES ('1041', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-11 19:31:59');
INSERT INTO `sys_logininfor` VALUES ('1042', 'lyq', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：lyq 不存在', '2023-02-11 19:32:01');
INSERT INTO `sys_logininfor` VALUES ('1043', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-11 19:32:40');
INSERT INTO `sys_logininfor` VALUES ('1044', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-11 20:43:12');
INSERT INTO `sys_logininfor` VALUES ('1045', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-11 20:43:17');
INSERT INTO `sys_logininfor` VALUES ('1046', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-11 20:43:21');
INSERT INTO `sys_logininfor` VALUES ('1047', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-11 20:43:25');
INSERT INTO `sys_logininfor` VALUES ('1048', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-11 20:43:30');
INSERT INTO `sys_logininfor` VALUES ('1049', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-13 10:23:33');
INSERT INTO `sys_logininfor` VALUES ('1050', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 10:23:36');
INSERT INTO `sys_logininfor` VALUES ('1051', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-13 10:23:47');
INSERT INTO `sys_logininfor` VALUES ('1052', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 10:24:03');
INSERT INTO `sys_logininfor` VALUES ('1053', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-13 11:29:08');
INSERT INTO `sys_logininfor` VALUES ('1054', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-13 11:29:13');
INSERT INTO `sys_logininfor` VALUES ('1055', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-13 11:29:16');
INSERT INTO `sys_logininfor` VALUES ('1056', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 11:29:19');
INSERT INTO `sys_logininfor` VALUES ('1057', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-13 11:30:17');
INSERT INTO `sys_logininfor` VALUES ('1058', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 11:30:22');
INSERT INTO `sys_logininfor` VALUES ('1059', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 15:53:31');
INSERT INTO `sys_logininfor` VALUES ('1060', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-13 15:53:35');
INSERT INTO `sys_logininfor` VALUES ('1061', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 15:53:42');
INSERT INTO `sys_logininfor` VALUES ('1062', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-13 19:49:45');
INSERT INTO `sys_logininfor` VALUES ('1063', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-14 10:30:14');
INSERT INTO `sys_logininfor` VALUES ('1064', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-14 10:30:17');
INSERT INTO `sys_logininfor` VALUES ('1065', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-14 16:15:46');
INSERT INTO `sys_logininfor` VALUES ('1066', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-14 17:47:52');
INSERT INTO `sys_logininfor` VALUES ('1067', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 10:17:53');
INSERT INTO `sys_logininfor` VALUES ('1068', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 11:37:57');
INSERT INTO `sys_logininfor` VALUES ('1069', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 13:28:32');
INSERT INTO `sys_logininfor` VALUES ('1070', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-15 16:30:27');
INSERT INTO `sys_logininfor` VALUES ('1071', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 16:30:30');
INSERT INTO `sys_logininfor` VALUES ('1072', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 18:29:50');
INSERT INTO `sys_logininfor` VALUES ('1073', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 19:43:30');
INSERT INTO `sys_logininfor` VALUES ('1074', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 21:01:19');
INSERT INTO `sys_logininfor` VALUES ('1075', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-15 22:26:03');
INSERT INTO `sys_logininfor` VALUES ('1076', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-16 10:36:34');
INSERT INTO `sys_logininfor` VALUES ('1077', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-16 11:45:26');
INSERT INTO `sys_logininfor` VALUES ('1078', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-16 16:11:22');
INSERT INTO `sys_logininfor` VALUES ('1079', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-16 18:39:31');
INSERT INTO `sys_logininfor` VALUES ('1080', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-16 19:47:16');
INSERT INTO `sys_logininfor` VALUES ('1081', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-17 10:14:05');
INSERT INTO `sys_logininfor` VALUES ('1082', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-17 11:22:16');
INSERT INTO `sys_logininfor` VALUES ('1083', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-17 16:03:39');
INSERT INTO `sys_logininfor` VALUES ('1084', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-17 17:46:18');
INSERT INTO `sys_logininfor` VALUES ('1085', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-17 18:56:19');
INSERT INTO `sys_logininfor` VALUES ('1086', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-20 10:13:30');
INSERT INTO `sys_logininfor` VALUES ('1087', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-20 11:39:17');
INSERT INTO `sys_logininfor` VALUES ('1088', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-20 15:55:43');
INSERT INTO `sys_logininfor` VALUES ('1089', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-20 16:52:44');
INSERT INTO `sys_logininfor` VALUES ('1090', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-20 19:13:37');
INSERT INTO `sys_logininfor` VALUES ('1091', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-20 23:25:46');
INSERT INTO `sys_logininfor` VALUES ('1092', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-21 10:22:15');
INSERT INTO `sys_logininfor` VALUES ('1093', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-21 11:10:08');
INSERT INTO `sys_logininfor` VALUES ('1094', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-21 16:27:34');
INSERT INTO `sys_logininfor` VALUES ('1095', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-21 16:27:41');
INSERT INTO `sys_logininfor` VALUES ('1096', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-22 10:23:05');
INSERT INTO `sys_logininfor` VALUES ('1097', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-22 11:52:33');
INSERT INTO `sys_logininfor` VALUES ('1098', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-22 16:42:21');
INSERT INTO `sys_logininfor` VALUES ('1099', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-22 16:42:21');
INSERT INTO `sys_logininfor` VALUES ('1100', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2023-02-22 16:42:45');
INSERT INTO `sys_logininfor` VALUES ('1101', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-22 16:42:45');
INSERT INTO `sys_logininfor` VALUES ('1102', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 10:28:27');
INSERT INTO `sys_logininfor` VALUES ('1103', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 11:29:26');
INSERT INTO `sys_logininfor` VALUES ('1104', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-23 12:23:06');
INSERT INTO `sys_logininfor` VALUES ('1105', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-23 12:23:08');
INSERT INTO `sys_logininfor` VALUES ('1106', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 12:23:12');
INSERT INTO `sys_logininfor` VALUES ('1107', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 13:20:40');
INSERT INTO `sys_logininfor` VALUES ('1108', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 13:25:03');
INSERT INTO `sys_logininfor` VALUES ('1109', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 13:25:07');
INSERT INTO `sys_logininfor` VALUES ('1110', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 13:25:17');
INSERT INTO `sys_logininfor` VALUES ('1111', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 13:25:21');
INSERT INTO `sys_logininfor` VALUES ('1112', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 13:26:53');
INSERT INTO `sys_logininfor` VALUES ('1113', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 13:27:04');
INSERT INTO `sys_logininfor` VALUES ('1114', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:13:09');
INSERT INTO `sys_logininfor` VALUES ('1115', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:31:30');
INSERT INTO `sys_logininfor` VALUES ('1116', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:31:34');
INSERT INTO `sys_logininfor` VALUES ('1117', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:31:40');
INSERT INTO `sys_logininfor` VALUES ('1118', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-23 17:31:44');
INSERT INTO `sys_logininfor` VALUES ('1119', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:31:46');
INSERT INTO `sys_logininfor` VALUES ('1120', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:31:52');
INSERT INTO `sys_logininfor` VALUES ('1121', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:32:05');
INSERT INTO `sys_logininfor` VALUES ('1122', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:33:32');
INSERT INTO `sys_logininfor` VALUES ('1123', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:33:41');
INSERT INTO `sys_logininfor` VALUES ('1124', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:34:41');
INSERT INTO `sys_logininfor` VALUES ('1125', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:34:45');
INSERT INTO `sys_logininfor` VALUES ('1126', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:34:56');
INSERT INTO `sys_logininfor` VALUES ('1127', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:36:19');
INSERT INTO `sys_logininfor` VALUES ('1128', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:36:28');
INSERT INTO `sys_logininfor` VALUES ('1129', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-23 17:36:36');
INSERT INTO `sys_logininfor` VALUES ('1130', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:36:38');
INSERT INTO `sys_logininfor` VALUES ('1131', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:37:28');
INSERT INTO `sys_logininfor` VALUES ('1132', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:37:35');
INSERT INTO `sys_logininfor` VALUES ('1133', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:37:47');
INSERT INTO `sys_logininfor` VALUES ('1134', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:37:55');
INSERT INTO `sys_logininfor` VALUES ('1135', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:38:31');
INSERT INTO `sys_logininfor` VALUES ('1136', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:38:41');
INSERT INTO `sys_logininfor` VALUES ('1137', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:41:45');
INSERT INTO `sys_logininfor` VALUES ('1138', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:41:52');
INSERT INTO `sys_logininfor` VALUES ('1139', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:46:48');
INSERT INTO `sys_logininfor` VALUES ('1140', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:46:56');
INSERT INTO `sys_logininfor` VALUES ('1141', 'user', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 17:47:48');
INSERT INTO `sys_logininfor` VALUES ('1142', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 17:47:56');
INSERT INTO `sys_logininfor` VALUES ('1143', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-23 19:17:26');
INSERT INTO `sys_logininfor` VALUES ('1144', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 19:17:33');
INSERT INTO `sys_logininfor` VALUES ('1145', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-23 23:07:17');
INSERT INTO `sys_logininfor` VALUES ('1146', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-24 10:21:21');
INSERT INTO `sys_logininfor` VALUES ('1147', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-24 11:01:25');
INSERT INTO `sys_logininfor` VALUES ('1148', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-24 11:31:53');
INSERT INTO `sys_logininfor` VALUES ('1149', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-24 16:12:21');
INSERT INTO `sys_logininfor` VALUES ('1150', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-24 17:16:25');
INSERT INTO `sys_logininfor` VALUES ('1151', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-24 18:22:33');
INSERT INTO `sys_logininfor` VALUES ('1152', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-24 18:22:38');
INSERT INTO `sys_logininfor` VALUES ('1153', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-25 12:53:29');
INSERT INTO `sys_logininfor` VALUES ('1154', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-03-16 00:53:40');
INSERT INTO `sys_logininfor` VALUES ('1155', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-16 00:53:43');
INSERT INTO `sys_logininfor` VALUES ('1156', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-16 00:54:28');
INSERT INTO `sys_logininfor` VALUES ('1157', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-16 00:54:37');
INSERT INTO `sys_logininfor` VALUES ('1158', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-03-16 13:36:11');
INSERT INTO `sys_logininfor` VALUES ('1159', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-16 13:36:14');
INSERT INTO `sys_logininfor` VALUES ('1160', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-16 13:40:43');
INSERT INTO `sys_logininfor` VALUES ('1161', 'user1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-16 13:40:53');
INSERT INTO `sys_logininfor` VALUES ('1162', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-16 14:53:16');
INSERT INTO `sys_logininfor` VALUES ('1163', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-16 15:36:02');
INSERT INTO `sys_logininfor` VALUES ('1164', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-02 12:08:19');
INSERT INTO `sys_logininfor` VALUES ('1165', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-02 12:44:20');
INSERT INTO `sys_logininfor` VALUES ('1166', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-04-12 20:58:58');
INSERT INTO `sys_logininfor` VALUES ('1167', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 00:33:19');
INSERT INTO `sys_logininfor` VALUES ('1168', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-20 10:45:49');
INSERT INTO `sys_logininfor` VALUES ('1169', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-21 17:13:24');
INSERT INTO `sys_logininfor` VALUES ('1170', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-05-21 20:52:56');
INSERT INTO `sys_logininfor` VALUES ('1171', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-21 20:53:00');
INSERT INTO `sys_logininfor` VALUES ('1172', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-21 20:54:04');
INSERT INTO `sys_logininfor` VALUES ('1173', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-21 20:54:15');
INSERT INTO `sys_logininfor` VALUES ('1174', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-21 20:59:35');
INSERT INTO `sys_logininfor` VALUES ('1175', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-21 20:59:43');
INSERT INTO `sys_logininfor` VALUES ('1176', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-05-22 15:13:51');
INSERT INTO `sys_logininfor` VALUES ('1177', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-22 15:13:53');
INSERT INTO `sys_logininfor` VALUES ('1178', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-25 21:18:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2230 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '300', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', '1', '2022-06-17 17:20:20.000', '1', '2022-10-31 09:09:13.000', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '200', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', '1', '2022-06-17 17:20:20.000', '1', '2022-10-31 09:09:02.000', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '100', 'tool', null, '', '1', '0', 'M', '1', '0', '', 'tool', '1', '2022-06-17 17:20:20.000', '1', '2023-02-23 17:44:31.000', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', '1', '2022-06-17 17:20:20.000', null, null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', '1', '2022-06-17 17:20:20.000', null, null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', '1', '2022-06-17 17:20:20.000', null, null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', '1', '2022-06-17 17:20:20.000', null, null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '1', '0', 'system:post:list', 'post', '1', '2022-06-17 17:20:20.000', '1', '2023-03-16 13:39:06.000', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', '1', '2022-06-17 17:20:20.000', null, null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', '1', '2022-06-17 17:20:20.000', null, null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', '1', '2022-06-17 17:20:20.000', null, null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', '1', '2022-06-17 17:20:20.000', null, null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', '1', '2022-06-17 17:20:20.000', null, null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', '1', '2022-06-17 17:20:20.000', null, null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', '1', '2022-06-17 17:20:20.000', null, null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', '1', '2022-06-17 17:20:20.000', null, null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', '1', '2022-06-17 17:20:20.000', null, null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', '1', '2022-06-17 17:20:21.000', null, null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', '1', '2022-06-17 17:20:21.000', null, null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', '1', '2022-06-17 17:20:21.000', null, null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', '1', '2022-06-17 17:20:21.000', null, null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', '1', '2022-06-17 17:20:21.000', null, null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', '1', '2022-06-17 17:20:21.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', '1', '2022-06-17 17:20:22.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '115', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '115', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '115', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '115', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', '1', '2022-06-17 17:20:23.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2096', '库区', '2193', '2', 'area', 'wms/area/index', null, '1', '0', 'C', '0', '0', 'wms:area:list', '#', '1', '2022-07-29 16:08:33.000', '1', '2022-10-30 22:17:57.000', '货区菜单');
INSERT INTO `sys_menu` VALUES ('2097', '货区查询', '2096', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:area:query', '#', '1', '2022-07-29 16:08:33.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2098', '货区新增', '2096', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:area:add', '#', '1', '2022-07-29 16:08:33.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2099', '货区修改', '2096', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:area:edit', '#', '1', '2022-07-29 16:08:33.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2100', '货区删除', '2096', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:area:remove', '#', '1', '2022-07-29 16:08:33.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2101', '货区导出', '2096', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:area:export', '#', '1', '2022-07-29 16:08:33.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2102', '承运商', '2198', '6', 'carrier', 'wms/carrier/index', null, '1', '0', 'C', '0', '0', 'wms:carrier:list', '#', '1', '2022-07-29 16:08:42.000', '1', '2022-10-31 09:10:41.000', '承运商菜单');
INSERT INTO `sys_menu` VALUES ('2103', '承运商查询', '2102', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:carrier:query', '#', '1', '2022-07-29 16:08:42.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2104', '承运商新增', '2102', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:carrier:add', '#', '1', '2022-07-29 16:08:42.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2105', '承运商修改', '2102', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:carrier:edit', '#', '1', '2022-07-29 16:08:42.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2106', '承运商删除', '2102', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:carrier:remove', '#', '1', '2022-07-29 16:08:43.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2107', '承运商导出', '2102', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:carrier:export', '#', '1', '2022-07-29 16:08:43.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2108', '客户', '2198', '5', 'customer', 'wms/customer/index', null, '1', '0', 'C', '0', '0', 'wms:customer:list', '#', '1', '2022-07-29 16:08:51.000', '1', '2022-10-31 09:10:21.000', '客户菜单');
INSERT INTO `sys_menu` VALUES ('2109', '客户查询', '2108', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:customer:query', '#', '1', '2022-07-29 16:08:51.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2110', '客户新增', '2108', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:customer:add', '#', '1', '2022-07-29 16:08:51.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2111', '客户修改', '2108', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:customer:edit', '#', '1', '2022-07-29 16:08:51.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2112', '客户删除', '2108', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:customer:remove', '#', '1', '2022-07-29 16:08:51.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2113', '客户导出', '2108', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:customer:export', '#', '1', '2022-07-29 16:08:51.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2114', '发货记录', '2197', '5', 'delivery', 'wms/delivery/index', null, '1', '0', 'C', '0', '0', 'wms:delivery:list', '#', '1', '2022-07-29 16:31:18.000', '1', '2022-10-30 22:09:55.000', '发货记录菜单');
INSERT INTO `sys_menu` VALUES ('2115', '发货记录查询', '2114', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:delivery:query', '#', '1', '2022-07-29 16:31:18.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2116', '发货记录新增', '2114', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:delivery:add', '#', '1', '2022-07-29 16:31:18.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2117', '发货记录修改', '2114', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:delivery:edit', '#', '1', '2022-07-29 16:31:18.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2118', '发货记录删除', '2114', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:delivery:remove', '#', '1', '2022-07-29 16:31:18.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2119', '发货记录导出', '2114', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:delivery:export', '#', '1', '2022-07-29 16:31:18.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2120', '库存看板', '2197', '3', 'inventory', 'wms/inventory/index', null, '1', '0', 'C', '0', '0', 'wms:inventory:list', '#', '1', '2022-07-29 16:34:37.000', '1', '2022-10-30 22:09:10.000', '库存菜单');
INSERT INTO `sys_menu` VALUES ('2121', '库存查询', '2120', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventory:query', '#', '1', '2022-07-29 16:34:37.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2122', '库存新增', '2120', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventory:add', '#', '1', '2022-07-29 16:34:37.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2123', '库存修改', '2120', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventory:edit', '#', '1', '2022-07-29 16:34:37.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2124', '库存删除', '2120', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventory:remove', '#', '1', '2022-07-29 16:34:37.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2125', '库存导出', '2120', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventory:export', '#', '1', '2022-07-29 16:34:37.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2126', '库存记录', '2197', '4', 'inventoryHistory', 'wms/inventoryHistory/index', null, '1', '0', 'C', '0', '0', 'wms:inventoryHistory:list', '#', '1', '2022-07-29 16:34:45.000', '1', '2022-10-30 22:09:40.000', '库存记录菜单');
INSERT INTO `sys_menu` VALUES ('2127', '库存记录查询', '2126', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryHistory:query', '#', '1', '2022-07-29 16:34:46.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2128', '库存记录新增', '2126', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryHistory:add', '#', '1', '2022-07-29 16:34:46.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2129', '库存记录修改', '2126', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryHistory:edit', '#', '1', '2022-07-29 16:34:46.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2130', '库存记录删除', '2126', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryHistory:remove', '#', '1', '2022-07-29 16:34:46.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2131', '库存记录导出', '2126', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryHistory:export', '#', '1', '2022-07-29 16:34:46.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2132', '移库', '2192', '6', 'inventoryMovement', 'wms/inventoryMovement/index', null, '1', '0', 'C', '0', '0', 'wms:inventoryMovement:list', '#', '1', '2022-07-29 16:34:54.000', '1', '2022-10-30 22:07:05.000', '库存移动菜单');
INSERT INTO `sys_menu` VALUES ('2133', '库存移动查询', '2132', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovement:query', '#', '1', '2022-07-29 16:34:54.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2134', '库存移动新增', '2132', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovement:add', '#', '1', '2022-07-29 16:34:54.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2135', '库存移动修改', '2132', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovement:edit', '#', '1', '2022-07-29 16:34:54.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2136', '库存移动删除', '2132', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovement:remove', '#', '1', '2022-07-29 16:34:54.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2137', '库存移动导出', '2132', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovement:export', '#', '1', '2022-07-29 16:34:54.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2138', '库存移动详情', '2192', '100', 'inventoryMovementDetail', 'wms/inventoryMovementDetail/index', null, '1', '0', 'C', '1', '0', 'wms:inventoryMovementDetail:list', '#', '1', '2022-07-29 16:35:04.000', '1', '2022-10-30 22:05:06.000', '库存移动详情菜单');
INSERT INTO `sys_menu` VALUES ('2139', '库存移动详情查询', '2138', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovementDetail:query', '#', '1', '2022-07-29 16:35:04.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2140', '库存移动详情新增', '2138', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovementDetail:add', '#', '1', '2022-07-29 16:35:04.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2141', '库存移动详情修改', '2138', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovementDetail:edit', '#', '1', '2022-07-29 16:35:04.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2142', '库存移动详情删除', '2138', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovementDetail:remove', '#', '1', '2022-07-29 16:35:04.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2143', '库存移动详情导出', '2138', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:inventoryMovementDetail:export', '#', '1', '2022-07-29 16:35:04.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2144', '物料', '0', '2', 'item', 'wms/item/index', null, '1', '0', 'C', '0', '0', 'wms:item:list', 'dict', '1', '2022-07-29 16:35:13.000', '1', '2023-04-02 12:08:37.000', '物料菜单');
INSERT INTO `sys_menu` VALUES ('2145', '物料查询', '2144', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:item:query', '#', '1', '2022-07-29 16:35:13.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2146', '物料新增', '2144', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:item:add', '#', '1', '2022-07-29 16:35:13.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2147', '物料修改', '2144', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:item:edit', '#', '1', '2022-07-29 16:35:13.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2148', '物料删除', '2144', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:item:remove', '#', '1', '2022-07-29 16:35:13.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2149', '物料导出', '2144', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:item:export', '#', '1', '2022-07-29 16:35:13.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2150', '货架', '2193', '3', 'rack', 'wms/rack/index', null, '1', '0', 'C', '0', '0', 'wms:rack:list', '#', '1', '2022-07-29 16:35:22.000', '1', '2022-10-30 22:18:04.000', '货架菜单');
INSERT INTO `sys_menu` VALUES ('2151', '货架查询', '2150', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:rack:query', '#', '1', '2022-07-29 16:35:22.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2152', '货架新增', '2150', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:rack:add', '#', '1', '2022-07-29 16:35:22.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2153', '货架修改', '2150', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:rack:edit', '#', '1', '2022-07-29 16:35:22.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2154', '货架删除', '2150', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:rack:remove', '#', '1', '2022-07-29 16:35:22.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2155', '货架导出', '2150', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:rack:export', '#', '1', '2022-07-29 16:35:22.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2156', '入库', '2192', '1', 'receiptOrder', 'wms/receiptOrder/index', null, '1', '0', 'C', '0', '0', 'wms:receiptOrder:list', '#', '1', '2022-07-29 16:35:29.000', '1', '2022-10-30 22:06:34.000', '入库单菜单');
INSERT INTO `sys_menu` VALUES ('2157', '入库单查询', '2156', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrder:query', '#', '1', '2022-07-29 16:35:29.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2158', '编辑入库单', '2192', '2', 'receiptOrder/edit', 'wms/receiptOrder/edit', null, '1', '0', 'C', '1', '0', 'wms:receiptOrder:add', '#', '1', '2022-07-29 16:35:29.000', '1', '2022-08-31 15:54:00.000', '');
INSERT INTO `sys_menu` VALUES ('2159', '入库单修改', '2156', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrder:edit', '#', '1', '2022-07-29 16:35:29.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2160', '入库单删除', '2156', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrder:remove', '#', '1', '2022-07-29 16:35:30.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2161', '入库单导出', '2156', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrder:export', '#', '1', '2022-07-29 16:35:30.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2162', '入库单详情', '2192', '100', 'receiptOrderDetail', 'wms/receiptOrderDetail/index', null, '1', '0', 'C', '1', '0', 'wms:receiptOrderDetail:list', '#', '1', '2022-07-29 16:35:36.000', '1', '2022-10-30 22:04:29.000', '入库单详情菜单');
INSERT INTO `sys_menu` VALUES ('2163', '入库单详情查询', '2162', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrderDetail:query', '#', '1', '2022-07-29 16:35:36.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2164', '入库单详情新增', '2162', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrderDetail:add', '#', '1', '2022-07-29 16:35:36.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2165', '入库单详情修改', '2162', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrderDetail:edit', '#', '1', '2022-07-29 16:35:36.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2166', '入库单详情删除', '2162', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrderDetail:remove', '#', '1', '2022-07-29 16:35:36.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2167', '入库单详情导出', '2162', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:receiptOrderDetail:export', '#', '1', '2022-07-29 16:35:36.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2168', '出库', '2192', '2', 'shipmentOrder', 'wms/shipmentOrder/index', null, '1', '0', 'C', '0', '0', 'wms:shipmentOrder:list', '#', '1', '2022-07-29 16:35:44.000', '1', '2022-10-30 22:06:45.000', '出库单菜单');
INSERT INTO `sys_menu` VALUES ('2169', '出库单查询', '2168', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrder:query', '#', '1', '2022-07-29 16:35:45.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2170', '出库单新增', '2168', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrder:add', '#', '1', '2022-07-29 16:35:45.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2171', '出库单修改', '2168', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrder:edit', '#', '1', '2022-07-29 16:35:45.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2172', '出库单删除', '2168', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrder:remove', '#', '1', '2022-07-29 16:35:45.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2173', '出库单导出', '2168', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrder:export', '#', '1', '2022-07-29 16:35:45.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2174', '出库单详情', '2192', '100', 'shipmentOrderDetail', 'wms/shipmentOrderDetail/index', null, '1', '0', 'C', '1', '0', 'wms:shipmentOrderDetail:list', '#', '1', '2022-07-29 16:35:52.000', '1', '2022-10-30 22:04:05.000', '出库单详情菜单');
INSERT INTO `sys_menu` VALUES ('2175', '出库单详情查询', '2174', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrderDetail:query', '#', '1', '2022-07-29 16:35:52.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2176', '出库单详情新增', '2174', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrderDetail:add', '#', '1', '2022-07-29 16:35:52.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2177', '出库单详情修改', '2174', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrderDetail:edit', '#', '1', '2022-07-29 16:35:52.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2178', '出库单详情删除', '2174', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrderDetail:remove', '#', '1', '2022-07-29 16:35:52.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2179', '出库单详情导出', '2174', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:shipmentOrderDetail:export', '#', '1', '2022-07-29 16:35:52.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2180', '供应商', '2198', '5', 'supplier', 'wms/supplier/index', null, '1', '0', 'C', '0', '0', 'wms:supplier:list', '#', '1', '2022-07-29 16:35:59.000', '1', '2022-10-31 09:10:34.000', '供应商菜单');
INSERT INTO `sys_menu` VALUES ('2181', '供应商查询', '2180', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:supplier:query', '#', '1', '2022-07-29 16:35:59.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2182', '供应商新增', '2180', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:supplier:add', '#', '1', '2022-07-29 16:35:59.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2183', '供应商修改', '2180', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:supplier:edit', '#', '1', '2022-07-29 16:35:59.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2184', '供应商删除', '2180', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:supplier:remove', '#', '1', '2022-07-29 16:35:59.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2185', '供应商导出', '2180', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:supplier:export', '#', '1', '2022-07-29 16:36:00.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2186', '仓库', '2193', '1', 'warehouse', 'wms/warehouse/index', null, '1', '0', 'C', '0', '0', 'wms:warehouse:list', '#', '1', '2022-07-29 16:36:31.000', '1', '2022-10-30 22:17:51.000', '仓库菜单');
INSERT INTO `sys_menu` VALUES ('2187', '仓库查询', '2186', '1', '', '', null, '1', '0', 'F', '0', '0', 'wms:warehouse:query', '#', '1', '2022-07-29 16:36:31.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2188', '仓库新增', '2186', '2', '', '', null, '1', '0', 'F', '0', '0', 'wms:warehouse:add', '#', '1', '2022-07-29 16:36:31.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2189', '仓库修改', '2186', '3', '', '', null, '1', '0', 'F', '0', '0', 'wms:warehouse:edit', '#', '1', '2022-07-29 16:36:31.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2190', '仓库删除', '2186', '4', '', '', null, '1', '0', 'F', '0', '0', 'wms:warehouse:remove', '#', '1', '2022-07-29 16:36:31.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2191', '仓库导出', '2186', '5', '', '', null, '1', '0', 'F', '0', '0', 'wms:warehouse:export', '#', '1', '2022-07-29 16:36:31.000', '0', null, '');
INSERT INTO `sys_menu` VALUES ('2192', '出入库', '0', '5', 'wms', null, null, '1', '0', 'M', '1', '0', '', 'redis', '1', '2022-07-29 18:09:52.000', '1', '2023-05-20 00:41:13.000', '');
INSERT INTO `sys_menu` VALUES ('2193', '仓库/库区/货架', '0', '1', 'basic', null, null, '1', '0', 'M', '0', '0', '', 'component', '1', '2022-08-09 08:57:46.000', '1', '2023-04-02 12:09:31.000', '');
INSERT INTO `sys_menu` VALUES ('2194', '发货/入库', '2192', '2', 'receiptOrder/status', 'wms/receiptOrder/status', null, '1', '0', 'C', '1', '0', 'wms:receiptOrder:status', '#', '1', '2022-09-27 14:16:42.000', '1', '2022-09-27 14:17:19.000', '');
INSERT INTO `sys_menu` VALUES ('2195', '编辑出库单', '2192', '2', 'shipmentOrder/edit', 'wms/shipmentOrder/edit', null, '1', '0', 'C', '1', '0', 'wms:shipmentOrder:add', '#', '1', '2022-10-20 16:38:26.000', '1', '2022-10-24 18:47:03.000', '');
INSERT INTO `sys_menu` VALUES ('2196', '发货/出库', '2192', '2', 'shipmentOrder/status', 'wms/shipmentOrder/status', null, '1', '0', 'C', '1', '0', 'wms:shipmentOrder:status', '#', '1', '2022-10-20 18:25:10.000', '1', '2022-10-24 18:47:15.000', '');
INSERT INTO `sys_menu` VALUES ('2197', '报表', '0', '6', 'report', null, null, '1', '0', 'M', '1', '0', '', 'chart', '1', '2022-10-30 22:08:28.000', '1', '2023-02-23 17:44:27.000', '');
INSERT INTO `sys_menu` VALUES ('2198', '商务信息管理', '0', '3', 'relation', null, null, '1', '0', 'M', '0', '0', '', 'peoples', '1', '2022-10-30 22:20:24.000', '1', '2023-04-12 20:59:16.000', '');
INSERT INTO `sys_menu` VALUES ('2199', '编辑移库', '2192', '3', 'inventoryMovement/edit', 'wms/inventoryMovement/edit', null, '1', '0', 'C', '1', '0', 'wms:inventoryMovement:edit', '#', '1', '2022-11-02 15:13:46.000', '1', '2022-11-02 15:14:49.000', '');
INSERT INTO `sys_menu` VALUES ('2200', '移库操作', '2192', '4', 'inventoryMovement/status', 'wms/inventoryMovement/status', null, '1', '0', 'C', '1', '0', 'wms:inventoryMovement:status', '#', '1', '2022-11-02 15:15:57.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2204', '派工管理', '0', '4', 'dispatchManage', null, null, '1', '0', 'M', '0', '0', '', 'documentation', '1', '2023-02-02 17:59:05.000', '1', '2023-02-21 19:17:03.000', '');
INSERT INTO `sys_menu` VALUES ('2205', '派工申请', '2204', '1', 'application', 'wms/application/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-03 12:55:37.000', '1', '2023-02-03 12:56:52.000', '');
INSERT INTO `sys_menu` VALUES ('2206', '调度派工', '2204', '2', 'dispatch', 'wms/dispatch/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 12:41:02.000', '1', '2023-02-07 12:47:30.000', '');
INSERT INTO `sys_menu` VALUES ('2207', '用工确认', '2204', '3', 'confirm', 'wms/confirm/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 12:45:25.000', '1', '2023-02-07 12:47:45.000', '');
INSERT INTO `sys_menu` VALUES ('2208', '用工组长审核', '2204', '4', 'examine1', 'wms/examine1/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 12:48:31.000', '1', '2023-02-20 17:20:46.000', '');
INSERT INTO `sys_menu` VALUES ('2209', '调度组长审核', '2204', '5', 'examine2', 'wms/examine2/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 13:04:28.000', '1', '2023-02-20 17:21:06.000', '');
INSERT INTO `sys_menu` VALUES ('2210', '计价员审核', '2204', '6', 'examine3', 'wms/examine3/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 13:05:33.000', '1', '2023-02-20 17:21:20.000', '');
INSERT INTO `sys_menu` VALUES ('2211', '计价组长审核', '2204', '7', 'examine4', 'wms/examine4/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 13:06:49.000', '1', '2023-02-20 17:21:36.000', '');
INSERT INTO `sys_menu` VALUES ('2212', '主管领导审核', '2204', '8', 'examine5', 'wms/examine5/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-07 13:09:43.000', '1', '2023-02-20 17:21:49.000', '');
INSERT INTO `sys_menu` VALUES ('2213', '用工详情确认', '2207', '1', 'confirmInfo/:applicationId', 'wms/confirm/components/confirm', '', '1', '0', 'C', '1', '0', '', '#', '1', '2023-02-17 12:37:37.000', '1', '2023-02-17 13:10:43.000', '');
INSERT INTO `sys_menu` VALUES ('2214', '用工结算', '2204', '9', 'checkout', 'wms/checkout/index', null, '1', '0', 'C', '0', '0', null, '#', '1', '2023-02-20 18:24:06.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2215', '历史工单', '2204', '10', 'historyForm', 'wms/historyForm/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-21 17:02:47.000', '1', '2023-02-21 17:05:19.000', '');
INSERT INTO `sys_menu` VALUES ('2216', '基础数据管理', '0', '4', 'baseData', null, null, '1', '0', 'M', '0', '0', '', 'example', '1', '2023-02-21 19:22:37.000', '1', '2023-02-21 19:22:51.000', '');
INSERT INTO `sys_menu` VALUES ('2217', '员工管理', '2216', '1', 'companyEmploy', 'wms/companyEmploy/index', null, '1', '0', 'C', '0', '0', '', '#', '1', '2023-02-21 19:33:36.000', '1', '2023-02-21 19:54:23.000', '');
INSERT INTO `sys_menu` VALUES ('2219', '车辆管理', '2216', '2', 'companyCar', 'wms/companyCar/index', null, '1', '0', 'C', '0', '0', null, '#', '1', '2023-02-22 13:15:08.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2223', '公司管理', '2216', '1', 'company', 'wms/company/index', null, '1', '0', 'C', '0', '0', 'wms:company:list', '#', '1', '2023-02-23 10:39:15.000', '1', '2023-02-23 10:44:54.000', '公司管理菜单');
INSERT INTO `sys_menu` VALUES ('2224', '公司管理查询', '2223', '1', '#', '', null, '1', '0', 'F', '0', '0', 'wms:company:query', '#', '1', '2023-02-23 10:39:37.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2225', '公司管理新增', '2223', '2', '#', '', null, '1', '0', 'F', '0', '0', 'wms:company:add', '#', '1', '2023-02-23 10:39:49.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2226', '公司管理修改', '2223', '3', '#', '', null, '1', '0', 'F', '0', '0', 'wms:company:edit', '#', '1', '2023-02-23 10:40:06.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2227', '公司管理删除', '2223', '4', '#', '', null, '1', '0', 'F', '0', '0', 'wms:company:remove', '#', '1', '2023-02-23 10:40:16.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2228', '公司管理导出', '2223', '5', '#', '', null, '1', '0', 'F', '0', '0', 'wms:company:export', '#', '1', '2023-02-23 10:40:29.000', null, null, '');
INSERT INTO `sys_menu` VALUES ('2229', '公司管理导出', '2223', '5', '#', '', null, '1', '0', 'F', '0', '0', 'wms:company:export', '#', '1', '2023-02-23 10:40:56.000', null, null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒： 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', '1', '2023-01-15 17:20:29', '1', '2023-01-04 19:00:44.000', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2023-2-25 系统凌晨维护', '1', 0x3C703EE7BBB4E68AA4E58685E5AEB93C2F703E, '0', '1', '2022-06-17 17:20:30', '1', '2023-01-04 19:01:02.000', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1157 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('876', '承运商', '2', 'com.cyl.wms.controller.CarrierController.edit()', 'PUT', '1', 'cyl', null, '/wms/carrier', '127.0.0.1', '内网IP', '{\"address\":\"上海\",\"level\":\"第一级\",\"mobile\":\"18010008888\",\"remark\":\"\",\"updateTime\":\"2023-01-03T20:14:58.908229700\",\"delFlag\":0,\"createBy\":1,\"carrierName\":\"顺丰快运\",\"createTime\":\"2022-07-29T18:04:11\",\"updateBy\":115,\"carrierNo\":\"sf\",\"contact\":\"李某\",\"tel\":\"0512-52251234\",\"id\":1,\"email\":\"\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-03 20:14:58');
INSERT INTO `sys_oper_log` VALUES ('877', '承运商', '2', 'com.cyl.wms.controller.CarrierController.edit()', 'PUT', '1', 'cyl', null, '/wms/carrier', '127.0.0.1', '内网IP', '{\"address\":\"上海\",\"level\":\"第一级\",\"mobile\":\"18010008888\",\"remark\":\"\",\"updateTime\":\"2023-01-03T20:15:09.399776200\",\"delFlag\":0,\"createBy\":1,\"carrierName\":\"顺丰快运\",\"createTime\":\"2022-07-29T18:04:11\",\"updateBy\":115,\"carrierNo\":\"sf\",\"contact\":\"李某\",\"tel\":\"0512-52251234\",\"id\":1,\"email\":\"550798972@qq.com\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-03 20:15:09');
INSERT INTO `sys_oper_log` VALUES ('878', '承运商', '5', 'com.cyl.wms.controller.CarrierController.export()', 'GET', '1', 'cyl', null, '/wms/carrier/export', '127.0.0.1', '内网IP', '{}', '{\"body\":\"4abe123d-de19-4078-a960-c2bcfd85a5c1_承运商数据.xlsx\",\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-03 20:15:21');
INSERT INTO `sys_oper_log` VALUES ('879', '库存移动', '1', 'com.cyl.wms.controller.InventoryMovementController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/inventoryMovement/add-or-update', '127.0.0.1', '内网IP', '{\"remark\":\"测试\",\"updateTime\":\"2023-01-03T20:23:46.338893200\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-11-02T16:38:04\",\"updateBy\":1,\"inventoryMovementNo\":\"M-2022-11-02-162844\",\"details\":[{\"realQuantity\":21,\"targetRackId\":6,\"planQuantity\":20,\"moveStatus\":22,\"sourceAreaId\":13,\"delFlag\":0,\"sourceRackId\":1,\"itemId\":2,\"sourceWarehouseId\":1,\"targetAreaId\":18,\"targetWarehouseId\":2,\"id\":24,\"inventoryMovementId\":4},{\"realQuantity\":12,\"planQuantity\":10,\"moveStatus\":22,\"sourceAreaId\":13,\"delFlag\":0,\"sourceRackId\":1,\"itemId\":1,\"sourceWarehouseId\":1,\"targetWarehouseId\":4,\"id\":25,\"inventoryMovementId\":4}],\"id\":4,\"items\":[{\"updateTime\":\"2022-10-10T15:46:59\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"areaId\":18,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2,\"place\":[2,18]},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}],\"status\":22}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-03 20:23:46');
INSERT INTO `sys_oper_log` VALUES ('880', '库存移动', '1', 'com.cyl.wms.controller.InventoryMovementController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/inventoryMovement/add-or-update', '127.0.0.1', '内网IP', '{\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-03T20:24:27.615150800\",\"inventoryMovementNo\":\"M-2023-01-03-202405\",\"details\":[{\"targetRackId\":6,\"planQuantity\":1,\"moveStatus\":21,\"sourceAreaId\":13,\"delFlag\":0,\"sourceRackId\":5,\"itemId\":1,\"sourceWarehouseId\":1,\"targetAreaId\":18,\"targetWarehouseId\":2,\"inventoryMovementId\":5}],\"id\":5,\"status\":21}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-03 20:24:27');
INSERT INTO `sys_oper_log` VALUES ('881', '库存移动', '1', 'com.cyl.wms.controller.InventoryMovementController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/inventoryMovement/add-or-update', '127.0.0.1', '内网IP', '{\"updateTime\":\"2023-01-03T20:24:49.805767700\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-03T20:24:27\",\"updateBy\":1,\"inventoryMovementNo\":\"M-2023-01-03-202405\",\"details\":[{\"realQuantity\":1,\"targetRackId\":6,\"planQuantity\":1,\"moveStatus\":23,\"sourceAreaId\":13,\"delFlag\":0,\"sourceRackId\":5,\"itemId\":1,\"sourceWarehouseId\":1,\"targetAreaId\":18,\"targetWarehouseId\":2,\"id\":28,\"inventoryMovementId\":5}],\"id\":5,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}],\"status\":23}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-03 20:24:49');
INSERT INTO `sys_oper_log` VALUES ('882', '物料', '2', 'com.cyl.wms.controller.ItemController.edit()', 'PUT', '1', 'admin', null, '/wms/item', '127.0.0.1', '内网IP', '{\"remark\":\"222\",\"updateTime\":\"2023-01-04T12:04:47.260665300\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"areaId\":18,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 12:04:47');
INSERT INTO `sys_oper_log` VALUES ('883', '仓库', '2', 'com.cyl.wms.controller.WarehouseController.edit()', 'PUT', '1', 'admin', null, '/wms/warehouse', '127.0.0.1', '内网IP', '{\"createBy\":1,\"createTime\":\"2022-08-03T18:15:44\",\"updateBy\":1,\"remark\":\"创意产业园\",\"updateTime\":\"2023-01-04T18:53:36.895220200\",\"id\":1,\"delFlag\":0,\"warehouseName\":\"苏州\",\"warehouseNo\":\"SZ\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:53:36');
INSERT INTO `sys_oper_log` VALUES ('884', '仓库', '2', 'com.cyl.wms.controller.WarehouseController.edit()', 'PUT', '1', 'admin', null, '/wms/warehouse', '127.0.0.1', '内网IP', '{\"createBy\":1,\"createTime\":\"2022-08-08T11:06:22\",\"updateBy\":1,\"remark\":\"中央门1号\",\"updateTime\":\"2023-01-04T18:53:49.549876200\",\"id\":2,\"delFlag\":0,\"warehouseName\":\"南京\",\"warehouseNo\":\"NJ\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:53:49');
INSERT INTO `sys_oper_log` VALUES ('885', '仓库', '2', 'com.cyl.wms.controller.WarehouseController.edit()', 'PUT', '1', 'admin', null, '/wms/warehouse', '127.0.0.1', '内网IP', '{\"createBy\":1,\"createTime\":\"2022-08-08T22:12:22\",\"updateBy\":1,\"remark\":\"青浦仓\",\"updateTime\":\"2023-01-04T18:53:54.147719600\",\"id\":3,\"delFlag\":0,\"warehouseName\":\"上海\",\"warehouseNo\":\"SJ\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:53:54');
INSERT INTO `sys_oper_log` VALUES ('886', '仓库', '2', 'com.cyl.wms.controller.WarehouseController.edit()', 'PUT', '1', 'admin', null, '/wms/warehouse', '127.0.0.1', '内网IP', '{\"createBy\":1,\"createTime\":\"2022-08-16T11:14:01\",\"updateBy\":1,\"updateTime\":\"2023-01-04T18:54:02.261476400\",\"id\":4,\"delFlag\":0,\"warehouseName\":\"广州\",\"warehouseNo\":\"GJ\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:54:02');
INSERT INTO `sys_oper_log` VALUES ('887', '仓库', '2', 'com.cyl.wms.controller.WarehouseController.edit()', 'PUT', '1', 'admin', null, '/wms/warehouse', '127.0.0.1', '内网IP', '{\"createBy\":1,\"createTime\":\"2022-11-01T14:12:15\",\"updateBy\":1,\"updateTime\":\"2023-01-04T18:54:06.663138200\",\"id\":14,\"delFlag\":0,\"warehouseName\":\"北京\",\"warehouseNo\":\"BJ\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:54:06');
INSERT INTO `sys_oper_log` VALUES ('888', '货区', '2', 'com.cyl.wms.controller.AreaController.edit()', 'PUT', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"苏州西\",\"areaNo\":\"SJ-1\",\"createTime\":\"2022-08-05T17:00:56\",\"updateBy\":1,\"warehouseId\":1,\"remark\":\"suzhouxi\",\"updateTime\":\"2023-01-04T18:54:44.570282600\",\"id\":13,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:54:44');
INSERT INTO `sys_oper_log` VALUES ('889', '货区', '2', 'com.cyl.wms.controller.AreaController.edit()', 'PUT', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"上海南\",\"areaNo\":\"SJ-1\",\"createTime\":\"2022-08-09T11:05:53\",\"updateBy\":1,\"warehouseId\":3,\"updateTime\":\"2023-01-04T18:55:04.126653000\",\"id\":14,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:55:04');
INSERT INTO `sys_oper_log` VALUES ('890', '货架', '5', 'com.cyl.wms.controller.RackController.export()', 'GET', '1', 'admin', null, '/wms/rack/export', '127.0.0.1', '内网IP', '{}', '{\"body\":\"8b8b5791-4cc2-49c9-913e-5a6f51a8d10e_货架数据.xlsx\",\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:55:21');
INSERT INTO `sys_oper_log` VALUES ('891', '物料', '2', 'com.cyl.wms.controller.ItemController.edit()', 'PUT', '1', 'admin', null, '/wms/item', '127.0.0.1', '内网IP', '{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09.080190100\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"areaId\":18,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:56:09');
INSERT INTO `sys_oper_log` VALUES ('892', '客户', '2', 'com.cyl.wms.controller.CustomerController.edit()', 'PUT', '1', 'admin', null, '/wms/customer', '127.0.0.1', '内网IP', '{\"address\":\"星湖街328号\",\"customerPerson\":\"李先生\",\"mobile\":\"17156568888\",\"updateTime\":\"2023-01-04T18:56:58.988256100\",\"delFlag\":0,\"customerLevel\":\"1\",\"customerName\":\"华大有限公司\",\"createBy\":1,\"createTime\":\"2022-08-11T21:14:54\",\"updateBy\":1,\"tel\":\"0512-12345678\",\"id\":4,\"customerNo\":\"1\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:56:59');
INSERT INTO `sys_oper_log` VALUES ('893', '承运商', '2', 'com.cyl.wms.controller.CarrierController.edit()', 'PUT', '1', 'admin', null, '/wms/carrier', '127.0.0.1', '内网IP', '{\"address\":\"上海\",\"level\":\"第一级\",\"mobile\":\"18010008888\",\"remark\":\"\",\"updateTime\":\"2023-01-04T18:57:44.143756100\",\"delFlag\":0,\"createBy\":1,\"carrierName\":\"顺丰快运\",\"createTime\":\"2022-07-29T18:04:11\",\"updateBy\":1,\"carrierNo\":\"sf\",\"contact\":\"李国强\",\"tel\":\"0512-52251234\",\"id\":1,\"email\":\"550798972@qq.com\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-04 18:57:44');
INSERT INTO `sys_oper_log` VALUES ('894', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', '1', 'admin', null, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":1,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 18:58:58');
INSERT INTO `sys_oper_log` VALUES ('895', '通知公告', '2', 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', '1', 'admin', null, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"新版本内容\",\"createBy\":1,\"createTime\":\"2022-06-17T17:20:29\",\"updateBy\":1,\"noticeType\":\"2\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":1,\"noticeTitle\":\"温馨提醒： 新版本发布啦\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:00:44');
INSERT INTO `sys_oper_log` VALUES ('896', '通知公告', '2', 'com.ruoyi.web.controller.system.SysNoticeController.edit()', 'PUT', '1', 'admin', null, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>维护内容</p>\",\"createBy\":1,\"createTime\":\"2022-06-17T17:20:30\",\"updateBy\":1,\"noticeType\":\"1\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2023-2-25 系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:01:02');
INSERT INTO `sys_oper_log` VALUES ('897', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13067895432\",\"admin\":false,\"password\":\"$2a$10$Qzu8yap9ACPyrrSMgeDc3.gE.qOVEq.s.ZPRn0jaeg3myGtg7PCnK\",\"postIds\":[4],\"nickName\":\"张伟\",\"deptId\":100,\"params\":{},\"userName\":\"zhangwei\",\"userId\":116,\"createBy\":1,\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:27:25');
INSERT INTO `sys_oper_log` VALUES ('898', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"智行仓储\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:29:08');
INSERT INTO `sys_oper_log` VALUES ('899', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"上海总公司\",\"leader\":\"若依\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0,100\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:29:34');
INSERT INTO `sys_oper_log` VALUES ('900', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"西安分公司\",\"leader\":\"张三\",\"deptId\":102,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0,100\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:29:46');
INSERT INTO `sys_oper_log` VALUES ('901', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"上海总公司\",\"leader\":\"李四\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0,100\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 19:29:50');
INSERT INTO `sys_oper_log` VALUES ('902', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1111\",\"supplierId\":2,\"remark\":\"1111\",\"updateTime\":\"2022-11-07T08:25:36\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T21:09:18\",\"updateBy\":115,\"receiptOrderNo\":\"R-2022-11-06-210843\",\"receiptOrderStatus\":2,\"receiptOrderType\":2,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":16,\"warehouseId\":3,\"receiptOrderStatus\":2,\"rackId\":7}],\"id\":16,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":16,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":3,\"id\":1,\"place\":[1,13],\"rackId\":7}]}', null, '1', '', '2023-01-04 20:52:53');
INSERT INTO `sys_oper_log` VALUES ('903', '定时任务', '3', 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', '1', 'admin', null, '/monitor/job/1', '127.0.0.1', '内网IP', '{jobIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 21:01:42');
INSERT INTO `sys_oper_log` VALUES ('904', '定时任务', '3', 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', '1', 'admin', null, '/monitor/job/2', '127.0.0.1', '内网IP', '{jobIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 21:01:50');
INSERT INTO `sys_oper_log` VALUES ('905', '定时任务', '3', 'com.ruoyi.quartz.controller.SysJobController.remove()', 'DELETE', '1', 'admin', null, '/monitor/job/3', '127.0.0.1', '内网IP', '{jobIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-04 21:02:21');
INSERT INTO `sys_oper_log` VALUES ('906', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', null, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":1,\"createTime\":\"2022-06-17T17:20:29\",\"updateBy\":1,\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"configType\":\"Y\",\"configValue\":\"skin-green\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:29:11');
INSERT INTO `sys_oper_log` VALUES ('907', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/5', '127.0.0.1', '内网IP', '{postIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:30:37');
INSERT INTO `sys_oper_log` VALUES ('908', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":1,\"createTime\":\"2022-06-17T17:20:20\",\"updateBy\":1,\"postName\":\"仓库经理\",\"postCode\":\"se\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:31:04');
INSERT INTO `sys_oper_log` VALUES ('909', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"3\",\"flag\":false,\"remark\":\"\",\"postId\":3,\"params\":{},\"createBy\":1,\"createTime\":\"2022-06-17T17:20:20\",\"updateBy\":1,\"postName\":\"财务\",\"postCode\":\"finance\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:31:44');
INSERT INTO `sys_oper_log` VALUES ('910', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1672747936000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"lyq\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"智行仓储\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"cyl\",\"userId\":115,\"createBy\":1,\"roleIds\":[100],\"createTime\":\"2022-11-04T17:06:20\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:33:37');
INSERT INTO `sys_oper_log` VALUES ('911', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"浏览者\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:35:24');
INSERT INTO `sys_oper_log` VALUES ('912', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$NTOAz9e2gVuY31uX027Us.M5J8LMvKSqaZ55yrm/4peNgeClwbRbK\",\"postIds\":[4],\"nickName\":\"lyq\",\"sex\":\"0\",\"deptId\":108,\"params\":{},\"userName\":\"lyq\",\"userId\":117,\"createBy\":1,\"roleIds\":[101],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-05 14:36:41');
INSERT INTO `sys_oper_log` VALUES ('913', '货区', '3', 'com.cyl.wms.controller.AreaController.remove()', 'DELETE', '1', 'lyq', null, '/wms/area/20', '127.0.0.1', '内网IP', '{ids=20}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 14:38:19');
INSERT INTO `sys_oper_log` VALUES ('914', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1111\",\"supplierId\":2,\"remark\":\"1111\",\"updateTime\":\"2022-11-07T08:25:36\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T21:09:18\",\"updateBy\":115,\"receiptOrderNo\":\"R-2022-11-06-210843\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":16,\"warehouseId\":3,\"receiptOrderStatus\":2,\"rackId\":7}],\"id\":16,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":16,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":3,\"id\":1,\"place\":[1,13],\"rackId\":7}]}', null, '1', '', '2023-01-05 18:08:26');
INSERT INTO `sys_oper_log` VALUES ('915', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1111\",\"supplierId\":2,\"remark\":\"1111\",\"updateTime\":\"2022-11-07T08:25:36\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T21:09:18\",\"updateBy\":115,\"receiptOrderNo\":\"R-2022-11-06-210843\",\"receiptOrderStatus\":2,\"receiptOrderType\":2,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":16,\"warehouseId\":3,\"receiptOrderStatus\":2,\"rackId\":7}],\"id\":16,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":16,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":3,\"id\":1,\"place\":[1,13],\"rackId\":7}]}', null, '1', '', '2023-01-05 18:09:40');
INSERT INTO `sys_oper_log` VALUES ('916', '出库单', '1', 'com.cyl.wms.controller.ShipmentOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/shipmentOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"23323213213\",\"remark\":\"efwejifsdknskd nfd多方面克里斯丁3\",\"updateTime\":\"2023-01-05T18:10:55.435619200\",\"delFlag\":0,\"shipmentOrderStatus\":11,\"shipmentOrderType\":12,\"createBy\":1,\"createTime\":\"2022-10-28T11:00:05\",\"updateBy\":1,\"customerId\":5,\"details\":[{\"shipmentOrderId\":11,\"planQuantity\":11,\"delFlag\":0,\"shipmentOrderStatus\":11,\"itemId\":1,\"areaId\":15,\"warehouseId\":1},{\"shipmentOrderId\":11,\"planQuantity\":22,\"delFlag\":0,\"shipmentOrderStatus\":11,\"itemId\":2,\"warehouseId\":4}],\"shipmentOrderNo\":\"E-2022-10-28-105943\",\"id\":11,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":4,\"id\":2,\"place\":[2,18]},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":15,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:10:55');
INSERT INTO `sys_oper_log` VALUES ('917', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1\",\"supplierId\":2,\"remark\":\"2\",\"updateTime\":\"2023-01-05T18:11:05.342412300\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T15:52:22\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-11-06-155158\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":15,\"warehouseId\":4,\"receiptOrderStatus\":0}],\"id\":15,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":4,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:11:05');
INSERT INTO `sys_oper_log` VALUES ('918', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1\",\"supplierId\":2,\"remark\":\"22\",\"updateTime\":\"2023-01-05T18:11:15.579560200\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T15:52:22\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-11-06-155158\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":15,\"warehouseId\":4,\"receiptOrderStatus\":0}],\"id\":15,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":4,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:11:15');
INSERT INTO `sys_oper_log` VALUES ('919', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1111\",\"supplierId\":2,\"remark\":\"11113\",\"updateTime\":\"2022-11-07T08:25:36\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T21:09:18\",\"updateBy\":115,\"receiptOrderNo\":\"R-2022-11-06-210843\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":16,\"warehouseId\":3,\"receiptOrderStatus\":2,\"rackId\":7}],\"id\":16,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":16,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":3,\"id\":1,\"place\":[1,13],\"rackId\":7}]}', null, '1', '', '2023-01-05 18:11:25');
INSERT INTO `sys_oper_log` VALUES ('920', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"20221010-3\",\"supplierId\":2,\"remark\":\"2\",\"updateTime\":\"2022-11-03T17:48:36\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-10-10T23:14:04\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-10-10-231339\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":10,\"planQuantity\":10,\"delFlag\":0,\"itemId\":1,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":2,\"rackId\":1},{\"realQuantity\":6,\"planQuantity\":10,\"delFlag\":0,\"itemId\":2,\"areaId\":16,\"warehouseId\":3,\"receiptOrderStatus\":2}],\"id\":13,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"areaId\":16,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":3,\"id\":2,\"place\":[2,18]},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13],\"rackId\":1}]}', null, '1', '', '2023-01-05 18:12:04');
INSERT INTO `sys_oper_log` VALUES ('921', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"20220901-123456789\",\"supplierId\":1,\"remark\":\"test2\",\"updateTime\":\"2022-10-10T10:55:28\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-09-01T20:04:22\",\"updateBy\":1,\"receiptOrderNo\":\"R-20220901200359-3039\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":20,\"planQuantity\":200,\"delFlag\":0,\"itemId\":1,\"receiptOrderStatus\":2},{\"realQuantity\":1,\"planQuantity\":200,\"delFlag\":0,\"itemId\":2,\"receiptOrderStatus\":0}],\"id\":8,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"id\":2,\"place\":[2,18]},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"id\":1,\"place\":[1,13]}]}', null, '1', '', '2023-01-05 18:12:14');
INSERT INTO `sys_oper_log` VALUES ('922', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1\",\"supplierId\":2,\"remark\":\"223\",\"updateTime\":\"2023-01-05T18:12:20.927456800\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T15:52:22\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-11-06-155158\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":15,\"warehouseId\":4,\"receiptOrderStatus\":0}],\"id\":15,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":4,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:12:20');
INSERT INTO `sys_oper_log` VALUES ('923', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"20220901-12346598321354\",\"supplierId\":1,\"remark\":\"测试2\",\"updateTime\":\"2023-01-05T18:12:34.654377500\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-09-01T20:03:35\",\"updateBy\":1,\"receiptOrderNo\":\"R-20220901200200-7813\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"planQuantity\":10000,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":7,\"warehouseId\":1,\"receiptOrderStatus\":0},{\"planQuantity\":10000,\"delFlag\":0,\"itemId\":2,\"receiptOrderId\":7,\"warehouseId\":1,\"receiptOrderStatus\":0}],\"id\":7,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":1,\"id\":2,\"place\":[2,18]},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:12:34');
INSERT INTO `sys_oper_log` VALUES ('924', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1111\",\"supplierId\":2,\"remark\":\"1111\",\"updateTime\":\"2022-11-07T08:25:36\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T21:09:18\",\"updateBy\":115,\"receiptOrderNo\":\"R-2022-11-06-210843\",\"receiptOrderStatus\":2,\"receiptOrderType\":2,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":16,\"warehouseId\":3,\"receiptOrderStatus\":2,\"rackId\":7}],\"id\":16,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":16,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":3,\"id\":1,\"place\":[1,13],\"rackId\":7}]}', null, '1', '', '2023-01-05 18:26:51');
INSERT INTO `sys_oper_log` VALUES ('925', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"222\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09.218114600\",\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"receiptOrderStatus\":0}],\"id\":18}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:27:09');
INSERT INTO `sys_oper_log` VALUES ('926', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"2222\",\"updateTime\":\"2023-01-05T18:27:15.386474600\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"receiptOrderStatus\":0}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:27:15');
INSERT INTO `sys_oper_log` VALUES ('927', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"2222\",\"updateTime\":\"2023-01-05T18:27:40.885264700\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":0,\"id\":263}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:27:40');
INSERT INTO `sys_oper_log` VALUES ('928', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"22223\",\"updateTime\":\"2023-01-05T18:27:51.299239400\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":0}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:27:51');
INSERT INTO `sys_oper_log` VALUES ('929', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"22223\",\"updateTime\":\"2023-01-05T18:28:12.149420600\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":1,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":1,\"id\":265}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:28:12');
INSERT INTO `sys_oper_log` VALUES ('930', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"222231\",\"updateTime\":\"2023-01-05T18:28:17.965310000\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":1,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":1}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:28:17');
INSERT INTO `sys_oper_log` VALUES ('931', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"222231\",\"updateTime\":\"2023-01-05T18:28:29.878419700\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":2,\"id\":267}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:28:29');
INSERT INTO `sys_oper_log` VALUES ('932', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"222231\",\"updateTime\":\"2023-01-05T18:28:29.906382800\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":18,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":2,\"id\":267}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 18:28:29');
INSERT INTO `sys_oper_log` VALUES ('933', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"111\",\"supplierId\":1,\"remark\":\"2222311\",\"updateTime\":\"2023-01-05T18:28:29\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2023-01-05T18:27:09\",\"updateBy\":1,\"receiptOrderNo\":\"R-2023-01-05-182657\",\"receiptOrderStatus\":2,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":2}],\"id\":18,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13]}]}', null, '1', '', '2023-01-05 18:28:42');
INSERT INTO `sys_oper_log` VALUES ('934', '仓库', '5', 'com.cyl.wms.controller.WarehouseController.export()', 'GET', '1', 'admin', null, '/wms/warehouse/export', '127.0.0.1', '内网IP', '{}', '{\"body\":\"06fe82bd-0a38-4e89-9e66-03d0d05fd8d2_仓库数据.xlsx\",\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 19:22:24');
INSERT INTO `sys_oper_log` VALUES ('935', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"updateTime\":\"2022-11-03T17:40:30\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-10-20T14:37:18\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-10-20-143634\",\"receiptOrderStatus\":3,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":3,\"rackId\":1},{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":2,\"areaId\":17,\"warehouseId\":2,\"receiptOrderStatus\":3,\"rackId\":4}],\"id\":14,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"areaId\":17,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2,\"place\":[2,18],\"rackId\":4},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13],\"rackId\":1}]}', null, '1', '', '2023-01-05 19:29:48');
INSERT INTO `sys_oper_log` VALUES ('936', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"updateTime\":\"2022-11-03T17:40:30\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-10-20T14:37:18\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-10-20-143634\",\"receiptOrderStatus\":3,\"receiptOrderType\":2,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":3,\"rackId\":1},{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":2,\"areaId\":17,\"warehouseId\":2,\"receiptOrderStatus\":3,\"rackId\":4}],\"id\":14,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"areaId\":17,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2,\"place\":[2,18],\"rackId\":4},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13],\"rackId\":1}]}', null, '1', '', '2023-01-05 19:29:56');
INSERT INTO `sys_oper_log` VALUES ('937', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"updateTime\":\"2022-11-03T17:40:30\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-10-20T14:37:18\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-10-20-143634\",\"receiptOrderStatus\":3,\"receiptOrderType\":3,\"details\":[{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":1,\"areaId\":13,\"warehouseId\":1,\"receiptOrderStatus\":3,\"rackId\":1},{\"realQuantity\":1,\"planQuantity\":1,\"delFlag\":0,\"itemId\":2,\"areaId\":17,\"warehouseId\":2,\"receiptOrderStatus\":3,\"rackId\":4}],\"id\":14,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"areaId\":17,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2,\"place\":[2,18],\"rackId\":4},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13],\"rackId\":1}]}', null, '1', '', '2023-01-05 19:29:57');
INSERT INTO `sys_oper_log` VALUES ('938', '出库单', '1', 'com.cyl.wms.controller.ShipmentOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/shipmentOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"4332423432\",\"remark\":\"323\",\"updateTime\":\"2023-01-05T19:31:33.782143000\",\"delFlag\":0,\"shipmentOrderStatus\":12,\"shipmentOrderType\":12,\"createBy\":1,\"createTime\":\"2022-10-24T18:52:18\",\"updateBy\":1,\"customerId\":4,\"details\":[{\"shipmentOrderId\":10,\"realQuantity\":1,\"planQuantity\":20,\"delFlag\":0,\"shipmentOrderStatus\":12,\"itemId\":1,\"areaId\":13,\"warehouseId\":1,\"id\":19,\"rackId\":1},{\"shipmentOrderId\":10,\"realQuantity\":1,\"planQuantity\":40,\"delFlag\":0,\"shipmentOrderStatus\":11,\"itemId\":2,\"areaId\":17,\"warehouseId\":2,\"id\":20,\"rackId\":4}],\"shipmentOrderNo\":\"E-2022-10-24-185155\",\"id\":10,\"items\":[{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-01-04T18:56:09\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"手机壳\",\"unit\":\"个\",\"areaId\":17,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2,\"place\":[2,18],\"rackId\":4},{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1,\"place\":[1,13],\"rackId\":1}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-05 19:31:33');
INSERT INTO `sys_oper_log` VALUES ('939', '仓库', '1', 'com.cyl.wms.controller.WarehouseController.add()', 'POST', '1', 'admin', null, '/wms/warehouse', '127.0.0.1', '内网IP', '{\"createBy\":1,\"createTime\":\"2023-01-06T18:44:35.306654900\",\"remark\":\"1\",\"id\":18,\"delFlag\":0,\"warehouseName\":\"1\",\"warehouseNo\":\"1\"}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-06 18:44:35');
INSERT INTO `sys_oper_log` VALUES ('940', '仓库', '3', 'com.cyl.wms.controller.WarehouseController.remove()', 'DELETE', '1', 'admin', null, '/wms/warehouse/18', '127.0.0.1', '内网IP', '{ids=18}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-06 18:44:39');
INSERT INTO `sys_oper_log` VALUES ('941', '入库单', '1', 'com.cyl.wms.controller.ReceiptOrderController.addOrUpdate()', 'POST', '1', 'admin', null, '/wms/receiptOrder/add-or-update', '127.0.0.1', '内网IP', '{\"orderNo\":\"1\",\"supplierId\":2,\"remark\":\"22311\",\"updateTime\":\"2023-01-06T18:44:48.515234500\",\"delFlag\":0,\"createBy\":115,\"createTime\":\"2022-11-06T15:52:22\",\"updateBy\":1,\"receiptOrderNo\":\"R-2022-11-06-155158\",\"receiptOrderStatus\":0,\"receiptOrderType\":1,\"details\":[{\"realQuantity\":1,\"planQuantity\":2,\"delFlag\":0,\"itemId\":1,\"receiptOrderId\":15,\"warehouseId\":4,\"receiptOrderStatus\":0}],\"id\":15,\"items\":[{\"itemType\":\"产成品\",\"quantity\":100000,\"updateTime\":\"2022-10-11T18:12:43\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"液晶屏\",\"unit\":\"个\",\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":4,\"id\":1,\"place\":[1,13]}]}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-06 18:44:48');
INSERT INTO `sys_oper_log` VALUES ('942', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:42:44');
INSERT INTO `sys_oper_log` VALUES ('943', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"用工部\",\"leader\":\"张三\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"phone\":\"13313432222\",\"ancestors\":\"0,100\",\"email\":\"55298972@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:43:41');
INSERT INTO `sys_oper_log` VALUES ('944', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"调度组\",\"leader\":\"李四\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"phone\":\"13040567777\",\"ancestors\":\"0,100\",\"email\":\"1241@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:45:13');
INSERT INTO `sys_oper_log` VALUES ('945', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', '0', null, '2023-01-16 18:45:23');
INSERT INTO `sys_oper_log` VALUES ('946', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:45:29');
INSERT INTO `sys_oper_log` VALUES ('947', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:45:32');
INSERT INTO `sys_oper_log` VALUES ('948', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:45:34');
INSERT INTO `sys_oper_log` VALUES ('949', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:45:36');
INSERT INTO `sys_oper_log` VALUES ('950', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:45:43');
INSERT INTO `sys_oper_log` VALUES ('951', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', '0', null, '2023-01-16 18:45:47');
INSERT INTO `sys_oper_log` VALUES ('952', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"viewer\",\"roleName\":\"浏览者\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1673769407000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"lyq\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场部门\",\"leader\":\"张三\",\"deptId\":108,\"orderNum\":\"1\",\"params\":{},\"parentId\":102,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lyq\",\"userId\":117,\"createBy\":1,\"roleIds\":[101],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:46:40');
INSERT INTO `sys_oper_log` VALUES ('953', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', '0', null, '2023-01-16 18:47:31');
INSERT INTO `sys_oper_log` VALUES ('954', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:47:34');
INSERT INTO `sys_oper_log` VALUES ('955', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:47:36');
INSERT INTO `sys_oper_log` VALUES ('956', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"信息部\",\"leader\":\"李四\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0,100\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:48:09');
INSERT INTO `sys_oper_log` VALUES ('957', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"财务部\",\"leader\":\"王五\",\"orderNum\":\"4\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"phone\":\"13330305962\",\"ancestors\":\"0,100\",\"email\":\"2155@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:48:59');
INSERT INTO `sys_oper_log` VALUES ('958', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"行政管理部\",\"leader\":\"李英奇\",\"orderNum\":\"5\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"phone\":\"13048658666\",\"ancestors\":\"0,100\",\"email\":\"21@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:50:10');
INSERT INTO `sys_oper_log` VALUES ('959', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理部\",\"leader\":\"李英奇\",\"deptId\":113,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"createTime\":\"2023-01-16T18:50:10\",\"phone\":\"13048658666\",\"updateBy\":1,\"ancestors\":\"0,100\",\"email\":\"21@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:50:53');
INSERT INTO `sys_oper_log` VALUES ('960', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"调度部\",\"leader\":\"李四\",\"deptId\":111,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":1,\"children\":[],\"createTime\":\"2023-01-16T18:45:13\",\"phone\":\"13040567777\",\"updateBy\":1,\"ancestors\":\"0,100\",\"email\":\"1241@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:52:16');
INSERT INTO `sys_oper_log` VALUES ('961', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', null, '/system/role/3', '127.0.0.1', '内网IP', '{roleIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:53:48');
INSERT INTO `sys_oper_log` VALUES ('962', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', null, '/system/role/100', '127.0.0.1', '内网IP', '{roleIds=100}', null, '1', '普通用户已分配,不能删除', '2023-01-16 18:54:04');
INSERT INTO `sys_oper_log` VALUES ('963', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1672747936000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"lyq\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"abc\",\"userId\":115,\"createBy\":1,\"roleIds\":[],\"createTime\":\"2022-11-04T17:06:20\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:54:12');
INSERT INTO `sys_oper_log` VALUES ('964', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/115', '127.0.0.1', '内网IP', '{userIds=115}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:54:21');
INSERT INTO `sys_oper_log` VALUES ('965', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/116', '127.0.0.1', '内网IP', '{userIds=116}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:54:25');
INSERT INTO `sys_oper_log` VALUES ('966', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"viewer\",\"roleName\":\"浏览者\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1673769407000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"lyq\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lyq\",\"userId\":117,\"createBy\":1,\"roleIds\":[101],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:54:31');
INSERT INTO `sys_oper_log` VALUES ('967', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', null, '/system/role/100', '127.0.0.1', '内网IP', '{roleIds=100}', null, '1', '普通用户已分配,不能删除', '2023-01-16 18:54:35');
INSERT INTO `sys_oper_log` VALUES ('968', '角色管理', '3', 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', '1', 'admin', null, '/system/role/100', '127.0.0.1', '内网IP', '{roleIds=100}', null, '1', '普通用户已分配,不能删除', '2023-01-16 18:54:50');
INSERT INTO `sys_oper_log` VALUES ('969', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:55:08');
INSERT INTO `sys_oper_log` VALUES ('970', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组组长\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:56:13');
INSERT INTO `sys_oper_log` VALUES ('971', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":103,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"DL\",\"roleName\":\"调度组长\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:56:39');
INSERT INTO `sys_oper_log` VALUES ('972', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:56:49');
INSERT INTO `sys_oper_log` VALUES ('973', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":103,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:39\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"DL\",\"roleName\":\"调度组长\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:56:57');
INSERT INTO `sys_oper_log` VALUES ('974', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:57:04');
INSERT INTO `sys_oper_log` VALUES ('975', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":104,\"admin\":false,\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Valuer\",\"roleName\":\"计价员\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:57:26');
INSERT INTO `sys_oper_log` VALUES ('976', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"VL\",\"roleName\":\"计价组长\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:57:40');
INSERT INTO `sys_oper_log` VALUES ('977', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":106,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Leader\",\"roleName\":\"主管领导\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:57:54');
INSERT INTO `sys_oper_log` VALUES ('978', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":107,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"treasurer\",\"roleName\":\"财务员\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:15');
INSERT INTO `sys_oper_log` VALUES ('979', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":107,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:58:15\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"treasurer\",\"roleName\":\"财务员\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:21');
INSERT INTO `sys_oper_log` VALUES ('980', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":106,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:54\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Leader\",\"roleName\":\"主管领导\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:29');
INSERT INTO `sys_oper_log` VALUES ('981', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:34');
INSERT INTO `sys_oper_log` VALUES ('982', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:40\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"VL\",\"roleName\":\"计价组长\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:40');
INSERT INTO `sys_oper_log` VALUES ('983', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:46');
INSERT INTO `sys_oper_log` VALUES ('984', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:40\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"VL\",\"roleName\":\"计价组长\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:58:52');
INSERT INTO `sys_oper_log` VALUES ('985', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:40\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"VL\",\"roleName\":\"计价组长\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:59:04');
INSERT INTO `sys_oper_log` VALUES ('986', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":107,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"8\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:58:15\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"treasurer\",\"roleName\":\"财务员\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:59:14');
INSERT INTO `sys_oper_log` VALUES ('987', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":106,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:54\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Leader\",\"roleName\":\"主管领导\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 18:59:19');
INSERT INTO `sys_oper_log` VALUES ('988', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"4\",\"flag\":false,\"remark\":\"\",\"postId\":4,\"params\":{},\"createBy\":1,\"createTime\":\"2022-06-17T17:20:20\",\"updateBy\":1,\"postName\":\"员工\",\"postCode\":\"user\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 19:30:08');
INSERT INTO `sys_oper_log` VALUES ('989', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/3', '127.0.0.1', '内网IP', '{postIds=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-16 19:30:26');
INSERT INTO `sys_oper_log` VALUES ('990', '货区', '5', 'com.cyl.wms.controller.AreaController.export()', 'GET', '1', 'admin', null, '/wms/area/export', '127.0.0.1', '内网IP', '{}', '{\"body\":\"6fa83e5e-6502-4d58-ba8e-30cc2001d17c_货区数据.xlsx\",\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-17 17:18:11');
INSERT INTO `sys_oper_log` VALUES ('991', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-01-17 17:32:13');
INSERT INTO `sys_oper_log` VALUES ('992', '仓库', '5', 'com.cyl.wms.controller.WarehouseController.export()', 'GET', '1', 'admin', null, '/wms/warehouse/export', '127.0.0.1', '内网IP', '{}', '{\"body\":\"cd6f5bd2-ccdb-4001-a502-00e557c11c50_仓库数据.xlsx\",\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-01-17 17:50:55');
INSERT INTO `sys_oper_log` VALUES ('993', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"2\",\"menuName\":\"调度派工\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"dispatch\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 17:55:44');
INSERT INTO `sys_oper_log` VALUES ('994', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"apply\",\"component\":\"system/user/apply\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"@PreAuthorize(`@ss.hasPermi(\'system:user:list\')`)\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 17:57:11');
INSERT INTO `sys_oper_log` VALUES ('995', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2202', '127.0.0.1', '内网IP', '{menuId=2202}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 17:58:07');
INSERT INTO `sys_oper_log` VALUES ('996', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2201,\"isCache\":\"0\",\"path\":\"apply\",\"component\":\"apply\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"@PreAuthorize(`@ss.hasPermi(\'system:user:list\')`)\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 17:58:37');
INSERT INTO `sys_oper_log` VALUES ('997', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2201,\"isCache\":\"0\",\"path\":\"apply\",\"component\":\"apply\",\"children\":[],\"createTime\":\"2023-01-19T17:58:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2203,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 17:59:21');
INSERT INTO `sys_oper_log` VALUES ('998', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2201,\"isCache\":\"0\",\"path\":\"apply\",\"component\":\"wms/item/apply\",\"children\":[],\"createTime\":\"2023-01-19T17:58:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2203,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 18:00:29');
INSERT INTO `sys_oper_log` VALUES ('999', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2201,\"isCache\":\"0\",\"path\":\"apply\",\"component\":\"wms/apply/index\",\"children\":[],\"createTime\":\"2023-01-19T17:58:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2203,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 18:00:51');
INSERT INTO `sys_oper_log` VALUES ('1000', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2201,\"isCache\":\"0\",\"path\":\"apply\",\"component\":\"wms/apply/index\",\"children\":[],\"createTime\":\"2023-01-19T17:58:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2203,\"menuType\":\"C\",\"perms\":\"@PreAuthorize(`@ss.hasPermi(\'system:apply:list\')`)\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 18:01:21');
INSERT INTO `sys_oper_log` VALUES ('1001', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,105,2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155,2144,2145,2146,2147,2148,2149,2201,2203,2198,2108,2109,2110,2111,2112,2113,2180,2181,2182,2183,2184,2185,2102,2103,2104,2105,2106,2107,2192,2156,2157,2159,2160,2161,2158,2168,2169,2170,2171,2172,2173,2194,2195,2196,2199,2200,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2162,2163,2164,2165,2166,2167,2174,2175,2176,2177,2178,2179,2197,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2114,2115,2116,2117,2118,2119,1026],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 18:01:53');
INSERT INTO `sys_oper_log` VALUES ('1002', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1673769407000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"lyq\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lyq\",\"userId\":117,\"createBy\":1,\"roleIds\":[101,100],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-01-19 18:02:02');
INSERT INTO `sys_oper_log` VALUES ('1003', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155,2201,2203],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-01 11:15:34');
INSERT INTO `sys_oper_log` VALUES ('1004', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2201', '127.0.0.1', '内网IP', '{menuId=2201}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2023-02-02 17:51:38');
INSERT INTO `sys_oper_log` VALUES ('1005', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2203', '127.0.0.1', '内网IP', '{menuId=2203}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', '0', null, '2023-02-02 17:51:40');
INSERT INTO `sys_oper_log` VALUES ('1006', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-02 17:51:52');
INSERT INTO `sys_oper_log` VALUES ('1007', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,105,2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155,2144,2145,2146,2147,2148,2149,2198,2108,2109,2110,2111,2112,2113,2180,2181,2182,2183,2184,2185,2102,2103,2104,2105,2106,2107,2192,2156,2157,2159,2160,2161,2158,2168,2169,2170,2171,2172,2173,2194,2195,2196,2199,2200,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2162,2163,2164,2165,2166,2167,2174,2175,2176,2177,2178,2179,2197,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2114,2115,2116,2117,2118,2119,1026],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-02 17:52:00');
INSERT INTO `sys_oper_log` VALUES ('1008', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2203', '127.0.0.1', '内网IP', '{menuId=2203}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-02 17:52:04');
INSERT INTO `sys_oper_log` VALUES ('1009', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2201', '127.0.0.1', '内网IP', '{menuId=2201}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-02 17:52:07');
INSERT INTO `sys_oper_log` VALUES ('1010', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"3\",\"menuName\":\"派工管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"dispatch\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-02 17:59:05');
INSERT INTO `sys_oper_log` VALUES ('1011', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_application', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 11:55:54');
INSERT INTO `sys_oper_log` VALUES ('1012', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/866', '127.0.0.1', '内网IP', '{tableIds=866}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 11:56:09');
INSERT INTO `sys_oper_log` VALUES ('1013', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/865', '127.0.0.1', '内网IP', '{tableIds=865}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 11:56:12');
INSERT INTO `sys_oper_log` VALUES ('1014', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"lyq\",\"columns\":[{\"date\":false,\"capJavaField\":\"ApplicationId\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10904,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"applicationId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"派公单主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":1,\"isPk\":\"1\",\"createTime\":\"2023-02-03T11:55:54\",\"tableId\":867,\"pk\":true,\"capColumnType\":\"BIGINT\",\"columnName\":\"application_id\"},{\"date\":false,\"capJavaField\":\"MarketTypeName\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10905,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"marketTypeName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"市场类型名称 内部 外部\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T11:55:54\",\"isEdit\":\"1\",\"tableId\":867,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"market_type__name\"},{\"date\":false,\"capJavaField\":\"DispatchTypeName\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10906,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"dispatchTypeName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"装载 零活 倒料 小车派工\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T11:55:54\",\"isEdit\":\"1\",\"tableId\":867,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"dispatch_type_name\"},{\"date\":false,\"capJavaField\":\"CurrentStatusCode\",\"dateFor', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:09:21');
INSERT INTO `sys_oper_log` VALUES ('1015', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-03 12:09:28');
INSERT INTO `sys_oper_log` VALUES ('1016', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_approval', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:27:19');
INSERT INTO `sys_oper_log` VALUES ('1017', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/868', '127.0.0.1', '内网IP', '{tableIds=868}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:50:34');
INSERT INTO `sys_oper_log` VALUES ('1018', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/867', '127.0.0.1', '内网IP', '{tableIds=867}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:50:36');
INSERT INTO `sys_oper_log` VALUES ('1019', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_application', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:50:52');
INSERT INTO `sys_oper_log` VALUES ('1020', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"lyq\",\"columns\":[{\"date\":false,\"capJavaField\":\"ApplicationId\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10925,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"applicationId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"派公单主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":1,\"isPk\":\"1\",\"createTime\":\"2023-02-03T12:50:52\",\"tableId\":869,\"pk\":true,\"capColumnType\":\"BIGINT\",\"columnName\":\"application_id\"},{\"date\":false,\"capJavaField\":\"MarketTypeName\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10926,\"isIncrement\":\"0\",\"queryField\":\"Like\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"like\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"marketTypeName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"市场类型名称 内部 外部\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T12:50:52\",\"isEdit\":\"1\",\"tableId\":869,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"market_type__name\"},{\"date\":false,\"capJavaField\":\"DispatchTypeName\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10927,\"isIncrement\":\"0\",\"queryField\":\"Like\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"like\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"dispatchTypeName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"装载 零活 倒料 小车派工\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T12:50:52\",\"isEdit\":\"1\",\"tableId\":869,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"dispatch_type_name\"},{\"date\":false,\"capJavaField\":\"CurrentStat', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:53:40');
INSERT INTO `sys_oper_log` VALUES ('1021', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-03 12:53:43');
INSERT INTO `sys_oper_log` VALUES ('1022', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"3\",\"menuName\":\"调度派工\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"dispatch\",\"children\":[],\"createTime\":\"2023-02-02T17:59:05\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2204,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:54:42');
INSERT INTO `sys_oper_log` VALUES ('1023', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"application\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:55:37');
INSERT INTO `sys_oper_log` VALUES ('1024', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"派工申请\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"application\",\"component\":\"wms/application/index\",\"children\":[],\"createTime\":\"2023-02-03T12:55:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2205,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:56:52');
INSERT INTO `sys_oper_log` VALUES ('1025', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[2204,2205],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 12:58:31');
INSERT INTO `sys_oper_log` VALUES ('1026', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"subTableName\":\"\",\"functionAuthor\":\"lyq\",\"columns\":[{\"date\":false,\"capJavaField\":\"ApplicationId\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10925,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"applicationId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"派公单主键\",\"updateTime\":\"2023-02-03T12:53:40\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":1,\"isPk\":\"1\",\"createTime\":\"2023-02-03T12:50:52\",\"tableId\":869,\"pk\":true,\"capColumnType\":\"BIGINT\",\"columnName\":\"application_id\"},{\"date\":false,\"capJavaField\":\"MarketTypeName\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10926,\"isIncrement\":\"0\",\"queryField\":\"Like\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"like\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"marketTypeName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"市场类型名称 内部 外部\",\"isQuery\":\"1\",\"updateTime\":\"2023-02-03T12:53:40\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T12:50:52\",\"isEdit\":\"1\",\"tableId\":869,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"market_type__name\"},{\"date\":false,\"capJavaField\":\"DispatchTypeName\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10927,\"isIncrement\":\"0\",\"queryField\":\"Like\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"like\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"dispatchTypeName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"装载 零活 倒料 小车派工\",\"isQuery\":\"1\",\"updateTime\":\"2023-02-03T12:53:40\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T12:50:52\",\"isEdit\":\"1\",\"tab', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 16:48:52');
INSERT INTO `sys_oper_log` VALUES ('1027', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'test', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 16:50:28');
INSERT INTO `sys_oper_log` VALUES ('1028', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"lyq\",\"columns\":[{\"date\":false,\"capJavaField\":\"Id\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10939,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T16:50:28\",\"tableId\":870,\"pk\":false,\"capColumnType\":\"INTEGER\",\"columnName\":\"id\"},{\"date\":false,\"capJavaField\":\"Name\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10940,\"isIncrement\":\"0\",\"queryField\":\"Like\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"like\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"NAME\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T16:50:28\",\"isEdit\":\"1\",\"tableId\":870,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"name\"}],\"businessName\":\"test\",\"moduleName\":\"wms\",\"className\":\"Test\",\"tableName\":\"test\",\"crud\":true,\"audit\":0,\"options\":\"{\\\"parentMenuId\\\":2204}\",\"genType\":\"0\",\"packageName\":\"com.cyl.test\",\"functionName\":\"测试\",\"tree\":false,\"tableComment\":\"测试\",\"params\":{\"parentMenuId\":2204},\"tplCategory\":\"crud\",\"parentMenuId\":\"2204\",\"tableId\":870,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 16:50:59');
INSERT INTO `sys_oper_log` VALUES ('1029', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"lyq\",\"columns\":[{\"date\":false,\"capJavaField\":\"Id\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10939,\"isIncrement\":\"0\",\"queryField\":\"\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"queryMethod\":\"eq\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":\"2023-02-03T16:50:59\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T16:50:28\",\"tableId\":870,\"pk\":false,\"capColumnType\":\"INTEGER\",\"columnName\":\"id\"},{\"date\":false,\"capJavaField\":\"Name\",\"dateFormat\":\"\",\"usableColumn\":false,\"columnId\":10940,\"isIncrement\":\"0\",\"queryField\":\"Like\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"queryMethod\":\"like\",\"superColumn\":false,\"isInsert\":\"1\",\"pct\":false,\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"NAME\",\"isQuery\":\"1\",\"updateTime\":\"2023-02-03T16:50:59\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":1,\"isPk\":\"0\",\"createTime\":\"2023-02-03T16:50:28\",\"isEdit\":\"1\",\"tableId\":870,\"pk\":false,\"capColumnType\":\"VARCHAR\",\"columnName\":\"name\"}],\"businessName\":\"test\",\"moduleName\":\"wms\",\"className\":\"Test\",\"tableName\":\"test\",\"crud\":true,\"audit\":0,\"options\":\"{\\\"parentMenuId\\\":\\\"2204\\\"}\",\"genType\":\"0\",\"packageName\":\"com.cyl.test\",\"functionName\":\"测试\",\"tree\":false,\"tableComment\":\"测试\",\"params\":{\"parentMenuId\":\"2204\"},\"tplCategory\":\"crud\",\"parentMenuId\":\"2204\",\"tableId\":870,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 16:51:06');
INSERT INTO `sys_oper_log` VALUES ('1030', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_user', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 19:30:11');
INSERT INTO `sys_oper_log` VALUES ('1031', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-03 19:31:20');
INSERT INTO `sys_oper_log` VALUES ('1032', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_application_employ', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-03 19:40:53');
INSERT INTO `sys_oper_log` VALUES ('1033', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-03 19:40:57');
INSERT INTO `sys_oper_log` VALUES ('1034', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-03 19:52:12');
INSERT INTO `sys_oper_log` VALUES ('1035', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-03 19:52:43');
INSERT INTO `sys_oper_log` VALUES ('1036', '货区', '1', 'com.cyl.wms.controller.AreaController.add()', 'POST', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"南京北\",\"areaNo\":\"nj\",\"createTime\":\"2023-02-06T10:42:14.243325600\",\"warehouseId\":2,\"id\":41,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-02-06 10:42:14');
INSERT INTO `sys_oper_log` VALUES ('1037', '货区', '1', 'com.cyl.wms.controller.AreaController.add()', 'POST', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"北京南\",\"areaNo\":\"bj\",\"createTime\":\"2023-02-06T10:42:35.188566500\",\"warehouseId\":14,\"id\":42,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-02-06 10:42:35');
INSERT INTO `sys_oper_log` VALUES ('1038', '货区', '1', 'com.cyl.wms.controller.AreaController.add()', 'POST', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"北京北\",\"areaNo\":\"bj2\",\"createTime\":\"2023-02-06T10:42:44.481349400\",\"warehouseId\":14,\"id\":43,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-02-06 10:42:44');
INSERT INTO `sys_oper_log` VALUES ('1039', '货区', '1', 'com.cyl.wms.controller.AreaController.add()', 'POST', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"北京西\",\"areaNo\":\"jb3\",\"createTime\":\"2023-02-06T10:42:56.468734500\",\"warehouseId\":14,\"id\":44,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-02-06 10:42:56');
INSERT INTO `sys_oper_log` VALUES ('1040', '货区', '1', 'com.cyl.wms.controller.AreaController.add()', 'POST', '1', 'admin', null, '/wms/area', '127.0.0.1', '内网IP', '{\"createBy\":1,\"areaName\":\"上海北\",\"areaNo\":\"sh3\",\"createTime\":\"2023-02-06T10:43:13.144772900\",\"warehouseId\":3,\"id\":45,\"delFlag\":0}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-02-06 10:43:13');
INSERT INTO `sys_oper_log` VALUES ('1041', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"运维组\",\"leader\":\"张三\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:30:30');
INSERT INTO `sys_oper_log` VALUES ('1042', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"},{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1675220839000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"user1\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"lyq\",\"userId\":117,\"createBy\":1,\"roleIds\":[100,101],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:31:22');
INSERT INTO `sys_oper_log` VALUES ('1043', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155,2144,2145,2146,2147,2148,2149,2198,2108,2109,2110,2111,2112,2113,2180,2181,2182,2183,2184,2185,2102,2103,2104,2105,2106,2107,2192,2156,2157,2159,2160,2161,2158,2168,2169,2170,2171,2172,2173,2194,2195,2196,2199,2200,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2162,2163,2164,2165,2166,2167,2174,2175,2176,2177,2178,2179,2197,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2114,2115,2116,2117,2118,2119,3,114,115,1055,1056,1058,1057,1059,1060,116,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:32:54');
INSERT INTO `sys_oper_log` VALUES ('1044', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[2204,2205,3,114,115,1055,1056,1058,1057,1059,1060,116,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:33:36');
INSERT INTO `sys_oper_log` VALUES ('1045', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"},{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"viewer\",\"roleName\":\"访客\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1675220839000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"李英奇\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user1\",\"userId\":117,\"createBy\":1,\"roleIds\":[102],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:33:48');
INSERT INTO `sys_oper_log` VALUES ('1046', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[3,2,2204,2205,114,116,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:37:05');
INSERT INTO `sys_oper_log` VALUES ('1047', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[3,2,2204,2205,114,116,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:39:00');
INSERT INTO `sys_oper_log` VALUES ('1048', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"用工确认\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"confirm\",\"component\":\"wms/application/confirm\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:41:02');
INSERT INTO `sys_oper_log` VALUES ('1049', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"用工确认\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"confirm\",\"component\":\"wms/application/index\",\"children\":[],\"createTime\":\"2023-02-07T12:41:02\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2206,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:41:14');
INSERT INTO `sys_oper_log` VALUES ('1050', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"用工审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine\",\"component\":\"wms/examine/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:45:25');
INSERT INTO `sys_oper_log` VALUES ('1051', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"3\",\"menuName\":\"派工管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"dispatch\",\"children\":[],\"createTime\":\"2023-02-02T17:59:05\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2204,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:46:09');
INSERT INTO `sys_oper_log` VALUES ('1052', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"3\",\"menuName\":\"派工管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"dispatchManage\",\"children\":[],\"createTime\":\"2023-02-02T17:59:05\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2204,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:47:09');
INSERT INTO `sys_oper_log` VALUES ('1053', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"调度派工\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"dispatch\",\"component\":\"wms/dispatch/index\",\"children\":[],\"createTime\":\"2023-02-07T12:41:02\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2206,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:47:30');
INSERT INTO `sys_oper_log` VALUES ('1054', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"用工确认\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"confirm\",\"component\":\"wms/confirm/index\",\"children\":[],\"createTime\":\"2023-02-07T12:45:25\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2207,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:47:45');
INSERT INTO `sys_oper_log` VALUES ('1055', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"用工审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine\",\"component\":\"wms/examine/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:48:31');
INSERT INTO `sys_oper_log` VALUES ('1056', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"用工审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine1\",\"component\":\"wms/examine/index\",\"children\":[],\"createTime\":\"2023-02-07T12:48:31\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2208,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 12:56:20');
INSERT INTO `sys_oper_log` VALUES ('1057', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"用工审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine1\",\"component\":\"wms/examine1/index\",\"children\":[],\"createTime\":\"2023-02-07T12:48:31\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2208,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 13:03:33');
INSERT INTO `sys_oper_log` VALUES ('1058', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"5\",\"menuName\":\"用工审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine2\",\"component\":\"wms/examine2/index\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"新增菜单\'用工审核\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2023-02-07 13:04:13');
INSERT INTO `sys_oper_log` VALUES ('1059', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"5\",\"menuName\":\"用工审核-2\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine2\",\"component\":\"wms/examine2/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 13:04:28');
INSERT INTO `sys_oper_log` VALUES ('1060', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"用工审核-1\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine1\",\"component\":\"wms/examine1/index\",\"children\":[],\"createTime\":\"2023-02-07T12:48:31\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2208,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 13:04:33');
INSERT INTO `sys_oper_log` VALUES ('1061', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"6\",\"menuName\":\"用工审核-3\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine3\",\"component\":\"wms/examine3/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 13:05:33');
INSERT INTO `sys_oper_log` VALUES ('1062', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"7\",\"menuName\":\"用工审核-4\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine4\",\"component\":\"wms/examine4/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 13:06:49');
INSERT INTO `sys_oper_log` VALUES ('1063', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"8\",\"menuName\":\"用工审核-5\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine5\",\"component\":\"wms/examine5/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-07 13:09:43');
INSERT INTO `sys_oper_log` VALUES ('1064', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_company', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-09 11:55:55');
INSERT INTO `sys_oper_log` VALUES ('1065', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-09 11:55:57');
INSERT INTO `sys_oper_log` VALUES ('1066', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_employ', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-09 12:38:58');
INSERT INTO `sys_oper_log` VALUES ('1067', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_car', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-09 19:15:16');
INSERT INTO `sys_oper_log` VALUES ('1068', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13040571101\",\"admin\":false,\"remark\":\"2\",\"password\":\"$2a$10$Ls04bzI4Doo.gNREQDrrMup1cwyNBqBBfcuA4D3m291vK/pjzaT.u\",\"postIds\":[1],\"email\":\"213111@qq.com\",\"nickName\":\"123\",\"sex\":\"1\",\"deptId\":100,\"params\":{},\"userName\":\"haha\",\"userId\":118,\"createBy\":1,\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-13 11:23:30');
INSERT INTO `sys_oper_log` VALUES ('1069', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_application_car', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-15 19:53:37');
INSERT INTO `sys_oper_log` VALUES ('1070', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_approval', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-15 19:53:47');
INSERT INTO `sys_oper_log` VALUES ('1071', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/875,874,873', '127.0.0.1', '内网IP', '{tableIds=875,874,873}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-15 19:55:00');
INSERT INTO `sys_oper_log` VALUES ('1072', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_content_relation,k_content', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-16 19:12:09');
INSERT INTO `sys_oper_log` VALUES ('1073', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/869', '127.0.0.1', '内网IP', '{tableIds=869}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-16 19:12:14');
INSERT INTO `sys_oper_log` VALUES ('1074', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/870', '127.0.0.1', '内网IP', '{tableIds=870}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-16 19:12:16');
INSERT INTO `sys_oper_log` VALUES ('1075', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/871', '127.0.0.1', '内网IP', '{tableIds=871}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-16 19:12:17');
INSERT INTO `sys_oper_log` VALUES ('1076', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/872', '127.0.0.1', '内网IP', '{tableIds=872}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-16 19:12:21');
INSERT INTO `sys_oper_log` VALUES ('1077', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/876', '127.0.0.1', '内网IP', '{tableIds=876}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-16 19:12:24');
INSERT INTO `sys_oper_log` VALUES ('1078', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"applicationId\",\"orderNum\":\"1\",\"menuName\":\"用工详情确认\",\"params\":{},\"parentId\":2207,\"isCache\":\"0\",\"path\":\"confirmInfo\",\"component\":\"wms/confirm/components/confirm\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-17 12:37:37');
INSERT INTO `sys_oper_log` VALUES ('1079', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"applicationId\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"用工详情确认\",\"params\":{},\"parentId\":2207,\"isCache\":\"0\",\"path\":\"confirmInfo\",\"component\":\"wms/confirm/components/confirm\",\"children\":[],\"createTime\":\"2023-02-17T12:37:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2213,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-17 12:39:15');
INSERT INTO `sys_oper_log` VALUES ('1080', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"用工详情确认\",\"params\":{},\"parentId\":2207,\"isCache\":\"0\",\"path\":\"confirmInfo\",\"component\":\"wms/confirm/components/confirm\",\"children\":[],\"createTime\":\"2023-02-17T12:37:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2213,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-17 13:06:39');
INSERT INTO `sys_oper_log` VALUES ('1081', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"用工详情确认\",\"params\":{},\"parentId\":2207,\"isCache\":\"0\",\"path\":\"confirmInfo/:applicationId?\",\"component\":\"wms/confirm/components/confirm\",\"children\":[],\"createTime\":\"2023-02-17T12:37:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2213,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-17 13:09:41');
INSERT INTO `sys_oper_log` VALUES ('1082', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"用工详情确认\",\"params\":{},\"parentId\":2207,\"isCache\":\"0\",\"path\":\"confirmInfo/:applicationId\",\"component\":\"wms/confirm/components/confirm\",\"children\":[],\"createTime\":\"2023-02-17T12:37:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2213,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-17 13:10:43');
INSERT INTO `sys_oper_log` VALUES ('1083', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"用工组长审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine1\",\"component\":\"wms/examine1/index\",\"children\":[],\"createTime\":\"2023-02-07T12:48:31\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2208,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 17:20:46');
INSERT INTO `sys_oper_log` VALUES ('1084', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"调度组长审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine2\",\"component\":\"wms/examine2/index\",\"children\":[],\"createTime\":\"2023-02-07T13:04:28\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2209,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 17:21:06');
INSERT INTO `sys_oper_log` VALUES ('1085', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"6\",\"menuName\":\"计价员审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine3\",\"component\":\"wms/examine3/index\",\"children\":[],\"createTime\":\"2023-02-07T13:05:33\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2210,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 17:21:20');
INSERT INTO `sys_oper_log` VALUES ('1086', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"7\",\"menuName\":\"计价组长审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine4\",\"component\":\"wms/examine4/index\",\"children\":[],\"createTime\":\"2023-02-07T13:06:49\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2211,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 17:21:36');
INSERT INTO `sys_oper_log` VALUES ('1087', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"8\",\"menuName\":\"主管领导审核\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"examine5\",\"component\":\"wms/examine5/index\",\"children\":[],\"createTime\":\"2023-02-07T13:09:43\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2212,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 17:21:49');
INSERT INTO `sys_oper_log` VALUES ('1088', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"9\",\"menuName\":\"用工结算\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"checkout\",\"component\":\"wms/checkout/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 18:24:06');
INSERT INTO `sys_oper_log` VALUES ('1089', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_checkout', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-20 19:13:49');
INSERT INTO `sys_oper_log` VALUES ('1090', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"10\",\"menuName\":\"历史工单\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"historyForm\",\"component\":\"wms/history/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 17:02:47');
INSERT INTO `sys_oper_log` VALUES ('1091', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"10\",\"menuName\":\"历史工单\",\"params\":{},\"parentId\":2204,\"isCache\":\"0\",\"path\":\"historyForm\",\"component\":\"wms/historyForm/index\",\"children\":[],\"createTime\":\"2023-02-21T17:02:47\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2215,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 17:05:19');
INSERT INTO `sys_oper_log` VALUES ('1092', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"4\",\"menuName\":\"派工管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"dispatchManage\",\"children\":[],\"createTime\":\"2023-02-02T17:59:05\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2204,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:17:03');
INSERT INTO `sys_oper_log` VALUES ('1093', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"redis\",\"orderNum\":\"5\",\"menuName\":\"出入库\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"wms\",\"children\":[],\"createTime\":\"2022-07-29T18:09:52\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2192,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:17:10');
INSERT INTO `sys_oper_log` VALUES ('1094', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"6\",\"menuName\":\"报表\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"report\",\"children\":[],\"createTime\":\"2022-10-30T22:08:28\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2197,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:17:15');
INSERT INTO `sys_oper_log` VALUES ('1095', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"6\",\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"baseData\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:22:37');
INSERT INTO `sys_oper_log` VALUES ('1096', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"4\",\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"baseData\",\"children\":[],\"createTime\":\"2023-02-21T19:22:37\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2216,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:22:51');
INSERT INTO `sys_oper_log` VALUES ('1097', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"公司/员工管理\",\"params\":{},\"parentId\":2216,\"isCache\":\"0\",\"path\":\"companyEmploy\",\"component\":\"wms/companyEmploy/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:33:36');
INSERT INTO `sys_oper_log` VALUES ('1098', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"员工管理\",\"params\":{},\"parentId\":2216,\"isCache\":\"0\",\"path\":\"companyEmploy\",\"component\":\"wms/companyEmploy/index\",\"children\":[],\"createTime\":\"2023-02-21T19:33:36\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2217,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-21 19:54:23');
INSERT INTO `sys_oper_log` VALUES ('1099', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"车辆管理\",\"params\":{},\"parentId\":2217,\"isCache\":\"0\",\"path\":\"companyCar\",\"component\":\"wms/companyCar/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-22 13:11:06');
INSERT INTO `sys_oper_log` VALUES ('1100', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"车辆管理\",\"params\":{},\"parentId\":2217,\"isCache\":\"0\",\"path\":\"companyCar\",\"component\":\"wms/companyCar/index\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"新增菜单\'车辆管理\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2023-02-22 13:14:37');
INSERT INTO `sys_oper_log` VALUES ('1101', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2218', '127.0.0.1', '内网IP', '{menuId=2218}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-22 13:14:45');
INSERT INTO `sys_oper_log` VALUES ('1102', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"车辆管理\",\"params\":{},\"parentId\":2216,\"isCache\":\"0\",\"path\":\"companyCar\",\"component\":\"wms/companyCar/index\",\"createBy\":1,\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-22 13:15:08');
INSERT INTO `sys_oper_log` VALUES ('1103', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"公司管理\",\"params\":{},\"parentId\":2216,\"isCache\":\"0\",\"path\":\"company\",\"component\":\"wms/company/index\",\"children\":[],\"createTime\":\"2023-02-23T10:39:15\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2223,\"menuType\":\"C\",\"perms\":\"wms:company:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 10:44:54');
INSERT INTO `sys_oper_log` VALUES ('1104', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'k_company', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 11:29:40');
INSERT INTO `sys_oper_log` VALUES ('1105', '公司管理', '5', 'com.cyl.wms.controller.KCompanyController.export()', 'POST', '1', 'admin', null, '/wms/company/export', '127.0.0.1', '内网IP', '{}', null, '1', 'Invalid bound statement (not found): com.cyl.wms.mapper.KCompanyMapper.selectKCompanyList', '2023-02-23 11:37:45');
INSERT INTO `sys_oper_log` VALUES ('1106', '公司管理', '5', 'com.cyl.wms.controller.KCompanyController.export()', 'POST', '1', 'admin', null, '/wms/company/export', '127.0.0.1', '内网IP', '{}', null, '0', null, '2023-02-23 11:46:36');
INSERT INTO `sys_oper_log` VALUES ('1107', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1676246012000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"仓库管理员\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user1\",\"userId\":117,\"createBy\":1,\"roleIds\":[102],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:36:55');
INSERT INTO `sys_oper_log` VALUES ('1108', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1676246012000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"张三丰\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user1\",\"userId\":117,\"createBy\":1,\"roleIds\":[102],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:38:40');
INSERT INTO `sys_oper_log` VALUES ('1109', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1676246012000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"张三丰\",\"sex\":\"0\",\"deptId\":110,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user1\",\"userId\":117,\"createBy\":1,\"roleIds\":[102],\"createTime\":\"2023-01-05T14:36:41\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:38:47');
INSERT INTO `sys_oper_log` VALUES ('1110', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13199723800\",\"admin\":false,\"password\":\"$2a$10$dzkVICE1GnnITwPxhuIfoue4fEY9HVhm8PuIN5NgAUf5QnrQHXK7u\",\"postIds\":[4],\"nickName\":\"user2\",\"sex\":\"0\",\"deptId\":111,\"params\":{},\"userName\":\"段誉\",\"userId\":119,\"createBy\":1,\"roleIds\":[103],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:40:28');
INSERT INTO `sys_oper_log` VALUES ('1111', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"\",\"admin\":false,\"password\":\"$2a$10$NxtWNxeLm.CFUZM2PASx3Oz8jh8V6bb6YAl/OJwi3tYsB0y2E91wC\",\"postIds\":[4],\"nickName\":\"user3\",\"sex\":\"1\",\"deptId\":112,\"params\":{},\"userName\":\"木婉清\",\"userId\":120,\"createBy\":1,\"roleIds\":[104],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:42:20');
INSERT INTO `sys_oper_log` VALUES ('1112', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$2Jceyo9UrmSJL.koGLwHkuI4yFmIXWOkYxAx3IfOFo7oWVsSO3F0u\",\"postIds\":[4],\"nickName\":\"王语嫣\",\"deptId\":112,\"params\":{},\"userName\":\"user4\",\"userId\":121,\"createBy\":1,\"roleIds\":[105],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:44:03');
INSERT INTO `sys_oper_log` VALUES ('1113', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$pVrFYMuRfghdIE1MXY1KHeVrH9/6xZzwznYPJpLSOA0fmy0wr9/MK\",\"postIds\":[4],\"nickName\":\"萧峰\",\"deptId\":113,\"params\":{},\"userName\":\"user5\",\"userId\":122,\"createBy\":1,\"roleIds\":[106],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:44:43');
INSERT INTO `sys_oper_log` VALUES ('1114', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$7Xi624GBQO62GLV0wBNf8.LSd0aLuSoJ8oxvVx3n2go6rAAFYtF9q\",\"postIds\":[4],\"nickName\":\"user6\",\"deptId\":112,\"params\":{},\"userName\":\"梅超风\",\"userId\":123,\"createBy\":1,\"roleIds\":[107],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 12:45:52');
INSERT INTO `sys_oper_log` VALUES ('1115', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[2204,3,2,2205,2207,2213,2208,114,116,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:21:15');
INSERT INTO `sys_oper_log` VALUES ('1116', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":103,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:39\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"DL\",\"roleName\":\"调度组长\",\"menuIds\":[2204,2206,2209],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:21:25');
INSERT INTO `sys_oper_log` VALUES ('1117', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":104,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:26\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Valuer\",\"roleName\":\"计价员\",\"menuIds\":[2204,2210],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:21:31');
INSERT INTO `sys_oper_log` VALUES ('1118', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:40\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"VL\",\"roleName\":\"计价组长\",\"menuIds\":[2204,2211],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:21:38');
INSERT INTO `sys_oper_log` VALUES ('1119', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":106,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:54\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Leader\",\"roleName\":\"主管领导\",\"menuIds\":[2204,2212],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:21:45');
INSERT INTO `sys_oper_log` VALUES ('1120', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":107,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"8\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:58:15\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"treasurer\",\"roleName\":\"财务员\",\"menuIds\":[2204,2214,2215],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:21:57');
INSERT INTO `sys_oper_log` VALUES ('1121', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[2204,3,2,2205,2207,2213,2208,2215,114,116,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:22:12');
INSERT INTO `sys_oper_log` VALUES ('1122', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:13\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"EL\",\"roleName\":\"用工组长\",\"menuIds\":[2204,3,2,2205,2207,2213,2208,2215,114,116,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:22:12');
INSERT INTO `sys_oper_log` VALUES ('1123', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":103,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:56:39\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"DL\",\"roleName\":\"调度组长\",\"menuIds\":[2204,2206,2209,2215],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:22:18');
INSERT INTO `sys_oper_log` VALUES ('1124', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":104,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:26\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Valuer\",\"roleName\":\"计价员\",\"menuIds\":[2204,2210,2215],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:22:24');
INSERT INTO `sys_oper_log` VALUES ('1125', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:40\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"VL\",\"roleName\":\"计价组长\",\"menuIds\":[2204,2211,2215],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:22:29');
INSERT INTO `sys_oper_log` VALUES ('1126', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":106,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"7\",\"deptCheckStrictly\":true,\"createTime\":\"2023-01-16T18:57:54\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"Leader\",\"roleName\":\"主管领导\",\"menuIds\":[2204,2212,2215],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:22:35');
INSERT INTO `sys_oper_log` VALUES ('1127', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155,2204,2205,2206,2207,2213,2208,2209,2210,2211,2212,2214,2215,2216,2217,2223,2224,2225,2226,2227,2228,2229,2219,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:26:20');
INSERT INTO `sys_oper_log` VALUES ('1128', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$0Fq9fduwPJ6WJY11opplAuQsudU/IpvAyg1bcsEhvg.8s9XEhyufC\",\"postIds\":[4],\"nickName\":\"李某\",\"deptId\":100,\"params\":{},\"userName\":\"user\",\"userId\":124,\"createBy\":1,\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 13:26:45');
INSERT INTO `sys_oper_log` VALUES ('1129', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,2204,2205,2206,2207,2213,2208,2209,2210,2211,2212,2214,2215,2216,2217,2223,2224,2225,2226,2227,2228,2229,2219,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:33:19');
INSERT INTO `sys_oper_log` VALUES ('1130', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[1,2204,2205,2206,2207,2213,2208,2209,2210,2211,2212,2214,2215,2216,2217,2223,2224,2225,2226,2227,2228,2229,2219,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:37:25');
INSERT INTO `sys_oper_log` VALUES ('1131', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[2204,2205,2206,2207,2213,2208,2209,2210,2211,2212,2214,2215,2216,2217,2223,2224,2225,2226,2227,2228,2229,2219,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:38:09');
INSERT INTO `sys_oper_log` VALUES ('1132', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1677144979000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":1,\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"李某\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"Test仓储\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user\",\"userId\":124,\"createBy\":1,\"roleIds\":[100],\"createTime\":\"2023-02-23T13:26:45\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:38:27');
INSERT INTO `sys_oper_log` VALUES ('1133', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"component\",\"orderNum\":\"1\",\"menuName\":\"仓库/库区/货架\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"basic\",\"children\":[],\"createTime\":\"2022-08-09T08:57:46\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2193,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:44:11');
INSERT INTO `sys_oper_log` VALUES ('1134', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"2\",\"menuName\":\"物料\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"item\",\"component\":\"wms/item/index\",\"children\":[],\"createTime\":\"2022-07-29T16:35:13\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2144,\"menuType\":\"C\",\"perms\":\"wms:item:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:44:15');
INSERT INTO `sys_oper_log` VALUES ('1135', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"peoples\",\"orderNum\":\"3\",\"menuName\":\"商务信息管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"relation\",\"children\":[],\"createTime\":\"2022-10-30T22:20:24\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2198,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:44:19');
INSERT INTO `sys_oper_log` VALUES ('1136', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"redis\",\"orderNum\":\"5\",\"menuName\":\"出入库\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"wms\",\"children\":[],\"createTime\":\"2022-07-29T18:09:52\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2192,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:44:23');
INSERT INTO `sys_oper_log` VALUES ('1137', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"chart\",\"orderNum\":\"6\",\"menuName\":\"报表\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"report\",\"children\":[],\"createTime\":\"2022-10-30T22:08:28\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2197,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:44:27');
INSERT INTO `sys_oper_log` VALUES ('1138', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":\"100\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":\"2022-06-17T17:20:20\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:44:31');
INSERT INTO `sys_oper_log` VALUES ('1139', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":\"2022-06-20T09:52:16\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-23 17:46:42');
INSERT INTO `sys_oper_log` VALUES ('1140', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"信息管理部\",\"leader\":\"张三\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":1,\"children\":[],\"createTime\":\"2022-06-17T17:20:19\",\"phone\":\"15888888888\",\"updateBy\":1,\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-25 12:54:20');
INSERT INTO `sys_oper_log` VALUES ('1141', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":\"2022-11-01T17:52:33\",\"updateBy\":1,\"menuCheckStrictly\":true,\"roleKey\":\"visitor\",\"roleName\":\"访客\",\"menuIds\":[2193,2186,2187,2188,2189,2190,2191,2096,2097,2098,2099,2100,2101,2150,2151,2152,2153,2154,2155,2144,2145,2146,2147,2148,2149,2198,2108,2109,2110,2111,2112,2113,2180,2181,2182,2183,2184,2185,2102,2103,2104,2105,2106,2107,2192,2156,2157,2159,2160,2161,2158,2168,2169,2170,2171,2172,2173,2194,2195,2196,2199,2200,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2162,2163,2164,2165,2166,2167,2174,2175,2176,2177,2178,2179,2197,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2114,2115,2116,2117,2118,2119,3,114,115,1055,1056,1058,1057,1059,1060,116,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-02-25 12:57:39');
INSERT INTO `sys_oper_log` VALUES ('1142', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"岗位管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":\"2022-06-17T17:20:20\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-03-16 13:39:06');
INSERT INTO `sys_oper_log` VALUES ('1143', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"dict\",\"orderNum\":\"2\",\"menuName\":\"物料\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"item\",\"component\":\"wms/item/index\",\"children\":[],\"createTime\":\"2022-07-29T16:35:13\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2144,\"menuType\":\"C\",\"perms\":\"wms:item:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-04-02 12:08:37');
INSERT INTO `sys_oper_log` VALUES ('1144', '物料', '2', 'com.cyl.wms.controller.ItemController.edit()', 'PUT', '1', 'admin', null, '/wms/item', '127.0.0.1', '内网IP', '{\"itemType\":\"半成品\",\"quantity\":100000,\"updateTime\":\"2023-04-02T12:09:10.991876300\",\"itemNo\":\"yejingpin\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"红木\",\"unit\":\"个\",\"areaId\":13,\"createTime\":\"2022-08-10T11:31:24\",\"updateBy\":1,\"warehouseId\":1,\"id\":1}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-02 12:09:11');
INSERT INTO `sys_oper_log` VALUES ('1145', '物料', '2', 'com.cyl.wms.controller.ItemController.edit()', 'PUT', '1', 'admin', null, '/wms/item', '127.0.0.1', '内网IP', '{\"quantity\":300,\"remark\":\"222\",\"updateTime\":\"2023-04-02T12:09:22.678642200\",\"itemNo\":\"shoujike\",\"delFlag\":0,\"createBy\":1,\"itemName\":\"衣物\",\"unit\":\"个\",\"areaId\":18,\"createTime\":\"2022-08-10T11:32:50\",\"updateBy\":1,\"warehouseId\":2,\"id\":2}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-02 12:09:22');
INSERT INTO `sys_oper_log` VALUES ('1146', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"component\",\"orderNum\":\"1\",\"menuName\":\"仓库/库区/货架\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"basic\",\"children\":[],\"createTime\":\"2022-08-09T08:57:46\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2193,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-04-02 12:09:31');
INSERT INTO `sys_oper_log` VALUES ('1147', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"3\",\"menuName\":\"商务信息管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"relation\",\"children\":[],\"createTime\":\"2022-10-30T22:20:24\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2198,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-04-12 20:59:16');
INSERT INTO `sys_oper_log` VALUES ('1148', '供应商', '2', 'com.cyl.wms.controller.SupplierController.edit()', 'PUT', '1', 'admin', null, '/wms/supplier', '127.0.0.1', '内网IP', '{\"supplierName\":\"test1\",\"level\":\"第一级\",\"supplierNo\":\"youda\",\"updateTime\":\"2023-04-12T20:59:37.230245700\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-08-19T09:08:03\",\"updateBy\":1,\"id\":1}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-12 20:59:37');
INSERT INTO `sys_oper_log` VALUES ('1149', '供应商', '2', 'com.cyl.wms.controller.SupplierController.edit()', 'PUT', '1', 'admin', null, '/wms/supplier', '127.0.0.1', '内网IP', '{\"supplierName\":\"test2\",\"supplierNo\":\"ximenzi\",\"updateTime\":\"2023-04-12T20:59:41.394596400\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-09-07T17:15:49\",\"updateBy\":1,\"id\":3}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-12 20:59:41');
INSERT INTO `sys_oper_log` VALUES ('1150', '供应商', '2', 'com.cyl.wms.controller.SupplierController.edit()', 'PUT', '1', 'admin', null, '/wms/supplier', '127.0.0.1', '内网IP', '{\"supplierName\":\"test3\",\"level\":\"第一级\",\"supplierNo\":\"huawei\",\"updateTime\":\"2023-04-12T20:59:45.832131800\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-09-07T17:15:38\",\"updateBy\":1,\"id\":2}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-12 20:59:45');
INSERT INTO `sys_oper_log` VALUES ('1151', '供应商', '2', 'com.cyl.wms.controller.SupplierController.edit()', 'PUT', '1', 'admin', null, '/wms/supplier', '127.0.0.1', '内网IP', '{\"supplierName\":\"test3\",\"level\":\"第一级\",\"supplierNo\":\"1\",\"updateTime\":\"2023-04-12T20:59:50.213209500\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-09-07T17:15:38\",\"updateBy\":1,\"id\":2}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-12 20:59:50');
INSERT INTO `sys_oper_log` VALUES ('1152', '供应商', '2', 'com.cyl.wms.controller.SupplierController.edit()', 'PUT', '1', 'admin', null, '/wms/supplier', '127.0.0.1', '内网IP', '{\"supplierName\":\"test1\",\"level\":\"第一级\",\"supplierNo\":\"2\",\"updateTime\":\"2023-04-12T20:59:53.279413800\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-08-19T09:08:03\",\"updateBy\":1,\"id\":1}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-12 20:59:53');
INSERT INTO `sys_oper_log` VALUES ('1153', '供应商', '2', 'com.cyl.wms.controller.SupplierController.edit()', 'PUT', '1', 'admin', null, '/wms/supplier', '127.0.0.1', '内网IP', '{\"supplierName\":\"test2\",\"supplierNo\":\"3\",\"updateTime\":\"2023-04-12T20:59:56.765626600\",\"delFlag\":0,\"createBy\":1,\"createTime\":\"2022-09-07T17:15:49\",\"updateBy\":1,\"id\":3}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-04-12 20:59:56');
INSERT INTO `sys_oper_log` VALUES ('1154', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"redis\",\"orderNum\":\"5\",\"menuName\":\"出入库\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"wms\",\"children\":[],\"createTime\":\"2022-07-29T18:09:52\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2192,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-20 00:40:47');
INSERT INTO `sys_oper_log` VALUES ('1155', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"redis\",\"orderNum\":\"5\",\"menuName\":\"出入库\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"wms\",\"children\":[],\"createTime\":\"2022-07-29T18:09:52\",\"updateBy\":1,\"isFrame\":\"1\",\"menuId\":2192,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-05-20 00:41:13');
INSERT INTO `sys_oper_log` VALUES ('1156', '物料', '1', 'com.cyl.wms.controller.ItemController.add()', 'POST', '1', 'admin', null, '/wms/item', '127.0.0.1', '内网IP', '{\"itemType\":\"原物料\",\"quantity\":22,\"remark\":\"12\",\"itemNo\":\"1\",\"delFlag\":0,\"expiryDate\":\"2023-06-23T00:00:00\",\"createBy\":1,\"itemName\":\"1\",\"unit\":\"1\",\"createTime\":\"2023-05-21T20:53:35.378009600\",\"id\":3}', '{\"body\":1,\"headers\":{},\"statusCode\":\"OK\",\"statusCodeValue\":200}', '0', null, '2023-05-21 20:53:35');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', '1', '2022-06-17 17:20:20.000', null, null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '仓库经理', '2', '0', '1', '2022-06-17 17:20:20.000', '1', '2023-01-05 14:31:04', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '员工', '4', '0', '1', '2022-06-17 17:20:20.000', '1', '2023-01-16 19:30:08', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', '1', '2022-06-17 17:20:20', null, null, '超级管理员');
INSERT INTO `sys_role` VALUES ('3', '管理员', 'super', '3', '1', '1', '1', '0', '2', '1', '2022-06-28 15:57:51', null, null, '管理员');
INSERT INTO `sys_role` VALUES ('100', '普通用户', 'common', '2', '1', '1', '1', '0', '0', null, '2022-06-20 09:52:16', '1', '2023-02-23 17:46:42.000', null);
INSERT INTO `sys_role` VALUES ('101', '访客', 'visitor', '1', '1', '1', '1', '0', '0', '1', '2022-11-01 17:52:33', '1', '2023-02-25 12:57:39.000', null);
INSERT INTO `sys_role` VALUES ('102', '用工组长', 'EL', '3', '1', '1', '1', '0', '0', '1', '2023-01-16 18:56:13', '1', '2023-02-23 13:22:12.000', null);
INSERT INTO `sys_role` VALUES ('103', '调度组长', 'DL', '4', '1', '1', '1', '0', '0', '1', '2023-01-16 18:56:39', '1', '2023-02-23 13:22:18.000', null);
INSERT INTO `sys_role` VALUES ('104', '计价员', 'Valuer', '5', '1', '1', '1', '0', '0', '1', '2023-01-16 18:57:26', '1', '2023-02-23 13:22:24.000', null);
INSERT INTO `sys_role` VALUES ('105', '计价组长', 'VL', '6', '1', '1', '1', '0', '0', '1', '2023-01-16 18:57:40', '1', '2023-02-23 13:22:29.000', null);
INSERT INTO `sys_role` VALUES ('106', '主管领导', 'Leader', '7', '1', '1', '1', '0', '0', '1', '2023-01-16 18:57:54', '1', '2023-02-23 13:22:35.000', null);
INSERT INTO `sys_role` VALUES ('107', '财务员', 'treasurer', '8', '1', '1', '1', '0', '0', '1', '2023-01-16 18:58:15', '1', '2023-02-23 13:21:57.000', null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '2');
INSERT INTO `sys_role_menu` VALUES ('100', '100');
INSERT INTO `sys_role_menu` VALUES ('100', '101');
INSERT INTO `sys_role_menu` VALUES ('100', '102');
INSERT INTO `sys_role_menu` VALUES ('100', '103');
INSERT INTO `sys_role_menu` VALUES ('100', '104');
INSERT INTO `sys_role_menu` VALUES ('100', '105');
INSERT INTO `sys_role_menu` VALUES ('100', '106');
INSERT INTO `sys_role_menu` VALUES ('100', '107');
INSERT INTO `sys_role_menu` VALUES ('100', '108');
INSERT INTO `sys_role_menu` VALUES ('100', '109');
INSERT INTO `sys_role_menu` VALUES ('100', '110');
INSERT INTO `sys_role_menu` VALUES ('100', '111');
INSERT INTO `sys_role_menu` VALUES ('100', '112');
INSERT INTO `sys_role_menu` VALUES ('100', '113');
INSERT INTO `sys_role_menu` VALUES ('100', '500');
INSERT INTO `sys_role_menu` VALUES ('100', '501');
INSERT INTO `sys_role_menu` VALUES ('100', '1001');
INSERT INTO `sys_role_menu` VALUES ('100', '1002');
INSERT INTO `sys_role_menu` VALUES ('100', '1003');
INSERT INTO `sys_role_menu` VALUES ('100', '1004');
INSERT INTO `sys_role_menu` VALUES ('100', '1005');
INSERT INTO `sys_role_menu` VALUES ('100', '1006');
INSERT INTO `sys_role_menu` VALUES ('100', '1007');
INSERT INTO `sys_role_menu` VALUES ('100', '1008');
INSERT INTO `sys_role_menu` VALUES ('100', '1009');
INSERT INTO `sys_role_menu` VALUES ('100', '1010');
INSERT INTO `sys_role_menu` VALUES ('100', '1011');
INSERT INTO `sys_role_menu` VALUES ('100', '1012');
INSERT INTO `sys_role_menu` VALUES ('100', '1013');
INSERT INTO `sys_role_menu` VALUES ('100', '1014');
INSERT INTO `sys_role_menu` VALUES ('100', '1015');
INSERT INTO `sys_role_menu` VALUES ('100', '1016');
INSERT INTO `sys_role_menu` VALUES ('100', '1017');
INSERT INTO `sys_role_menu` VALUES ('100', '1018');
INSERT INTO `sys_role_menu` VALUES ('100', '1019');
INSERT INTO `sys_role_menu` VALUES ('100', '1020');
INSERT INTO `sys_role_menu` VALUES ('100', '1021');
INSERT INTO `sys_role_menu` VALUES ('100', '1022');
INSERT INTO `sys_role_menu` VALUES ('100', '1023');
INSERT INTO `sys_role_menu` VALUES ('100', '1024');
INSERT INTO `sys_role_menu` VALUES ('100', '1025');
INSERT INTO `sys_role_menu` VALUES ('100', '1026');
INSERT INTO `sys_role_menu` VALUES ('100', '1027');
INSERT INTO `sys_role_menu` VALUES ('100', '1028');
INSERT INTO `sys_role_menu` VALUES ('100', '1029');
INSERT INTO `sys_role_menu` VALUES ('100', '1030');
INSERT INTO `sys_role_menu` VALUES ('100', '1031');
INSERT INTO `sys_role_menu` VALUES ('100', '1032');
INSERT INTO `sys_role_menu` VALUES ('100', '1033');
INSERT INTO `sys_role_menu` VALUES ('100', '1034');
INSERT INTO `sys_role_menu` VALUES ('100', '1035');
INSERT INTO `sys_role_menu` VALUES ('100', '1036');
INSERT INTO `sys_role_menu` VALUES ('100', '1037');
INSERT INTO `sys_role_menu` VALUES ('100', '1038');
INSERT INTO `sys_role_menu` VALUES ('100', '1039');
INSERT INTO `sys_role_menu` VALUES ('100', '1040');
INSERT INTO `sys_role_menu` VALUES ('100', '1041');
INSERT INTO `sys_role_menu` VALUES ('100', '1042');
INSERT INTO `sys_role_menu` VALUES ('100', '1043');
INSERT INTO `sys_role_menu` VALUES ('100', '1044');
INSERT INTO `sys_role_menu` VALUES ('100', '1045');
INSERT INTO `sys_role_menu` VALUES ('100', '1046');
INSERT INTO `sys_role_menu` VALUES ('100', '1047');
INSERT INTO `sys_role_menu` VALUES ('100', '1048');
INSERT INTO `sys_role_menu` VALUES ('100', '1049');
INSERT INTO `sys_role_menu` VALUES ('100', '1050');
INSERT INTO `sys_role_menu` VALUES ('100', '1051');
INSERT INTO `sys_role_menu` VALUES ('100', '1052');
INSERT INTO `sys_role_menu` VALUES ('100', '1053');
INSERT INTO `sys_role_menu` VALUES ('100', '1054');
INSERT INTO `sys_role_menu` VALUES ('100', '2204');
INSERT INTO `sys_role_menu` VALUES ('100', '2205');
INSERT INTO `sys_role_menu` VALUES ('100', '2206');
INSERT INTO `sys_role_menu` VALUES ('100', '2207');
INSERT INTO `sys_role_menu` VALUES ('100', '2208');
INSERT INTO `sys_role_menu` VALUES ('100', '2209');
INSERT INTO `sys_role_menu` VALUES ('100', '2210');
INSERT INTO `sys_role_menu` VALUES ('100', '2211');
INSERT INTO `sys_role_menu` VALUES ('100', '2212');
INSERT INTO `sys_role_menu` VALUES ('100', '2213');
INSERT INTO `sys_role_menu` VALUES ('100', '2214');
INSERT INTO `sys_role_menu` VALUES ('100', '2215');
INSERT INTO `sys_role_menu` VALUES ('100', '2216');
INSERT INTO `sys_role_menu` VALUES ('100', '2217');
INSERT INTO `sys_role_menu` VALUES ('100', '2219');
INSERT INTO `sys_role_menu` VALUES ('100', '2223');
INSERT INTO `sys_role_menu` VALUES ('100', '2224');
INSERT INTO `sys_role_menu` VALUES ('100', '2225');
INSERT INTO `sys_role_menu` VALUES ('100', '2226');
INSERT INTO `sys_role_menu` VALUES ('100', '2227');
INSERT INTO `sys_role_menu` VALUES ('100', '2228');
INSERT INTO `sys_role_menu` VALUES ('100', '2229');
INSERT INTO `sys_role_menu` VALUES ('101', '2');
INSERT INTO `sys_role_menu` VALUES ('101', '3');
INSERT INTO `sys_role_menu` VALUES ('101', '109');
INSERT INTO `sys_role_menu` VALUES ('101', '110');
INSERT INTO `sys_role_menu` VALUES ('101', '111');
INSERT INTO `sys_role_menu` VALUES ('101', '112');
INSERT INTO `sys_role_menu` VALUES ('101', '113');
INSERT INTO `sys_role_menu` VALUES ('101', '114');
INSERT INTO `sys_role_menu` VALUES ('101', '115');
INSERT INTO `sys_role_menu` VALUES ('101', '116');
INSERT INTO `sys_role_menu` VALUES ('101', '1046');
INSERT INTO `sys_role_menu` VALUES ('101', '1047');
INSERT INTO `sys_role_menu` VALUES ('101', '1048');
INSERT INTO `sys_role_menu` VALUES ('101', '1049');
INSERT INTO `sys_role_menu` VALUES ('101', '1050');
INSERT INTO `sys_role_menu` VALUES ('101', '1051');
INSERT INTO `sys_role_menu` VALUES ('101', '1052');
INSERT INTO `sys_role_menu` VALUES ('101', '1053');
INSERT INTO `sys_role_menu` VALUES ('101', '1054');
INSERT INTO `sys_role_menu` VALUES ('101', '1055');
INSERT INTO `sys_role_menu` VALUES ('101', '1056');
INSERT INTO `sys_role_menu` VALUES ('101', '1057');
INSERT INTO `sys_role_menu` VALUES ('101', '1058');
INSERT INTO `sys_role_menu` VALUES ('101', '1059');
INSERT INTO `sys_role_menu` VALUES ('101', '1060');
INSERT INTO `sys_role_menu` VALUES ('101', '2096');
INSERT INTO `sys_role_menu` VALUES ('101', '2097');
INSERT INTO `sys_role_menu` VALUES ('101', '2098');
INSERT INTO `sys_role_menu` VALUES ('101', '2099');
INSERT INTO `sys_role_menu` VALUES ('101', '2100');
INSERT INTO `sys_role_menu` VALUES ('101', '2101');
INSERT INTO `sys_role_menu` VALUES ('101', '2102');
INSERT INTO `sys_role_menu` VALUES ('101', '2103');
INSERT INTO `sys_role_menu` VALUES ('101', '2104');
INSERT INTO `sys_role_menu` VALUES ('101', '2105');
INSERT INTO `sys_role_menu` VALUES ('101', '2106');
INSERT INTO `sys_role_menu` VALUES ('101', '2107');
INSERT INTO `sys_role_menu` VALUES ('101', '2108');
INSERT INTO `sys_role_menu` VALUES ('101', '2109');
INSERT INTO `sys_role_menu` VALUES ('101', '2110');
INSERT INTO `sys_role_menu` VALUES ('101', '2111');
INSERT INTO `sys_role_menu` VALUES ('101', '2112');
INSERT INTO `sys_role_menu` VALUES ('101', '2113');
INSERT INTO `sys_role_menu` VALUES ('101', '2114');
INSERT INTO `sys_role_menu` VALUES ('101', '2115');
INSERT INTO `sys_role_menu` VALUES ('101', '2116');
INSERT INTO `sys_role_menu` VALUES ('101', '2117');
INSERT INTO `sys_role_menu` VALUES ('101', '2118');
INSERT INTO `sys_role_menu` VALUES ('101', '2119');
INSERT INTO `sys_role_menu` VALUES ('101', '2120');
INSERT INTO `sys_role_menu` VALUES ('101', '2121');
INSERT INTO `sys_role_menu` VALUES ('101', '2122');
INSERT INTO `sys_role_menu` VALUES ('101', '2123');
INSERT INTO `sys_role_menu` VALUES ('101', '2124');
INSERT INTO `sys_role_menu` VALUES ('101', '2125');
INSERT INTO `sys_role_menu` VALUES ('101', '2126');
INSERT INTO `sys_role_menu` VALUES ('101', '2127');
INSERT INTO `sys_role_menu` VALUES ('101', '2128');
INSERT INTO `sys_role_menu` VALUES ('101', '2129');
INSERT INTO `sys_role_menu` VALUES ('101', '2130');
INSERT INTO `sys_role_menu` VALUES ('101', '2131');
INSERT INTO `sys_role_menu` VALUES ('101', '2132');
INSERT INTO `sys_role_menu` VALUES ('101', '2133');
INSERT INTO `sys_role_menu` VALUES ('101', '2134');
INSERT INTO `sys_role_menu` VALUES ('101', '2135');
INSERT INTO `sys_role_menu` VALUES ('101', '2136');
INSERT INTO `sys_role_menu` VALUES ('101', '2137');
INSERT INTO `sys_role_menu` VALUES ('101', '2138');
INSERT INTO `sys_role_menu` VALUES ('101', '2139');
INSERT INTO `sys_role_menu` VALUES ('101', '2140');
INSERT INTO `sys_role_menu` VALUES ('101', '2141');
INSERT INTO `sys_role_menu` VALUES ('101', '2142');
INSERT INTO `sys_role_menu` VALUES ('101', '2143');
INSERT INTO `sys_role_menu` VALUES ('101', '2144');
INSERT INTO `sys_role_menu` VALUES ('101', '2145');
INSERT INTO `sys_role_menu` VALUES ('101', '2146');
INSERT INTO `sys_role_menu` VALUES ('101', '2147');
INSERT INTO `sys_role_menu` VALUES ('101', '2148');
INSERT INTO `sys_role_menu` VALUES ('101', '2149');
INSERT INTO `sys_role_menu` VALUES ('101', '2150');
INSERT INTO `sys_role_menu` VALUES ('101', '2151');
INSERT INTO `sys_role_menu` VALUES ('101', '2152');
INSERT INTO `sys_role_menu` VALUES ('101', '2153');
INSERT INTO `sys_role_menu` VALUES ('101', '2154');
INSERT INTO `sys_role_menu` VALUES ('101', '2155');
INSERT INTO `sys_role_menu` VALUES ('101', '2156');
INSERT INTO `sys_role_menu` VALUES ('101', '2157');
INSERT INTO `sys_role_menu` VALUES ('101', '2158');
INSERT INTO `sys_role_menu` VALUES ('101', '2159');
INSERT INTO `sys_role_menu` VALUES ('101', '2160');
INSERT INTO `sys_role_menu` VALUES ('101', '2161');
INSERT INTO `sys_role_menu` VALUES ('101', '2162');
INSERT INTO `sys_role_menu` VALUES ('101', '2163');
INSERT INTO `sys_role_menu` VALUES ('101', '2164');
INSERT INTO `sys_role_menu` VALUES ('101', '2165');
INSERT INTO `sys_role_menu` VALUES ('101', '2166');
INSERT INTO `sys_role_menu` VALUES ('101', '2167');
INSERT INTO `sys_role_menu` VALUES ('101', '2168');
INSERT INTO `sys_role_menu` VALUES ('101', '2169');
INSERT INTO `sys_role_menu` VALUES ('101', '2170');
INSERT INTO `sys_role_menu` VALUES ('101', '2171');
INSERT INTO `sys_role_menu` VALUES ('101', '2172');
INSERT INTO `sys_role_menu` VALUES ('101', '2173');
INSERT INTO `sys_role_menu` VALUES ('101', '2174');
INSERT INTO `sys_role_menu` VALUES ('101', '2175');
INSERT INTO `sys_role_menu` VALUES ('101', '2176');
INSERT INTO `sys_role_menu` VALUES ('101', '2177');
INSERT INTO `sys_role_menu` VALUES ('101', '2178');
INSERT INTO `sys_role_menu` VALUES ('101', '2179');
INSERT INTO `sys_role_menu` VALUES ('101', '2180');
INSERT INTO `sys_role_menu` VALUES ('101', '2181');
INSERT INTO `sys_role_menu` VALUES ('101', '2182');
INSERT INTO `sys_role_menu` VALUES ('101', '2183');
INSERT INTO `sys_role_menu` VALUES ('101', '2184');
INSERT INTO `sys_role_menu` VALUES ('101', '2185');
INSERT INTO `sys_role_menu` VALUES ('101', '2186');
INSERT INTO `sys_role_menu` VALUES ('101', '2187');
INSERT INTO `sys_role_menu` VALUES ('101', '2188');
INSERT INTO `sys_role_menu` VALUES ('101', '2189');
INSERT INTO `sys_role_menu` VALUES ('101', '2190');
INSERT INTO `sys_role_menu` VALUES ('101', '2191');
INSERT INTO `sys_role_menu` VALUES ('101', '2192');
INSERT INTO `sys_role_menu` VALUES ('101', '2193');
INSERT INTO `sys_role_menu` VALUES ('101', '2194');
INSERT INTO `sys_role_menu` VALUES ('101', '2195');
INSERT INTO `sys_role_menu` VALUES ('101', '2196');
INSERT INTO `sys_role_menu` VALUES ('101', '2197');
INSERT INTO `sys_role_menu` VALUES ('101', '2198');
INSERT INTO `sys_role_menu` VALUES ('101', '2199');
INSERT INTO `sys_role_menu` VALUES ('101', '2200');
INSERT INTO `sys_role_menu` VALUES ('102', '2');
INSERT INTO `sys_role_menu` VALUES ('102', '3');
INSERT INTO `sys_role_menu` VALUES ('102', '111');
INSERT INTO `sys_role_menu` VALUES ('102', '112');
INSERT INTO `sys_role_menu` VALUES ('102', '113');
INSERT INTO `sys_role_menu` VALUES ('102', '114');
INSERT INTO `sys_role_menu` VALUES ('102', '116');
INSERT INTO `sys_role_menu` VALUES ('102', '2204');
INSERT INTO `sys_role_menu` VALUES ('102', '2205');
INSERT INTO `sys_role_menu` VALUES ('102', '2207');
INSERT INTO `sys_role_menu` VALUES ('102', '2208');
INSERT INTO `sys_role_menu` VALUES ('102', '2213');
INSERT INTO `sys_role_menu` VALUES ('102', '2215');
INSERT INTO `sys_role_menu` VALUES ('103', '2204');
INSERT INTO `sys_role_menu` VALUES ('103', '2206');
INSERT INTO `sys_role_menu` VALUES ('103', '2209');
INSERT INTO `sys_role_menu` VALUES ('103', '2215');
INSERT INTO `sys_role_menu` VALUES ('104', '2204');
INSERT INTO `sys_role_menu` VALUES ('104', '2210');
INSERT INTO `sys_role_menu` VALUES ('104', '2215');
INSERT INTO `sys_role_menu` VALUES ('105', '2204');
INSERT INTO `sys_role_menu` VALUES ('105', '2211');
INSERT INTO `sys_role_menu` VALUES ('105', '2215');
INSERT INTO `sys_role_menu` VALUES ('106', '2204');
INSERT INTO `sys_role_menu` VALUES ('106', '2212');
INSERT INTO `sys_role_menu` VALUES ('106', '2215');
INSERT INTO `sys_role_menu` VALUES ('107', '2204');
INSERT INTO `sys_role_menu` VALUES ('107', '2214');
INSERT INTO `sys_role_menu` VALUES ('107', '2215');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) DEFAULT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '李英奇', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$NTOAz9e2gVuY31uX027Us.M5J8LMvKSqaZ55yrm/4peNgeClwbRbK', '0', '0', '127.0.0.1', '2023-05-25 21:18:31', '1', '2022-06-17 17:20:19.000', null, '2023-05-25 21:18:30.000', '管理员');
INSERT INTO `sys_user` VALUES ('117', '110', 'user1', '张三丰', '00', '', '', '0', '', '$2a$10$NTOAz9e2gVuY31uX027Us.M5J8LMvKSqaZ55yrm/4peNgeClwbRbK', '0', '0', '127.0.0.1', '2023-03-16 13:40:54', '1', '2023-01-05 14:36:41.000', '1', '2023-03-16 13:40:53.000', null);
INSERT INTO `sys_user` VALUES ('119', '111', 'user2', '段誉', '00', '', '13199723800', '0', '', '$2a$10$dzkVICE1GnnITwPxhuIfoue4fEY9HVhm8PuIN5NgAUf5QnrQHXK7u', '0', '0', '', null, '1', '2023-02-23 12:40:28.000', null, null, null);
INSERT INTO `sys_user` VALUES ('120', '112', 'user3', '木婉清', '00', '', '', '1', '', '$2a$10$NxtWNxeLm.CFUZM2PASx3Oz8jh8V6bb6YAl/OJwi3tYsB0y2E91wC', '0', '0', '', null, '1', '2023-02-23 12:42:20.000', null, null, null);
INSERT INTO `sys_user` VALUES ('121', '112', 'user4', '王语嫣', '00', '', '', '0', '', '$2a$10$2Jceyo9UrmSJL.koGLwHkuI4yFmIXWOkYxAx3IfOFo7oWVsSO3F0u', '0', '0', '', null, '1', '2023-02-23 12:44:03.000', null, null, null);
INSERT INTO `sys_user` VALUES ('122', '113', 'user5', '萧峰', '00', '', '', '0', '', '$2a$10$pVrFYMuRfghdIE1MXY1KHeVrH9/6xZzwznYPJpLSOA0fmy0wr9/MK', '0', '0', '', null, '1', '2023-02-23 12:44:43.000', null, null, null);
INSERT INTO `sys_user` VALUES ('123', '112', 'user6', '梅超风', '00', '', '', '0', '', '$2a$10$7Xi624GBQO62GLV0wBNf8.LSd0aLuSoJ8oxvVx3n2go6rAAFYtF9q', '0', '0', '', null, '1', '2023-02-23 12:45:52.000', null, null, null);
INSERT INTO `sys_user` VALUES ('124', '100', 'user', '李某', '00', '', '', '0', '', '$2a$10$0Fq9fduwPJ6WJY11opplAuQsudU/IpvAyg1bcsEhvg.8s9XEhyufC', '0', '0', '127.0.0.1', '2023-02-23 17:46:56', '1', '2023-02-23 13:26:45.000', '1', '2023-02-23 17:46:56.000', null);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('117', '4');
INSERT INTO `sys_user_post` VALUES ('118', '1');
INSERT INTO `sys_user_post` VALUES ('119', '4');
INSERT INTO `sys_user_post` VALUES ('120', '4');
INSERT INTO `sys_user_post` VALUES ('121', '4');
INSERT INTO `sys_user_post` VALUES ('122', '4');
INSERT INTO `sys_user_post` VALUES ('123', '4');
INSERT INTO `sys_user_post` VALUES ('124', '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('113', '100');
INSERT INTO `sys_user_role` VALUES ('114', '100');
INSERT INTO `sys_user_role` VALUES ('117', '102');
INSERT INTO `sys_user_role` VALUES ('118', '100');
INSERT INTO `sys_user_role` VALUES ('119', '103');
INSERT INTO `sys_user_role` VALUES ('120', '104');
INSERT INTO `sys_user_role` VALUES ('121', '105');
INSERT INTO `sys_user_role` VALUES ('122', '106');
INSERT INTO `sys_user_role` VALUES ('123', '107');
INSERT INTO `sys_user_role` VALUES ('124', '100');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for wms_area
-- ----------------------------
DROP TABLE IF EXISTS `wms_area`;
CREATE TABLE `wms_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_no` varchar(20) NOT NULL COMMENT '编号',
  `area_name` varchar(60) NOT NULL COMMENT '名称',
  `warehouse_id` bigint(20) NOT NULL COMMENT '所属仓库ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='库区';

-- ----------------------------
-- Records of wms_area
-- ----------------------------
INSERT INTO `wms_area` VALUES ('2', '1', '1', '1', null, '1', '1', '2022-08-04 11:31:25.475', null, null);
INSERT INTO `wms_area` VALUES ('3', '2', '1', '2', null, '1', '1', '2022-08-04 11:31:40.840', null, null);
INSERT INTO `wms_area` VALUES ('4', '22', '222', '22', '2222', '1', '1', '2022-08-04 11:33:31.133', null, null);
INSERT INTO `wms_area` VALUES ('5', '1', '1', '1', null, '1', '1', '2022-08-04 15:18:04.047', null, null);
INSERT INTO `wms_area` VALUES ('6', '2', '2', '2', null, '1', '1', '2022-08-04 15:18:10.829', null, null);
INSERT INTO `wms_area` VALUES ('7', '1', '2', '2', null, '1', '1', '2022-08-04 16:01:26.000', null, null);
INSERT INTO `wms_area` VALUES ('8', '11', '11', '11', null, '1', '1', '2022-08-04 18:24:36.594', null, null);
INSERT INTO `wms_area` VALUES ('9', '1', '1', '1', null, '1', '1', '2022-08-05 16:24:00.949', null, null);
INSERT INTO `wms_area` VALUES ('10', '2', '2', '2', null, '1', '1', '2022-08-05 16:24:06.854', null, null);
INSERT INTO `wms_area` VALUES ('11', '1', '1', '1', null, '1', '1', '2022-08-05 16:52:10.332', null, null);
INSERT INTO `wms_area` VALUES ('12', '2', '2', '2', null, '1', '1', '2022-08-05 16:52:17.457', null, null);
INSERT INTO `wms_area` VALUES ('13', 'SJ-1', '苏州西', '1', 'suzhouxi', '0', '1', '2022-08-05 17:00:56.000', '1', '2023-01-04 18:54:44.570');
INSERT INTO `wms_area` VALUES ('14', 'SJ-1', '上海南', '3', null, '0', '1', '2022-08-09 11:05:53.000', '1', '2023-01-04 18:55:04.127');
INSERT INTO `wms_area` VALUES ('15', '877', '苏州东', '1', null, '0', '1', '2022-08-09 11:07:10.000', '115', '2022-11-07 11:23:36.082');
INSERT INTO `wms_area` VALUES ('16', 'shx', '上海西', '3', null, '0', '1', '2022-08-09 16:49:57.000', '115', '2022-11-07 11:23:46.175');
INSERT INTO `wms_area` VALUES ('17', '23', '南京北', '2', null, '0', '1', '2022-08-09 16:50:07.892', null, null);
INSERT INTO `wms_area` VALUES ('18', '45', '南京西', '2', null, '0', '1', '2022-08-09 16:50:19.181', null, null);
INSERT INTO `wms_area` VALUES ('19', '111', '111', '5', '111', '1', '1', '2022-08-29 12:09:38.000', '1', '2022-08-29 12:09:45.421');
INSERT INTO `wms_area` VALUES ('20', 'sz11', '苏州中', '1', null, '1', '1', '2022-11-01 14:15:05.000', '115', '2022-11-07 11:24:37.509');
INSERT INTO `wms_area` VALUES ('22', 'test1102', 'test', '1', null, '1', null, '2022-11-02 11:28:08.857', null, null);
INSERT INTO `wms_area` VALUES ('23', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 13:52:34.796', null, null);
INSERT INTO `wms_area` VALUES ('24', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 13:55:24.365', null, null);
INSERT INTO `wms_area` VALUES ('25', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 13:59:14.964', null, null);
INSERT INTO `wms_area` VALUES ('26', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 14:10:05.488', null, null);
INSERT INTO `wms_area` VALUES ('35', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 14:31:49.176', null, null);
INSERT INTO `wms_area` VALUES ('36', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 14:31:49.176', null, null);
INSERT INTO `wms_area` VALUES ('39', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 14:58:27.596', null, null);
INSERT INTO `wms_area` VALUES ('40', 'test1102', 'test2', '1', null, '1', null, '2022-11-02 14:58:27.596', null, null);
INSERT INTO `wms_area` VALUES ('41', 'nj', '南京北', '2', null, '0', '1', '2023-02-06 10:42:14.243', null, null);
INSERT INTO `wms_area` VALUES ('42', 'bj', '北京南', '14', null, '0', '1', '2023-02-06 10:42:35.189', null, null);
INSERT INTO `wms_area` VALUES ('43', 'bj2', '北京北', '14', null, '0', '1', '2023-02-06 10:42:44.481', null, null);
INSERT INTO `wms_area` VALUES ('44', 'jb3', '北京西', '14', null, '0', '1', '2023-02-06 10:42:56.469', null, null);
INSERT INTO `wms_area` VALUES ('45', 'sh3', '上海北', '3', null, '0', '1', '2023-02-06 10:43:13.145', null, null);

-- ----------------------------
-- Table structure for wms_carrier
-- ----------------------------
DROP TABLE IF EXISTS `wms_carrier`;
CREATE TABLE `wms_carrier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `carrier_no` varchar(20) NOT NULL COMMENT '编号',
  `carrier_name` varchar(60) NOT NULL COMMENT '名称',
  `address` varchar(80) DEFAULT NULL COMMENT '地址',
  `mobile` varchar(13) DEFAULT NULL COMMENT '手机号',
  `tel` varchar(13) DEFAULT NULL COMMENT '座机号',
  `contact` varchar(30) DEFAULT NULL COMMENT '联系人',
  `level` varchar(10) DEFAULT NULL COMMENT '级别',
  `email` varchar(50) DEFAULT NULL COMMENT 'Email',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='承运商';

-- ----------------------------
-- Records of wms_carrier
-- ----------------------------
INSERT INTO `wms_carrier` VALUES ('1', 'sf', '顺丰快运', '上海', '18010008888', '0512-52251234', '李国强', '第一级', '550798972@qq.com', '', '0', '1', '2022-07-29 18:04:11.000', '1', '2023-01-04 18:57:44.144');

-- ----------------------------
-- Table structure for wms_customer
-- ----------------------------
DROP TABLE IF EXISTS `wms_customer`;
CREATE TABLE `wms_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_no` varchar(20) NOT NULL COMMENT '编号',
  `customer_name` varchar(60) NOT NULL COMMENT '名称',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `mobile` varchar(13) DEFAULT NULL COMMENT '手机号',
  `tel` varchar(13) DEFAULT NULL COMMENT '座机号',
  `customer_person` varchar(30) DEFAULT NULL COMMENT '联系人',
  `customer_level` varchar(10) DEFAULT NULL COMMENT '级别',
  `email` varchar(50) DEFAULT NULL COMMENT 'Email',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='客户';

-- ----------------------------
-- Records of wms_customer
-- ----------------------------
INSERT INTO `wms_customer` VALUES ('1', '1', '1', '1', '1', '1', '1', null, null, null, '1', '1', '2022-07-29 18:16:17.761', null, null);
INSERT INTO `wms_customer` VALUES ('2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2022-08-04 15:28:11.436', null, null);
INSERT INTO `wms_customer` VALUES ('3', '1', '1', null, null, null, null, null, null, '1', '1', '1', '2022-08-04 18:24:50.963', null, null);
INSERT INTO `wms_customer` VALUES ('4', '1', '华大有限公司', '星湖街328号', '17156568888', '0512-12345678', '李先生', '1', null, null, '0', '1', '2022-08-11 21:14:54.000', '1', '2023-01-04 18:56:58.988');
INSERT INTO `wms_customer` VALUES ('5', '111', '1111', null, null, null, null, null, null, null, '1', '1', '2022-08-11 21:32:58.323', null, null);
INSERT INTO `wms_customer` VALUES ('6', '1111', '1111', null, null, null, null, null, null, null, '1', null, '2022-08-13 13:52:47.891', null, null);
INSERT INTO `wms_customer` VALUES ('7', '1111', '1111', null, null, null, null, null, null, null, '1', null, '2022-08-13 13:52:48.793', null, null);
INSERT INTO `wms_customer` VALUES ('8', 'sss', 'sss', null, null, null, null, null, null, null, '1', null, '2022-08-13 13:54:10.586', null, null);
INSERT INTO `wms_customer` VALUES ('9', '11', '111', null, null, null, null, null, null, null, '1', '1', '2022-08-13 13:57:05.004', null, null);

-- ----------------------------
-- Table structure for wms_delivery
-- ----------------------------
DROP TABLE IF EXISTS `wms_delivery`;
CREATE TABLE `wms_delivery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shipment_order_id` bigint(20) DEFAULT NULL COMMENT '出库单主表Id',
  `carrier_id` bigint(20) DEFAULT NULL COMMENT '承运商Id',
  `delivery_date` datetime(3) DEFAULT NULL COMMENT '发货日期',
  `tracking_no` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='发货记录';

-- ----------------------------
-- Records of wms_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for wms_inventory
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory`;
CREATE TABLE `wms_inventory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) DEFAULT NULL COMMENT '物料ID',
  `rack_id` bigint(20) DEFAULT NULL COMMENT '货架id',
  `quantity` decimal(20,2) DEFAULT NULL COMMENT '库存',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '所属仓库',
  `area_id` bigint(20) DEFAULT NULL COMMENT '所属库区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='库存';

-- ----------------------------
-- Records of wms_inventory
-- ----------------------------
INSERT INTO `wms_inventory` VALUES ('1', '1', '1', '19.00', '1', '0', null, null, '1', '2022-10-10 23:15:28.499', '1', '1');
INSERT INTO `wms_inventory` VALUES ('2', '2', null, '3.00', null, '1', null, null, null, null, null, null);
INSERT INTO `wms_inventory` VALUES ('3', '2', null, '1.00', null, '1', null, null, null, null, null, null);
INSERT INTO `wms_inventory` VALUES ('4', '1', '5', '49.00', null, '0', '1', '2022-10-10 23:05:13.969', '1', '2023-01-03 20:24:49.775', '1', '13');
INSERT INTO `wms_inventory` VALUES ('5', '2', '1', '33.00', null, '0', '1', '2022-10-10 23:05:13.969', '1', '2022-11-02 17:50:02.454', '1', '13');
INSERT INTO `wms_inventory` VALUES ('7', '1', '1', '5.00', null, '0', '1', '2022-10-24 18:05:17.538', '1', '2022-11-02 17:39:54.499', '1', '13');
INSERT INTO `wms_inventory` VALUES ('8', '2', '6', '18.00', null, '0', '1', '2022-11-02 17:25:32.344', '1', '2022-11-02 17:50:02.714', '2', '18');
INSERT INTO `wms_inventory` VALUES ('9', '1', null, '2.00', null, '0', '1', '2022-11-02 17:25:32.344', null, null, '4', null);
INSERT INTO `wms_inventory` VALUES ('14', '2', null, '1.00', null, '0', '1', '2022-11-03 17:40:30.566', null, null, '2', '18');
INSERT INTO `wms_inventory` VALUES ('15', '2', null, '2.00', null, '0', '1', '2022-11-03 17:43:44.004', '1', '2022-11-03 17:48:28.148', '3', '16');
INSERT INTO `wms_inventory` VALUES ('16', '1', '7', '1.00', null, '0', '115', '2022-11-07 08:25:36.418', null, null, '3', '16');
INSERT INTO `wms_inventory` VALUES ('17', '1', '6', '1.00', null, '0', '1', '2023-01-03 20:24:49.789', null, null, '2', '18');
INSERT INTO `wms_inventory` VALUES ('18', '1', null, '1.00', null, '0', '1', '2023-01-05 18:28:28.662', null, null, '1', '13');
INSERT INTO `wms_inventory` VALUES ('19', '1', null, '1.00', null, '0', '1', '2023-01-05 18:28:29.881', null, null, '1', '13');

-- ----------------------------
-- Table structure for wms_inventory_history
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_history`;
CREATE TABLE `wms_inventory_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) DEFAULT NULL COMMENT '操作id（出库、入库、库存移动表单id）',
  `form_type` int(11) DEFAULT NULL COMMENT '操作类型',
  `item_id` bigint(20) DEFAULT NULL COMMENT '物料ID',
  `rack_id` bigint(20) DEFAULT NULL COMMENT '货架id',
  `quantity` decimal(20,2) DEFAULT NULL COMMENT '库存变化',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '所属仓库',
  `area_id` bigint(20) DEFAULT NULL COMMENT '所属库区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='库存记录';

-- ----------------------------
-- Records of wms_inventory_history
-- ----------------------------
INSERT INTO `wms_inventory_history` VALUES ('18', '9', '13', '1', '1', '9.00', null, '0', '1', '2022-10-24 18:48:00.020', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('19', '9', '13', '1', '1', '18.00', null, '0', '1', '2022-10-24 18:49:30.030', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('20', '10', '12', '1', '1', '1.00', null, '0', '1', '2022-10-24 18:54:54.774', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('21', '13', '1', '1', '1', '7.00', null, '0', '1', '2022-10-31 22:08:12.343', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('22', '13', '1', '2', '5', '1.00', null, '0', '1', '2022-10-31 22:10:22.774', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('23', '14', '1', '1', '1', '1.00', null, '0', '1', '2022-11-01 15:44:15.883', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('24', '4', '22', '2', '6', '2.00', null, '0', '1', '2022-11-02 17:25:28.225', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('25', '4', '22', '1', null, '2.00', null, '0', '1', '2022-11-02 17:25:28.225', null, null, '4', null);
INSERT INTO `wms_inventory_history` VALUES ('26', '4', '21', '2', '1', '2.00', null, '0', '1', '2022-11-02 17:25:28.225', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('27', '4', '21', '1', '1', '2.00', null, '0', '1', '2022-11-02 17:25:28.225', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('28', '4', '21', '2', '1', '3.00', null, '0', '1', '2022-11-02 17:28:45.483', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('29', '4', '21', '1', '1', '3.00', null, '0', '1', '2022-11-02 17:28:45.483', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('30', '4', '22', '2', '6', '3.00', null, '0', '1', '2022-11-02 17:28:45.483', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('31', '4', '22', '1', null, '3.00', null, '0', '1', '2022-11-02 17:28:45.483', null, null, '4', null);
INSERT INTO `wms_inventory_history` VALUES ('32', '4', '21', '2', '1', '5.00', null, '0', '1', '2022-11-02 17:30:35.124', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('33', '4', '21', '1', '1', '5.00', null, '0', '1', '2022-11-02 17:30:35.124', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('34', '4', '22', '2', '6', '5.00', null, '0', '1', '2022-11-02 17:30:35.124', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('35', '4', '22', '1', null, '5.00', null, '0', '1', '2022-11-02 17:30:35.124', null, null, '4', null);
INSERT INTO `wms_inventory_history` VALUES ('36', '4', '21', '2', '1', '1.00', null, '0', '1', '2022-11-02 17:34:50.453', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('37', '4', '21', '1', '1', '1.00', null, '0', '1', '2022-11-02 17:34:50.453', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('38', '4', '22', '2', '6', '1.00', null, '0', '1', '2022-11-02 17:34:50.453', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('39', '4', '22', '1', null, '1.00', null, '0', '1', '2022-11-02 17:34:50.453', null, null, '4', null);
INSERT INTO `wms_inventory_history` VALUES ('40', '4', '21', '2', '1', '1.00', null, '0', '1', '2022-11-02 17:39:48.448', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('41', '4', '21', '1', '1', '1.00', null, '0', '1', '2022-11-02 17:39:48.448', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('42', '4', '22', '2', '6', '1.00', null, '0', '1', '2022-11-02 17:39:48.448', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('43', '4', '22', '1', null, '1.00', null, '0', '1', '2022-11-02 17:39:48.448', null, null, '4', null);
INSERT INTO `wms_inventory_history` VALUES ('44', '4', '21', '2', '1', '9.00', null, '0', '1', '2022-11-02 17:50:02.308', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('45', '4', '22', '2', '6', '9.00', null, '0', '1', '2022-11-02 17:50:02.308', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('46', '14', '1', '2', null, '1.00', null, '0', '1', '2022-11-03 17:40:30.449', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('47', '13', '1', '2', null, '1.00', null, '0', '1', '2022-11-03 17:43:43.910', null, null, '3', '16');
INSERT INTO `wms_inventory_history` VALUES ('48', '13', '1', '2', null, '1.00', null, '0', '1', '2022-11-03 17:48:24.811', null, null, '3', '16');
INSERT INTO `wms_inventory_history` VALUES ('49', '16', '1', '1', '7', '1.00', null, '0', '115', '2022-11-07 08:25:36.358', null, null, '3', '16');
INSERT INTO `wms_inventory_history` VALUES ('50', '5', '21', '1', '5', '1.00', null, '0', '1', '2023-01-03 20:24:49.754', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('51', '5', '22', '1', '6', '1.00', null, '0', '1', '2023-01-03 20:24:49.754', null, null, '2', '18');
INSERT INTO `wms_inventory_history` VALUES ('52', '18', '1', '1', null, '1.00', null, '0', '1', '2023-01-05 18:28:24.074', null, null, '1', '13');
INSERT INTO `wms_inventory_history` VALUES ('53', '18', '1', '1', null, '1.00', null, '0', '1', '2023-01-05 18:28:28.686', null, null, '1', '13');

-- ----------------------------
-- Table structure for wms_inventory_movement
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_movement`;
CREATE TABLE `wms_inventory_movement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventory_movement_no` varchar(30) DEFAULT NULL COMMENT '编号',
  `source_rack_id` bigint(20) DEFAULT NULL COMMENT '原货架Id',
  `target_rack_id` bigint(20) DEFAULT NULL COMMENT '目标货架',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `check_status` tinyint(4) DEFAULT NULL COMMENT '审核状态',
  `check_user_id` bigint(20) DEFAULT NULL COMMENT '审核人',
  `check_time` datetime(3) DEFAULT NULL COMMENT '审核时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='库存移动';

-- ----------------------------
-- Records of wms_inventory_movement
-- ----------------------------
INSERT INTO `wms_inventory_movement` VALUES ('4', 'M-2022-11-02-162844', null, null, '22', null, null, null, '测试', '0', '1', '2022-11-02 16:38:04.000', '1', '2023-01-03 20:23:46.339');
INSERT INTO `wms_inventory_movement` VALUES ('5', 'M-2023-01-03-202405', null, null, '23', null, null, null, null, '0', '1', '2023-01-03 20:24:27.000', '1', '2023-01-03 20:24:49.806');

-- ----------------------------
-- Table structure for wms_inventory_movement_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_movement_detail`;
CREATE TABLE `wms_inventory_movement_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventory_movement_id` bigint(20) DEFAULT NULL COMMENT '库存移动Id',
  `item_id` bigint(20) DEFAULT NULL COMMENT '物料',
  `plan_quantity` decimal(20,2) DEFAULT NULL COMMENT '计划数量',
  `real_quantity` decimal(20,2) DEFAULT NULL COMMENT '实际数量',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  `source_rack_id` bigint(20) DEFAULT NULL COMMENT '源货架',
  `source_warehouse_id` bigint(20) DEFAULT NULL COMMENT '源仓库',
  `source_area_id` bigint(20) DEFAULT NULL COMMENT '源库区',
  `move_status` tinyint(4) DEFAULT NULL COMMENT '移库状态',
  `target_rack_id` bigint(20) DEFAULT NULL COMMENT '目标货架',
  `target_warehouse_id` bigint(20) DEFAULT NULL COMMENT '目标仓库',
  `target_area_id` bigint(20) DEFAULT NULL COMMENT '目标库区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='库存移动详情';

-- ----------------------------
-- Records of wms_inventory_movement_detail
-- ----------------------------
INSERT INTO `wms_inventory_movement_detail` VALUES ('26', '4', '2', '20.00', '21.00', '0', null, null, null, null, null, '1', '1', '13', '22', '6', '2', '18');
INSERT INTO `wms_inventory_movement_detail` VALUES ('27', '4', '1', '10.00', '12.00', '0', null, null, null, null, null, '1', '1', '13', '22', null, '4', null);
INSERT INTO `wms_inventory_movement_detail` VALUES ('29', '5', '1', '1.00', '1.00', '0', null, null, null, null, null, '5', '1', '13', '23', '6', '2', '18');

-- ----------------------------
-- Table structure for wms_item
-- ----------------------------
DROP TABLE IF EXISTS `wms_item`;
CREATE TABLE `wms_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_no` varchar(20) NOT NULL COMMENT '编号',
  `item_name` varchar(60) NOT NULL COMMENT '名称',
  `item_type` varchar(20) DEFAULT NULL COMMENT '分类',
  `unit` varchar(20) DEFAULT NULL COMMENT '单位类别',
  `rack_id` bigint(20) DEFAULT NULL COMMENT '所属货架',
  `area_id` bigint(20) DEFAULT NULL COMMENT '所属库区',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '所属仓库',
  `quantity` decimal(20,2) DEFAULT NULL COMMENT '安全库存',
  `expiry_date` datetime(3) DEFAULT NULL COMMENT '有效期',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料';

-- ----------------------------
-- Records of wms_item
-- ----------------------------
INSERT INTO `wms_item` VALUES ('1', 'yejingpin', '红木', '半成品', '个', null, '13', '1', '100000.00', null, '0', null, '1', '2022-08-10 11:31:24.000', '1', '2023-04-02 12:09:10.992');
INSERT INTO `wms_item` VALUES ('2', 'shoujike', '衣物', null, '个', null, '18', '2', '300.00', null, '0', '222', '1', '2022-08-10 11:32:50.000', '1', '2023-04-02 12:09:22.679');
INSERT INTO `wms_item` VALUES ('3', '1', '1', '原物料', '1', null, null, null, '22.00', '2023-06-23 00:00:00.000', '0', '12', '1', '2023-05-21 20:53:35.378', null, null);

-- ----------------------------
-- Table structure for wms_rack
-- ----------------------------
DROP TABLE IF EXISTS `wms_rack`;
CREATE TABLE `wms_rack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rack_no` varchar(20) NOT NULL COMMENT '编号',
  `rack_name` varchar(60) DEFAULT NULL COMMENT '名称',
  `area_id` bigint(20) NOT NULL COMMENT '所属库区',
  `warehouse_id` bigint(20) NOT NULL COMMENT '所属仓库',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='货架';

-- ----------------------------
-- Records of wms_rack
-- ----------------------------
INSERT INTO `wms_rack` VALUES ('1', '1', '苏州东1', '17', '2', null, '0', '1', '2022-08-09 11:50:30.000', '1', '2022-11-04 22:55:31.231');
INSERT INTO `wms_rack` VALUES ('2', '23', 'sd', '14', '2', null, '1', '1', '2022-08-09 13:54:03.000', null, null);
INSERT INTO `wms_rack` VALUES ('3', '23', '45', '13', '1', null, '1', '1', '2022-08-09 15:33:18.000', null, null);
INSERT INTO `wms_rack` VALUES ('4', '23', '南京北1', '17', '2', null, '0', '1', '2022-08-09 15:37:15.000', null, null);
INSERT INTO `wms_rack` VALUES ('5', '22', '苏州东2', '13', '1', null, '0', '1', '2022-08-10 10:13:02.000', null, null);
INSERT INTO `wms_rack` VALUES ('6', '12', '上海南3', '18', '2', null, '0', '1', '2022-08-10 10:13:14.000', '1', '2022-10-09 23:02:31.322');
INSERT INTO `wms_rack` VALUES ('7', '111', null, '16', '3', null, '0', '1', '2022-10-09 23:44:11.544', null, null);

-- ----------------------------
-- Table structure for wms_receipt_order
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_order`;
CREATE TABLE `wms_receipt_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receipt_order_no` varchar(32) DEFAULT NULL COMMENT '入库单号',
  `receipt_order_type` int(11) DEFAULT NULL COMMENT '入库类型',
  `supplier_id` bigint(20) DEFAULT NULL COMMENT '供应商',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `receipt_order_status` tinyint(4) DEFAULT NULL COMMENT '入库状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='入库单';

-- ----------------------------
-- Records of wms_receipt_order
-- ----------------------------
INSERT INTO `wms_receipt_order` VALUES ('1', '1', '3', '1', '112', '0', '222', '1', null, '2022-08-13 13:51:29.000', '1', '2022-09-07 16:33:49.108');
INSERT INTO `wms_receipt_order` VALUES ('2', null, '1', '11', '11', '0', null, '1', '1', '2022-08-23 17:37:34.232', null, null);
INSERT INTO `wms_receipt_order` VALUES ('3', null, '1', '1', 'q', '0', null, '1', '1', '2022-08-30 19:36:47.983', null, null);
INSERT INTO `wms_receipt_order` VALUES ('4', null, '3', null, '1111', '0', null, '1', '1', '2022-08-30 19:37:30.517', null, null);
INSERT INTO `wms_receipt_order` VALUES ('5', 'R-20220901194301-2303', '1', '1', '20220901-1234234123423', '0', '采购入库', '0', '1', '2022-09-01 19:43:56.000', '115', '2022-11-06 00:16:48.482');
INSERT INTO `wms_receipt_order` VALUES ('6', 'R-20220901194936-0377', '1', '1', '20220901-15645132132', '0', '采购', '0', '1', '2022-09-01 19:50:04.000', '115', '2022-11-06 00:16:52.436');
INSERT INTO `wms_receipt_order` VALUES ('7', 'R-20220901200200-7813', '1', '1', '20220901-12346598321354', '0', '测试2', '0', '1', '2022-09-01 20:03:35.000', '1', '2023-01-05 18:12:34.654');
INSERT INTO `wms_receipt_order` VALUES ('8', 'R-20220901200359-3039', '1', '1', '20220901-123456789', '2', 'test', '0', '1', '2022-09-01 20:04:22.000', '1', '2022-10-10 10:55:28.806');
INSERT INTO `wms_receipt_order` VALUES ('9', 'R-2022-09-14-112215', '2', '1', '111222', '2', '11dfasdfdasfsdf中文', '0', '1', '2022-09-14 11:23:14.000', '1', '2022-10-09 15:13:27.901');
INSERT INTO `wms_receipt_order` VALUES ('10', 'R-2022-10-10-162014', '1', '1', '1', '0', '2', '1', '1', '2022-10-10 16:20:22.282', null, null);
INSERT INTO `wms_receipt_order` VALUES ('11', 'R-2022-10-10-220001', '1', '1', '20221010-1', '2', '测试没有物料', '1', '1', '2022-10-10 22:00:24.000', '1', '2022-10-10 22:52:53.910');
INSERT INTO `wms_receipt_order` VALUES ('12', 'R-2022-10-10-225306', '1', '1', '20221010-2', '2', '测试入库', '0', '1', '2022-10-10 22:53:34.000', '1', '2022-10-10 23:05:14.209');
INSERT INTO `wms_receipt_order` VALUES ('13', 'R-2022-10-10-231339', '1', '2', '20221010-3', '2', null, '0', '1', '2022-10-10 23:14:04.000', '1', '2022-11-03 17:48:36.779');
INSERT INTO `wms_receipt_order` VALUES ('14', 'R-2022-10-20-143634', '1', null, null, '3', null, '0', '1', '2022-10-20 14:37:18.000', '1', '2022-11-03 17:40:30.995');
INSERT INTO `wms_receipt_order` VALUES ('15', 'R-2022-11-06-155158', '1', '2', '1', '0', '22311', '0', '115', '2022-11-06 15:52:22.000', '1', '2023-01-06 18:44:48.515');
INSERT INTO `wms_receipt_order` VALUES ('16', 'R-2022-11-06-210843', '1', '2', '1111', '2', '1111', '0', '115', '2022-11-06 21:09:18.000', '115', '2022-11-07 08:25:36.632');
INSERT INTO `wms_receipt_order` VALUES ('17', 'R-2022-11-07-082418', '1', '2', null, '0', null, '1', '115', '2022-11-07 08:24:52.146', null, null);
INSERT INTO `wms_receipt_order` VALUES ('18', 'R-2023-01-05-182657', '1', '1', '111', '2', '222231', '0', '1', '2023-01-05 18:27:09.000', '1', '2023-01-05 18:28:29.906');

-- ----------------------------
-- Table structure for wms_receipt_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_order_detail`;
CREATE TABLE `wms_receipt_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receipt_order_id` bigint(20) DEFAULT NULL COMMENT '入库单号',
  `item_id` bigint(20) DEFAULT NULL COMMENT '物料',
  `plan_quantity` decimal(20,2) DEFAULT NULL COMMENT '计划数量',
  `real_quantity` decimal(20,2) DEFAULT NULL COMMENT '实际数量',
  `rack_id` bigint(20) DEFAULT NULL COMMENT '所属货架',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '所属仓库',
  `area_id` bigint(20) DEFAULT NULL COMMENT '所属库区',
  `receipt_order_status` tinyint(4) DEFAULT NULL COMMENT '入库状态',
  `total_money` decimal(20,0) DEFAULT '0' COMMENT '入库单总金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='入库单详情';

-- ----------------------------
-- Records of wms_receipt_order_detail
-- ----------------------------
INSERT INTO `wms_receipt_order_detail` VALUES ('184', '9', '1', '1000.00', '10.00', null, '0', null, null, null, null, null, '1', '13', '3', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('185', '9', '2', '1000.00', '1.00', null, '0', null, null, null, null, null, '1', '13', '2', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('190', '8', '1', '200.00', '20.00', null, '0', null, null, null, null, null, null, null, '2', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('191', '8', '2', '200.00', '1.00', null, '0', null, null, null, null, null, null, null, '0', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('204', '11', '1', '15.00', '14.00', '1', '0', null, null, null, null, null, '1', '13', '2', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('205', '11', '2', '15.00', '14.00', '6', '0', null, null, null, null, null, '2', '18', '2', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('218', '12', '1', '10.00', '3.00', '5', '0', null, null, null, null, null, '1', '13', '2', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('219', '12', '2', '10.00', '3.00', '1', '0', null, null, null, null, null, '1', '13', '2', '100');
INSERT INTO `wms_receipt_order_detail` VALUES ('242', '14', '1', '1.00', '1.00', '1', '0', null, null, null, null, null, '1', '13', '3', '3000');
INSERT INTO `wms_receipt_order_detail` VALUES ('243', '14', '2', '1.00', '1.00', null, '0', null, null, null, null, null, '2', '18', '3', '30000');
INSERT INTO `wms_receipt_order_detail` VALUES ('248', '13', '1', '10.00', '10.00', '1', '0', null, null, null, null, null, '1', '13', '2', '330000');
INSERT INTO `wms_receipt_order_detail` VALUES ('249', '13', '2', '10.00', '6.00', null, '0', null, null, null, null, null, '3', '16', '2', '333000');
INSERT INTO `wms_receipt_order_detail` VALUES ('256', '16', '1', '1.00', '1.00', '7', '0', 'haha', null, null, null, null, '3', '16', '2', '300');
INSERT INTO `wms_receipt_order_detail` VALUES ('260', '7', '1', '10000.00', null, null, '0', null, null, null, null, null, '1', null, '0', '0');
INSERT INTO `wms_receipt_order_detail` VALUES ('261', '7', '2', '10000.00', null, null, '0', null, null, null, null, null, '1', null, '0', '0');
INSERT INTO `wms_receipt_order_detail` VALUES ('269', '18', '1', '2.00', '1.00', null, '0', null, null, null, null, null, '1', '13', '2', '0');
INSERT INTO `wms_receipt_order_detail` VALUES ('270', '15', '1', '2.00', '1.00', null, '0', null, null, null, null, null, '4', null, '0', '0');

-- ----------------------------
-- Table structure for wms_shipment_order
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_order`;
CREATE TABLE `wms_shipment_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shipment_order_no` varchar(22) DEFAULT NULL COMMENT '出库单号，系统自动生成',
  `shipment_order_type` int(11) DEFAULT NULL COMMENT '出库类型',
  `order_no` varchar(50) DEFAULT NULL COMMENT '出库订单',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '客户',
  `shipment_order_status` tinyint(4) DEFAULT NULL COMMENT '出库单状态',
  `check_status` tinyint(4) DEFAULT NULL COMMENT '审核状态',
  `check_user_id` bigint(20) DEFAULT NULL COMMENT '审核人',
  `check_time` datetime(3) DEFAULT NULL COMMENT '审核时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出库单';

-- ----------------------------
-- Records of wms_shipment_order
-- ----------------------------
INSERT INTO `wms_shipment_order` VALUES ('7', 'E-2022-10-20-181904', '11', '2323123123123', '5', '11', null, null, null, '2swe 2e213213213', '1', '1', '2022-10-20 18:19:48.221', null, null);
INSERT INTO `wms_shipment_order` VALUES ('8', 'E-2022-10-20-183635', '12', '43432c432432432', '4', '11', null, null, null, 'erewrc erfewrewrewrewr ', '1', '1', '2022-10-20 18:37:06.000', '1', '2022-10-20 18:38:39.825');
INSERT INTO `wms_shipment_order` VALUES ('9', 'E-2022-10-20-183853', '13', 'r43534cerfrev235435435', '4', '13', null, null, null, 'rdter v retertre terter ', '0', '1', '2022-10-20 18:39:20.000', '1', '2022-10-24 18:49:58.052');
INSERT INTO `wms_shipment_order` VALUES ('10', 'E-2022-10-24-185155', '12', '4332423432', '4', '12', null, null, null, '323', '0', '1', '2022-10-24 18:52:18.000', '1', '2023-01-05 19:31:33.782');
INSERT INTO `wms_shipment_order` VALUES ('11', 'E-2022-10-28-105943', '12', '23323213213', '5', '11', null, null, null, 'efwejifsdknskd nfd多方面克里斯丁3', '0', '1', '2022-10-28 11:00:05.000', '1', '2023-01-05 18:10:55.436');

-- ----------------------------
-- Table structure for wms_shipment_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_order_detail`;
CREATE TABLE `wms_shipment_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shipment_order_id` bigint(20) DEFAULT NULL COMMENT '出库单',
  `item_id` bigint(20) DEFAULT NULL COMMENT '物料',
  `plan_quantity` decimal(20,2) DEFAULT NULL COMMENT '计划数量',
  `real_quantity` decimal(20,2) DEFAULT NULL COMMENT '实际数量',
  `rack_id` bigint(20) DEFAULT NULL COMMENT '货架',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '所属仓库',
  `area_id` bigint(20) DEFAULT NULL COMMENT '所属库区',
  `shipment_order_status` tinyint(4) DEFAULT NULL COMMENT '出库状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出库单详情';

-- ----------------------------
-- Records of wms_shipment_order_detail
-- ----------------------------
INSERT INTO `wms_shipment_order_detail` VALUES ('1', '7', '1', '20.00', null, null, '0', null, null, null, null, null, '3', '14', '11');
INSERT INTO `wms_shipment_order_detail` VALUES ('2', '7', '2', '101.00', null, null, '0', null, null, null, null, null, '7', null, '11');
INSERT INTO `wms_shipment_order_detail` VALUES ('5', '8', '1', '15.00', null, '1', '0', null, null, null, null, null, '1', '13', '0');
INSERT INTO `wms_shipment_order_detail` VALUES ('6', '8', '2', '200.00', null, null, '0', null, null, null, null, null, '3', '14', '0');
INSERT INTO `wms_shipment_order_detail` VALUES ('16', '9', '1', '40.00', '40.00', '1', '0', null, null, null, null, null, '1', '13', '13');
INSERT INTO `wms_shipment_order_detail` VALUES ('25', '11', '1', '11.00', null, null, '0', null, null, null, null, null, '1', '15', '11');
INSERT INTO `wms_shipment_order_detail` VALUES ('26', '11', '2', '22.00', null, null, '0', null, null, null, null, null, '4', null, '11');
INSERT INTO `wms_shipment_order_detail` VALUES ('27', '10', '1', '20.00', '1.00', '1', '0', null, null, null, null, null, '1', '13', '12');
INSERT INTO `wms_shipment_order_detail` VALUES ('28', '10', '2', '40.00', '1.00', '4', '0', null, null, null, null, null, '2', '17', '11');

-- ----------------------------
-- Table structure for wms_supplier
-- ----------------------------
DROP TABLE IF EXISTS `wms_supplier`;
CREATE TABLE `wms_supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier_no` varchar(20) NOT NULL COMMENT '编号',
  `supplier_name` varchar(60) NOT NULL COMMENT '名称',
  `address` varchar(80) DEFAULT NULL COMMENT '地址',
  `mobile_no` varchar(13) DEFAULT NULL COMMENT '手机号',
  `tel_no` varchar(13) DEFAULT NULL COMMENT '座机号',
  `contact` varchar(30) DEFAULT NULL COMMENT '联系人',
  `level` varchar(10) DEFAULT NULL COMMENT '级别',
  `email` varchar(50) DEFAULT NULL COMMENT 'Email',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='供应商';

-- ----------------------------
-- Records of wms_supplier
-- ----------------------------
INSERT INTO `wms_supplier` VALUES ('1', '2', 'test1', null, null, null, null, '第一级', null, null, '0', '1', '2022-08-19 09:08:03.000', '1', '2023-04-12 20:59:53.279');
INSERT INTO `wms_supplier` VALUES ('2', '1', 'test3', null, null, null, null, '第一级', null, null, '0', '1', '2022-09-07 17:15:38.000', '1', '2023-04-12 20:59:50.213');
INSERT INTO `wms_supplier` VALUES ('3', '3', 'test2', null, null, null, null, null, null, null, '0', '1', '2022-09-07 17:15:49.000', '1', '2023-04-12 20:59:56.766');

-- ----------------------------
-- Table structure for wms_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `wms_warehouse`;
CREATE TABLE `wms_warehouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `warehouse_no` varchar(20) NOT NULL COMMENT '编号',
  `warehouse_name` varchar(50) NOT NULL COMMENT '名称',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='仓库';

-- ----------------------------
-- Records of wms_warehouse
-- ----------------------------
INSERT INTO `wms_warehouse` VALUES ('1', 'SZ', '苏州', '0', '创意产业园', '1', '2022-08-03 18:15:44.000', '1', '2023-01-04 18:53:36.895');
INSERT INTO `wms_warehouse` VALUES ('2', 'NJ', '南京', '0', '中央门1号', '1', '2022-08-08 11:06:22.000', '1', '2023-01-04 18:53:49.550');
INSERT INTO `wms_warehouse` VALUES ('3', 'SJ', '上海', '0', '青浦仓', '1', '2022-08-08 22:12:22.000', '1', '2023-01-04 18:53:54.148');
INSERT INTO `wms_warehouse` VALUES ('4', 'GJ', '广州', '0', null, '1', '2022-08-16 11:14:01.000', '1', '2023-01-04 18:54:02.261');
INSERT INTO `wms_warehouse` VALUES ('5', '22222', '2222', '1', null, '1', '2022-08-16 11:14:05.000', '1', '2022-10-09 09:36:56.646');
INSERT INTO `wms_warehouse` VALUES ('6', '3', '3', '1', null, '1', '2022-08-16 11:14:10.409', null, null);
INSERT INTO `wms_warehouse` VALUES ('7', '4', '4', '1', null, '1', '2022-08-16 11:14:14.965', null, null);
INSERT INTO `wms_warehouse` VALUES ('8', '5', '5', '1', null, '1', '2022-08-16 11:14:19.883', null, null);
INSERT INTO `wms_warehouse` VALUES ('9', '6', '6', '1', null, '1', '2022-08-16 11:14:25.186', null, null);
INSERT INTO `wms_warehouse` VALUES ('10', '7', '7', '1', null, '1', '2022-08-16 11:14:30.594', null, null);
INSERT INTO `wms_warehouse` VALUES ('11', '8', '8', '1', null, '1', '2022-08-16 11:14:35.686', null, null);
INSERT INTO `wms_warehouse` VALUES ('12', '11', '11', '1', null, '1', '2022-10-18 18:57:23.006', null, null);
INSERT INTO `wms_warehouse` VALUES ('13', '11', '北京', '1', null, '1', '2022-11-01 14:12:13.665', null, null);
INSERT INTO `wms_warehouse` VALUES ('14', 'BJ', '北京', '0', null, '1', '2022-11-01 14:12:15.000', '1', '2023-01-04 18:54:06.663');
INSERT INTO `wms_warehouse` VALUES ('15', '11', '北京', '1', null, '1', '2022-11-01 14:12:17.170', null, null);
INSERT INTO `wms_warehouse` VALUES ('16', '12', '北京', '1', null, '1', '2022-11-01 14:13:15.060', null, null);
INSERT INTO `wms_warehouse` VALUES ('17', '12', '北京', '1', null, '1', '2022-11-01 14:14:01.121', null, null);
INSERT INTO `wms_warehouse` VALUES ('18', '1', '1', '1', '1', '1', '2023-01-06 18:44:35.307', null, null);
