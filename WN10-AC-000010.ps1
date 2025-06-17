<#
.SYNOPSIS
    This PowerShell script sets the account lockout threshold to 3 invalid logon attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AC-000010
    
.EXAMPLE
    .\WN10-AC-000010.ps1
#>
#Requires -RunAsAdministrator

# Sets the number of failed logon attempts that will cause a user account to be locked out to 3.
net accounts /lockoutthreshold:3
