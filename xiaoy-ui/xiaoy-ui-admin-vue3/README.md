# 小Y系统 · 管理后台 (Vue3)

基于 Vue 3.5 + TypeScript + Element Plus + Vite 的管理后台前端。

## 环境要求

- Node.js >= 20.19.0
- pnpm >= 8.6.0

## 开发

```bash
pnpm install
pnpm dev          # 本地开发，读取 .env.local
pnpm dev-server   # 连远程 dev 环境，读取 .env.dev
```

默认后端接口地址在 `.env.local` 的 `VITE_BASE_URL` 里配置，需要与 `xiaoy-server` 实际监听的地址一致。

## 构建

```bash
pnpm build:local   # 本地
pnpm build:dev     # dev
pnpm build:test    # 测试
pnpm build:stage   # 预发
pnpm build:prod    # 生产
pnpm preview       # 本地预览构建产物
```

## 代码检查

```bash
pnpm ts:check      # 类型检查
pnpm lint          # eslint + prettier + stylelint 全套
pnpm lint:eslint:check
pnpm lint:format:check
pnpm lint:style:check
```

## 目录结构

```
src/
├── api/          后端接口封装，按模块划分
├── components/   通用组合式组件
├── views/        页面，目录结构与后端模块对应
├── router/       路由与菜单
├── store/        Pinia 状态
├── hooks/        组合式函数
├── utils/        工具方法
├── styles/       全局样式
└── types/        全局类型声明
```

## 环境变量

`.env` 为公共配置，`.env.local` / `.env.dev` / `.env.test` / `.env.stage` / `.env.prod` 按环境覆盖。常用项：

| 变量 | 说明 |
|---|---|
| `VITE_APP_TITLE` | 站点标题 |
| `VITE_BASE_URL` | 后端接口根地址 |
| `VITE_API_URL` | 接口前缀 |
| `VITE_BASE_PATH` | 静态资源部署路径 |
| `VITE_PORT` | 本地开发端口 |

## 开源协议

[MIT License](./LICENSE)。协议文件中保留了上游项目与第三方模板的原始版权声明，按 MIT 要求不得删除。
