#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"Credential Validation" /Failure:enable
