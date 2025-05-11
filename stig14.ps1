#Requires -RunAsAdministrator
auditpol /set /subcategory:"Credential Validation" /Failure:enable
