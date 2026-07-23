# 05 - API（接口设计）

## 当前阶段目标
定义系统对外的接口契约。

## 文件说明

| 文件 | 内容 |
|------|------|
| `01-openapi-spec.yaml` | OpenAPI 3.0 规范 |
| `02-rest-api.md` | REST API 详细文档 |
| `03-websocket-api.md` | WebSocket 接口文档 |
| `04-import-export-api.md` | 导入导出接口 |
| `05-api-versioning.md` | API 版本管理策略 |

## AI 协作方式

```
输入：04-database/ + 02-product/ + 03-architecture/
Prompt：06-prompts/ 对应技术栈 Prompt
输出：05-api/ 的接口定义
```

1. 基于数据库表设计推导 API 资源
2. 基于用户故事推导 API 操作
3. AI 生成 OpenAPI YAML，导入 Swagger/Postman
