$dir = "C:\Windows\Temp"
New-Item -ItemType Directory -Force -Path 'C:\Support'
$webClient = New-Object System.Net.WebClient
$url = 'https://go.microsoft.com/fwlink/?LinkID=799445'
$file = "$($dir)\Win10Upgrade.exe"
$webClient.DownloadFile($url,$file)
Start-Process -FilePath $file -ArgumentList '/quiet /skipeula /auto upgrade /noreboot /dynamicupdate disable /copylogs $dir'
