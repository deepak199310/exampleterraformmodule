###############################
# Private DNS Zone MODULE
###############################

resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.rg_name
}

resource "azurerm_private_dns_a_record" "example" {
  name                = var.record_name
  zone_name           = azurerm_private_dns_zone.dns_zone.name
  resource_group_name = var.rg_name
  ttl                 = 300
  records             = [var.records]
}