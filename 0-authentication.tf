# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "may-terraform-practice"
  region  = "us-central1"
  credentials = "may-terraform-practice-e5e81c877d01.json"
}