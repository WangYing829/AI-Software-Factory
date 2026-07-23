# `.cursor` 目录说明

Cursor 项目级配置根。规则与 MCP 在本目录；Prompt / Skills / Agents 正文在顶层 `06/08/09`，此处用 **Junction** 映射以便 Cursor 加载。

## 结构

```text
.cursor/
├── README.md       ← 本说明
├── settings.json   ← 项目 Cursor 设置
├── mcp.json        ← 项目级 MCP
├── rules/          ← 本地规则（真实目录）
├── prompts/        ← Junction → ../06-prompts/
├── skills/         ← Junction → ../08-skills/
└── agents/         ← Junction → ../09-agents/
```

| 名称 | 类型 | 说明 |
|------|------|------|
| `rules/` | 真实目录 | `01-factory-core.mdc`、`02-docs-and-tasks.mdc` |
| `prompts/` | Junction | 角色 Prompt（见 `06-prompts/README.md`） |
| `skills/` | Junction | 各域 `*/SKILL.md`（见 `08-skills/README.md`） |
| `agents/` | Junction | 多角色 Agent（见 `09-agents/README.md`） |
| `settings.json` | 文件 | 如 `enableRules`、`projectMode` |
| `mcp.json` | 文件 | MCP 列表；说明见 `10-knowledge/09-mcp.md` |

## 维护

1. 改 Prompt/Skill/Agent → 改顶层 `06-prompts` / `08-skills` / `09-agents`
2. 改规则 → 只改 `.cursor/rules/*.mdc`
3. 联接损坏时（在项目根）重建：
   ```bat
   mklink /J .cursor\prompts  %CD%\06-prompts
   mklink /J .cursor\skills   %CD%\08-skills
   mklink /J .cursor\agents   %CD%\09-agents
   ```
4. 修改 `mcp.json` / rules 后执行 **Reload Window**
