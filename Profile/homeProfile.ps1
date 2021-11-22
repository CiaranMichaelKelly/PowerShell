# Set Error Text Color
(Get-Host).PrivateData.ErrorForegroundColor = "green"
 
# Setting directory location
Set-Location C:\Code\PowerShell

#Start with a clear screen
Clear-Host

#Welcome Message
Write-Host "Computer name and user: $env:ComputerName\$env:UserName" -ForegroundColor Cyan
 
#Version information
Write-Host "Powershell version information:"
$PSversiontable.PSVersion