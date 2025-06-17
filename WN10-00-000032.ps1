<#
.SYNOPSIS
    This PowerShell script configures BitLocker to enforce a minimum PIN length of 6 characters for startup.
    
.NOTES
    Author          : Noah Grayson
    STIG-ID         : WN10-00-000032
    
.EXAMPLE
    .\WN10-00-000032.ps1
#>
#Requires -RunAsAdministrator

# Defines the registry path for BitLocker settings.
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"

# Defines the registry value name, data (minimum PIN length), and data type.
$valueName = "MinimumPIN"
$valueData = 6 
$valueType = "DWord"

# Checks if the BitLocker registry path exists and creates it if it doesn't.
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Sets the 'MinimumPIN' registry value, enforcing a minimum PIN length of 6 characters for BitLocker.
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type $valueType -Force
# Confirms that the 'MinimumPIN' registry value has been set.
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
