<#
.SYNOPSIS
    This PowerShell script enables auditing for failed "User Account Management" attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000035
    
.EXAMPLE
    .\WN10-AU-000035.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for failure events in the "User Account Management" subcategory.
AuditPol /set /subcategory:"User Account Management" /failure:enable
