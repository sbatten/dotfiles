if ($env:OS -eq 'Windows_NT') {
  # Create a file at $profile that executes ~/.config/powershell/profile.ps1
  if (-not (Test-Path -Path $profile)) {
      New-Item -ItemType File -Path $profile -Force
  }
  Add-Content -Path $profile -Value '. "$HOME/.config/powershell/profile.ps1"'
}