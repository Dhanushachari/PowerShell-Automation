# Script: Create a new user in Active Directory
# Author: Dhanush Achari
# Purpose: Automate user creation

Import-Module ActiveDirectory

# Variables
$FirstName = "John"
$LastName = "Doe"
$Username = "$FirstName.$LastName"
$Password = ConvertTo-SecureString "TempP@ss123" -AsPlainText -Force

# Create User
New-ADUser -Name "$FirstName $LastName" -GivenName $FirstName -Surname $LastName -SamAccountName $Username -AccountPassword $Password -Enabled $true

Write-Host "User $Username created successfully."
