variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "ip_range" {
  description = "The IP range for the subnet (e.g. 10.0.1.0/24)"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "environment" {
  type        = string
  description = "dev or prod"
}