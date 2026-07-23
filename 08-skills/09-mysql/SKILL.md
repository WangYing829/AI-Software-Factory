---
name: mysql
description: MySQL schema and SQL practices for this project. Use when designing MySQL tables, indexes, migrations, or writing MySQL-specific SQL.
---

# MySQL Skill

## When
MySQL 表结构、索引、迁移、查询优化时。

## Instructions
1. 硬规则以 `10-knowledge/03-database-standards.md` 为准（BIGINT PK、审计字段、软删、utf8mb4、外键 RESTRICT）
2. 每个索引在表设计文档写明用途
3. 迁移可重复执行或带版本号；破坏性变更必须附回滚 SQL
4. 同步更新 `04-database/01-table-design.md`、`02-er-diagram.md`、`05-data-dictionary.md`
5. 输出格式遵循 `06-prompts/06-database-sql.md`
