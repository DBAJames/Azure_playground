#  Install-Module -Name Az -AllowClobber -Scope CurrentUser


Connect-AzAccount


$tenantId = (Get-AzContext).Tenant.Id

$tenantId

Get-AzSubscription

Get-InstalledModule -Name "Az"