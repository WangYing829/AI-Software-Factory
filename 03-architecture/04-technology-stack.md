# 技术栈

> 与 `00-project.md` 技术栈草稿对齐；版本号落地前可写「待锁定」。

| 层 | 选型 | 版本 | 备注 |
|----|------|------|------|
| 语言/运行时 | Java | 17+ | |
| 后端框架 | Spring Boot | 3.x | |
| 持久化 | MyBatis Plus + MySQL | 8.x | 见数据库规范 |
| 缓存 | Redis | 待定 | 按需 |
| 前端 | Vue 3 + TS + Vite | 3.x | Element Plus |
| 构建 | Maven / pnpm | | |
| 容器 | Docker Compose | | |
| 观测 | Actuator + 日志 | | `/actuator/health` |

## 弃选说明

| 候选 | 未选原因 |
|------|----------|
| | |

## 验收
- [ ] 与 Skills / Knowledge 无冲突
- [ ] 生产镜像 tag 策略已引用部署规范
