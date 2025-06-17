<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "File Share" access attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000082
    
.EXAMPLE
    .\WN10-AU-000082.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events related to file share access.
AuditPol /set /subcategory:"File Share" /success:enable
