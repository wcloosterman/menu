# Standard Apps
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/wcloosterman/menu/main/Scripts/Standard%20Apps.ps1'))

# Upgrade Windows 10
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/wcloosterman/menu/main/Scripts/Upgrade%20Windows%2010.ps1'))

# Debloat Tools
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/wcloosterman/menu/main/Scripts/Bloatware%20Removal%20Utility%20-%20Manual.ps1'))

# Add Rescue Logo
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/wcloosterman/menu/main/Scripts/Add%20Rescue%20Logo.ps1'))
