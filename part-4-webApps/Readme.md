
# Back
## Overview
This Azure DevOps pipeline is designed to build and test ASP.NET Core projects targeting the full .NET Framework. It uses a Windows-based agent (`windows-latest`) and is triggered on changes to the `main` branch.
## Pipeline Structure

  

The pipeline consists of several steps, each performing a specific task in the build and test process.

  

### Back pipeline

  

```yaml

trigger:
- main
pool:
vmImage: 'windows-latest'
```
The pipeline uses a Windows-based agent (`windows-latest`) to run the build and test tasks.

```
variables:

solution: '**/*.sln'

buildPlatform: 'Any CPU'

buildConfiguration: 'Release'
```
Defines variables for the solution file, build platform, and configuration.

```
steps:

- task: NuGetToolInstaller@1
```
Installs the NuGet tool on the agent.
  
```
- task: NuGetCommand@2
inputs:
restoreSolution: '$(solution)'
```
Restores NuGet packages for the specified solution.
  
```
- task: VSBuild@1
  inputs:
    solution: '$(solution)'
    msbuildArgs: '/p:DeployOnBuild=true /p:WebPublishMethod=Package /p:PackageAsSingleFile=true /p:SkipInvalidConfigurations=true /p:DesktopBuildPackageLocation="$(build.artifactStagingDirectory)\WebApp.zip" /p:DeployIisAppPath="Default Web Site"'
    platform: '$(buildPlatform)'
    configuration: '$(buildConfiguration)'
```
This step builds the solution using MSBuild with specific arguments for deployment and artifact packaging. It packages the application for deployment and specifies the output location.
```

- task: VSTest@2
inputs:
	platform: '$(buildPlatform)'
	configuration: '$(buildConfiguration)'
```
This step executes tests using the Visual Studio Test platform, ensuring the reliability and correctness of the built application.
  
```
- task: PublishBuildArtifacts@1
inputs:
	PathtoPublish: '$(Build.ArtifactStagingDirectory)'
	ArtifactName: 'back-artifact'
	publishLocation: 'Container'
```
Finally, this step publishes build artifacts to Azure DevOps, making them available for further deployment or release. The artifacts are stored in the specified path for later use.
