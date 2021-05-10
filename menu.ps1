If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    throw "You didn't run this script as an Administrator. Please start Powershell as an administrator and run again."
}
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/wcloosterman/menu/main/menu_items.csv" -OutFile "C:\Windows\Temp\menu_items.csv"
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module -Name PSScriptMenuGui
Set-Location $PSScriptRoot
Import-Module PSScriptMenuGui -ErrorAction Stop
$params = @{
    csvPath = 'C:\Windows\Temp\menu_items.csv'
    windowTitle = 'Commuserv Shared Scripts'
    buttonForegroundColor = 'Azure'
    buttonBackgroundColor = '#00a3ae'
    hideConsole = $true
    noExit = $true
    Verbose = $true
}
Show-ScriptMenuGui @params
