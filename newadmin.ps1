param($name, $pass)

# Install a module that allows you to work with local accoubts
Install-Module -Name LocalAccounts -AllowClobber -Force

# Set the password variable
$securePass = ConvertTo-SecureString -String $pass -AsPlainText;

# Create and assign user to variable
$user = New-LocalUser -Name $name -Password $securePass

# Add new user to administrator group
Add-LocalGroupMember -Group "Administratorer" -Member $user

# Remove existing default user from administrator group
Remove-LocalGroupMember -Group "Administratorer" -Member "Greencom"
