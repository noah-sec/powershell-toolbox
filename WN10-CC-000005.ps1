<#
.SYNOPSIS
    This PowerShell script disables the camera on the lock screen.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-CC-000005
    
.EXAMPLE
    .\WN10-CC-000005.ps1
#>
#Requires -RunAsAdministrator

# Defines the registry path, value name, and data to disable the lock screen camera.
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization\"
$valueName = "NoLockScreenCamera"
$valueData = 1

# Checks if the registry path exists and creates it if not.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'NoLockScreenCamera' registry value, disabling the camera feature on the lock screen.
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type DWord

# Confirms that the registry value has been set.
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
