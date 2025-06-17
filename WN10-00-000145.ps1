<#
.SYNOPSIS
    This PowerShell script configures Data Execution Prevention (DEP) for the current boot entry to "OptOut".
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000145
    
.EXAMPLE
    .\WN10-00-000145.ps1
#>
#Requires -RunAsAdministrator

# Executes the BCDEDIT command-line tool. BCDEDIT is used to manage the Boot Configuration Data (BCD) store, which contains boot configuration parameters and controls how the operating system starts.
# The 'nx' option configures Data Execution Prevention (DEP), and 'OptOut' enables DEP for all processes while allowing administrators to manually exclude specific applications.
BCDEDIT /set "{current}" nx OptOut
