<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "Process Creation" events.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000050
    
.EXAMPLE
    .\WN10-AU-000050.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events in the "Process Creation" subcategory.
AuditPol /set /subcategory:"Process Creation" /success:
