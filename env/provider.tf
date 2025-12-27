

terraform {
  required_version = ">= 1.0.0"
  backend "local" {
    path = "terraform.tfstate"
  }
}


provider "google" {
  project = var.project_id
  region  = var.region
}