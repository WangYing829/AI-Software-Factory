# 03 - Architecture（架构设计）

## 当前阶段目标
基于 PRD 输出技术架构方案。

## 文件说明

| 文件 | 内容 |
|------|------|
| `01-system-overview.md` | 系统总体架构图与说明 |
| `02-module-design.md` | 模块划分与职责定义 |
| `03-microservices.md` | 微服务拆分方案（如适用） |
| `04-technology-stack.md` | 技术选型与版本 |
| `05-infrastructure.md` | 基础设施规划（Redis/MQ/ES等） |
| `06-deployment-architecture.md` | 部署架构与拓扑 |
| `07-security-design.md` | 安全设计方案 |
| `diagrams/` | 架构图原文件 |

## AI 协作方式

```
输入：02-product/01-product-requirements.md
Prompt：06-prompts/02-architect.md
输出：03-architecture/ 的完整架构方案
```

1. 将 PRD 作为 Context
2. 使用架构师 Prompt 让 AI 生成架构方案
3. 人工 Review 技术选型，确认后进入数据库设计
