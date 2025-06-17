<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "Other Object Access Events".
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000083
    
.EXAMPLE
    .\WN10-AU-000083.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events related to other object access.
AuditPol /set /subcategory:"Other Object Access Events" /success:enable
