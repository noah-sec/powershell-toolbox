#Requires -RunAsAdministrator

# Setting the reset account lockout counter after:
net accounts /lockoutwindow:15

# Checking current setting:
net accounts
