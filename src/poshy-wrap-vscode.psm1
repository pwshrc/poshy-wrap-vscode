#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest
#Requires -Modules @{ ModuleName = "poshy-lucidity"; RequiredVersion = "0.4.1" }


if ((-not $Env:VSCODE) -and (-not (Test-Command code)) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

function Invoke-VSCodeForPwd {
    &($Env:VSCODE ?? "code") . @args
}
Set-Alias -Name vsc -Value Invoke-VSCodeForPwd

function Invoke-VSCodeAdd {
    &($Env:VSCODE ?? "code") --add @args
}
Set-Alias -Name vsca -Value Invoke-VSCodeAdd

function Invoke-VSCodeDiff {
    &($Env:VSCODE ?? "code") --diff @args
}
Set-Alias -Name vscd -Value Invoke-VSCodeDiff

function Invoke-VSCodeGoto {
    &($Env:VSCODE ?? "code") --goto @args
}
Set-Alias -Name vscg -Value Invoke-VSCodeGoto

function Invoke-VSCodeNewWindow {
    &($Env:VSCODE ?? "code") --new-window Invoke-VSCodeNewWindow
}
Set-Alias -Name vscn -Value vscn

function Invoke-VSCodeReuseWindow {
    &($Env:VSCODE ?? "code") --reuse-window @args
}
Set-Alias -Name vscr -Value Invoke-VSCodeReuseWindow

function Invoke-VSCodeWithWait {
    &($Env:VSCODE ?? "code") --wait @args
}
Set-Alias -Name vscw -Value Invoke-VSCodeWithWait

function Invoke-VSCodeWithUserDataDir {
    &($Env:VSCODE ?? "code") --user-data-dir @args
}
Set-Alias -Name vscu -Value Invoke-VSCodeWithUserDataDir

function Invoke-VSCodeWithExtensionsDir {
    &($Env:VSCODE ?? "code") --extensions-dir @args
}
Set-Alias -Name vsced -Value Invoke-VSCodeWithExtensionsDir

function Invoke-VSCodeInstallExtension {
    &($Env:VSCODE ?? "code") --install-extension @args
}
Set-Alias -Name vscie -Value Invoke-VSCodeInstallExtension

function Invoke-VSCodeUninstallExtension {
    &($Env:VSCODE ?? "code") --uninstall-extension @args
}
Set-Alias -Name vscue -Value Invoke-VSCodeUninstallExtension

function Invoke-VSCodeVerbose {
    &($Env:VSCODE ?? "code") --verbose @args
}
Set-Alias -Name vscv -Value Invoke-VSCodeVerbose

function Invoke-VSCodeWithLog {
    &($Env:VSCODE ?? "code") --log @args
}
Set-Alias -Name vscl -Value Invoke-VSCodeWithLog

function Invoke-VSCodeWithDisableExtensions {
    &($Env:VSCODE ?? "code") --disable-extensions @args
}
Set-Alias -Name vscde -Value Invoke-VSCodeWithDisableExtensions


Export-ModuleMember -Function * -Alias *
