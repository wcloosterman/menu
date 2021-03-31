$packages = @{
  "firefox" = "1"
  "vlc" = "0"
  "google-chrome-for-enterprise" = "1"
  "notepadplusplus" = "0"
  "7zip" = "1"
  "adobereader" = "1"
}

foreach ($package in $packages.GetEnumerator()) {
  if ($package.Value -eq '1') {
    choco install $package.Name --force --ignore-checksums -y
  }
}
