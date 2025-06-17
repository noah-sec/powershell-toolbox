<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "Removable Storage" access attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000090
    
.EXAMPLE
    .\WN10-AU-000090.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events related to removable storage access.
AuditPol /set /subcategory:"Removable Storage" /success:enable
