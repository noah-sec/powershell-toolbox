<#
.SYNOPSIS
    This PowerShell script disables Windows Copilot.
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000107
    
.EXAMPLE
    .\WN10-00-000107.ps1
#>
#Requires -RunAsAdministrator

# Defines the registry path for Windows Copilot settings.
$registryPath = "HKLM:\Software\Policies\Microsoft\Windows\WindowsCopilot"

# Defines the registry value name, data (to disable Copilot), and data type.
$valueName = "TurnOffWindowsCopilot"
$valueData = 1
$valueType = "DWord"

# Checks if the Windows Copilot registry path exists and creates it if it doesn't.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'TurnOffWindowsCopilot' registry value, disabling Windows Copilot.
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type $valueType -Force
# Confirms that the 'TurnOffWindowsCopilot' registry value has been set.
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
