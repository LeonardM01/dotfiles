[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module posh-git
Import-Module oh-my-posh
$omp_config = Join-Path $PSScriptRoot ".\leonard.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# Aliases
Set-Alias -Name firefox 'C:\Program Files\Mozilla Firefox\firefox.exe'
Set-Alias -Name katalon 'D:\Program Files\Katalon\katalon.exe'
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name dotnet 'C:\Program Files\dotnet\dotnet.exe'
Set-Alias -Name touch 'ni'
