output "dns_id" {
    value = azurerm_private_dns_zone.dns_zone.id
}

output "dns_name" {
    value = azurerm_private_dns_zone.dns_zone.name
}
