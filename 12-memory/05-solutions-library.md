# 解决方案库

可复用方案条目（配置片段、脚本模式、排查步骤）。

## 条目

| ID | 标题 | 场景 | 步骤摘要 | 关联路径 |
|----|------|------|----------|----------|
| SOL-001 | 重建 Cursor Junction | 新 clone / Junction 丢失 | 执行 `.\14-scripts\setup-cursor.ps1`；若存在非 Junction 空目录先删除 | `14-scripts/setup-cursor.ps1` |
| SOL-002 | 发版核对 | 打 `vX.Y.Z` | 按 release-checklist：挪 Unreleased → 同步版本号 → tag → 点开 CHANGELOG 链接 | `15-templates/release-checklist.md` |
| SOL-003 | 空文档治理 | 阶段文件 0 字节 | 补与同目录已有文档同级的最小骨架，或删除并在 README 标明现场产出 | `整合建议.md` §8.1 |
