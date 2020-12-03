
#some resources are "locked", this is to stop accidental deletion. But I want to burn EVERYTHING.
Get-AzResourceLock | Remove-AzResourceLock -Force

Get-AzResource | Remove-AzResource -force

