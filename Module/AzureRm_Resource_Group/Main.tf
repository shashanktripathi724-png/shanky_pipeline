resource "azurerm_resource_group" "shashank_resource_Group" {
  for_each = var.RG
  name     = each.value.name
  location = each.value.location

}