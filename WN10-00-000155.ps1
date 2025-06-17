<#
.SYNOPSIS
    This PowerShell script disables the Windows PowerShell Version 2 Root optional feature.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000155
    
.EXAMPLE
    .\WN10-00-000155.ps1
#>
#Requires -RunAsAdministrator

# Disables the Windows PowerShell Version 2 Root optional feature on the online operating system.
Disable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowerShellV2Root
