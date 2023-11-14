
output "vnet_name" {
    value = azurerm_virtual_network.VNET.name
}

output "vnet_id" {
    value = azurerm_virtual_network.VNET.id
  
}

output "address_space" {
    value = azurerm_virtual_network.VNET.address_space 
}