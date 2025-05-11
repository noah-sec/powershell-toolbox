#Requires -RunAsAdministrator
# Defining the registry path and registry value:
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam"
$valueName = "Value"
$valueData = Deny

# Checking for registry path, if none then creating path:
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Setting value:
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type DWord

# Setting output message:
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
