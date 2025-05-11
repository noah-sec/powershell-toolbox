#Requires -RunAsAdministrator

# Setting lockout duration:
net accounts /lockoutduration:15

# Checking current setting:
net accounts
