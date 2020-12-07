#This is assuming you have already created an Elastic cluster. With further iterations I would ideally have the elastic cluster creation contained within code. 
#This script also assumed you have downloaded and unzipped the elastic agent install files onto the target server.
#Ideally we would get the powershell script doing a curl the elastic agent install files and handling the unzip itself.

cd 'C:\Program Files\elastic-agent\' 

.\elastic-agent.exe install -f --kibana-url="kibana url here" --enrollment-token="enrollment token here"
#In a public repo, bad idea to have these. As anyone could enroll their machine to my elastic set up.

cd 'C:\Program Files\Metricbeat\'
.\install-service-metricbeat.ps1
.\metricbeat.exe modules enable mssql
.\metricbeat.exe modules enable sql
Start-Service metricbeat
