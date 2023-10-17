Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

Set-Alias -Name ci -Value code-insiders.cmd
Set-Alias -Name chezmoi -Value ~/bin/chezmoi.exe

Import-Module z

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\marcduiker.omp.json" | Invoke-Expression

fnm env --use-on-cd | Out-String | Invoke-Expression
