terraform {
  backend "gcs" {
   bucket = "backend_bucket1" # Put your bucket name here
   prefix = "terraform/state/dev"   # This keeps Dev separate from Prod
  }
}
