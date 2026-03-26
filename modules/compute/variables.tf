variable "instance_name" {}
variable "machine_type"  { default = "e2-micro" }
variable "zone"          { default = "us-central1-a" }
variable "subnet_id"     { description = "The ID of the subnet from the networking module" }
