# 表结构设计

> 业务语义见 `01-business/07-data-dictionary.md`；硬规则见 `10-knowledge/03-database-standards.md`。

## 表清单

| 表名 | 说明 | 模块 |
|------|------|------|
| `sys_user` | 用户 | auth |
| `sys_role` | 角色 | auth |
| `sys_user_role` | 用户-角色 | auth |
| `biz_entity` | `[示例: 业务主表]` | biz |
| `biz_event` | `[示例: 业务事件]` | biz |

## 表定义骨架

### sys_user
| 列 | 类型 | 空 | 默认 | 说明 |
|----|------|----|------|------|
| id | BIGINT | N | AI | PK |
| username | VARCHAR(64) | N | | UK |
| display_name | VARCHAR(64) | N | | |
| org_id | BIGINT | N | | |
| status | TINYINT | N | 1 | 1 启用 0 停用 |
| created_at | DATETIME | N | CURRENT_TIMESTAMP | |
| updated_at | DATETIME | N | CURRENT_TIMESTAMP | |
| is_deleted | TINYINT | N | 0 | 软删 |

索引：`uk_username(username)`；`idx_org(org_id)`

### biz_entity `[示例]`
| 列 | 类型 | 空 | 说明 |
|----|------|----|------|
| id | BIGINT | N | PK |
| code | VARCHAR(64) | N | UK |
| name | VARCHAR(128) | N | |
| status | VARCHAR(32) | N | |
| owner_id | BIGINT | N | |
| org_id | BIGINT | N | |
| created_at / updated_at / is_deleted | | N | 审计 |

## 验收
- [ ] 必备审计字段齐全
- [ ] 初始化 SQL 落 `03-initialization-sql/`
