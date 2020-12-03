
#some resources are "locked", this is to stop accidental deletion. But I want to burn EVERYTHING.
Get-AzResourceLock | Remove-AzResourceLock -Force

#Burn it. Burn it down to the ground!
Get-AzResource | Remove-AzResource -force

