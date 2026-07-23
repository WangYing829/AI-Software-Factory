# REST API 说明

> 权威契约优先 `01-openapi-spec.yaml`；本文做人读补充与示例。

## 约定
- Base path：`/api/v1`
- 鉴权：`Authorization: Bearer <token>`（示例）
- 统一响应：`{ code, message, data }`
- 错误码：与全局异常约定对齐

## 资源清单

| 方法 | 路径 | 说明 | 权限点 | 状态 |
|------|------|------|--------|------|
| POST | `/auth/login` | 登录 | 公开 | 草稿 |
| GET | `/biz/entities` | 列表 | `biz:entity:read` | 草稿 |
| GET | `/biz/entities/{id}` | 详情 | `biz:entity:read` | 草稿 |
| POST | `/biz/entities` | 创建 | `biz:entity:write` | 草稿 |
| PUT | `/biz/entities/{id}` | 更新 | `biz:entity:write` | 草稿 |

## 接口详述骨架

### GET `/biz/entities`
- **描述**: 分页查询
- **Query**: `page,size,keyword,status`
- **响应**: 列表 + total
- **错误**: 401 / 403

## 验收
- [ ] 与 OpenAPI 路径一致
- [ ] P0 用户故事均有对应接口
