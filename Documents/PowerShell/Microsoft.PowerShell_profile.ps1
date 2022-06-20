Import-Module oh-my-posh
Set-PoshPrompt -Theme marcduiker
Enable-PoshTransientPrompt

Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module -Name Terminal-Icons

Set-Alias -Name ci -Value code-insiders.cmd

nvs use auto | Out-Null
nvs auto on | Out-Null

Import-Module z
