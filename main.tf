# This Terraform configuration creates multiple Azure Resource Groups based on a variable input.

resource "azurerm_resource_group" "example" {
  count    = length(var.resource_groups)
  name     = var.resource_groups[count.index].name
  location = var.resource_groups[count.index].location
}
