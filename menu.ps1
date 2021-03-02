Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wcloosterman/menu/main/menu_items.csv" -OutFile "C:\Windows\Temp\menu_items.csv"
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module -Name PSScriptMenuGui
Set-Location $PSScriptRoot
Import-Module PSScriptMenuGui -ErrorAction Stop
Show-ScriptMenuGui -csvPath 'C:\Windows\Temp\menu_items.csv' -Verbose
