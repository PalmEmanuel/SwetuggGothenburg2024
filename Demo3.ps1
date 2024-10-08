Push-Location ~
Set-PSReadLineOption -PredictionSource None
Import-Module StageCoder

$DemoSteps = @(
    { Get-AzToken -Interactive -TokenCache 'Swetugg2024' }
    { Get-AzToken -TokenCache 'Swetugg2024' }
)

Set-Demo -Demo ($DemoSteps | ForEach-Object { $_.ToString().Trim() } ) -Timing Manual

Clear-Host
Write-Host 'Getting tokens with custom cache' -ForegroundColor Magenta