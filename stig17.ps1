#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"PNP Activity" /success:enable
