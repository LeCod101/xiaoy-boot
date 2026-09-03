# 小Y系统 · 毕设 / 课设基座

这是给毕业设计和课程设计用的开发基座。登录、权限、菜单、字典、多租户和**代码生成器**都已经准备好，你要做的是往上加自己的业务模块。这一点在答辩时很关键：讲得清哪部分是基座、哪部分是你写的。

> 分支说明：`main` 是公共基底，`edu` 是这个教学分支，`biz` 是商用分支。做毕设从 `edu` 开始。

## 基座给了你什么

| 能力 | 模块 | 论文里可以怎么写 |
|---|---|---|
| 登录、JWT、图形验证码、社交登录 | system | 身份认证与会话管理 |
| 用户 / 部门 / 岗位 / 角色 / 菜单 | system | 基于 RBAC 的权限模型 |
| 字典、地区、参数配置 | system | 系统配置与数据字典 |
| 多租户 + 行级数据权限 | system | 数据隔离与越权防护 |
| **代码生成器** | infra | 不用写进论文，但是你的主力工具 |
| 文件上传、定时任务、API 日志、监控 | infra | 非功能性设计 |

前端在 `xiaoy-ui/xiaoy-ui-admin-vue3`（Vue 3 + TypeScript + Element Plus + Vite）。菜单只保留了这两个模块的 199 条，登录后每个菜单都点得开。

## 环境

| | 版本 | 说明 |
|---|---|---|
| JDK | 8 | 用 17 / 21 也能编译，pom 里 source/target 是 1.8 |
| MySQL | 5.7+ / 8.x | 库名默认 `xiaoy` |
| Redis | 5+ | 不装起不来，验证码和 token 都在里面 |
| Maven | 3.6+ | |
| Node | ≥ 20.19 | |
| pnpm | ≥ 8.6 | |

## 四步跑起来

### 1. 建库

```bash
mysql -uroot -p -e "CREATE DATABASE xiaoy DEFAULT CHARACTER SET utf8mb4;"
mysql -uroot -p xiaoy < sql/mysql/xiaoy.sql
mysql -uroot -p xiaoy < sql/mysql/quartz.sql
```

用别的数据库看 `sql/` 下对应目录：postgresql、oracle、dm、kingbase、highgo、opengauss、sqlserver。

### 2. 起 Redis

```bash
redis-server
```

数据库和 Redis 的账号密码在 `xiaoy-server/src/main/resources/application-local.yaml`，按自己的改。

### 3. 起后端

```bash
mvn clean install -DskipTests
mvn -pl xiaoy-server spring-boot:run
```

或者在 IDE 里直接跑 `XiaoyServerApplication`。端口 48080，接口文档在 <http://localhost:48080/doc.html>。

### 4. 起前端

```bash
cd xiaoy-ui/xiaoy-ui-admin-vue3
pnpm install
pnpm dev
```

用 `admin` / `admin123` 登录。

## 毕设主线：加你自己的业务模块

不要去改现成模块，用代码生成器加你自己的。以「图书管理」为例：

1. **建表**。表名用自己的前缀，比如 `book_info`。必须带上 `id`、`creator`、`create_time`、`updater`、`update_time`、`deleted`、`tenant_id`——基座的逻辑删除和多租户依赖这几个字段，照着 `infra_config` 抄一份最快。
2. **导入**。登录后进「基础设施 → 代码生成」，导入刚建的表，配好每个字段的显示类型、查询方式、是否必填。
3. **生成**。下载生成的压缩包：后端代码放进 `xiaoy-module-infra`，或者自己新建一个 `xiaoy-module-book`（记得在根 `pom.xml` 和 `xiaoy-server/pom.xml` 两处都加上）；前端代码放进 `xiaoy-ui-admin-vue3/src/views/`。
4. **建菜单**。进「系统管理 → 菜单管理」加目录和按钮权限，权限串要和生成代码里的 `@PreAuthorize` 对得上，否则前端看不到入口或者点了 403。
5. **写业务**。生成的只是 CRUD，毕设的价值在 CRUD 之上：借还流转、超期计算、统计图表、推荐算法。这部分才是答辩要讲的东西。

「基础设施 → 代码生成案例」里有现成例子可以对照。

## 论文和代码怎么对应

| 论文章节 | 对应的代码 |
|---|---|
| 需求分析 | 你的菜单树 + 权限串清单 |
| 数据库设计 | 你建的表，加上 `sql/mysql/xiaoy.sql` 里的基座表 |
| 系统架构 | Spring Boot 多模块 + Vue3 前后端分离，画到模块级 |
| 详细设计 | Controller / Service / Mapper 三层，挑一条链路讲完整 |
| 关键技术 | JWT 认证、RBAC 鉴权、多租户数据隔离、Redis 缓存 |
| 系统测试 | 你写的单元测试 + 基于 `doc.html` 的接口测试 |

## 答辩前想清楚

- 基座提供的和你自己写的，边界在哪。老师问「这个登录是你写的吗」，要答得上来。
- 本项目衍生自开源项目 ruoyi-vue-pro（MIT），`LICENSE` 里保留了原始版权声明。**在论文的致谢或参考文献里写明**，比被问出来好。
- 弱口令和示例配置都还在（`admin123`、各处 `YOUR_*` 占位符），本地演示没问题，别往公网部署。

## 关于其他 13 个模块

`bpm`（工作流）、`mall`（商城）、`crm`、`erp`、`wms`、`mes`、`iot`、`im`、`pay`、`member`、`mp`、`report`、`ai` 的**源码在仓库里，但没有生产可用的建表脚本**——`sql/` 下只有 `system_` 和 `infra_` 的表。

所以不要去放开 `pom.xml` 里那些注释：能编译、能启动，但每个页面都是查不到表的 500。这些源码当参考读没问题；真要用某个模块，得先从上游 ruoyi-vue-pro 完整版取它的建表语句。

`xiaoy-module-ai` 另外还需要 JDK 17+（用了 `record` 和文本块），JDK 8 下编译不过。

## 开源协议

[MIT License](./LICENSE)，衍生自 ruoyi-vue-pro。按 MIT 要求保留了原始版权声明。
