# 数据库规范

> 适用于 MySQL 8.x 默认栈；其他引擎需在 `00-project.md` 声明差异。

## 硬规则

1. **主键**：`id BIGINT NOT NULL AUTO_INCREMENT`（或业务强依赖的雪花/号段，须在表设计文档写明）
2. **必备审计字段**（业务表默认）：
   - `created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP`
   - `updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP`
   - `is_deleted TINYINT NOT NULL DEFAULT 0`（软删；`0` 未删 / `1` 已删）
3. **字符集**：库/表 `utf8mb4`，排序规则优先 `utf8mb4_0900_ai_ci`（或团队统一的一条，写进项目记忆）
4. **外键**：若使用物理外键，必须显式 `ON DELETE RESTRICT`（或 `NO ACTION`）；级联删除须在评审单单独批准
5. **唯一约束**：业务唯一键显式 `UNIQUE`；软删表唯一键需考虑 `is_deleted` 策略（文档声明）
6. **索引**：每个索引在 `04-database/01-table-design.md` 写明用途；禁止无依据的复合索引堆砌
7. **命名**：表 `snake_case` 复数或领域名词；字段 `snake_case`；布尔/`is_`、`has_` 前缀

## 变更

- 一切结构变更进 `04-database/03-initialization-sql/` 或 `04-migration-scripts/`，并更新 `04-database/` 文档
- 破坏性变更必须附回滚方案
- 禁止在文档未更新的情况下只改库

## 类型选用（简表）

| 场景 | 类型 |
|------|------|
| 金额 | `DECIMAL(p,s)`，禁止 `FLOAT` |
| 状态 | `VARCHAR` 短码或 `TINYINT` + 字典表，团队统一一种 |
| 长文本 | `TEXT`；超大对象进对象存储，库中存 URL |
| JSON 扩展 | `JSON`，关键查询条件仍应落列 |

## 待填（项目级）

- [ ] 分表/归档策略（如需要）
- [ ] 读写分离与延迟容忍
