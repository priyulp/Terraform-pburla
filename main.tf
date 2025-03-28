module "vpc" {
  source      = "./modules/vpc"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
}

module "vm" {
  source   = "./modules/vm"
  vm_name  = var.vm_name
  subnet   = module.vpc.subnet_self_link
}

module "storage" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
}
variable "project_id" {
  default     = "copper-cider-453013-b7"
  description = "GCP Project ID"
  type        = string
}
