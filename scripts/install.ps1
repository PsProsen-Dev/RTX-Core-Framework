# ***(RTX⚡)*** Core Framework Installer for Windows
# By Prosenjit Paul (PsProsen-Dev) | github.com/PsProsen-Dev/RTXCoreFramework

$ErrorActionPreference = "Stop"

Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "   ***(RTX⚡)*** Core Framework Installer   " -ForegroundColor Yellow -BackgroundColor Black
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "🚀 Launching omnipresence synchronization..."

# 1. Paths & Directories Setup
$UserHome = $env:USERPROFILE
$MasterCopyPath = Join-Path $UserHome "RTXCoreFramework.md"
$SourceUrl = "https://raw.githubusercontent.com/PsProsen-Dev/RTXCoreFramework/master/framework/RTXCoreFramework.md"

$TargetFiles = @(
    @{ Path = (Join-Path $UserHome ".gemini\GEMINI.md"); Name = "Google Gemini System Instructions" },
    @{ Path = (Join-Path $UserHome ".codex\AGENTS.md"); Name = "Codex CLI Agent Configurations" },
    @{ Path = (Join-Path $UserHome "CLAUDE.md"); Name = "Claude Code / Claude Home Directives" },
    @{ Path = (Join-Path $UserHome "AGENTS.md"); Name = "Universal Fallback Agent Rules" },
    @{ Path = (Join-Path $UserHome ".cursor\rules\RTXCoreFramework.mdc"); Name = "Cursor IDE Global MDC Rules" },
    @{ Path = (Join-Path $env:APPDATA "Code\User\copilot-instructions.md"); Name = "GitHub Copilot VS Code Instructions" }
)

# 2. Retrieve Framework File
Write-Host "⏳ Fetching master config file..." -NoNewline
try {
    # Check if local framework exists first (if run inside repo)
    if (Test-Path "framework/RTXCoreFramework.md") {
        Copy-Item "framework/RTXCoreFramework.md" $MasterCopyPath -Force
        Write-Host " [OK] (Loaded from local repository workspace)" -ForegroundColor Green
    } else {
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-WebRequest -Uri $SourceUrl -OutFile $MasterCopyPath -UseBasicParsing
        Write-Host " [OK] (Downloaded from GitHub master)" -ForegroundColor Green
    }
    Write-Host "✅ Master copy saved successfully to: $MasterCopyPath" -ForegroundColor Green
} catch {
    Write-Host " [FAIL]" -ForegroundColor Red
    Write-Host "❌ Error fetching framework: $_" -ForegroundColor Red
    Exit 1
}

# 3. Propagate to Target Folders
Write-Host "`n⚙️ Propagating configurations to local AI configurations:"
foreach ($Target in $TargetFiles) {
    $DestPath = $Target.Path
    $DestDir = Split-Path $DestPath -Parent
    $DestName = $Target.Name

    Write-Host "⏳ Configuring $DestName..." -NoNewline
    try {
        if (-not (Test-Path $DestDir)) {
            New-Item -ItemType Directory -Path $DestDir -Force | Out-Null
        }
        Copy-Item $MasterCopyPath $DestPath -Force
        Write-Host " [OK]" -ForegroundColor Green
    } catch {
        Write-Host " [SKIP] (Directory/Tool not found or permission denied)" -ForegroundColor Yellow
    }
}

Write-Host "`n=============================================" -ForegroundColor Cyan
Write-Host "✅ (RTX⚡) Global Omnipresence setup complete!" -ForegroundColor Green
Write-Host "🚀 Happy Vibe Coding in your Mother Tongue!" -ForegroundColor Yellow
Write-Host "=============================================" -ForegroundColor Cyan
