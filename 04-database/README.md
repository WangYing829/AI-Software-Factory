# 04 - Database（数据库设计）

## 当前阶段目标
基于架构方案输出数据库设计。

## 文件说明

| 文件/目录 | 内容 |
|-----------|------|
| `01-table-design.md` | 表结构设计文档 |
| `02-er-diagram.md` | ER 关系图 |
| `03-initialization-sql/` | 初始化 SQL 脚本 |
| `04-migration-scripts/` | 数据库迁移脚本 |
| `05-data-dictionary.md` | 完整数据字典 |

## AI 协作方式

```
输入：03-architecture/ + 02-product/ + 01-business/07-data-dictionary.md
Prompt：06-prompts/06-database-sql.md
输出：04-database/ 的完整设计
```

1. 将架构文档和业务数据字典作为 Context
2. 使用数据库 Prompt 让 AI 生成表设计和 ER 图
3. AI 生成初始化 SQL，人工确认后执行
