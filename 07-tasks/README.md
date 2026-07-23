# 07 - Tasks（任务管理）

## 说明

用 Markdown 管理敏捷开发任务，替代 Jira/Trello。

## 文件说明

| 文件 | 内容 |
|------|------|
| `01-sprint-planning.md` | Sprint 计划 |
| `02-backlog.md` | 产品待办列表 |
| `03-todo.md` | 当前待办 |
| `04-bug-tracking.md` | Bug 跟踪 |
| `05-done.md` | 已完成任务 |
| `sprints/` | 历史 Sprint 归档 |

## 任务格式

```markdown
### [TASK-001] 用户登录功能
- **优先级**: P0
- **状态**: TODO → DOING → DONE
- **负责人**: AI-Java-Agent
- **关联文档**: 02-product/01-product-requirements.md#登录模块
- **关联代码**: 13-src/...
- **验收标准**:
  1. 支持手机号+密码登录
  2. 支持 JWT Token
  3. 登录失败3次锁定15分钟
- **备注**:
```

## AI 协作

- AI 可以帮你拆分任务、估算工时
- 将 Backlog 喂给 AI，让它生成 Sprint 计划
- Bug 描述可以喂给 AI，让它分析根因
