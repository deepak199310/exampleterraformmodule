###############################
# Private DNS Zone MODULE
###############################

resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.rg_name
}

resource "azurerm_private_dns_a_record" "blob" {
  name                = var.record_name1
  zone_name           = azurerm_private_dns_zone.dns_zone.name
  resource_group_name = var.rg_name
  ttl                 = 300
  records             = [var.records1]
}

/*
resource "azurerm_private_dns_a_record" "diag" {
  name                = var.record_name2
  zone_name           = azurerm_private_dns_zone.dns_zone.name
  resource_group_name = var.rg_name
  ttl                 = 300
  records             = [var.records2]
}*/