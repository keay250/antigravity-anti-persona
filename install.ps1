# Antigravity Anti (安缇) Avatar & Persona One-Click Installer for Windows PowerShell

$ErrorActionPreference = "Stop"

Write-Host ">>> Installing Anti Gravi (安缇) System Persona... <<<" -ForegroundColor Cyan

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ruleSrc = Join-Path $scriptDir "rules\anti_persona.md"
$targetDir = Join-Path $env:USERPROFILE ".gemini\config\rules"

if (!(Test-Path -Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

$targetFile = Join-Path $targetDir "anti_persona.md"

if (Test-Path -Path $ruleSrc) {
    Copy-Item -Path $ruleSrc -Destination $targetFile -Force
} else {
    Write-Host "[!] Local rule not found, downloading from GitHub..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/antigravity-community/antigravity-anti/main/rules/anti_persona.md" -OutFile $targetFile
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
