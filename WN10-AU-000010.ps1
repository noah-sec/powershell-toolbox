<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "Credential Validation" attempts.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000010
    
.EXAMPLE
    .\WN10-AU-000010.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events in the "Credential Validation" subcategory.
AuditPol /set /subcategory:"Credential Validation" /success:enable
