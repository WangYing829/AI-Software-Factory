# Sprint 计划

## 当前 Sprint
- **名称**：S02 · 模板深化（DemoAlert 01→05）
- **目标**：将架构 / 库表 / API 示例值统一为 DemoAlert，形成可 fork 的完整文档演示链（仍不写 `13-src`）
- **时间盒**：2026-07-23 ~ 2026-07-30（实际于 2026-07-23 关闭）
- **状态**：✅ 已关闭

## 计划任务

| ID | 标题 | 优先级 | 状态 | 关联文档 |
|----|------|--------|------|----------|
| T-101 | 开 S02 + 迁入深化任务 | P0 | 已完成 | 本文件 / Context |
| T-102 | 深化页面与业务字典（06/07） | P0 | 已完成 | `01-business/06\|07` |
| T-103 | 深化架构 01–07 为 DemoAlert | P0 | 已完成 | `03-architecture/` |
| T-104 | 深化库表 + 初始化 SQL | P0 | 已完成 | `04-database/` |
| T-105 | 深化 REST/OpenAPI/导出/版本 | P0 | 已完成 | `05-api/` |
| T-106 | 更新整合建议 / Memory / Backlog | P1 | 已完成 | `整合建议.md` 等 |

## 不在范围（Out）
- `13-src` 实现
- 真实 monitorV2 业务替换
- WebSocket 实时推送

## 完成定义（DoD）
- [x] 01→05 文档示例口径统一为 DemoAlert
- [x] 存在可执行/可评审的 init SQL 与 OpenAPI paths
- [x] Context / Backlog / 整合建议已更新
- [x] 明确下一步（实现向 Sprint 或真实业务）待人确认

## 复盘摘要
- **做得好**：状态机、权限点、表名、API 路径一次对齐，减少双份术语（BizEntity→Alert）。
- **改进**：OpenAPI 可再补 schema 组件；种子用户 SQL 可后续加。
- **行动项**：实现向 Sprint 从 Backlog US-001～005 拉取。

上一 Sprint：S01（已关闭）→ `sprints/S01-template-demo.md`  
本 Sprint 归档：`sprints/S02-template-deepen.md`
