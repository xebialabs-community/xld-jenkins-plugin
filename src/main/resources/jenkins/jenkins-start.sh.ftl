<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
#!/bin/sh
echo "Starting jenkins server."
cd ${container.jenkinsInstallDir}
nohup java -DJENKINS_HOME=${container.jenkinsInstallDir} -jar *.war --httpPort=${container.jenkinsInstallPort} --ajp13Port=-1  > $jenkins.log 2>&1 & 
sleep 10
echo "Jenkins is up and running"

