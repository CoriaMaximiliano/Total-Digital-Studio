<#
.SYNOPSIS
  Publica el sitio corporativo de Total Digital Studio en GitHub Pages.

.EJEMPLO
  cd "F:\AngryAxies\Juego Angry Axies navegador\totalstudio-github"
  .\publicar-totalstudio.ps1
#>
[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"

$siteDir = $PSScriptRoot

# totalstudio.github.io NO es viable: la org "totalstudio" ya existe (otra empresa).
# Opción A (recomendada): org propia TotalDigitalStudio → totaldigitalstudio.github.io
# Opción B (rápida): repo en tu cuenta → coriamaximiliano.github.io/Total-Digital-Studio/
$Mode = "user"
if ($Mode -eq "org") {
  $repoUrl = "https://github.com/TotalDigitalStudio/TotalDigitalStudio.github.io.git"
  $createUrl = "https://github.com/organizations/plan?organization=TotalDigitalStudio"
  $siteUrl = "https://totaldigitalstudio.github.io"
} else {
  $repoUrl = "https://github.com/CoriaMaximiliano/Total-Digital-Studio.git"
  $createUrl = "https://github.com/new?name=Total-Digital-Studio&description=Total+Digital+Studio+-+Sitio+corporativo"
  $siteUrl = "https://coriamaximiliano.github.io/Total-Digital-Studio/"
}

function Ensure-Remote {
  param([string]$Dir, [string]$Url)
  Push-Location $Dir
  try {
    if (-not (Test-Path ".git")) {
      git init -b main
      git add .
      git commit -m "Sitio corporativo Total Digital Studio"
    }
    $remotes = git remote 2>$null
    if ($remotes -match "origin") {
      git remote set-url origin $Url
    } else {
      git remote add origin $Url
    }
  } finally {
    Pop-Location
  }
}

function Push-Repo {
  param([string]$Dir, [string]$CreateUrl)
  Push-Location $Dir
  try {
    Write-Host ""
    Write-Host "=== Total Digital Studio (GitHub Pages) ===" -ForegroundColor Cyan

    $status = git status --porcelain 2>$null
    if ($status) {
      git add .
      git commit -m "Actualizar sitio corporativo Total Digital Studio"
    }

    git push -u origin main 2>&1
    if ($LASTEXITCODE -eq 0) {
      Write-Host "OK: Sitio publicado." -ForegroundColor Green
      Write-Host "URL: $siteUrl" -ForegroundColor White
      Write-Host ""
      Write-Host "Si es la primera vez, activa GitHub Pages en:" -ForegroundColor Yellow
      Write-Host "Settings > Pages > Branch: main / (root)" -ForegroundColor Yellow
      return $true
    }
  } catch {
    # git push escribe errores en stderr
  } finally {
    Pop-Location
  }

  Write-Host ""
  Write-Host "El repositorio remoto aun no existe o no tienes acceso." -ForegroundColor Yellow
  Write-Host "1. Crea el repositorio PUBLICO (sin README inicial):" -ForegroundColor Yellow
  Write-Host "   $CreateUrl" -ForegroundColor White
  Write-Host "3. Vuelve a ejecutar este script." -ForegroundColor Yellow
  Start-Process $CreateUrl
  return $false
}

Ensure-Remote -Dir $siteDir -Url $repoUrl
$ok = Push-Repo -Dir $siteDir -CreateUrl $createUrl
if (-not $ok) { exit 1 }

Write-Host ""
Write-Host "Listo. Tu sitio estara disponible en:" -ForegroundColor Green
Write-Host $siteUrl -ForegroundColor White
