# 重建 Cursor Junction（Windows）
# 在仓库根目录执行:  .\14-scripts\setup-cursor.ps1
# 需要创建目录联接时可能要求「以管理员身份」或开发人员模式。

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
if (-not (Test-Path (Join-Path $root '00-project.md'))) {
    $root = $PSScriptRoot
    if (-not (Test-Path (Join-Path $root '00-project.md'))) {
        Write-Error "Cannot locate repo root (00-project.md missing)."
    }
}

$cursor = Join-Path $root '.cursor'
if (-not (Test-Path $cursor)) {
    New-Item -ItemType Directory -Path $cursor | Out-Null
    Write-Host "Created .cursor/"
}

$rules = Join-Path $cursor 'rules'
if (-not (Test-Path $rules)) {
    Write-Warning ".cursor/rules/ missing — clone may be incomplete."
} else {
    Write-Host "[OK] .cursor/rules/"
}

$map = [ordered]@{
    'prompts' = '06-prompts'
    'skills'  = '08-skills'
    'agents'  = '09-agents'
}

foreach ($name in $map.Keys) {
    $link = Join-Path $cursor $name
    $src  = Join-Path $root $map[$name]
    if (-not (Test-Path $src)) {
        Write-Warning "Skip $name — source missing: $src"
        continue
    }
    if (Test-Path $link) {
        $item = Get-Item $link -Force
        if ($item.Attributes -band [IO.FileAttributes]::ReparsePoint) {
            Write-Host "[OK] $name -> $($map[$name]) (junction exists)"
            continue
        }
        Write-Warning "$name exists but is not a junction. Remove it manually if you want recreation."
        continue
    }
    $null = cmd /c mklink /J "$link" "$src"
    if ($LASTEXITCODE -ne 0) {
        Write-Error "mklink failed for $name"
    }
    Write-Host "[LINK] $name -> $($map[$name])"
}

Write-Host "Done. Verify with: Get-ChildItem .cursor -Force"
