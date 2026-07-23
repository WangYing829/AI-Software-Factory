# 命名规范

> 占位：统一前后端与库表命名。

## 通用
- 名称表达业务含义，避免无意义缩写
- 同一概念全项目同一用词

## 仓库目录与文档文件
- 统一：`数字-英文名称`（例：`01-business`…`05-api`、`07-tasks/01-todo`、`01-background.md`）
- 索引文件：`README.md`
- 例外：`.cursor/`、根 `README.md`、`.gitignore`、`mcp.json`、`settings.json`、`SKILL.md`

## 建议（待项目确认后固化）
| 对象 | 风格 | 示例 |
|------|------|------|
| Java 类 | PascalCase | `AlarmService` |
| Java 方法/变量 | camelCase | `listAlarms` |
| DB 表/字段 | snake_case | `alarm_event` |
| API 路径 | kebab 或 项目既有风格 | `/api/alarms` |
| Vue 组件 | PascalCase | `AlarmList.vue` |

## 待填
- [ ] 枚举/字典命名
- [ ] 配置项与环境变量命名
