# 模块设计

> **DemoAlert（S02）**

## 模块清单

| 模块 | 职责 | 对内依赖 | 对外接口 | Owner |
|------|------|----------|----------|-------|
| `auth` | 登录、Token、用户/角色查询 | — | `/api/v1/auth/*` | |
| `alert` | 告警 CRUD、认领、关闭、导出 | auth | `/api/v1/alerts/*` | |
| `admin` | 用户启用停用、角色分配 | auth | `/api/v1/admin/*` | |
| `common` | Result、异常、审计字段约定 | — | — | |

## 包 / 目录建议（后端）

```
.../auth/
.../alert/
.../admin/
.../common/
```

## 模块交互

```
auth ← alert / admin
alert → MySQL（alert / alert_event）
auth  → MySQL（sys_*）
```

## 验收
- [x] PRD P0 模块有归属（auth + alert）
- [x] 无循环依赖
