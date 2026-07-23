# 部署架构

对齐 `10-knowledge/05-deployment-standards.md` 与 `14-scripts/docker/`。

## 拓扑（文字）

```
用户 → Proxy:443 → App:8080
                 → Actuator:9090（内网）
App → MySQL
App → Redis（可选）
```

## 环境

| 环境 | 实例数 | 发布方式 | 数据 |
|------|--------|----------|------|
| dev | 1 | compose | 可销毁 |
| test | 1+ | compose/CI | 脱敏 |
| prod | N | 滚动 maxUnavailable=0 | 备份策略 |

## 发布与回滚
- 镜像 tag = git SHA
- 回滚：切上一 SHA + 健康检查
- 清单：`15-templates/release-checklist.md`

## 验收
- [ ] 健康检查路径明确
- [ ] 回滚步骤可执行
