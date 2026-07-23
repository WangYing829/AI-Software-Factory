# 09 - Agents（AI Agent 配置）

## 说明

定义各个 AI Agent 的角色、能力和工作流。

## Agent 列表

| 文件 | Agent | 职责 |
|------|-------|------|
| `01-pm-agent.md` | PM Agent | 需求分析、PRD 生成 |
| `02-architect-agent.md` | Architect Agent | 架构设计、技术选型 |
| `03-java-agent.md` | Java Agent | Java 代码生成 |
| `04-vue-agent.md` | Vue Agent | Vue 前端代码生成 |
| `05-python-agent.md` | Python Agent | Python 代码生成 |
| `06-sql-agent.md` | SQL Agent | 数据库脚本生成 |
| `07-test-agent.md` | Test Agent | 测试用例生成 |
| `08-review-agent.md` | Review Agent | 代码审查 |
| `09-devops-agent.md` | DevOps Agent | 部署脚本生成 |

## Agent 配置格式

```markdown
# [Agent 名称]

## 角色定义
你是 [角色]，负责 [职责]。

## 能力范围
- 能力1
- 能力2

## 输入格式
[描述 Agent 接收的输入格式]

## 输出格式
[描述 Agent 的输出格式要求]

## 约束条件
- 约束1
- 约束2

## 工作流
1. 步骤1
2. 步骤2
3. 步骤3
```

## 在 Cursor 中使用

将 Agent 配置保存到 `.cursor/agents/` 目录，Cursor 可以识别并使用。
