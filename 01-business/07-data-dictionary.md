# 业务数据字典（核心实体）

> 模板说明：本文件描述**业务语义**实体；物理表结构见 `04-database/`。`[示例: …]` 替换为真实领域名。

## 1. 实体总览

| 实体编码 | 中文名 | 说明 | 来源模块 |
|----------|--------|------|----------|
| `User` | 用户 | 登录账号与身份 | 系统 |
| `Role` | 角色 | RBAC 角色 | 系统 |
| `Org` | 组织 | 数据范围边界 | 系统 |
| `BizEntity` | `[示例: 业务主实体]` | 核心业务对象 | `[示例: 业务域]` |
| `BizEvent` | `[示例: 业务事件/记录]` | 主实体下的流水 | `[示例: 业务域]` |

## 2. 实体字段骨架

### User
| 字段 | 类型（业务） | 必填 | 说明 |
|------|--------------|------|------|
| id | ID | Y | 主键 |
| username | 文本 | Y | 登录名，唯一 |
| display_name | 文本 | Y | 显示名 |
| org_id | ID | Y | 所属组织 |
| status | 枚举 | Y | active / disabled |
| created_at | 时间 | Y | 创建时间 |

### BizEntity `[示例: 业务主实体]`
| 字段 | 类型（业务） | 必填 | 说明 |
|------|--------------|------|------|
| id | ID | Y | 主键 |
| code | 文本 | Y | 业务编码，唯一 |
| name | 文本 | Y | 名称 |
| status | 枚举 | Y | `[示例: draft/active/closed]` |
| owner_id | ID | Y | 负责人用户 |
| org_id | ID | Y | 所属组织 |
| remark | 文本 | N | 备注 |
| created_at / updated_at | 时间 | Y | 审计 |

### BizEvent `[示例: 业务事件]`
| 字段 | 类型（业务） | 必填 | 说明 |
|------|--------------|------|------|
| id | ID | Y | 主键 |
| entity_id | ID | Y | 关联主实体 |
| event_type | 枚举 | Y | `[示例: create/update/alarm]` |
| payload | JSON/文本 | N | 扩展内容 |
| occurred_at | 时间 | Y | 发生时间 |
| operator_id | ID | N | 操作人 |

## 3. 关系

| 从 | 到 | 基数 | 说明 |
|----|----|------|------|
| Org | User | 1:N | 组织下多用户 |
| User | Role | N:N | 用户多角色 |
| Org | BizEntity | 1:N | 组织数据隔离 |
| BizEntity | BizEvent | 1:N | 主实体事件流 |

## 4. 枚举与编码（占位）

| 枚举名 | 取值 | 说明 |
|--------|------|------|
| UserStatus | active, disabled | 用户状态 |
| EntityStatus | `[示例: draft, active, closed]` | 主实体状态 |
| EventType | `[示例: create, update, alarm]` | 事件类型 |

## 5. 验收检查

- [ ] P0 功能涉及的读写对象均已出现在实体总览
- [ ] 与 `05-permission-design.md` 的资源命名可映射
- [ ] 进入 `04-database/` 前，业务字段语义已评审

---

> AI 提示：以 `03-business-flow.md` + `04-functional-list.md` 推导遗漏实体，并输出 ER 文字关系供 `04-database/02-er-diagram.md` 使用。
