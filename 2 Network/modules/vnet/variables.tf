
variable "vnet_name" {
    type = string
    description = "Name of the Virtual Network"
  
}

variable "location" {
    type = string
    description = "Location of the Virtual Network"
  
}

variable "address_space" {
    type = string
    description = "Address Space of the Virtual Network"
  
}

variable "rg_name" {
    type = string
    description = "Name of the Resource Group where the VNET will be created"
  }
variable "env" {}
variable "project" {}
variable "resource_name" {}
variable "datecreated" {}