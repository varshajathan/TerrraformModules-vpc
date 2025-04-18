provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source                  = "./modules/vpc"
  name                    = "my-tf-vpc"
  auto_create_subnetworks = false
}

terraform {
  backend "remote" {
    organization = "your-org-name"

    workspaces {
      name = "vpc-project"
    }
  }

  required_version = ">= 1.3.0"
}
