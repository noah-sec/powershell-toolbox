

# Defining the common registry path:
$registryPath = "HKLM:\Software\Policies\Microsoft\Windows\WindowsCopilot"

# Defining the registry value name, data, and type:
$valueName = "TurnOffWindowsCopilot"
$valueData = 1
$valueType = "DWord"

# Checking for registry path, if none then creating path:
if (-not (Test-Path $registryPath)) {
    Write-Host "Registry path '$registryPath' not found. Creating it now."
    New-Item -Path $registryPath -Force
} else {
    Write-Host "Registry path '$registryPath' already exists."
}

# Setting the "MinimumPIN" registry value:
Set-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -Type $valueType -Force
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
