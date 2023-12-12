#  Part 6 – Deploy the whole application on AKS (Azure Kubernetes Services)

## Steps

- 1. Create three deployment YAML files, one each for frontend, backend, and database. 
- 2. Deploy one pod of frontend, three pods of backend and one pod of the database. 
- 3. Create a NodePort Service to expose “frontend application” 
- 4. Create a NodePort Service to expose “backend application” 
- 5. Create a ClusterIP Service to connect frontend and backend applications 
- 6. Create a ClusterIP Service to connect the backend with the database. 
- 7. Create a load balancer to expose the frontend application. 
- 8. [Bonus, Optional] - Add a domain (ex. ui.myapp.com and api.myapp.com) to your application 
