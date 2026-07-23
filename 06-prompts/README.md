# 06 - Prompts（Prompt 中心）

## 说明

这是整个 AI 软件工厂的核心驱动力。每个 Prompt 定义了一个 AI 角色的工作方式和输出标准。

## 使用方式

1. 进入某个阶段时，复制对应 Prompt 到 Cursor Chat
2. 将当前阶段的 Context 文档作为附件上传
3. AI 按照 Prompt 定义的角色和格式输出结果
4. 将输出保存到对应阶段的目录中

## Prompt 列表

| 文件 | 角色 | 使用阶段 |
|------|------|----------|
| `01-product-manager.md` | AI 产品经理 | 02-product |
| `02-architect.md` | AI 架构师 | 03-architecture |
| `03-backend-java.md` | Java 开发 | 13-src |
| `04-backend-python.md` | Python 开发 | 13-src |
| `05-frontend-vue.md` | Vue 前端开发 | 13-src |
| `06-database-sql.md` | 数据库工程师 | 04-database |
| `07-testing.md` | 测试工程师 | 测试阶段 |
| `08-devops.md` | 运维工程师 | 部署阶段 |
| `09-code-review.md` | Code Reviewer | 代码审查 |

## Prompt 设计原则

- 每个 Prompt 包含：角色定义、输入格式、输出格式、约束条件、示例
- Prompt 需要随着项目进展持续迭代优化
- 将有效的 Prompt 经验沉淀到 `12-memory/`
