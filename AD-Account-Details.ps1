$user = Read-Host -Prompt 'Enter user name, example John.Doe'
Get-ADUser $user -Properties * | 
Select-Object   Name,
                Enabled,
                LockedOut,
                AccountExpirationDate,
                PasswordExpired,
                PasswordLastSet,
                EmailAddress,
                EmployeeID,@{n="BadgeNumber";e={$_.Pager}},
                Department,
                Title,
                @{n="Manager Name";e={Get-ADUser $_.Manager | 
Select-Object -ExpandProperty Name}},extensionAttribute6,@{n="AD Location";e={$_.CanonicalName}}