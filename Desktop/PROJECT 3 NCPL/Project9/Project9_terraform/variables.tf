variable "location" {
  description = "The Azure location where resources will be created."
  default     = "East US"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  default     = ["10.0.1.0/24"]
}

variable "aks_node_count" {
  description = "Number of AKS nodes."
  default     = 2
}
