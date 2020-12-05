# put resource group in a variable so you can use the same group name going forward,
# without hard-coding it repeatedly

#Get-InstalledModule -Name "Az"

$resourceGroup = "storage-resource-group_JA"
$location = "westeurope"
$StorageAccount = "storageaccountja"
New-AzResourceGroup -Name $resourceGroup -Location $location 
New-AzStorageAccount -ResourceGroupName $resourceGroup  -Name $StorageAccount -Location $location   -SkuName Standard_RAGRS   -Kind StorageV2 

