###############################
# Private DNS Zone MODULE
###############################

resource "azurerm_private_endpoint" "endpoint" {
  name                = var.endpoint_name
  location            = var.location
  resource_group_name = var.rg_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.privateserviceconnection_name
    private_connection_resource_id = var.private_link_enabled_resource_id
    is_manual_connection           = var.is_manual_connection
    subresource_names              = var.subresource_names
  }
}
