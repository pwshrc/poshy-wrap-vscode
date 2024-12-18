#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if ((-not $Env:VSCODE) -and (-not (Get-Command code -ErrorAction SilentlyContinue)) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
} else {
    . "$PSScriptRoot/poshy-wrap-vscode.ps1"
}
