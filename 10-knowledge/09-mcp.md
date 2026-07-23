# MCP 推荐配置

对应实施方案「MCP 建议」。项目级配置文件：`.cursor/mcp.json`。

保存后请 **Reload Window** 或重启 Cursor，并在 **Settings → Tools & MCP** 检查连接状态。

## 已配置服务器

| 名称 | 对应建议 | 说明 | 启用前提 |
|------|----------|------|----------|
| `filesystem` | 文件系统 | 访问 01–12 阶段目录及 `15-templates` 等 | 需本机 Node/`npx` |
| `git` | Git | 当前仓库 Git 操作 | 需本机 Git + `npx` |
| `github` | GitHub/GitLab | GitHub API（GitLab 需另配） | 环境变量 `GITHUB_PERSONAL_ACCESS_TOKEN` |
| `mysql` | 数据库 | MySQL 查询/结构辅助 | `MYSQL_HOST/PORT/USER/PASSWORD/DATABASE` |
| `openapi` | OpenAPI | 基于 `05-api/01-openapi-spec.yaml` | 先有 OpenAPI 文件；`API_BASE_URL` |
| `docker` | Docker | 通过 `mcp/docker` 镜像 | Docker Desktop 可用；Windows 可能需改 sock 路径 |
| `playwright` | Playwright | 浏览器自动化/E2E | 首次会拉依赖 |
| `knowledge` | 本地知识库 | 聚焦 10-knowledge/12-memory/11-context | 同 filesystem |

## 环境变量（勿写入仓库）

```text
GITHUB_PERSONAL_ACCESS_TOKEN=
MYSQL_HOST=127.0.0.1
MYSQL_PORT=3306
MYSQL_USER=
MYSQL_PASSWORD=
MYSQL_DATABASE=
API_BASE_URL=http://localhost:8080
```

## Windows / Docker 说明

若 `docker` 服务器启动失败，可暂时在 MCP 面板关闭它，或改为 Docker Desktop **MCP Toolkit** 接入。

## 精简建议

1. `filesystem` + `knowledge`
2. `git`
3. 联调时再开 `mysql` / `openapi` / `playwright`
4. 容器工作时再开 `docker`
