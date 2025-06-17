<#
.SYNOPSIS
    This PowerShell script sets the maximum password age for user accounts to 90 days.

.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000090 
    
.EXAMPLE
    .\WN10-00-000090.ps1
#>
#Requires -RunAsAdministrator

# This command sets the maximum password age for user accounts on the local system to 90 days.
net accounts /maxpwage:90
