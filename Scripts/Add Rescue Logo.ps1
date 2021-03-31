New-Item -ItemType Directory -Force -Path C:\Support
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/wcloosterman/menu/raw/main/files/Commuserv%20RESCUE%20Icon.zip","C:\Support\CSV_ICON.ZIP")
Expand-Archive C:\Support\CSV_ICON.ZIP C:\Support -Force
Move-Item -Path "C:\Support\Commuserv RESCUE.url" -Destination "C:\Users\Public\Desktop\Commuserv RESCUE.url" -Force
Move-Item -Path "C:\Support\favicon.ico" -Destination "C:\Windows" -Force
