If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    throw "You didn't run this script as an Administrator. Please start Powershell as an administrator and run again."
}
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wcloosterman/menu/main/choco_menu.csv" -OutFile "C:\Windows\Temp\choco_menu.csv"
Install-Module -Name PSScriptMenuGui
Set-Location $PSScriptRoot
Import-Module PSScriptMenuGui -ErrorAction Stop
Show-ScriptMenuGui -csvPath 'C:\Windows\Temp\menu_items.csv' -Verbose
