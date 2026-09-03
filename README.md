# 小Y系统 · 商用交付基座

企业级快速开发平台。后端 Spring Boot 多模块，前端 Vue3 + Element Plus。这个分支面向商单交付：菜单和模块全量保留，配置和文档面向生产。

> 分支说明：`main` 是公共基底，`biz` 是这个商用分支，`edu` 是学生分支。接单从 `biz` 开始。

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

默认只启用 `system` + `infra`。其余模块**源码在仓库里，但没有生产建表脚本**——`sql/` 下只有 `system_` 和 `infra_` 的表，放开注释后能启动但页面全是 500。要用哪个模块，先看 [docs/启用业务模块.md](docs/启用业务模块.md)。

| 模块 | 说明 | 默认 |
|---|---|---|
| `xiaoy-dependencies` | 依赖版本统一管理 (BOM) | 启用 |
| `xiaoy-framework` | 框架层 starter 集合 | 启用 |
| `xiaoy-server` | 启动入口 | 启用 |
| `xiaoy-module-system` | 用户、角色、权限、字典、租户 | 启用 |
| `xiaoy-module-infra` | 代码生成、文件、配置、任务、监控 | 启用 |
| `xiaoy-module-member` | 会员中心 | 关闭 |
| `xiaoy-module-bpm` | 工作流 | 关闭 |
| `xiaoy-module-report` | 报表（积木报表） | 关闭 |
| `xiaoy-module-mp` | 微信公众号 | 关闭 |
| `xiaoy-module-pay` | 支付 | 关闭 |
| `xiaoy-module-mall` | 商城（商品/交易/促销/统计） | 关闭 |
| `xiaoy-module-crm` | 客户关系管理（依赖 bpm） | 关闭 |
| `xiaoy-module-erp` | 进销存 | 关闭 |
| `xiaoy-module-wms` | 仓储管理 | 关闭 |
| `xiaoy-module-mes` | 生产制造 | 关闭 |
| `xiaoy-module-iot` | 物联网 | 关闭 |
| `xiaoy-module-im` | 即时通讯 | 关闭 |
| `xiaoy-module-ai` | AI 大模型 | 关闭，需 JDK 17+ |

前端在 `xiaoy-ui/` 下，客户可以选不同的展现形式：

- `xiaoy-ui-admin-vue3` —— 主力管理后台（Vue3 + Element Plus），目前唯一有完整代码的
- `xiaoy-ui-admin-vben` / `xiaoy-ui-admin-vue2` / `xiaoy-ui-admin-uniapp` / `xiaoy-ui-mall-uniapp` —— 占位目录，接单需要时再落地

## 本地起项目

### 1. 建库

```bash
mysql -uroot -p -e "CREATE DATABASE xiaoy DEFAULT CHARACTER SET utf8mb4;"
mysql -uroot -p xiaoy < sql/mysql/xiaoy.sql
mysql -uroot -p xiaoy < sql/mysql/quartz.sql
```

其他方言见 `sql/` 下的 postgresql、oracle、dm、kingbase、highgo、opengauss、sqlserver。

### 2. 起 Redis

```bash
redis-server
```

连接信息在 `xiaoy-server/src/main/resources/application-local.yaml`。

### 3. 起后端

```bash
mvn clean install -DskipTests
mvn -pl xiaoy-server spring-boot:run
```

或在 IDE 里跑 `XiaoyServerApplication`。端口 48080，接口文档 <http://localhost:48080/doc.html>。

### 4. 起前端

```bash
cd xiaoy-ui/xiaoy-ui-admin-vue3
pnpm install
pnpm dev
```

`admin` / `admin123` 登录。也可以用 `script/docker/docker-compose.yml` 一把起。

## 接单怎么用这个分支

这个仓库是**公开的**，只承担基座的作用。客户代码不要推到这里来。

```bash
# 新客户项目：以 biz 为起点，推到客户自己的私有仓库
git clone https://github.com/LeCod101/xiaoy-boot.git acme-erp
cd acme-erp
git remote rename origin upstream          # 基座留作 upstream
git remote add origin <客户私有仓库地址>
git switch biz
git push -u origin biz
```

之后基座有更新（框架修复、安全清理），从 upstream 拉：

```bash
git fetch upstream
git merge upstream/biz
```

## 生产配置

`xiaoy-server/src/main/resources/application-prod.yaml` 是生产模板：所有密钥读环境变量、不给默认值，缺变量直接启动失败；Druid 控制台、Actuator 全端点、Swagger 都已关闭；BCrypt 强度从框架默认的 4 提到 10。

```bash
SPRING_PROFILES_ACTIVE=prod \
DB_URL='jdbc:mysql://db:3306/xiaoy?useSSL=true&serverTimezone=Asia/Shanghai&nullCatalogMeansCurrent=true' \
DB_USERNAME=xiaoy DB_PASSWORD=... \
REDIS_HOST=redis REDIS_PASSWORD=... \
ADMIN_UI_URL=https://admin.example.com \
java -jar xiaoy-server/target/xiaoy-server.jar
```

上线前对着 [docs/上线检查清单.md](docs/上线检查清单.md) 逐项过一遍。里面有几条是不改就出事的：种子账号密码都是 `admin123`、`mock-enable` 会放过伪造 token、`/druid` 控制台默认无密码开放、接口加密的 AES 密钥是提交进仓库的明文。

## 文档

- [启用业务模块](docs/启用业务模块.md) —— 放开一个模块要做的四件事，以及建表脚本从哪来
- [上线检查清单](docs/上线检查清单.md) —— 交付前逐项确认

## 注意事项

- `sql/` 里的初始化数据包含大量 `YOUR_*` 占位符（对象存储、短信、支付渠道、社交登录、邮件），上线前逐个替换或删掉对应行。
- `application-dev.yaml` / `application-local.yaml` 是本地开发用的，弱口令、开放的 Druid 控制台、debug 级 SQL 日志都在里面，不要用于生产。
- 源码注释和 seed 数据里还残留一批指向 `*.xiaoy.cn` 和 `localhost/xiaoy` 的失效文档链接（改品牌时留下的），不影响运行。

## 开源协议

本项目基于 [MIT License](./LICENSE) 开源，衍生自 ruoyi-vue-pro。按 MIT 要求，`LICENSE` 中保留了原始版权声明。
