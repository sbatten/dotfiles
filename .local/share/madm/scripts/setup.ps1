if ($IsWindows) {
  # Create a file at $profile that executes ~/.config/powershell/Microsoft.PowerShell_profile.ps1.ps1
  if (-not (Test-Path -Path $profile)) {
      New-Item -ItemType File -Path $profile -Force
  }
  Add-Content -Path $profile -Value '. "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1.ps1"'
}