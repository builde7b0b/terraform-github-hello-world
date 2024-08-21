variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to create resources in"
  type        = string
  default     = "us-central1"
}
