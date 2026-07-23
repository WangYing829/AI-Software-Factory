# Sprint 计划

## 当前 Sprint
- **名称**：S01 · 纯模板演示闭环
- **目标**：在方法论模板模式下，跑通「业务骨架 → 产品/架构/库表/API 模板 → 任务看板」演示路径，不接入真实 monitorV2 业务深写
- **时间盒**：2026-07-23 ~ 2026-07-30（实际于 2026-07-23 关闭）
- **状态**：✅ 已关闭

## 计划任务

| ID | 标题 | 优先级 | 状态 | 关联文档 |
|----|------|--------|------|----------|
| T-001 | 02–05 空文档最小模板化 | P0 | 已完成 | `02-product`…`05-api` |
| T-002 | 发版 v0.2.0 | P0 | 已完成 | `CHANGELOG.md` |
| T-003 | 补强 Python/Vue/SQL Prompt + Skill/Memory | P1 | 已完成 | `06-prompts` / `08-skills` / `12-memory` |
| T-004 | 开纯模板演示 Sprint 并更新 Context | P1 | 已完成 | `11-context/` / 本文件 |
| T-005 | 演示：用 PM Prompt 基于骨架生成一页示例 PRD 段落 | P2 | 已完成 | `02-product/01-product-requirements.md` |
| T-006 | 复盘写入 Memory（本 Sprint 结束） | P2 | 已完成 | `12-memory/` |

## 不在范围（Out）
- 真实 monitorV2 业务深写（§7.2）
- `13-src` 可运行代码实现

## 完成定义（DoD）
- [x] 02–05 无「假完成」空 md（非 `.gitkeep`）
- [x] `v0.2.0` 已打 tag 并推送
- [x] `整合建议.md` 已标注本迭代完成
- [x] Context / Sprint 状态一致
- [x] T-005 演示 PRD + 用户故事
- [x] T-006 Sprint 复盘入 Memory

## 复盘摘要
- **做得好**：虚构 DemoAlert 打通 01→02 文档链；权限点与 PRD 同步；发版与 Memory 闭环执行到位。
- **改进**：下个 Sprint 开场先写「演示业务一句话」，避免中途才定域名。
- **行动项**：US-001～006 进入 Backlog，供 S02（可选）选型。

下一 Sprint：未启动（待确认是否继续模板深化或切入真实业务）。

归档快照：`sprints/S01-template-demo.md`。
