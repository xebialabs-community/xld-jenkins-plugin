@REM
@REM THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
@REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
@REM FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
@REM

@echo off
echo Going to start Jenkins Job ${deployed.jobName}

cd ${deployed.container.cliHome}

java -jar ${deployed.container.cliHome}/jenkins-cli.jar -s ${deployed.container.jenkinsUrl} build "${deployed.jobName}" <#if deployed.parameters??>-p ${deployed.parameters}</#if> -s -v -w
