# 小Y系统

企业级快速开发平台 —— 后端 Spring Boot 多模块，前端 Vue3 + Element Plus。

## 技术栈

| 层 | 选型 |
|---|---|
| 后端 | Spring Boot 2.7.18 / JDK 8 |
| ORM | MyBatis Plus + 动态数据源 |
| 缓存 | Redis (Redisson) |
| 工作流 | Flowable |
| 前端 | Vue 3.5 + TypeScript + Element Plus + Vite |
| 构建 | Maven 3.6+ / pnpm 8+ (Node >= 20.19) |

版本号 `2026.06-jdk8-SNAPSHOT`。

## 模块

后端按业务域拆分，默认只启用 `system` + `infra`，其余在根 `pom.xml` 的 `<modules>` 里按需放开：

| 模块 | 说明 | 默认 |
|---|---|---|
| `xiaoy-dependencies` | 依赖版本统一管理 (BOM) | 启用 |
| `xiaoy-framework` | 框架层 starter 集合 | 启用 |
| `xiaoy-server` | 启动入口，聚合各业务模块 | 启用 |
| `xiaoy-module-system` | 用户、角色、权限、字典、租户 | 启用 |
| `xiaoy-module-infra` | 代码生成、文件、配置、任务、监控 | 启用 |
| `xiaoy-module-member` | 会员中心 | 关闭 |
| `xiaoy-module-bpm` | 工作流 | 关闭 |
| `xiaoy-module-report` | 报表 | 关闭 |
| `xiaoy-module-mp` | 微信公众号 | 关闭 |
| `xiaoy-module-pay` | 支付 | 关闭 |
| `xiaoy-module-mall` | 商城（商品/交易/促销） | 关闭 |
| `xiaoy-module-crm` | 客户关系管理 | 关闭 |
| `xiaoy-module-erp` | 进销存 | 关闭 |
| `xiaoy-module-wms` | 仓储管理 | 关闭 |
| `xiaoy-module-mes` | 生产制造 | 关闭 |
| `xiaoy-module-iot` | 物联网 | 关闭 |
| `xiaoy-module-im` | 即时通讯 | 关闭 |
| `xiaoy-module-ai` | AI 大模型 | 关闭，见下方注意事项 |

前端在 `xiaoy-ui/` 下：

- `xiaoy-ui-admin-vue3` —— 主力管理后台（Vue3 + Element Plus）
- `xiaoy-ui-admin-vben` —— 管理后台（Ant Design Vue）
- `xiaoy-ui-admin-vue2` —— 管理后台（Vue2 + Element UI）
- `xiaoy-ui-admin-uniapp` / `xiaoy-ui-mall-uniapp` —— 移动端

## 快速开始

### 1. 建库

数据库名默认为 `xiaoy`。`sql/` 下按数据库类型提供了初始化脚本：

```bash
mysql -uroot -p -e "CREATE DATABASE xiaoy DEFAULT CHARACTER SET utf8mb4;"
mysql -uroot -p xiaoy < sql/mysql/xiaoy.sql
mysql -uroot -p xiaoy < sql/mysql/quartz.sql
```

其他数据库见 `sql/postgresql`、`sql/oracle`、`sql/dm`、`sql/kingbase`、`sql/highgo`、`sql/opengauss`、`sql/sqlserver`。

### 2. 起 Redis

```bash
redis-server
```

连接信息在 `xiaoy-server/src/main/resources/application-local.yaml`，按需改数据库账号密码。

### 3. 起后端

```bash
mvn clean install -DskipTests
mvn -pl xiaoy-server spring-boot:run
```

或直接在 IDE 里运行 `XiaoyServerApplication`。

### 4. 起前端

```bash
cd xiaoy-ui/xiaoy-ui-admin-vue3
pnpm install
pnpm dev
```

也可以用 docker compose 一把起：`script/docker/docker-compose.yml`。

## 注意事项

- **`xiaoy-module-ai` 在 JDK 8 下编译不过**。它用了 `record` 和文本块，需要 JDK 17+。要用 AI 模块得切到 JDK 17/21 并调整 `pom.xml` 里的 `java.version`。
- `sql/` 里的初始化数据包含**示例性质的第三方密钥**（对象存储、短信、支付渠道等），上线前务必全部替换成自己的。
- `application-dev.yaml` / `application-local.yaml` 里的账号密码都是本地开发用的弱口令，生产环境必须改。

## 开源协议

本项目基于 [MIT License](./LICENSE) 开源，衍生自 ruoyi-vue-pro。按 MIT 要求，`LICENSE` 中保留了原始版权声明。前端 `xiaoy-ui-admin-vue3/LICENSE` 中的第三方版权声明同样保留。
