New-Item -ItemType Directory -Force -Path C:\Support
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://raw.githubusercontent.com/wcloosterman/menu/main/files/favicon.ico","C:\Support\csv_icon.ico")
$WebClient.DownloadFile("https://raw.githubusercontent.com/wcloosterman/menu/main/files/Commuserv%20RESCUE.url","C:\Support\Commuserv RESCUE.url")
Move-Item -Path "C:\Support\Commuserv RESCUE.url" -Destination "C:\Users\Public\Desktop\Commuserv RESCUE.url" -Force


