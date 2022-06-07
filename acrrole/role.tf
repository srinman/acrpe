data "azurerm_container_registry" "testacr" {
  name                = "srinmanacrgeotest"
  resource_group_name = "acigeotestrg"
}

locals {
     admin_groups = toset([
                    "azure-ad-group1",
                    "azure-ad-group2"
                         ])
}


resource "azurerm_role_assignment" "admin_role_assignment" {
  for_each = local.admin_groups
  scope                = data.azurerm_container_registry.testacr.id
  role_definition_name = "Contributor"
  principal_id         = each.key
}
