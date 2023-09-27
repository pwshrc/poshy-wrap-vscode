#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if ((-not $Env:VSCODE) -and (-not (Test-Command code)) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

function Invoke-VSCodeForPwd {
    &($Env:VSCODE ?? "code") . @args
}
Set-Alias -Name vsc -Value Invoke-VSCodeForPwd
Export-ModuleMember -Function Invoke-VSCodeForPwd -Alias vsc

function Invoke-VSCodeAdd {
    &($Env:VSCODE ?? "code") --add @args
}
Set-Alias -Name vsca -Value Invoke-VSCodeAdd
Export-ModuleMember -Function Invoke-VSCodeAdd -Alias vsca

function Invoke-VSCodeDiff {
    &($Env:VSCODE ?? "code") --diff @args
}
Set-Alias -Name vscd -Value Invoke-VSCodeDiff
Export-ModuleMember -Function Invoke-VSCodeDiff -Alias vscd

function Invoke-VSCodeGoto {
    &($Env:VSCODE ?? "code") --goto @args
}
Set-Alias -Name vscg -Value Invoke-VSCodeGoto
Export-ModuleMember -Function Invoke-VSCodeGoto -Alias vscg

function Invoke-VSCodeNewWindow {
    &($Env:VSCODE ?? "code") --new-window Invoke-VSCodeNewWindow
}
Set-Alias -Name vscn -Value vscn
Export-ModuleMember -Function Invoke-VSCodeNewWindow -Alias vscn

function Invoke-VSCodeReuseWindow {
    &($Env:VSCODE ?? "code") --reuse-window @args
}
Set-Alias -Name vscr -Value Invoke-VSCodeReuseWindow
Export-ModuleMember -Function Invoke-VSCodeReuseWindow -Alias vscr

function Invoke-VSCodeWithWait {
    &($Env:VSCODE ?? "code") --wait @args
}
Set-Alias -Name vscw -Value Invoke-VSCodeWithWait
Export-ModuleMember -Function Invoke-VSCodeWithWait -Alias vscw

function Invoke-VSCodeWithUserDataDir {
    &($Env:VSCODE ?? "code") --user-data-dir @args
}
Set-Alias -Name vscu -Value Invoke-VSCodeWithUserDataDir
Export-ModuleMember -Function Invoke-VSCodeWithUserDataDir -Alias vscu

function Invoke-VSCodeWithExtensionsDir {
    &($Env:VSCODE ?? "code") --extensions-dir @args
}
Set-Alias -Name vsced -Value Invoke-VSCodeWithExtensionsDir
Export-ModuleMember -Function Invoke-VSCodeWithExtensionsDir -Alias vsced

function Invoke-VSCodeInstallExtension {
    &($Env:VSCODE ?? "code") --install-extension @args
}
Set-Alias -Name vscie -Value Invoke-VSCodeInstallExtension
Export-ModuleMember -Function Invoke-VSCodeInstallExtension -Alias vscie

function Invoke-VSCodeUninstallExtension {
    &($Env:VSCODE ?? "code") --uninstall-extension @args
}
Set-Alias -Name vscue -Value Invoke-VSCodeUninstallExtension
Export-ModuleMember -Function Invoke-VSCodeUninstallExtension -Alias vscue

function Invoke-VSCodeVerbose {
    &($Env:VSCODE ?? "code") --verbose @args
}
Set-Alias -Name vscv -Value Invoke-VSCodeVerbose
Export-ModuleMember -Function Invoke-VSCodeVerbose -Alias vscv

function Invoke-VSCodeWithLog {
    &($Env:VSCODE ?? "code") --log @args
}
Set-Alias -Name vscl -Value Invoke-VSCodeWithLog
Export-ModuleMember -Function Invoke-VSCodeWithLog -Alias vscl

function Invoke-VSCodeWithDisableExtensions {
    &($Env:VSCODE ?? "code") --disable-extensions @args
}
Set-Alias -Name vscde -Value Invoke-VSCodeWithDisableExtensions
Export-ModuleMember -Function Invoke-VSCodeWithDisableExtensions -Alias vscde
