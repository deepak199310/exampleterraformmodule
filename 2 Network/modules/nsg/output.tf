
output "nsg_name" {
  value = azurerm_network_security_group.NSG.name
}

output "nsg_id" {
  value = azurerm_network_security_group.NSG.id
}
