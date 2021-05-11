[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
$packages = @{
  "office365business" = "1"
}

foreach ($package in $packages.GetEnumerator()) {
  if ($package.Value -eq '1') {
    choco install $package.Name --force --ignore-checksums -y
  }
