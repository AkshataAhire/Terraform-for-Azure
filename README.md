# Terraform-for-Azure
Creating an Infrastructure as a Service In Azure using Terraform

I have written a code to build the infrastructure in Azure.
Terraform plan is used to see and verify the changes you want to make in the infrastructure
Terraform apply can be run once you verify and are happy with the changes in the infrastructure

The frontend_app is the main service for frontend\
The main.tf file contains the resource group details etc\
The .tfvar file contains details which should not be saved in the repository\
The variables need to be exposed in the separate file

The deployment uses random_id which is used to generate random name in the configuration

Future Work and Diagram for future work is the brief explanation of the CI/CD pipleine to automate deployments in future
