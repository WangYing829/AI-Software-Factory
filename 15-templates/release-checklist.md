# 发版检查清单（Release Checklist）

适用于打 `vX.Y.Z` 标签并更新 `CHANGELOG.md` 之前。

## 1. 版本与文档

- [ ] `CHANGELOG.md`：将 `[Unreleased]` 挪到新版本节，日期正确
- [ ] `00-project.md` / 根 `README.md` 当前版本号已同步
- [ ] 无密钥、无生产连接串进入本次提交

## 2. 质量门禁

- [ ] 主流程冒烟通过（或注明豁免原因）
- [ ] 关键自动化测试通过
- [ ] Review / CI（如有）已通过

## 3. 标签与链接

```powershell
# 打标签（示例）
git tag -a vX.Y.Z -m "Release vX.Y.Z"
git push origin vX.Y.Z

# 核对
git tag -l "v*"
# 浏览器打开 CHANGELOG 末尾 compare / releases 链接，确认非 404
```

- [ ] 本地 `git tag -l` 可见本版本
- [ ] 远端 tag 已推送
- [ ] `CHANGELOG.md` 底部 `[X.Y.Z]` / `[Unreleased]` URL 可访问

## 4. 发布后

- [ ] 通知干系人 / 更新 `11-context/04-project-status.md`
- [ ] 经验与坑写入 `12-memory/`（24h 内）
