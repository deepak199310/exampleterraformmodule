################################## Project Details #######################################
variable "project" {
  type = string
}
variable "env" {
  description = "the environment of the project is running in"
}

########################### Deployment Details ###########################
variable "deploy_region" {}
variable "deploy_id" {}
#variable "nsg_name" {}
#variable "resource_name" {}

################################### Vnet Address Space ####################################
variable "vnet_address_space" {}
#variable "deploy_subscription_id" {}


################################### Subnet Address Space ####################################
variable "data_subnet_address_space" {}
variable "appgw_subnet_address_space" {}
variable "infra_subnet_address_space" {}
variable "aks_subnet_address_space" {}
variable "azure_bastion_subnet" {}
variable "aps_subnet_address_space" {}

