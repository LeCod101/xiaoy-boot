/*
 Xiaoy Database Transfer Tool

 Source Server Type    : MySQL

 Target Server Type    : Microsoft SQL Server

 Date: 2026-05-03 09:41:52
*/


-- ----------------------------
-- Table structure for dual
-- ----------------------------
DROP TABLE IF EXISTS dual
GO
CREATE TABLE dual
(
  id int
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据库连接的表',
    'SCHEMA', N'dbo',
    'TABLE', N'dual'
GO

-- ----------------------------
-- Records of dual
-- ----------------------------
-- @formatter:off
INSERT INTO dual VALUES (1)
GO
-- @formatter:on

-- ----------------------------
-- Table structure for infra_api_access_log
-- ----------------------------
DROP TABLE IF EXISTS infra_api_access_log
GO
CREATE TABLE infra_api_access_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    trace_id nvarchar(64) DEFAULT '' NOT NULL,
    user_id bigint DEFAULT 0 NOT NULL,
    user_type tinyint DEFAULT 0 NOT NULL,
    application_name nvarchar(50)  NOT NULL,
    request_method nvarchar(16) DEFAULT '' NOT NULL,
    request_url nvarchar(255) DEFAULT '' NOT NULL,
    request_params nvarchar(max)  NULL,
    response_body nvarchar(max)  NULL,
    user_ip nvarchar(50)  NOT NULL,
    user_agent nvarchar(512)  NOT NULL,
    operate_module nvarchar(50) DEFAULT NULL NULL,
    operate_name nvarchar(50) DEFAULT NULL NULL,
    operate_type tinyint DEFAULT 0 NULL,
    begin_time datetime2  NOT NULL,
    end_time datetime2  NOT NULL,
    duration int  NOT NULL,
    result_code int DEFAULT 0 NOT NULL,
    result_msg nvarchar(512) DEFAULT '' NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_infra_api_access_log_01 ON infra_api_access_log (create_time)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'日志主键',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'链路追踪编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'trace_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'应用名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'application_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求方法名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'request_method'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求地址',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'request_url'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求参数',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'request_params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'响应结果',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'response_body'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户 IP',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'user_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'浏览器 UA',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作模块',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'operate_module'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'operate_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作分类',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'operate_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'开始请求时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'begin_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'结束请求时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'执行时长',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'duration'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'结果码',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'result_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'结果提示',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'result_msg'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'API 访问日志表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_access_log'
GO

-- ----------------------------
-- Table structure for infra_api_error_log
-- ----------------------------
DROP TABLE IF EXISTS infra_api_error_log
GO
CREATE TABLE infra_api_error_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    trace_id nvarchar(64)  NOT NULL,
    user_id bigint DEFAULT 0 NOT NULL,
    user_type tinyint DEFAULT 0 NOT NULL,
    application_name nvarchar(50)  NOT NULL,
    request_method nvarchar(16)  NOT NULL,
    request_url nvarchar(255)  NOT NULL,
    request_params nvarchar(4000)  NOT NULL,
    user_ip nvarchar(50)  NOT NULL,
    user_agent nvarchar(512)  NOT NULL,
    exception_time datetime2  NOT NULL,
    exception_name nvarchar(128) DEFAULT '' NOT NULL,
    exception_message nvarchar(max)  NOT NULL,
    exception_root_cause_message nvarchar(max)  NOT NULL,
    exception_stack_trace nvarchar(max)  NOT NULL,
    exception_class_name nvarchar(512)  NOT NULL,
    exception_file_name nvarchar(512)  NOT NULL,
    exception_method_name nvarchar(512)  NOT NULL,
    exception_line_number int  NOT NULL,
    process_status tinyint  NOT NULL,
    process_time datetime2 DEFAULT NULL NULL,
    process_user_id int DEFAULT 0 NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_infra_api_error_log_01 ON infra_api_error_log (create_time)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'链路追踪编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'trace_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'应用名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'application_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求方法名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'request_method'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求地址',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'request_url'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求参数',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'request_params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户 IP',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'user_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'浏览器 UA',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常发生时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常导致的消息',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_message'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常导致的根消息',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_root_cause_message'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常的栈轨迹',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_stack_trace'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常发生的类全名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_class_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常发生的类文件',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_file_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常发生的方法名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_method_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'异常发生的方法所在行',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'exception_line_number'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理状态',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'process_status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'process_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'process_user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'系统异常日志',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_api_error_log'
GO

-- ----------------------------
-- Table structure for infra_codegen_column
-- ----------------------------
DROP TABLE IF EXISTS infra_codegen_column
GO
CREATE TABLE infra_codegen_column (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    table_id bigint  NOT NULL,
    column_name nvarchar(200)  NOT NULL,
    data_type nvarchar(100)  NOT NULL,
    column_comment nvarchar(500)  NOT NULL,
    nullable varchar(1)  NOT NULL,
    primary_key varchar(1)  NOT NULL,
    ordinal_position int  NOT NULL,
    java_type nvarchar(32)  NOT NULL,
    java_field nvarchar(64)  NOT NULL,
    dict_type nvarchar(200) DEFAULT '' NULL,
    example nvarchar(64) DEFAULT NULL NULL,
    create_operation varchar(1)  NOT NULL,
    update_operation varchar(1)  NOT NULL,
    list_operation varchar(1)  NOT NULL,
    list_operation_condition nvarchar(32) DEFAULT '=' NOT NULL,
    list_operation_result varchar(1)  NOT NULL,
    html_type nvarchar(32)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_infra_codegen_column_01 ON infra_codegen_column (table_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'表编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'table_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字段名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'column_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字段类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'data_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字段描述',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'column_comment'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否允许为空',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'nullable'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否主键',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'primary_key'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'排序',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'ordinal_position'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'Java 属性类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'java_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'Java 属性名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'java_field'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'dict_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据示例',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'example'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否为 Create 创建操作的字段',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'create_operation'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否为 Update 更新操作的字段',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'update_operation'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否为 List 查询操作的字段',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'list_operation'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'List 查询操作的条件类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'list_operation_condition'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否为 List 查询操作的返回字段',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'list_operation_result'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'显示类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'html_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'代码生成表字段定义',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_column'
GO

-- ----------------------------
-- Table structure for infra_codegen_table
-- ----------------------------
DROP TABLE IF EXISTS infra_codegen_table
GO
CREATE TABLE infra_codegen_table (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    data_source_config_id bigint  NOT NULL,
    scene tinyint DEFAULT 1 NOT NULL,
    table_name nvarchar(200) DEFAULT '' NOT NULL,
    table_comment nvarchar(500) DEFAULT '' NOT NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    module_name nvarchar(30)  NOT NULL,
    business_name nvarchar(30)  NOT NULL,
    class_name nvarchar(100) DEFAULT '' NOT NULL,
    class_comment nvarchar(50)  NOT NULL,
    author nvarchar(50)  NOT NULL,
    template_type tinyint DEFAULT 1 NOT NULL,
    front_type tinyint  NOT NULL,
    parent_menu_id bigint DEFAULT NULL NULL,
    master_table_id bigint DEFAULT NULL NULL,
    sub_join_column_id bigint DEFAULT NULL NULL,
    sub_join_many varchar(1) DEFAULT NULL NULL,
    tree_parent_column_id bigint DEFAULT NULL NULL,
    tree_name_column_id bigint DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据源配置的编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'data_source_config_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'生成场景',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'scene'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'表名称',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'表描述',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'table_comment'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模块名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'module_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'业务名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'business_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'类名称',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'类描述',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'class_comment'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'作者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'author'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'template_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'前端类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'front_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'父菜单编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'parent_menu_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主表的编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'master_table_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'子表关联主表的字段编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'sub_join_column_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主表与子表是否一对多',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'sub_join_many'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'树表的父字段编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'tree_parent_column_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'树表的名字字段编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'tree_name_column_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'代码生成表定义',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_codegen_table'
GO

-- ----------------------------
-- Table structure for infra_config
-- ----------------------------
DROP TABLE IF EXISTS infra_config
GO
CREATE TABLE infra_config (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    category nvarchar(50)  NOT NULL,
    type tinyint  NOT NULL,
    name nvarchar(100) DEFAULT '' NOT NULL,
    config_key nvarchar(100) DEFAULT '' NOT NULL,
    value nvarchar(500) DEFAULT '' NOT NULL,
    visible varchar(1)  NOT NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_infra_config_01 ON infra_config (config_key)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数主键',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数分组',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'category'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数名称',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数键名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'config_key'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数键值',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否可见',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'visible'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数配置表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_config'
GO

-- ----------------------------
-- Records of infra_config
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT infra_config ON
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (2, N'biz', 1, N'用户管理-账号初始密码', N'system.user.init-password', N'123456', N'0', N'初始化密码 123456', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-07-20 17:22:47', N'0')
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (7, N'url', 2, N'MySQL 监控的地址', N'url.druid', N'', N'1', N'', N'1', N'2023-04-07 13:41:16', N'1', N'2023-04-07 14:33:38', N'0')
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (8, N'url', 2, N'SkyWalking 监控的地址', N'url.skywalking', N'', N'1', N'', N'1', N'2023-04-07 13:41:16', N'1', N'2023-04-07 14:57:03', N'0')
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (9, N'url', 2, N'Spring Boot Admin 监控的地址', N'url.spring-boot-admin', N'', N'1', N'', N'1', N'2023-04-07 13:41:16', N'1', N'2023-04-07 14:52:07', N'0')
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (10, N'url', 2, N'Swagger 接口文档的地址', N'url.swagger', N'', N'1', N'', N'1', N'2023-04-07 13:41:16', N'1', N'2023-04-07 14:59:00', N'0')
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (12, N'test2', 2, N'test3', N'test4', N'test5', N'1', N'test6', N'1', N'2023-12-03 09:55:16', N'1', N'2025-04-06 21:00:09', N'0')
GO
INSERT INTO infra_config (id, category, type, name, config_key, value, visible, remark, creator, create_time, updater, update_time, deleted) VALUES (13, N'用户管理-账号初始密码', 2, N'用户管理-注册开关', N'system.user.register-enabled', N'true', N'0', N'', N'1', N'2025-04-26 17:23:41', N'1', N'2025-04-26 17:23:41', N'0')
GO
SET IDENTITY_INSERT infra_config OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for infra_data_source_config
-- ----------------------------
DROP TABLE IF EXISTS infra_data_source_config
GO
CREATE TABLE infra_data_source_config (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(100) DEFAULT '' NOT NULL,
    url nvarchar(1024)  NOT NULL,
    username nvarchar(255)  NOT NULL,
    password nvarchar(255) DEFAULT '' NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主键编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数名称',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据源连接',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'密码',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据源配置表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_data_source_config'
GO

-- ----------------------------
-- Table structure for infra_file
-- ----------------------------
DROP TABLE IF EXISTS infra_file
GO
CREATE TABLE infra_file (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    config_id bigint DEFAULT NULL NULL,
    name nvarchar(256) DEFAULT NULL NULL,
    path nvarchar(512)  NOT NULL,
    url nvarchar(1024)  NOT NULL,
    type nvarchar(128) DEFAULT NULL NULL,
    size int  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'配置编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'config_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件路径',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件 URL',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件类型',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件大小',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'size'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file'
GO

-- ----------------------------
-- Table structure for infra_file_config
-- ----------------------------
DROP TABLE IF EXISTS infra_file_config
GO
CREATE TABLE infra_file_config (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(63)  NOT NULL,
    storage tinyint  NOT NULL,
    remark nvarchar(255) DEFAULT NULL NULL,
    master varchar(1)  NOT NULL,
    config nvarchar(4000)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'配置名',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'存储器',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'storage'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否为主配置',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'master'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'存储配置',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'config'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件配置表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_config'
GO

-- ----------------------------
-- Records of infra_file_config
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT infra_file_config ON
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (4, N'数据库（示例）', 1, N'我是数据库', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.db.DBFileClientConfig","domain":"http://127.0.0.1:48080"}', N'1', N'2022-03-15 23:56:24', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (22, N'七牛存储器（示例）', 20, N'请换成你自己的密钥！！！', N'1', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"s3.cn-south-1.qiniucs.com","domain":"http://localhost","bucket":"xiaoy","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":true}', N'1', N'2024-01-13 22:11:12', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (24, N'腾讯云存储（示例）', 20, N'请换成你的密钥！！！', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"https://cos.ap-shanghai.myqcloud.com","domain":"http://tengxun-oss.xiaoy.cn","bucket":"aoteman-1255880240","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":true}', N'1', N'2024-11-09 16:03:22', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (25, N'阿里云存储（示例）', 20, N'', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"oss-cn-beijing.aliyuncs.com","domain":"http://ali-oss.xiaoy.cn","bucket":"xiaoy-bucket","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":true}', N'1', N'2024-11-09 16:47:08', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (26, N'火山云存储（示例）', 20, N'', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"tos-s3-cn-beijing.volces.com","domain":null,"bucket":"xiaoy","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":true}', N'1', N'2024-11-09 16:56:42', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (27, N'华为云存储（示例）', 20, N'', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"obs.cn-east-3.myhuaweicloud.com","domain":"","bucket":"xiaoy","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":true}', N'1', N'2024-11-09 17:18:41', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (28, N'MinIO 存储（示例）', 20, N'', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"http://127.0.0.1:9000","domain":"http://127.0.0.1:9000/xiaoy","bucket":"xiaoy","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":true}', N'1', N'2024-11-09 17:43:10', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (29, N'本地存储（示例）', 10, N'mac/linux 使用 /，windows 使用 \\', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.local.LocalFileClientConfig","basePath":"/tmp/demo/tmp/file","domain":"http://127.0.0.1:48080"}', N'1', N'2025-05-02 11:25:45', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (30, N'SFTP 存储（示例）', 12, N'', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.sftp.SftpFileClientConfig","basePath":"/upload","domain":"http://127.0.0.1:48080","host":"127.0.0.1","port":2222,"username":"foo","password":"pass"}', N'1', N'2025-05-02 16:34:10', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (34, N'七牛云存储【私有】（示例）', 20, N'请换成你自己的密钥！！！', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"s3.cn-south-1.qiniucs.com","domain":"http://localhost","bucket":"xiaoy-private","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":false}', N'1', N'2025-08-17 21:22:00', N'1', N'2025-11-24 20:57:14', N'0')
GO
INSERT INTO infra_file_config (id, name, storage, remark, master, config, creator, create_time, updater, update_time, deleted) VALUES (35, N'1', 20, N'1', N'0', N'{"@class":"cn.xiaoy.module.infra.framework.file.core.client.s3.S3FileClientConfig","endpoint":"http://www.baidu.com","domain":"http://www.xxx.com","bucket":"1","accessKey":"YOUR_ACCESS_KEY","accessSecret":"YOUR_ACCESS_SECRET","enablePathStyleAccess":false,"enablePublicAccess":false,"region":"1"}', N'1', N'2025-10-02 14:32:12', N'1', N'2025-11-29 15:59:39', N'0')
GO
SET IDENTITY_INSERT infra_file_config OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for infra_file_content
-- ----------------------------
DROP TABLE IF EXISTS infra_file_content
GO
CREATE TABLE infra_file_content (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    config_id bigint  NOT NULL,
    path nvarchar(512)  NOT NULL,
    content varbinary(max)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_infra_file_content_01 ON infra_file_content (config_id, path)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'配置编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'config_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件路径',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件内容',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'文件表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_file_content'
GO

-- ----------------------------
-- Table structure for infra_job
-- ----------------------------
DROP TABLE IF EXISTS infra_job
GO
CREATE TABLE infra_job (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(32)  NOT NULL,
    status tinyint  NOT NULL,
    handler_name nvarchar(64)  NOT NULL,
    handler_param nvarchar(255) DEFAULT NULL NULL,
    cron_expression nvarchar(32)  NOT NULL,
    retry_count int DEFAULT 0 NOT NULL,
    retry_interval int DEFAULT 0 NOT NULL,
    monitor_timeout int DEFAULT 0 NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'任务编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'任务名称',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'任务状态',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理器的名字',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'handler_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理器的参数',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'handler_param'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'CRON 表达式',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'cron_expression'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'重试次数',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'retry_count'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'重试间隔',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'retry_interval'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'监控超时时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'monitor_timeout'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'定时任务表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job'
GO

-- ----------------------------
-- Records of infra_job
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT infra_job ON
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (5, N'支付通知 Job', 2, N'payNotifyJob', NULL, N'* * * * * ?', 0, 0, 0, N'1', N'2021-10-27 08:34:42', N'1', N'2024-09-12 13:32:48', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (17, N'支付订单同步 Job', 2, N'payOrderSyncJob', NULL, N'0 0/1 * * * ?', 0, 0, 0, N'1', N'2023-07-22 14:36:26', N'1', N'2023-07-22 15:39:08', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (18, N'支付订单过期 Job', 2, N'payOrderExpireJob', NULL, N'0 0/1 * * * ?', 0, 0, 0, N'1', N'2023-07-22 15:36:23', N'1', N'2023-07-22 15:39:54', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (19, N'退款订单的同步 Job', 2, N'payRefundSyncJob', NULL, N'0 0/1 * * * ?', 0, 0, 0, N'1', N'2023-07-23 21:03:44', N'1', N'2023-07-23 21:09:00', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (21, N'Mall 交易订单的自动过期 Job', 2, N'tradeOrderAutoCancelJob', N'', N'0 * * * * ?', 3, 0, 0, N'1', N'2023-09-25 23:43:26', N'1', N'2025-10-02 11:08:34', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (22, N'Mall 交易订单的自动收货 Job', 2, N'tradeOrderAutoReceiveJob', N'', N'0 * * * * ?', 3, 0, 0, N'1', N'2023-09-26 19:23:53', N'1', N'2025-10-02 11:08:36', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (23, N'Mall 交易订单的自动评论 Job', 2, N'tradeOrderAutoCommentJob', N'', N'0 * * * * ?', 3, 0, 0, N'1', N'2023-09-26 23:38:29', N'1', N'2025-10-02 11:08:38', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (24, N'Mall 佣金解冻 Job', 2, N'brokerageRecordUnfreezeJob', N'', N'0 * * * * ?', 3, 0, 0, N'1', N'2023-09-28 22:01:46', N'1', N'2025-10-02 11:08:04', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (25, N'访问日志清理 Job', 2, N'accessLogCleanJob', N'', N'0 0 0 * * ?', 3, 0, 0, N'1', N'2023-10-03 10:59:41', N'1', N'2023-10-03 11:01:10', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (26, N'错误日志清理 Job', 2, N'errorLogCleanJob', N'', N'0 0 0 * * ?', 3, 0, 0, N'1', N'2023-10-03 11:00:43', N'1', N'2023-10-03 11:01:12', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (27, N'任务日志清理 Job', 2, N'jobLogCleanJob', N'', N'0 0 0 * * ?', 3, 0, 0, N'1', N'2023-10-03 11:01:33', N'1', N'2024-09-12 13:40:34', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (33, N'demoJob', 2, N'demoJob', N'', N'0 * * * * ?', 1, 1, 0, N'1', N'2024-10-27 19:38:46', N'1', N'2025-05-10 18:13:54', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (35, N'转账订单的同步 Job', 2, N'payTransferSyncJob', N'', N'0 * * * * ?', 0, 0, 0, N'1', N'2025-05-10 17:35:54', N'1', N'2025-05-10 18:13:52', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (36, N'IoT 设备离线检查 Job', 2, N'iotDeviceOfflineCheckJob', N'', N'0 * * * * ?', 0, 0, 0, N'1', N'2025-07-03 23:48:44', N'"1"', N'2025-07-03 23:48:47', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (37, N'IoT OTA 升级推送 Job', 2, N'iotOtaUpgradeJob', N'', N'0 * * * * ?', 0, 0, 0, N'1', N'2025-07-03 23:49:07', N'"1"', N'2025-07-03 23:49:13', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (38, N'Mall 拼团过期 Job', 2, N'combinationRecordExpireJob', N'', N'0 * * * * ?', 0, 0, 0, N'1', N'2025-10-02 11:07:11', N'1', N'2025-10-02 11:07:14', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (39, N'Mall 优惠券过期 Job', 2, N'couponExpireJob', N'', N'0 * * * * ?', 0, 0, 0, N'1', N'2025-10-02 11:07:34', N'1', N'2025-10-02 11:07:37', N'0')
GO
INSERT INTO infra_job (id, name, status, handler_name, handler_param, cron_expression, retry_count, retry_interval, monitor_timeout, creator, create_time, updater, update_time, deleted) VALUES (40, N'Mall 商品统计 Job', 2, N'productStatisticsJob', N'', N'0 0 0 * * ?', 0, 0, 0, N'1', N'2025-11-22 18:51:25', N'1', N'2025-11-22 18:56:21', N'0')
GO
SET IDENTITY_INSERT infra_job OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for infra_job_log
-- ----------------------------
DROP TABLE IF EXISTS infra_job_log
GO
CREATE TABLE infra_job_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    job_id bigint  NOT NULL,
    handler_name nvarchar(64)  NOT NULL,
    handler_param nvarchar(255) DEFAULT NULL NULL,
    execute_index tinyint DEFAULT 1 NOT NULL,
    begin_time datetime2  NOT NULL,
    end_time datetime2 DEFAULT NULL NULL,
    duration int DEFAULT NULL NULL,
    status tinyint  NOT NULL,
    result nvarchar(4000) DEFAULT '' NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_infra_job_log_01 ON infra_job_log (job_id)
GO
CREATE INDEX idx_infra_job_log_02 ON infra_job_log (create_time)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'日志编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'任务编号',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'job_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理器的名字',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'handler_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'处理器的参数',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'handler_param'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'第几次执行',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'execute_index'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'开始执行时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'begin_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'结束执行时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'执行时长',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'duration'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'任务状态',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'结果数据',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'result'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'定时任务日志表',
    'SCHEMA', N'dbo',
    'TABLE', N'infra_job_log'
GO

-- ----------------------------
-- Table structure for system_dept
-- ----------------------------
DROP TABLE IF EXISTS system_dept
GO
CREATE TABLE system_dept (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(30) DEFAULT '' NOT NULL,
    parent_id bigint DEFAULT 0 NOT NULL,
    sort int DEFAULT 0 NOT NULL,
    leader_user_id bigint DEFAULT NULL NULL,
    phone nvarchar(11) DEFAULT NULL NULL,
    email nvarchar(50) DEFAULT NULL NULL,
    status tinyint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'部门id',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'部门名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'父部门id',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'显示顺序',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'负责人',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'leader_user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'联系电话',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮箱',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'部门状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'部门表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dept'
GO

-- ----------------------------
-- Records of system_dept
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_dept ON
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (100, N'小Y系统', 0, 0, 1, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'1', N'2026-01-04 18:01:12', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (101, N'深圳总公司', 100, 1, 104, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'1', N'2025-03-29 15:49:55', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (102, N'长沙分公司', 100, 2, NULL, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'', N'2021-12-15 05:01:40', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (103, N'研发部门', 101, 1, 104, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'1', N'2026-01-04 18:01:24', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (104, N'市场部门', 101, 2, NULL, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'', N'2021-12-15 05:01:38', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (105, N'测试部门', 101, 3, NULL, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'1', N'2022-05-16 20:25:15', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (106, N'财务部门', 101, 4, 103, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'103', N'2022-01-15 21:32:22', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (107, N'运维部门', 101, 5, 1, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'1', N'2023-12-02 09:28:22', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (108, N'市场部门', 102, 1, NULL, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'1', N'2022-02-16 08:35:45', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (109, N'财务部门', 102, 2, NULL, N'15888888888', N'ry@qq.com', 0, N'admin', N'2021-01-05 17:03:47', N'', N'2021-12-15 05:01:29', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (110, N'新部门', 0, 1, NULL, NULL, NULL, 0, N'110', N'2022-02-23 20:46:30', N'110', N'2022-02-23 20:46:30', N'0', 121)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (111, N'顶级部门', 0, 1, NULL, NULL, NULL, 0, N'113', N'2022-03-07 21:44:50', N'113', N'2022-03-07 21:44:50', N'0', 122)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (112, N'产品部门', 101, 100, 1, NULL, NULL, 1, N'1', N'2023-12-02 09:45:13', N'1', N'2023-12-02 09:45:31', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (113, N'支持部门', 102, 3, 104, NULL, NULL, 1, N'1', N'2023-12-02 09:47:38', N'1', N'2025-03-29 15:00:56', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (116, N'某个子部门', 0, 1, NULL, NULL, NULL, 0, N'1', N'2025-12-08 14:51:12', N'1', N'2025-12-08 14:51:12', N'0', 1)
GO
INSERT INTO system_dept (id, name, parent_id, sort, leader_user_id, phone, email, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (117, N'某个子部门 2', 0, 2, NULL, NULL, NULL, 0, N'1', N'2025-12-08 14:51:25', N'1', N'2025-12-08 14:51:25', N'0', 1)
GO
SET IDENTITY_INSERT system_dept OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_dict_data
-- ----------------------------
DROP TABLE IF EXISTS system_dict_data
GO
CREATE TABLE system_dict_data (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    sort int DEFAULT 0 NOT NULL,
    label nvarchar(100) DEFAULT '' NOT NULL,
    value nvarchar(100) DEFAULT '' NOT NULL,
    dict_type nvarchar(100) DEFAULT '' NOT NULL,
    status tinyint DEFAULT 0 NOT NULL,
    color_type nvarchar(100) DEFAULT '' NULL,
    css_class nvarchar(100) DEFAULT '' NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典排序',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典标签',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'label'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典键值',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'value'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'dict_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'颜色类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'color_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'css 样式',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'css_class'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典数据表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_data'
GO

-- ----------------------------
-- Records of system_dict_data
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_dict_data ON
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1, 1, N'男', N'1', N'system_user_sex', 0, N'primary', N'A', N'性别男', N'admin', N'2021-01-05 17:03:48', N'1', N'2025-12-10 13:19:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2, 2, N'女', N'2', N'system_user_sex', 0, N'success', N'', N'性别女', N'admin', N'2021-01-05 17:03:48', N'1', N'2023-11-15 23:30:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (8, 1, N'正常', N'1', N'infra_job_status', 0, N'success', N'', N'正常状态', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 19:33:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (9, 2, N'暂停', N'2', N'infra_job_status', 0, N'danger', N'', N'停用状态', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 19:33:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (12, 1, N'系统内置', N'1', N'infra_config_type', 0, N'danger', N'', N'参数类型 - 系统内置', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 19:06:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (13, 2, N'自定义', N'2', N'infra_config_type', 0, N'primary', N'', N'参数类型 - 自定义', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 19:06:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (14, 1, N'通知', N'1', N'system_notice_type', 0, N'success', N'', N'通知', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 13:05:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (15, 2, N'公告', N'2', N'system_notice_type', 0, N'info', N'', N'公告', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 13:06:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (16, 0, N'其它', N'0', N'infra_operate_type', 0, N'default', N'', N'其它操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (17, 1, N'查询', N'1', N'infra_operate_type', 0, N'info', N'', N'查询操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (18, 2, N'新增', N'2', N'infra_operate_type', 0, N'primary', N'', N'新增操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (19, 3, N'修改', N'3', N'infra_operate_type', 0, N'warning', N'', N'修改操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (20, 4, N'删除', N'4', N'infra_operate_type', 0, N'danger', N'', N'删除操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (22, 5, N'导出', N'5', N'infra_operate_type', 0, N'default', N'', N'导出操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (23, 6, N'导入', N'6', N'infra_operate_type', 0, N'default', N'', N'导入操作', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (27, 1, N'开启', N'0', N'common_status', 0, N'primary', N'', N'开启状态', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 08:00:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (28, 2, N'关闭', N'1', N'common_status', 0, N'info', N'', N'关闭状态', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 08:00:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (29, 1, N'目录', N'1', N'system_menu_type', 0, N'', N'', N'目录', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:43:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (30, 2, N'菜单', N'2', N'system_menu_type', 0, N'', N'', N'菜单', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:43:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (31, 3, N'按钮', N'3', N'system_menu_type', 0, N'', N'', N'按钮', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:43:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (32, 1, N'内置', N'1', N'system_role_type', 0, N'danger', N'', N'内置角色', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 13:02:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (33, 2, N'自定义', N'2', N'system_role_type', 0, N'primary', N'', N'自定义角色', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-02-16 13:02:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (34, 1, N'全部数据权限', N'1', N'system_data_scope', 0, N'', N'', N'全部数据权限', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:47:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (35, 2, N'指定部门数据权限', N'2', N'system_data_scope', 0, N'', N'', N'指定部门数据权限', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:47:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (36, 3, N'本部门数据权限', N'3', N'system_data_scope', 0, N'', N'', N'本部门数据权限', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:47:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (37, 4, N'本部门及以下数据权限', N'4', N'system_data_scope', 0, N'', N'', N'本部门及以下数据权限', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:47:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (38, 5, N'仅本人数据权限', N'5', N'system_data_scope', 0, N'', N'', N'仅本人数据权限', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:47:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (39, 0, N'成功', N'0', N'system_login_result', 0, N'success', N'', N'登陆结果 - 成功', N'', N'2021-01-18 06:17:36', N'1', N'2022-02-16 13:23:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (40, 10, N'账号或密码不正确', N'10', N'system_login_result', 0, N'primary', N'', N'登陆结果 - 账号或密码不正确', N'', N'2021-01-18 06:17:54', N'1', N'2022-02-16 13:24:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (41, 20, N'用户被禁用', N'20', N'system_login_result', 0, N'warning', N'', N'登陆结果 - 用户被禁用', N'', N'2021-01-18 06:17:54', N'1', N'2022-02-16 13:23:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (42, 30, N'验证码不存在', N'30', N'system_login_result', 0, N'info', N'', N'登陆结果 - 验证码不存在', N'', N'2021-01-18 06:17:54', N'1', N'2022-02-16 13:24:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (43, 31, N'验证码不正确', N'31', N'system_login_result', 0, N'info', N'', N'登陆结果 - 验证码不正确', N'', N'2021-01-18 06:17:54', N'1', N'2022-02-16 13:24:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (44, 100, N'未知异常', N'100', N'system_login_result', 0, N'danger', N'', N'登陆结果 - 未知异常', N'', N'2021-01-18 06:17:54', N'1', N'2022-02-16 13:24:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (45, 1, N'是', N'true', N'infra_boolean_string', 0, N'danger', N'', N'Boolean 是否类型 - 是', N'', N'2021-01-19 03:20:55', N'1', N'2022-03-15 23:01:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (46, 1, N'否', N'false', N'infra_boolean_string', 0, N'info', N'', N'Boolean 是否类型 - 否', N'', N'2021-01-19 03:20:55', N'1', N'2022-03-15 23:09:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (50, 1, N'单表（增删改查）', N'1', N'infra_codegen_template_type', 0, N'', N'', NULL, N'', N'2021-02-05 07:09:06', N'', N'2022-03-10 16:33:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (51, 2, N'树表（增删改查）', N'2', N'infra_codegen_template_type', 0, N'', N'', NULL, N'', N'2021-02-05 07:14:46', N'', N'2022-03-10 16:33:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (53, 0, N'初始化中', N'0', N'infra_job_status', 0, N'primary', N'', NULL, N'', N'2021-02-07 07:46:49', N'1', N'2022-02-16 19:33:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (57, 0, N'运行中', N'0', N'infra_job_log_status', 0, N'primary', N'', N'RUNNING', N'', N'2021-02-08 10:04:24', N'1', N'2022-02-16 19:07:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (58, 1, N'成功', N'1', N'infra_job_log_status', 0, N'success', N'', NULL, N'', N'2021-02-08 10:06:57', N'1', N'2022-02-16 19:07:52', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (59, 2, N'失败', N'2', N'infra_job_log_status', 0, N'warning', N'', N'失败', N'', N'2021-02-08 10:07:38', N'1', N'2022-02-16 19:07:56', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (60, 1, N'会员', N'1', N'user_type', 0, N'primary', N'', NULL, N'', N'2021-02-26 00:16:27', N'1', N'2022-02-16 10:22:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (61, 2, N'管理员', N'2', N'user_type', 0, N'success', N'', NULL, N'', N'2021-02-26 00:16:34', N'1', N'2025-04-06 18:37:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (62, 0, N'未处理', N'0', N'infra_api_error_log_process_status', 0, N'primary', N'', NULL, N'', N'2021-02-26 07:07:19', N'1', N'2022-02-16 20:14:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (63, 1, N'已处理', N'1', N'infra_api_error_log_process_status', 0, N'success', N'', NULL, N'', N'2021-02-26 07:07:26', N'1', N'2022-02-16 20:14:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (64, 2, N'已忽略', N'2', N'infra_api_error_log_process_status', 0, N'danger', N'', NULL, N'', N'2021-02-26 07:07:34', N'1', N'2022-02-16 20:14:14', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (66, 1, N'阿里云', N'ALIYUN', N'system_sms_channel_code', 0, N'primary', N'', NULL, N'1', N'2021-04-05 01:05:26', N'1', N'2024-07-22 22:23:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (67, 1, N'验证码', N'1', N'system_sms_template_type', 0, N'warning', N'', NULL, N'1', N'2021-04-05 21:50:57', N'1', N'2022-02-16 12:48:30', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (68, 2, N'通知', N'2', N'system_sms_template_type', 0, N'primary', N'', NULL, N'1', N'2021-04-05 21:51:08', N'1', N'2022-02-16 12:48:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (69, 0, N'营销', N'3', N'system_sms_template_type', 0, N'danger', N'', NULL, N'1', N'2021-04-05 21:51:15', N'1', N'2022-02-16 12:48:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (70, 0, N'初始化', N'0', N'system_sms_send_status', 0, N'primary', N'', NULL, N'1', N'2021-04-11 20:18:33', N'1', N'2022-02-16 10:26:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (71, 1, N'发送成功', N'10', N'system_sms_send_status', 0, N'success', N'', NULL, N'1', N'2021-04-11 20:18:43', N'1', N'2022-02-16 10:25:56', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (72, 2, N'发送失败', N'20', N'system_sms_send_status', 0, N'danger', N'', NULL, N'1', N'2021-04-11 20:18:49', N'1', N'2022-02-16 10:26:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (73, 3, N'不发送', N'30', N'system_sms_send_status', 0, N'info', N'', NULL, N'1', N'2021-04-11 20:19:44', N'1', N'2022-02-16 10:26:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (74, 0, N'等待结果', N'0', N'system_sms_receive_status', 0, N'primary', N'', NULL, N'1', N'2021-04-11 20:27:43', N'1', N'2022-02-16 10:28:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (75, 1, N'接收成功', N'10', N'system_sms_receive_status', 0, N'success', N'', NULL, N'1', N'2021-04-11 20:29:25', N'1', N'2022-02-16 10:28:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (76, 2, N'接收失败', N'20', N'system_sms_receive_status', 0, N'danger', N'', NULL, N'1', N'2021-04-11 20:29:31', N'1', N'2022-02-16 10:28:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (77, 0, N'调试(钉钉)', N'DEBUG_DING_TALK', N'system_sms_channel_code', 0, N'info', N'', NULL, N'1', N'2021-04-13 00:20:37', N'1', N'2022-02-16 10:10:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (80, 100, N'账号登录', N'100', N'system_login_type', 0, N'primary', N'', N'账号登录', N'1', N'2021-10-06 00:52:02', N'1', N'2022-02-16 13:11:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (81, 101, N'社交登录', N'101', N'system_login_type', 0, N'info', N'', N'社交登录', N'1', N'2021-10-06 00:52:17', N'1', N'2022-02-16 13:11:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (83, 200, N'主动登出', N'200', N'system_login_type', 0, N'primary', N'', N'主动登出', N'1', N'2021-10-06 00:52:58', N'1', N'2022-02-16 13:11:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (85, 202, N'强制登出', N'202', N'system_login_type', 0, N'danger', N'', N'强制退出', N'1', N'2021-10-06 00:53:41', N'1', N'2022-02-16 13:11:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (86, 0, N'病假', N'1', N'bpm_oa_leave_type', 0, N'primary', N'', NULL, N'1', N'2021-09-21 22:35:28', N'1', N'2022-02-16 10:00:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (87, 1, N'事假', N'2', N'bpm_oa_leave_type', 0, N'info', N'', NULL, N'1', N'2021-09-21 22:36:11', N'1', N'2022-02-16 10:00:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (88, 2, N'婚假', N'3', N'bpm_oa_leave_type', 0, N'warning', N'', NULL, N'1', N'2021-09-21 22:36:38', N'1', N'2022-02-16 10:00:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (112, 0, N'微信 Wap 网站支付', N'wx_wap', N'pay_channel_code', 0, N'success', N'', N'微信 Wap 网站支付', N'1', N'2023-07-19 20:08:06', N'1', N'2023-07-19 20:09:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (113, 1, N'微信公众号支付', N'wx_pub', N'pay_channel_code', 0, N'success', N'', N'微信公众号支付', N'1', N'2021-12-03 10:40:24', N'1', N'2023-07-19 20:08:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (114, 2, N'微信小程序支付', N'wx_lite', N'pay_channel_code', 0, N'success', N'', N'微信小程序支付', N'1', N'2021-12-03 10:41:06', N'1', N'2023-07-19 20:08:50', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (115, 3, N'微信 App 支付', N'wx_app', N'pay_channel_code', 0, N'success', N'', N'微信 App 支付', N'1', N'2021-12-03 10:41:20', N'1', N'2023-07-19 20:08:56', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (116, 10, N'支付宝 PC 网站支付', N'alipay_pc', N'pay_channel_code', 0, N'primary', N'', N'支付宝 PC 网站支付', N'1', N'2021-12-03 10:42:09', N'1', N'2023-07-19 20:09:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (117, 11, N'支付宝 Wap 网站支付', N'alipay_wap', N'pay_channel_code', 0, N'primary', N'', N'支付宝 Wap 网站支付', N'1', N'2021-12-03 10:42:26', N'1', N'2023-07-19 20:09:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (118, 12, N'支付宝 App 支付', N'alipay_app', N'pay_channel_code', 0, N'primary', N'', N'支付宝 App 支付', N'1', N'2021-12-03 10:42:55', N'1', N'2023-07-19 20:09:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (119, 14, N'支付宝扫码支付', N'alipay_qr', N'pay_channel_code', 0, N'primary', N'', N'支付宝扫码支付', N'1', N'2021-12-03 10:43:10', N'1', N'2023-07-19 20:09:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (120, 10, N'通知成功', N'10', N'pay_notify_status', 0, N'success', N'', N'通知成功', N'1', N'2021-12-03 11:02:41', N'1', N'2023-07-19 10:08:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (121, 20, N'通知失败', N'20', N'pay_notify_status', 0, N'danger', N'', N'通知失败', N'1', N'2021-12-03 11:02:59', N'1', N'2023-07-19 10:08:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (122, 0, N'等待通知', N'0', N'pay_notify_status', 0, N'info', N'', N'未通知', N'1', N'2021-12-03 11:03:10', N'1', N'2023-07-19 10:08:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (123, 10, N'支付成功', N'10', N'pay_order_status', 0, N'success', N'', N'支付成功', N'1', N'2021-12-03 11:18:29', N'1', N'2023-07-19 18:04:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (124, 30, N'支付关闭', N'30', N'pay_order_status', 0, N'info', N'', N'支付关闭', N'1', N'2021-12-03 11:18:42', N'1', N'2023-07-19 18:05:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (125, 0, N'等待支付', N'0', N'pay_order_status', 0, N'info', N'', N'未支付', N'1', N'2021-12-03 11:18:18', N'1', N'2023-07-19 18:04:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (600, 5, N'首页', N'1', N'promotion_banner_position', 0, N'warning', N'', N'', N'1', N'2023-10-11 07:45:24', N'1', N'2023-10-11 07:45:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (601, 4, N'秒杀活动页', N'2', N'promotion_banner_position', 0, N'warning', N'', N'', N'1', N'2023-10-11 07:45:24', N'1', N'2023-10-11 07:45:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (602, 3, N'砍价活动页', N'3', N'promotion_banner_position', 0, N'warning', N'', N'', N'1', N'2023-10-11 07:45:24', N'1', N'2023-10-11 07:45:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (603, 2, N'限时折扣页', N'4', N'promotion_banner_position', 0, N'warning', N'', N'', N'1', N'2023-10-11 07:45:24', N'1', N'2023-10-11 07:45:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (604, 1, N'满减送页', N'5', N'promotion_banner_position', 0, N'warning', N'', N'', N'1', N'2023-10-11 07:45:24', N'1', N'2023-10-11 07:45:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1118, 0, N'等待退款', N'0', N'pay_refund_status', 0, N'info', N'', N'等待退款', N'1', N'2021-12-10 16:44:59', N'1', N'2023-07-19 10:14:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1119, 20, N'退款失败', N'20', N'pay_refund_status', 0, N'danger', N'', N'退款失败', N'1', N'2021-12-10 16:45:10', N'1', N'2023-07-19 10:15:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1124, 10, N'退款成功', N'10', N'pay_refund_status', 0, N'success', N'', N'退款成功', N'1', N'2021-12-10 16:46:26', N'1', N'2023-07-19 10:15:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1127, 1, N'审批中', N'1', N'bpm_process_instance_status', 0, N'default', N'', N'流程实例的状态 - 进行中', N'1', N'2022-01-07 23:47:22', N'1', N'2024-03-16 16:11:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1128, 2, N'审批通过', N'2', N'bpm_process_instance_status', 0, N'success', N'', N'流程实例的状态 - 已完成', N'1', N'2022-01-07 23:47:49', N'1', N'2024-03-16 16:11:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1129, 1, N'审批中', N'1', N'bpm_task_status', 0, N'primary', N'', N'流程实例的结果 - 处理中', N'1', N'2022-01-07 23:48:32', N'1', N'2024-03-08 22:41:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1130, 2, N'审批通过', N'2', N'bpm_task_status', 0, N'success', N'', N'流程实例的结果 - 通过', N'1', N'2022-01-07 23:48:45', N'1', N'2024-03-08 22:41:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1131, 3, N'审批不通过', N'3', N'bpm_task_status', 0, N'danger', N'', N'流程实例的结果 - 不通过', N'1', N'2022-01-07 23:48:55', N'1', N'2024-03-08 22:41:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1132, 4, N'已取消', N'4', N'bpm_task_status', 0, N'info', N'', N'流程实例的结果 - 撤销', N'1', N'2022-01-07 23:49:06', N'1', N'2024-03-08 22:41:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1133, 10, N'流程表单', N'10', N'bpm_model_form_type', 0, N'', N'', N'流程的表单类型 - 流程表单', N'103', N'2022-01-11 23:51:30', N'103', N'2022-01-11 23:51:30', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1134, 20, N'业务表单', N'20', N'bpm_model_form_type', 0, N'', N'', N'流程的表单类型 - 业务表单', N'103', N'2022-01-11 23:51:47', N'103', N'2022-01-11 23:51:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1135, 10, N'角色', N'10', N'bpm_task_candidate_strategy', 0, N'info', N'', N'任务分配规则的类型 - 角色', N'103', N'2022-01-12 23:21:22', N'1', N'2024-03-06 02:53:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1136, 20, N'部门的成员', N'20', N'bpm_task_candidate_strategy', 0, N'primary', N'', N'任务分配规则的类型 - 部门的成员', N'103', N'2022-01-12 23:21:47', N'1', N'2024-03-06 02:53:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1137, 21, N'部门的负责人', N'21', N'bpm_task_candidate_strategy', 0, N'primary', N'', N'任务分配规则的类型 - 部门的负责人', N'103', N'2022-01-12 23:33:36', N'1', N'2024-03-06 02:53:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1138, 30, N'用户', N'30', N'bpm_task_candidate_strategy', 0, N'info', N'', N'任务分配规则的类型 - 用户', N'103', N'2022-01-12 23:34:02', N'1', N'2024-03-06 02:53:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1139, 40, N'用户组', N'40', N'bpm_task_candidate_strategy', 0, N'warning', N'', N'任务分配规则的类型 - 用户组', N'103', N'2022-01-12 23:34:21', N'1', N'2024-03-06 02:53:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1140, 60, N'流程表达式', N'60', N'bpm_task_candidate_strategy', 0, N'danger', N'', N'任务分配规则的类型 - 流程表达式', N'103', N'2022-01-12 23:34:43', N'1', N'2024-03-06 02:53:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1141, 22, N'岗位', N'22', N'bpm_task_candidate_strategy', 0, N'success', N'', N'任务分配规则的类型 - 岗位', N'103', N'2022-01-14 18:41:55', N'1', N'2024-03-06 02:53:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1145, 1, N'管理后台', N'1', N'infra_codegen_scene', 0, N'', N'', N'代码生成的场景枚举 - 管理后台', N'1', N'2022-02-02 13:15:06', N'1', N'2022-03-10 16:32:59', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1146, 2, N'用户 APP', N'2', N'infra_codegen_scene', 0, N'', N'', N'代码生成的场景枚举 - 用户 APP', N'1', N'2022-02-02 13:15:19', N'1', N'2022-03-10 16:33:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1150, 1, N'数据库', N'1', N'infra_file_storage', 0, N'default', N'', NULL, N'1', N'2022-03-15 00:25:28', N'1', N'2022-03-15 00:25:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1151, 10, N'本地磁盘', N'10', N'infra_file_storage', 0, N'default', N'', NULL, N'1', N'2022-03-15 00:25:41', N'1', N'2022-03-15 00:25:56', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1152, 11, N'FTP 服务器', N'11', N'infra_file_storage', 0, N'default', N'', NULL, N'1', N'2022-03-15 00:26:06', N'1', N'2022-03-15 00:26:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1153, 12, N'SFTP 服务器', N'12', N'infra_file_storage', 0, N'default', N'', NULL, N'1', N'2022-03-15 00:26:22', N'1', N'2022-03-15 00:26:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1154, 20, N'S3 对象存储', N'20', N'infra_file_storage', 0, N'default', N'', NULL, N'1', N'2022-03-15 00:26:31', N'1', N'2022-03-15 00:26:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1155, 103, N'短信登录', N'103', N'system_login_type', 0, N'default', N'', NULL, N'1', N'2022-05-09 23:57:58', N'1', N'2022-05-09 23:58:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1156, 1, N'password', N'password', N'system_oauth2_grant_type', 0, N'default', N'', N'密码模式', N'1', N'2022-05-12 00:22:05', N'1', N'2022-05-11 16:26:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1157, 2, N'authorization_code', N'authorization_code', N'system_oauth2_grant_type', 0, N'primary', N'', N'授权码模式', N'1', N'2022-05-12 00:22:59', N'1', N'2022-05-11 16:26:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1158, 3, N'implicit', N'implicit', N'system_oauth2_grant_type', 0, N'success', N'', N'简化模式', N'1', N'2022-05-12 00:23:40', N'1', N'2022-05-11 16:26:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1159, 4, N'client_credentials', N'client_credentials', N'system_oauth2_grant_type', 0, N'default', N'', N'客户端模式', N'1', N'2022-05-12 00:23:51', N'1', N'2022-05-11 16:26:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1160, 5, N'refresh_token', N'refresh_token', N'system_oauth2_grant_type', 0, N'info', N'', N'刷新模式', N'1', N'2022-05-12 00:24:02', N'1', N'2022-05-11 16:26:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1162, 1, N'销售中', N'1', N'product_spu_status', 0, N'success', N'', N'商品 SPU 状态 - 销售中', N'1', N'2022-10-24 21:19:47', N'1', N'2022-10-24 21:20:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1163, 0, N'仓库中', N'0', N'product_spu_status', 0, N'info', N'', N'商品 SPU 状态 - 仓库中', N'1', N'2022-10-24 21:20:54', N'1', N'2022-10-24 21:21:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1164, 0, N'回收站', N'-1', N'product_spu_status', 0, N'default', N'', N'商品 SPU 状态 - 回收站', N'1', N'2022-10-24 21:21:11', N'1', N'2022-10-24 21:21:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1165, 1, N'满减', N'1', N'promotion_discount_type', 0, N'success', N'', N'优惠类型 - 满减', N'1', N'2022-11-01 12:46:41', N'1', N'2022-11-01 12:50:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1166, 2, N'折扣', N'2', N'promotion_discount_type', 0, N'primary', N'', N'优惠类型 - 折扣', N'1', N'2022-11-01 12:46:51', N'1', N'2022-11-01 12:50:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1167, 1, N'固定日期', N'1', N'promotion_coupon_template_validity_type', 0, N'default', N'', N'优惠劵模板的有限期类型 - 固定日期', N'1', N'2022-11-02 00:07:34', N'1', N'2022-11-04 00:07:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1168, 2, N'领取之后', N'2', N'promotion_coupon_template_validity_type', 0, N'default', N'', N'优惠劵模板的有限期类型 - 领取之后', N'1', N'2022-11-02 00:07:54', N'1', N'2022-11-04 00:07:52', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1169, 1, N'通用劵', N'1', N'promotion_product_scope', 0, N'default', N'', N'营销的商品范围 - 全部商品参与', N'1', N'2022-11-02 00:28:22', N'1', N'2023-09-28 00:27:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1170, 2, N'商品劵', N'2', N'promotion_product_scope', 0, N'default', N'', N'营销的商品范围 - 指定商品参与', N'1', N'2022-11-02 00:28:34', N'1', N'2023-09-28 00:27:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1171, 1, N'未使用', N'1', N'promotion_coupon_status', 0, N'primary', N'', N'优惠劵的状态 - 已领取', N'1', N'2022-11-04 00:15:08', N'1', N'2023-10-03 12:54:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1172, 2, N'已使用', N'2', N'promotion_coupon_status', 0, N'success', N'', N'优惠劵的状态 - 已使用', N'1', N'2022-11-04 00:15:21', N'1', N'2022-11-04 19:16:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1173, 3, N'已过期', N'3', N'promotion_coupon_status', 0, N'info', N'', N'优惠劵的状态 - 已过期', N'1', N'2022-11-04 00:15:43', N'1', N'2022-11-04 19:16:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1174, 1, N'直接领取', N'1', N'promotion_coupon_take_type', 0, N'primary', N'', N'优惠劵的领取方式 - 直接领取', N'1', N'2022-11-04 19:13:00', N'1', N'2022-11-04 19:13:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1175, 2, N'指定发放', N'2', N'promotion_coupon_take_type', 0, N'success', N'', N'优惠劵的领取方式 - 指定发放', N'1', N'2022-11-04 19:13:13', N'1', N'2022-11-04 19:14:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1176, 10, N'未开始', N'10', N'promotion_activity_status', 0, N'primary', N'', N'促销活动的状态枚举 - 未开始', N'1', N'2022-11-04 22:54:49', N'1', N'2022-11-04 22:55:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1177, 20, N'进行中', N'20', N'promotion_activity_status', 0, N'success', N'', N'促销活动的状态枚举 - 进行中', N'1', N'2022-11-04 22:55:06', N'1', N'2022-11-04 22:55:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1178, 30, N'已结束', N'30', N'promotion_activity_status', 0, N'info', N'', N'促销活动的状态枚举 - 已结束', N'1', N'2022-11-04 22:55:41', N'1', N'2022-11-04 22:55:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1179, 40, N'已关闭', N'40', N'promotion_activity_status', 0, N'warning', N'', N'促销活动的状态枚举 - 已关闭', N'1', N'2022-11-04 22:56:10', N'1', N'2022-11-04 22:56:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1180, 10, N'满 N 元', N'10', N'promotion_condition_type', 0, N'primary', N'', N'营销的条件类型 - 满 N 元', N'1', N'2022-11-04 22:59:45', N'1', N'2022-11-04 22:59:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1181, 20, N'满 N 件', N'20', N'promotion_condition_type', 0, N'success', N'', N'营销的条件类型 - 满 N 件', N'1', N'2022-11-04 23:00:02', N'1', N'2022-11-04 23:00:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1182, 10, N'申请售后', N'10', N'trade_after_sale_status', 0, N'primary', N'', N'交易售后状态 - 申请售后', N'1', N'2022-11-19 20:53:33', N'1', N'2022-11-19 20:54:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1183, 20, N'商品待退货', N'20', N'trade_after_sale_status', 0, N'primary', N'', N'交易售后状态 - 商品待退货', N'1', N'2022-11-19 20:54:36', N'1', N'2022-11-19 20:58:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1184, 30, N'商家待收货', N'30', N'trade_after_sale_status', 0, N'primary', N'', N'交易售后状态 - 商家待收货', N'1', N'2022-11-19 20:56:56', N'1', N'2022-11-19 20:59:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1185, 40, N'等待退款', N'40', N'trade_after_sale_status', 0, N'primary', N'', N'交易售后状态 - 等待退款', N'1', N'2022-11-19 20:59:54', N'1', N'2022-11-19 21:00:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1186, 50, N'退款成功', N'50', N'trade_after_sale_status', 0, N'default', N'', N'交易售后状态 - 退款成功', N'1', N'2022-11-19 21:00:33', N'1', N'2022-11-19 21:00:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1187, 61, N'买家取消', N'61', N'trade_after_sale_status', 0, N'info', N'', N'交易售后状态 - 买家取消', N'1', N'2022-11-19 21:01:29', N'1', N'2022-11-19 21:01:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1188, 62, N'商家拒绝', N'62', N'trade_after_sale_status', 0, N'info', N'', N'交易售后状态 - 商家拒绝', N'1', N'2022-11-19 21:02:17', N'1', N'2022-11-19 21:02:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1189, 63, N'商家拒收货', N'63', N'trade_after_sale_status', 0, N'info', N'', N'交易售后状态 - 商家拒收货', N'1', N'2022-11-19 21:02:37', N'1', N'2022-11-19 21:03:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1190, 10, N'售中退款', N'10', N'trade_after_sale_type', 0, N'success', N'', N'交易售后的类型 - 售中退款', N'1', N'2022-11-19 21:05:05', N'1', N'2022-11-19 21:38:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1191, 20, N'售后退款', N'20', N'trade_after_sale_type', 0, N'primary', N'', N'交易售后的类型 - 售后退款', N'1', N'2022-11-19 21:05:32', N'1', N'2022-11-19 21:38:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1192, 10, N'仅退款', N'10', N'trade_after_sale_way', 0, N'primary', N'', N'交易售后的方式 - 仅退款', N'1', N'2022-11-19 21:39:19', N'1', N'2022-11-19 21:39:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1193, 20, N'退货退款', N'20', N'trade_after_sale_way', 0, N'success', N'', N'交易售后的方式 - 退货退款', N'1', N'2022-11-19 21:39:38', N'1', N'2022-11-19 21:39:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1194, 10, N'微信小程序', N'10', N'terminal', 0, N'default', N'', N'终端 - 微信小程序', N'1', N'2022-12-10 10:51:11', N'1', N'2022-12-10 10:51:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1195, 20, N'H5 网页', N'20', N'terminal', 0, N'default', N'', N'终端 - H5 网页', N'1', N'2022-12-10 10:51:30', N'1', N'2022-12-10 10:51:59', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1196, 11, N'微信公众号', N'11', N'terminal', 0, N'default', N'', N'终端 - 微信公众号', N'1', N'2022-12-10 10:54:16', N'1', N'2022-12-10 10:52:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1197, 31, N'苹果 App', N'31', N'terminal', 0, N'default', N'', N'终端 - 苹果 App', N'1', N'2022-12-10 10:54:42', N'1', N'2022-12-10 10:52:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1198, 32, N'安卓 App', N'32', N'terminal', 0, N'default', N'', N'终端 - 安卓 App', N'1', N'2022-12-10 10:55:02', N'1', N'2022-12-10 10:59:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1199, 0, N'普通订单', N'0', N'trade_order_type', 0, N'default', N'', N'交易订单的类型 - 普通订单', N'1', N'2022-12-10 16:34:14', N'1', N'2022-12-10 16:34:14', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1200, 1, N'秒杀订单', N'1', N'trade_order_type', 0, N'default', N'', N'交易订单的类型 - 秒杀订单', N'1', N'2022-12-10 16:34:26', N'1', N'2022-12-10 16:34:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1201, 2, N'砍价订单', N'2', N'trade_order_type', 0, N'default', N'', N'交易订单的类型 - 拼团订单', N'1', N'2022-12-10 16:34:36', N'1', N'2024-09-07 14:18:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1202, 3, N'拼团订单', N'3', N'trade_order_type', 0, N'default', N'', N'交易订单的类型 - 砍价订单', N'1', N'2022-12-10 16:34:48', N'1', N'2024-09-07 14:18:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1203, 0, N'待支付', N'0', N'trade_order_status', 0, N'default', N'', N'交易订单状态 - 待支付', N'1', N'2022-12-10 16:49:29', N'1', N'2022-12-10 16:49:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1204, 10, N'待发货', N'10', N'trade_order_status', 0, N'primary', N'', N'交易订单状态 - 待发货', N'1', N'2022-12-10 16:49:53', N'1', N'2022-12-10 16:51:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1205, 20, N'已发货', N'20', N'trade_order_status', 0, N'primary', N'', N'交易订单状态 - 已发货', N'1', N'2022-12-10 16:50:13', N'1', N'2022-12-10 16:51:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1206, 30, N'已完成', N'30', N'trade_order_status', 0, N'success', N'', N'交易订单状态 - 已完成', N'1', N'2022-12-10 16:50:30', N'1', N'2022-12-10 16:51:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1207, 40, N'已取消', N'40', N'trade_order_status', 0, N'danger', N'', N'交易订单状态 - 已取消', N'1', N'2022-12-10 16:50:50', N'1', N'2022-12-10 16:51:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1208, 0, N'未售后', N'0', N'trade_order_item_after_sale_status', 0, N'info', N'', N'交易订单项的售后状态 - 未售后', N'1', N'2022-12-10 20:58:42', N'1', N'2022-12-10 20:59:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1209, 10, N'售后中', N'10', N'trade_order_item_after_sale_status', 0, N'primary', N'', N'交易订单项的售后状态 - 售后中', N'1', N'2022-12-10 20:59:21', N'1', N'2024-07-21 17:01:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1210, 20, N'已退款', N'20', N'trade_order_item_after_sale_status', 0, N'success', N'', N'交易订单项的售后状态 - 已退款', N'1', N'2022-12-10 20:59:46', N'1', N'2024-07-21 17:01:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1211, 1, N'完全匹配', N'1', N'mp_auto_reply_request_match', 0, N'primary', N'', N'公众号自动回复的请求关键字匹配模式 - 完全匹配', N'1', N'2023-01-16 23:30:39', N'1', N'2023-01-16 23:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1212, 2, N'半匹配', N'2', N'mp_auto_reply_request_match', 0, N'success', N'', N'公众号自动回复的请求关键字匹配模式 - 半匹配', N'1', N'2023-01-16 23:30:55', N'1', N'2023-01-16 23:31:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1213, 1, N'文本', N'text', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 文本', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 22:17:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1214, 2, N'图片', N'image', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 图片', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:19:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1215, 3, N'语音', N'voice', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 语音', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:20:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1216, 4, N'视频', N'video', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 视频', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:21:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1217, 5, N'小视频', N'shortvideo', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 小视频', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:19:59', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1218, 6, N'图文', N'news', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 图文', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:22:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1219, 7, N'音乐', N'music', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 音乐', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:22:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1220, 8, N'地理位置', N'location', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 地理位置', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:23:51', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1221, 9, N'链接', N'link', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 链接', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:24:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1222, 10, N'事件', N'event', N'mp_message_type', 0, N'default', N'', N'公众号的消息类型 - 事件', N'1', N'2023-01-17 22:17:32', N'1', N'2023-01-17 14:24:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1223, 0, N'初始化', N'0', N'system_mail_send_status', 0, N'primary', N'', N'邮件发送状态 - 初始化\n', N'1', N'2023-01-26 09:53:49', N'1', N'2023-01-26 16:36:14', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1224, 10, N'发送成功', N'10', N'system_mail_send_status', 0, N'success', N'', N'邮件发送状态 - 发送成功', N'1', N'2023-01-26 09:54:28', N'1', N'2023-01-26 16:36:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1225, 20, N'发送失败', N'20', N'system_mail_send_status', 0, N'danger', N'', N'邮件发送状态 - 发送失败', N'1', N'2023-01-26 09:54:50', N'1', N'2023-01-26 16:36:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1226, 30, N'不发送', N'30', N'system_mail_send_status', 0, N'info', N'', N'邮件发送状态 -  不发送', N'1', N'2023-01-26 09:55:06', N'1', N'2023-01-26 16:36:36', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1227, 1, N'通知公告', N'1', N'system_notify_template_type', 0, N'primary', N'', N'站内信模版的类型 - 通知公告', N'1', N'2023-01-28 10:35:59', N'1', N'2023-01-28 10:35:59', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1228, 2, N'系统消息', N'2', N'system_notify_template_type', 0, N'success', N'', N'站内信模版的类型 - 系统消息', N'1', N'2023-01-28 10:36:20', N'1', N'2023-01-28 10:36:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1230, 13, N'支付宝条码支付', N'alipay_bar', N'pay_channel_code', 0, N'primary', N'', N'支付宝条码支付', N'1', N'2023-02-18 23:32:24', N'1', N'2023-07-19 20:09:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1231, 10, N'Vue2 Element UI 标准模版', N'10', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2023-04-13 00:03:55', N'1', N'2023-04-13 00:03:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1232, 20, N'Vue3 Element Plus 标准模版', N'20', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2023-04-13 00:04:08', N'1', N'2023-04-13 00:04:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1234, 30, N'Vben2.0 Ant Design Schema 模版', N'30', N'infra_codegen_front_type', 1, N'', N'', N'', N'1', N'2023-04-13 00:04:26', N'1', N'2025-07-27 10:55:14', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1244, 0, N'按件', N'1', N'trade_delivery_express_charge_mode', 0, N'', N'', N'', N'1', N'2023-05-21 22:46:40', N'1', N'2023-05-21 22:46:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1245, 1, N'按重量', N'2', N'trade_delivery_express_charge_mode', 0, N'', N'', N'', N'1', N'2023-05-21 22:46:58', N'1', N'2023-05-21 22:46:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1246, 2, N'按体积', N'3', N'trade_delivery_express_charge_mode', 0, N'', N'', N'', N'1', N'2023-05-21 22:47:18', N'1', N'2023-05-21 22:47:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1335, 11, N'订单积分抵扣', N'11', N'member_point_biz_type', 0, N'', N'', N'', N'1', N'2023-06-10 12:15:27', N'1', N'2023-10-11 07:41:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1336, 1, N'签到', N'1', N'member_point_biz_type', 0, N'', N'', N'', N'1', N'2023-06-10 12:15:48', N'1', N'2023-08-20 11:59:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1341, 20, N'已退款', N'20', N'pay_order_status', 0, N'danger', N'', N'已退款', N'1', N'2023-07-19 18:05:37', N'1', N'2023-07-19 18:05:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1342, 21, N'请求成功，但是结果失败', N'21', N'pay_notify_status', 0, N'warning', N'', N'请求成功，但是结果失败', N'1', N'2023-07-19 18:10:47', N'1', N'2023-07-19 18:11:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1343, 22, N'请求失败', N'22', N'pay_notify_status', 0, N'warning', N'', NULL, N'1', N'2023-07-19 18:11:05', N'1', N'2023-07-19 18:11:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1344, 4, N'微信扫码支付', N'wx_native', N'pay_channel_code', 0, N'success', N'', N'微信扫码支付', N'1', N'2023-07-19 20:07:47', N'1', N'2023-07-19 20:09:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1345, 5, N'微信条码支付', N'wx_bar', N'pay_channel_code', 0, N'success', N'', N'微信条码支付\n', N'1', N'2023-07-19 20:08:06', N'1', N'2023-07-19 20:09:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1346, 1, N'支付单', N'1', N'pay_notify_type', 0, N'primary', N'', N'支付单', N'1', N'2023-07-20 12:23:17', N'1', N'2023-07-20 12:23:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1347, 2, N'退款单', N'2', N'pay_notify_type', 0, N'danger', N'', NULL, N'1', N'2023-07-20 12:23:26', N'1', N'2023-07-20 12:23:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1348, 20, N'模拟支付', N'mock', N'pay_channel_code', 0, N'default', N'', N'模拟支付', N'1', N'2023-07-29 11:10:51', N'1', N'2023-07-29 03:14:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1349, 12, N'订单积分抵扣（整单取消）', N'12', N'member_point_biz_type', 0, N'', N'', N'', N'1', N'2023-08-20 12:00:03', N'1', N'2023-10-11 07:42:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1350, 0, N'管理员调整', N'0', N'member_experience_biz_type', 0, N'', N'', NULL, N'', N'2023-08-22 12:41:01', N'', N'2023-08-22 12:41:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1351, 1, N'邀新奖励', N'1', N'member_experience_biz_type', 0, N'', N'', NULL, N'', N'2023-08-22 12:41:01', N'', N'2023-08-22 12:41:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1352, 11, N'下单奖励', N'11', N'member_experience_biz_type', 0, N'success', N'', NULL, N'', N'2023-08-22 12:41:01', N'1', N'2023-10-11 07:45:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1353, 12, N'下单奖励（整单取消）', N'12', N'member_experience_biz_type', 0, N'warning', N'', NULL, N'', N'2023-08-22 12:41:01', N'1', N'2023-10-11 07:45:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1354, 4, N'签到奖励', N'4', N'member_experience_biz_type', 0, N'', N'', NULL, N'', N'2023-08-22 12:41:01', N'', N'2023-08-22 12:41:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1355, 5, N'抽奖奖励', N'5', N'member_experience_biz_type', 0, N'', N'', NULL, N'', N'2023-08-22 12:41:01', N'', N'2023-08-22 12:41:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1356, 1, N'快递发货', N'1', N'trade_delivery_type', 0, N'', N'', N'', N'1', N'2023-08-23 00:04:55', N'1', N'2023-08-23 00:04:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1357, 2, N'用户自提', N'2', N'trade_delivery_type', 0, N'', N'', N'', N'1', N'2023-08-23 00:05:05', N'1', N'2023-08-23 00:05:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1358, 3, N'品类劵', N'3', N'promotion_product_scope', 0, N'default', N'', N'', N'1', N'2023-09-01 23:43:07', N'1', N'2023-09-28 00:27:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1359, 1, N'人人分销', N'1', N'brokerage_enabled_condition', 0, N'', N'', N'所有用户都可以分销', N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1360, 2, N'指定分销', N'2', N'brokerage_enabled_condition', 0, N'', N'', N'仅可后台手动设置推广员', N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1361, 1, N'首次绑定', N'1', N'brokerage_bind_mode', 0, N'', N'', N'只要用户没有推广人，随时都可以绑定推广关系', N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1362, 2, N'注册绑定', N'2', N'brokerage_bind_mode', 0, N'', N'', N'仅新用户注册时才能绑定推广关系', N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1363, 3, N'覆盖绑定', N'3', N'brokerage_bind_mode', 0, N'', N'', N'如果用户已经有推广人，推广人会被变更', N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1364, 1, N'钱包', N'1', N'brokerage_withdraw_type', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1365, 2, N'银行卡', N'2', N'brokerage_withdraw_type', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1366, 3, N'微信收款码', N'3', N'brokerage_withdraw_type', 0, N'', N'', N'手动打款', N'', N'2023-09-28 02:46:05', N'1', N'2025-05-10 08:24:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1367, 4, N'支付宝收款码', N'4', N'brokerage_withdraw_type', 0, N'', N'', N'手动打款', N'', N'2023-09-28 02:46:05', N'1', N'2025-05-10 08:24:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1368, 1, N'订单返佣', N'1', N'brokerage_record_biz_type', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1369, 2, N'申请提现', N'2', N'brokerage_record_biz_type', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1370, 3, N'申请提现驳回', N'3', N'brokerage_record_biz_type', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1371, 0, N'待结算', N'0', N'brokerage_record_status', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1372, 1, N'已结算', N'1', N'brokerage_record_status', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1373, 2, N'已取消', N'2', N'brokerage_record_status', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1374, 0, N'审核中', N'0', N'brokerage_withdraw_status', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1375, 10, N'审核通过', N'10', N'brokerage_withdraw_status', 0, N'success', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1376, 11, N'提现成功', N'11', N'brokerage_withdraw_status', 0, N'success', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1377, 20, N'审核不通过', N'20', N'brokerage_withdraw_status', 0, N'danger', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1378, 21, N'提现失败', N'21', N'brokerage_withdraw_status', 0, N'danger', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1379, 0, N'工商银行', N'0', N'brokerage_bank_name', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1380, 1, N'建设银行', N'1', N'brokerage_bank_name', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1381, 2, N'农业银行', N'2', N'brokerage_bank_name', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1382, 3, N'中国银行', N'3', N'brokerage_bank_name', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1383, 4, N'交通银行', N'4', N'brokerage_bank_name', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1384, 5, N'招商银行', N'5', N'brokerage_bank_name', 0, N'', N'', NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1385, 21, N'钱包', N'wallet', N'pay_channel_code', 0, N'primary', N'', N'', N'1', N'2023-10-01 21:46:19', N'1', N'2023-10-01 21:48:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1386, 1, N'砍价中', N'1', N'promotion_bargain_record_status', 0, N'default', N'', N'', N'1', N'2023-10-05 10:41:26', N'1', N'2023-10-05 10:41:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1387, 2, N'砍价成功', N'2', N'promotion_bargain_record_status', 0, N'success', N'', N'', N'1', N'2023-10-05 10:41:39', N'1', N'2023-10-05 10:41:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1388, 3, N'砍价失败', N'3', N'promotion_bargain_record_status', 0, N'warning', N'', N'', N'1', N'2023-10-05 10:41:57', N'1', N'2023-10-05 10:41:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1389, 0, N'拼团中', N'0', N'promotion_combination_record_status', 0, N'', N'', N'', N'1', N'2023-10-08 07:24:44', N'1', N'2024-10-13 10:08:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1390, 1, N'拼团成功', N'1', N'promotion_combination_record_status', 0, N'success', N'', N'', N'1', N'2023-10-08 07:24:56', N'1', N'2024-10-13 10:08:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1391, 2, N'拼团失败', N'2', N'promotion_combination_record_status', 0, N'warning', N'', N'', N'1', N'2023-10-08 07:25:11', N'1', N'2024-10-13 10:08:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1392, 2, N'管理员修改', N'2', N'member_point_biz_type', 0, N'default', N'', N'', N'1', N'2023-10-11 07:41:34', N'1', N'2023-10-11 07:41:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1393, 13, N'订单积分抵扣（单个退款）', N'13', N'member_point_biz_type', 0, N'', N'', N'', N'1', N'2023-10-11 07:42:29', N'1', N'2023-10-11 07:42:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1394, 21, N'订单积分奖励', N'21', N'member_point_biz_type', 0, N'default', N'', N'', N'1', N'2023-10-11 07:42:44', N'1', N'2023-10-11 07:42:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1395, 22, N'订单积分奖励（整单取消）', N'22', N'member_point_biz_type', 0, N'default', N'', N'', N'1', N'2023-10-11 07:42:55', N'1', N'2023-10-11 07:43:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1396, 23, N'订单积分奖励（单个退款）', N'23', N'member_point_biz_type', 0, N'default', N'', N'', N'1', N'2023-10-11 07:43:16', N'1', N'2023-10-11 07:43:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1397, 13, N'下单奖励（单个退款）', N'13', N'member_experience_biz_type', 0, N'warning', N'', N'', N'1', N'2023-10-11 07:45:24', N'1', N'2023-10-11 07:45:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1398, 5, N'网上转账', N'5', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:55:24', N'1', N'2023-10-18 21:55:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1399, 6, N'支付宝', N'6', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:55:38', N'1', N'2023-10-18 21:55:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1400, 7, N'微信支付', N'7', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:55:53', N'1', N'2023-10-18 21:55:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1401, 8, N'其他', N'8', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:56:06', N'1', N'2023-10-18 21:56:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1402, 1, N'IT', N'1', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:02:15', N'1', N'2024-02-18 23:30:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1403, 2, N'金融业', N'2', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:02:29', N'1', N'2024-02-18 23:30:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1404, 3, N'房地产', N'3', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:02:41', N'1', N'2024-02-18 23:30:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1405, 4, N'商业服务', N'4', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:02:54', N'1', N'2024-02-18 23:30:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1406, 5, N'运输/物流', N'5', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:03:03', N'1', N'2024-02-18 23:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1407, 6, N'生产', N'6', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:03:13', N'1', N'2024-02-18 23:31:08', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1408, 7, N'政府', N'7', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:03:27', N'1', N'2024-02-18 23:31:13', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1409, 8, N'文化传媒', N'8', N'crm_customer_industry', 0, N'default', N'', N'', N'1', N'2023-10-28 23:03:37', N'1', N'2024-02-18 23:31:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1422, 1, N'A （重点客户）', N'1', N'crm_customer_level', 0, N'primary', N'', N'', N'1', N'2023-10-28 23:07:13', N'1', N'2023-10-28 23:07:13', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1423, 2, N'B （普通客户）', N'2', N'crm_customer_level', 0, N'info', N'', N'', N'1', N'2023-10-28 23:07:35', N'1', N'2023-10-28 23:07:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1424, 3, N'C （非优先客户）', N'3', N'crm_customer_level', 0, N'default', N'', N'', N'1', N'2023-10-28 23:07:53', N'1', N'2023-10-28 23:07:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1425, 1, N'促销', N'1', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:08:29', N'1', N'2023-10-28 23:08:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1426, 2, N'搜索引擎', N'2', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:08:39', N'1', N'2023-10-28 23:08:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1427, 3, N'广告', N'3', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:08:47', N'1', N'2023-10-28 23:08:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1428, 4, N'转介绍', N'4', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:08:58', N'1', N'2023-10-28 23:08:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1429, 5, N'线上注册', N'5', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:09:12', N'1', N'2023-10-28 23:09:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1430, 6, N'线上咨询', N'6', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:09:22', N'1', N'2023-10-28 23:09:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1431, 7, N'预约上门', N'7', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:09:39', N'1', N'2023-10-28 23:09:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1432, 8, N'陌拜', N'8', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:10:04', N'1', N'2023-10-28 23:10:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1433, 9, N'电话咨询', N'9', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:10:18', N'1', N'2023-10-28 23:10:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1434, 10, N'邮件咨询', N'10', N'crm_customer_source', 0, N'default', N'', N'', N'1', N'2023-10-28 23:10:33', N'1', N'2023-10-28 23:10:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1435, 10, N'Gitee', N'10', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:04:42', N'1', N'2023-11-04 13:04:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1436, 20, N'钉钉', N'20', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:04:54', N'1', N'2023-11-04 13:04:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1437, 30, N'企业微信', N'30', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:05:09', N'1', N'2023-11-04 13:05:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1438, 31, N'微信公众平台', N'31', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:05:18', N'1', N'2023-11-04 13:05:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1439, 32, N'微信开放平台', N'32', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:05:30', N'1', N'2023-11-04 13:05:30', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1440, 34, N'微信小程序', N'34', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:05:38', N'1', N'2023-11-04 13:07:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1441, 1, N'上架', N'1', N'crm_product_status', 0, N'success', N'', N'', N'1', N'2023-10-30 21:49:34', N'1', N'2023-10-30 21:49:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1442, 0, N'下架', N'0', N'crm_product_status', 0, N'success', N'', N'', N'1', N'2023-10-30 21:49:13', N'1', N'2023-10-30 21:49:13', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1443, 15, N'子表', N'15', N'infra_codegen_template_type', 0, N'default', N'', N'', N'1', N'2023-11-13 23:06:16', N'1', N'2023-11-13 23:06:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1444, 10, N'主表（标准模式）', N'10', N'infra_codegen_template_type', 0, N'default', N'', N'', N'1', N'2023-11-14 12:32:49', N'1', N'2023-11-14 12:32:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1445, 11, N'主表（ERP 模式）', N'11', N'infra_codegen_template_type', 0, N'default', N'', N'', N'1', N'2023-11-14 12:33:05', N'1', N'2023-11-14 12:33:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1446, 12, N'主表（内嵌模式）', N'12', N'infra_codegen_template_type', 0, N'', N'', N'', N'1', N'2023-11-14 12:33:31', N'1', N'2023-11-14 12:33:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1447, 1, N'负责人', N'1', N'crm_permission_level', 0, N'default', N'', N'', N'1', N'2023-11-30 09:53:12', N'1', N'2023-11-30 09:53:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1448, 2, N'只读', N'2', N'crm_permission_level', 0, N'', N'', N'', N'1', N'2023-11-30 09:53:29', N'1', N'2023-11-30 09:53:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1449, 3, N'读写', N'3', N'crm_permission_level', 0, N'', N'', N'', N'1', N'2023-11-30 09:53:36', N'1', N'2023-11-30 09:53:36', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1450, 0, N'未提交', N'0', N'crm_audit_status', 0, N'', N'', N'', N'1', N'2023-11-30 18:56:59', N'1', N'2023-11-30 18:56:59', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1451, 10, N'审批中', N'10', N'crm_audit_status', 0, N'', N'', N'', N'1', N'2023-11-30 18:57:10', N'1', N'2023-11-30 18:57:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1452, 20, N'审核通过', N'20', N'crm_audit_status', 0, N'', N'', N'', N'1', N'2023-11-30 18:57:24', N'1', N'2023-11-30 18:57:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1453, 30, N'审核不通过', N'30', N'crm_audit_status', 0, N'', N'', N'', N'1', N'2023-11-30 18:57:32', N'1', N'2023-11-30 18:57:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1454, 40, N'已取消', N'40', N'crm_audit_status', 0, N'', N'', N'', N'1', N'2023-11-30 18:57:42', N'1', N'2023-11-30 18:57:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1456, 1, N'支票', N'1', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:54:29', N'1', N'2023-10-18 21:54:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1457, 2, N'现金', N'2', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:54:41', N'1', N'2023-10-18 21:54:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1458, 3, N'邮政汇款', N'3', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:54:53', N'1', N'2023-10-18 21:54:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1459, 4, N'电汇', N'4', N'crm_receivable_return_type', 0, N'default', N'', N'', N'1', N'2023-10-18 21:55:07', N'1', N'2023-10-18 21:55:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1461, 1, N'个', N'1', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:02:26', N'1', N'2023-12-05 23:02:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1462, 2, N'块', N'2', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:02:34', N'1', N'2023-12-05 23:02:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1463, 3, N'只', N'3', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:02:57', N'1', N'2023-12-05 23:02:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1464, 4, N'把', N'4', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:03:05', N'1', N'2023-12-05 23:03:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1465, 5, N'枚', N'5', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:03:14', N'1', N'2023-12-05 23:03:14', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1466, 6, N'瓶', N'6', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:03:20', N'1', N'2023-12-05 23:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1467, 7, N'盒', N'7', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:03:30', N'1', N'2023-12-05 23:03:30', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1468, 8, N'台', N'8', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:03:41', N'1', N'2023-12-05 23:03:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1469, 9, N'吨', N'9', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:03:48', N'1', N'2023-12-05 23:03:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1470, 10, N'千克', N'10', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:04:03', N'1', N'2023-12-05 23:04:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1471, 11, N'米', N'11', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:04:12', N'1', N'2023-12-05 23:04:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1472, 12, N'箱', N'12', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:04:25', N'1', N'2023-12-05 23:04:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1473, 13, N'套', N'13', N'crm_product_unit', 0, N'', N'', N'', N'1', N'2023-12-05 23:04:34', N'1', N'2023-12-05 23:04:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1474, 1, N'打电话', N'1', N'crm_follow_up_type', 0, N'', N'', N'', N'1', N'2024-01-15 20:48:20', N'1', N'2024-01-15 20:48:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1475, 2, N'发短信', N'2', N'crm_follow_up_type', 0, N'', N'', N'', N'1', N'2024-01-15 20:48:31', N'1', N'2024-01-15 20:48:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1476, 3, N'上门拜访', N'3', N'crm_follow_up_type', 0, N'', N'', N'', N'1', N'2024-01-15 20:49:07', N'1', N'2024-01-15 20:49:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1477, 4, N'微信沟通', N'4', N'crm_follow_up_type', 0, N'', N'', N'', N'1', N'2024-01-15 20:49:15', N'1', N'2024-01-15 20:49:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1482, 4, N'转账失败', N'20', N'pay_transfer_status', 0, N'warning', N'', N'', N'1', N'2023-10-28 16:24:16', N'1', N'2025-05-08 12:59:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1483, 3, N'转账成功', N'10', N'pay_transfer_status', 0, N'success', N'', N'', N'1', N'2023-10-28 16:23:50', N'1', N'2025-05-08 12:58:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1484, 2, N'转账进行中', N'5', N'pay_transfer_status', 0, N'info', N'', N'', N'1', N'2023-10-28 16:23:12', N'1', N'2025-05-08 12:58:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1485, 1, N'等待转账', N'0', N'pay_transfer_status', 0, N'default', N'', N'', N'1', N'2023-10-28 16:21:43', N'1', N'2023-10-28 16:23:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1486, 10, N'其它入库', N'10', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-05 18:07:25', N'1', N'2024-02-05 18:07:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1487, 11, N'其它入库（作废）', N'11', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-05 18:08:07', N'1', N'2024-02-05 19:20:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1488, 20, N'其它出库', N'20', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-05 18:08:51', N'1', N'2024-02-05 18:08:51', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1489, 21, N'其它出库（作废）', N'21', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-05 18:09:00', N'1', N'2024-02-05 19:20:10', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1490, 10, N'未审核', N'10', N'erp_audit_status', 0, N'default', N'', N'', N'1', N'2024-02-06 00:00:21', N'1', N'2024-02-06 00:00:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1491, 20, N'已审核', N'20', N'erp_audit_status', 0, N'success', N'', N'', N'1', N'2024-02-06 00:00:35', N'1', N'2024-02-06 00:00:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1492, 30, N'调拨入库', N'30', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-07 20:34:19', N'1', N'2024-02-07 12:36:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1493, 31, N'调拨入库（作废）', N'31', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-07 20:34:29', N'1', N'2024-02-07 20:37:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1494, 32, N'调拨出库', N'32', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-07 20:34:38', N'1', N'2024-02-07 12:36:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1495, 33, N'调拨出库（作废）', N'33', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-07 20:34:49', N'1', N'2024-02-07 20:37:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1496, 40, N'盘盈入库', N'40', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-08 08:53:00', N'1', N'2024-02-08 08:53:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1497, 41, N'盘盈入库（作废）', N'41', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-08 08:53:39', N'1', N'2024-02-16 19:40:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1498, 42, N'盘亏出库', N'42', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-08 08:54:16', N'1', N'2024-02-08 08:54:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1499, 43, N'盘亏出库（作废）', N'43', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-08 08:54:31', N'1', N'2024-02-16 19:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1500, 50, N'销售出库', N'50', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-11 21:47:25', N'1', N'2024-02-11 21:50:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1501, 51, N'销售出库（作废）', N'51', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-11 21:47:37', N'1', N'2024-02-11 21:51:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1502, 60, N'销售退货入库', N'60', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-12 06:51:05', N'1', N'2024-02-12 06:51:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1503, 61, N'销售退货入库（作废）', N'61', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-12 06:51:18', N'1', N'2024-02-12 06:51:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1504, 70, N'采购入库', N'70', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-16 13:10:02', N'1', N'2024-02-16 13:10:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1505, 71, N'采购入库（作废）', N'71', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-16 13:10:10', N'1', N'2024-02-16 19:40:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1506, 80, N'采购退货出库', N'80', N'erp_stock_record_biz_type', 0, N'', N'', N'', N'1', N'2024-02-16 13:10:17', N'1', N'2024-02-16 13:10:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1507, 81, N'采购退货出库（作废）', N'81', N'erp_stock_record_biz_type', 0, N'danger', N'', N'', N'1', N'2024-02-16 13:10:26', N'1', N'2024-02-16 19:40:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1509, 3, N'审批不通过', N'3', N'bpm_process_instance_status', 0, N'danger', N'', N'', N'1', N'2024-03-16 16:12:06', N'1', N'2024-03-16 16:12:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1510, 4, N'已取消', N'4', N'bpm_process_instance_status', 0, N'warning', N'', N'', N'1', N'2024-03-16 16:12:22', N'1', N'2024-03-16 16:12:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1511, 5, N'已退回', N'5', N'bpm_task_status', 0, N'warning', N'', N'', N'1', N'2024-03-16 19:10:46', N'1', N'2024-03-08 22:41:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1512, 6, N'委派中', N'6', N'bpm_task_status', 0, N'primary', N'', N'', N'1', N'2024-03-17 10:06:22', N'1', N'2024-03-08 22:41:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1513, 7, N'审批通过中', N'7', N'bpm_task_status', 0, N'success', N'', N'', N'1', N'2024-03-17 10:06:47', N'1', N'2024-03-08 22:41:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1514, 0, N'待审批', N'0', N'bpm_task_status', 0, N'info', N'', N'', N'1', N'2024-03-17 10:07:11', N'1', N'2024-03-08 22:41:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1515, 35, N'发起人自选', N'35', N'bpm_task_candidate_strategy', 0, N'', N'', N'', N'1', N'2024-03-22 19:45:16', N'1', N'2024-03-22 19:45:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1516, 1, N'执行监听器', N'execution', N'bpm_process_listener_type', 0, N'primary', N'', N'', N'1', N'2024-03-23 12:54:03', N'1', N'2024-03-23 19:14:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1517, 1, N'任务监听器', N'task', N'bpm_process_listener_type', 0, N'success', N'', N'', N'1', N'2024-03-23 12:54:13', N'1', N'2024-03-23 19:14:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1526, 1, N'Java 类', N'class', N'bpm_process_listener_value_type', 0, N'primary', N'', N'', N'1', N'2024-03-23 15:08:45', N'1', N'2024-03-23 19:14:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1527, 2, N'表达式', N'expression', N'bpm_process_listener_value_type', 0, N'success', N'', N'', N'1', N'2024-03-23 15:09:06', N'1', N'2024-03-23 19:14:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1528, 3, N'代理表达式', N'delegateExpression', N'bpm_process_listener_value_type', 0, N'info', N'', N'', N'1', N'2024-03-23 15:11:23', N'1', N'2024-03-23 19:14:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1529, 1, N'天', N'1', N'date_interval', 0, N'', N'', N'', N'1', N'2024-03-29 22:50:26', N'1', N'2024-03-29 22:50:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1530, 2, N'周', N'2', N'date_interval', 0, N'', N'', N'', N'1', N'2024-03-29 22:50:36', N'1', N'2024-03-29 22:50:36', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1531, 3, N'月', N'3', N'date_interval', 0, N'', N'', N'', N'1', N'2024-03-29 22:50:46', N'1', N'2024-03-29 22:50:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1532, 4, N'季度', N'4', N'date_interval', 0, N'', N'', N'', N'1', N'2024-03-29 22:51:01', N'1', N'2024-03-29 22:51:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1533, 5, N'年', N'5', N'date_interval', 0, N'', N'', N'', N'1', N'2024-03-29 22:51:07', N'1', N'2024-03-29 22:51:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1534, 1, N'赢单', N'1', N'crm_business_end_status_type', 0, N'success', N'', N'', N'1', N'2024-04-13 23:26:57', N'1', N'2024-04-13 23:26:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1535, 2, N'输单', N'2', N'crm_business_end_status_type', 0, N'primary', N'', N'', N'1', N'2024-04-13 23:27:31', N'1', N'2024-04-13 23:27:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1536, 3, N'无效', N'3', N'crm_business_end_status_type', 0, N'info', N'', N'', N'1', N'2024-04-13 23:27:59', N'1', N'2024-04-13 23:27:59', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1537, 1, N'OpenAI', N'OpenAI', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-05-09 22:33:47', N'1', N'2024-05-09 22:58:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1538, 2, N'Ollama', N'Ollama', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-05-17 23:02:55', N'1', N'2024-05-17 23:02:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1539, 3, N'文心一言', N'YiYan', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-05-18 09:24:20', N'1', N'2024-05-18 09:29:01', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1540, 4, N'讯飞星火', N'XingHuo', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-05-18 10:08:56', N'1', N'2024-05-18 10:08:56', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1541, 5, N'通义千问', N'TongYi', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-05-18 10:32:29', N'1', N'2024-07-06 15:42:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1542, 6, N'StableDiffusion', N'StableDiffusion', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-06-01 15:09:31', N'1', N'2024-06-01 15:10:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1543, 10, N'进行中', N'10', N'ai_image_status', 0, N'primary', N'', N'', N'1', N'2024-06-26 20:51:41', N'1', N'2024-06-26 20:52:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1544, 20, N'已完成', N'20', N'ai_image_status', 0, N'success', N'', N'', N'1', N'2024-06-26 20:52:07', N'1', N'2024-06-26 20:52:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1545, 30, N'已失败', N'30', N'ai_image_status', 0, N'warning', N'', N'', N'1', N'2024-06-26 20:52:25', N'1', N'2024-06-26 20:52:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1546, 7, N'Midjourney', N'Midjourney', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-06-26 22:14:46', N'1', N'2024-06-26 22:14:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1547, 10, N'进行中', N'10', N'ai_music_status', 0, N'primary', N'', N'', N'1', N'2024-06-27 22:45:22', N'1', N'2024-06-28 00:56:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1548, 20, N'已完成', N'20', N'ai_music_status', 0, N'success', N'', N'', N'1', N'2024-06-27 22:45:33', N'1', N'2024-06-28 00:56:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1549, 30, N'已失败', N'30', N'ai_music_status', 0, N'danger', N'', N'', N'1', N'2024-06-27 22:45:44', N'1', N'2024-06-28 00:56:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1550, 1, N'歌词模式', N'1', N'ai_generate_mode', 0, N'', N'', N'', N'1', N'2024-06-27 22:46:31', N'1', N'2024-06-28 01:22:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1551, 2, N'描述模式', N'2', N'ai_generate_mode', 0, N'', N'', N'', N'1', N'2024-06-27 22:46:37', N'1', N'2024-06-28 01:22:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1552, 8, N'Suno', N'Suno', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-06-29 09:13:36', N'1', N'2024-06-29 09:13:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1553, 9, N'DeepSeek', N'DeepSeek', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-07-06 12:04:30', N'1', N'2024-07-06 12:05:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1554, 13, N'智谱', N'ZhiPu', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-07-06 18:00:35', N'1', N'2025-02-24 20:18:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1555, 4, N'长', N'4', N'ai_write_length', 0, N'', N'', N'', N'1', N'2024-07-07 15:49:03', N'1', N'2024-07-07 15:49:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1556, 5, N'段落', N'5', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:49:54', N'1', N'2024-07-07 15:49:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1557, 6, N'文章', N'6', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:50:05', N'1', N'2024-07-07 15:50:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1558, 7, N'博客文章', N'7', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:50:23', N'1', N'2024-07-07 15:50:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1559, 8, N'想法', N'8', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:50:31', N'1', N'2024-07-07 15:50:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1560, 9, N'大纲', N'9', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:50:37', N'1', N'2024-07-07 15:50:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1561, 1, N'自动', N'1', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:51:06', N'1', N'2024-07-07 15:51:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1562, 2, N'友善', N'2', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:51:19', N'1', N'2024-07-07 15:51:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1563, 3, N'随意', N'3', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:51:27', N'1', N'2024-07-07 15:51:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1564, 4, N'友好', N'4', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:51:37', N'1', N'2024-07-07 15:51:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1565, 5, N'专业', N'5', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:51:49', N'1', N'2024-07-07 15:52:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1566, 6, N'诙谐', N'6', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:52:15', N'1', N'2024-07-07 15:52:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1567, 7, N'有趣', N'7', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:52:24', N'1', N'2024-07-07 15:52:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1568, 8, N'正式', N'8', N'ai_write_tone', 0, N'', N'', N'', N'1', N'2024-07-07 15:54:33', N'1', N'2024-07-07 15:54:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1570, 1, N'自动', N'1', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:19:34', N'1', N'2024-07-07 15:19:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1571, 2, N'电子邮件', N'2', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:19:50', N'1', N'2024-07-07 15:49:30', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1572, 3, N'消息', N'3', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:20:01', N'1', N'2024-07-07 15:49:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1573, 4, N'评论', N'4', N'ai_write_format', 0, N'', N'', N'', N'1', N'2024-07-07 15:20:13', N'1', N'2024-07-07 15:49:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1574, 1, N'自动', N'1', N'ai_write_language', 0, N'', N'', N'', N'1', N'2024-07-07 15:44:18', N'1', N'2024-07-07 15:44:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1575, 2, N'中文', N'2', N'ai_write_language', 0, N'', N'', N'', N'1', N'2024-07-07 15:44:28', N'1', N'2024-07-07 15:44:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1576, 3, N'英文', N'3', N'ai_write_language', 0, N'', N'', N'', N'1', N'2024-07-07 15:44:37', N'1', N'2024-07-07 15:44:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1577, 4, N'韩语', N'4', N'ai_write_language', 0, N'', N'', N'', N'1', N'2024-07-07 15:46:28', N'1', N'2024-07-07 15:46:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1578, 5, N'日语', N'5', N'ai_write_language', 0, N'', N'', N'', N'1', N'2024-07-07 15:46:44', N'1', N'2024-07-07 15:46:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1579, 1, N'自动', N'1', N'ai_write_length', 0, N'', N'', N'', N'1', N'2024-07-07 15:48:34', N'1', N'2024-07-07 15:48:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1580, 2, N'短', N'2', N'ai_write_length', 0, N'', N'', N'', N'1', N'2024-07-07 15:48:44', N'1', N'2024-07-07 15:48:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1581, 3, N'中等', N'3', N'ai_write_length', 0, N'', N'', N'', N'1', N'2024-07-07 15:48:52', N'1', N'2024-07-07 15:48:52', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1584, 1, N'撰写', N'1', N'ai_write_type', 0, N'', N'', N'', N'1', N'2024-07-10 21:26:00', N'1', N'2024-07-10 21:26:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1585, 2, N'回复', N'2', N'ai_write_type', 0, N'', N'', N'', N'1', N'2024-07-10 21:26:06', N'1', N'2024-07-10 21:26:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1586, 2, N'腾讯云', N'TENCENT', N'system_sms_channel_code', 0, N'', N'', N'', N'1', N'2024-07-22 22:23:16', N'1', N'2024-07-22 22:23:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1587, 3, N'华为云', N'HUAWEI', N'system_sms_channel_code', 0, N'', N'', N'', N'1', N'2024-07-22 22:23:46', N'1', N'2024-07-22 22:23:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1588, 1, N'OpenAI 微软', N'AzureOpenAI', N'ai_platform', 0, N'', N'', N'', N'1', N'2024-08-10 14:07:41', N'1', N'2024-08-10 14:07:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1589, 10, N'BPMN 设计器', N'10', N'bpm_model_type', 0, N'primary', N'', N'', N'1', N'2024-08-26 15:22:17', N'1', N'2024-08-26 16:46:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1590, 20, N'SIMPLE 设计器', N'20', N'bpm_model_type', 0, N'success', N'', N'', N'1', N'2024-08-26 15:22:27', N'1', N'2024-08-26 16:45:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1591, 4, N'七牛云', N'QINIU', N'system_sms_channel_code', 0, N'', N'', N'', N'1', N'2024-08-31 08:45:03', N'1', N'2024-08-31 08:45:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1592, 3, N'新人券', N'3', N'promotion_coupon_take_type', 0, N'info', N'', N'新人注册后，自动发放', N'1', N'2024-09-03 11:57:16', N'1', N'2024-09-03 11:57:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1593, 5, N'微信零钱', N'5', N'brokerage_withdraw_type', 0, N'', N'', N'API 打款', N'1', N'2024-10-13 11:06:48', N'1', N'2025-05-10 08:24:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1683, 10, N'字节豆包', N'DouBao', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-02-23 19:51:40', N'1', N'2025-02-23 19:52:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1684, 11, N'腾讯混元', N'HunYuan', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-02-23 20:58:04', N'1', N'2025-02-23 20:58:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1685, 12, N'硅基流动', N'SiliconFlow', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-02-24 20:19:09', N'1', N'2025-02-24 20:19:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1686, 1, N'聊天', N'1', N'ai_model_type', 0, N'', N'', N'', N'1', N'2025-03-03 12:26:34', N'1', N'2025-03-03 12:26:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1687, 2, N'图像', N'2', N'ai_model_type', 0, N'', N'', N'', N'1', N'2025-03-03 12:27:23', N'1', N'2025-03-03 12:27:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1688, 3, N'音频', N'3', N'ai_model_type', 0, N'', N'', N'', N'1', N'2025-03-03 12:27:51', N'1', N'2025-03-03 12:27:51', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1689, 4, N'视频', N'4', N'ai_model_type', 0, N'', N'', N'', N'1', N'2025-03-03 12:28:03', N'1', N'2025-03-03 12:28:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1690, 5, N'向量', N'5', N'ai_model_type', 0, N'', N'', N'', N'1', N'2025-03-03 12:28:15', N'1', N'2025-03-03 12:28:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1691, 6, N'重排', N'6', N'ai_model_type', 0, N'', N'', N'', N'1', N'2025-03-03 12:28:26', N'1', N'2025-03-03 12:28:26', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1692, 14, N'MiniMax', N'MiniMax', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-03-11 20:04:51', N'1', N'2025-03-11 20:04:51', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (1693, 15, N'月之暗面', N'Moonshot', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-03-11 20:05:08', N'1', N'2025-11-24 07:17:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2002, 0, N'直连设备', N'0', N'iot_product_device_type', 0, N'default', N'', N'', N'1', N'2024-08-10 11:54:58', N'1', N'2025-03-17 09:28:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2003, 2, N'网关设备', N'2', N'iot_product_device_type', 0, N'default', N'', N'', N'1', N'2024-08-10 11:55:08', N'1', N'2025-03-17 09:28:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2004, 1, N'网关子设备', N'1', N'iot_product_device_type', 0, N'default', N'', N'', N'1', N'2024-08-10 11:55:20', N'1', N'2025-03-17 09:28:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2005, 1, N'已发布', N'1', N'iot_product_status', 0, N'success', N'', N'', N'1', N'2024-08-10 12:10:33', N'1', N'2025-03-17 09:28:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2006, 0, N'开发中', N'0', N'iot_product_status', 0, N'default', N'', N'', N'1', N'2024-08-10 14:19:18', N'1', N'2025-03-17 09:28:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2009, 0, N'Wi-Fi', N'0', N'iot_net_type', 0, N'', N'', N'', N'1', N'2024-09-06 22:04:47', N'1', N'2025-03-17 09:28:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2010, 1, N'移动网络', N'1', N'iot_net_type', 0, N'', N'', N'', N'1', N'2024-09-06 22:05:14', N'1', N'2025-06-12 23:27:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2011, 2, N'以太网', N'2', N'iot_net_type', 0, N'', N'', N'', N'1', N'2024-09-06 22:05:35', N'1', N'2025-03-17 09:28:51', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2012, 3, N'其他', N'3', N'iot_net_type', 0, N'', N'', N'', N'1', N'2024-09-06 22:05:52', N'1', N'2025-03-17 09:28:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2018, 0, N'未激活', N'0', N'iot_device_state', 0, N'', N'', N'', N'1', N'2024-09-21 08:13:34', N'1', N'2025-03-17 09:29:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2019, 1, N'在线', N'1', N'iot_device_state', 0, N'', N'', N'', N'1', N'2024-09-21 08:13:48', N'1', N'2025-03-17 09:29:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2020, 2, N'离线', N'2', N'iot_device_state', 0, N'', N'', N'', N'1', N'2024-09-21 08:13:59', N'1', N'2025-03-17 09:29:14', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2021, 1, N'属性', N'1', N'iot_thing_model_type', 0, N'', N'', N'', N'1', N'2024-09-29 20:03:01', N'1', N'2025-03-17 09:29:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2022, 2, N'服务', N'2', N'iot_thing_model_type', 0, N'', N'', N'', N'1', N'2024-09-29 20:03:11', N'1', N'2025-03-17 09:29:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2023, 3, N'事件', N'3', N'iot_thing_model_type', 0, N'', N'', N'', N'1', N'2024-09-29 20:03:20', N'1', N'2025-03-17 09:29:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2030, 1, N'升每分钟', N'L/min', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:34:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2031, 2, N'毫克每千克', N'mg/kg', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:34:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2032, 3, N'浊度', N'NTU', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:34:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2033, 4, N'PH值', N'pH', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:34:36', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2034, 5, N'土壤EC值', N'dS/m', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:34:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2035, 6, N'太阳总辐射', N'W/㎡', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:36:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2036, 7, N'降雨量', N'mm/hour', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:36:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2037, 8, N'乏', N'var', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:36:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2038, 9, N'厘泊', N'cP', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:36:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2039, 10, N'饱和度', N'aw', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2040, 11, N'个', N'pcs', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2041, 12, N'厘斯', N'cst', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2042, 13, N'巴', N'bar', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2043, 14, N'纳克每升', N'ppt', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2044, 15, N'十亿分之一', N'ppb', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2026-04-05 15:53:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2045, 16, N'微西每厘米', N'uS/cm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2046, 17, N'牛顿每库仑', N'N/C', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2047, 18, N'伏特每米', N'V/m', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2048, 19, N'滴速', N'ml/min', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2049, 20, N'毫米汞柱', N'mmHg', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2050, 21, N'血糖', N'mmol/L', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:37:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2051, 22, N'毫米每秒', N'mm/s', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2052, 23, N'转每米', N'turn/m', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2026-04-05 15:53:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2053, 24, N'次', N'count', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2054, 25, N'档', N'gear', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2055, 26, N'步', N'stepCount', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:13', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2056, 27, N'标准立方米每小时', N'Nm3/h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2057, 28, N'千伏', N'kV', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2058, 29, N'千伏安', N'kVA', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:38:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2060, 30, N'千乏', N'kVar', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2061, 31, N'微瓦每平方厘米', N'uw/cm2', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2062, 32, N'只', N'只', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2063, 33, N'相对湿度', N'%RH', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2064, 34, N'立方米每秒', N'm³/s', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2065, 35, N'公斤每秒', N'kg/s', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2066, 36, N'转每分钟', N'r/min', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2067, 37, N'吨每小时', N't/h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2068, 38, N'千卡每小时', N'KCL/h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2069, 39, N'升每秒', N'L/s', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2070, 40, N'兆帕', N'MPa', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2026-04-05 15:53:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2071, 41, N'立方米每小时', N'm³/h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2072, 42, N'千乏时', N'kvarh', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2073, 43, N'微克每升', N'μg/L', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2074, 44, N'千卡路里', N'kcal', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2075, 45, N'吉字节', N'GB', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2076, 46, N'兆字节', N'MB', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2077, 47, N'千字节', N'KB', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2078, 48, N'字节', N'B', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2079, 49, N'微克每平方分米每天', N'μg/(d㎡·d)', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2080, 50, N'无', N'', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2081, 51, N'百万分率', N'ppm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2082, 52, N'像素', N'pixel', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2083, 53, N'照度', N'Lux', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2084, 54, N'重力加速度', N'grav', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2085, 55, N'分贝', N'dB', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2086, 56, N'百分比', N'%', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2087, 57, N'流明', N'lm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2088, 58, N'比特', N'bit', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2089, 59, N'克每毫升', N'g/mL', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2090, 60, N'克每升', N'g/L', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2091, 61, N'毫克每升', N'mg/L', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2092, 62, N'微克每立方米', N'μg/m³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2093, 63, N'毫克每立方米', N'mg/m³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2094, 64, N'克每立方米', N'g/m³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2095, 65, N'千克每立方米', N'kg/m³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2096, 66, N'纳法', N'nF', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2097, 67, N'皮法', N'pF', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2098, 68, N'微法', N'μF', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2099, 69, N'法拉', N'F', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2100, 70, N'欧姆', N'Ω', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2101, 71, N'微安', N'μA', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2102, 72, N'毫安', N'mA', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2103, 73, N'千安', N'kA', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2104, 74, N'安培', N'A', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2105, 75, N'毫伏', N'mV', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2106, 76, N'伏特', N'V', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2107, 77, N'毫秒', N'ms', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2108, 78, N'秒', N's', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2109, 79, N'分钟', N'min', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2110, 80, N'小时', N'h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2111, 81, N'日', N'day', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2112, 82, N'周', N'week', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2113, 83, N'月', N'month', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2114, 84, N'年', N'year', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2115, 85, N'节', N'kn', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2116, 86, N'千米每小时', N'km/h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2117, 87, N'米每秒', N'm/s', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2118, 88, N'角秒', N'″', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2026-04-05 15:53:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2119, 89, N'分', N'′', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2120, 90, N'度', N'°', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2121, 91, N'弧度', N'rad', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2122, 92, N'赫兹', N'Hz', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2123, 93, N'微瓦', N'μW', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2124, 94, N'毫瓦', N'mW', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2125, 95, N'千瓦特', N'kW', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2126, 96, N'瓦特', N'W', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2127, 97, N'卡路里', N'cal', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2128, 98, N'千瓦时', N'kW·h', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2129, 99, N'瓦时', N'Wh', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2130, 100, N'电子伏', N'eV', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2131, 101, N'千焦', N'kJ', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2132, 102, N'焦耳', N'J', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2133, 103, N'华氏度', N'℉', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2134, 104, N'开尔文', N'K', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2135, 105, N'吨', N't', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2136, 106, N'摄氏度', N'°C', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2137, 107, N'毫帕', N'1e-3Pa', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2026-04-05 15:53:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2138, 108, N'百帕', N'hPa', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2139, 109, N'千帕', N'kPa', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2140, 110, N'帕斯卡', N'Pa', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2141, 111, N'毫克', N'mg', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2142, 112, N'克', N'g', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2143, 113, N'千克', N'kg', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2144, 114, N'牛', N'N', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2145, 115, N'毫升', N'mL', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2146, 116, N'升', N'L', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2147, 117, N'立方毫米', N'mm³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2148, 118, N'立方厘米', N'cm³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2149, 119, N'立方千米', N'km³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2150, 120, N'立方米', N'm³', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2151, 121, N'公顷', N'h㎡', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2152, 122, N'平方厘米', N'c㎡', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2153, 123, N'平方毫米', N'm㎡', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2154, 124, N'平方千米', N'k㎡', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2155, 125, N'平方米', N'㎡', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2156, 126, N'纳米', N'nm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2157, 127, N'微米', N'μm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2158, 128, N'毫米', N'mm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2159, 129, N'厘米', N'cm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2160, 130, N'分米', N'dm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2161, 131, N'千米', N'km', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2162, 132, N'米', N'm', N'iot_thing_model_unit', 0, N'', N'', N'', N'1', N'2024-12-13 11:08:41', N'1', N'2025-03-17 09:40:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2165, 1, N'HTTP', N'1', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:39:54', N'1', N'2025-06-24 12:44:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2166, 2, N'TCP', N'2', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:40:06', N'1', N'2025-06-24 12:44:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2167, 3, N'WebSocket', N'3', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:40:24', N'1', N'2025-06-24 12:44:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2168, 10, N'MQTT', N'10', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:40:37', N'1', N'2025-06-24 12:44:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2169, 20, N'Database', N'20', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:41:05', N'1', N'2025-06-24 12:44:44', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2170, 21, N'Redis Stream', N'21', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:41:18', N'1', N'2025-06-24 12:44:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2171, 30, N'RocketMQ', N'30', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:41:30', N'1', N'2025-06-24 12:44:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2172, 31, N'RabbitMQ', N'31', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:41:47', N'1', N'2025-06-24 12:44:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2173, 32, N'Kafka', N'32', N'iot_data_sink_type_enum', 0, N'default', N'', N'', N'1', N'2025-03-09 12:41:59', N'1', N'2025-06-24 12:44:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2174, 1, N'设备上下线变更', N'1', N'iot_rule_scene_trigger_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:00:01', N'"1"', N'2025-07-06 10:28:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2175, 2, N'物模型属性上报', N'2', N'iot_rule_scene_trigger_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:00:09', N'"1"', N'2025-07-06 10:28:22', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2176, 1, N'设备状态', N'state', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:24:58', N'1', N'2025-03-20 15:24:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2177, 2, N'设备属性', N'property', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:25:09', N'1', N'2025-03-20 15:25:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2178, 3, N'设备事件', N'event', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:25:23', N'1', N'2025-03-20 15:25:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2179, 4, N'设备服务', N'service', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:25:39', N'1', N'2025-03-20 15:25:39', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2180, 5, N'设备配置', N'config', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:25:51', N'1', N'2025-03-20 15:25:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2181, 6, N'设备 OTA', N'ota', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:26:17', N'1', N'2025-03-20 15:26:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2182, 7, N'设备注册', N'register', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:26:35', N'1', N'2025-03-20 15:26:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2183, 8, N'设备拓扑', N'topology', N'iot_device_message_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-20 15:26:46', N'1', N'2025-03-20 15:26:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2184, 1, N'设备属性设置', N'1', N'iot_rule_scene_action_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-28 15:27:12', N'"1"', N'2025-07-06 10:37:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2185, 2, N'设备服务调用', N'2', N'iot_rule_scene_action_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-28 15:27:25', N'"1"', N'2025-07-06 10:37:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (2186, 100, N'告警触发', N'100', N'iot_rule_scene_action_type_enum', 0, N'primary', N'', N'', N'1', N'2025-03-28 15:27:35', N'"1"', N'2025-07-06 10:37:50', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3000, 16, N'百川智能', N'BaiChuan', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-03-23 12:15:46', N'1', N'2025-03-23 12:15:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3001, 40, N'Vben5.0 Ant Design Schema 模版', N'40', N'infra_codegen_front_type', 0, N'', N'', NULL, N'1', N'2025-04-23 21:47:47', N'1', N'2025-09-04 23:25:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3002, 6, N'支付宝余额', N'6', N'brokerage_withdraw_type', 0, N'', N'', N'API 打款', N'1', N'2025-05-10 08:24:49', N'1', N'2025-05-10 08:24:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3004, 3, N'WARN', N'3', N'iot_alert_level', 0, N'warning', N'', N'', N'1', N'2025-06-27 20:32:22', N'1', N'2025-06-27 20:34:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3005, 1, N'INFO', N'1', N'iot_alert_level', 0, N'primary', N'', N'', N'1', N'2025-06-27 20:33:28', N'1', N'2025-06-27 20:34:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3006, 5, N'ERROR', N'5', N'iot_alert_level', 0, N'danger', N'', N'', N'1', N'2025-06-27 20:33:50', N'1', N'2025-06-27 20:33:50', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3007, 1, N'短信', N'1', N'iot_alert_receive_type', 0, N'', N'', N'', N'1', N'2025-06-27 22:49:30', N'1', N'2025-06-27 22:49:30', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3008, 2, N'邮箱', N'2', N'iot_alert_receive_type', 0, N'', N'', N'', N'1', N'2025-06-27 22:49:39', N'1', N'2025-06-27 22:50:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3009, 3, N'站内信', N'3', N'iot_alert_receive_type', 0, N'', N'', N'', N'1', N'2025-06-27 22:50:20', N'1', N'2025-06-27 22:50:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3010, 1, N'全部设备', N'1', N'iot_ota_task_device_scope', 0, N'', N'', N'', N'1', N'2025-07-02 09:43:09', N'1', N'2025-07-02 09:43:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3011, 2, N'指定设备', N'2', N'iot_ota_task_device_scope', 0, N'', N'', N'', N'1', N'2025-07-02 09:43:15', N'1', N'2025-07-02 09:43:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3012, 10, N'进行中', N'10', N'iot_ota_task_status', 0, N'primary', N'', N'', N'1', N'2025-07-02 09:44:01', N'"1"', N'2025-07-02 09:44:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3013, 20, N'已结束', N'20', N'iot_ota_task_status', 0, N'success', N'', N'', N'1', N'2025-07-02 09:44:14', N'"1"', N'2025-07-02 23:56:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3014, 30, N'已取消', N'30', N'iot_ota_task_status', 0, N'danger', N'', N'', N'1', N'2025-07-02 09:44:36', N'1', N'2025-07-02 09:44:36', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3015, 0, N'待推送', N'0', N'iot_ota_task_record_status', 0, N'', N'', N'', N'1', N'2025-07-02 09:45:16', N'1', N'2025-07-02 09:45:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3016, 10, N'已推送', N'10', N'iot_ota_task_record_status', 0, N'', N'', N'', N'1', N'2025-07-02 09:45:25', N'1', N'2025-07-02 09:45:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3017, 20, N'升级中', N'20', N'iot_ota_task_record_status', 0, N'primary', N'', N'', N'1', N'2025-07-02 09:45:37', N'1', N'2025-07-02 09:45:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3018, 30, N'升级成功', N'30', N'iot_ota_task_record_status', 0, N'success', N'', N'', N'1', N'2025-07-02 09:45:47', N'1', N'2025-07-02 09:45:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3019, 40, N'升级失败', N'40', N'iot_ota_task_record_status', 0, N'danger', N'', N'', N'1', N'2025-07-02 09:46:02', N'1', N'2025-07-02 09:46:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3020, 50, N'升级取消', N'50', N'iot_ota_task_record_status', 0, N'warning', N'', N'', N'1', N'2025-07-02 09:46:09', N'"1"', N'2025-07-02 09:46:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3024, 3, N'设备事件上报', N'3', N'iot_rule_scene_trigger_type_enum', 0, N'', N'', N'', N'1', N'2025-07-06 10:28:29', N'1', N'2025-07-06 10:28:29', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3025, 4, N'设备服务调用', N'4', N'iot_rule_scene_trigger_type_enum', 0, N'', N'', N'', N'1', N'2025-07-06 10:28:35', N'1', N'2025-07-06 10:28:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3026, 100, N'定时触发', N'100', N'iot_rule_scene_trigger_type_enum', 0, N'', N'', N'', N'1', N'2025-07-06 10:28:48', N'1', N'2025-07-06 10:28:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3027, 101, N'告警恢复', N'101', N'iot_rule_scene_action_type_enum', 0, N'', N'', N'', N'1', N'2025-07-06 10:37:57', N'1', N'2025-07-06 10:37:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3028, 2, N'Anthropic', N'Anthropic', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-08-21 22:54:24', N'1', N'2025-08-21 22:57:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3029, 2, N'谷歌 Gemini', N'Gemini', N'ai_platform', 0, N'', N'', N'', N'1', N'2025-08-22 22:39:35', N'1', N'2025-08-22 22:44:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3030, 1, N'文件系统', N'filesystem', N'ai_mcp_client_name', 0, N'', N'', N'', N'1', N'2025-08-28 13:58:43', N'1', N'2025-08-28 21:19:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3031, 41, N'Vben5.0 Ant Design 标准模版', N'41', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2025-09-04 23:26:07', N'1', N'2025-09-04 23:26:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3032, 50, N'Vben5.0 Element Plus Schema 模版', N'50', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2025-09-04 23:26:38', N'1', N'2025-09-04 23:26:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3033, 51, N'Vben5.0 Element Plus 标准模版', N'51', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2025-09-04 23:26:49', N'1', N'2025-09-04 23:26:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3034, 1, N'ttt', N'tt', N'iot_ota_task_record_status', 0, N'success', N'', NULL, N'1', N'2025-09-06 00:02:21', N'1', N'2025-09-06 00:02:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3035, 40, N'支付宝小程序', N'40', N'system_social_type', 0, N'', N'', N'', N'1', N'2023-11-04 13:05:38', N'1', N'2023-11-04 13:07:16', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3036, 60, N'Admin Uniapp 移动端', N'60', N'infra_codegen_front_type', 0, N'', N'', NULL, N'1', N'2025-12-16 19:25:51', N'1', N'2025-12-17 09:46:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3037, 42, N'Vben5.0 Antdv Next Schema 模版', N'42', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2026-05-16 00:00:00', N'1', N'2026-05-16 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3038, 43, N'Vben5.0 Antdv Next 标准模版', N'43', N'infra_codegen_front_type', 0, N'', N'', N'', N'1', N'2026-05-16 00:00:00', N'1', N'2026-05-16 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3040, 1, N'UDP', N'udp', N'iot_protocol_type', 0, N'', N'', N'UDP 协议', N'1', N'2026-02-04 00:32:47', N'1', N'2026-02-04 00:32:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3041, 2, N'WebSocket', N'websocket', N'iot_protocol_type', 0, N'', N'', N'WebSocket 协议', N'1', N'2026-02-04 00:32:55', N'1', N'2026-02-04 00:32:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3042, 3, N'HTTP', N'http', N'iot_protocol_type', 0, N'', N'', N'HTTP 协议', N'1', N'2026-02-04 00:32:55', N'1', N'2026-02-04 00:32:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3043, 4, N'MQTT', N'mqtt', N'iot_protocol_type', 0, N'success', N'', N'MQTT 协议', N'1', N'2026-02-04 00:32:55', N'1', N'2026-02-04 00:32:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3044, 5, N'EMQX', N'emqx', N'iot_protocol_type', 0, N'success', N'', N'EMQX 协议', N'1', N'2026-02-04 00:32:55', N'1', N'2026-02-04 00:32:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3045, 6, N'CoAP', N'coap', N'iot_protocol_type', 0, N'', N'', N'CoAP 协议', N'1', N'2026-02-04 00:32:55', N'1', N'2026-02-04 00:32:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3046, 7, N'Modbus TCP Server', N'modbus_tcp_server', N'iot_protocol_type', 0, N'', N'', N'Modbus TCP Server 协议', N'1', N'2026-02-04 00:32:55', N'1', N'2026-02-12 15:16:45', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3047, 0, N'JSON', N'json', N'iot_serialize_type', 0, N'success', N'', N'JSON 格式', N'1', N'2026-02-04 00:33:19', N'1', N'2026-02-04 00:33:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3048, 1, N'二进制', N'binary', N'iot_serialize_type', 0, N'warning', N'', N'二进制格式', N'1', N'2026-02-04 00:33:19', N'1', N'2026-02-04 00:33:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3049, 8, N'Modbus TCP Client', N'modbus_tcp_client', N'iot_protocol_type', 0, N'', N'', N'Modbus TCP Client 协议', N'1', N'2026-02-08 18:29:46', N'1', N'2026-02-12 15:16:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3050, 2, N'边缘采集', N'2', N'iot_modbus_mode', 0, N'success', N'', N'设备主动上报数据，无需轮询', N'1', N'2025-06-12 22:56:06', N'1', N'2026-02-09 13:03:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3051, 1, N'Modbus TCP', N'1', N'iot_modbus_frame_format', 0, N'default', N'', N'MBAP 头部格式', N'1', N'2025-06-12 22:56:06', N'1', N'2025-06-12 22:56:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3052, 2, N'Modbus RTU', N'2', N'iot_modbus_frame_format', 0, N'warning', N'', N'CRC16 校验格式', N'1', N'2025-06-12 22:56:06', N'1', N'2025-06-12 22:56:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3053, 1, N'云端轮询', N'1', N'iot_modbus_mode', 0, N'primary', N'', N'网关主动轮询读取设备寄存器', N'1', N'2025-06-12 22:56:06', N'1', N'2025-06-12 22:56:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3054, 1, N'企业客户', N'1', N'mes_client_type', 0, N'primary', N'', N'', N'1', N'2026-02-15 14:38:25', N'1', N'2026-02-15 14:38:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3055, 2, N'个人', N'2', N'mes_client_type', 0, N'success', N'', N'', N'1', N'2026-02-15 14:38:25', N'1', N'2026-02-15 14:38:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3056, 1, N'优质供应商', N'A', N'mes_vendor_level', 0, N'success', N'', N'', N'1', N'2026-02-15 15:59:15', N'1', N'2026-02-15 15:59:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3057, 2, N'正常', N'B', N'mes_vendor_level', 0, N'primary', N'', N'', N'1', N'2026-02-15 15:59:15', N'1', N'2026-02-15 15:59:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3058, 3, N'重点关注', N'C', N'mes_vendor_level', 0, N'warning', N'', N'', N'1', N'2026-02-15 15:59:15', N'1', N'2026-02-15 15:59:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3059, 4, N'劣质供应商', N'D', N'mes_vendor_level', 0, N'danger', N'', N'', N'1', N'2026-02-15 15:59:15', N'1', N'2026-02-15 15:59:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3060, 5, N'黑名单', N'E', N'mes_vendor_level', 0, N'info', N'', N'', N'1', N'2026-02-15 15:59:15', N'1', N'2026-02-15 15:59:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3061, 1, N'假期', N'2', N'mes_cal_holiday_type', 0, N'success', N'', N'', N'1', N'2026-02-16 07:35:58', N'1', N'2026-02-16 11:20:42', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3062, 2, N'工作日', N'1', N'mes_cal_holiday_type', 0, N'primary', N'', N'', N'1', N'2026-02-16 07:35:58', N'1', N'2026-02-16 11:20:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3063, 1, N'在库', N'1', N'mes_tm_tool_status', 0, N'success', N'', N'', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3064, 2, N'领用中', N'2', N'mes_tm_tool_status', 0, N'primary', N'', N'', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3065, 3, N'维修中', N'3', N'mes_tm_tool_status', 0, N'warning', N'', N'', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3066, 4, N'报废', N'4', N'mes_tm_tool_status', 0, N'danger', N'', N'', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3067, 1, N'定期维护', N'1', N'mes_tm_mainten_type', 0, N'primary', N'', N'', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3068, 2, N'按使用次数维护', N'2', N'mes_tm_mainten_type', 0, N'success', N'', N'', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3069, 1, N'停机', N'1', N'mes_dv_machinery_status', 0, N'success', N'', N'', N'1', N'2026-02-17 01:00:06', N'1', N'2026-02-17 03:28:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3070, 2, N'生产中', N'2', N'mes_dv_machinery_status', 0, N'info', N'', N'', N'1', N'2026-02-17 01:00:06', N'1', N'2026-02-17 03:28:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3071, 3, N'维护中', N'3', N'mes_dv_machinery_status', 0, N'danger', N'', N'', N'1', N'2026-02-17 01:00:06', N'1', N'2026-02-17 03:28:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3072, 1, N'尺寸', N'1', N'mes_indicator_type', 0, N'', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-04-09 14:38:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3073, 2, N'外观', N'2', N'mes_indicator_type', 0, N'', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-04-09 14:38:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3074, 3, N'重量', N'3', N'mes_indicator_type', 0, N'', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-04-09 14:38:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3075, 4, N'性能', N'4', N'mes_indicator_type', 0, N'', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-04-09 14:38:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3076, 5, N'成分', N'5', N'mes_indicator_type', 0, N'', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-04-09 14:38:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3077, 1, N'致命缺陷', N'1', N'mes_defect_level', 0, N'danger', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-02-21 12:21:12', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3078, 2, N'严重缺陷', N'2', N'mes_defect_level', 0, N'warning', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-02-21 12:21:15', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3079, 3, N'轻微缺陷', N'3', N'mes_defect_level', 0, N'info', N'', N'', N'1', N'2026-02-17 02:18:18', N'1', N'2026-02-21 12:21:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3080, 1, N'单白班', N'1', N'mes_cal_shift_type', 0, N'primary', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3081, 2, N'两班倒', N'2', N'mes_cal_shift_type', 0, N'success', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3082, 3, N'三班倒', N'3', N'mes_cal_shift_type', 0, N'warning', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3083, 1, N'按季度', N'1', N'mes_cal_shift_method', 0, N'', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3084, 2, N'按月', N'2', N'mes_cal_shift_method', 0, N'', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3085, 3, N'按周', N'3', N'mes_cal_shift_method', 0, N'', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3086, 4, N'按天', N'4', N'mes_cal_shift_method', 0, N'', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3089, 0, N'草稿', N'0', N'mes_cal_plan_status', 0, N'info', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3090, 1, N'已确认', N'1', N'mes_cal_plan_status', 0, N'success', N'', N'', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3100, 0, N'草稿', N'0', N'mes_pro_work_order_status', 0, N'info', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3101, 1, N'已确认', N'1', N'mes_pro_work_order_status', 0, N'primary', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3102, 2, N'已完成', N'2', N'mes_pro_work_order_status', 0, N'success', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3103, 3, N'已取消', N'3', N'mes_pro_work_order_status', 0, N'warning', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3104, 1, N'客户订单', N'1', N'mes_pro_work_order_source_type', 0, N'primary', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3105, 2, N'库存备货', N'2', N'mes_pro_work_order_source_type', 0, N'success', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3106, 1, N'自行生产', N'1', N'mes_pro_work_order_type', 0, N'primary', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3107, 2, N'代工', N'2', N'mes_pro_work_order_type', 0, N'warning', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3108, 3, N'采购', N'3', N'mes_pro_work_order_type', 0, N'info', N'', N'', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3121, 1, N'IQC（来料检验）', N'1', N'mes_qc_type', 0, N'primary', N'', N'来料质量检验', N'1', N'2026-02-18 14:12:05', N'1', N'2026-02-18 14:12:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3122, 2, N'IPQC（过程检验）', N'2', N'mes_qc_type', 0, N'warning', N'', N'生产制程质量检验', N'1', N'2026-02-18 14:12:05', N'1', N'2026-03-24 15:21:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3123, 3, N'OQC（出货检验）', N'3', N'mes_qc_type', 0, N'success', N'', N'出货质量检验', N'1', N'2026-02-18 14:12:05', N'1', N'2026-02-18 14:12:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3124, 4, N'RQC（退料检验）', N'4', N'mes_qc_type', 0, N'danger', N'', N'退货质量检验', N'1', N'2026-02-18 14:12:05', N'1', N'2026-03-24 15:22:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3125, 0, N'开始-开始(SS)', N'0', N'mes_pro_link_type', 0, N'default', N'', N'前序开始后，后序可以开始', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3126, 1, N'结束-结束(FF)', N'1', N'mes_pro_link_type', 0, N'default', N'', N'前序结束后，后序才能结束', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3127, 2, N'开始-结束(SF)', N'2', N'mes_pro_link_type', 0, N'default', N'', N'前序开始后，后序才能结束', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3128, 3, N'结束-开始(FS)', N'3', N'mes_pro_link_type', 0, N'default', N'', N'前序结束后，后序才能开始', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3129, 1, N'分钟', N'MINUTE', N'mes_time_unit_type', 0, N'default', N'', N'', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3130, 2, N'小时', N'HOUR', N'mes_time_unit_type', 0, N'default', N'', N'', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3131, 3, N'天', N'DAY', N'mes_time_unit_type', 0, N'default', N'', N'', N'1', N'2026-02-19 04:24:53', N'1', N'2026-02-19 04:24:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3137, 1, N'设备点检', N'1', N'mes_dv_subject_type', 0, N'info', N'', N'', N'1', N'2026-02-20 01:42:58', N'1', N'2026-02-20 01:42:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3138, 2, N'设备保养', N'2', N'mes_dv_subject_type', 0, N'success', N'', N'', N'1', N'2026-02-20 01:42:58', N'1', N'2026-02-20 01:42:58', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3139, 1, N'待保养', N'0', N'mes_mainten_record_status', 0, N'info', N'', NULL, N'admin', N'2026-02-20 02:59:55', N'1', N'2026-04-16 05:32:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3140, 2, N'已完成', N'4', N'mes_mainten_record_status', 0, N'success', N'', NULL, N'admin', N'2026-02-20 02:59:55', N'1', N'2026-04-16 05:32:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3141, 1, N'正常', N'1', N'mes_mainten_status', 0, N'success', N'', NULL, N'admin', N'2026-02-20 02:59:55', N'admin', N'2026-02-20 02:59:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3142, 2, N'异常', N'0', N'mes_mainten_status', 0, N'danger', N'', NULL, N'admin', N'2026-02-20 02:59:55', N'admin', N'2026-02-20 02:59:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3143, 1, N'天', N'1', N'mes_dv_cycle_type', 0, N'default', N'', N'', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3144, 2, N'周', N'2', N'mes_dv_cycle_type', 0, N'default', N'', N'', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3145, 3, N'月', N'3', N'mes_dv_cycle_type', 0, N'default', N'', N'', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3146, 4, N'年', N'4', N'mes_dv_cycle_type', 0, N'default', N'', N'', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3147, 0, N'草稿', N'0', N'mes_dv_check_plan_status', 0, N'info', N'', N'', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3148, 1, N'已启用', N'1', N'mes_dv_check_plan_status', 0, N'success', N'', N'', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3149, 1, N'待点检', N'10', N'mes_dv_check_record_status', 0, N'info', N'', NULL, N'admin', N'2026-02-20 09:46:19', N'admin', N'2026-02-20 09:46:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3150, 2, N'已完成', N'20', N'mes_dv_check_record_status', 0, N'success', N'', NULL, N'admin', N'2026-02-20 09:46:19', N'admin', N'2026-02-20 09:46:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3151, 1, N'正常', N'1', N'mes_dv_check_result', 0, N'success', N'', NULL, N'admin', N'2026-02-20 09:46:19', N'admin', N'2026-02-20 09:46:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3152, 2, N'异常', N'2', N'mes_dv_check_result', 0, N'danger', N'', NULL, N'admin', N'2026-02-20 09:46:19', N'admin', N'2026-02-20 09:46:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3157, 1, N'修复成功', N'1', N'mes_dv_repair_result', 0, N'success', N'', N'', N'1', N'2026-02-20 10:56:24', N'1', N'2026-02-20 10:56:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3158, 2, N'报废', N'2', N'mes_dv_repair_result', 0, N'danger', N'', N'', N'1', N'2026-02-20 10:56:24', N'1', N'2026-02-20 10:56:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3161, 1, N'校验通过', N'1', N'mes_qc_check_result', 0, N'success', N'', N'', N'1', N'2026-02-20 11:23:35', N'1', N'2026-02-20 16:15:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3162, 2, N'校验不通过', N'2', N'mes_qc_check_result', 0, N'danger', N'', N'', N'1', N'2026-02-20 11:23:35', N'1', N'2026-02-20 16:15:52', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3166, 0, N'未处置', N'0', N'mes_pro_andon_status', 0, N'danger', N'', N'', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3167, 1, N'已处置', N'1', N'mes_pro_andon_status', 0, N'success', N'', N'', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3168, 1, N'一级', N'1', N'mes_pro_andon_level', 0, N'danger', N'', N'', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3169, 2, N'二级', N'2', N'mes_pro_andon_level', 0, N'warning', N'', N'', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3170, 3, N'三级', N'3', N'mes_pro_andon_level', 0, N'info', N'', N'', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3171, 0, N'草稿', N'0', N'mes_pro_feedback_status', 0, N'info', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3172, 2, N'审批中', N'2', N'mes_pro_feedback_status', 0, N'primary', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-03-19 00:51:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3173, 3, N'待检验', N'3', N'mes_pro_feedback_status', 0, N'warning', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-03-19 00:51:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3174, 4, N'已完成', N'4', N'mes_pro_feedback_status', 0, N'success', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-03-19 00:51:54', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3176, 1, N'自行报工', N'1', N'mes_pro_feedback_type', 0, N'primary', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3177, 2, N'统一报工', N'2', N'mes_pro_feedback_type', 0, N'success', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3178, 1, N'PC', N'PC', N'mes_pro_feedback_channel', 0, N'primary', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3179, 2, N'APP', N'APP', N'mes_pro_feedback_channel', 0, N'success', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3180, 3, N'PDA', N'PDA', N'mes_pro_feedback_channel', 0, N'info', N'', N'', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3181, 1, N'浮点', N'1', N'mes_qc_result_type', 0, N'primary', N'', N'', N'1', N'2026-02-21 13:37:17', N'1', N'2026-02-21 13:37:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3182, 2, N'整数', N'2', N'mes_qc_result_type', 0, N'success', N'', N'', N'1', N'2026-02-21 13:37:17', N'1', N'2026-02-21 13:37:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3183, 3, N'文本', N'3', N'mes_qc_result_type', 0, N'info', N'', N'', N'1', N'2026-02-21 13:37:17', N'1', N'2026-02-21 13:37:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3184, 4, N'字典', N'4', N'mes_qc_result_type', 0, N'warning', N'', N'', N'1', N'2026-02-21 13:37:17', N'1', N'2026-02-21 13:37:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3185, 5, N'文件', N'5', N'mes_qc_result_type', 0, N'danger', N'', N'', N'1', N'2026-02-21 13:37:17', N'1', N'2026-02-21 13:37:17', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3186, 1, N'生产退料', N'1', N'mes_rqc_type', 0, N'default', N'', N'生产退料检验', N'1', N'2026-02-22 06:44:09', N'1', N'2026-02-22 06:44:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3187, 2, N'销售退货', N'2', N'mes_rqc_type', 0, N'default', N'', N'销售退货检验', N'1', N'2026-02-22 06:44:09', N'1', N'2026-02-22 06:44:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3188, 1, N'自制工序检验', N'1', N'mes_ipqc_type', 0, N'primary', N'', N'', N'1', N'2026-02-22 07:01:04', N'1', N'2026-02-22 07:01:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3189, 2, N'首检', N'2', N'mes_ipqc_type', 0, N'success', N'', N'', N'1', N'2026-02-22 07:01:04', N'1', N'2026-02-22 07:01:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3190, 3, N'巡检', N'3', N'mes_ipqc_type', 0, N'warning', N'', N'', N'1', N'2026-02-22 07:01:04', N'1', N'2026-02-22 07:01:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3191, 4, N'自检', N'4', N'mes_ipqc_type', 0, N'info', N'', N'', N'1', N'2026-02-22 07:01:04', N'1', N'2026-02-22 07:01:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3192, 5, N'成品检验', N'5', N'mes_ipqc_type', 0, N'danger', N'', N'', N'1', N'2026-02-22 07:01:04', N'1', N'2026-02-22 07:01:04', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3205, 0, N'草稿', N'0', N'mes_wm_arrival_notice_status', 0, N'info', N'', N'', N'1', N'2026-02-22 14:53:18', N'1', N'2026-02-22 14:53:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3206, 2, N'待质检', N'2', N'mes_wm_arrival_notice_status', 0, N'warning', N'', N'', N'1', N'2026-02-22 14:53:18', N'1', N'2026-02-26 05:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3207, 3, N'待入库', N'3', N'mes_wm_arrival_notice_status', 0, N'success', N'', N'', N'1', N'2026-02-22 14:53:18', N'1', N'2026-02-26 05:24:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3208, 4, N'已完成', N'4', N'mes_wm_arrival_notice_status', 0, N'primary', N'', N'', N'1', N'2026-02-22 14:53:18', N'1', N'2026-02-26 05:24:52', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3209, 0, N'草稿', N'0', N'mes_wm_item_receipt_status', 0, N'info', N'', N'', N'1', N'2026-02-22 14:54:05', N'1', N'2026-02-22 14:54:05', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3210, 1, N'待上架', N'2', N'mes_wm_item_receipt_status', 0, N'warning', N'', N'', N'1', N'2026-02-22 14:54:05', N'1', N'2026-02-26 08:03:35', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3211, 2, N'待执行入库', N'3', N'mes_wm_item_receipt_status', 0, N'success', N'', N'', N'1', N'2026-02-22 14:54:05', N'1', N'2026-02-26 08:03:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3212, 3, N'已完成', N'4', N'mes_wm_item_receipt_status', 0, N'primary', N'', N'', N'1', N'2026-02-22 14:54:05', N'1', N'2026-02-26 08:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3213, 4, N'已取消', N'5', N'mes_wm_item_receipt_status', 0, N'danger', N'', N'', N'1', N'2026-02-22 14:54:05', N'1', N'2026-02-26 08:03:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3214, 1, N'草稿', N'0', N'mes_order_status', 0, N'info', N'', N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:16:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3215, 2, N'已确认', N'1', N'mes_order_status', 0, N'primary', N'', N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:16:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3216, 3, N'审批中', N'2', N'mes_order_status', 0, N'warning', N'', N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:16:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3217, 4, N'已审批', N'3', N'mes_order_status', 0, N'success', N'', N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:16:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3218, 5, N'已完成', N'4', N'mes_order_status', 0, N'success', N'', N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:16:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3219, 6, N'已取消', N'5', N'mes_order_status', 0, N'danger', N'', N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:16:03', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3220, 1, N'草稿', N'0', N'mes_wm_issue_status', 0, N'info', N'', N'草稿状态，未完成', N'1', N'2026-02-26 15:54:25', N'1', N'2026-02-26 15:54:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3221, 2, N'已完成', N'4', N'mes_wm_issue_status', 0, N'success', N'', N'已完成出库', N'1', N'2026-02-26 15:54:25', N'1', N'2026-02-26 15:54:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3222, 1, N'草稿', N'0', N'mes_wm_product_issue_status', 0, N'info', N'', N'草稿状态，可编辑', N'1', N'2026-02-26 16:39:12', N'1', N'2026-03-23 13:18:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3223, 2, N'待拣货', N'2', N'mes_wm_product_issue_status', 0, N'warning', N'', N'审批中，可执行拣货', N'1', N'2026-02-26 16:39:12', N'1', N'2026-03-23 13:18:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3224, 3, N'待执行领出', N'3', N'mes_wm_product_issue_status', 0, N'primary', N'', N'已审批，拣货完成', N'1', N'2026-02-26 16:39:12', N'1', N'2026-03-23 13:18:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3225, 4, N'已完成', N'4', N'mes_wm_product_issue_status', 0, N'success', N'', N'已完成出库', N'1', N'2026-02-26 16:39:12', N'1', N'2026-03-23 13:18:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3226, 5, N'已取消', N'5', N'mes_wm_product_issue_status', 0, N'success', N'', N'已完成出库', N'1', N'2026-02-26 16:39:12', N'1', N'2026-03-23 13:18:02', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3232, 1, N'草稿', N'0', N'mes_wm_return_issue_status', 0, N'info', N'', N'草稿状态，可编辑', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:28:24', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3233, 2, N'待检验', N'1', N'mes_wm_return_issue_status', 0, N'default', N'', N'已确认，等待质检', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:28:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3234, 3, N'待上架', N'2', N'mes_wm_return_issue_status', 0, N'warning', N'', N'检验完成，等待仓库上架', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:28:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3235, 4, N'待执行退料', N'3', N'mes_wm_return_issue_status', 0, N'primary', N'', N'上架完成，等待执行退料操作', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:28:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3236, 5, N'已完成', N'4', N'mes_wm_return_issue_status', 0, N'success', N'', N'退料执行完成，库存已更新', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:28:37', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3237, 6, N'已取消', N'5', N'mes_wm_return_issue_status', 0, N'danger', N'', N'已取消', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:28:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3238, 1, N'余料退料', N'1', N'mes_wm_return_issue_type', 0, N'success', N'', N'余料退回，直接合格', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:27:47', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3239, 2, N'不良退料', N'2', N'mes_wm_return_issue_type', 0, N'danger', N'', N'不良品退回', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:27:49', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3240, 3, N'其他退料', N'3', N'mes_wm_return_issue_type', 0, N'info', N'', N'其他原因退料', N'1', N'2026-02-28 14:11:12', N'1', N'2026-02-28 14:27:55', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3241, 1, N'待检', N'0', N'mes_wm_quality_status', 0, N'warning', N'', N'待检状态', N'1', N'2026-02-28 15:00:53', N'1', N'2026-02-28 15:00:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3242, 2, N'合格', N'1', N'mes_wm_quality_status', 0, N'success', N'', N'合格状态', N'1', N'2026-02-28 15:00:53', N'1', N'2026-02-28 15:00:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3243, 3, N'不合格', N'2', N'mes_wm_quality_status', 0, N'danger', N'', N'不合格状态', N'1', N'2026-02-28 15:00:53', N'1', N'2026-02-28 15:00:53', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3244, 1, N'草稿', N'0', N'mes_wm_product_receipt_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-03-01 06:03:07', N'1', N'2026-03-01 06:03:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3245, 2, N'待上架', N'2', N'mes_wm_product_receipt_status', 0, N'primary', N'', N'待上架', N'1', N'2026-03-01 06:03:07', N'1', N'2026-03-01 06:03:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3246, 3, N'待执行入库', N'3', N'mes_wm_product_receipt_status', 0, N'warning', N'', N'待执行入库', N'1', N'2026-03-01 06:03:07', N'1', N'2026-03-01 06:03:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3247, 4, N'已完成', N'4', N'mes_wm_product_receipt_status', 0, N'success', N'', N'已完成', N'1', N'2026-03-01 06:03:07', N'1', N'2026-03-01 06:03:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3248, 5, N'已取消', N'5', N'mes_wm_product_receipt_status', 0, N'danger', N'', N'已取消', N'1', N'2026-03-01 06:03:07', N'1', N'2026-03-01 06:03:07', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3252, 1, N'草稿', N'0', N'mes_wm_product_sales_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-03-02 08:55:11', N'1', N'2026-03-02 08:55:11', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3253, 3, N'待拣货', N'2', N'mes_wm_product_sales_status', 0, N'warning', N'', N'待拣货状态', N'1', N'2026-03-02 08:55:11', N'1', N'2026-03-27 11:44:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3254, 4, N'待出库', N'3', N'mes_wm_product_sales_status', 0, N'primary', N'', N'待出库状态', N'1', N'2026-03-02 08:55:11', N'1', N'2026-03-27 11:44:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3255, 5, N'已完成', N'4', N'mes_wm_product_sales_status', 0, N'success', N'', N'已完成状态', N'1', N'2026-03-02 08:55:11', N'1', N'2026-03-27 11:44:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3256, 6, N'已取消', N'5', N'mes_wm_product_sales_status', 0, N'danger', N'', N'已取消状态', N'1', N'2026-03-02 08:55:11', N'1', N'2026-03-27 11:44:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3272, 1, N'草稿', N'0', N'mes_wm_misc_receipt_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-03-03 07:33:41', N'1', N'2026-03-03 07:33:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3273, 2, N'待执行入库', N'3', N'mes_wm_misc_receipt_status', 0, N'primary', N'', N'待执行入库状态', N'1', N'2026-03-03 07:33:41', N'1', N'2026-03-03 07:37:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3274, 3, N'已完成', N'4', N'mes_wm_misc_receipt_status', 0, N'success', N'', N'已完成状态', N'1', N'2026-03-03 07:33:41', N'1', N'2026-03-03 07:33:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3275, 4, N'已取消', N'5', N'mes_wm_misc_receipt_status', 0, N'danger', N'', N'已取消状态', N'1', N'2026-03-03 07:33:41', N'1', N'2026-03-03 07:33:41', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3277, 1, N'库存调整', N'1', N'mes_wm_misc_receipt_type', 0, N'primary', N'', N'库存调整入库', N'1', N'2026-03-03 07:34:33', N'1', N'2026-03-03 07:34:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3278, 1, N'库存调整', N'1', N'mes_wm_misc_issue_type', 0, N'primary', N'', N'库存调整出库', N'1', N'2026-03-03 07:34:33', N'1', N'2026-03-03 07:34:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3279, 2, N'报废出库', N'2', N'mes_wm_misc_issue_type', 0, N'danger', N'', N'报废出库', N'1', N'2026-03-03 07:36:13', N'1', N'2026-03-03 07:36:13', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3280, 1, N'草稿', N'0', N'mes_wm_outsource_receipt_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-03-03 14:03:57', N'1', N'2026-03-03 14:03:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3281, 2, N'待检验', N'1', N'mes_wm_outsource_receipt_status', 0, N'warning', N'', N'已确认，等待质检', N'1', N'2026-03-03 14:03:57', N'1', N'2026-03-03 14:03:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3282, 3, N'待上架', N'2', N'mes_wm_outsource_receipt_status', 0, N'primary', N'', N'检验完成，等待仓库上架', N'1', N'2026-03-03 14:03:57', N'1', N'2026-03-03 14:03:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3283, 4, N'待执行入库', N'3', N'mes_wm_outsource_receipt_status', 0, N'warning', N'', N'上架完成，等待执行入库操作', N'1', N'2026-03-03 14:03:57', N'1', N'2026-03-03 14:03:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3284, 5, N'已完成', N'4', N'mes_wm_outsource_receipt_status', 0, N'success', N'', N'入库执行完成，库存已更新', N'1', N'2026-03-03 14:03:57', N'1', N'2026-03-03 14:03:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3285, 6, N'已取消', N'5', N'mes_wm_outsource_receipt_status', 0, N'danger', N'', N'已取消', N'1', N'2026-03-03 14:03:57', N'1', N'2026-03-03 14:03:57', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3286, 1, N'草稿', N'0', N'mes_wm_outsource_issue_status', 0, N'info', N'', N'草稿状态，可编辑、删除、执行出库', N'1', N'2026-03-03 16:31:00', N'1', N'2026-03-03 16:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3287, 2, N'待拣货', N'2', N'mes_wm_outsource_issue_status', 0, N'warning', N'', N'待拣货状态', N'1', N'2026-03-03 16:31:00', N'1', N'2026-03-03 16:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3288, 3, N'待执行出库', N'3', N'mes_wm_outsource_issue_status', 0, N'primary', N'', N'待执行出库状态', N'1', N'2026-03-03 16:31:00', N'1', N'2026-03-03 16:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3289, 4, N'已完成', N'4', N'mes_wm_outsource_issue_status', 0, N'success', N'', N'已完成，库存已扣减', N'1', N'2026-03-03 16:31:00', N'1', N'2026-03-03 16:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3290, 5, N'已取消', N'5', N'mes_wm_outsource_issue_status', 0, N'danger', N'', N'已取消状态', N'1', N'2026-03-03 16:31:00', N'1', N'2026-03-03 16:31:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3301, 1, N'输入字符', N'1', N'mes_md_auto_code_part_type', 0, N'default', N'', N'输入字符', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3302, 2, N'当前日期', N'2', N'mes_md_auto_code_part_type', 0, N'primary', N'', N'当前日期时间', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3303, 3, N'固定字符', N'3', N'mes_md_auto_code_part_type', 0, N'success', N'', N'固定字符', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3304, 4, N'流水号', N'4', N'mes_md_auto_code_part_type', 0, N'warning', N'', N'流水号', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3305, 1, N'左补齐', N'1', N'mes_md_auto_code_padded_method', 0, N'primary', N'', N'左补齐', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3306, 2, N'右补齐', N'2', N'mes_md_auto_code_padded_method', 0, N'success', N'', N'右补齐', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3307, 1, N'按年', N'1', N'mes_md_auto_code_cycle_method', 0, N'default', N'', N'按年循环', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3308, 2, N'按月', N'2', N'mes_md_auto_code_cycle_method', 0, N'primary', N'', N'按月循环', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3309, 3, N'按天', N'3', N'mes_md_auto_code_cycle_method', 0, N'success', N'', N'按天循环', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3310, 4, N'按小时', N'4', N'mes_md_auto_code_cycle_method', 0, N'warning', N'', N'按小时循环', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3311, 5, N'按分钟', N'5', N'mes_md_auto_code_cycle_method', 0, N'danger', N'', N'按分钟循环', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3312, 10, N'按传入字符', N'10', N'mes_md_auto_code_cycle_method', 0, N'info', N'', N'按传入字符循环', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3313, 1, N'二维码', N'1', N'mes_wm_barcode_format', 0, N'primary', N'', N'QR_CODE', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-06 13:18:21', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3314, 2, N'EAN13 商品条码', N'2', N'mes_wm_barcode_format', 0, N'success', N'', N'EAN13', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-06 13:18:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3315, 3, N'CODE39 工业条码', N'3', N'mes_wm_barcode_format', 0, N'info', N'', N'CODE39', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-06 13:18:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3316, 4, N'UPC-A 美国商品码', N'4', N'mes_wm_barcode_format', 0, N'warning', N'', N'UPC_A', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-06 13:18:28', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3318, 3, N'库位', N'104', N'mes_wm_barcode_biz_type', 0, N'default', N'', N'AREA', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3319, 4, N'装箱单', N'105', N'mes_wm_barcode_biz_type', 0, N'default', N'', N'PACKAGE', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3320, 5, N'库存', N'106', N'mes_wm_barcode_biz_type', 0, N'default', N'', N'STOCK', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3321, 6, N'批次', N'107', N'mes_wm_barcode_biz_type', 0, N'default', N'', N'BATCH', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3322, 7, N'流转卡', N'300', N'mes_wm_barcode_biz_type', 0, N'primary', N'', N'PROCARD', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3323, 8, N'工单', N'301', N'mes_wm_barcode_biz_type', 0, N'primary', N'', N'WORKORDER', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3324, 9, N'流转单', N'302', N'mes_wm_barcode_biz_type', 0, N'primary', N'', N'TRANSORDER', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3325, 10, N'设备', N'400', N'mes_wm_barcode_biz_type', 0, N'success', N'', N'MACHINERY', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3327, 12, N'产品物料', N'600', N'mes_wm_barcode_biz_type', 0, N'info', N'', N'ITEM', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3328, 13, N'供应商', N'601', N'mes_wm_barcode_biz_type', 0, N'info', N'', N'VENDOR', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3329, 14, N'工作站', N'602', N'mes_wm_barcode_biz_type', 0, N'info', N'', N'WORKSTATION', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3330, 15, N'车间', N'603', N'mes_wm_barcode_biz_type', 0, N'info', N'', N'WORKSHOP', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3331, 16, N'人员', N'604', N'mes_wm_barcode_biz_type', 0, N'info', N'', N'USER', N'1', N'2026-03-05 14:37:20', N'1', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3351, 1, N'仓库', N'102', N'mes_wm_barcode_biz_type', 0, N'', N'', NULL, N'', N'2026-03-07 06:22:27', N'', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3352, 2, N'库区', N'103', N'mes_wm_barcode_biz_type', 0, N'', N'', NULL, N'', N'2026-03-07 06:22:27', N'', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3353, 11, N'工具', N'500', N'mes_wm_barcode_biz_type', 0, N'', N'', NULL, N'', N'2026-03-07 06:22:27', N'', N'2026-03-07 06:22:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3354, 17, N'客户', N'605', N'mes_wm_barcode_biz_type', 0, N'', N'', NULL, N'', N'2026-03-07 06:22:27', N'', N'2026-03-07 06:25:19', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3355, 1, N'草稿', N'0', N'mes_wm_package_status', 0, N'info', N'', N'草稿状态，可编辑', N'1', N'2026-03-08 02:05:46', N'1', N'2026-03-08 02:05:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3356, 2, N'已完成', N'4', N'mes_wm_package_status', 0, N'success', N'', N'装箱已完成', N'1', N'2026-03-08 02:05:46', N'1', N'2026-03-08 02:05:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3357, 1, N'草稿', N'0', N'mes_wm_transfer_status', 0, N'info', N'', N'草稿状态，可编辑', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3358, 2, N'待确认', N'1', N'mes_wm_transfer_status', 0, N'warning', N'', N'外部调拨待确认到货', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3359, 3, N'待上架', N'2', N'mes_wm_transfer_status', 0, N'primary', N'', N'待维护目标库位明细', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3360, 4, N'待执行', N'3', N'mes_wm_transfer_status', 0, N'success', N'', N'目标库位已分配，待执行调拨', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3361, 5, N'已完成', N'4', N'mes_wm_transfer_status', 0, N'success', N'', N'调拨已完成', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3362, 6, N'已取消', N'5', N'mes_wm_transfer_status', 0, N'danger', N'', N'调拨已取消', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3363, 1, N'内部调拨', N'1', N'mes_wm_transfer_type', 0, N'success', N'', N'内部仓储调拨', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3364, 2, N'外部调拨', N'2', N'mes_wm_transfer_type', 0, N'warning', N'', N'外部配送/外部收货调拨', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3365, 1, N'静态盘点', N'1', N'mes_wm_stock_taking_type', 0, N'primary', N'', N'静态盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3366, 2, N'动态盘点', N'2', N'mes_wm_stock_taking_type', 0, N'success', N'', N'动态盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3367, 1, N'仓库', N'102', N'mes_wm_stock_taking_plan_param_type', 0, N'primary', N'', N'按仓库盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3368, 2, N'库区', N'103', N'mes_wm_stock_taking_plan_param_type', 0, N'success', N'', N'按库区盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3369, 3, N'库位', N'104', N'mes_wm_stock_taking_plan_param_type', 0, N'info', N'', N'按库位盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3370, 4, N'物料', N'600', N'mes_wm_stock_taking_plan_param_type', 0, N'warning', N'', N'按物料盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3371, 5, N'批次', N'107', N'mes_wm_stock_taking_plan_param_type', 0, N'danger', N'', N'按批次盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3372, 1, N'草稿', N'0', N'mes_wm_stock_taking_task_status', 0, N'info', N'', N'草稿', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3373, 2, N'审批中', N'2', N'mes_wm_stock_taking_task_status', 0, N'primary', N'', N'盘点任务审批中', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3374, 3, N'已完成', N'4', N'mes_wm_stock_taking_task_status', 0, N'success', N'', N'已完成', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3375, 4, N'已取消', N'5', N'mes_wm_stock_taking_task_status', 0, N'danger', N'', N'已取消', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3377, 1, N'正常', N'1', N'mes_wm_stock_taking_task_line_status', 0, N'success', N'', N'正常', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3378, 2, N'盘盈', N'2', N'mes_wm_stock_taking_task_line_status', 0, N'primary', N'', N'盘盈', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3379, 3, N'盘亏', N'3', N'mes_wm_stock_taking_task_line_status', 0, N'danger', N'', N'盘亏', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3380, 6, N'质量状态', N'900', N'mes_wm_stock_taking_plan_param_type', 0, N'default', N'', N'按质量状态盘点', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3381, 1, N'物料', N'ITEM', N'mes_md_item_or_product', 0, N'info', N'', N'', N'1', N'2026-03-15 01:55:06', N'1', N'2026-03-15 01:55:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3382, 2, N'产品', N'PRODUCT', N'mes_md_item_or_product', 0, N'success', N'', N'', N'1', N'2026-03-15 01:55:06', N'1', N'2026-03-15 01:55:06', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3383, 1, N'草稿', N'0', N'mes_wm_item_consume_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-03-19 15:06:23', N'1', N'2026-03-19 15:06:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3384, 2, N'已完成', N'4', N'mes_wm_item_consume_status', 0, N'success', N'', N'已完成', N'1', N'2026-03-19 15:06:23', N'1', N'2026-03-19 15:06:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3385, 1, N'到货通知单', N'100', N'mes_qc_source_doc_type', 0, N'primary', N'', N'IQC', N'1', N'2026-03-26 13:01:09', N'1', N'2026-03-26 13:01:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3386, 2, N'外协入库单', N'121', N'mes_qc_source_doc_type', 0, N'warning', N'', N'IQC', N'1', N'2026-03-26 13:01:09', N'1', N'2026-03-26 13:01:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3387, 3, N'生产报工', N'304', N'mes_qc_source_doc_type', 0, N'success', N'', N'IPQC', N'1', N'2026-03-26 13:01:09', N'1', N'2026-03-26 13:01:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3388, 4, N'销售出库单', N'118', N'mes_qc_source_doc_type', 0, N'info', N'', N'OQC', N'1', N'2026-03-26 13:01:09', N'1', N'2026-03-26 13:01:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3389, 5, N'生产退料单', N'116', N'mes_qc_source_doc_type', 0, N'danger', N'', N'RQC', N'1', N'2026-03-26 13:01:09', N'1', N'2026-03-26 13:01:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3390, 6, N'销售退货单', N'119', N'mes_qc_source_doc_type', 0, N'default', N'', N'RQC', N'1', N'2026-03-26 13:01:09', N'1', N'2026-03-26 13:01:09', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3397, 2, N'待检测', N'1', N'mes_wm_product_sales_status', 0, N'warning', N'', N'OQC 检验中', N'1', N'2026-03-27 11:44:48', N'1', N'2026-03-27 11:44:48', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3398, 0, N'草稿', N'0', N'mes_wm_return_vendor_status', 0, N'info', N'', NULL, N'', N'2026-03-29 13:49:57', N'', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3399, 1, N'待拣货', N'2', N'mes_wm_return_vendor_status', 0, N'primary', N'', NULL, N'', N'2026-03-29 13:49:57', N'', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3400, 2, N'待执行退货', N'3', N'mes_wm_return_vendor_status', 0, N'warning', N'', NULL, N'', N'2026-03-29 13:49:57', N'', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3401, 3, N'已完成', N'4', N'mes_wm_return_vendor_status', 0, N'success', N'', NULL, N'', N'2026-03-29 13:49:57', N'', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3402, 4, N'已取消', N'5', N'mes_wm_return_vendor_status', 0, N'danger', N'', NULL, N'', N'2026-03-29 13:49:57', N'', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3403, 1, N'草稿', N'0', N'mes_wm_sales_notice_status', 0, N'info', N'', N'草稿状态，可以修改和删除', N'1', N'2026-03-30 08:54:30', N'1', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3404, 2, N'待出库', N'3', N'mes_wm_sales_notice_status', 0, N'success', N'', N'已提交状态，不可修改和删除', N'1', N'2026-03-30 08:54:30', N'1', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3405, 3, N'已完成', N'4', N'mes_wm_sales_notice_status', 0, N'', N'', NULL, N'1', N'2026-03-30 10:02:10', N'1', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3406, 1, N'草稿', N'0', N'mes_wm_misc_issue_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-03-30 15:00:18', N'1', N'2026-03-30 15:00:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3407, 2, N'待出库', N'3', N'mes_wm_misc_issue_status', 0, N'warning', N'', N'待出库状态', N'1', N'2026-03-30 15:00:18', N'1', N'2026-03-30 15:00:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3408, 3, N'已完成', N'4', N'mes_wm_misc_issue_status', 0, N'success', N'', N'执行出库后的状态', N'1', N'2026-03-30 15:00:18', N'1', N'2026-03-30 15:00:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3409, 4, N'已取消', N'5', N'mes_wm_misc_issue_status', 0, N'danger', N'', N'已取消状态', N'1', N'2026-03-30 15:00:18', N'1', N'2026-03-30 15:00:18', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3415, 1, N'注塑', N'1', N'mes_cal_calendar_type', 0, N'primary', N'', N'', N'1', N'2026-04-01 15:23:14', N'1', N'2026-04-01 16:08:31', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3416, 2, N'机加工', N'2', N'mes_cal_calendar_type', 0, N'success', N'', N'', N'1', N'2026-04-01 15:23:14', N'1', N'2026-04-01 16:08:32', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3417, 3, N'组装', N'3', N'mes_cal_calendar_type', 0, N'warning', N'', N'', N'1', N'2026-04-01 15:23:14', N'1', N'2026-04-01 16:08:33', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3418, 4, N'仓库', N'4', N'mes_cal_calendar_type', 0, N'danger', N'', N'', N'1', N'2026-04-01 15:23:14', N'1', N'2026-04-01 16:08:34', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3419, 0, N'草稿', N'0', N'mes_dv_repair_status', 0, N'info', N'', N'', N'1', N'2026-04-03 17:20:23', N'1', N'2026-04-03 17:20:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3420, 1, N'维修中', N'1', N'mes_dv_repair_status', 0, N'primary', N'', N'', N'1', N'2026-04-03 17:20:23', N'1', N'2026-04-03 17:20:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3421, 2, N'待验收', N'2', N'mes_dv_repair_status', 0, N'warning', N'', N'', N'1', N'2026-04-03 17:20:23', N'1', N'2026-04-03 17:20:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3422, 3, N'已确认', N'4', N'mes_dv_repair_status', 0, N'success', N'', N'', N'1', N'2026-04-03 17:20:23', N'1', N'2026-04-03 17:20:23', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3423, 0, N'草稿', N'0', N'mes_wm_return_sales_status', 0, N'info', N'', N'', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-03 17:20:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3424, 1, N'待检验', N'1', N'mes_wm_return_sales_status', 0, N'warning', N'', N'', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-03 17:20:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3425, 2, N'待执行', N'2', N'mes_wm_return_sales_status', 0, N'warning', N'', N'', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-03 17:20:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3426, 3, N'待上架', N'3', N'mes_wm_return_sales_status', 0, N'primary', N'', N'', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-03 17:20:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3427, 4, N'已完成', N'4', N'mes_wm_return_sales_status', 0, N'success', N'', N'', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-03 17:20:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3428, 5, N'已取消', N'5', N'mes_wm_return_sales_status', 0, N'danger', N'', N'', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-03 17:20:25', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3429, 1, N'尺寸', N'1', N'mes_defect_type', 0, N'', N'', N'', N'1', N'2026-04-04 12:49:51', N'1', N'2026-04-09 15:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3430, 2, N'外观', N'2', N'mes_defect_type', 0, N'', N'', N'', N'1', N'2026-04-04 12:49:51', N'1', N'2026-04-09 15:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3431, 3, N'重量', N'3', N'mes_defect_type', 0, N'', N'', N'', N'1', N'2026-04-04 12:49:51', N'1', N'2026-04-09 15:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3432, 4, N'性能', N'4', N'mes_defect_type', 0, N'', N'', N'', N'1', N'2026-04-04 12:49:51', N'1', N'2026-04-09 15:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3433, 5, N'成分', N'5', N'mes_defect_type', 0, N'', N'', N'', N'1', N'2026-04-04 12:49:51', N'1', N'2026-04-09 15:03:20', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3436, 1, N'上工', N'1', N'mes_pro_work_record_type', 0, N'success', N'', N'', N'1', N'2026-04-05 14:07:27', N'1', N'2026-04-05 14:07:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3437, 2, N'下工', N'2', N'mes_pro_work_record_type', 0, N'danger', N'', N'', N'1', N'2026-04-05 14:07:27', N'1', N'2026-04-05 14:07:27', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3443, 1, N'草稿', N'0', N'mes_wm_product_produce_status', 0, N'info', N'', N'草稿状态', N'1', N'2026-04-05 15:53:46', N'1', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3444, 2, N'已完成', N'4', N'mes_wm_product_produce_status', 0, N'success', N'', N'已完成状态', N'1', N'2026-04-05 15:53:46', N'1', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3445, 3, N'已取消', N'5', N'mes_wm_product_produce_status', 0, N'danger', N'', N'已取消状态', N'1', N'2026-04-05 15:53:46', N'1', N'2026-04-05 15:53:46', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3446, 0, N'草稿', N'0', N'mes_pro_task_status', 0, N'', N'', NULL, N'1', N'2026-04-16 09:47:00', N'1', N'2026-04-16 09:47:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3447, 1, N'已完成', N'4', N'mes_pro_task_status', 0, N'', N'', NULL, N'1', N'2026-04-16 09:47:00', N'1', N'2026-04-16 09:47:00', N'0')
GO
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted) VALUES (3448, 2, N'已取消', N'5', N'mes_pro_task_status', 0, N'', N'', NULL, N'1', N'2026-04-16 09:47:00', N'1', N'2026-04-16 09:47:00', N'0')
GO
SET IDENTITY_INSERT system_dict_data OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_dict_type
-- ----------------------------
DROP TABLE IF EXISTS system_dict_type
GO
CREATE TABLE system_dict_type (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(100) DEFAULT '' NOT NULL,
    type nvarchar(100) DEFAULT '' NOT NULL,
    status tinyint DEFAULT 0 NOT NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    deleted_time datetime2 DEFAULT NULL NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典主键',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'删除时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type',
    'COLUMN', N'deleted_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'字典类型表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_dict_type'
GO

-- ----------------------------
-- Records of system_dict_type
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_dict_type ON
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1, N'用户性别', N'system_user_sex', 0, NULL, N'admin', N'2021-01-05 17:03:48', N'1', N'2022-05-16 20:29:32', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (6, N'参数类型', N'infra_config_type', 0, NULL, N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:36:54', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (7, N'通知类型', N'system_notice_type', 0, NULL, N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:35:26', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (9, N'操作类型', N'infra_operate_type', 0, NULL, N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-14 12:44:01', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (10, N'系统状态', N'common_status', 0, NULL, N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-01 16:21:28', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (11, N'Boolean 是否类型', N'infra_boolean_string', 0, N'boolean 转是否', N'', N'2021-01-19 03:20:08', N'', N'2022-02-01 16:37:10', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (104, N'登陆结果', N'system_login_result', 0, N'登陆结果', N'', N'2021-01-18 06:17:11', N'', N'2022-02-01 16:36:00', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (106, N'代码生成模板类型', N'infra_codegen_template_type', 0, NULL, N'', N'2021-02-05 07:08:06', N'1', N'2022-05-16 20:26:50', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (107, N'定时任务状态', N'infra_job_status', 0, NULL, N'', N'2021-02-07 07:44:16', N'', N'2022-02-01 16:51:11', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (108, N'定时任务日志状态', N'infra_job_log_status', 0, NULL, N'', N'2021-02-08 10:03:51', N'', N'2022-02-01 16:50:43', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (109, N'用户类型', N'user_type', 0, NULL, N'', N'2021-02-26 00:15:51', N'', N'2021-02-26 00:15:51', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (110, N'API 异常数据的处理状态', N'infra_api_error_log_process_status', 0, NULL, N'', N'2021-02-26 07:07:01', N'', N'2022-02-01 16:50:53', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (111, N'短信渠道编码', N'system_sms_channel_code', 0, NULL, N'1', N'2021-04-05 01:04:50', N'1', N'2022-02-16 02:09:08', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (112, N'短信模板的类型', N'system_sms_template_type', 0, NULL, N'1', N'2021-04-05 21:50:43', N'1', N'2022-02-01 16:35:06', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (113, N'短信发送状态', N'system_sms_send_status', 0, NULL, N'1', N'2021-04-11 20:18:03', N'1', N'2022-02-01 16:35:09', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (114, N'短信接收状态', N'system_sms_receive_status', 0, NULL, N'1', N'2021-04-11 20:27:14', N'1', N'2022-02-01 16:35:14', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (116, N'登陆日志的类型', N'system_login_type', 0, N'登陆日志的类型', N'1', N'2021-10-06 00:50:46', N'1', N'2022-02-01 16:35:56', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (117, N'OA 请假类型', N'bpm_oa_leave_type', 0, NULL, N'1', N'2021-09-21 22:34:33', N'1', N'2022-01-22 10:41:37', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (130, N'支付渠道编码类型', N'pay_channel_code', 0, N'支付渠道的编码', N'1', N'2021-12-03 10:35:08', N'1', N'2023-07-10 10:11:39', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (131, N'支付回调状态', N'pay_notify_status', 0, N'支付回调状态（包括退款回调）', N'1', N'2021-12-03 10:53:29', N'1', N'2023-07-19 18:09:43', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (132, N'支付订单状态', N'pay_order_status', 0, N'支付订单状态', N'1', N'2021-12-03 11:17:50', N'1', N'2021-12-03 11:17:50', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (134, N'退款订单状态', N'pay_refund_status', 0, N'退款订单状态', N'1', N'2021-12-10 16:42:50', N'1', N'2023-07-19 10:13:17', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (139, N'流程实例的状态', N'bpm_process_instance_status', 0, N'流程实例的状态', N'1', N'2022-01-07 23:46:42', N'1', N'2022-01-07 23:46:42', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (140, N'流程实例的结果', N'bpm_task_status', 0, N'流程实例的结果', N'1', N'2022-01-07 23:48:10', N'1', N'2024-03-08 22:42:03', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (141, N'流程的表单类型', N'bpm_model_form_type', 0, N'流程的表单类型', N'103', N'2022-01-11 23:50:45', N'103', N'2022-01-11 23:50:45', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (142, N'任务分配规则的类型', N'bpm_task_candidate_strategy', 0, N'BPM 任务的候选人的策略', N'103', N'2022-01-12 23:21:04', N'103', N'2024-03-06 02:53:59', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (144, N'代码生成的场景枚举', N'infra_codegen_scene', 0, N'代码生成的场景枚举', N'1', N'2022-02-02 13:14:45', N'1', N'2022-03-10 16:33:46', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (145, N'角色类型', N'system_role_type', 0, N'角色类型', N'1', N'2022-02-16 13:01:46', N'1', N'2022-02-16 13:01:46', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (146, N'文件存储器', N'infra_file_storage', 0, N'文件存储器', N'1', N'2022-03-15 00:24:38', N'1', N'2022-03-15 00:24:38', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (147, N'OAuth 2.0 授权类型', N'system_oauth2_grant_type', 0, N'OAuth 2.0 授权类型（模式）', N'1', N'2022-05-12 00:20:52', N'1', N'2022-05-11 16:25:49', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (149, N'商品 SPU 状态', N'product_spu_status', 0, N'商品 SPU 状态', N'1', N'2022-10-24 21:19:04', N'1', N'2022-10-24 21:19:08', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (150, N'优惠类型', N'promotion_discount_type', 0, N'优惠类型', N'1', N'2022-11-01 12:46:06', N'1', N'2022-11-01 12:46:06', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (151, N'优惠劵模板的有限期类型', N'promotion_coupon_template_validity_type', 0, N'优惠劵模板的有限期类型', N'1', N'2022-11-02 00:06:20', N'1', N'2022-11-04 00:08:26', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (152, N'营销的商品范围', N'promotion_product_scope', 0, N'营销的商品范围', N'1', N'2022-11-02 00:28:01', N'1', N'2022-11-02 00:28:01', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (153, N'优惠劵的状态', N'promotion_coupon_status', 0, N'优惠劵的状态', N'1', N'2022-11-04 00:14:49', N'1', N'2022-11-04 00:14:49', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (154, N'优惠劵的领取方式', N'promotion_coupon_take_type', 0, N'优惠劵的领取方式', N'1', N'2022-11-04 19:12:27', N'1', N'2022-11-04 19:12:27', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (155, N'促销活动的状态', N'promotion_activity_status', 0, N'促销活动的状态', N'1', N'2022-11-04 22:54:23', N'1', N'2022-11-04 22:54:23', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (156, N'营销的条件类型', N'promotion_condition_type', 0, N'营销的条件类型', N'1', N'2022-11-04 22:59:23', N'1', N'2022-11-04 22:59:23', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (157, N'交易售后状态', N'trade_after_sale_status', 0, N'交易售后状态', N'1', N'2022-11-19 20:52:56', N'1', N'2022-11-19 20:52:56', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (158, N'交易售后的类型', N'trade_after_sale_type', 0, N'交易售后的类型', N'1', N'2022-11-19 21:04:09', N'1', N'2022-11-19 21:04:09', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (159, N'交易售后的方式', N'trade_after_sale_way', 0, N'交易售后的方式', N'1', N'2022-11-19 21:39:04', N'1', N'2022-11-19 21:39:04', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (160, N'终端', N'terminal', 0, N'终端', N'1', N'2022-12-10 10:50:50', N'1', N'2022-12-10 10:53:11', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (161, N'交易订单的类型', N'trade_order_type', 0, N'交易订单的类型', N'1', N'2022-12-10 16:33:54', N'1', N'2022-12-10 16:33:54', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (162, N'交易订单的状态', N'trade_order_status', 0, N'交易订单的状态', N'1', N'2022-12-10 16:48:44', N'1', N'2022-12-10 16:48:44', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (163, N'交易订单项的售后状态', N'trade_order_item_after_sale_status', 0, N'交易订单项的售后状态', N'1', N'2022-12-10 20:58:08', N'1', N'2022-12-10 20:58:08', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (164, N'公众号自动回复的请求关键字匹配模式', N'mp_auto_reply_request_match', 0, N'公众号自动回复的请求关键字匹配模式', N'1', N'2023-01-16 23:29:56', N'1', N'2023-01-16 23:29:56', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (165, N'公众号的消息类型', N'mp_message_type', 0, N'公众号的消息类型', N'1', N'2023-01-17 22:17:09', N'1', N'2023-01-17 22:17:09', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (166, N'邮件发送状态', N'system_mail_send_status', 0, N'邮件发送状态', N'1', N'2023-01-26 09:53:13', N'1', N'2023-01-26 09:53:13', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (167, N'站内信模版的类型', N'system_notify_template_type', 0, N'站内信模版的类型', N'1', N'2023-01-28 10:35:10', N'1', N'2023-01-28 10:35:10', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (168, N'代码生成的前端类型', N'infra_codegen_front_type', 0, N'', N'1', N'2023-04-12 23:57:52', N'1', N'2023-04-12 23:57:52', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (170, N'快递计费方式', N'trade_delivery_express_charge_mode', 0, N'用于商城交易模块配送管理', N'1', N'2023-05-21 22:45:03', N'1', N'2023-05-21 22:45:03', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (171, N'积分业务类型', N'member_point_biz_type', 0, N'', N'1', N'2023-06-10 12:15:00', N'1', N'2023-06-28 13:48:20', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (173, N'支付通知类型', N'pay_notify_type', 0, NULL, N'1', N'2023-07-20 12:23:03', N'1', N'2023-07-20 12:23:03', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (174, N'会员经验业务类型', N'member_experience_biz_type', 0, NULL, N'', N'2023-08-22 12:41:01', N'', N'2023-08-22 12:41:01', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (175, N'交易配送类型', N'trade_delivery_type', 0, N'', N'1', N'2023-08-23 00:03:14', N'1', N'2023-08-23 00:03:14', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (176, N'分佣模式', N'brokerage_enabled_condition', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (177, N'分销关系绑定模式', N'brokerage_bind_mode', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (178, N'佣金提现类型', N'brokerage_withdraw_type', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (179, N'佣金记录业务类型', N'brokerage_record_biz_type', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (180, N'佣金记录状态', N'brokerage_record_status', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (181, N'佣金提现状态', N'brokerage_withdraw_status', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (182, N'佣金提现银行', N'brokerage_bank_name', 0, NULL, N'', N'2023-09-28 02:46:05', N'', N'2023-09-28 02:46:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (183, N'砍价记录的状态', N'promotion_bargain_record_status', 0, N'', N'1', N'2023-10-05 10:41:08', N'1', N'2023-10-05 10:41:08', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (184, N'拼团记录的状态', N'promotion_combination_record_status', 0, N'', N'1', N'2023-10-08 07:24:25', N'1', N'2023-10-08 07:24:25', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (185, N'回款-回款方式', N'crm_receivable_return_type', 0, N'回款-回款方式', N'1', N'2023-10-18 21:54:10', N'1', N'2023-10-18 21:54:10', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (186, N'CRM 客户行业', N'crm_customer_industry', 0, N'CRM 客户所属行业', N'1', N'2023-10-28 22:57:07', N'1', N'2024-02-18 23:30:22', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (187, N'客户等级', N'crm_customer_level', 0, N'CRM 客户等级', N'1', N'2023-10-28 22:59:12', N'1', N'2023-10-28 15:11:16', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (188, N'客户来源', N'crm_customer_source', 0, N'CRM 客户来源', N'1', N'2023-10-28 23:00:34', N'1', N'2023-10-28 15:11:16', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (600, N'Banner 位置', N'promotion_banner_position', 0, N'', N'1', N'2023-10-08 07:24:25', N'1', N'2023-11-04 13:04:02', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (601, N'社交类型', N'system_social_type', 0, N'', N'1', N'2023-11-04 13:03:54', N'1', N'2023-11-04 13:03:54', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (604, N'产品状态', N'crm_product_status', 0, N'', N'1', N'2023-10-30 21:47:59', N'1', N'2023-10-30 21:48:45', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (605, N'CRM 数据权限的级别', N'crm_permission_level', 0, N'', N'1', N'2023-11-30 09:51:59', N'1', N'2023-11-30 09:51:59', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (606, N'CRM 审批状态', N'crm_audit_status', 0, N'', N'1', N'2023-11-30 18:56:23', N'1', N'2023-11-30 18:56:23', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (607, N'CRM 产品单位', N'crm_product_unit', 0, N'', N'1', N'2023-12-05 23:01:51', N'1', N'2023-12-05 23:01:51', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (608, N'CRM 跟进方式', N'crm_follow_up_type', 0, N'', N'1', N'2024-01-15 20:48:05', N'1', N'2024-01-15 20:48:05', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (610, N'转账订单状态', N'pay_transfer_status', 0, N'', N'1', N'2023-10-28 16:18:32', N'1', N'2023-10-28 16:18:32', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (611, N'ERP 库存明细的业务类型', N'erp_stock_record_biz_type', 0, N'ERP 库存明细的业务类型', N'1', N'2024-02-05 18:07:02', N'1', N'2024-02-05 18:07:02', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (612, N'ERP 审批状态', N'erp_audit_status', 0, N'', N'1', N'2024-02-06 00:00:07', N'1', N'2024-02-06 00:00:07', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (613, N'BPM 监听器类型', N'bpm_process_listener_type', 0, N'', N'1', N'2024-03-23 12:52:24', N'1', N'2024-03-09 15:54:28', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (615, N'BPM 监听器值类型', N'bpm_process_listener_value_type', 0, N'', N'1', N'2024-03-23 13:00:31', N'1', N'2024-03-23 13:00:31', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (616, N'时间间隔', N'date_interval', 0, N'', N'1', N'2024-03-29 22:50:09', N'1', N'2024-03-29 22:50:09', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (619, N'CRM 商机结束状态类型', N'crm_business_end_status_type', 0, N'', N'1', N'2024-04-13 23:23:00', N'1', N'2024-04-13 23:23:00', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (620, N'AI 模型平台', N'ai_platform', 0, N'', N'1', N'2024-05-09 22:27:38', N'1', N'2024-05-09 22:27:38', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (621, N'AI 绘画状态', N'ai_image_status', 0, N'', N'1', N'2024-06-26 20:51:23', N'1', N'2024-06-26 20:51:23', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (622, N'AI 音乐状态', N'ai_music_status', 0, N'', N'1', N'2024-06-27 22:45:07', N'1', N'2024-06-28 00:56:27', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (623, N'AI 音乐生成模式', N'ai_generate_mode', 0, N'', N'1', N'2024-06-27 22:46:21', N'1', N'2024-06-28 01:22:29', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (624, N'写作语气', N'ai_write_tone', 0, N'', N'1', N'2024-07-07 15:19:02', N'1', N'2024-07-07 15:19:02', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (625, N'写作语言', N'ai_write_language', 0, N'', N'1', N'2024-07-07 15:18:52', N'1', N'2024-07-07 15:18:52', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (626, N'写作长度', N'ai_write_length', 0, N'', N'1', N'2024-07-07 15:18:41', N'1', N'2024-07-07 15:18:41', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (627, N'写作格式', N'ai_write_format', 0, N'', N'1', N'2024-07-07 15:14:34', N'1', N'2024-07-07 15:14:34', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (628, N'AI 写作类型', N'ai_write_type', 0, N'', N'1', N'2024-07-10 21:25:29', N'1', N'2024-07-10 21:25:29', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (629, N'BPM 流程模型类型', N'bpm_model_type', 0, N'', N'1', N'2024-08-26 15:21:43', N'1', N'2024-08-26 15:21:43', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (640, N'AI 模型类型', N'ai_model_type', 0, N'', N'1', N'2025-03-03 12:24:07', N'1', N'2025-03-03 12:24:07', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1001, N'IoT 产品设备类型', N'iot_product_device_type', 0, N'', N'1', N'2024-08-10 11:54:30', N'1', N'2025-03-17 09:25:08', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1002, N'IoT 产品状态', N'iot_product_status', 0, N'', N'1', N'2024-08-10 12:06:09', N'1', N'2025-03-17 09:25:10', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1004, N'IoT 联网方式', N'iot_net_type', 0, N'', N'1', N'2024-09-06 22:04:13', N'1', N'2025-03-17 09:25:14', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1006, N'IoT 设备状态', N'iot_device_state', 0, N'', N'1', N'2024-09-21 08:12:55', N'1', N'2025-03-17 09:25:19', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1007, N'IoT 物模型功能类型', N'iot_thing_model_type', 0, N'', N'1', N'2024-09-29 20:02:36', N'1', N'2025-03-17 09:25:24', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1011, N'IoT 物模型单位', N'iot_thing_model_unit', 0, N'', N'1', N'2024-12-25 17:36:46', N'1', N'2025-03-17 09:25:35', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1013, N'IoT 数据流转目的的类型枚举', N'iot_data_sink_type_enum', 0, N'', N'1', N'2025-03-09 12:39:36', N'1', N'2025-06-24 12:45:24', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1014, N'IoT 场景流转的触发类型枚举', N'iot_rule_scene_trigger_type_enum', 0, N'', N'1', N'2025-03-20 14:59:44', N'1', N'2025-03-20 14:59:44', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1015, N'IoT 设备消息类型枚举', N'iot_device_message_type_enum', 0, N'', N'1', N'2025-03-20 15:01:15', N'1', N'2025-03-20 15:01:15', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1016, N'IoT 规则场景的触发类型枚举', N'iot_rule_scene_action_type_enum', 0, N'', N'1', N'2025-03-28 15:26:54', N'1', N'2025-03-28 15:29:13', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (1017, N'MES 物料消耗记录状态', N'mes_wm_item_consume_status', 0, N'MES 物料消耗记录状态', N'1', N'2026-03-19 15:06:23', N'1', N'2026-03-19 15:06:23', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2001, N'IoT 告警级别', N'iot_alert_level', 0, N'', N'1', N'2025-06-27 20:30:57', N'1', N'2025-06-27 20:30:57', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2002, N'IoT 告警', N'iot_alert_receive_type', 0, N'', N'1', N'2025-06-27 22:49:19', N'1', N'2025-06-27 22:49:19', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2003, N'IoT 固件设备范围', N'iot_ota_task_device_scope', 0, N'', N'1', N'2025-07-02 09:42:49', N'1', N'2025-07-02 09:42:49', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2004, N'IoT 固件升级任务状态', N'iot_ota_task_status', 0, N'', N'1', N'2025-07-02 09:43:43', N'1', N'2025-07-02 09:43:43', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2005, N'IoT 固件升级记录状态', N'iot_ota_task_record_status', 0, N'', N'1', N'2025-07-02 09:45:02', N'1', N'2025-07-02 09:45:02', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2007, N'AI MCP 客户端名字', N'ai_mcp_client_name', 0, N'', N'1', N'2025-08-28 13:57:40', N'1', N'2025-08-28 13:57:40', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2008, N'IoT 协议类型', N'iot_protocol_type', 0, N'IoT 设备接入协议类型', N'1', N'2026-02-04 00:31:33', N'1', N'2026-02-04 00:31:33', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2009, N'IoT 序列化类型', N'iot_serialize_type', 0, N'IoT 设备消息序列化类型', N'1', N'2026-02-04 00:33:16', N'1', N'2026-02-04 00:33:16', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2010, N'IoT Modbus 工作模式', N'iot_modbus_mode', 0, N'Modbus 设备数据采集模式', N'1', N'2025-06-12 22:55:46', N'1', N'2025-06-12 22:55:46', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2011, N'IoT Modbus 帧格式', N'iot_modbus_frame_format', 0, N'Modbus 数据帧协议格式', N'1', N'2025-06-12 22:55:46', N'1', N'2025-06-12 22:55:46', N'0', N'1970-01-01 00:00:00')
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2012, N'MES 客户类型', N'mes_client_type', 0, N'', N'1', N'2026-02-15 14:38:25', N'1', N'2026-02-15 14:38:25', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2013, N'MES 供应商级别', N'mes_vendor_level', 0, N'', N'1', N'2026-02-15 15:59:15', N'1', N'2026-02-15 15:59:15', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2014, N'MES 假期类型', N'mes_cal_holiday_type', 0, N'MES 日历排班 - 假期类型（HOLIDAY=假期，WORKDAY=工作日）', N'1', N'2026-02-16 07:35:58', N'1', N'2026-02-16 07:35:58', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2015, N'MES 工具状态', N'mes_tm_tool_status', 0, N'MES 工具管理 - 工具状态（1=在库，2=领用中，3=维修中，4=报废）', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2016, N'MES 保养维护类型', N'mes_tm_mainten_type', 0, N'MES 工具管理 - 保养维护类型（1=定期维护，2=按使用次数维护）', N'1', N'2026-02-16 11:10:55', N'1', N'2026-02-16 11:10:55', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2017, N'MES 设备状态', N'mes_dv_machinery_status', 0, N'MES 设备管理 - 设备状态（1=运行中，2=停机，3=故障）', N'1', N'2026-02-17 01:00:06', N'1', N'2026-02-17 01:00:06', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2018, N'MES 检测项类型', N'mes_indicator_type', 0, N'', N'1', N'2026-02-17 02:16:22', N'1', N'2026-02-21 15:25:04', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2019, N'MES 缺陷等级', N'mes_defect_level', 0, N'', N'1', N'2026-02-17 02:16:22', N'1', N'2026-02-17 02:16:22', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2020, N'MES 轮班方式', N'mes_cal_shift_type', 0, N'MES 日历排班 - 轮班方式', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2021, N'MES 倒班方式', N'mes_cal_shift_method', 0, N'MES 日历排班 - 倒班方式', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2022, N'MES 班组类型', N'mes_cal_calendar_type', 0, N'MES 日历排班 - 班组类型', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2023, N'MES 排班计划状态', N'mes_cal_plan_status', 0, N'MES 日历排班 - 排班计划状态', N'1', N'2026-02-17 03:40:09', N'1', N'2026-02-17 03:40:09', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2026, N'MES 检测种类', N'mes_qc_type', 0, N'IQC/IPQC/OQC/RQC', N'1', N'2026-02-17 08:34:40', N'1', N'2026-02-17 08:34:40', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2027, N'MES 生产工单状态', N'mes_pro_work_order_status', 0, N'MES 生产管理 - 工单状态（0=草稿，1=已确认，2=已完成，3=已取消）', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2028, N'MES 工单来源类型', N'mes_pro_work_order_source_type', 0, N'MES 生产管理 - 工单来源类型（1=客户订单，2=库存备货）', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2029, N'MES 工单类型', N'mes_pro_work_order_type', 0, N'MES 生产管理 - 工单类型（1=自行生产，2=代工，3=采购）', N'1', N'2026-02-17 11:43:47', N'1', N'2026-02-17 11:43:47', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2036, N'MES 工序关系类型', N'mes_pro_link_type', 0, N'工艺路线中工序之间的关系类型', N'1', N'2026-02-19 04:24:53', N'1', N'2026-04-05 15:05:07', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2037, N'MES 时间单位', N'mes_time_unit_type', 0, N'生产时间的计量单位', N'1', N'2026-02-19 04:24:53', N'1', N'2026-04-05 15:04:57', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2038, N'MES 生产任务状态', N'mes_pro_task_status', 0, N'MES 生产管理 - 任务状态（0=草稿，1=进行中，2=暂停，3=已完成，4=已取消）', N'1', N'2026-02-19 15:25:27', N'1', N'2026-02-19 15:25:27', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2039, N'MES 点检保养项目类型', N'mes_dv_subject_type', 0, N'MES 设备管理 - 点检保养项目类型（1=设备点检，2=设备保养）', N'1', N'2026-02-20 01:42:58', N'1', N'2026-02-20 01:42:58', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2040, N'MES 保养记录状态', N'mes_mainten_record_status', 0, NULL, N'admin', N'2026-02-20 02:59:55', N'admin', N'2026-02-20 02:59:55', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2041, N'MES 保养结果', N'mes_mainten_status', 0, NULL, N'admin', N'2026-02-20 02:59:55', N'admin', N'2026-02-20 02:59:55', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2042, N'MES 点检保养周期类型', N'mes_dv_cycle_type', 0, N'MES 设备管理 - 点检保养周期类型（1=天，2=周，3=月，4=年）', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2043, N'MES 点检保养方案状态', N'mes_dv_check_plan_status', 0, N'MES 设备管理 - 点检保养方案状态（0=草稿，1=已启用）', N'1', N'2026-02-20 07:11:43', N'1', N'2026-02-20 07:11:43', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2044, N'MES 点检记录状态', N'mes_dv_check_record_status', 0, NULL, N'admin', N'2026-02-20 09:46:19', N'admin', N'2026-02-20 09:46:19', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2045, N'MES 点检结果', N'mes_dv_check_result', 0, NULL, N'admin', N'2026-02-20 09:46:19', N'admin', N'2026-02-20 09:46:19', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2046, N'MES 维修工单状态', N'mes_dv_repair_status', 0, N'MES 设备管理 - 维修工单状态（10=待维修，20=维修中，30=已完成，40=已验收）', N'1', N'2026-02-20 10:56:24', N'1', N'2026-02-20 10:56:24', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2047, N'MES 维修结果', N'mes_dv_repair_result', 0, N'MES 设备管理 - 维修结果（1=修复成功，2=报废）', N'1', N'2026-02-20 10:56:24', N'1', N'2026-02-20 10:56:24', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2049, N'MES 检测结果', N'mes_qc_check_result', 0, N'来料检验的最终结果判定', N'1', N'2026-02-20 11:23:35', N'1', N'2026-02-20 11:23:35', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2050, N'MES 来源单据类型', N'mes_qc_source_doc_type', 0, N'IQC 来料检验的来源单据类型', N'1', N'2026-02-20 11:23:35', N'1', N'2026-02-20 11:23:35', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2051, N'MES 安灯处置状态', N'mes_pro_andon_status', 0, N'MES 生产管理 - 安灯处置状态（0=未处置，1=已处置）', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2052, N'MES 安灯级别', N'mes_pro_andon_level', 0, N'MES 生产管理 - 安灯级别（1=一级，2=二级，3=三级）', N'1', N'2026-02-21 00:08:38', N'1', N'2026-02-21 00:08:38', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2053, N'MES 生产报工状态', N'mes_pro_feedback_status', 0, N'MES 生产管理 - 报工状态（0=草稿，1=审批中，2=待检验，3=已完成，4=已取消）', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2054, N'MES 生产报工类型', N'mes_pro_feedback_type', 0, N'MES 生产管理 - 报工类型（1=自行报工，2=统一报工）', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2055, N'MES 生产报工途径', N'mes_pro_feedback_channel', 0, N'MES 生产管理 - 报工途径（PC/APP/PDA）', N'1', N'2026-02-21 00:50:32', N'1', N'2026-02-21 00:50:32', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2056, N'MES 质检值类型', N'mes_qc_result_type', 0, N'检验结果明细的值类型：浮点/整数/文本/字典/文件', N'1', N'2026-02-21 13:37:17', N'1', N'2026-02-21 13:37:17', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2057, N'MES 退货检验类型', N'mes_rqc_type', 0, N'MES 退货检验类型', N'1', N'2026-02-22 06:43:18', N'1', N'2026-02-22 06:43:18', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2062, N'MES IPQC 检验类型', N'mes_ipqc_type', 0, N'IPQC 过程检验的检验类型', N'1', N'2026-02-22 07:01:04', N'1', N'2026-02-22 07:01:04', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2066, N'MES 到货通知单状态', N'mes_wm_arrival_notice_status', 0, N'MES 到货通知单状态', N'1', N'2026-02-22 14:53:18', N'1', N'2026-02-22 14:53:18', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2067, N'MES 采购入库单状态', N'mes_wm_item_receipt_status', 0, N'MES 采购入库单状态', N'1', N'2026-02-22 14:54:05', N'1', N'2026-02-22 14:54:05', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2068, N'MES 单据状态', N'mes_order_status', 0, N'', N'1', N'2026-02-23 21:16:03', N'1', N'2026-02-23 21:17:37', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2069, N'MES 领料出库单状态', N'mes_wm_product_issue_status', 0, N'MES 领料出库单状态', N'1', N'2026-02-26 16:39:44', N'1', N'2026-04-05 15:05:11', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2073, N'MES 生产退料单状态', N'mes_wm_return_issue_status', 0, N'MES 生产退料单状态', N'1', N'2026-02-28 14:11:09', N'1', N'2026-04-05 15:05:14', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2074, N'MES 生产退料类型', N'mes_wm_return_issue_type', 0, N'MES 生产退料类型', N'1', N'2026-02-28 14:11:09', N'1', N'2026-04-05 15:05:16', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2075, N'MES 质量状态', N'mes_wm_quality_status', 0, N'MES 质量状态（待检/合格/不合格）', N'1', N'2026-02-28 15:00:53', N'1', N'2026-02-28 15:00:53', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2100, N'MES 产品入库单状态', N'mes_wm_product_receipt_status', 0, N'MES 产品入库单状态', N'1', N'2026-03-01 06:03:04', N'1', N'2026-04-05 15:05:49', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2102, N'MES 销售出库单状态', N'mes_wm_product_sales_status', 0, N'MES 销售出库单状态', N'1', N'2026-03-02 08:55:11', N'1', N'2026-04-05 15:05:18', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2105, N'MES 杂项入库类型', N'mes_wm_misc_receipt_type', 0, N'杂项入库类型', N'1', N'2026-03-03 07:18:12', N'1', N'2026-04-05 15:05:23', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2106, N'MES 杂项入库状态', N'mes_wm_misc_receipt_status', 0, N'杂项入库状态', N'1', N'2026-03-03 07:18:12', N'1', N'2026-04-05 15:05:25', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2109, N'MES 杂项出库类型', N'mes_wm_misc_issue_type', 0, N'MES 杂项出库类型', N'1', N'2026-03-03 07:34:33', N'1', N'2026-03-03 07:34:33', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2110, N'MES 外协入库单状态', N'mes_wm_outsource_receipt_status', 0, N'MES 外协入库单状态', N'1', N'2026-03-03 14:03:20', N'1', N'2026-03-03 14:03:20', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2112, N'MES 外协发料单状态', N'mes_wm_outsource_issue_status', 0, N'MES 外协发料单状态', N'1', N'2026-03-03 16:30:56', N'1', N'2026-04-05 15:05:47', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2113, N'MES 编码规则分段类型', N'mes_md_auto_code_part_type', 0, N'MES 编码规则分段类型', N'1', N'2026-03-04 14:45:46', N'1', N'2026-03-04 15:24:40', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2115, N'MES 编码规则补齐方式', N'mes_md_auto_code_padded_method', 0, N'MES 编码规则补齐方式', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2116, N'MES 编码规则循环方式', N'mes_md_auto_code_cycle_method', 0, N'MES 编码规则循环方式', N'1', N'2026-03-04 14:46:22', N'1', N'2026-03-04 15:24:40', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2117, N'MES 条码格式', N'mes_wm_barcode_format', 0, N'MES 条码格式', N'1', N'2026-03-05 14:37:20', N'1', N'2026-04-05 15:05:27', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2118, N'MES 条码业务类型', N'mes_wm_barcode_biz_type', 0, N'MES 条码业务类型', N'1', N'2026-03-05 14:37:20', N'1', N'2026-04-05 15:05:29', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2121, N'MES 装箱单状态', N'mes_wm_package_status', 0, N'MES 装箱单状态', N'1', N'2026-03-08 02:05:46', N'1', N'2026-04-05 15:05:35', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2122, N'MES 调拨单状态', N'mes_wm_transfer_status', 0, N'MES 调拨单状态', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2123, N'MES 调拨类型', N'mes_wm_transfer_type', 0, N'MES 调拨类型', N'1', N'2026-03-08 11:55:25', N'1', N'2026-03-08 11:55:25', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2124, N'MES 盘点类型', N'mes_wm_stock_taking_type', 0, N'MES 盘点类型', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2125, N'MES 盘点方案参数类型', N'mes_wm_stock_taking_plan_param_type', 0, N'MES 盘点方案参数类型', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2126, N'MES 盘点任务状态', N'mes_wm_stock_taking_task_status', 0, N'MES 盘点任务状态', N'1', N'2026-03-09 00:00:00', N'1', N'2026-03-09 00:00:00', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2127, N'MES 盘点任务行状态', N'mes_wm_stock_taking_task_line_status', 0, N'MES 盘点任务行状态', N'1', N'2026-03-09 00:00:00', N'1', N'2026-04-05 15:02:18', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2129, N'MES 物料产品标识', N'mes_md_item_or_product', 0, N'物料分类：物料(ITEM) / 产品(PRODUCT)', N'1', N'2026-03-15 01:55:06', N'1', N'2026-03-15 01:55:06', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2130, N'MES 供应商退货单状态', N'mes_wm_return_vendor_status', 0, N'采购退货单状态', N'', N'2026-03-29 13:49:57', N'', N'2026-04-05 15:53:46', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2131, N'MES 发货通知单状态', N'mes_wm_sales_notice_status', 0, N'MES 发货通知单状态', N'1', N'2026-03-30 08:54:30', N'1', N'2026-04-05 15:53:46', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2132, N'MES 杂项出库单状态', N'mes_wm_misc_issue_status', 0, N'杂项出库单状态', N'1', N'2026-03-30 15:00:18', N'1', N'2026-04-05 15:05:41', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2133, N'MES 销售退货单状态', N'mes_wm_return_sales_status', 0, N'MES 销售退货单状态枚举', N'1', N'2026-04-03 17:20:25', N'1', N'2026-04-05 15:05:39', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2134, N'MES 缺陷检测项类型', N'mes_defect_type', 0, N'缺陷模块的检测项类型字典', N'1', N'2026-04-04 12:49:51', N'1', N'2026-04-04 12:49:51', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2135, N'MES 上下工状态类型', N'mes_pro_work_record_type', 0, N'MES 上下工状态类型', N'1', N'2026-04-05 14:07:27', N'1', N'2026-04-05 14:07:27', N'0', NULL)
GO
INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted, deleted_time) VALUES (2138, N'MES 生产入库单状态', N'mes_wm_product_produce_status', 0, N'MES 生产入库单状态', N'1', N'2026-04-05 15:53:46', N'1', N'2026-04-05 15:53:46', N'0', N'1970-01-01 00:00:00')
GO
SET IDENTITY_INSERT system_dict_type OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_login_log
-- ----------------------------
DROP TABLE IF EXISTS system_login_log
GO
CREATE TABLE system_login_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    log_type bigint  NOT NULL,
    trace_id nvarchar(64) DEFAULT '' NOT NULL,
    user_id bigint DEFAULT 0 NOT NULL,
    user_type tinyint DEFAULT 0 NOT NULL,
    username nvarchar(50) DEFAULT '' NOT NULL,
    result tinyint  NOT NULL,
    user_ip nvarchar(50)  NOT NULL,
    user_agent nvarchar(512)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_login_log_01 ON system_login_log (username)
GO
CREATE INDEX idx_system_login_log_02 ON system_login_log (create_time)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'访问ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'日志类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'log_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'链路追踪编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'trace_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户账号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'登陆结果',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'result'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户 IP',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'user_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'浏览器 UA',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'系统访问记录',
    'SCHEMA', N'dbo',
    'TABLE', N'system_login_log'
GO

-- ----------------------------
-- Table structure for system_mail_account
-- ----------------------------
DROP TABLE IF EXISTS system_mail_account
GO
CREATE TABLE system_mail_account (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    mail nvarchar(255)  NOT NULL,
    username nvarchar(255)  NOT NULL,
    password nvarchar(255)  NOT NULL,
    host nvarchar(255)  NOT NULL,
    port int  NOT NULL,
    ssl_enable varchar(1) DEFAULT '0' NOT NULL,
    starttls_enable varchar(1) DEFAULT '0' NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主键',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮箱',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'mail'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'密码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'SMTP 服务器域名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'host'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'SMTP 服务器端口',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'port'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否开启 SSL',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'ssl_enable'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否开启 STARTTLS',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'starttls_enable'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮箱账号表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_account'
GO

-- ----------------------------
-- Records of system_mail_account
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_mail_account ON
GO
INSERT INTO system_mail_account (id, mail, username, password, host, port, ssl_enable, starttls_enable, creator, create_time, updater, update_time, deleted) VALUES (1, N'7684413@qq.com', N'7684413@qq.com', N'1234576', N'127.0.0.1', 8080, N'0', N'0', N'1', N'2023-01-25 17:39:52', N'1', N'2025-04-04 16:34:40', N'0')
GO
INSERT INTO system_mail_account (id, mail, username, password, host, port, ssl_enable, starttls_enable, creator, create_time, updater, update_time, deleted) VALUES (2, N'ydym_test@163.com', N'ydym_test@163.com', N'YOUR_MAIL_PASSWORD', N'smtp.163.com', 465, N'1', N'0', N'1', N'2023-01-26 01:26:03', N'1', N'2025-12-20 18:09:32', N'0')
GO
INSERT INTO system_mail_account (id, mail, username, password, host, port, ssl_enable, starttls_enable, creator, create_time, updater, update_time, deleted) VALUES (3, N'76854114@qq.com', N'3335', N'11234', N'xiaoy.cn', 466, N'0', N'0', N'1', N'2023-01-27 15:06:38', N'1', N'2023-01-27 07:08:36', N'1')
GO
INSERT INTO system_mail_account (id, mail, username, password, host, port, ssl_enable, starttls_enable, creator, create_time, updater, update_time, deleted) VALUES (4, N'7685413x@qq.com', N'2', N'3', N'4', 5, N'1', N'0', N'1', N'2023-04-12 23:05:06', N'1', N'2023-04-12 15:05:11', N'1')
GO
SET IDENTITY_INSERT system_mail_account OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_mail_log
-- ----------------------------
DROP TABLE IF EXISTS system_mail_log
GO
CREATE TABLE system_mail_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint DEFAULT NULL NULL,
    user_type tinyint DEFAULT NULL NULL,
    to_mails nvarchar(1024)  NOT NULL,
    cc_mails nvarchar(1024) DEFAULT NULL NULL,
    bcc_mails nvarchar(1024) DEFAULT NULL NULL,
    account_id bigint  NOT NULL,
    from_mail nvarchar(255)  NOT NULL,
    template_id bigint  NOT NULL,
    template_code nvarchar(63)  NOT NULL,
    template_nickname nvarchar(255) DEFAULT NULL NULL,
    template_title nvarchar(255)  NOT NULL,
    template_content nvarchar(max)  NOT NULL,
    template_params nvarchar(255)  NOT NULL,
    send_status tinyint DEFAULT 0 NOT NULL,
    send_time datetime2 DEFAULT NULL NULL,
    send_message_id nvarchar(255) DEFAULT NULL NULL,
    send_exception nvarchar(4000) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'接收邮箱地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'to_mails'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'抄送邮箱地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'cc_mails'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'密送邮箱地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'bcc_mails'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮箱账号编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'account_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送邮箱地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'from_mail'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'template_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'template_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版发送人名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'template_nickname'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮件标题',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'template_title'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮件内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'template_content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮件参数',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'template_params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'send_status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'send_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送返回的消息 ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'send_message_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送异常',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'send_exception'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮件日志表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_log'
GO

-- ----------------------------
-- Table structure for system_mail_template
-- ----------------------------
DROP TABLE IF EXISTS system_mail_template
GO
CREATE TABLE system_mail_template (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(63)  NOT NULL,
    code nvarchar(63)  NOT NULL,
    account_id bigint  NOT NULL,
    nickname nvarchar(255) DEFAULT NULL NULL,
    title nvarchar(255)  NOT NULL,
    content nvarchar(4000)  NOT NULL,
    params nvarchar(255)  NOT NULL,
    status tinyint  NOT NULL,
    remark nvarchar(255) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送的邮箱账号编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'account_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送人名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板标题',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数数组',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'开启状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'邮件模版表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_mail_template'
GO

-- ----------------------------
-- Records of system_mail_template
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_mail_template ON
GO
INSERT INTO system_mail_template (id, name, code, account_id, nickname, title, content, params, status, remark, creator, create_time, updater, update_time, deleted) VALUES (13, N'后台用户短信登录', N'admin-sms-login', 1, N'奥特曼', N'你猜我猜', N'<p>您的验证码是{code}，名字是{name}</p>', N'["code","name"]', 0, N'3', N'1', N'2021-10-11 08:10:00', N'1', N'2023-12-02 19:51:14', N'0')
GO
INSERT INTO system_mail_template (id, name, code, account_id, nickname, title, content, params, status, remark, creator, create_time, updater, update_time, deleted) VALUES (14, N'测试模版', N'test_01', 2, N'小Y', N'一个标题', N'<p>你是 {key01} 吗？</p><p><br></p><p>是的话，赶紧 {key02} 一下！</p>', N'["key01","key02"]', 0, NULL, N'1', N'2023-01-26 01:27:40', N'1', N'2025-07-26 21:48:45', N'0')
GO
INSERT INTO system_mail_template (id, name, code, account_id, nickname, title, content, params, status, remark, creator, create_time, updater, update_time, deleted) VALUES (15, N'3', N'2', 2, N'7', N'4', N'<p>45</p>', N'[]', 1, N'80', N'1', N'2023-01-27 15:50:35', N'1', N'2025-07-26 21:47:49', N'1')
GO
SET IDENTITY_INSERT system_mail_template OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS system_menu
GO
CREATE TABLE system_menu (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(50)  NOT NULL,
    permission nvarchar(100) DEFAULT '' NOT NULL,
    type tinyint  NOT NULL,
    sort int DEFAULT 0 NOT NULL,
    parent_id bigint DEFAULT 0 NOT NULL,
    path nvarchar(200) DEFAULT '' NULL,
    icon nvarchar(100) DEFAULT '#' NULL,
    component nvarchar(255) DEFAULT NULL NULL,
    component_name nvarchar(255) DEFAULT NULL NULL,
    status tinyint DEFAULT 0 NOT NULL,
    visible varchar(1) DEFAULT '1' NOT NULL,
    keep_alive varchar(1) DEFAULT '1' NOT NULL,
    always_show varchar(1) DEFAULT '1' NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'权限标识',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'permission'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'显示顺序',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'父菜单ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'路由地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单图标',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'组件路径',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'component'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'组件名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'component_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否可见',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'visible'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否缓存',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'keep_alive'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否总是显示',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'always_show'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单权限表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_menu'
GO

-- ----------------------------
-- Records of system_menu
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_menu ON
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1, N'系统管理', N'', 1, 10, 0, N'/system', N'ep:tools', NULL, NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2025-03-15 21:30:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2, N'基础设施', N'', 1, 20, 0, N'/infra', N'ep:monitor', NULL, NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-03-01 08:28:40', N'0')
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (100, N'用户管理', N'system:user:list', 2, 1, 1, N'user', N'ep:avatar', N'system/user/index', N'SystemUser', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2026-01-01 18:43:01', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (101, N'角色管理', N'', 2, 2, 1, N'role', N'ep:user', N'system/role/index', N'SystemRole', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2026-01-05 19:30:33', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (102, N'菜单管理', N'', 2, 3, 1, N'menu', N'ep:menu', N'system/menu/index', N'SystemMenu', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:03:50', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (103, N'部门管理', N'', 2, 4, 1, N'dept', N'fa:address-card', N'system/dept/index', N'SystemDept', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:06:28', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (104, N'岗位管理', N'', 2, 5, 1, N'post', N'fa:address-book-o', N'system/post/index', N'SystemPost', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:06:39', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (105, N'字典管理', N'', 2, 6, 1, N'dict', N'ep:collection', N'system/dict/index', N'SystemDictType', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:07:12', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (106, N'配置管理', N'', 2, 8, 2, N'config', N'fa:connectdevelop', N'infra/config/index', N'InfraConfig', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-04-23 00:02:45', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (107, N'通知公告', N'', 2, 4, 2739, N'notice', N'ep:takeaway-box', N'system/notice/index', N'SystemNotice', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-04-22 23:56:17', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (108, N'审计日志', N'', 1, 9, 1, N'log', N'ep:document-copy', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:08:30', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (109, N'令牌管理', N'', 2, 2, 1261, N'token', N'fa:key', N'system/oauth2/token/index', N'SystemTokenClient', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:13:48', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (110, N'定时任务', N'', 2, 7, 2, N'job', N'fa-solid:tasks', N'infra/job/index', N'InfraJob', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 08:57:36', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (111, N'MySQL 监控', N'', 2, 1, 2740, N'druid', N'fa-solid:box', N'infra/druid/index', N'InfraDruid', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-04-23 00:05:58', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (112, N'Java 监控', N'', 2, 3, 2740, N'admin-server', N'ep:coffee-cup', N'infra/server/index', N'InfraAdminServer', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-04-23 00:06:57', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (113, N'Redis 监控', N'', 2, 2, 2740, N'redis', N'fa:reddit-square', N'infra/redis/index', N'InfraRedis', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-04-23 00:06:09', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (114, N'表单构建', N'infra:build:list', 2, 2, 2, N'build', N'fa:wpforms', N'infra/build/index', N'InfraBuild', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 08:51:35', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (115, N'代码生成', N'infra:codegen:query', 2, 1, 2, N'codegen', N'ep:document-copy', N'infra/codegen/index', N'InfraCodegen', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 08:51:06', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (116, N'API 接口', N'infra:swagger:list', 2, 3, 2, N'swagger', N'fa:fighter-jet', N'infra/swagger/index', N'InfraSwagger', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-04-23 00:01:24', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (500, N'操作日志', N'', 2, 1, 108, N'operate-log', N'ep:position', N'system/operatelog/index', N'SystemOperateLog', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:09:59', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (501, N'登录日志', N'', 2, 2, 108, N'login-log', N'ep:promotion', N'system/loginlog/index', N'SystemLoginLog', 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2024-02-29 01:10:29', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1001, N'用户查询', N'system:user:query', 3, 1, 100, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1002, N'用户新增', N'system:user:create', 3, 2, 100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1003, N'用户修改', N'system:user:update', 3, 3, 100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1004, N'用户删除', N'system:user:delete', 3, 4, 100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1005, N'用户导出', N'system:user:export', 3, 5, 100, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1006, N'用户导入', N'system:user:import', 3, 6, 100, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1007, N'重置密码', N'system:user:update-password', 3, 7, 100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1008, N'角色查询', N'system:role:query', 3, 1, 101, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1009, N'角色新增', N'system:role:create', 3, 2, 101, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1010, N'角色修改', N'system:role:update', 3, 3, 101, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1011, N'角色删除', N'system:role:delete', 3, 4, 101, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1012, N'角色导出', N'system:role:export', 3, 5, 101, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1013, N'菜单查询', N'system:menu:query', 3, 1, 102, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1014, N'菜单新增', N'system:menu:create', 3, 2, 102, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1015, N'菜单修改', N'system:menu:update', 3, 3, 102, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1016, N'菜单删除', N'system:menu:delete', 3, 4, 102, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1017, N'部门查询', N'system:dept:query', 3, 1, 103, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1018, N'部门新增', N'system:dept:create', 3, 2, 103, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1019, N'部门修改', N'system:dept:update', 3, 3, 103, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1020, N'部门删除', N'system:dept:delete', 3, 4, 103, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1021, N'岗位查询', N'system:post:query', 3, 1, 104, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1022, N'岗位新增', N'system:post:create', 3, 2, 104, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1023, N'岗位修改', N'system:post:update', 3, 3, 104, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1024, N'岗位删除', N'system:post:delete', 3, 4, 104, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1025, N'岗位导出', N'system:post:export', 3, 5, 104, N'', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1026, N'字典查询', N'system:dict:query', 3, 1, 105, N'#', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1027, N'字典新增', N'system:dict:create', 3, 2, 105, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1028, N'字典修改', N'system:dict:update', 3, 3, 105, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1029, N'字典删除', N'system:dict:delete', 3, 4, 105, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1030, N'字典导出', N'system:dict:export', 3, 5, 105, N'#', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1031, N'配置查询', N'infra:config:query', 3, 1, 106, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1032, N'配置新增', N'infra:config:create', 3, 2, 106, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1033, N'配置修改', N'infra:config:update', 3, 3, 106, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1034, N'配置删除', N'infra:config:delete', 3, 4, 106, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1035, N'配置导出', N'infra:config:export', 3, 5, 106, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1036, N'公告查询', N'system:notice:query', 3, 1, 107, N'#', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1037, N'公告新增', N'system:notice:create', 3, 2, 107, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1038, N'公告修改', N'system:notice:update', 3, 3, 107, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1039, N'公告删除', N'system:notice:delete', 3, 4, 107, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1040, N'操作查询', N'system:operate-log:query', 3, 1, 500, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1042, N'日志导出', N'system:operate-log:export', 3, 2, 500, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1043, N'登录查询', N'system:login-log:query', 3, 1, 501, N'#', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1045, N'日志导出', N'system:login-log:export', 3, 3, 501, N'#', N'#', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1046, N'令牌列表', N'system:oauth2-token:page', 3, 1, 109, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-05-09 23:54:42', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1048, N'令牌删除', N'system:oauth2-token:delete', 3, 2, 109, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-05-09 23:54:53', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1050, N'任务新增', N'infra:job:create', 3, 2, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1051, N'任务修改', N'infra:job:update', 3, 3, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1052, N'任务删除', N'infra:job:delete', 3, 4, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1053, N'状态修改', N'infra:job:update', 3, 5, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1054, N'任务导出', N'infra:job:export', 3, 7, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1056, N'生成修改', N'infra:codegen:update', 3, 2, 115, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1057, N'生成删除', N'infra:codegen:delete', 3, 3, 115, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1058, N'导入代码', N'infra:codegen:create', 3, 2, 115, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1059, N'预览代码', N'infra:codegen:preview', 3, 4, 115, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1060, N'生成代码', N'infra:codegen:download', 3, 5, 115, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'admin', N'2021-01-05 17:03:48', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1063, N'设置角色菜单权限', N'system:permission:assign-role-menu', 3, 6, 101, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-01-06 17:53:44', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1064, N'设置角色数据权限', N'system:permission:assign-role-data-scope', 3, 7, 101, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-01-06 17:56:31', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1065, N'设置用户角色', N'system:permission:assign-user-role', 3, 8, 101, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-01-07 10:23:28', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1066, N'获得 Redis 监控信息', N'infra:redis:get-monitor-info', 3, 1, 113, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-01-26 01:02:31', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1067, N'获得 Redis Key 列表', N'infra:redis:get-key-list', 3, 2, 113, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-01-26 01:02:52', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1070, N'代码生成案例', N'', 1, 1, 2, N'demo', N'ep:aim', N'infra/testDemo/index', NULL, 0, N'1', N'1', N'1', N'', N'2021-02-06 12:42:49', N'1', N'2023-11-15 23:45:53', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1075, N'任务触发', N'infra:job:trigger', 3, 8, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-02-07 13:03:10', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1077, N'链路追踪', N'', 2, 4, 2740, N'skywalking', N'fa:eye', N'infra/skywalking/index', N'InfraSkyWalking', 0, N'1', N'1', N'1', N'', N'2021-02-08 20:41:31', N'1', N'2024-04-23 00:07:15', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1078, N'访问日志', N'', 2, 1, 1083, N'api-access-log', N'ep:place', N'infra/apiAccessLog/index', N'InfraApiAccessLog', 0, N'1', N'1', N'1', N'', N'2021-02-26 01:32:59', N'1', N'2024-02-29 08:54:57', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1082, N'日志导出', N'infra:api-access-log:export', 3, 2, 1078, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-02-26 01:32:59', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1083, N'API 日志', N'', 2, 4, 2, N'log', N'fa:tasks', NULL, NULL, 0, N'1', N'1', N'1', N'', N'2021-02-26 02:18:24', N'1', N'2024-04-22 23:58:36', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1084, N'错误日志', N'infra:api-error-log:query', 2, 2, 1083, N'api-error-log', N'ep:warning-filled', N'infra/apiErrorLog/index', N'InfraApiErrorLog', 0, N'1', N'1', N'1', N'', N'2021-02-26 07:53:20', N'1', N'2024-02-29 08:55:17', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1085, N'日志处理', N'infra:api-error-log:update-status', 3, 2, 1084, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-02-26 07:53:20', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1086, N'日志导出', N'infra:api-error-log:export', 3, 3, 1084, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-02-26 07:53:20', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1087, N'任务查询', N'infra:job:query', 3, 1, 110, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'1', N'2021-03-10 01:26:19', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1088, N'日志查询', N'infra:api-access-log:query', 3, 1, 1078, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'1', N'2021-03-10 01:28:04', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1089, N'日志查询', N'infra:api-error-log:query', 3, 1, 1084, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'1', N'2021-03-10 01:29:09', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1090, N'文件列表', N'', 2, 5, 1243, N'file', N'ep:upload-filled', N'infra/file/index', N'InfraFile', 0, N'1', N'1', N'1', N'', N'2021-03-12 20:16:20', N'1', N'2024-02-29 08:53:02', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1091, N'文件查询', N'infra:file:query', 3, 1, 1090, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-03-12 20:16:20', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1092, N'文件删除', N'infra:file:delete', 3, 4, 1090, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-03-12 20:16:20', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1093, N'短信管理', N'', 1, 1, 2739, N'sms', N'ep:message', NULL, NULL, 0, N'1', N'1', N'1', N'1', N'2021-04-05 01:10:16', N'1', N'2024-04-22 23:56:03', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1094, N'短信渠道', N'', 2, 0, 1093, N'sms-channel', N'fa:stack-exchange', N'system/sms/channel/index', N'SystemSmsChannel', 0, N'1', N'1', N'1', N'', N'2021-04-01 11:07:15', N'1', N'2024-02-29 01:15:54', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1095, N'短信渠道查询', N'system:sms-channel:query', 3, 1, 1094, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 11:07:15', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1096, N'短信渠道创建', N'system:sms-channel:create', 3, 2, 1094, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 11:07:15', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1097, N'短信渠道更新', N'system:sms-channel:update', 3, 3, 1094, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 11:07:15', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1098, N'短信渠道删除', N'system:sms-channel:delete', 3, 4, 1094, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 11:07:15', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1100, N'短信模板', N'', 2, 1, 1093, N'sms-template', N'ep:connection', N'system/sms/template/index', N'SystemSmsTemplate', 0, N'1', N'1', N'1', N'', N'2021-04-01 17:35:17', N'1', N'2024-02-29 01:16:18', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1101, N'短信模板查询', N'system:sms-template:query', 3, 1, 1100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 17:35:17', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1102, N'短信模板创建', N'system:sms-template:create', 3, 2, 1100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 17:35:17', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1103, N'短信模板更新', N'system:sms-template:update', 3, 3, 1100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 17:35:17', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1104, N'短信模板删除', N'system:sms-template:delete', 3, 4, 1100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 17:35:17', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1105, N'短信模板导出', N'system:sms-template:export', 3, 5, 1100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-01 17:35:17', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1106, N'发送测试短信', N'system:sms-template:send-sms', 3, 6, 1100, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'1', N'2021-04-11 00:26:40', N'1', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1107, N'短信日志', N'', 2, 2, 1093, N'sms-log', N'fa:edit', N'system/sms/log/index', N'SystemSmsLog', 0, N'1', N'1', N'1', N'', N'2021-04-11 08:37:05', N'1', N'2024-02-29 08:49:02', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1108, N'短信日志查询', N'system:sms-log:query', 3, 1, 1107, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-11 08:37:05', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1109, N'短信日志导出', N'system:sms-log:export', 3, 5, 1107, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-04-11 08:37:05', N'', N'2022-04-20 17:03:10', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1138, N'租户列表', N'', 2, 0, 1224, N'list', N'ep:house', N'system/tenant/index', N'SystemTenant', 0, N'1', N'1', N'1', N'', N'2021-12-14 12:31:43', N'1', N'2024-02-29 01:01:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1139, N'租户查询', N'system:tenant:query', 3, 1, 1138, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-12-14 12:31:44', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1140, N'租户创建', N'system:tenant:create', 3, 2, 1138, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-12-14 12:31:44', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1141, N'租户更新', N'system:tenant:update', 3, 3, 1138, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-12-14 12:31:44', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1142, N'租户删除', N'system:tenant:delete', 3, 4, 1138, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-12-14 12:31:44', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1143, N'租户导出', N'system:tenant:export', 3, 5, 1138, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2021-12-14 12:31:44', N'', N'2022-04-20 17:03:10', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1224, N'租户管理', N'', 2, 0, 1, N'tenant', N'fa-solid:house-user', NULL, NULL, 0, N'1', N'1', N'1', N'1', N'2022-02-20 01:41:13', N'1', N'2024-02-29 00:59:29', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1225, N'租户套餐', N'', 2, 0, 1224, N'package', N'fa:bars', N'system/tenantPackage/index', N'SystemTenantPackage', 0, N'1', N'1', N'1', N'', N'2022-02-19 17:44:06', N'1', N'2024-02-29 01:01:43', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1226, N'租户套餐查询', N'system:tenant-package:query', 3, 1, 1225, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-02-19 17:44:06', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1227, N'租户套餐创建', N'system:tenant-package:create', 3, 2, 1225, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-02-19 17:44:06', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1228, N'租户套餐更新', N'system:tenant-package:update', 3, 3, 1225, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-02-19 17:44:06', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1229, N'租户套餐删除', N'system:tenant-package:delete', 3, 4, 1225, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-02-19 17:44:06', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1237, N'文件配置', N'', 2, 0, 1243, N'file-config', N'fa-solid:file-signature', N'infra/fileConfig/index', N'InfraFileConfig', 0, N'1', N'1', N'1', N'', N'2022-03-15 14:35:28', N'1', N'2024-02-29 08:52:54', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1238, N'文件配置查询', N'infra:file-config:query', 3, 1, 1237, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-03-15 14:35:28', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1239, N'文件配置创建', N'infra:file-config:create', 3, 2, 1237, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-03-15 14:35:28', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1240, N'文件配置更新', N'infra:file-config:update', 3, 3, 1237, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-03-15 14:35:28', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1241, N'文件配置删除', N'infra:file-config:delete', 3, 4, 1237, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-03-15 14:35:28', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1242, N'文件配置导出', N'infra:file-config:export', 3, 5, 1237, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-03-15 14:35:28', N'', N'2022-04-20 17:03:10', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1243, N'文件管理', N'', 2, 6, 2, N'file', N'ep:files', NULL, N'', 0, N'1', N'1', N'1', N'1', N'2022-03-16 23:47:40', N'1', N'2024-04-23 00:02:11', N'0')
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1255, N'数据源配置', N'', 2, 1, 2, N'data-source-config', N'ep:data-analysis', N'infra/dataSourceConfig/index', N'InfraDataSourceConfig', 0, N'1', N'1', N'1', N'', N'2022-04-27 14:37:32', N'1', N'2024-02-29 08:51:25', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1256, N'数据源配置查询', N'infra:data-source-config:query', 3, 1, 1255, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-04-27 14:37:32', N'', N'2022-04-27 14:37:32', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1257, N'数据源配置创建', N'infra:data-source-config:create', 3, 2, 1255, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-04-27 14:37:32', N'', N'2022-04-27 14:37:32', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1258, N'数据源配置更新', N'infra:data-source-config:update', 3, 3, 1255, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-04-27 14:37:32', N'', N'2022-04-27 14:37:32', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1259, N'数据源配置删除', N'infra:data-source-config:delete', 3, 4, 1255, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-04-27 14:37:32', N'', N'2022-04-27 14:37:32', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1260, N'数据源配置导出', N'infra:data-source-config:export', 3, 5, 1255, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-04-27 14:37:32', N'', N'2022-04-27 14:37:32', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1261, N'OAuth 2.0', N'', 2, 10, 1, N'oauth2', N'fa:dashcube', NULL, NULL, 0, N'1', N'1', N'1', N'1', N'2022-05-09 23:38:17', N'1', N'2024-02-29 01:12:08', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1263, N'应用管理', N'', 2, 0, 1261, N'oauth2/application', N'fa:hdd-o', N'system/oauth2/client/index', N'SystemOAuth2Client', 0, N'1', N'1', N'1', N'', N'2022-05-10 16:26:33', N'1', N'2024-02-29 01:13:14', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1264, N'客户端查询', N'system:oauth2-client:query', 3, 1, 1263, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-05-10 16:26:33', N'1', N'2022-05-11 00:31:06', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1265, N'客户端创建', N'system:oauth2-client:create', 3, 2, 1263, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-05-10 16:26:33', N'1', N'2022-05-11 00:31:23', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1266, N'客户端更新', N'system:oauth2-client:update', 3, 3, 1263, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-05-10 16:26:33', N'1', N'2022-05-11 00:31:28', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (1267, N'客户端删除', N'system:oauth2-client:delete', 3, 4, 1263, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2022-05-10 16:26:33', N'1', N'2022-05-11 00:31:33', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2083, N'地区管理', N'', 2, 14, 1, N'area', N'fa:map-marker', N'system/area/index', N'SystemArea', 0, N'1', N'1', N'1', N'1', N'2022-12-23 17:35:05', N'1', N'2024-02-29 08:50:28', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2130, N'邮箱管理', N'', 2, 2, 2739, N'mail', N'fa-solid:mail-bulk', NULL, NULL, 0, N'1', N'1', N'1', N'1', N'2023-01-25 17:27:44', N'1', N'2024-04-22 23:56:08', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2131, N'邮箱账号', N'', 2, 0, 2130, N'mail-account', N'fa:universal-access', N'system/mail/account/index', N'SystemMailAccount', 0, N'1', N'1', N'1', N'', N'2023-01-25 09:33:48', N'1', N'2024-02-29 08:48:16', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2132, N'账号查询', N'system:mail-account:query', 3, 1, 2131, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 09:33:48', N'', N'2023-01-25 09:33:48', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2133, N'账号创建', N'system:mail-account:create', 3, 2, 2131, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 09:33:48', N'', N'2023-01-25 09:33:48', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2134, N'账号更新', N'system:mail-account:update', 3, 3, 2131, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 09:33:48', N'', N'2023-01-25 09:33:48', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2135, N'账号删除', N'system:mail-account:delete', 3, 4, 2131, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 09:33:48', N'', N'2023-01-25 09:33:48', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2136, N'邮件模版', N'', 2, 0, 2130, N'mail-template', N'fa:tag', N'system/mail/template/index', N'SystemMailTemplate', 0, N'1', N'1', N'1', N'', N'2023-01-25 12:05:31', N'1', N'2024-02-29 08:48:41', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2137, N'模版查询', N'system:mail-template:query', 3, 1, 2136, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 12:05:31', N'', N'2023-01-25 12:05:31', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2138, N'模版创建', N'system:mail-template:create', 3, 2, 2136, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 12:05:31', N'', N'2023-01-25 12:05:31', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2139, N'模版更新', N'system:mail-template:update', 3, 3, 2136, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 12:05:31', N'', N'2023-01-25 12:05:31', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2140, N'模版删除', N'system:mail-template:delete', 3, 4, 2136, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-25 12:05:31', N'', N'2023-01-25 12:05:31', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2141, N'邮件记录', N'', 2, 0, 2130, N'mail-log', N'fa:edit', N'system/mail/log/index', N'SystemMailLog', 0, N'1', N'1', N'1', N'', N'2023-01-26 02:16:50', N'1', N'2024-02-29 08:48:51', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2142, N'日志查询', N'system:mail-log:query', 3, 1, 2141, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-26 02:16:50', N'', N'2023-01-26 02:16:50', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2143, N'发送测试邮件', N'system:mail-template:send-mail', 3, 5, 2136, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'1', N'2023-01-26 23:29:15', N'1', N'2023-01-26 23:29:15', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2144, N'站内信管理', N'', 1, 3, 2739, N'notify', N'ep:message-box', NULL, NULL, 0, N'1', N'1', N'1', N'1', N'2023-01-28 10:25:18', N'1', N'2024-04-22 23:56:12', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2145, N'模板管理', N'', 2, 0, 2144, N'notify-template', N'fa:archive', N'system/notify/template/index', N'SystemNotifyTemplate', 0, N'1', N'1', N'1', N'', N'2023-01-28 02:26:42', N'1', N'2024-02-29 08:49:14', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2146, N'站内信模板查询', N'system:notify-template:query', 3, 1, 2145, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-28 02:26:42', N'', N'2023-01-28 02:26:42', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2147, N'站内信模板创建', N'system:notify-template:create', 3, 2, 2145, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-28 02:26:42', N'', N'2023-01-28 02:26:42', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2148, N'站内信模板更新', N'system:notify-template:update', 3, 3, 2145, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-28 02:26:42', N'', N'2023-01-28 02:26:42', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2149, N'站内信模板删除', N'system:notify-template:delete', 3, 4, 2145, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-28 02:26:42', N'', N'2023-01-28 02:26:42', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2150, N'发送测试站内信', N'system:notify-template:send-notify', 3, 5, 2145, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'1', N'2023-01-28 10:54:43', N'1', N'2023-01-28 10:54:43', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2151, N'消息记录', N'', 2, 0, 2144, N'notify-message', N'fa:edit', N'system/notify/message/index', N'SystemNotifyMessage', 0, N'1', N'1', N'1', N'', N'2023-01-28 04:28:22', N'1', N'2024-02-29 08:49:22', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2152, N'站内信消息查询', N'system:notify-message:query', 3, 1, 2151, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-01-28 04:28:22', N'', N'2023-01-28 04:28:22', N'0')
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2159, N'Boot 开发文档', N'', 1, 1, 0, N'https://github.com/LeCod101/xiaoy-boot', N'ep:document', NULL, NULL, 0, N'1', N'1', N'1', N'1', N'2023-02-10 22:46:28', N'1', N'2026-01-05 19:31:07', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2447, N'三方登录', N'', 1, 10, 1, N'social', N'fa:rocket', N'', N'', 0, N'1', N'1', N'1', N'1', N'2023-11-04 12:12:01', N'1', N'2024-02-29 01:14:05', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2448, N'三方应用', N'', 2, 1, 2447, N'client', N'ep:set-up', N'system/social/client/index.vue', N'SocialClient', 0, N'1', N'1', N'1', N'1', N'2023-11-04 12:17:19', N'1', N'2024-05-04 19:09:54', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2449, N'三方应用查询', N'system:social-client:query', 3, 1, 2448, N'', N'', N'', N'', 0, N'1', N'1', N'1', N'1', N'2023-11-04 12:43:12', N'1', N'2023-11-04 12:43:33', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2450, N'三方应用创建', N'system:social-client:create', 3, 2, 2448, N'', N'', N'', N'', 0, N'1', N'1', N'1', N'1', N'2023-11-04 12:43:58', N'1', N'2023-11-04 12:43:58', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2451, N'三方应用更新', N'system:social-client:update', 3, 3, 2448, N'', N'', N'', N'', 0, N'1', N'1', N'1', N'1', N'2023-11-04 12:44:27', N'1', N'2023-11-04 12:44:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2452, N'三方应用删除', N'system:social-client:delete', 3, 4, 2448, N'', N'', N'', N'', 0, N'1', N'1', N'1', N'1', N'2023-11-04 12:44:43', N'1', N'2023-11-04 12:44:43', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2453, N'三方用户', N'system:social-user:query', 2, 2, 2447, N'user', N'ep:avatar', N'system/social/user/index.vue', N'SocialUser', 0, N'1', N'1', N'1', N'1', N'2023-11-04 14:01:05', N'1', N'2023-11-04 14:01:05', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2472, N'主子表（内嵌）', N'', 2, 12, 1070, N'demo03-inner', N'fa:power-off', N'infra/demo/demo03/inner/index', N'Demo03StudentInner', 0, N'1', N'1', N'1', N'', N'2023-11-13 04:39:51', N'1', N'2023-11-16 23:53:46', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2478, N'单表（增删改查）', N'', 2, 1, 1070, N'demo01-contact', N'ep:bicycle', N'infra/demo/demo01/index', N'Demo01Contact', 0, N'1', N'1', N'1', N'', N'2023-11-15 14:42:30', N'1', N'2023-11-16 20:34:40', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2479, N'示例联系人查询', N'infra:demo01-contact:query', 3, 1, 2478, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-15 14:42:30', N'', N'2023-11-15 14:42:30', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2480, N'示例联系人创建', N'infra:demo01-contact:create', 3, 2, 2478, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-15 14:42:30', N'', N'2023-11-15 14:42:30', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2481, N'示例联系人更新', N'infra:demo01-contact:update', 3, 3, 2478, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-15 14:42:30', N'', N'2023-11-15 14:42:30', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2482, N'示例联系人删除', N'infra:demo01-contact:delete', 3, 4, 2478, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-15 14:42:30', N'', N'2023-11-15 14:42:30', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2483, N'示例联系人导出', N'infra:demo01-contact:export', 3, 5, 2478, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-15 14:42:30', N'', N'2023-11-15 14:42:30', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2484, N'树表（增删改查）', N'', 2, 2, 1070, N'demo02-category', N'fa:tree', N'infra/demo/demo02/index', N'Demo02Category', 0, N'1', N'1', N'1', N'', N'2023-11-16 12:18:27', N'1', N'2023-11-16 20:35:01', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2485, N'示例分类查询', N'infra:demo02-category:query', 3, 1, 2484, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:18:27', N'', N'2023-11-16 12:18:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2486, N'示例分类创建', N'infra:demo02-category:create', 3, 2, 2484, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:18:27', N'', N'2023-11-16 12:18:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2487, N'示例分类更新', N'infra:demo02-category:update', 3, 3, 2484, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:18:27', N'', N'2023-11-16 12:18:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2488, N'示例分类删除', N'infra:demo02-category:delete', 3, 4, 2484, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:18:27', N'', N'2023-11-16 12:18:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2489, N'示例分类导出', N'infra:demo02-category:export', 3, 5, 2484, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:18:27', N'', N'2023-11-16 12:18:27', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2490, N'主子表（标准）', N'', 2, 10, 1070, N'demo03-normal', N'fa:battery-3', N'infra/demo/demo03/normal/index', N'Demo03StudentNormal', 0, N'1', N'1', N'1', N'', N'2023-11-16 12:53:37', N'1', N'2023-11-16 23:10:03', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2491, N'学生查询', N'infra:demo03-student:query', 3, 1, 2490, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:53:37', N'', N'2023-11-16 12:53:37', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2492, N'学生创建', N'infra:demo03-student:create', 3, 2, 2490, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:53:37', N'', N'2023-11-16 12:53:37', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2493, N'学生更新', N'infra:demo03-student:update', 3, 3, 2490, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:53:37', N'', N'2023-11-16 12:53:37', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2494, N'学生删除', N'infra:demo03-student:delete', 3, 4, 2490, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:53:37', N'', N'2023-11-16 12:53:37', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2495, N'学生导出', N'infra:demo03-student:export', 3, 5, 2490, N'', N'', N'', NULL, 0, N'1', N'1', N'1', N'', N'2023-11-16 12:53:37', N'', N'2023-11-16 12:53:37', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2497, N'主子表（ERP）', N'', 2, 11, 1070, N'demo03-erp', N'ep:calendar', N'infra/demo/demo03/erp/index', N'Demo03StudentERP', 0, N'1', N'1', N'1', N'', N'2023-11-16 15:50:59', N'1', N'2023-11-17 13:19:56', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2525, N'WebSocket', N'', 2, 5, 2, N'websocket', N'ep:connection', N'infra/webSocket/index', N'InfraWebSocket', 0, N'1', N'1', N'1', N'1', N'2023-11-23 19:41:55', N'1', N'2024-04-23 00:02:00', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2739, N'消息中心', N'', 1, 7, 1, N'messages', N'ep:chat-dot-round', N'', N'', 0, N'1', N'1', N'1', N'1', N'2024-04-22 23:54:30', N'1', N'2024-04-23 09:36:35', N'0')
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (2740, N'监控中心', N'', 1, 10, 2, N'monitors', N'ep:monitor', N'', N'', 0, N'1', N'1', N'1', N'1', N'2024-04-23 00:04:44', N'1', N'2024-04-23 00:04:44', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_menu (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES (5010, N'租户切换', N'system:tenant:visit', 3, 999, 1138, N'', N'', N'', N'', 0, N'1', N'1', N'1', N'1', N'2025-05-05 15:25:32', N'1', N'2025-05-05 15:25:32', N'0')
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
SET IDENTITY_INSERT system_menu OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_notice
-- ----------------------------
DROP TABLE IF EXISTS system_notice
GO
CREATE TABLE system_notice (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    title nvarchar(50)  NOT NULL,
    content nvarchar(max)  NOT NULL,
    type tinyint  NOT NULL,
    status tinyint DEFAULT 0 NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'公告ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'公告标题',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'公告内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'公告类型（1通知 2公告）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'公告状态（0正常 1关闭）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'通知公告表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notice'
GO

-- ----------------------------
-- Records of system_notice
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_notice ON
GO
INSERT INTO system_notice (id, title, content, type, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, N'小Y的公众', N'<p>新版本内容133222</p>', 1, 0, N'admin', N'2021-01-05 17:03:48', N'"1"', N'2025-08-31 09:38:22', N'0', 1)
GO
INSERT INTO system_notice (id, title, content, type, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, N'维护通知：2018-07-01 系统凌晨维护', N'<p><img src="http://localhost/b7cb3cf49b4b3258bf7309a09dd2f4e5.jpg" alt="" data-href="">11112222<img src="http://localhost/fe44fc7bdb82ca421184b2eebbaee9e2148d4a1827479a4eb4521e11d2a062ba.png" alt="image" data-href="http://localhost/fe44fc7bdb82ca421184b2eebbaee9e2148d4a1827479a4eb4521e11d2a062ba.png">3333</p>', 2, 1, N'admin', N'2021-01-05 17:03:48', N'1', N'2025-04-18 23:56:40', N'0', 1)
GO
INSERT INTO system_notice (id, title, content, type, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (4, N'我是测试标题', N'<p>哈哈哈哈123</p>', 1, 0, N'110', N'2022-02-22 01:01:25', N'110', N'2022-02-22 01:01:46', N'0', 121)
GO
SET IDENTITY_INSERT system_notice OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_notify_message
-- ----------------------------
DROP TABLE IF EXISTS system_notify_message
GO
CREATE TABLE system_notify_message (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    user_type tinyint  NOT NULL,
    template_id bigint  NOT NULL,
    template_code nvarchar(64)  NOT NULL,
    template_nickname nvarchar(63)  NOT NULL,
    template_content nvarchar(1024)  NOT NULL,
    template_type int  NOT NULL,
    template_params nvarchar(255)  NOT NULL,
    read_status varchar(1)  NOT NULL,
    read_time datetime2 DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_notify_message_01 ON system_notify_message (user_id, user_type, read_status)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户id',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'template_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'template_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版发送人名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'template_nickname'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'template_content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'template_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版参数',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'template_params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否已读',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'read_status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'阅读时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'read_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'站内信消息表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_message'
GO

-- ----------------------------
-- Records of system_notify_message
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_notify_message ON
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, 1, 2, 1, N'test', N'123', N'我是 1，我开始 2 了', 1, N'{"name":"1","what":"2"}', N'1', N'2025-12-15 21:24:36', N'1', N'2023-01-28 11:44:08', N'1', N'2025-12-15 21:24:36', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3, 1, 2, 1, N'test', N'123', N'我是 1，我开始 2 了', 1, N'{"name":"1","what":"2"}', N'1', N'2025-12-15 21:24:36', N'1', N'2023-01-28 11:45:04', N'1', N'2025-12-15 21:24:36', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (4, 103, 2, 2, N'register', N'系统消息', N'你好，欢迎 哈哈 加入大家庭！', 2, N'{"name":"哈哈"}', N'0', NULL, N'1', N'2023-01-28 21:02:20', N'1', N'2023-01-28 21:02:20', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5, 1, 2, 1, N'test', N'123', N'我是 小Y，我开始 写代码 了', 1, N'{"name":"小Y","what":"写代码"}', N'1', N'2025-12-08 17:25:28', N'1', N'2023-01-28 22:21:42', N'1', N'2025-12-08 17:25:28', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (6, 1, 2, 1, N'test', N'123', N'我是 小Y，我开始 写代码 了', 1, N'{"name":"小Y","what":"写代码"}', N'1', N'2025-12-08 17:25:30', N'1', N'2023-01-28 22:22:07', N'1', N'2025-12-08 17:25:30', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (7, 1, 2, 1, N'test', N'123', N'我是 2，我开始 3 了', 1, N'{"name":"2","what":"3"}', N'1', N'2025-12-08 17:25:22', N'1', N'2023-01-28 23:45:21', N'1', N'2025-12-08 17:25:22', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (8, 1, 2, 2, N'register', N'系统消息', N'你好，欢迎 123 加入大家庭！', 2, N'{"name":"123"}', N'1', N'2025-12-08 16:46:01', N'1', N'2023-01-28 23:50:21', N'1', N'2025-12-08 16:46:01', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (9, 247, 1, 4, N'brokerage_withdraw_audit_approve', N'system', N'您在2023-09-28 08:35:46提现￥0.09元的申请已通过审核', 2, N'{"reason":null,"createTime":"2023-09-28 08:35:46","price":"0.09"}', N'0', NULL, N'1', N'2023-09-28 16:36:22', N'1', N'2023-09-28 16:36:22', N'0', 1)
GO
INSERT INTO system_notify_message (id, user_id, user_type, template_id, template_code, template_nickname, template_content, template_type, template_params, read_status, read_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (10, 247, 1, 4, N'brokerage_withdraw_audit_approve', N'system', N'您在2023-09-30 20:59:40提现￥1.00元的申请已通过审核', 2, N'{"reason":null,"createTime":"2023-09-30 20:59:40","price":"1.00"}', N'0', NULL, N'1', N'2023-10-03 12:11:34', N'1', N'2023-10-03 12:11:34', N'0', 1)
GO
SET IDENTITY_INSERT system_notify_message OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_notify_template
-- ----------------------------
DROP TABLE IF EXISTS system_notify_template
GO
CREATE TABLE system_notify_template (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(63)  NOT NULL,
    code nvarchar(64)  NOT NULL,
    nickname nvarchar(255)  NOT NULL,
    content nvarchar(1024)  NOT NULL,
    type tinyint  NOT NULL,
    params nvarchar(255) DEFAULT NULL NULL,
    status tinyint  NOT NULL,
    remark nvarchar(255) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主键',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送人名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模版内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数数组',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'站内信模板表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_notify_template'
GO

-- ----------------------------
-- Table structure for system_oauth2_access_token
-- ----------------------------
DROP TABLE IF EXISTS system_oauth2_access_token
GO
CREATE TABLE system_oauth2_access_token (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    user_type tinyint  NOT NULL,
    user_info nvarchar(512)  NOT NULL,
    access_token nvarchar(255)  NOT NULL,
    refresh_token nvarchar(32)  NOT NULL,
    client_id nvarchar(255)  NOT NULL,
    scopes nvarchar(255) DEFAULT NULL NULL,
    expires_time datetime2  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_oauth2_access_token_01 ON system_oauth2_access_token (access_token)
GO
CREATE INDEX idx_system_oauth2_access_token_02 ON system_oauth2_access_token (refresh_token)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户信息',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'user_info'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'访问令牌',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'access_token'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'刷新令牌',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'refresh_token'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权范围',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'scopes'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'过期时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'expires_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'OAuth2 访问令牌',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_access_token'
GO

-- ----------------------------
-- Table structure for system_oauth2_approve
-- ----------------------------
DROP TABLE IF EXISTS system_oauth2_approve
GO
CREATE TABLE system_oauth2_approve (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    user_type tinyint  NOT NULL,
    client_id nvarchar(255)  NOT NULL,
    scope nvarchar(255) DEFAULT '' NOT NULL,
    approved varchar(1) DEFAULT '0' NOT NULL,
    expires_time datetime2  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_oauth2_approve_01 ON system_oauth2_approve (user_id, user_type, client_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权范围',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'scope'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否接受',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'approved'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'过期时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'expires_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'OAuth2 批准表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_approve'
GO

-- ----------------------------
-- Table structure for system_oauth2_client
-- ----------------------------
DROP TABLE IF EXISTS system_oauth2_client
GO
CREATE TABLE system_oauth2_client (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    client_id nvarchar(255)  NOT NULL,
    secret nvarchar(255)  NOT NULL,
    name nvarchar(255)  NOT NULL,
    logo nvarchar(255)  NOT NULL,
    description nvarchar(255) DEFAULT NULL NULL,
    status tinyint  NOT NULL,
    access_token_validity_seconds int  NOT NULL,
    refresh_token_validity_seconds int  NOT NULL,
    redirect_uris nvarchar(255)  NOT NULL,
    authorized_grant_types nvarchar(255)  NOT NULL,
    scopes nvarchar(255) DEFAULT NULL NULL,
    auto_approve_scopes nvarchar(255) DEFAULT NULL NULL,
    authorities nvarchar(255) DEFAULT NULL NULL,
    resource_ids nvarchar(255) DEFAULT NULL NULL,
    additional_information nvarchar(4000) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_oauth2_client_01 ON system_oauth2_client (client_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端密钥',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'secret'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'应用名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'应用图标',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'logo'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'应用描述',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'访问令牌的有效期',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'access_token_validity_seconds'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'刷新令牌的有效期',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'refresh_token_validity_seconds'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'可重定向的 URI 地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'redirect_uris'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'authorized_grant_types'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权范围',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'scopes'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'自动通过的授权范围',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'auto_approve_scopes'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'权限',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'authorities'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'资源',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'resource_ids'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'附加信息',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'additional_information'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'OAuth2 客户端表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_client'
GO

-- ----------------------------
-- Records of system_oauth2_client
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_oauth2_client ON
GO
INSERT INTO system_oauth2_client (id, client_id, secret, name, logo, description, status, access_token_validity_seconds, refresh_token_validity_seconds, redirect_uris, authorized_grant_types, scopes, auto_approve_scopes, authorities, resource_ids, additional_information, creator, create_time, updater, update_time, deleted) VALUES (1, N'default', N'admin123', N'小Y系统', N'http://localhost/20250502/sort2_1746189740718.png', N'我是描述', 0, 1800, 2592000, N'["https://www.xiaoy.cn","https://doc.xiaoy.cn"]', N'["password","authorization_code","implicit","refresh_token","client_credentials"]', N'["user.read","user.write"]', N'[]', N'["user.read","user.write"]', N'[]', N'{}', N'1', N'2022-05-11 21:47:12', N'1', N'2025-12-07 20:07:09', N'0')
GO
INSERT INTO system_oauth2_client (id, client_id, secret, name, logo, description, status, access_token_validity_seconds, refresh_token_validity_seconds, redirect_uris, authorized_grant_types, scopes, auto_approve_scopes, authorities, resource_ids, additional_information, creator, create_time, updater, update_time, deleted) VALUES (40, N'test', N'test2', N'biubiu', N'http://localhost/20251227/javayuanma_1766829882970.jpg', N'啦啦啦啦', 0, 1800, 43200, N'["https://www.xiaoy.cn"]', N'["password","authorization_code","implicit"]', N'["user_info","projects"]', N'["user_info"]', N'[]', N'[]', N'{}', N'1', N'2022-05-12 00:28:20', N'1', N'2025-12-27 18:04:44', N'0')
GO
INSERT INTO system_oauth2_client (id, client_id, secret, name, logo, description, status, access_token_validity_seconds, refresh_token_validity_seconds, redirect_uris, authorized_grant_types, scopes, auto_approve_scopes, authorities, resource_ids, additional_information, creator, create_time, updater, update_time, deleted) VALUES (41, N'xiaoy-sso-demo-by-code', N'test', N'基于授权码模式，如何实现 SSO 单点登录？', N'http://localhost/it/20250502/sign_1746181948685.png', NULL, 0, 1800, 43200, N'["http://127.0.0.1:18080"]', N'["authorization_code","refresh_token"]', N'["user.read","user.write"]', N'[]', N'[]', N'[]', NULL, N'1', N'2022-09-29 13:28:31', N'1', N'2025-05-02 18:32:30', N'0')
GO
INSERT INTO system_oauth2_client (id, client_id, secret, name, logo, description, status, access_token_validity_seconds, refresh_token_validity_seconds, redirect_uris, authorized_grant_types, scopes, auto_approve_scopes, authorities, resource_ids, additional_information, creator, create_time, updater, update_time, deleted) VALUES (42, N'xiaoy-sso-demo-by-password', N'test', N'基于密码模式，如何实现 SSO 单点登录？', N'http://localhost/20251025/images (3)_1761360515810.jpeg', NULL, 0, 1800, 43200, N'["http://127.0.0.1:18080"]', N'["password","refresh_token"]', N'["user.read","user.write"]', N'[]', N'[]', N'[]', NULL, N'1', N'2022-10-04 17:40:16', N'1', N'2025-10-25 10:49:40', N'0')
GO
SET IDENTITY_INSERT system_oauth2_client OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_oauth2_code
-- ----------------------------
DROP TABLE IF EXISTS system_oauth2_code
GO
CREATE TABLE system_oauth2_code (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    user_type tinyint  NOT NULL,
    code nvarchar(32)  NOT NULL,
    client_id nvarchar(255)  NOT NULL,
    scopes nvarchar(255) DEFAULT '' NULL,
    expires_time datetime2  NOT NULL,
    redirect_uri nvarchar(255) DEFAULT NULL NULL,
    state nvarchar(255) DEFAULT '' NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_oauth2_code_01 ON system_oauth2_code (code)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权范围',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'scopes'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'过期时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'expires_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'可重定向的 URI 地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'redirect_uri'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'state'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'OAuth2 授权码表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_code'
GO

-- ----------------------------
-- Table structure for system_oauth2_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS system_oauth2_refresh_token
GO
CREATE TABLE system_oauth2_refresh_token (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    refresh_token nvarchar(32)  NOT NULL,
    user_type tinyint  NOT NULL,
    client_id nvarchar(255)  NOT NULL,
    scopes nvarchar(255) DEFAULT NULL NULL,
    expires_time datetime2  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_oauth2_refresh_token_01 ON system_oauth2_refresh_token (refresh_token)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'刷新令牌',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'refresh_token'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'授权范围',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'scopes'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'过期时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'expires_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'OAuth2 刷新令牌',
    'SCHEMA', N'dbo',
    'TABLE', N'system_oauth2_refresh_token'
GO

-- ----------------------------
-- Table structure for system_operate_log
-- ----------------------------
DROP TABLE IF EXISTS system_operate_log
GO
CREATE TABLE system_operate_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    trace_id nvarchar(64) DEFAULT '' NOT NULL,
    user_id bigint  NOT NULL,
    user_type tinyint DEFAULT 0 NOT NULL,
    type nvarchar(50)  NOT NULL,
    sub_type nvarchar(50)  NOT NULL,
    biz_id bigint  NOT NULL,
    action nvarchar(2000) DEFAULT '' NOT NULL,
    success varchar(1) DEFAULT '1' NOT NULL,
    extra nvarchar(2000) DEFAULT '' NOT NULL,
    request_method nvarchar(16) DEFAULT '' NULL,
    request_url nvarchar(255) DEFAULT '' NULL,
    user_ip nvarchar(50) DEFAULT NULL NULL,
    user_agent nvarchar(512) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_operate_log_01 ON system_operate_log (user_id)
GO
CREATE INDEX idx_system_operate_log_02 ON system_operate_log (create_time)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'日志主键',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'链路追踪编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'trace_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作模块类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'sub_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作数据模块编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'biz_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'action'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作结果',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'success'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'拓展字段',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'extra'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求方法名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'request_method'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'请求地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'request_url'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户 IP',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'user_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'浏览器 UA',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'user_agent'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'操作日志记录 V2 版本',
    'SCHEMA', N'dbo',
    'TABLE', N'system_operate_log'
GO

-- ----------------------------
-- Table structure for system_post
-- ----------------------------
DROP TABLE IF EXISTS system_post
GO
CREATE TABLE system_post (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    code nvarchar(64)  NOT NULL,
    name nvarchar(50)  NOT NULL,
    sort int  NOT NULL,
    status tinyint  NOT NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'岗位ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'岗位编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'岗位名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'显示顺序',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'岗位信息表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_post'
GO

-- ----------------------------
-- Records of system_post
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_post ON
GO
INSERT INTO system_post (id, code, name, sort, status, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, N'se', N'项目经理', 2, 0, N'', N'admin', N'2021-01-05 17:03:48', N'1', N'2025-12-15 22:38:43', N'0', 1)
GO
INSERT INTO system_post (id, code, name, sort, status, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (4, N'user', N'普通员工', 4, 0, N'111222', N'admin', N'2021-01-05 17:03:48', N'1', N'2025-03-24 21:32:40', N'0', 1)
GO
INSERT INTO system_post (id, code, name, sort, status, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5, N'HR', N'人力资源', 5, 0, N'`', N'1', N'2024-03-24 20:45:40', N'1', N'2025-03-29 19:08:10', N'0', 1)
GO
INSERT INTO system_post (id, code, name, sort, status, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (7, N'test', N'测试', 10, 0, NULL, N'1', N'2025-09-02 08:45:57', N'1', N'2025-09-02 08:45:57', N'0', 1)
GO
SET IDENTITY_INSERT system_post OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_role
-- ----------------------------
DROP TABLE IF EXISTS system_role
GO
CREATE TABLE system_role (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(30)  NOT NULL,
    code nvarchar(100)  NOT NULL,
    sort int  NOT NULL,
    data_scope tinyint DEFAULT 1 NOT NULL,
    data_scope_dept_ids nvarchar(500) DEFAULT '' NOT NULL,
    status tinyint  NOT NULL,
    type tinyint  NOT NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色权限字符串',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'显示顺序',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'data_scope'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'数据范围(指定部门数组)',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'data_scope_dept_ids'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色信息表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role'
GO

-- ----------------------------
-- Records of system_role
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_role ON
GO
INSERT INTO system_role (id, name, code, sort, data_scope, data_scope_dept_ids, status, type, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, N'超级管理员', N'super_admin', 1, 1, N'', 0, 1, N'超级管理员', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-22 05:08:21', N'0', 1)
GO
INSERT INTO system_role (id, name, code, sort, data_scope, data_scope_dept_ids, status, type, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, N'普通角色', N'common', 2, 2, N'', 0, 1, N'普通角色', N'admin', N'2021-01-05 17:03:48', N'', N'2022-02-22 05:08:20', N'0', 1)
GO
INSERT INTO system_role (id, name, code, sort, data_scope, data_scope_dept_ids, status, type, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3, N'CRM 管理员', N'crm_admin', 2, 1, N'', 0, 1, N'CRM 专属角色', N'1', N'2024-02-24 10:51:13', N'1', N'2024-02-24 02:51:32', N'0', 1)
GO
INSERT INTO system_role (id, name, code, sort, data_scope, data_scope_dept_ids, status, type, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (109, N'租户管理员', N'tenant_admin', 0, 1, N'', 0, 1, N'系统自动生成', N'1', N'2022-02-22 00:56:14', N'1', N'2022-02-22 00:56:14', N'0', 121)
GO
INSERT INTO system_role (id, name, code, sort, data_scope, data_scope_dept_ids, status, type, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (111, N'租户管理员', N'tenant_admin', 0, 1, N'', 0, 1, N'系统自动生成', N'1', N'2022-03-07 21:37:58', N'1', N'2022-03-07 21:37:58', N'0', 122)
GO
INSERT INTO system_role (id, name, code, sort, data_scope, data_scope_dept_ids, status, type, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (155, N'测试数据权限1', N'test-dp', 4, 2, N'[112,100,102,103,104,105,107,108]', 0, 2, N'1111', N'1', N'2025-03-31 14:58:06', N'1', N'2025-12-04 23:29:40', N'0', 1)
GO
SET IDENTITY_INSERT system_role OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_role_menu
-- ----------------------------
DROP TABLE IF EXISTS system_role_menu
GO
CREATE TABLE system_role_menu (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    role_id bigint  NOT NULL,
    menu_id bigint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_role_menu_01 ON system_role_menu (role_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'自增编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'菜单ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色和菜单关联表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_role_menu'
GO

-- ----------------------------
-- Records of system_role_menu
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_role_menu ON
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (263, 109, 1, N'1', N'2022-02-22 00:56:14', N'1', N'2022-02-22 00:56:14', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (434, 2, 1, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (454, 2, 1093, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (455, 2, 1094, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (460, 2, 1100, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (467, 2, 1107, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (477, 2, 100, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (478, 2, 101, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (479, 2, 102, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (481, 2, 103, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (483, 2, 104, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (485, 2, 105, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (488, 2, 107, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (490, 2, 108, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (492, 2, 109, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (498, 2, 1138, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (523, 2, 1224, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (524, 2, 1225, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (541, 2, 500, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (543, 2, 501, N'1', N'2022-02-22 13:09:12', N'1', N'2022-02-22 13:09:12', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (675, 2, 2, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (689, 2, 1077, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (690, 2, 1078, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (692, 2, 1083, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (693, 2, 1084, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (699, 2, 1090, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (703, 2, 106, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (704, 2, 110, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (705, 2, 111, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (706, 2, 112, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (707, 2, 113, N'1', N'2022-02-22 13:16:57', N'1', N'2022-02-22 13:16:57', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1296, 110, 1, N'110', N'2022-02-23 00:23:55', N'110', N'2022-02-23 00:23:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1578, 111, 1, N'1', N'2022-03-07 21:37:58', N'1', N'2022-03-07 21:37:58', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1729, 109, 100, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1730, 109, 101, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1731, 109, 1063, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1732, 109, 1064, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1733, 109, 1001, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1734, 109, 1065, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1735, 109, 1002, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1736, 109, 1003, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1737, 109, 1004, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1738, 109, 1005, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1739, 109, 1006, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1740, 109, 1007, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1741, 109, 1008, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1742, 109, 1009, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1743, 109, 1010, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1744, 109, 1011, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1745, 109, 1012, N'1', N'2022-09-21 22:08:51', N'1', N'2022-09-21 22:08:51', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1746, 111, 100, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1747, 111, 101, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1748, 111, 1063, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1749, 111, 1064, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1750, 111, 1001, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1751, 111, 1065, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1752, 111, 1002, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1753, 111, 1003, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1754, 111, 1004, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1755, 111, 1005, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1756, 111, 1006, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1757, 111, 1007, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1758, 111, 1008, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1759, 111, 1009, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1760, 111, 1010, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1761, 111, 1011, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1762, 111, 1012, N'1', N'2022-09-21 22:08:52', N'1', N'2022-09-21 22:08:52', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1763, 109, 100, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1764, 109, 101, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1765, 109, 1063, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1766, 109, 1064, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1767, 109, 1001, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1768, 109, 1065, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1769, 109, 1002, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1770, 109, 1003, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1771, 109, 1004, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1772, 109, 1005, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1773, 109, 1006, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1774, 109, 1007, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1775, 109, 1008, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1776, 109, 1009, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1777, 109, 1010, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1778, 109, 1011, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1779, 109, 1012, N'1', N'2022-09-21 22:08:53', N'1', N'2022-09-21 22:08:53', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1780, 111, 100, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1781, 111, 101, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1782, 111, 1063, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1783, 111, 1064, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1784, 111, 1001, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1785, 111, 1065, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1786, 111, 1002, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1787, 111, 1003, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1788, 111, 1004, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1789, 111, 1005, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1790, 111, 1006, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1791, 111, 1007, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1792, 111, 1008, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1793, 111, 1009, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1794, 111, 1010, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1795, 111, 1011, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1796, 111, 1012, N'1', N'2022-09-21 22:08:54', N'1', N'2022-09-21 22:08:54', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1797, 109, 100, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1798, 109, 101, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1799, 109, 1063, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1800, 109, 1064, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1801, 109, 1001, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1802, 109, 1065, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1803, 109, 1002, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1804, 109, 1003, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1805, 109, 1004, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1806, 109, 1005, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1807, 109, 1006, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1808, 109, 1007, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1809, 109, 1008, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1810, 109, 1009, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1811, 109, 1010, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1812, 109, 1011, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1813, 109, 1012, N'1', N'2022-09-21 22:08:55', N'1', N'2022-09-21 22:08:55', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1814, 111, 100, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1815, 111, 101, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1816, 111, 1063, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1817, 111, 1064, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1818, 111, 1001, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1819, 111, 1065, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1820, 111, 1002, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1821, 111, 1003, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1822, 111, 1004, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1823, 111, 1005, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1824, 111, 1006, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1825, 111, 1007, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1826, 111, 1008, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1827, 111, 1009, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1828, 111, 1010, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1829, 111, 1011, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1830, 111, 1012, N'1', N'2022-09-21 22:08:56', N'1', N'2022-09-21 22:08:56', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1831, 109, 103, N'1', N'2022-09-21 22:43:23', N'1', N'2022-09-21 22:43:23', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1832, 109, 1017, N'1', N'2022-09-21 22:43:23', N'1', N'2022-09-21 22:43:23', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1833, 109, 1018, N'1', N'2022-09-21 22:43:23', N'1', N'2022-09-21 22:43:23', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1834, 109, 1019, N'1', N'2022-09-21 22:43:23', N'1', N'2022-09-21 22:43:23', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1835, 109, 1020, N'1', N'2022-09-21 22:43:23', N'1', N'2022-09-21 22:43:23', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1836, 111, 103, N'1', N'2022-09-21 22:43:24', N'1', N'2022-09-21 22:43:24', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1837, 111, 1017, N'1', N'2022-09-21 22:43:24', N'1', N'2022-09-21 22:43:24', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1838, 111, 1018, N'1', N'2022-09-21 22:43:24', N'1', N'2022-09-21 22:43:24', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1839, 111, 1019, N'1', N'2022-09-21 22:43:24', N'1', N'2022-09-21 22:43:24', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1840, 111, 1020, N'1', N'2022-09-21 22:43:24', N'1', N'2022-09-21 22:43:24', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1841, 109, 1036, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1842, 109, 1037, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1843, 109, 1038, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1844, 109, 1039, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1845, 109, 107, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1846, 111, 1036, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1847, 111, 1037, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1848, 111, 1038, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1849, 111, 1039, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1850, 111, 107, N'1', N'2022-09-21 22:48:13', N'1', N'2022-09-21 22:48:13', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1991, 2, 1024, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1992, 2, 1025, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1993, 2, 1026, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1994, 2, 1027, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1995, 2, 1028, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1996, 2, 1029, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1997, 2, 1030, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1998, 2, 1031, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1999, 2, 1032, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2000, 2, 1033, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2001, 2, 1034, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2002, 2, 1035, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2003, 2, 1036, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2004, 2, 1037, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2005, 2, 1038, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2006, 2, 1039, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2007, 2, 1040, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2008, 2, 1042, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2009, 2, 1043, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2010, 2, 1045, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2011, 2, 1046, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2012, 2, 1048, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2013, 2, 1050, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2014, 2, 1051, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2015, 2, 1052, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2016, 2, 1053, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2017, 2, 1054, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2018, 2, 1056, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2019, 2, 1057, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2020, 2, 1058, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2021, 2, 2083, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2022, 2, 1059, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2023, 2, 1060, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2024, 2, 1063, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2025, 2, 1064, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2026, 2, 1065, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2027, 2, 1066, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2028, 2, 1067, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2029, 2, 1070, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2034, 2, 1075, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2036, 2, 1082, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2037, 2, 1085, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2038, 2, 1086, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2039, 2, 1087, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2040, 2, 1088, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2041, 2, 1089, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2042, 2, 1091, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2043, 2, 1092, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2044, 2, 1095, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2045, 2, 1096, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2046, 2, 1097, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2047, 2, 1098, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2048, 2, 1101, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2049, 2, 1102, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2050, 2, 1103, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2051, 2, 1104, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2052, 2, 1105, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2053, 2, 1106, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2054, 2, 1108, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2055, 2, 1109, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2072, 2, 114, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2073, 2, 1139, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2074, 2, 115, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2075, 2, 1140, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2076, 2, 116, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2077, 2, 1141, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2078, 2, 1142, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2079, 2, 1143, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2099, 2, 1226, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2100, 2, 1227, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2101, 2, 1228, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2102, 2, 1229, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2103, 2, 1237, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2104, 2, 1238, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2105, 2, 1239, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2106, 2, 1240, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2107, 2, 1241, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2108, 2, 1242, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2109, 2, 1243, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2117, 2, 1255, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2118, 2, 1256, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2119, 2, 1257, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2120, 2, 1258, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2121, 2, 1259, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2122, 2, 1260, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2123, 2, 1261, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2124, 2, 1263, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2125, 2, 1264, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2126, 2, 1265, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2127, 2, 1266, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2128, 2, 1267, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2129, 2, 1001, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2130, 2, 1002, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2131, 2, 1003, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2132, 2, 1004, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2133, 2, 1005, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2134, 2, 1006, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2135, 2, 1007, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2136, 2, 1008, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2137, 2, 1009, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2138, 2, 1010, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2139, 2, 1011, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2140, 2, 1012, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2141, 2, 1013, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2143, 2, 1015, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2145, 2, 1017, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2146, 2, 1018, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2147, 2, 1019, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2148, 2, 1020, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2149, 2, 1021, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2150, 2, 1022, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2151, 2, 1023, N'1', N'2023-01-25 08:42:52', N'1', N'2023-01-25 08:42:52', N'0', 1)
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2929, 109, 1224, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2930, 109, 1225, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2931, 109, 1226, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2932, 109, 1227, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2933, 109, 1228, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2934, 109, 1229, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2935, 109, 1138, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2936, 109, 1139, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2937, 109, 1140, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2938, 109, 1141, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2939, 109, 1142, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2940, 109, 1143, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2941, 111, 1224, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2942, 111, 1225, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2943, 111, 1226, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2944, 111, 1227, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2945, 111, 1228, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2946, 111, 1229, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2947, 111, 1138, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2948, 111, 1139, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2949, 111, 1140, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2950, 111, 1141, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2951, 111, 1142, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2952, 111, 1143, N'1', N'2023-12-02 23:19:40', N'1', N'2023-12-02 23:19:40', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2993, 109, 2, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2994, 109, 1031, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2995, 109, 1032, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2996, 109, 1033, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2997, 109, 1034, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2998, 109, 1035, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2999, 109, 1050, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3000, 109, 1051, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3001, 109, 1052, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3002, 109, 1053, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3003, 109, 1054, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3004, 109, 1056, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3005, 109, 1057, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3006, 109, 1058, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3007, 109, 1059, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3008, 109, 1060, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3009, 109, 1066, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3010, 109, 1067, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3011, 109, 1070, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3012, 109, 1075, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3014, 109, 1077, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3015, 109, 1078, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3016, 109, 1082, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3017, 109, 1083, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3018, 109, 1084, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3019, 109, 1085, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3020, 109, 1086, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3021, 109, 1087, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3022, 109, 1088, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3023, 109, 1089, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3024, 109, 1090, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3025, 109, 1091, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3026, 109, 1092, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3027, 109, 106, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3028, 109, 110, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3029, 109, 111, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3030, 109, 112, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3031, 109, 113, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3032, 109, 114, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3033, 109, 115, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3034, 109, 116, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3035, 109, 2472, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3036, 109, 2478, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3037, 109, 2479, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3038, 109, 2480, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3039, 109, 2481, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3040, 109, 2482, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3041, 109, 2483, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3042, 109, 2484, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3043, 109, 2485, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3044, 109, 2486, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3045, 109, 2487, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3046, 109, 2488, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3047, 109, 2489, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3048, 109, 2490, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3049, 109, 2491, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3050, 109, 2492, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3051, 109, 2493, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3052, 109, 2494, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3053, 109, 2495, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3054, 109, 2497, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3055, 109, 1237, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3056, 109, 1238, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3057, 109, 1239, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3058, 109, 1240, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3059, 109, 1241, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3060, 109, 1242, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3061, 109, 1243, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3062, 109, 2525, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3063, 109, 1255, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3064, 109, 1256, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3065, 109, 1257, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3066, 109, 1258, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3067, 109, 1259, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3068, 109, 1260, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3069, 111, 2, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3070, 111, 1031, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3071, 111, 1032, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3072, 111, 1033, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3073, 111, 1034, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3074, 111, 1035, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3075, 111, 1050, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3076, 111, 1051, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3077, 111, 1052, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3078, 111, 1053, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3079, 111, 1054, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3080, 111, 1056, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3081, 111, 1057, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3082, 111, 1058, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3083, 111, 1059, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3084, 111, 1060, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3085, 111, 1066, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3086, 111, 1067, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3087, 111, 1070, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3088, 111, 1075, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3090, 111, 1077, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3091, 111, 1078, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3092, 111, 1082, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3093, 111, 1083, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3094, 111, 1084, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3095, 111, 1085, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3096, 111, 1086, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3097, 111, 1087, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3098, 111, 1088, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3099, 111, 1089, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3100, 111, 1090, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3101, 111, 1091, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3102, 111, 1092, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3103, 111, 106, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3104, 111, 110, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3105, 111, 111, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3106, 111, 112, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3107, 111, 113, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3108, 111, 114, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3109, 111, 115, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3110, 111, 116, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3111, 111, 2472, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3112, 111, 2478, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3113, 111, 2479, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3114, 111, 2480, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3115, 111, 2481, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3116, 111, 2482, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3117, 111, 2483, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3118, 111, 2484, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3119, 111, 2485, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3120, 111, 2486, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3121, 111, 2487, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3122, 111, 2488, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3123, 111, 2489, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3124, 111, 2490, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3125, 111, 2491, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3126, 111, 2492, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3127, 111, 2493, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3128, 111, 2494, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3129, 111, 2495, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3130, 111, 2497, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3131, 111, 1237, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3132, 111, 1238, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3133, 111, 1239, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3134, 111, 1240, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3135, 111, 1241, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3136, 111, 1242, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3137, 111, 1243, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3138, 111, 2525, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3139, 111, 1255, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3140, 111, 1256, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3141, 111, 1257, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3142, 111, 1258, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3143, 111, 1259, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3144, 111, 1260, N'1', N'2023-12-02 23:41:02', N'1', N'2023-12-02 23:41:02', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3221, 109, 102, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3222, 109, 1013, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3223, 109, 1014, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3224, 109, 1015, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3225, 109, 1016, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3226, 111, 102, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3227, 111, 1013, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3228, 111, 1014, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3229, 111, 1015, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3230, 111, 1016, N'1', N'2023-12-30 11:42:36', N'1', N'2023-12-30 11:42:36', N'0', 122)
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5779, 2, 2739, N'1', N'2024-07-07 20:39:38', N'1', N'2024-07-07 20:39:38', N'0', 1)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5780, 2, 2740, N'1', N'2024-07-07 20:39:38', N'1', N'2024-07-07 20:39:38', N'0', 1)
GO
GO
GO
GO
GO
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5789, 109, 2739, N'1', N'2024-07-13 22:37:24', N'1', N'2024-07-13 22:37:24', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5790, 109, 2740, N'1', N'2024-07-13 22:37:24', N'1', N'2024-07-13 22:37:24', N'0', 121)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5791, 111, 2739, N'1', N'2024-07-13 22:37:24', N'1', N'2024-07-13 22:37:24', N'0', 122)
GO
INSERT INTO system_role_menu (id, role_id, menu_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5792, 111, 2740, N'1', N'2024-07-13 22:37:24', N'1', N'2024-07-13 22:37:24', N'0', 122)
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
GO
SET IDENTITY_INSERT system_role_menu OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_sms_channel
-- ----------------------------
DROP TABLE IF EXISTS system_sms_channel
GO
CREATE TABLE system_sms_channel (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    signature nvarchar(12)  NOT NULL,
    code nvarchar(63)  NOT NULL,
    status tinyint  NOT NULL,
    remark nvarchar(255) DEFAULT NULL NULL,
    api_key nvarchar(128)  NOT NULL,
    api_secret nvarchar(128) DEFAULT NULL NULL,
    callback_url nvarchar(255) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信签名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'signature'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'渠道编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'开启状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 的账号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'api_key'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 的秘钥',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'api_secret'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信发送回调 URL',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'callback_url'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信渠道',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_channel'
GO

-- ----------------------------
-- Records of system_sms_channel
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_sms_channel ON
GO
INSERT INTO system_sms_channel (id, signature, code, status, remark, api_key, api_secret, callback_url, creator, create_time, updater, update_time, deleted) VALUES (2, N'Ballcat', N'ALIYUN', 0, N'你要改哦，只有我可以用！！！！', N'YOUR_SMS_API_KEY', N'YOUR_SMS_API_SECRET', NULL, N'', N'2021-03-31 11:53:10', N'1', N'2024-08-04 08:53:26', N'0')
GO
INSERT INTO system_sms_channel (id, signature, code, status, remark, api_key, api_secret, callback_url, creator, create_time, updater, update_time, deleted) VALUES (4, N'测试渠道', N'DEBUG_DING_TALK', 0, N'123', N'YOUR_SMS_API_KEY', N'YOUR_SMS_API_SECRET', NULL, N'1', N'2021-04-13 00:23:14', N'1', N'2022-03-27 20:29:49', N'0')
GO
INSERT INTO system_sms_channel (id, signature, code, status, remark, api_key, api_secret, callback_url, creator, create_time, updater, update_time, deleted) VALUES (7, N'mock腾讯云', N'TENCENT', 0, N'123', N'1 2', N'2 3', N'', N'1', N'2024-09-30 08:53:45', N'1', N'2025-12-20 11:30:18', N'0')
GO
SET IDENTITY_INSERT system_sms_channel OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_sms_code
-- ----------------------------
DROP TABLE IF EXISTS system_sms_code
GO
CREATE TABLE system_sms_code (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    mobile nvarchar(11)  NOT NULL,
    code nvarchar(6)  NOT NULL,
    create_ip nvarchar(15)  NOT NULL,
    scene tinyint  NOT NULL,
    today_index tinyint  NOT NULL,
    used tinyint  NOT NULL,
    used_time datetime2 DEFAULT NULL NULL,
    used_ip nvarchar(255) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_sms_code_01 ON system_sms_code (mobile)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'手机号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'mobile'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'验证码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建 IP',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'create_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送场景',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'scene'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'今日发送的第几条',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'today_index'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否使用',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'used'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'使用时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'used_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'使用 IP',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'used_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'手机验证码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_code'
GO

-- ----------------------------
-- Table structure for system_sms_log
-- ----------------------------
DROP TABLE IF EXISTS system_sms_log
GO
CREATE TABLE system_sms_log (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    channel_id bigint  NOT NULL,
    channel_code nvarchar(63)  NOT NULL,
    template_id bigint  NOT NULL,
    template_code nvarchar(63)  NOT NULL,
    template_type tinyint  NOT NULL,
    template_content nvarchar(255)  NOT NULL,
    template_params nvarchar(255)  NOT NULL,
    api_template_id nvarchar(63)  NOT NULL,
    mobile nvarchar(11)  NOT NULL,
    user_id bigint DEFAULT NULL NULL,
    user_type tinyint DEFAULT NULL NULL,
    send_status tinyint DEFAULT 0 NOT NULL,
    send_time datetime2 DEFAULT NULL NULL,
    api_send_code nvarchar(63) DEFAULT NULL NULL,
    api_send_msg nvarchar(255) DEFAULT NULL NULL,
    api_request_id nvarchar(255) DEFAULT NULL NULL,
    api_serial_no nvarchar(255) DEFAULT NULL NULL,
    receive_status tinyint DEFAULT 0 NOT NULL,
    receive_time datetime2 DEFAULT NULL NULL,
    api_receive_code nvarchar(63) DEFAULT NULL NULL,
    api_receive_msg nvarchar(255) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信渠道编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'channel_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信渠道编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'channel_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'template_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'template_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'template_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'template_content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信参数',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'template_params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 的模板编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_template_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'手机号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'mobile'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'send_status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'发送时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'send_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 发送结果的编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_send_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 发送失败的提示',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_send_msg'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 发送返回的唯一请求 ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_request_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 发送返回的序号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_serial_no'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'接收状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'receive_status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'接收时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'receive_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'API 接收结果的编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_receive_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'API 接收结果的说明',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'api_receive_msg'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信日志',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_log'
GO

-- ----------------------------
-- Table structure for system_sms_template
-- ----------------------------
DROP TABLE IF EXISTS system_sms_template
GO
CREATE TABLE system_sms_template (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    type tinyint  NOT NULL,
    status tinyint  NOT NULL,
    code nvarchar(63)  NOT NULL,
    name nvarchar(63)  NOT NULL,
    content nvarchar(255)  NOT NULL,
    params nvarchar(255)  NOT NULL,
    remark nvarchar(255) DEFAULT NULL NULL,
    api_template_id nvarchar(63)  NOT NULL,
    channel_id bigint  NOT NULL,
    channel_code nvarchar(63)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'开启状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板名称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'模板内容',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'参数数组',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'params'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信 API 的模板编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'api_template_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信渠道编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'channel_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信渠道编码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'channel_code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'短信模板',
    'SCHEMA', N'dbo',
    'TABLE', N'system_sms_template'
GO

-- ----------------------------
-- Records of system_sms_template
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_sms_template ON
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (2, 1, 0, N'test_01', N'测试验证码短信', N'正在进行登录操作{operation}，您的验证码是{code}', N'["operation","code"]', N'测试备注', N'4383920', 4, N'DEBUG_DING_TALK', N'', N'2021-03-31 10:49:38', N'1', N'2024-08-18 11:57:18', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (3, 1, 0, N'test_02', N'公告通知', N'您的验证码{code}，该验证码5分钟内有效，请勿泄漏于他人！', N'["code"]', NULL, N'SMS_207945135', 2, N'ALIYUN', N'', N'2021-03-31 11:56:30', N'1', N'2021-04-10 01:22:02', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (6, 3, 0, N'test-01', N'测试模板', N'哈哈哈 {name}', N'["name"]', N'f哈哈哈', N'4383920', 4, N'DEBUG_DING_TALK', N'1', N'2021-04-10 01:07:21', N'1', N'2024-08-18 11:57:07', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (7, 3, 0, N'test-04', N'测试下', N'老鸡{name}，牛逼{code}', N'["name","code"]', N'哈哈哈哈', N'suibian', 7, N'DEBUG_DING_TALK', N'1', N'2021-04-13 00:29:53', N'1', N'2024-09-30 00:56:24', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (8, 1, 0, N'user-sms-login', N'前台用户短信登录', N'您的验证码是{code}', N'["code"]', NULL, N'4372216', 4, N'DEBUG_DING_TALK', N'1', N'2021-10-11 08:10:00', N'1', N'2024-08-18 11:57:06', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (9, 2, 0, N'bpm_task_assigned', N'【工作流】任务被分配', N'您收到了一条新的待办任务：{processInstanceName}-{taskName}，申请人：{startUserNickname}，处理链接：{detailUrl}', N'["processInstanceName","taskName","startUserNickname","detailUrl"]', NULL, N'suibian', 4, N'DEBUG_DING_TALK', N'1', N'2022-01-21 22:31:19', N'1', N'2022-01-22 00:03:36', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (10, 2, 0, N'bpm_process_instance_reject', N'【工作流】流程被不通过', N'您的流程被审批不通过：{processInstanceName}，原因：{reason}，查看链接：{detailUrl}', N'["processInstanceName","reason","detailUrl"]', NULL, N'suibian', 4, N'DEBUG_DING_TALK', N'1', N'2022-01-22 00:03:31', N'1', N'2022-05-01 12:33:14', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (11, 2, 0, N'bpm_process_instance_approve', N'【工作流】流程被通过', N'您的流程被审批通过：{processInstanceName}，查看链接：{detailUrl}', N'["processInstanceName","detailUrl"]', NULL, N'suibian', 4, N'DEBUG_DING_TALK', N'1', N'2022-01-22 00:04:31', N'1', N'2022-03-27 20:32:21', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (12, 2, 0, N'demo', N'演示模板', N'我就是测试一下下', N'[]', NULL, N'biubiubiu', 4, N'DEBUG_DING_TALK', N'1', N'2022-04-10 23:22:49', N'1', N'2024-08-18 11:57:04', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (14, 1, 0, N'user-update-mobile', N'会员用户 - 修改手机', N'您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！', N'["code"]', N'', N'null', 4, N'DEBUG_DING_TALK', N'1', N'2023-08-19 18:58:01', N'1', N'2023-08-19 11:34:04', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (15, 1, 0, N'user-update-password', N'会员用户 - 修改密码', N'您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！', N'["code"]', N'', N'null', 4, N'DEBUG_DING_TALK', N'1', N'2023-08-19 18:58:01', N'1', N'2023-08-19 11:34:18', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (16, 1, 0, N'user-reset-password', N'会员用户 - 重置密码', N'您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！', N'["code"]', N'', N'null', 4, N'DEBUG_DING_TALK', N'1', N'2023-08-19 18:58:01', N'1', N'2023-12-02 22:35:27', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (17, 2, 0, N'bpm_task_timeout', N'【工作流】任务审批超时', N'您收到了一条超时的待办任务：{processInstanceName}-{taskName}，处理链接：{detailUrl}', N'["processInstanceName","taskName","detailUrl"]', N'', N'X', 4, N'DEBUG_DING_TALK', N'1', N'2024-08-16 21:59:15', N'1', N'2024-08-16 21:59:34', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (18, 1, 0, N'admin-reset-password', N'后台用户 - 忘记密码', N'您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！', N'["code"]', N'', N'null', 4, N'DEBUG_DING_TALK', N'1', N'2025-03-16 14:19:34', N'1', N'2025-03-16 14:19:45', N'0')
GO
INSERT INTO system_sms_template (id, type, status, code, name, content, params, remark, api_template_id, channel_id, channel_code, creator, create_time, updater, update_time, deleted) VALUES (19, 1, 0, N'admin-sms-login', N'后台用户短信登录', N'您的验证码是{code}', N'["code"]', N'', N'4372216', 4, N'DEBUG_DING_TALK', N'1', N'2025-04-08 09:36:03', N'1', N'2025-04-08 09:36:17', N'0')
GO
SET IDENTITY_INSERT system_sms_template OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_social_client
-- ----------------------------
DROP TABLE IF EXISTS system_social_client
GO
CREATE TABLE system_social_client (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(255)  NOT NULL,
    social_type tinyint  NOT NULL,
    user_type tinyint  NOT NULL,
    client_id nvarchar(255)  NOT NULL,
    client_secret nvarchar(255)  NOT NULL,
    agent_id nvarchar(255) DEFAULT NULL NULL,
    public_key nvarchar(2048) DEFAULT NULL NULL,
    status tinyint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'应用名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交平台的类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'social_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'client_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'客户端密钥',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'client_secret'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'代理编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'agent_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'publicKey 公钥',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'public_key'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交客户端表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_client'
GO

-- ----------------------------
-- Records of system_social_client
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_social_client ON
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, N'钉钉', 20, 2, N'YOUR_DINGTALK_APP_KEY_2', N'YOUR_SOCIAL_CLIENT_SECRET', NULL, NULL, 0, N'', N'2023-10-18 11:21:18', N'1', N'2023-12-20 21:28:26', N'1', 1)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, N'钉钉（王土豆）', 20, 2, N'YOUR_DINGTALK_APP_KEY', N'YOUR_SOCIAL_CLIENT_SECRET', NULL, NULL, 0, N'', N'2023-10-18 11:21:18', N'', N'2023-12-20 21:28:26', N'1', 121)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3, N'微信公众号', 31, 1, N'YOUR_APP_ID', N'YOUR_SOCIAL_CLIENT_SECRET', NULL, NULL, 0, N'', N'2023-10-18 16:07:46', N'1', N'2023-12-20 21:28:23', N'1', 1)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (43, N'微信小程序', 34, 1, N'YOUR_APP_ID', N'YOUR_SOCIAL_CLIENT_SECRET', NULL, NULL, 0, N'', N'2023-10-19 13:37:41', N'1', N'2023-12-20 21:28:25', N'1', 1)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (44, N'1', 10, 1, N'2', N'3', NULL, NULL, 0, N'1', N'2025-04-06 20:36:28', N'1', N'2025-04-06 20:43:12', N'1', 1)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (45, N'1', 10, 1, N'2', N'3', NULL, NULL, 1, N'1', N'2025-09-06 20:26:15', N'1', N'2025-09-06 20:27:55', N'1', 1)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (46, N'1', 10, 1, N'2', N'3', NULL, NULL, 0, N'1', N'2025-11-29 16:04:23', N'1', N'2025-11-29 16:04:26', N'1', 1)
GO
INSERT INTO system_social_client (id, name, social_type, user_type, client_id, client_secret, agent_id, public_key, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (47, N'123', 10, 1, N'1', N'2', N'3', NULL, 0, N'1', N'2025-12-21 10:27:02', N'1', N'2025-12-21 10:27:20', N'1', 1)
GO
SET IDENTITY_INSERT system_social_client OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_social_user
-- ----------------------------
DROP TABLE IF EXISTS system_social_user
GO
CREATE TABLE system_social_user (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    type tinyint  NOT NULL,
    openid nvarchar(32)  NOT NULL,
    token nvarchar(256) DEFAULT NULL NULL,
    raw_token_info nvarchar(1024)  NOT NULL,
    nickname nvarchar(32)  NOT NULL,
    avatar nvarchar(255) DEFAULT NULL NULL,
    raw_user_info nvarchar(1024)  NOT NULL,
    code nvarchar(256)  NOT NULL,
    state nvarchar(256) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_social_user_01 ON system_social_user (type, openid)
GO
CREATE INDEX idx_system_social_user_02 ON system_social_user (type, code, state)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主键(自增策略)',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交平台的类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交 openid',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'openid'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交 token',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'token'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'原始 Token 数据，一般是 JSON 格式',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'raw_token_info'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户昵称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户头像',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'原始用户数据，一般是 JSON 格式',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'raw_user_info'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'最后一次的认证 code',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'最后一次的认证 state',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'state'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交用户表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user'
GO

-- ----------------------------
-- Table structure for system_social_user_bind
-- ----------------------------
DROP TABLE IF EXISTS system_social_user_bind
GO
CREATE TABLE system_social_user_bind (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    user_type tinyint  NOT NULL,
    social_type tinyint  NOT NULL,
    social_user_id bigint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_social_user_bind_01 ON system_social_user_bind (user_type, social_user_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'主键(自增策略)',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'user_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交平台的类型',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'social_type'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交用户的编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'social_user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'社交绑定表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_social_user_bind'
GO

-- ----------------------------
-- Table structure for system_tenant
-- ----------------------------
DROP TABLE IF EXISTS system_tenant
GO
CREATE TABLE system_tenant (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(30)  NOT NULL,
    contact_user_id bigint DEFAULT NULL NULL,
    contact_name nvarchar(30)  NOT NULL,
    contact_mobile nvarchar(500) DEFAULT NULL NULL,
    status tinyint DEFAULT 0 NOT NULL,
    websites nvarchar(1024) DEFAULT '' NULL,
    package_id bigint  NOT NULL,
    expire_time datetime2  NOT NULL,
    account_count int  NOT NULL,
    creator nvarchar(64) DEFAULT '' NOT NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'联系人的用户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'contact_user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'联系人',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'contact_name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'联系手机',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'contact_mobile'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户状态',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'绑定域名数组',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'websites'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户套餐编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'package_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'过期时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'expire_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'账号数量',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'account_count'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant'
GO

-- ----------------------------
-- Records of system_tenant
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_tenant ON
GO
INSERT INTO system_tenant (id, name, contact_user_id, contact_name, contact_mobile, status, websites, package_id, expire_time, account_count, creator, create_time, updater, update_time, deleted) VALUES (1, N'小Y系统', NULL, N'小Y', N'17321315478', 0, N'www.xiaoy.cn,127.0.0.1:3000,YOUR_APP_ID', 0, N'2099-02-19 17:14:16', 9999, N'1', N'2021-01-05 17:03:47', N'1', N'2025-08-19 05:18:41', N'0')
GO
INSERT INTO system_tenant (id, name, contact_user_id, contact_name, contact_mobile, status, websites, package_id, expire_time, account_count, creator, create_time, updater, update_time, deleted) VALUES (121, N'小租户', 110, N'小王2', N'15601691300', 0, N'xiaoy.cn,123321', 111, N'2026-07-10 00:00:00', 30, N'1', N'2022-02-22 00:56:14', N'1', N'2025-08-19 21:19:29', N'0')
GO
INSERT INTO system_tenant (id, name, contact_user_id, contact_name, contact_mobile, status, websites, package_id, expire_time, account_count, creator, create_time, updater, update_time, deleted) VALUES (122, N'测试租户', 113, N'小Y', N'15601691300', 0, N'test.xiaoy.cn,222,333', 111, N'2023-04-29 00:00:00', 50, N'1', N'2022-03-07 21:37:58', N'1', N'2025-12-21 09:50:00', N'0')
GO
SET IDENTITY_INSERT system_tenant OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_tenant_package
-- ----------------------------
DROP TABLE IF EXISTS system_tenant_package
GO
CREATE TABLE system_tenant_package (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(30)  NOT NULL,
    status tinyint DEFAULT 0 NOT NULL,
    remark nvarchar(256) DEFAULT '' NULL,
    menu_ids nvarchar(4000)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NOT NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'套餐编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'套餐名',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'关联的菜单编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'menu_ids'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户套餐表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_tenant_package'
GO

-- ----------------------------
-- Records of system_tenant_package
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_tenant_package ON
GO
INSERT INTO system_tenant_package (id, name, status, remark, menu_ids, creator, create_time, updater, update_time, deleted) VALUES (111, N'普通套餐', 0, N'小功能', N'[1,2,5,1031,1032,1033,1034,1035,1036,1037,1038,1039,1050,1051,1052,1053,1054,1056,1057,1058,1059,1060,1063,1064,1065,1066,1067,1070,1075,1077,1078,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1117,1118,1119,1120,100,101,102,1126,103,1127,1128,1129,106,1130,107,1132,1133,110,1134,111,1135,112,1136,113,1137,2161,114,1138,1139,115,1140,116,1141,1142,1143,1150,1161,1162,1166,1173,1174,2713,2714,1178,2715,2716,2717,2718,2720,2721,1185,2722,1186,1187,2723,1188,2724,1189,2725,1190,2726,1191,2727,1192,2728,2729,1193,1194,2730,1195,2731,2732,1197,2733,1198,2734,1199,2735,1200,1201,1202,2739,2740,1207,1208,1209,2745,1210,2746,1211,2747,1212,2748,1213,1215,1216,1217,1218,1219,1220,2756,1221,2757,1222,1224,1225,1226,1227,1228,1229,1237,1238,2262,1239,1240,1241,1242,1243,2275,2276,2277,1255,1256,1257,2281,1258,2282,1259,2283,1260,2284,2285,2287,2288,2293,2294,2297,2300,2301,2302,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334,2335,2363,2364,5011,5012,2472,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488,2489,2490,2491,2492,2493,2494,2495,2497,2525,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,2549,1014,2550,1015,2551,1016,2552,1017,2553,1018,2554,1019,2555,1020,2556,2557,2558,2559]', N'1', N'2022-02-22 00:54:00', N'1', N'2025-09-06 20:52:25', N'0')
GO
SET IDENTITY_INSERT system_tenant_package OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_user_post
-- ----------------------------
DROP TABLE IF EXISTS system_user_post
GO
CREATE TABLE system_user_post (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint DEFAULT 0 NOT NULL,
    post_id bigint DEFAULT 0 NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'id',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'岗位ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'post_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户岗位表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_post'
GO

-- ----------------------------
-- Records of system_user_post
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_user_post ON
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (112, 1, 1, N'admin', N'2022-05-02 07:25:24', N'admin', N'2022-05-02 07:25:24', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (113, 100, 1, N'admin', N'2022-05-02 07:25:24', N'admin', N'2022-05-02 07:25:24', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (115, 104, 1, N'1', N'2022-05-16 19:36:28', N'1', N'2022-05-16 19:36:28', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (116, 117, 2, N'1', N'2022-07-09 17:40:26', N'1', N'2022-07-09 17:40:26', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (117, 118, 1, N'1', N'2022-07-09 17:44:44', N'1', N'2022-07-09 17:44:44', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (119, 114, 5, N'1', N'2024-03-24 20:45:51', N'1', N'2024-03-24 20:45:51', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (123, 115, 1, N'1', N'2024-04-04 09:37:14', N'1', N'2024-04-04 09:37:14', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (124, 115, 2, N'1', N'2024-04-04 09:37:14', N'1', N'2024-04-04 09:37:14', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (125, 1, 2, N'1', N'2024-07-13 22:31:39', N'1', N'2024-07-13 22:31:39', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (128, 139, 2, N'1', N'2025-12-05 21:43:27', N'1', N'2025-12-05 21:43:27', N'0', 1)
GO
INSERT INTO system_user_post (id, user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (129, 139, 4, N'1', N'2025-12-05 21:43:27', N'1', N'2025-12-05 21:43:27', N'0', 1)
GO
SET IDENTITY_INSERT system_user_post OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_user_role
-- ----------------------------
DROP TABLE IF EXISTS system_user_role
GO
CREATE TABLE system_user_role (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    user_id bigint  NOT NULL,
    role_id bigint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_user_role_01 ON system_user_role (user_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'自增编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'角色ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户和角色关联表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_user_role'
GO

-- ----------------------------
-- Records of system_user_role
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_user_role ON
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, 1, 1, N'', N'2022-01-11 13:19:45', N'', N'2022-05-12 12:35:17', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, 2, 2, N'', N'2022-01-11 13:19:45', N'', N'2022-05-12 12:35:13', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5, 100, 1, N'', N'2022-01-11 13:19:45', N'', N'2022-05-12 12:35:12', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (6, 100, 2, N'', N'2022-01-11 13:19:45', N'', N'2022-05-12 12:35:11', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (10, 103, 1, N'1', N'2022-01-11 13:19:45', N'1', N'2022-01-11 13:19:45', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (14, 110, 109, N'1', N'2022-02-22 00:56:14', N'1', N'2022-02-22 00:56:14', N'0', 121)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (15, 111, 110, N'110', N'2022-02-23 13:14:38', N'110', N'2022-02-23 13:14:38', N'0', 121)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (16, 113, 111, N'1', N'2022-03-07 21:37:58', N'1', N'2022-03-07 21:37:58', N'0', 122)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (18, 1, 2, N'1', N'2022-05-12 20:39:29', N'1', N'2022-05-12 20:39:29', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (22, 115, 2, N'1', N'2022-07-21 22:08:30', N'1', N'2022-07-21 22:08:30', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (35, 112, 1, N'1', N'2024-03-15 20:00:24', N'1', N'2024-03-15 20:00:24', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (36, 118, 1, N'1', N'2024-03-17 09:12:08', N'1', N'2024-03-17 09:12:08', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (46, 117, 1, N'1', N'2024-10-02 10:16:11', N'1', N'2024-10-02 10:16:11', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (47, 104, 2, N'1', N'2025-01-04 10:40:33', N'1', N'2025-01-04 10:40:33', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (48, 100, 155, N'1', N'2025-04-04 10:41:14', N'1', N'2025-04-04 10:41:14', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (49, 142, 1, N'1', N'2025-07-23 09:11:42', N'1', N'2025-07-23 09:11:42', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (50, 142, 2, N'1', N'2025-10-07 20:50:37', N'1', N'2025-10-07 20:50:37', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (51, 139, 1, N'1', N'2025-12-05 22:36:57', N'1', N'2025-12-05 22:36:57', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (52, 139, 2, N'1', N'2025-12-05 22:37:00', N'1', N'2025-12-05 22:37:00', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (53, 114, 2, N'1', N'2026-01-04 18:15:40', N'1', N'2026-01-04 18:15:40', N'0', 1)
GO
INSERT INTO system_user_role (id, user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (54, 114, 3, N'1', N'2026-01-04 18:16:19', N'1', N'2026-01-04 18:16:19', N'0', 1)
GO
SET IDENTITY_INSERT system_user_role OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for system_users
-- ----------------------------
DROP TABLE IF EXISTS system_users
GO
CREATE TABLE system_users (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    username nvarchar(30)  NOT NULL,
    password nvarchar(100) DEFAULT '' NOT NULL,
    nickname nvarchar(30)  NOT NULL,
    remark nvarchar(500) DEFAULT NULL NULL,
    dept_id bigint DEFAULT NULL NULL,
    post_ids nvarchar(255) DEFAULT NULL NULL,
    email nvarchar(50) DEFAULT '' NULL,
    mobile nvarchar(11) DEFAULT '' NULL,
    sex tinyint DEFAULT 0 NULL,
    avatar nvarchar(512) DEFAULT '' NULL,
    status tinyint DEFAULT 0 NOT NULL,
    login_ip nvarchar(50) DEFAULT '' NULL,
    login_date datetime2 DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

CREATE INDEX idx_system_users_01 ON system_users (username)
GO
CREATE INDEX idx_system_users_02 ON system_users (mobile)
GO
CREATE INDEX idx_system_users_03 ON system_users (email)
GO
CREATE INDEX idx_system_users_04 ON system_users (dept_id)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户账号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'密码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户昵称',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'备注',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'部门ID',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'岗位编号数组',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'post_ids'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户邮箱',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'手机号码',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'mobile'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户性别',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'头像地址',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'帐号状态（0正常 1停用）',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'最后登录IP',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'login_ip'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'最后登录时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'login_date'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'用户信息表',
    'SCHEMA', N'dbo',
    'TABLE', N'system_users'
GO

-- ----------------------------
-- Records of system_users
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT system_users ON
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, N'admin', N'$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', N'小Y系统', N'管理员', 103, N'[1,2]', N'13aoteman@126.com', N'18818260272', 1, N'http://localhost/user/avatar/20251220/blob_1766215463801.jpg', 0, N'0:0:0:0:0:0:0:1', N'2026-04-17 08:47:40', N'admin', N'2021-01-05 17:03:47', NULL, N'2026-04-17 08:47:40', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (100, N'xiaoy', N'$2a$04$h.aaPKgO.odHepnk5PCsWeEwKdojFWdTItxGKfx1r0e1CSeBzsTJ6', N'小Y', N'不要吓我', 104, N'[1]', N'xiaoy@xiaoy.cn', N'15601691300', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2025-12-15 21:47:26', N'', N'2021-01-07 09:07:17', NULL, N'2025-12-15 21:47:26', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (103, N'yuanma', N'$2a$04$fUBSmjKCPYAUmnMzOb6qE.eZCGPhHi1JmAKclODbfS/O7fHOl2bH6', N'源码', NULL, 106, NULL, N'yuanma@xiaoy.cn', N'15601701300', 0, NULL, 0, N'0:0:0:0:0:0:0:1', N'2024-08-11 17:48:12', N'', N'2021-01-13 23:50:35', N'1', N'2025-07-09 23:41:58', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (104, N'test', N'$2a$04$BrwaYn303hjA/6TnXqdGoOLhyHOAA0bVrAFu6.1dJKycqKUnIoRz2', N'测试号', NULL, 107, N'[1,2]', N'111@qq.com', N'15601691200', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2026-01-04 18:09:54', N'', N'2021-01-21 02:13:53', NULL, N'2026-01-04 18:09:54', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (107, N'admin107', N'$2a$10$dYOOBKMO93v/.ReCqzyFg.o67Tqk.bbc2bhrpyBGkIw9aypCtr2pm', N'小Y', NULL, NULL, NULL, N'', N'15601691300', 0, NULL, 0, N'', NULL, N'1', N'2022-02-20 22:59:33', N'1', N'2025-04-21 14:23:08', N'0', 118)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (108, N'admin108', N'$2a$10$y6mfvKoNYL1GXWak8nYwVOH.kCWqjactkzdoIDgiKl93WN3Ejg.Lu', N'小Y', NULL, NULL, NULL, N'', N'15601691300', 0, NULL, 0, N'', NULL, N'1', N'2022-02-20 23:00:50', N'1', N'2025-04-21 14:23:08', N'0', 119)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (109, N'admin109', N'$2a$10$JAqvH0tEc0I7dfDVBI7zyuB4E3j.uH6daIjV53.vUS6PknFkDJkuK', N'小Y', NULL, NULL, NULL, N'', N'15601691300', 0, NULL, 0, N'', NULL, N'1', N'2022-02-20 23:11:50', N'1', N'2025-04-21 14:23:08', N'0', 120)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (110, N'admin110', N'$2a$10$mRMIYLDtRHlf6.9ipiqH1.Z.bh/R9dO9d5iHiGYPigi6r5KOoR2Wm', N'小王', NULL, NULL, NULL, N'', N'15601691300', 0, NULL, 0, N'0:0:0:0:0:0:0:1', N'2024-07-20 22:23:17', N'1', N'2022-02-22 00:56:14', NULL, N'2025-04-21 14:23:08', N'0', 121)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (111, N'test', N'$2a$10$mRMIYLDtRHlf6.9ipiqH1.Z.bh/R9dO9d5iHiGYPigi6r5KOoR2Wm', N'测试用户', NULL, NULL, N'[]', N'', N'', 0, NULL, 0, N'0:0:0:0:0:0:0:1', N'2023-12-30 11:42:17', N'110', N'2022-02-23 13:14:33', NULL, N'2025-04-21 14:23:08', N'0', 121)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (112, N'newobject', N'$2a$04$dB0z8Q819fJWz0hbaLe6B.VfHCjYgWx6LFfET5lyz3JwcqlyCkQ4C', N'新对象', NULL, 100, N'[]', N'', N'15601691235', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2024-03-16 23:11:38', N'1', N'2022-02-23 19:08:03', NULL, N'2025-04-21 14:23:08', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (113, N'aoteman', N'$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO', N'小Y1', NULL, NULL, NULL, N'', N'15601691300', 0, NULL, 0, N'127.0.0.1', N'2022-03-19 18:38:51', N'1', N'2022-03-07 21:37:58', N'1', N'2025-05-05 15:30:53', N'0', 122)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (114, N'hrmgr', N'$2a$10$TR4eybBioGRhBmDBWkqWLO6NIh3mzYa8KBKDDB5woiGYFVlRAi.fu', N'hr 小姐姐', NULL, NULL, N'[5]', N'', N'15601691236', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2026-01-04 18:16:01', N'1', N'2022-03-19 21:50:58', NULL, N'2026-01-04 18:16:01', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (115, N'aotemane', N'$2a$04$GcyP0Vyzb2F2Yni5PuIK9ueGxM0tkZGMtDwVRwrNbtMvorzbpNsV2', N'阿呆', N'11222', 102, N'[1,2]', N'7648@qq.com', N'15601691229', 2, NULL, 0, N'', NULL, N'1', N'2022-04-30 02:55:43', N'1', N'2025-04-21 14:23:08', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (117, N'admin123', N'$2a$04$sEtimsHu9YCkYY4/oqElHem2Ijc9ld20eYO6lN.g/21NfLUTDLB9W', N'测试号02', N'1111', 100, N'[2]', N'', N'15601691234', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2024-10-02 10:16:20', N'1', N'2022-07-09 17:40:26', N'1', N'2025-05-14 09:56:04', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (118, N'goudan', N'$2a$04$3suGZjnA6rM5bErf38u1felbgqbsPHGdRG3l9NkxPCEt2ah9Y6aJi', N'狗蛋', NULL, 103, N'[1]', N'', N'15601691239', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2025-11-23 15:28:25', N'1', N'2022-07-09 17:44:43', NULL, N'2025-11-23 15:28:25', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (139, N'wwbwwb', N'$2a$04$FJLIyg8lbPytP29pbZaiU.LesJvCsYfEaHqQfB0pGQhK3e9BeZmLy', N'小秃头', N'123', 108, N'[2,4]', N'', N'', 1, NULL, 0, N'0:0:0:0:0:0:0:1', N'2024-09-10 21:03:58', NULL, N'2024-09-10 21:03:58', N'1', N'2025-12-15 22:38:15', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (141, N'admin1', N'$2a$04$oj6F6d7HrZ70kYVD3TNzEu.m3TPUzajOVuC66zdKna8KRerK1FmVa', N'新用户', NULL, NULL, NULL, N'', N'', 0, N'', 0, N'0:0:0:0:0:0:0:1', N'2025-04-08 13:09:07', N'1', N'2025-04-08 13:09:07', N'1', N'2025-05-14 19:11:48', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (142, N'test01', N'$2a$04$4bCYWZkjxxOC4QE0LY2M9uEEKWeJbLfs489NFtQoyidL5I0FndRaO', N'test01', N'', NULL, N'[]', N'', N'19021719925', 1, N'', 0, N'0:0:0:0:0:0:0:1', N'2025-07-29 19:47:17', N'1', N'2025-07-09 21:07:10', NULL, N'2025-12-02 13:23:11', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (143, N'a00001', N'$2a$04$GhVHFviOw/SsTmiQtifHJesDYFlHMeGK7OWh7aGCCjGGVCmbHVAwa', N'a00001', NULL, 104, NULL, N'', N'', 0, N'', 0, N'0:0:0:0:0:0:0:1', N'2025-12-01 16:10:13', NULL, N'2025-12-01 16:10:13', N'1', N'2025-12-05 21:34:05', N'0', 1)
GO
INSERT INTO system_users (id, username, password, nickname, remark, dept_id, post_ids, email, mobile, sex, avatar, status, login_ip, login_date, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (144, N'aoteman001', N'$2a$04$omQOmhz8OyUFBKw77nr8KOtMp6xdvoQ1gWStjk9r8.OYT3Bv6oEYe', N'aoteman001', NULL, 116, NULL, N'', N'', 0, N'', 1, N'0:0:0:0:0:0:0:1', N'2025-12-01 17:05:27', N'1', N'2025-12-01 17:05:27', N'1', N'2025-12-15 15:55:54', N'0', 1)
GO
SET IDENTITY_INSERT system_users OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for xiaoy_demo01_contact
-- ----------------------------
DROP TABLE IF EXISTS xiaoy_demo01_contact
GO
CREATE TABLE xiaoy_demo01_contact (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(100) DEFAULT '' NOT NULL,
    sex tinyint  NOT NULL,
    birthday datetime2  NOT NULL,
    description nvarchar(255)  NOT NULL,
    avatar nvarchar(512) DEFAULT NULL NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'名字',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'性别',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'出生年',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'简介',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'头像',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'示例联系人表',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo01_contact'
GO

-- ----------------------------
-- Records of xiaoy_demo01_contact
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT xiaoy_demo01_contact ON
GO
INSERT INTO xiaoy_demo01_contact (id, name, sex, birthday, description, avatar, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, N'土豆', 2, N'2023-11-07 00:00:00', N'<p>天蚕土豆！呀</p>', N'http://127.0.0.1:48080/admin-api/infra/file/4/get/46f8fa1a37db3f3960d8910ff2fe3962ab3b2db87cf2f8ccb4dc8145b8bdf237.jpeg', N'1', N'2023-11-15 23:34:30', N'1', N'2023-11-15 23:47:39', N'0', 1)
GO
SET IDENTITY_INSERT xiaoy_demo01_contact OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for xiaoy_demo02_category
-- ----------------------------
DROP TABLE IF EXISTS xiaoy_demo02_category
GO
CREATE TABLE xiaoy_demo02_category (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(100) DEFAULT '' NOT NULL,
    parent_id bigint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'名字',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'父级编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'示例分类表',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo02_category'
GO

-- ----------------------------
-- Records of xiaoy_demo02_category
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT xiaoy_demo02_category ON
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, N'土豆', 0, N'1', N'2023-11-15 23:34:30', N'1', N'2023-11-16 20:24:23', N'0', 1)
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, N'番茄', 0, N'1', N'2023-11-16 20:24:00', N'1', N'2023-11-16 20:24:15', N'0', 1)
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3, N'怪怪', 0, N'1', N'2023-11-16 20:24:32', N'1', N'2023-11-16 20:24:32', N'0', 1)
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (4, N'小番茄', 2, N'1', N'2023-11-16 20:24:39', N'1', N'2023-11-16 20:24:39', N'0', 1)
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5, N'大番茄', 2, N'1', N'2023-11-16 20:24:46', N'1', N'2023-11-16 20:24:46', N'0', 1)
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (6, N'11', 3, N'1', N'2023-11-24 19:29:34', N'1', N'2023-11-24 19:29:34', N'0', 1)
GO
INSERT INTO xiaoy_demo02_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (7, N'1', 0, N'1', N'2025-10-01 09:19:20', N'1', N'2025-10-01 09:19:20', N'0', 1)
GO
SET IDENTITY_INSERT xiaoy_demo02_category OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for xiaoy_demo03_course
-- ----------------------------
DROP TABLE IF EXISTS xiaoy_demo03_course
GO
CREATE TABLE xiaoy_demo03_course (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    student_id bigint  NOT NULL,
    name nvarchar(100) DEFAULT '' NOT NULL,
    score tinyint  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'学生编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'student_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'名字',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'分数',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'score'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'学生课程表',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_course'
GO

-- ----------------------------
-- Records of xiaoy_demo03_course
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT xiaoy_demo03_course ON
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, 2, N'语文', 66, N'1', N'2023-11-16 23:21:49', N'1', N'2024-09-17 10:55:30', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (3, 2, N'数学', 22, N'1', N'2023-11-16 23:21:49', N'1', N'2024-09-17 10:55:30', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (6, 5, N'体育', 23, N'1', N'2023-11-16 23:22:46', N'1', N'2023-11-16 15:44:40', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (7, 5, N'计算机', 11, N'1', N'2023-11-16 23:22:46', N'1', N'2023-11-16 15:44:40', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (8, 5, N'体育', 23, N'1', N'2023-11-16 23:22:46', N'1', N'2023-11-16 15:47:09', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (9, 5, N'计算机', 11, N'1', N'2023-11-16 23:22:46', N'1', N'2023-11-16 15:47:09', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (10, 5, N'体育', 23, N'1', N'2023-11-16 23:22:46', N'1', N'2024-09-17 10:55:28', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (11, 5, N'计算机', 11, N'1', N'2023-11-16 23:22:46', N'1', N'2024-09-17 10:55:28', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (12, 2, N'电脑', 33, N'1', N'2023-11-17 00:20:42', N'1', N'2023-11-16 16:20:45', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (13, 9, N'滑雪', 12, N'1', N'2023-11-17 13:13:20', N'1', N'2024-09-17 10:55:26', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (14, 9, N'滑雪', 12, N'1', N'2023-11-17 13:13:20', N'1', N'2024-09-17 10:55:49', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (15, 5, N'体育', 23, N'1', N'2023-11-16 23:22:46', N'1', N'2024-09-17 18:55:29', N'0', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (16, 5, N'计算机', 11, N'1', N'2023-11-16 23:22:46', N'1', N'2024-09-17 18:55:29', N'0', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (17, 2, N'语文', 66, N'1', N'2023-11-16 23:21:49', N'1', N'2024-09-17 18:55:31', N'0', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (18, 2, N'数学', 22, N'1', N'2023-11-16 23:21:49', N'1', N'2024-09-17 18:55:31', N'0', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (19, 9, N'滑雪', 12, N'1', N'2023-11-17 13:13:20', N'1', N'2025-04-19 02:49:03', N'1', 1)
GO
INSERT INTO xiaoy_demo03_course (id, student_id, name, score, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (20, 9, N'滑雪', 12, N'1', N'2023-11-17 13:13:20', N'1', N'2025-04-19 10:49:04', N'0', 1)
GO
SET IDENTITY_INSERT xiaoy_demo03_course OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for xiaoy_demo03_grade
-- ----------------------------
DROP TABLE IF EXISTS xiaoy_demo03_grade
GO
CREATE TABLE xiaoy_demo03_grade (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    student_id bigint  NOT NULL,
    name nvarchar(100) DEFAULT '' NOT NULL,
    teacher nvarchar(255)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'学生编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'student_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'名字',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'班主任',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'teacher'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'学生班级表',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_grade'
GO

-- ----------------------------
-- Records of xiaoy_demo03_grade
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT xiaoy_demo03_grade ON
GO
INSERT INTO xiaoy_demo03_grade (id, student_id, name, teacher, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (7, 2, N'三年 2 班', N'周杰伦', N'1', N'2023-11-16 23:21:49', N'1', N'2024-09-17 18:55:31', N'0', 1)
GO
INSERT INTO xiaoy_demo03_grade (id, student_id, name, teacher, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (8, 5, N'华为', N'遥遥领先', N'1', N'2023-11-16 23:22:46', N'1', N'2024-09-17 18:55:29', N'0', 1)
GO
INSERT INTO xiaoy_demo03_grade (id, student_id, name, teacher, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (9, 9, N'小图', N'小娃111', N'1', N'2023-11-17 13:10:23', N'1', N'2025-04-19 10:49:04', N'0', 1)
GO
SET IDENTITY_INSERT xiaoy_demo03_grade OFF
GO
COMMIT
GO
-- @formatter:on

-- ----------------------------
-- Table structure for xiaoy_demo03_student
-- ----------------------------
DROP TABLE IF EXISTS xiaoy_demo03_student
GO
CREATE TABLE xiaoy_demo03_student (
    id bigint NOT NULL PRIMARY KEY IDENTITY,
    name nvarchar(100) DEFAULT '' NOT NULL,
    sex tinyint  NOT NULL,
    birthday datetime2  NOT NULL,
    description nvarchar(255)  NOT NULL,
    creator nvarchar(64) DEFAULT '' NULL,
    create_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updater nvarchar(64) DEFAULT '' NULL,
    update_time datetime2 DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    tenant_id bigint DEFAULT 0 NOT NULL
)
GO

EXEC sp_addextendedproperty
    'MS_Description', N'编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'名字',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'性别',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'出生日期',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'简介',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'creator'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'创建时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新者',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'updater'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'更新时间',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'是否删除',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'deleted'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'租户编号',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student',
    'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
    'MS_Description', N'学生表',
    'SCHEMA', N'dbo',
    'TABLE', N'xiaoy_demo03_student'
GO

-- ----------------------------
-- Records of xiaoy_demo03_student
-- ----------------------------
-- @formatter:off
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT xiaoy_demo03_student ON
GO
INSERT INTO xiaoy_demo03_student (id, name, sex, birthday, description, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, N'小白', 1, N'2023-11-16 00:00:00', N'<p>厉害</p>', N'1', N'2023-11-16 23:21:49', N'1', N'2024-09-17 18:55:31', N'0', 1)
GO
INSERT INTO xiaoy_demo03_student (id, name, sex, birthday, description, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (5, N'大黑', 2, N'2023-11-13 00:00:00', N'<p>你在教我做事?</p>', N'1', N'2023-11-16 23:22:46', N'1', N'2024-09-17 18:55:29', N'0', 1)
GO
INSERT INTO xiaoy_demo03_student (id, name, sex, birthday, description, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (9, N'小花', 1, N'2023-11-07 00:00:00', N'<p>哈哈哈</p>', N'1', N'2023-11-17 00:04:47', N'1', N'2025-04-19 10:49:04', N'0', 1)
GO
SET IDENTITY_INSERT xiaoy_demo03_student OFF
GO
COMMIT
GO
-- @formatter:on
