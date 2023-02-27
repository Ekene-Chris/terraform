variable "resource_group_name" {
  type        = string
  description = "terraform"
  default     = "chris-global-test"
}

variable "resource_group_location" {
  type        = string
  description = "east us"
  default     = "east us"
}

variable "virtual_network_name" {
  type        = string
  description = "terraform-vnet"
  default     = "chris-vnet"
}
variable "kubernetes_name" {
  type        = string
  description = "kubernetes cluster"
  default     = "terraform-cluster"
}

variable "subnet_name" {
  type        = string
  description = "main-subnet"
  default     = "main-subnet"
}

variable "public_ip_name" {
  type        = string
  description = "terraform-ip"
  default     = "primary-ip"
}

variable "network_security_group_name" {
  type        = string
  description = "base-nsg"
  default     = "general-nsg"
}

variable "network_interface_name" {
  type        = string
  description = "ubuntu-nic"
  default     = "chris-nic"
}

variable "linux_virtual_machine_name" {
  type        = string
  description = "ekene-chris-terraform"
  default     = "ekene-chris-ubuntu"
}
