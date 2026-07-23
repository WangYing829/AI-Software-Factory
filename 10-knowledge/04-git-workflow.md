# Git 工作流规范

## 分支模型
- `main`: 生产分支，只接受合并请求
- `develop`: 开发分支，日常开发基于此
- `feature/*`: 功能分支，从 develop 切出
- `bugfix/*`: Bug 修复分支
- `release/*`: 发布分支

## 提交规范
```
<type>(<scope>): <subject>

<body>

<footer>
```

### Type
- `feat`: 新功能
- `fix`: Bug 修复
- `docs`: 文档更新
- `style`: 代码格式（不影响功能）
- `refactor`: 重构
- `test`: 测试相关
- `chore`: 构建/工具相关

### 示例
```
feat(user): 添加用户登录功能

- 实现 JWT Token 认证
- 添加登录失败锁定机制

Closes #123
```

## 合并规范
1. 功能开发完成后，创建 PR 到 develop
2. PR 必须通过 Code Review
3. PR 必须通过 CI 检查
4. 使用 Squash Merge 保持历史整洁
