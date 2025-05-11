#Requires -RunAsAdministrator
& auditpol.exe /set /subcategory:"Group Membership" /success:enable
