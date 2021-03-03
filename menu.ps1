# Run Script as Administrator
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
    Start-Sleep 1
    Write-Host "                                               3"
    Start-Sleep 1
    Write-Host "                                               2"
    Start-Sleep 1
    Write-Host "                                               1"
    Start-Sleep 1
    Start-Process powershell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit
}
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wcloosterman/menu/main/menu_items.csv" -OutFile "C:\Windows\Temp\menu_items.csv"
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module -Name PSScriptMenuGui
Set-Location $PSScriptRoot
Import-Module PSScriptMenuGui -ErrorAction Stop
Show-ScriptMenuGui -csvPath 'C:\Windows\Temp\menu_items.csv' -Verbose
