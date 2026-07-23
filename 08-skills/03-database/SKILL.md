---
name: database
description: Database design and migration workflow. Use when designing tables, writing SQL, updating ER docs, or changing data dictionaries.
---

# Database Skill

## When
表设计、字段变更、迁移脚本、数据字典更新时。

## Steps
1. 对齐 `01-business/07-data-dictionary.md`
2. 更新 `04-database/`（表设计、ER、物理数据字典）
3. 脚本写入 `03-initialization-sql/` 或 `04-migration-scripts/`
4. 遵循 `10-knowledge/03-database-standards.md` 与 `06-prompts/06-database-sql.md`
5. 禁止无文档的结构变更；破坏性变更写回滚

## Output locations
- 文档：`04-database/`
- 脚本：`03-initialization-sql/`、`04-migration-scripts/`
