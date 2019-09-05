Future Work :

As a DevOps Engineer i would like to build a CI/CD pipeline to automate deployments rather than deploying manually for 
every single change, therefore i would discuss with the team about the deployment automation and with the help of the team,
start implementing the below changes after explaining them the below terms :

         Version control : Every change is recorded, it is easier to keep track of the changes made
         Artefact repository : You need one, as the artefacts are immutable amd cannot be changed for every deployment
         Orchestration tool : To build and provision the infrastructure 
         Configuration management tool : To deploy, configure and manage servers
              

1. I would like all the developers in the team to commit the code to the centralized version control/source repository
   like SVN, GIT etc
2. With every code change commit, the CI tool will pull all the code changes and put in the artefact repository with the
   version number
3. With the help of the configuration management tool, the copy of the files stored in the artefact repository is used to 
   deploy the software on the existing servers of the CI environment built in Azure by the orchestartion tool
4. If the deployment on the CI tool is successful, it will then be deployed in to Staging and eventually in to Production
5. If the deployment on the CI tool fails, it is either fixed by the developer/DevOps and then taken into Staging followed
   by Production
   
