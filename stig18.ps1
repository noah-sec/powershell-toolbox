#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"Process Creation" /success:enable
