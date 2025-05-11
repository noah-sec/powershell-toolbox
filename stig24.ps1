#Requires -RunAsAdministrator
auditpol.exe /set /subcategory:"Other Object Access Events" /failure:enable
