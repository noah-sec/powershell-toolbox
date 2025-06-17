<#
.SYNOPSIS
    This PowerShell script enables auditing for successful "Group Membership" changes.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000060
    
.EXAMPLE
    .\WN10-AU-000060.ps1
#>
#Requires -RunAsAdministrator

# Configures the audit policy to enable auditing for success events in the "Group Membership" subcategory.
AuditPol /set /subcategory:"Group Membership" /success:enable
