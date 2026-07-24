# 变更日志

本文件遵循 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

格式说明：
- **Added**：新增功能 / 目录 / 文档
- **Changed**：既有内容变更
- **Deprecated**：即将移除
- **Removed**：已移除
- **Fixed**：缺陷修复
- **Security**：安全相关

---

## [Unreleased]

### Added
- S02 模板深化：DemoAlert 对齐 `01-business/06|07`、`03-architecture`、`04-database`（含 init SQL）、`05-api`（OpenAPI paths）
- `04-database/03-initialization-sql/V20260723__demoalert_init.sql`
- Sprint 归档 `sprints/S02-template-deepen.md`

### Changed
- 术语统一：业务主实体 → `Alert` / 表 `alert`；API `/alerts*`
- M2 里程碑标为完成（演示文档级）
- S01 收尾：演示业务 DemoAlert、PRD/故事、复盘、文档评审流程（并入叙述）
- 2026-07-24：确认不执行 S03，基线锁定 S02 完成态（Context）

### Removed
- `整合建议.md`（整合已完成，不再维护该文档）

### Fixed

---

## [0.2.0] - 2026-07-23

### Added
- `02-product` / `03-architecture` / `04-database` / `05-api` 阶段空文档最小模板（消除假完成）
- `TEMPLATE_USAGE.md`：Fork / 方法论模板使用说明
- `01-business/05|06|07` 最小可用骨架（权限 / 页面 / 数据字典）
- `14/15/16` 阶段 README；`15-templates` 四类协作模板 + `release-checklist.md`
- `14-scripts/setup-cursor.ps1`：重建 `.cursor` Junction
- `11-context/06-meeting-notes/meeting-template.md`
- 测试 / 运维 / Python / Vue / SQL Prompt 完整输出格式
- 库表 / 部署 / 测试硬规则；Memory 四件套示例条目
- Sprint **S01 纯模板演示闭环**（`07-tasks/01-sprint-planning.md` + `sprints/S01-template-demo.md`）
- `整合建议.md` 执行状态与后续建议

### Changed
- `00-project.md`：方法论模板模式 + 草稿；当前版本 → `0.2.0`
- `.gitignore`：输出物去重；ignore Cursor Junction 目录
- `README.md`：反馈闭环第 9 步；版本与模板用法
- `10-knowledge/08-documentation-standards.md`：24h Memory 闭环
- `.cursor/settings.json`：`maxContextFiles` 50 → 100
- `08-skills`：python/vue/mysql/testing/database 与 Knowledge/Prompt 对齐
- `整合建议.md`：审计项关闭；第四～六批推进记录

### Removed
- `08-skills/` 下 10 个与 `*/SKILL.md` 双份的空 `.md` 文件

### Fixed
- 发版检查清单与 `v0.1.0` / `v0.2.0` 标签流程

---

## [0.1.0] - 2026-07-23

### Added
- 初始化 AI 软件工厂脚手架：阶段目录 `01-business` … `16-output`
- 根文档：`README.md`、`00-project.md`、`.gitignore`
- Cursor 配置：`.cursor/rules`、`mcp.json`、`settings.json`
- Prompt 中心：`06-prompts/`（PM / 架构 / Java / Python / Vue / SQL / 测试 / DevOps / Review）
- Skills：`08-skills/`（backend / frontend / database / devops / java / python / vue / docker / mysql / testing）
- Agents：`09-agents/`（PM / 架构师 / Java / Vue / Python / SQL / 测试 / Review / DevOps）
- 知识库：`10-knowledge/`（开发、命名、数据库、Git、部署、评审、测试、文档、MCP）
- 运行态与记忆：`11-context/`、`12-memory/`
- 任务看板：`07-tasks/`（Sprint / Backlog / Todo / Bug / Done + `sprints/`）
- 业务～接口阶段模板：`01-business` … `05-api`
- 源码 / 脚本 / 模板 / 产出占位：`13-src` … `16-output`
- 远程仓库：推送至 [WangYing829/AI-Software-Factory](https://github.com/WangYing829/AI-Software-Factory)

### Changed
- 合并重复目录与文件，阶段索引统一为各目录 `README.md`
- Skills 统一为 `*/SKILL.md` 目录形态，符合 Cursor 加载约定
- Tasks 改为文件型看板 + `sprints/`

---

## 版本对照

| 版本 | 日期 | 说明 |
|------|------|------|
| 0.2.0 | 2026-07-23 | 模板加固：02–05 骨架、Prompt/Skill/Memory、S01、整合建议闭环 |
| 0.1.0 | 2026-07-23 | 工厂脚手架首发 |
| Unreleased | — | 开发中 |

[Unreleased]: https://github.com/WangYing829/AI-Software-Factory/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/WangYing829/AI-Software-Factory/releases/tag/v0.2.0
[0.1.0]: https://github.com/WangYing829/AI-Software-Factory/releases/tag/v0.1.0
