
resource "azurerm_container_registry" "acr" {
  name                            = var.acr_name
  location                        = var.deploy_region
  resource_group_name             = var.rg_name
  admin_enabled                   = var.admin_enabled       
  sku                             = var.sku
  public_network_access_enabled   = var.public_network_access_enabled
  identity{
    type                          = var.identity_type
  }
  anonymous_pull_enabled          = var.anonymous_pull_enabled
  network_rule_bypass_option      = var.network_rule_bypass_option
  network_rule_set {
    default_action                = var.default_action
    virtual_network {
      action                      = var.vnet_action 
      subnet_id                   = var.subnet_id 
    }
  }

  tags = {
      Name            =  var.acr_name
      Environment     =  var.env
      Project         =  var.project
      resourcename    =  var.resource_name
      datecreated     =  var.datecreated

  }
}