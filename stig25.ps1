#Requires -RunAsAdministrator
auditpol.exe /set /subcategory:"Removable Storage" /failure:enable
