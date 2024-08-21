# terraform-github-hello-world

## description 
A simple terraform hello world project which creates a github repository.

## Setup Environment
- Install Terraform
`brew install hashicorp/tap/terraform`

- Check Version
`$ terraform --version `

Upgrade to latest version
`$ brew upgrade hashicorp/tap/terraform`

## Steps 
1. Clone this Repo 

2. Create a file names terraform.tfvars to provide your variable values (add this file to .gitignore to avoid committing sensitive information): 
```
github_token = "your-github-token"
github_owner = "your-github-username"
```
3. You can generate a token in settings of your Github Account

4. Initialize Terraform
`terraform init`

5. Plan and Apply Configuration 
```
terraform plan
terraform apply
```
6. Verify the Repository was Created 
Go to your GitHub account and check for the newly created repository. You should see the hello-world-repo with the description "A simple 'Hello World' repository created by Terraform."

7. Clean up Resources 
Destroy the resources to remove the repository.
`terraform destroy`

