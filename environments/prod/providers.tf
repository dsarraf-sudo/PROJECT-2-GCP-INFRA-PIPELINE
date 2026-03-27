provider "google" {
  project = var.project_id
  region  = "us-east1" # Matches the region in main.tf
}
