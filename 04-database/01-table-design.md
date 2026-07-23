# 表结构设计

> **DemoAlert（S02）**。语义见 `01-business/07-data-dictionary.md`。

## 表清单

| 表名 | 说明 | 模块 |
|------|------|------|
| `sys_org` | 组织 | auth |
| `sys_user` | 用户 | auth |
| `sys_role` | 角色 | auth |
| `sys_user_role` | 用户-角色 | auth |
| `alert` | 告警 | alert |
| `alert_event` | 告警事件 | alert |

## 表定义

### sys_org
| 列 | 类型 | 空 | 说明 |
|----|------|----|------|
| id | BIGINT AI | N | PK |
| name | VARCHAR(128) | N | |
| created_at / updated_at | DATETIME | N | |
| is_deleted | TINYINT | N | 默认 0 |

### sys_user
| 列 | 类型 | 空 | 默认 | 说明 |
|----|------|----|------|------|
| id | BIGINT AI | N | | PK |
| username | VARCHAR(64) | N | | UK |
| password_hash | VARCHAR(255) | N | | |
| display_name | VARCHAR(64) | N | | |
| org_id | BIGINT | N | | FK → sys_org |
| status | TINYINT | N | 1 | 1 active / 0 disabled |
| created_at / updated_at | DATETIME | N | | |
| is_deleted | TINYINT | N | 0 | |

索引：`uk_username`；`idx_user_org(org_id)`

### sys_role / sys_user_role
| 表 | 关键列 |
|----|----------|
| sys_role | id, code(UK), name, 审计字段 |
| sys_user_role | user_id, role_id（联合 UK） |

角色种子：`admin` / `operator` / `viewer`

### alert
| 列 | 类型 | 空 | 说明 |
|----|------|----|------|
| id | BIGINT AI | N | PK |
| code | VARCHAR(64) | N | UK |
| title | VARCHAR(256) | N | |
| severity | VARCHAR(8) | N | P0/P1/P2 |
| status | VARCHAR(16) | N | open/acked/closed |
| owner_id | BIGINT | Y | 处理人 |
| org_id | BIGINT | N | |
| source | VARCHAR(32) | Y | push/manual |
| close_reason | VARCHAR(32) | Y | |
| remark | VARCHAR(512) | Y | |
| created_at / updated_at | DATETIME | N | |
| is_deleted | TINYINT | N | 0 |

索引：`uk_alert_code`；`idx_alert_org_status(org_id, status)`；`idx_alert_owner(owner_id)`

### alert_event
| 列 | 类型 | 空 | 说明 |
|----|------|----|------|
| id | BIGINT AI | N | PK |
| alert_id | BIGINT | N | FK |
| event_type | VARCHAR(32) | N | |
| payload | JSON | Y | |
| occurred_at | DATETIME | N | |
| operator_id | BIGINT | Y | |
| created_at | DATETIME | N | |
| is_deleted | TINYINT | N | 0 |

索引：`idx_event_alert(alert_id, occurred_at)`

## 验收
- [x] 审计/软删字段齐全
- [x] 初始化 SQL：`03-initialization-sql/V20260723__demoalert_init.sql`
