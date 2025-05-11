

# Defining the common registry path:
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"

# Configuring advanced startup (to use Bitlocker without TPM):
$valueName1 = "UseAdvancedStartup"
$valueData1 = 1

# Configuring startup PIN with TPM:
$valueName2 = "UseTPMPIN"
$valueData2 = 1

# Checking for registry path, if none then creating path:
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Setting value for UseAdvancedStartup:
Set-ItemProperty -Path $registryPath -Name $valueName1 -Value $valueData1 -Type DWord -Force
# Setting output message:
Write-Host "Registry value '$valueName1' set to '$valueData1' at '$registryPath'."

# Setting value for UseTPMPIN:
Set-ItemProperty -Path $registryPath -Name $valueName2 -Value $valueData2 -Type DWord -Force
# Setting output message:
Write-Host "Registry value '$valueName2' set to '$valueData2' at '$registryPath'."
Write-Host "Script complete."
