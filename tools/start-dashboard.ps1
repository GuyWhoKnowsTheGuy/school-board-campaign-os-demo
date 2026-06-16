param([int]$Port = 8787)
$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root
python -m http.server $Port
