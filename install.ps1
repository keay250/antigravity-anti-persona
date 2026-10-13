# Antigravity Anti (安缇) Avatar & Persona One-Click Installer for Windows PowerShell

$ErrorActionPreference = "Stop"

Write-Host ">>> Installing Anti Gravi (安缇) System Persona... <<<" -ForegroundColor Cyan

$targetDir = Join-Path $env:USERPROFILE ".gemini\config\rules"

if (!(Test-Path -Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

$targetFile = Join-Path $targetDir "anti_persona.md"

$scriptDir = if ($MyInvocation.MyCommand.Path) { Split-Path -Parent $MyInvocation.MyCommand.Path } else { "" }
$localRule = if ($scriptDir) { Join-Path $scriptDir "rules\anti_persona.md" } else { "" }

if ($localRule -and (Test-Path -Path $localRule)) {
    Write-Host "[i] 检测到本地规则文件，正在同步..." -ForegroundColor Cyan
    Copy-Item -Path $localRule -Destination $targetFile -Force
} else {
    Write-Host "[i] 正在从 GitHub 同步最新安缇人设规则..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/keay250/antigravity-anti-persona/main/rules/anti_persona.md" -OutFile $targetFile
}

Write-Host "[✔] Successfully installed to $targetFile" -ForegroundColor Green

if (Test-Path -Path ".agents") {
    $projectRuleDir = ".agents\rules"
    if (!(Test-Path -Path $projectRuleDir)) {
        New-Item -ItemType Directory -Path $projectRuleDir -Force | Out-Null
    }
    Copy-Item -Path $targetFile -Destination (Join-Path $projectRuleDir "anti_persona.md") -Force
    Write-Host "[✔] Synced to local .agents\rules\anti_persona.md" -ForegroundColor Green
}

Write-Host "`n✨「安缇·格薇」已正式常驻你的 Antigravity 工作空间！开启新会话即可体验搭档协同！" -ForegroundColor Magenta
