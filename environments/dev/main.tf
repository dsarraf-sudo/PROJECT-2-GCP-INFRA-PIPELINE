module "networking" {
  source   = "../../modules/networking"
  vpc_name = "dev-vpc"
  ip_range = "10.0.1.0/24"
  region   = "us-central1"
  environment = "dev"
}


module "storage" {
  source      = "../../modules/storage"
  bucket_name = "dev-bucket-${var.project_id}" 
}

module "compute" {
  source        = "../../modules/compute"
  instance_name = "dev-vm"
  subnet_id     = module.networking.subnet_id # Connects to the network module
}


