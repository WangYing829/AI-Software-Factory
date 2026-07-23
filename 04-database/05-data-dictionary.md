# 物理数据字典

> 与业务字典 `01-business/07-data-dictionary.md` 对应；本文件以**落库字段**为准。

## 约定
- 字符集：utf8mb4
- 软删：`is_deleted` 0/1
- 时间：DATETIME，应用层统一时区策略

## 表字典

### sys_user
| 字段 | 类型 | 约束 | 业务含义 | 枚举/字典 |
|------|------|------|----------|-----------|
| id | BIGINT | PK | 用户 ID | |
| username | VARCHAR(64) | UK | 登录名 | |
| status | TINYINT | | 状态 | 1 active / 0 disabled |

### biz_entity
| 字段 | 类型 | 约束 | 业务含义 | 枚举/字典 |
|------|------|------|----------|-----------|
| code | VARCHAR(64) | UK | 业务编码 | |
| status | VARCHAR(32) | | 状态 | `[示例: draft/active/closed]` |

## 变更记录

| 日期 | 变更 | 脚本 |
|------|------|------|
| | 初稿 | `03-initialization-sql/` |
