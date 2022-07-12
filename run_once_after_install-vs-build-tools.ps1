# Self-elevate the script if required
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-NoExit -File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -FilePath powershell.exe -Verb Runas -ArgumentList $CommandLine
    Exit
  }
}

# Install Visual Studio Desktop Development Workload
& 'C:\Program Files (x86)\Microsoft Visual Studio\Installer\setup.exe' modify --passive --norestart `
    --add "Microsoft.VisualStudio.Workload.VCTools" `
    --add "Microsoft.VisualStudio.Component.VC.Tools.x86.x64" `
    --add "Microsoft.VisualStudio.Component.Windows10SDK.19041" `
    --installPath 'C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools'
