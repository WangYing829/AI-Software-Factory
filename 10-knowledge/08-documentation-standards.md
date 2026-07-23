# 文档规范

## 原则
- 阶段文档放在 `01-business` … `05-api`
- 各阶段目录以 `README.md` 为索引
- 文件命名：`数字-英文名称.md`

## 版本与变更记录

| 项 | 约定 |
|----|------|
| 权威文件 | 根目录 `CHANGELOG.md`（唯一变更日志，避免双份） |
| 版本号 | [语义化版本](https://semver.org/lang/zh-CN/)：`MAJOR.MINOR.PATCH` |
| 记录格式 | [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)：Added / Changed / Deprecated / Removed / Fixed / Security |
| 写入时机 | 功能合并进 `main` 前更新 `[Unreleased]`；发版时挪到新版本号并打 `vX.Y.Z` 标签 |
| 发版门槛 | 里程碑达成、对外可交付、或破坏性变更时升版 |
| 关联位置 | `00-project.md` 记录当前版本；PR/Review 检查是否已记入 CHANGELOG |

### 版本语义（本工厂）
- **0.x.y**：脚手架与文档驱动阶段，尚无稳定业务交付
- **1.0.0**：主流程可演示（对应里程碑 M3）
- **PATCH**：文档修正、模板补丁、无行为变化的修复
- **MINOR**：新增阶段能力、Agent/Skill、非破坏性约定
- **MAJOR**：顶层目录/流程约定破坏性调整

## 反馈闭环（Memory）

- 任一阶段产物完成后，产生的 **Bug / 经验教训 / 可复用方案** 须在 **24 小时内**写入 `12-memory/`（`03-bug-memory` / `04-lessons-learned` / `05-solutions-library`）
- 运行态进度同步 `11-context/`；长期事实同步 `12-memory/01-project-memory.md`
- 禁止只改代码/文档却不更新 Context/Memory 导致「下一会话失忆」

## 待填
- [ ] 文档评审流程
