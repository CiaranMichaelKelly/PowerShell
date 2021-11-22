# Set Error Text Color
(Get-Host).PrivateData.ErrorForegroundColor = "green"
 
# Setting directory location
Set-Location C:\Dev\PowerShell

#Start with a clear screen
Clear-Host

#import docker module for tab completion
Import-Module posh-docker

#Welcome Message
Write-Host "Computer name and user: $env:ComputerName\$env:UserName" -ForegroundColor Cyan
 
#Version information
Write-Host "Powershell version information:"
$PSversiontable.PSVersion