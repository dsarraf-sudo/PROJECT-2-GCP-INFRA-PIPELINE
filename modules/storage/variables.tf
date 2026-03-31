variable "bucket_name" {}
variable "location"    { default = "US" }
variable "project_id" {
  type        = string
  description = "The GCP project ID"
}

variable "environment" {
  type        = string
  description = "The environment (dev or prod)"
}
