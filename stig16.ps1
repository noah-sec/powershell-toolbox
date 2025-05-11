#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"User Account Management" /failure:enable
