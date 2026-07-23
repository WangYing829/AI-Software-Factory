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
- `TEMPLATE_USAGE.md`：Fork / 方法论模板使用说明
- `01-business/05|06|07` 最小可用骨架（权限 / 页面 / 数据字典）
- `14/15/16` 阶段 README；`15-templates` 四类协作模板 + `release-checklist.md`
- `14-scripts/setup-cursor.ps1`：重建 `.cursor` Junction
- `11-context/06-meeting-notes/meeting-template.md`
- 测试 / 运维 Prompt 完整输出格式；库表 / 部署 / 测试硬规则

### Changed
- `00-project.md`：方法论模板模式 + 一版可修订草稿（monitorV2 作示例代号）
- `.gitignore`：输出物规则去重，`.gitkeep` 否定规则置后
- `README.md`：反馈闭环第 9 步；快速开始对齐模板用法
- `10-knowledge/08-documentation-standards.md`：24h Memory 闭环
- `.cursor/settings.json`：`maxContextFiles` 50 → 100
- `11-context/02-current-sprint.md`：补充「未启动」原因

### Removed
- `08-skills/` 下 10 个与 `*/SKILL.md` 双份的空 `.md` 文件

### Fixed
- 发版检查清单与 tag 核对流程（`15-templates/release-checklist.md`）；补打 `v0.1.0` 标签以使 CHANGELOG 链接有效

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
| Unreleased | — | 整合建议三批整改 + 方法论模板化（待发版） |

[Unreleased]: https://github.com/WangYing829/AI-Software-Factory/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/WangYing829/AI-Software-Factory/releases/tag/v0.1.0
