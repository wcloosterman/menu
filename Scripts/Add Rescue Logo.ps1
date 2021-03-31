$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://github.com/wcloosterman/menu/raw/main/files/Commuserv%20RESCUE%20Icon.zip","C:\Windows\Temp\CSV_ICON.ZIP")
Expand-Archive C:\Windows\Temp\CSV_ICON.ZIP C:\Windows\TEMP -Force
Move-Item -Path "C:\Windows\TEMP\Commuserv RESCUE.url" -Destination "C:\Users\Public\Desktop\Commuserv RESCUE.url" -Force
Move-Item -Path "C:\Windows\TEMP\favicon.ico" -Destination "C:\Windows" -Force
