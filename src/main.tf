#Creating a Resource group 
resource "azurerm_resource_group" "myrg" {
  count = 5
  name = "my-RG-${count.index}"
  location =var.location
}
# Create A Virtual Network
resource "azurerm_virtual_network" "Myvnet" {
  count = 5
  name = "myVnet-${count.index}"
  resource_group_name = azurerm_resource_group.myrg.name
  location = var.location
  address_space = ["10.0.0.0/16"]
}