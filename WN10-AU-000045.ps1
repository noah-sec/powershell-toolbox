<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "PNP Activity" (Plug and Play) events.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000045
    
.EXAMPLE
    .\WN10-AU-000045.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events in the "PNP Activity" subcategory.
AuditPol /set /subcategory:"PNP Activity" /success:enable
