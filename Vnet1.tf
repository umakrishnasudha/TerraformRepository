resource "azurerm_resource_group" "test" {
  name     = "testrg"
  location = "central us"
}



resource "azurerm_virtual_network" "test" {
  name                = "Vnet"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  address_space       = ["13.0.0.0/16"]


  subnet {
    name           = "subnet1"
    address_prefix = "13.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "13.0.2.0/24"

  }

  tags = {
    environment = "Prod"
  }
}