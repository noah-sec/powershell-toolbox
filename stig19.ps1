#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"Account Lockout" /failure:enable
