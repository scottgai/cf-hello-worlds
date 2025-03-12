# Hello World apps


This repository contains minimal "Hello World" applications for a handful of different languages/frameworks (buildpacks) for testing deployment to Cloud Foundry foundation.


## Folders and buildpacks 

* binary -> binary_buildpack
* dotnet-core -> dotnet_core_buildpack
* go-hello -> go_buildpack
* java-see -> java_buildpack
* java-spring-actuator -> java_buildpack
* nginx-sample -> nginx_buildpack / web_servers_cnb_beta
* nodejs -> nodejs_buildpack
* php -> php_buildpack
* python-flask -> python_buildpack
* r -> r_buildpack
* ruby-sinatra -> ruby_buildpack
* static -> staticfile_buildpack

## Usage 
Suppose the name of following default buildpacks are availalbe on foundation.
* staticfile_buildpack 
* binary_buildpack     
* java_buildpack_offlin
* ruby_buildpack       
* nginx_buildpack      
* nodejs_buildpack     
* go_buildpack         
* r_buildpack          
* python_buildpack     
* php_buildpack        
* dotnet_core_buildpack
* binary_buildpack
* web_servers_cnb_beta

### nginx-sample
* If testing nginx_buildpack, run `cf push nginx-test -b nginx_buildpack`
* If testing web_servers_cnb_beta buildpack, run `cf push webservers-test -b web_servers_cnb_beta`

### java-spring-actuator
Run `cf push --var app-domain=<app domain of the foundation>`

### For all other folders, just do `cf push`


