# 02 - Product（产品定义）

## 当前阶段目标
将业务梳理结果转化为可执行的产品需求文档。

## 文件说明

| 文件 | 内容 |
|------|------|
| `01-product-requirements.md` | 产品需求文档（PRD） |
| `02-user-stories.md` | 用户故事清单 |
| `03-product-roadmap.md` | 产品路线图与里程碑 |
| `04-competitive-analysis.md` | 竞品分析 |
| `05-prd-template.md` | PRD 模板（供复用） |
| `ui/` | UI 补充材料（线框、标注；主页面清单仍以 `01-business/06-page-design.md` 为准） |

## AI 协作方式

```
输入：01-business/ 的全部文档
Prompt：06-prompts/01-product-manager.md
输出：02-product/ 的 PRD 和用户故事
```

1. 将 `01-business/` 的所有文档作为 Context
2. 使用 `06-prompts/01-product-manager.md` 驱动 AI 生成 PRD
3. AI 生成的 PRD 需要人工 Review 和确认
4. 确认后拆分为用户故事，进入 `07-tasks/02-backlog.md`
