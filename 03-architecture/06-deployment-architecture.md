# 部署架构

> **DemoAlert（S02）**。对齐 `10-knowledge/05-deployment-standards.md`。

## 拓扑

```
用户 → Proxy:443 → App:8080
                 → Actuator:9090（内网）
App → MySQL:3306
App → Redis:6379（可选）
```

## 环境

| 环境 | 实例数 | 发布方式 | 数据 |
|------|--------|----------|------|
| dev | 1 | compose | 可销毁 |
| test | 1 | compose/CI | 脱敏造数 |
| prod | N | 滚动 maxUnavailable=0 | 定期备份 |

## 发布与回滚
- 镜像 tag = git SHA
- 健康检查：`GET /actuator/health`
- 回滚：切上一 SHA
- 清单：`15-templates/release-checklist.md`

## 验收
- [x] 健康检查与回滚路径明确
