
data "azurerm_subnet" "subnet" {
  name                 = var.pepsubnet
  virtual_network_name = var.pepvnet
  resource_group_name  = var.pepvnetrg
}

data "azurerm_container_registry" "acr" {
  name                = var.pepacrname
  resource_group_name = var.pepacrrg
}

resource "azurerm_private_endpoint" "pep" {
  name                = var.pepname
  location            = var.peplocation
  resource_group_name = var.peprg
  subnet_id           = data.azurerm_subnet.subnet.id

  private_service_connection {
    name                              = var.pepservicename
    private_connection_resource_id = data.azurerm_container_registry.acr.id
    is_manual_connection              = false
    subresource_names                 = ["registry"]
  }
}

