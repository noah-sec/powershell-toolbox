<#
.SYNOPSIS
    This PowerShell script enables auditing for failed "Removable Storage" access attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000085
    
.EXAMPLE
    .\WN10-AU-000085.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for failure events related to removable storage access.
AuditPol /set /subcategory:"Removable Storage" /failure:enable
