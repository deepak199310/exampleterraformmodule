
variable "subnet_name" {
    type = string
    description = "Name of the subnet"
}

variable "rg_name" {
    type = string
    description = "Name of the Resource Group" 
}

variable "vnet_name" {
    type = string
    description = "Name of the Virtual Network"
  
}

variable "subnet_address_prefix" {
    type = string
    description = "Address Range of the Subnet"
  
}
variable "pvt_endpoint_force" {}
/*variable "delegation_name" {}
variable "service_delegation_name" {}
variable "service_delegation_actions" {}*/