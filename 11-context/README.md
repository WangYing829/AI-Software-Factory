# 11 - Context（上下文管理）

## 说明

维护项目的当前状态，让 AI 和团队成员随时了解"现在在哪里"。

## 文件说明

| 文件 | 内容 | 更新频率 |
|------|------|----------|
| `01-current-phase.md` | 当前所处阶段 | 阶段切换时 |
| `02-current-sprint.md` | 当前 Sprint 信息 | Sprint 开始时 |
| `03-daily-tasks.md` | 今日任务清单 | 每天 |
| `04-project-status.md` | 项目整体状态 | 每周 |
| `05-decision-log.md` | 技术决策记录 | 有决策时 |
| `06-meeting-notes/` | 会议纪要 | 会议后 |

## 使用方式

1. 每次与 AI 对话前，先查看 `01-current-phase.md`
2. 将当前阶段的文档作为 Context 提供给 AI
3. AI 根据当前阶段提供针对性的帮助
4. 完成工作后更新状态文件

## 示例：current-phase.md

```markdown
# 当前阶段

**阶段**: 04-database
**状态**: 进行中
**开始时间**: 2026-07-23
**预计完成**: 2026-07-25

## 已完成
- [x] 03-architecture/ 架构设计评审通过

## 进行中
- [ ] 04-database/01-table-design.md
- [ ] 04-database/02-er-diagram.md

## 待开始
- [ ] 04-database/03-initialization-sql/
- [ ] 05-api/

## 阻塞项
- 无

## 下一步
完成数据库设计后进入 API 设计阶段
```
