resource "azurerm_resource_group" "vm_grp" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_virtual_network" "vm_network" {
  name                = "Cluster-vNET"
  location            = azurerm_resource_group.vm_grp.location
  resource_group_name = azurerm_resource_group.vm_grp.name
  address_space       = ["192.168.0.0/16"]
  
  depends_on = [
    azurerm_resource_group.vm_grp
  ]
}

resource "azurerm_subnet" "cluster_subnet" {
  name                 = "Cluster-Subnet"
  resource_group_name  = azurerm_resource_group.vm_grp.name
  virtual_network_name = azurerm_virtual_network.vm_network.name
  address_prefixes     = ["192.168.8.0/24"]
  
  depends_on = [
    azurerm_virtual_network.vm_network
  ]
}