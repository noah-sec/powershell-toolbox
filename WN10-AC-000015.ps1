<#
.SYNOPSIS
    This PowerShell script sets the observation window for account lockout to 15 minutes.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AC-000015
    
.EXAMPLE
    .\WN10-AC-000015.ps1
#>
#Requires -RunAsAdministrator

# Sets the time period during which a failed logon attempt counts towards the lockout threshold to 15 minutes.
net accounts /lockoutwindow:15
