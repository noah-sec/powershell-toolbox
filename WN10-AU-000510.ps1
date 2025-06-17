<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows System event log is at least 32768 KB (32 MB).
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-AU-000510
    
.EXAMPLE
    .\WN10-AU-000510.ps1
#>
#Requires -RunAsAdministrator

# Defines the registry path, value name, and the data to be set for the System event log's maximum size.
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\System\"
$valueName = "MaxSize"
$valueData = 32768

# Checks if the registry path exists and creates it if it doesn't.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'MaxSize' registry value for the System event log.
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type DWord

# Confirms that the registry value has been set.
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
