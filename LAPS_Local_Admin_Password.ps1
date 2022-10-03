$Computer = Read-Host -Prompt 'Enter computer name'
Get-ADComputer -Properties ms-Mcs-AdmPwd -Identity $Computer | Select-Object Name,ms-Mcs-AdmPwd