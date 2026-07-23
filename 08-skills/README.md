# 08 - Skills（技能定义）

## 说明

定义各技术栈的编码规范、最佳实践和常用模式。相当于 AI 的「肌肉记忆」。

> Cursor 识别格式为 **目录 + `SKILL.md`**（通过 `.cursor/skills` junction 加载）。  
> 勿再平铺同名 `.md`，以免与技能目录重复。

## 技能列表

| 目录 | 内容 |
|------|------|
| `01-backend/` | 后端通用规范 |
| `02-frontend/` | 前端通用规范 |
| `03-database/` | 数据库通用规范 |
| `04-devops/` | DevOps 通用规范 |
| `05-java/` | Java 技术栈细节 |
| `06-python/` | Python 技术栈细节 |
| `07-vue/` | Vue 技术栈细节 |
| `08-docker/` | Docker 使用规范 |
| `09-mysql/` | MySQL 使用规范 |
| `10-testing/` | 测试规范 |

## 与 Knowledge 的区别

- **Skills（本目录）**：给 AI 执行时遵循的步骤与约定
- **Knowledge（`10-knowledge/`）**：给人看的团队共识与规范全文

## 维护方式

1. 只改 `08-skills/<name>/SKILL.md`（与 `.cursor/skills` 为同一内容）
2. 规范条文较长时，在 Skill 中摘要并链到 `10-knowledge/`
