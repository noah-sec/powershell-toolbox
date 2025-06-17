<#
.SYNOPSIS
    This PowerShell script configures BitLocker to allow enhanced startup options, including the use of a startup PIN with a Trusted Platform Module (TPM).

.DESCRIPTION
    Requires elevated PowerShell session (run as Administrator).
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000031
    
.EXAMPLE
    .\WN10-00-000031.ps1
#>
#Requires -RunAsAdministrator

# Defines the common registry path for BitLocker settings.
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"

# Defines the registry value to enable advanced startup options for BitLocker.
$valueName1 = "UseAdvancedStartup"
$valueData1 = 1

# Defines the registry value to require a startup PIN when BitLocker is used with a TPM.
$valueName2 = "UseTPMPIN"
$valueData2 = 1

# Checks if the BitLocker registry path exists and creates it if it doesn't.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'UseAdvancedStartup' registry value.
Set-ItemProperty -Path $registryPath -Name $valueName1 -Value $valueData1 -Type DWord -Force
# Confirms that the 'UseAdvancedStartup' registry value has been set.
Write-Host "Registry value '$valueName1' set to '$valueData1' at '$registryPath'."

# Sets the 'UseTPMPIN' registry value.
Set-ItemProperty -Path $registryPath -Name $valueName2 -Value $valueData2 -Type DWord -Force
# Confirms that the 'UseTPMPIN' registry value has been set.
Write-Host "Registry value '$valueName2' set to '$valueData2' at '$registryPath'."
Write-Host "Script complete."
