$Domain = Read-Host -Prompt 'Enter domain name'
#Check replication:
Get-ADReplicationPartnerMetadata -Target $Domain -Scope Domain | Select-Object Partner,Server,LastReplicationSuccess
#Force replication:  (Get-ADDomainController -Filter *).Name | Foreach-Object { repadmin /syncall $_ (Get-ADDomain).DistinguishedName /AdeP  | Out-Null }