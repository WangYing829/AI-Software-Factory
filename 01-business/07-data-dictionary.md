# 业务数据字典（核心实体）

> **DemoAlert（S02）**。物理表见 `04-database/`。

## 1. 实体总览

| 实体编码 | 中文名 | 说明 | 来源模块 |
|----------|--------|------|----------|
| `User` | 用户 | 登录账号 | auth |
| `Role` | 角色 | RBAC | auth |
| `Org` | 组织 | 数据范围 | auth |
| `Alert` | 告警 | 值班主对象（原 BizEntity） | alert |
| `AlertEvent` | 告警事件 | 认领/关闭等流水（原 BizEvent） | alert |

## 2. 实体字段

### User
| 字段 | 类型（业务） | 必填 | 说明 |
|------|--------------|------|------|
| id | ID | Y | 主键 |
| username | 文本 | Y | 登录名，唯一 |
| display_name | 文本 | Y | 显示名 |
| org_id | ID | Y | 所属组织 |
| status | 枚举 | Y | active / disabled |
| created_at | 时间 | Y | |

### Alert
| 字段 | 类型（业务） | 必填 | 说明 |
|------|--------------|------|------|
| id | ID | Y | 主键 |
| code | 文本 | Y | 告警编号，唯一 |
| title | 文本 | Y | 标题 |
| severity | 枚举 | Y | P0 / P1 / P2 |
| status | 枚举 | Y | open / acked / closed |
| owner_id | ID | N | 当前处理人（认领后有值） |
| org_id | ID | Y | 所属组织 |
| source | 文本 | N | 来源（push/manual） |
| close_reason | 枚举 | N | 关闭原因 |
| remark | 文本 | N | 备注 |
| created_at / updated_at | 时间 | Y | |

### AlertEvent
| 字段 | 类型（业务） | 必填 | 说明 |
|------|--------------|------|------|
| id | ID | Y | 主键 |
| alert_id | ID | Y | 关联告警 |
| event_type | 枚举 | Y | created / acked / closed / updated |
| payload | JSON/文本 | N | 扩展（如关闭原因快照） |
| occurred_at | 时间 | Y | |
| operator_id | ID | N | 操作人 |

## 3. 关系

| 从 | 到 | 基数 | 说明 |
|----|----|------|------|
| Org | User | 1:N | |
| User | Role | N:N | |
| Org | Alert | 1:N | 组织隔离 |
| Alert | AlertEvent | 1:N | 时间线 |
| User | Alert | 1:N | owner |

## 4. 枚举

| 枚举名 | 取值 |
|--------|------|
| UserStatus | active, disabled |
| AlertStatus | open, acked, closed |
| AlertSeverity | P0, P1, P2 |
| CloseReason | false_positive, fixed, handed_over, other |
| AlertEventType | created, acked, closed, updated |

## 5. 验收检查

- [x] P0 读写对象已覆盖
- [x] 权限资源 `biz:alert:*` 可映射
- [x] 可进入 `04-database/` 落表
