#Requires -RunAsAdministrator
auditpol.exe /set /subcategory:"File Share" /success:enable
