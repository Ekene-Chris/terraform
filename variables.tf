variable "resource_group_name" {
  type        = string
  description = "terraform"
  default     = "chris-global-test"
}

variable "public_key" {
  type        = string
  description = "public key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDbpKPxx3LQjI/6eHUN1ycg3ESZpuu6OInzZ95erXulKYen3Wcd8Dw3fkM9B83xIfFGjeqdDlcOwLaatSCCGnxULbHsceLA42ouYM9uqss0E7IzTjZKEs3+ncfTYlZWdbim8ZJeCV2BM82dOOEsFJAGBYThbPjA4uJOhOCb9LzQP26h3wU64oRCu9TrmV2pJh1nHFhGzcJLJLhLZV18RGw+J5leFW7uZKUhrDMwnPK2KpKBCUSTqQeQN2KhBDmqo1GjuTFDepPrycyIpojYJQaY57dkrEdKAHdgBQLnJ0QdUL76gBMPfNqzl2nTydp1RD07ZOINL0rNeQr9ai7Fo80LLgUGeSxMkspfba4sKLsCLcDjFiDD8PdODDcLQL593msWe/PtMoLXs2vQUbksKaABNrwJ9JwfmW3N/KIpLKC93lr7k5+InT/aMTFvd2gQE/Jkv3R7JIiOZgOsI+BIZsIqeV6JHdqUHHttyPh/VufCZ4ZEa4R+Vv7l8fpINrLHux0= generated-by-azure"
}

variable "virtual_network_name" {
  type        = string
  description = "terraform-vnet"
  default     = "chris-vnet"
}

variable "region" {
  type        = string
  default     = "us-west-2"
}

variable "ami" {
  type        = string
  default     = "ami-0b029b1931b347543"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}
