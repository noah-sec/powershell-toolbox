#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"Credential Validation" /Success:enable
