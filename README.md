# Hello World apps


This repository contains minimal "Hello World" applications for a handful of different languages/frameworks (buildpacks) for testing deployment to Cloud Foundry foundation.


## Folders and buildpacks 

* binary -> binary_buildpack
* dotnet-core -> dotnet_core_buildpack
* dotnet-core-offline -> dotnet_core_buildpack (in offline environments)
* go-hello -> go_buildpack
* java-see -> java_buildpack
* java-spring-actuator -> java_buildpack
* nginx-sample -> nginx_buildpack / web_servers_cnb_beta
* nodejs -> nodejs_buildpack
* nodejs-offline -> nodejs_buildpack (in offline environments)
* php -> php_buildpack
* python -> python_buildpack
* python-flask -> python_buildpack (requires internet access to download required packages)
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

### For all other folders, just do 
`cf push`

### Push dotnet-core-offline in offline environment (no internet access)
```
tar xfz dotnet-core-x86.tgz
cd dotnet-core/bin/Release/netcoreapp8.0/publish
cf push test-dotnet  -p ./ -b dotnet_core_buildpack
```

### Push dotnet-core in offline environment (no internet access)
Refer to the Cloud Foundry [document](https://docs.cloudfoundry.org/buildpacks/dotnet-core/index.html#offline)
* Install dotnet SDK. For example, install dotnet SDK v9 on Ubuntu
  ```
  sudo add-apt-repository ppa:dotnet/backports
  sudo apt-get update &&   sudo apt-get install -y dotnet-sdk-9.0
  ```
* Publish the app
  ```
  cd dotnet-core
  dotnet publish -f netcoreapp8.0
* Push the app from publish folder
  ```
  cd bin/Release/netcoreapp8.0/publish
  cf push test-dotnet  -p ./ -b dotnet_core_buildpack
  ```

### Push nodejs-offline in offline environment (no internet access)
Refer to the Cloud Foundry [document](https://docs.cloudfoundry.org/buildpacks/node/index.html)
```
tar xfz nodejs-x86.tgz
cd nodejs
cf push
```
