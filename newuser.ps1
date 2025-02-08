#Run on a local session

$pass = "test";
$name = "Tobias"
Install-Module -Name LocalAccounts -AllowClobber -Force
# import-module microsoft.powershell.localaccounts -SkipEditionCheck
$securePass = ConvertTo-SecureString -String $pass -AsPlainText;
$user = New-LocalUser -Name $name -Password $securePass
Add-LocalGroupMember -Group "Brukere" -Member $user