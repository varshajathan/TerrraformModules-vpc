provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source                  = "./modules/vpc"
  name                    = "my-tf-vpc"
  auto_create_subnetworks = false
}
