$Computername = Read-Host -Prompt 'Enter computer name'
$Computer = Get-ADComputer  -Identity $Computername
Get-ADObject -Filter 'objectClass -eq "msFVE-RecoveryInformation"' -SearchBase $Computer.DistinguishedName -Properties whenCreated, msFVE-RecoveryPassword | Sort-Object whenCreated -Descending | Select-Object whenCreated, msFVE-RecoveryPassword