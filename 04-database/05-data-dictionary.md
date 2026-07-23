# 物理数据字典

> **DemoAlert（S02）**。业务字典：`01-business/07-data-dictionary.md`。

## 约定
- utf8mb4；软删 `is_deleted`；时间 DATETIME

## alert
| 字段 | 类型 | 约束 | 业务含义 | 枚举 |
|------|------|------|----------|------|
| id | BIGINT | PK | 告警 ID | |
| code | VARCHAR(64) | UK | 编号 | |
| title | VARCHAR(256) | | 标题 | |
| severity | VARCHAR(8) | | 级别 | P0/P1/P2 |
| status | VARCHAR(16) | | 状态 | open/acked/closed |
| owner_id | BIGINT | FK nullable | 处理人 | |
| org_id | BIGINT | FK | 组织 | |
| source | VARCHAR(32) | | 来源 | push/manual |
| close_reason | VARCHAR(32) | | 关闭原因 | false_positive/fixed/handed_over/other |

## alert_event
| 字段 | 类型 | 约束 | 业务含义 | 枚举 |
|------|------|------|----------|------|
| alert_id | BIGINT | FK | 告警 | |
| event_type | VARCHAR(32) | | 事件 | created/acked/closed/updated |
| payload | JSON | | 快照 | |
| operator_id | BIGINT | | 操作人 | |

## 变更记录

| 日期 | 变更 | 脚本 |
|------|------|------|
| 2026-07-23 | DemoAlert 初稿 | `V20260723__demoalert_init.sql` |
