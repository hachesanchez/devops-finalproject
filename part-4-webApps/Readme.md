Run command --> 
terraform plan -out webApp
terraform apply webApp

Run pipelines on dev.azure portal

Front pipeline:
trigger:
- main

pool:
  vmImage: ubuntu-latest

steps:
    - task: ArchiveFiles@2
      inputs:
        rootFolderOrFile: '$(System.DefaultWorkingDirectory)'
        includeRootFolder: false
        archiveType: 'zip'
        archiveFile: '$(Build.ArtifactStagingDirectory)/$(Build.BuildId).zip'
        replaceExistingArchive: true


    - task: PublishBuildArtifacts@1
      inputs:
        PathtoPublish: '$(Build.ArtifactStagingDirectory)'
        ArtifactName: 'front'

    - task: AzureRmWebAppDeployment@4
      inputs:
        ConnectionType: 'AzureRM'
        azureSubscription: 'Ironhack Subs(2)(b892ab8c-2c38-478a-8b8b-887ddc61d17d)'
        appType: 'webAppLinux'
        WebAppName: 'the-frijoles-front' 
        packageForLinux: '$(Build.ArtifactStagingDirectory)/$(Build.BuildId).zip'
        StartupCommand: 'pm2 serve /home/site/wwwroot'



Back pipeline:

trigger:
- main
pool:
  vmImage: 'ubuntu-latest'
steps:
- task: UseDotNet@2
  inputs:
    version: '7.x'
    includePreviewVersions: true
- task: DotNetCoreCLI@2
  displayName: Build
  inputs:
    command: build
    projects: '**/*.csproj'
    arguments: '--configuration $(buildConfiguration)' 
- task: DotNetCoreCLI@2
  inputs:
    command: test
    projects: '**/*Tests/*.csproj'
    arguments: '--configuration $(buildConfiguration)'
- task: DotNetCoreCLI@2
  inputs:
    command: publish
    publishWebProjects: True
    arguments: '--configuration $(BuildConfiguration) --output $(Build.ArtifactStagingDirectory)'
    zipAfterPublish: True
- task: AzureRmWebAppDeployment@4
  inputs:
    ConnectionType: 'AzureRM'
    azureSubscription: 'Ironhack Subs(2)(b892ab8c-2c38-478a-8b8b-887ddc61d17d)'
    appType: 'webAppLinux'
    WebAppName: 'the-frijoles-back'
    packageForLinux: '$(Build.ArtifactStagingDirectory)/**/*.zip'
    RuntimeStack: 'DOTNETCORE|7.0'
    StartupCommand: 'dotnet Basic3TierAPI.dll'