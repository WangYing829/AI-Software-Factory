---
name: vue
description: Vue-specific UI implementation guidance. Use when creating Vue components, pages, routers, or frontend state for this project.
---

# Vue Skill

## When
Vue 组件/页面/路由/状态实现时。

## Instructions
1. 以 `02-product/ui/` 与 API 契约为准
2. 组件职责单一；复杂逻辑抽 composable（若项目使用）
3. 权限与空态/错态要有明确 UI
4. 不硬编码应由配置或字典驱动的文案/枚举（若文档有约定）
