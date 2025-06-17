<#
.SYNOPSIS
    This PowerShell script disables webcam access for Universal Windows Platform (UWP) apps.
    
.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-CC-000007
    
.EXAMPLE
    .\WN10-CC-000007.ps1
#>
#Requires -RunAsAdministrator

# Defines the registry path, value name, and data to deny webcam access for UWP apps.
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam"
$valueName = "Value"
$valueData = "Deny" # Enclose "Deny" in quotes as it's a string, not a numerical DWord type

# Checks if the registry path exists and creates it if not.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'Value' registry entry to "Deny", preventing UWP apps from accessing the webcam.
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type String # Change Type to String

# Confirms that the registry value has been set.
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
