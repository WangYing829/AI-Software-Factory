# 14 - Scripts（脚本工具）

运维与工程脚本的唯一存放处。密钥与生产连接信息不得入库（见 `.gitignore` 与 `10-knowledge/05-deployment-standards.md`）。

## 目录

| 路径 | 用途 | 维护方式 |
|------|------|----------|
| `docker/` | Dockerfile、Compose、环境样例（`*.env.example`） | 与架构部署文档同步；真实 `*.env` 忽略 |
| `tools/` | 一次性工具、校验、迁移辅助脚本 | 脚本头部写清输入/输出与幂等性 |
| `setup-cursor.ps1` | 新 clone 后重建 `.cursor` Junction | 见下方「快速开始」 |
| （可选）`deploy/` / `backup/` | 发布与备份脚本 | 需要时再加；补本 README 一行 |

## 快速开始

```powershell
# 在仓库根目录
.\14-scripts\setup-cursor.ps1
```

## 约定

1. 脚本可重复执行或明确声明「一次性」
2. 失败时非零退出码；关键步骤打日志
3. 变更后更新本 README；复杂流程同步 `03-architecture/06-deployment-architecture.md`
