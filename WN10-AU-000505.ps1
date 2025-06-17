<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Security event log is at least 1024000 KB (1 GB).
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000505
    
.EXAMPLE
    .\WN10-AU-000505.ps1
#>
#Requires -RunAsAdministrator

# Defines the registry path, value name, and the data to be set for the Security event log's maximum size.
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security\"
$valueName = "MaxSize"
$valueData = 1024000

# Checks if the registry path exists and creates it if it doesn't.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'MaxSize' registry value for the Security event log.
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type DWord

# Confirms that the registry value has been set.
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
