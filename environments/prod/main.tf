# 1. Prod Network (Different IP range than Dev)
module "prod_network" {
  source   = "../../modules/networking"
  vpc_name = "prod-vpc"
  ip_range = "10.0.2.0/24" # Dev was 10.0.1.0/24
  region   = "us-east1"    # You can use a different region for Prod
  environment = "prod"
}

# 2. Prod Storage
module "prod_storage" {
  source      = "../../modules/storage"
  bucket_name = "prod-bucket-assets-${var.project_id}" 
  project_id  = var.project_id  
  environment = "dev" 
}


# 3. Prod VM
module "prod_vm" {
  source        = "../../modules/compute"
  instance_name = "prod-server"
  subnet_id     = module.prod_network.subnet_id
  zone          = "us-east1-b" 
}
