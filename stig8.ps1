#Requires -RunAsAdministrator
Set-Service -Name "seclogon" -StartupType Disabled
Stop-Service -Name "seclogon" -Force
