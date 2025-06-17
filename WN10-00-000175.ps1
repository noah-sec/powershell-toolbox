<#
.SYNOPSIS
    This PowerShell script disables and stops the Secondary Logon service (seclogon).
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000175
    
.EXAMPLE
    .\WN10-00-000175.ps1
#>
#Requires -RunAsAdministrator

# Sets the startup type of the "Secondary Logon" service to 'Disabled'.
Set-Service -Name "seclogon" -StartupType Disabled

# Stops the "Secondary Logon" service immediately, terminating any active sessions.
Stop-Service -Name "seclogon" -Force
