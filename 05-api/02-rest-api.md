# REST API 说明

> **DemoAlert（S02）**。权威契约：`01-openapi-spec.yaml`。

## 约定
- Base path：`/api/v1`
- 鉴权：`Authorization: Bearer <token>`
- 统一响应：`{ "code": 0, "message": "ok", "data": {} }`
- 业务错误：`code != 0`；HTTP 401/403 用于鉴权

## 资源清单

| 方法 | 路径 | 说明 | 权限点 | 状态 |
|------|------|------|--------|------|
| POST | `/auth/login` | 登录 | 公开 | 已示例 |
| GET | `/alerts` | 告警分页列表 | `biz:alert:read` | 已示例 |
| GET | `/alerts/{id}` | 详情 | `biz:alert:read` | 已示例 |
| POST | `/alerts` | 手工创建 | `biz:alert:write` | 已示例 |
| POST | `/alerts/{id}/ack` | 认领 | `biz:alert:write` | 已示例 |
| POST | `/alerts/{id}/close` | 关闭 | `biz:alert:write` | 已示例 |
| GET | `/alerts/export` | 导出 CSV | `rpt:export` | 草稿 |

## 接口详述

### POST `/auth/login`
- Body：`{ username, password }`
- 成功：`data.token`、`data.user`
- 失败：账号停用 / 凭证错误 → 401

### GET `/alerts`
- Query：`page,size,status,keyword`
- 非 admin：服务端强制 `org_id = 当前用户组织`
- 响应：`{ items, total }`

### POST `/alerts/{id}/ack`
- 前置：`status=open`
- 成功：`status=acked`，`owner_id=当前用户`，写 `alert_event`
- 失败：已被认领 → 409

### POST `/alerts/{id}/close`
- Body：`{ closeReason, remark? }`
- 前置：`status=acked`（admin 强制关闭 open 为扩展）
- 原因枚举：`false_positive|fixed|handed_over|other`
- 失败：缺原因 → 400；viewer → 403

## 验收
- [x] 与 OpenAPI 路径对齐
- [x] P0 故事 US-001～005 有对应接口
