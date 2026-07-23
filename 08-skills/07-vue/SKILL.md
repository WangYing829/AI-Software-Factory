---
name: vue
description: Vue-specific UI implementation guidance. Use when creating Vue components, pages, routers, or frontend state for this project.
---

# Vue Skill

## When
Vue 组件/页面/路由/状态实现时。

## Instructions
1. 以 `01-business/06-page-design.md`、`02-product/ui/` 与 `05-api/` 为准
2. Composition API + `<script setup lang="ts">`；组件职责单一
3. 权限 / 空态 / 错态 / loading 必须有 UI；对齐 RBAC
4. 不硬编码密钥；枚举与文案优先来自字典或配置
5. API 封装与类型分目录；输出遵循 `06-prompts/05-frontend-vue.md`
6. 路由变更同步页面清单文档
