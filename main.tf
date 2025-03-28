module "vpc" {
  source      = "./module/vpc"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
}

module "vm" {
  source   = "./module/vm"
  vm_name  = var.vm_name
  subnet   = module.vpc.subnet_self_link
}

module "storage" {
  source      = "./module/storage"
  bucket_name = var.bucket_name
}
