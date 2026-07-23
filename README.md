# AI 软件工厂（AI Software Factory）

> 利用 Cursor + AI 建立从业务梳理、架构设计、开发、测试到运维的 AI 原生软件开发流程。

## 核心理念

```
传统模式：业务 → 写代码
AI 模式：业务 → AI 产品经理 → AI 架构师 → AI 开发 → AI 测试 → AI 运维
```

Cursor 负责编码，但整个项目由 AI 多角色协同完成。

---

## 目录结构（按流程顺序）

| 序号 | 目录 | 阶段 | 说明 |
|------|------|------|------|
| 01 | `01-business/` | 业务梳理 | 项目背景、用户角色、业务流程、功能列表、权限、原型 |
| 02 | `02-product/` | 产品定义 | PRD、用户故事、产品路线图、竞品分析 |
| 03 | `03-architecture/` | 架构设计 | 系统架构、模块划分、技术栈、部署方案 |
| 04 | `04-database/` | 数据库设计 | 表设计、ER图、初始化SQL、数据字典 |
| 05 | `05-api/` | 接口设计 | OpenAPI、REST API、WebSocket、导入导出 |
| 06 | `06-prompts/` | Prompt 中心 | 各角色 Prompt 模板 |
| 07 | `07-tasks/` | 任务管理 | Sprint 计划、Backlog、Todo、Bug、Done、`sprints/` |
| 08 | `08-skills/` | 技能定义 | 各技术栈的编码规范和最佳实践 |
| 09 | `09-agents/` | AI Agent 配置 | PM、架构师、开发、测试、Review Agent |
| 10 | `10-knowledge/` | 知识库 | 开发规范、命名规范、Git规范、部署规范 |
| 11 | `11-context/` | 上下文管理 | 当前阶段、当前Sprint、今日任务、项目状态 |
| 12 | `12-memory/` | 项目记忆 | 项目记忆、技术记忆、Bug记忆、经验总结 |
| 13 | `13-src/` | 源代码 | 项目源码 |
| 14 | `14-scripts/` | 脚本工具 | 部署、备份、初始化脚本 |
| 15 | `15-templates/` | 模板库 | PR模板、Issue模板、会议模板、Sprint模板 |
| 16 | `16-output/` | 输出物 | 构建产物、报告、文档 |
| - | `.cursor/` | Cursor 配置 | rules、agents、prompts、skills |

---

## 推荐工作流

```
1. 梳理业务          → 01-business/
2. AI 评审需求       → 02-product/ + 06-prompts/01-product-manager.md
3. 架构设计          → 03-architecture/
4. 自动拆分任务      → 07-tasks/
5. Cursor 开发       → 13-src/ + 08-skills/ + 09-agents/
6. AI Code Review    → 09-agents/08-review-agent.md
7. 自动测试          → 06-prompts/07-testing.md
8. 部署与知识沉淀    → 14-scripts/ + 12-memory/
9. 复盘沉淀          → 12-memory/（Bug / 经验教训 / 解决方案库）
```

Fork / 新 clone 后先读 [`TEMPLATE_USAGE.md`](./TEMPLATE_USAGE.md)，并执行 `.\14-scripts\setup-cursor.ps1`。

---

## 版本

当前版本：**0.1.0**（2026-07-23）

变更记录见 [`CHANGELOG.md`](./CHANGELOG.md)。发版前先更新 `[Unreleased]`，再按 [`15-templates/release-checklist.md`](./15-templates/release-checklist.md) 打 `vX.Y.Z` 标签。

---

## 快速开始

1. 确认用法：方法论模板（默认）还是真实项目接入 — 见 `TEMPLATE_USAGE.md` / `00-project.md`
2. 当前默认阶段 **01-business**：完善业务文档（示例占位可先保留）
3. 每完成一个阶段，更新 `11-context/01-current-phase.md`
4. 将当前阶段文档作为 Context，用对应 Prompt / Agent 驱动工作
5. 阶段产物中的 Bug / 经验 **24h 内**写入 `12-memory/`

---

## MCP 建议接入

- 文件系统（本地知识库）
- Git（版本控制）
- 数据库（Schema 管理）
- OpenAPI（接口文档）
- Docker（容器化）
- GitHub/GitLab（代码托管）
- Playwright（自动化测试）

---

## 最终目标

- ✅ 文档驱动开发
- ✅ AI 多角色协作
- ✅ 自动生成代码
- ✅ 自动生成测试
- ✅ 自动生成部署文档
- ✅ 长期知识积累
