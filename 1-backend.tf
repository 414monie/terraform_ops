# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "terraform-practice-bucket-no2"
    prefix = "terraform/state"
    credentials = "may-terraform-practice-e5e81c877d01.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}




















