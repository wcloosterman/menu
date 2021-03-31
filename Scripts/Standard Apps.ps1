[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
$packages = @{
  "firefox" = "1"
  "google-chrome-for-enterprise" = "1"
  "7zip" = "1"
  "adobereader" = "1"
}

foreach ($package in $packages.GetEnumerator()) {
  if ($package.Value -eq '1') {
    choco install $package.Name --force --ignore-checksums -y
  }
}
