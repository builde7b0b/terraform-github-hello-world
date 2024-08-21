provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "github_repository" "hello_world" {
  name        = "hello-world-repo"
  description = "A simple 'Hello World' repository created by Terraform"
  visibility  = "public"
}
