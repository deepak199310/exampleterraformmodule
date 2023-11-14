
variable "nsg_name" {
  type = string
  description = "Name of the Network Security Group"
}

variable "location" {
  type = string
  default = "East US"
  description = "Location of the Network Security Group"
}

variable "rg_name" {
    type = string
    description = "Name of the Resource Group, where NSG will be created"
  
}
variable "env" {}
variable "project" {}
variable "datecreated" {}
variable "resource_name" {}