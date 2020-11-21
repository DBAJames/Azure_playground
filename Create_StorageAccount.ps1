# put resource group in a variable so you can use the same group name going forward,
# without hard-coding it repeatedly

Get-InstalledModule -Name "Az"

$resourceGroup = "storage-resource-group_JA"
$location = "westeu"
New-AzResourceGroup -Name $resourceGroup -Location $location