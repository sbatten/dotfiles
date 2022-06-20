Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

Set-Alias -Name ci -Value code-insiders.cmd
Set-Alias -Name chezmoi -Value ~/bin/chezmoi.exe

nvs use auto | Out-Null
nvs auto on | Out-Null

Import-Module z

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\marcduiker.omp.json" | Invoke-Expression
Enable-PoshTransientPrompt