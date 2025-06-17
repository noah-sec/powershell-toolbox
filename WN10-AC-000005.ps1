<#
.SYNOPSIS
    This PowerShell script sets the account lockout duration to 15 minutes.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AC-000005
    
.EXAMPLE
    .\WN10-AC-000005.ps1
#>
#Requires -RunAsAdministrator

# Sets the duration that a locked-out account remains locked out to 15 minutes.
net accounts /lockoutduration:15
