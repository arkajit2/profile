# Deploy Profile to GitHub and Cloudflare Pages
# Target 1: GitHub Profile Repo (https://github.com/arkajit2/profile)
# Target 2: Cloudflare Pages (https://arkajit.pages.dev)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   ARKAJIT DAS: PROFILE & CLOUDFLARE PAGES SYNC           " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan

$CurrentDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# 1. Check Git Status
Write-Host "`n[Step 1] Preparing GitHub Profile (arkajit2/profile)..." -ForegroundColor Yellow
$ReadmePath = Join-Path $CurrentDir "README.md"
if (Test-Path $ReadmePath) {
    Write-Host "  Found: $ReadmePath" -ForegroundColor Green
} else {
    Write-Host "  Error: README.md not found in $CurrentDir" -ForegroundColor Red
    exit 1
}

Write-Host "`nTo publish this profile to github.com/arkajit2/profile:" -ForegroundColor Cyan
Write-Host "  1. GitHub repo: https://github.com/arkajit2/profile" -ForegroundColor White
Write-Host "  2. Live GitHub Pages: https://arkajit2.github.io/profile/" -ForegroundColor White
Write-Host "  3. Run the following commands in PowerShell:" -ForegroundColor White
Write-Host "     cd '$CurrentDir'" -ForegroundColor Gray
Write-Host "     git add README.md index.html wrangler.toml" -ForegroundColor Gray
Write-Host "     git commit -m 'Update executive profile for Arkajit Das'" -ForegroundColor Gray
Write-Host "     git push -u origin main" -ForegroundColor Gray

Write-Host "`n[Step 2] Deploying Standalone to Cloudflare Pages (arkajit.pages.dev)..." -ForegroundColor Yellow
Write-Host "To claim 'arkajit.pages.dev' or custom personal domain on Cloudflare:" -ForegroundColor Cyan
Write-Host "     cd '$CurrentDir'" -ForegroundColor Gray
Write-Host "     npx wrangler pages deploy . --project-name=arkajit" -ForegroundColor Gray

Write-Host "`n[Step 3] Fraoula Production Sync..." -ForegroundColor Yellow
Write-Host "  Your profile is already LIVE and built into Fraoula production at:" -ForegroundColor Green
Write-Host "  --> https://www.fraoula.co/arkajit" -ForegroundColor White
Write-Host "  --> https://www.fraoula.co/arkajit-das (301 redirect)" -ForegroundColor White
Write-Host "  --> https://www.fraoula.co/wiki/arkajit (301 redirect)" -ForegroundColor White
Write-Host "`nAll sitemaps and LLM search directories have been updated with priority 1.0." -ForegroundColor Green
