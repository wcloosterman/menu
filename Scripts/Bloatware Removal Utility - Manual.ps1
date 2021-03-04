# Bloatware Removal Utility

# Make Directories
New-Item -ItemType Directory -Force -Path 'C:\BRU'
New-Item -ItemType Directory -Force -Path 'C:\BRU\BRU-uninstall-helpers'

# Download helper files
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/arcadesdude/BRU/master/Bloatware-Removal-Utility.bat" -outfile "C:\BRU\Bloatware-Removal-Utility.bat"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/arcadesdude/BRU/master/Bloatware-Removal-Utility.ps1" -outfile "C:\BRU\Bloatware-Removal-Utility.ps1"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/OfficeDev/Office-IT-Pro-Deployment-Scripts/master/Office-ProPlus-Deployment/Deploy-OfficeClickToRun/OffScrubc2r.vbs" -outfile "C:\BRU\BRU-uninstall-helpers\OffScrubc2r.vbs"

# Download static helper files

Invoke-WebRequest -Uri "https://github.com/wcloosterman/menu/raw/main/scripts/BRU-uninstall-helpers.zip" -outfile "C:\Windows\TEMP\BRU-Helpers.zip"
Expand-Archive -Path C:\Windows\TEMP\BRU-Helpers.zip -DestinationPath C:\BRU\ -Force

# Run BRU
Start-Process "cmd.exe"  "/c C:\BRU\Bloatware-Removal-Utility.bat"
Exit
