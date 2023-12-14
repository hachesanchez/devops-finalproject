# Part 1 - Deploy Code Locally (Not to be evaluated)

This part of the project is designed to give you an overview of the application by deploying its components locally. 

## 1. Deploy Backend

The backend of the application is built using dotnet core. Follow the steps below to deploy the backend:

- Refer to the [official documentation](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet) for dotnet commands.

Example:
 
# Navigate to the backend directory
`$ cd path/to/backend`

# Run the dotnet build and run commands
`$ dotnet build`
`$ dotnet run`



**Deploy Front with Nginx:**
 
`$ brew install nginx`
`$ sudo nano /opt/homebrew/etc/nginx/nginx.conf` ---> edit the root folder and set the root where index.html is
`$ brew services start nginx`

It should be working on localhost:8080
  
