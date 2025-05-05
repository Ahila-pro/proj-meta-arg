data "azurerm_resource_group" "existing-rgp" {
  name = "modules-rgp"

}

resource "azurerm_storage_account" "example" {
  name                     = "ahiexamplestoracctt1010"
  resource_group_name      = data.azurerm_resource_group.existing-rgp.name
  location                 = data.azurerm_resource_group.existing-rgp.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}