<#
.SYNOPSIS
    This PowerShell script enables auditing for failed "Other Object Access Events".
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000084
    
.EXAMPLE
    .\WN10-AU-000084.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for failure events related to other object access.
AuditPol /set /subcategory:"Other Object Access Events" /failure:enable
