Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wcloosterman/menu/main/menu_items.csv" -OutFile "C:\Windows\Temp\menu_items.csv"
Install-Module -Name PSScriptMenuGui
#region Setup
Set-Location $PSScriptRoot
Remove-Module PSScriptMenuGui -ErrorAction SilentlyContinue
try {
    Import-Module PSScriptMenuGui -ErrorAction Stop
}
catch {
    Write-Warning $_
    Write-Verbose 'Attempting to import from parent directory...' -Verbose
    Import-Module '..\'
}
#endregion

Show-ScriptMenuGui -csvPath 'C:\Windows\Temp\menu_items.csv' -Verbose
