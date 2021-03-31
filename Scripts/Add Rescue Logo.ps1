$ErrorActionPreference = "SilentlyContinue"
New-Item -ItemType Directory -Force -Path C:\Support
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/wcloosterman/menu/raw/main/files/RESCUE.zip","C:\Support\RESCUE.zip")
Expand-Archive "C:\Support\RESCUE.zip" -DestinationPath "C:\Support"
Move-Item -Path "C:\Support\Commuserv RESCUE.url" -Destination "C:\Users\Public\Desktop\Commuserv RESCUE.url" -Force
Remove-Item -Path "C:\Support\RESCUE.zip"
