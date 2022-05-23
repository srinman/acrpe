
resource "azurerm_private_dns_cname_record" "acrcname" {
  name                = var.dnsentryname
  zone_name           = "privatelink.azurecr.io"
  resource_group_name = var.dnsrg
  ttl                 = "10"
  record              = var.dnsentrytarget
}
