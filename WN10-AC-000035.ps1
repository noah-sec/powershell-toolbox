<#
.SYNOPSIS
    This PowerShell script sets the minimum password length to 14 characters.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AC-000035
    
.EXAMPLE
    .\WN10-AC-000035.ps1
#>
#Requires -RunAsAdministrator

# Sets the minimum number of characters required for a user's password to 14.
net accounts /minpwlen:14
