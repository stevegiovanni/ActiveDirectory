Import-Module ActiveDirectory 
$SourceGroup = Read-Host -Prompt 'Enter the group to copy from'
$DestGroup = Read-Host -Prompt 'Enter the group to copy to'
$users = Get-ADGroupMember -Identity $SourceGroup | Select-Object SamAccountName
Add-ADGroupMember -Identity $DestGroup -Members $users