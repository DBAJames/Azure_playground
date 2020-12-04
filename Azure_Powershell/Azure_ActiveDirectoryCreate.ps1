# Lol by default the microsoft PSGallery isn't trusted.
#Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted


##### Errr i couldn't get it working, so i just did it in the gui........
# i#m sure theres an easy way of doing it. but more interesting things on the horizon away from AD

#
Install-Module AzureAD -Scope CurrentUser

Connect-AzureAD


New-AzureADServicePrincipal -AppId "6ba9a5d4-8456-4118-b521-9c5ca10cdf84"


Get-Module AzureAD

Get-Module AzureADPreview


Get-PSRepository


$AzureAdCred = Get-Credential
Connect-AzureAD -Credential $AzureAdCred


