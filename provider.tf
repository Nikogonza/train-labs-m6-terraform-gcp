## Terraform config
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.0.0"
    }
  }
}

## Providers
provider "google" {
  credentials = file(var.credentials_file)

  project = local.project_id
  region  = local.region
  zone    = local.zone
}