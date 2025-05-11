#Requires -RunAsAdministrator

# Setting lockout threshold:
net accounts /lockoutthreshold:3

# Checking current setting:
net accounts
