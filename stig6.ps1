#Requires -RunAsAdministrator
# Suspend BitLocker before making DEP configuration changes.
BCDEDIT /set "{current}" nx OptOut
