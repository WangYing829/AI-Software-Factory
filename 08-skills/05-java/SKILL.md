---
name: java
description: Java-specific implementation guidance for this project. Use when writing or refactoring Java backend code, Spring services, or Java tests.
---

# Java Skill

## When
Java/Spring 后端编码与重构时。

## Instructions
1. 先读 API 与架构文档，再改代码
2. 包结构、命名遵循 `10-knowledge/02-naming-conventions.md`、`10-knowledge/01-development-standards.md`
3. 异常与日志可观测；禁止吞异常
4. 接口变更同步 OpenAPI / `05-api/`
5. 相关单测放约定测试目录或 `13-src/tests/`

## Prefer
- 明确分层：controller / service / repository（或项目既有分层）
- DTO 与实体分离（如项目已采用）
