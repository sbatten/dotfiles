if ($env:WT_SESSION -ne $null) {
  $env:TERM_PROGRAM = 'windows-terminal'
}

if ($env:TERM_PROGRAM -ne 'vscode') {
  Set-PSReadLineOption -PredictionSource HistoryAndPlugin
  Set-PSReadLineOption -PredictionViewStyle ListView
}

Import-Module -Name Terminal-Icons

if ($env:OS -eq 'Windows_NT') {
    Set-Alias -Name ci -Value code-insiders.cmd
} else {
  Set-Alias -Name ci -Value code-insiders
}

Import-Module z

# oh-my-posh init pwsh --config "~\.prompt-theme.omp.json" | Invoke-Expression
# oh-my-posh init pwsh | Invoke-Expression
# $env:POSH_GIT_ENABLED = $true

fnm env --use-on-cd | Out-String | Invoke-Expression
fnm use --silent-if-unchanged
#region vscode python
#version: 0.1.0
if (($env:TERM_PROGRAM -eq 'vscode') -and ($null -ne $env:VSCODE_PWSH_ACTIVATE)) {
    try {
        Invoke-Expression $env:VSCODE_PWSH_ACTIVATE
    } catch {
        Write-Error "Failed to activate Python environment: $_" -ErrorAction Continue
    }
}
#endregion vscode python

#region rust
. "$HOME/.cargo/env.ps1"
#endregion rust
