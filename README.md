
# New Machine
## Prerequesites
1. Until a newer version of WinGet is stable, you must start the Microsoft Store and Sign In with an account

## Applying dotfiles

1. Bypass the execution policy for the powershell to allow the run_once_scripts to run
2. Install `(irm -useb https://chezmoi.io/get.ps1) | powershell -c -`
3. `~\bin\chezmoi.exe init --apply sbatten`
4. During installation, the font install is not silent, so you must click install.
5. After installation, the VS Build Tools will still be installing the Desktop Development Workload. You can verify it is done by attempting to open the Visual Studio Installer. Only one instance can run at a time.