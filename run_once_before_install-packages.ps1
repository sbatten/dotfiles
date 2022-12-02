# Install Keyboard Layout
.\.local\share\chezmoi\usdhkint\usdhkint_amd64.msi /qn

# Install winget Packages
winget import --accept-source-agreements --accept-package-agreements $home\.local\share\chezmoi\winget.json

# Refresh Path
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Install PowerShell Modules
pwsh -NoLogo -NoProfile -Command {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
    Install-Module -Name Terminal-Icons -AcceptLicense
    Install-Module -Name z -AcceptLicense
}

# Setup Node/Yarn
nvs add lts
nvs use lts
nvs link lts
npm install --location=global yarn

# Install Font
Invoke-WebRequest -Uri "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaCode.zip" -OutFile ~/Downloads/CascadiaCode.zip
Expand-Archive -Path ~/Downloads/CascadiaCode.zip -DestinationPath ~/Downloads/CascadiaCode
& "~\Downloads\CascadiaCode\Caskaydia Cove Nerd Font Complete Mono Windows Compatible Regular.otf"