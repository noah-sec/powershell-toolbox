

# Setting max password age (in days):
$maxPasswordAgeDays = 90

net accounts /maxpwage:$maxPasswordAgeDays
Write-Host "Maximum password age for local accounts set to $maxPasswordAgeDays days."

# To view current settings
net accounts
