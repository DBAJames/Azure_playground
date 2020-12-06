#This is assuming you have already created an Elastic cluster, and downloaded and unzipped the install files.
#With further iterations I would ideally have the elastic cluster creation contained within code. 
#This test cluster was created within the elastic gui and deployed to my personal Azure subscription.
#And curl the elastic agent install files to the server and handle the downloading/unzipping within PS.

cd 'C:\Program Files\elastic-agent\' 

.\elastic-agent.exe install -f --kibana-url="kibana url here" --enrollment-token="enrollment token here"
#In a public repo, bad idea to have these. As anyone could enroll their machine to my elastic set up.

cd 'C:\Program Files\Metricbeat\'
.\install-service-metricbeat.ps1
.\metricbeat.exe modules enable mssql
.\metricbeat.exe modules enable sql
Start-Service metricbeat
