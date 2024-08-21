provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "hello_world" {
  name     = "hello-world-bucket-terraform"
  location = var.region
}
