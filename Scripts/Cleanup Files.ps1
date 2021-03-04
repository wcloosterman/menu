# Cleanup Files / Folders left over from setting up a new PC/Workstation

# Remove Bloatware Removal Tool
Remove-Item C:\BRU -Recurse -ErrorAction Ignore

# Remove Windows Update Assistant
$dt=[environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
Remove-Item -Path "$dt\Windows 10 Update Assistant.lnk" -Force

# Remove files in C:\Windows\TEMP
Remove-Item -Path "C:\Windows\Temp\*.bat" -Force
Remove-Item -Path "C:\Windows\Temp\*.ps1" -Force
