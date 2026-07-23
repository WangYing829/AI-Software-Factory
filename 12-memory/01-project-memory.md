# 项目记忆

记录跨 Sprint 仍有效的项目级事实与决策。

## 关键信息
- 仓库：`https://github.com/WangYing829/AI-Software-Factory`
- 顶层结构：`01-business` … `16-output`
- Prompt/Skill/Agent：顶层 `06/08/09` + `.cursor` Junction
- 当前版本：`0.1.0`（权威变更日志：根目录 `CHANGELOG.md`）

## 重要决策
| 日期 | 决策 | 原因 |
|------|------|------|
| 2026-07-23 | 合并重复目录/文件，索引统一 `README.md` | 消除双份漂移 |
| 2026-07-23 | Skills 仅保留 `*/SKILL.md` 目录形态 | 符合 Cursor 加载约定 |
| 2026-07-23 | Tasks 改为文件型看板 + `sprints/` | 与任务 README 一致 |
| 2026-07-23 | 版本日志唯一落点为 `CHANGELOG.md` + SemVer | 与评审清单一致，避免双份文档 |

## 待补
- 业务背景与目标用户
- 技术栈最终选型
