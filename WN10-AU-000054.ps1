<#
.SYNOPSIS
    This PowerShell script enables auditing for failed "Account Lockout" events.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000054
    
.EXAMPLE
    .\WN10-AU-000054.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for failure events in the "Account Lockout" subcategory.
AuditPol /set /subcategory:"Account Lockout" /failure:enable
