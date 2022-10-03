$uname = Read-Host "username"
$pass = Read-Host "password" -AsSecureString
$plaintext = (New-Object System.Management.Automation.PSCredential 'N/A',$pass).GetNetworkCredential().Password
$CurrentDomain = "LDAP://" + ([ADSI]"").distinguishedName
$domain = New-Object System.DirectoryServices.DirectoryEntry($CurrentDomain,$uname,$plaintext)
if ($domain.name -eq $null){write-host "Authentication failed - please verify your username and password."}
else {write-host "Successfully authenticated with domain" $domain.name}
Read-Host -Prompt 'Press Enter to exit' 