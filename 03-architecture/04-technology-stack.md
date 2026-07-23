# 技术栈

> **DemoAlert（S02）**，与 `00-project.md` 对齐。

| 层 | 选型 | 版本 | 备注 |
|----|------|------|------|
| 语言/运行时 | Java | 17+ | |
| 后端框架 | Spring Boot | 3.x | Security + Validation |
| 持久化 | MyBatis Plus + MySQL | 8.x | |
| 缓存 | Redis | 可选 | 会话；MVP 可不启用 |
| 前端 | Vue 3 + TS + Vite | 3.x | Element Plus |
| 构建 | Maven / pnpm | | |
| 容器 | Docker Compose | | |
| 观测 | Actuator | | `/actuator/health` |

## 弃选说明

| 候选 | 未选原因 |
|------|----------|
| 微服务拆分 | ADR-001 |
| 复杂工作流引擎 | PRD Out of Scope |

## 验收
- [x] 与 Skills / Knowledge 一致
- [x] 镜像 tag=git SHA 策略引用部署规范
