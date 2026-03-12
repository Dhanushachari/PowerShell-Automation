# Create, delete, unlock local users (demo)
# Author: Dhanush Achari

# Create a new user
$UserName = "JohnDoe"
$Password = ConvertTo-SecureString "TempP@ss123" -AsPlainText -Force
New-LocalUser -Name $UserName -Password $Password -FullName "John Doe" -Description "Test User"

# Unlock user (if locked)
Unlock-LocalUser -Name $UserName

# Delete user
# Remove-LocalUser -Name $UserName

Write-Host "User management script executed."
