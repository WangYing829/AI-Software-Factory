---
name: python
description: Python scripting and service guidance. Use when writing tools under 14-scripts, data jobs, or Python services.
---

# Python Skill

## When
编写 `14-scripts/`、`14-scripts/tools/` 或 Python 服务时。

## Instructions
1. 说明入口命令、依赖、参数；优先 `argparse`/`typer`
2. 配置与密钥走环境变量；禁止提交 `.env`
3. 失败要有明确非零退出码与错误信息；破坏性操作提供 `--dry-run`
4. 可复用逻辑放 `14-scripts/tools/`，一次性脚本放 `14-scripts/`
5. 输出结构遵循 `06-prompts/04-backend-python.md`
6. 服务代码进 `13-src/` 时对齐 `03-architecture/02-module-design.md`
