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

Show-ScriptMenuGui -csvPath 'https://raw.githubusercontent.com/wcloosterman/menu/main/menu_items.csv' -Verbose
