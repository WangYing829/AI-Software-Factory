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
- （待发布内容写在此处）

### Changed

### Fixed

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
| 0.1.0 | 2026-07-23 | 工厂脚手架首发，文档驱动多角色流程就绪 |
| Unreleased | — | 开发中，尚未打标签 |

[Unreleased]: https://github.com/WangYing829/AI-Software-Factory/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/WangYing829/AI-Software-Factory/releases/tag/v0.1.0
