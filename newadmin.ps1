param($name, $pass)
Install-Module -Name LocalAccounts -AllowClobber -Force
# import-module microsoft.powershell.localaccounts -SkipEditionCheck
$securePass = ConvertTo-SecureString -String $pass -AsPlainText;
$user = New-LocalUser -Name $name -Password $securePass
Add-LocalGroupMember -Group "Administratorer" -Member $user
Remove-LocalGroupMember -Group "Administratorer" -Member "Greencom"