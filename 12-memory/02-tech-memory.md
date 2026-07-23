# 技术记忆

记录技术选型、踩坑与可复用方案。

## 选型记录
| 日期 | 主题 | 结论 | 备注 |
|------|------|------|------|
| 2026-07-23 | 后端默认栈 | Java 17 + Spring Boot 3.x | 见 `00-project.md` / 架构技术栈 |
| 2026-07-23 | 前端默认栈 | Vue 3 + TS + Vite | Element Plus |
| 2026-07-23 | 数据库 | MySQL 8 + utf8mb4 | 硬规则见 `10-knowledge/03-database-standards.md` |
| 2026-07-23 | 仓库定位 | 方法论模板（示例代号 monitorV2） | `TEMPLATE_USAGE.md` |
| 2026-07-23 | 演示业务域 | DemoAlert 告警值班台（虚构） | S01 验证文档链；非真实需求 |

## 踩坑
| 日期 | 问题 | 处理 |
|------|------|------|
| 2026-07-23 | 0 字节 `.md` 被误判为「文档已存在」 | 一律补最小骨架或删除并在 README 声明 |
| 2026-07-23 | `.cursor/prompts` 等建成空目录而非 Junction | 删目录后跑 `14-scripts/setup-cursor.ps1`；并 gitignore Junction |
