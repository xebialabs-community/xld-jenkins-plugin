echo Going to start Jenkins Job ${deployed.jobName}

cd ${deployed.container.cliHome}

java -jar ${deployed.container.cliHome}/jenkins-cli.jar -s ${deployed.container.jenkinsUrl} build "${deployed.jobName}" <#if deployed.parameters??>-p ${deployed.parameters}</#if> -s -v -w
