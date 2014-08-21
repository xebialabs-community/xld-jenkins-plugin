#!/bin/sh
echo "Starting jenkins server."
cd ${container.jenkinsInstallDir}
nohup java -DJENKINS_HOME=${container.jenkinsInstallDir} -jar *.war --httpPort=${container.jenkinsInstallPort} --ajp13Port=-1  > $jenkins.log 2>&1 & 
sleep 10
echo "Jenkins is up and running"

