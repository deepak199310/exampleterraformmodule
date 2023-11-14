
variable "rg_name"{
    type = string
    default = "VSD-QA-Compute-RG-01"
    description = "Name of the Resource Group"
}

variable "rg_location"{
    type = string
    default     = "West Europe"
    description = "Location of the Resource Group"
}

variable "project" {}
variable "env" {}
variable "resource_name" {}
variable "datecreated" {}

