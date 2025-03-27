provider "aws" {
  region = "us-east-1"
}

module "network" {
  source    = "./modules/network"
  vpc_cidr  = var.vpc_cidr
}

module "compute" {
  source        = "./modules/compute"
  instance_type = var.instance_type
  vpc_id        = module.network.vpc_id
}

module "storage" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "ec2_public_ip" {
  value = module.compute.public_ip
}

output "s3_bucket_name" {
  value = module.storage.bucket_name
}

