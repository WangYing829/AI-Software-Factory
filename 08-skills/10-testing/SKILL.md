---
name: testing
description: Testing workflow for plans, cases, automation, and bug tracking. Use when designing tests, writing automated tests, or filing defects.
---

# Testing Skill

## When
测试计划、用例设计、自动化或缺陷跟踪时。

## Steps
1. 对照 `02-product/` 验收标准与 `05-api/`
2. 硬规则：`10-knowledge/07-testing-standards.md`（覆盖率 >80%/核心 >90%；Mock 仅跨服务与 IO）
3. 用例与报告格式遵循 `06-prompts/07-testing.md`
4. 自动化放 `13-src/tests/`；报告可进 `16-output/reports/`
5. 缺陷记 `07-tasks/04-bug-tracking.md`；模式沉淀 `12-memory/03-bug-memory.md`

## Output
- 测试说明与覆盖率表
- Bug 关闭前尽量补回归
- 同步 `11-context/`
