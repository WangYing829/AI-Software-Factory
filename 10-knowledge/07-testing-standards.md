# 测试规范

## 硬规则

1. **覆盖率门槛**（JaCoCo / 等价工具）：整体行覆盖率 `> 80%`；核心域模块（领域服务 / 计费 / 权限等）`> 90%`
2. **命名**：`XxxServiceTest`、`XxxControllerTest`、`XxxMapperTest`；展示名说明场景
3. **Mock 边界**：只 Mock **跨服务调用与 IO**（HTTP 客户端、消息、OSS、时钟可注入）；**业务逻辑跑真实代码**，禁止 Mock 被测类自身
4. **用例可判定**：每条用例有明确 Given/When/Then；禁止无断言测试
5. **修 Bug 补回归**：`07-tasks/04-bug-tracking.md` 关闭前应有对应用例或手工清单豁免说明

## 分层

| 层 | 关注点 | 默认位置 |
|----|--------|----------|
| 单测 | 领域规则、纯逻辑 | `13-src/tests/` 或模块内 `*Test` |
| 集成 | API + DB（Testcontainers 等） | 同上 |
| E2E | 主路径 UI/接口 | Playwright 等，报告进 `16-output/reports/` |

## 必测清单

- [ ] 主流程
- [ ] 异常与边界
- [ ] 权限（未登录 / 无角色 / 越权）
- [ ] 与 `05-api/` 契约一致

## 产出

| 类型 | 位置 |
|------|------|
| 自动化测试 | `13-src/tests/` |
| Bug 跟踪 | `07-tasks/04-bug-tracking.md` |
| 报告 | `16-output/reports/` |
