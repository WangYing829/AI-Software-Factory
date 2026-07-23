# 导入 / 导出 API

> **DemoAlert（S02）**

## 范围
| 能力 | 格式 | 权限 | 优先级 |
|------|------|------|--------|
| 导出告警列表 | CSV | `rpt:export` | P1 |
| 导入 | — | — | 不做 |

## 导出
- **路径**: `GET /api/v1/alerts/export`
- **Query**: 与列表相同（status/keyword）+ 组织隔离
- **限制**: 最大 5000 行；超出返回 400 提示缩小筛选
- **字段**: code,title,severity,status,owner,org,created_at,close_reason

## 验收
- [x] 异步非必须（同步流式即可）
- [x] 无导入范围
