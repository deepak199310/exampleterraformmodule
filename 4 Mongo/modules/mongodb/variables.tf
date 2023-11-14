variable "rg_name" {
  type = string
  description = "Vivasuite DB resource group"
}
variable "db_name" {
  type = string
  description = "Name of the Mongo DB"
}
variable "location" {
  type        = string
  default     = "West Europe"
  description = "Resource group Location"
}
variable "account_name"{}
#variable "throughput" {}
variable "project" {}
variable "resource_name" {}
variable "datecreated" {}
variable "env" {}
