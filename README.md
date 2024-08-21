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


# terraform-gcp-hello-world 

## setup 

### Google Cloud SDK
1. Install Google Cloud SDK: Install the Google Cloud SDK on your machine if you haven't already. You can follow the instructions here.

To install or remove components at your current SDK version [489.0.0], run:
  $ gcloud components install COMPONENT_ID
  $ gcloud components remove COMPONENT_ID

To update your SDK installation to the latest version [489.0.0], run:
  $ gcloud components update

The Google Cloud SDK installer will now prompt you to update an rc file to bring the Google Cloud CLIs into
 your environment.
 ```
  Enter a path to an rc file to update, or leave blank to use [/Users/yourname/.zshrc]:  
```
Installed Python 3.11 since gCLI uses that currently.

2. checkout to relevant branch 

3. Authenticate with GCP
```
gcloud auth login
gcloud auth application-default login
```
- This will authenticate your Google account and set up credentials for Terraform to use

4. Create a GCP Project: If you don't have a project already, create a new one in the Google Cloud Console.


5. To update the locked dependency selections to match a changed configuration,
│ run:
`terraform init -upgrade`

6. Plan and Apply Configuration 
```
terraform plan 
terraform apply 
```

7. Verify the Bucket 
Go to your Google Cloud Console and check the Storage section. You should see the newly created bucket

8. Clean Up Resources 
`terraform destroy` 