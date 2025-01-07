<powershell>
Install-WindowsFeature -name Web-Server -IncludeManagementTools

$instanceId   = (Invoke-WebRequest -Uri  http://169.254.169.254/latest/meta-data/instance-id -UseBasicParsing).content
$instanceAZ   = (Invoke-WebRequest -Uri  http://169.254.169.254/latest/meta-data/placement/availability-zone -UseBasicParsing).content

New-Item -Path C:\inetpub\wwwroot\index.html -ItemType File -Force
Add-Content -Path C:\inetpub\wwwroot\index.html "<title>Windows EC2 Lab</title>"
Add-Content -Path C:\inetpub\wwwroot\index.html "<font face = `"Verdana`" size = `"5`">"
Add-Content -Path C:\inetpub\wwwroot\index.html "<center><img src=`"https://d0.awsstatic.com/logos/powered-by-aws.png`" alt=`"Powered by AWS Cloud Computing`"/><center>"
Add-Content -Path C:\inetpub\wwwroot\index.html "<center><h1>Windows EC2 Lab</h1></center>"
Add-Content -Path C:\inetpub\wwwroot\index.html "<hr>"
Add-Content -Path C:\inetpub\wwwroot\index.html "<center> <b>EC2 Instance Metadata</b> </center>"
Add-Content -Path C:\inetpub\wwwroot\index.html "<center> <b>Instance ID:</b> $instanceId </center>"
Add-Content -Path C:\inetpub\wwwroot\index.html "<center> <b>AWS Availablity Zone:</b> $instanceAZ </center>"
Add-Content -Path C:\inetpub\wwwroot\index.html "</font>"
</powershell>