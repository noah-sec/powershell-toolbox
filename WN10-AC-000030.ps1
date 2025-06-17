<#
.SYNOPSIS
    This PowerShell script sets the minimum password age to 1 day.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AC-000030
    
.EXAMPLE
    .\WN10-AC-000030.ps1
#>
#Requires -RunAsAdministrator

# Sets the minimum number of days a password must be kept before it can be changed to 1 day.
net accounts /minpwage:1
