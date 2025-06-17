<#
.SYNOPSIS
    This PowerShell script enables auditing for failed "Credential Validation" attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000005
    
.EXAMPLE
    .\WN10-AU-000005.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for failure events in the "Credential Validation" subcategory.
AuditPol /set /subcategory:"Credential Validation" /failure:enable
