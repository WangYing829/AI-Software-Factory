# 系统总体架构

> **DemoAlert（S02）**。输入：`02-product/01-product-requirements.md`。

## 1. 架构目标
- 支撑范围：单体应用，模块边界清晰，可演进
- 质量属性：可维护 / 可观测（健康检查）/ 可回滚

## 2. 逻辑视图

```
[Vue 值班台] → [反向代理] → [DemoAlert App :8080] → [MySQL]
                                         ↘ [Redis]（会话/可选，S02 标可选）
```

## 3. 物理 / 部署视图（摘要）
- 环境：dev / test / prod → 见 `06-deployment-architecture.md`
- 端口：应用 8080，管理 9090（`/actuator/health`）

## 4. 关键设计决策（ADR）

| ID | 决策 | 状态 | 备注 |
|----|------|------|------|
| ADR-001 | 单体 + 模块分包（auth/alert/admin） | 已采纳 | 不做微服务 |
| ADR-002 | 配置与密钥分离 | 已采纳 | 部署规范 |
| ADR-003 | 告警状态机 open→acked→closed | 已采纳 | 见业务流 |
| ADR-004 | 组织级数据隔离（非 admin） | 已采纳 | RBAC+org_id |

## 5. 上下文边界

| 外部系统 | 方向 | 协议 | 说明 |
|----------|------|------|------|
| 告警推送来源 | 入 | HTTP Webhook（可选） | S02 文档预留；MVP 可用手工创建 |
| 邮件/IM 通知 | 出 | 可选 | Out of Scope（本期） |

## 验收
- [x] 与 DemoAlert PRD 范围一致
- [x] 单体决策明确
