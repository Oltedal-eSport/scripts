param($name, $pass)
Install-Module -Name LocalAccounts -AllowClobber -Force
# import-module microsoft.powershell.localaccounts -SkipEditionCheck
$securePass = ConvertTo-SecureString -String $pass -AsPlainText;
$user = New-LocalUser -Name $name -Password $securePass -AccountExpires (Get-Date).AddMinutes(3)
Add-LocalGroupMember -Group "Brukere" -Member $user