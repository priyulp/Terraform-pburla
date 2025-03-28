variable "project_id" {
  default     = "copper-cider-453013-b7"
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  default     = "us-central1"
  description = "Region for GCP resources"
  type        = string
}

variable "vpc_name" {
  default     = "my-vpc"
  description = "VPC name"
  type        = string
}

variable "subnet_name" {
  default     = "my-subnet"
  description = "Subnet name"
  type        = string
}

variable "vm_name" {
  default     = "my-vm"
  description = "Virtual Machine name"
  type        = string
}

variable "bucket_name" {
  default     = "my-storage-bucket"
  description = "GCS bucket name"
  type        = string
}
