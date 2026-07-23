---
name: docker
description: Docker and compose configuration guidance. Use when editing Dockerfiles, compose files, or container-related deploy assets.
---

# Docker Skill

## When
编写/修改 Dockerfile、compose、容器相关配置时。

## Instructions
1. 文件放 `14-scripts/docker/`
2. 区分 build 参数与运行环境变量
3. 不把密钥写进镜像或 compose 明文
4. 同步 `03-architecture/06-deployment-architecture.md` 启动与验证步骤
