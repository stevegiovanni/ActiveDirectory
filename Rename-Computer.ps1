$OldPCName = Read-Host -Prompt 'Enter PC to rename'
$NewPCName = Read-Host -Prompt 'Enter new PC name'
$Credentials = Read-Host - Prompt 'Enter your domain\username'
Rename-computer –computername $OldPCName –newname $NewPCName –domaincredential $Credentials –force –restart