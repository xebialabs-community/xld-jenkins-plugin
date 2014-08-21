# Preface #

This document describes the functionality provided by the Jenkins plugin.

See the **XL Deploy Reference Manual** for background information on XL Deploy and deployment concepts.

# Overview #

The Jenkins plugin is a XL Deploy plugin that adds capability for provisioning Jenkins and starting Jenkins jobs from within XL Deploy.

## Types ##

+ Jenkins Server 
  * `artifact`: the Jenkins war file
+ Jenkins Plugin
  * `artifact`: the `jpi` or `hpi` file
+ Jenkins Build Job
  * `jobName`: The name of the job to run
  * `parameters`: The job parameters to be used.
