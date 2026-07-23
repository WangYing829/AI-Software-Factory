# 模板使用说明（TEMPLATE_USAGE）

本仓库是 **AI 软件工厂** 方法论脚手架。`monitorV2` 仅为示例代号，用于演示阶段目录与文档约定。

## 1. Fork 后必须改

| 文件 | 改什么 |
|------|--------|
| `00-project.md` | `${PROJECT_NAME}` / 目标用户 / 核心价值 / 技术栈 / 模块 |
| `README.md` | 项目一句话介绍（若对外展示） |
| `CHANGELOG.md` | 按你的产品版本重新起算，或保留工厂版本另开产品 CHANGELOG |
| `01-business/*` | 将所有 `[示例: …]`、占位角色/实体换成真实业务 |
| `11-context/*` | 当前阶段、Sprint、今日任务 |
| `.cursor/mcp.json` | 按本机 MCP 实际配置（勿提交密钥） |

## 2. 可直接复用（通常不用大改）

- `06-prompts/`、`08-skills/*/SKILL.md`、`09-agents/`
- `10-knowledge/` 硬规则（按团队栈微调）
- `15-templates/` 协作模板
- `14-scripts/setup-cursor.ps1`
- `.cursor/rules/`

## 3. 推荐启用步骤

```text
1. Fork / clone
2. 运行 14-scripts/setup-cursor.ps1
3. 改 00-project.md（去掉模板警告或改为你的项目警告）
4. 按 01-business → 05-api 文档驱动
5. 再动 13-src
6. 阶段产物中的 Bug/经验 24h 内写入 12-memory/
```

## 4. 两种用法

| 用法 | 做法 |
|------|------|
| 方法论模板 | 保持示例措辞与 `[示例]`；新业务项目另开仓库或分支填真值 |
| 真实项目脚手架 | 删掉模板警告，把 `01-business/` 写成真实业务，优先级按业务 P0 推进 |

## 5. 命名与权威源

- 目录：`数字-英文名称`；阶段索引：各目录 `README.md`
- Prompt/Skill/Agent 权威源在顶层 `06/08/09`；`.cursor` 下为 Junction，勿复制第二份
