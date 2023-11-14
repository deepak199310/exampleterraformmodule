
output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "address_space" {
  value = azurerm_subnet.subnet.address_prefixes
}