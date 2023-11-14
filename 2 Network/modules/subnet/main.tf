
resource "azurerm_subnet" "subnet" {
  name                      = var.subnet_name
  resource_group_name       = var.rg_name
  virtual_network_name      = var.vnet_name
  address_prefixes           = [var.subnet_address_prefix]
  enforce_private_link_endpoint_network_policies = var.pvt_endpoint_force
  service_endpoints         = [
    "Microsoft.Sql",
    "Microsoft.Storage",
    "Microsoft.KeyVault",
    "Microsoft.ServiceBus",
    "Microsoft.AzureCosmosDB",
    "Microsoft.ContainerRegistry"
  ]
    /*delegation {
    name = var.delegation_name
    service_delegation {
      name = var.service_delegation_name
      actions = [
        var.service_delegation_actions
      ]
    }
  }*/

}