output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vm_instance" {
  value = module.vm.instance_name
}

output "storage_bucket" {
  value = module.storage.bucket_url
}
