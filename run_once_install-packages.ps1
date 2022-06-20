# Install Keyboard Layout
$home\.local\share\chezmoi\usdhkint\usdhkint_amd64.msi /qn

# Install winget Packages
winget import --accept-source-agreements --accept-package-agreements $home\.local\share\chezmoi\winget.json

# Refresh Path
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

# Setup Node/Yarn
nvs add lts
nvs use lts
npm install --location=global yarn
