# Backlog

未进当前 Sprint 的待办。S02 已完成后，以下为**实现向**候选（仍属 DemoAlert 演示域）。

## 条目

| ID | 标题 | 优先级 | 状态 | 关联 |
|----|------|--------|------|------|
| US-001 | 登录值班台 | P0 | READY | F-001 / OpenAPI `/auth/login` |
| US-002 | 告警列表筛选 | P0 | READY | `/alerts` |
| US-003 | 认领 open 告警 | P0 | READY | `/alerts/{id}/ack` |
| US-004 | 关闭告警并填原因 | P0 | READY | `/alerts/{id}/close` |
| US-005 | 只读查看详情 | P0 | READY | `/alerts/{id}` |
| US-006 | 导出 CSV | P1 | READY | `/alerts/export` |
| TASK-SEED-01 | init SQL 增加演示用户/组织种子数据 | P2 | BACKLOG | `03-initialization-sql/` |
| TASK-OAS-01 | OpenAPI 补齐 components.schemas | P2 | BACKLOG | `01-openapi-spec.yaml` |

> 真实 monitorV2：替换本表与全部 DemoAlert 文档，勿混用。
