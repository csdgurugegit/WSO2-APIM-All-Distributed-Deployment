resource "azurerm_public_ip" "vm_publicip_tm" {
  name                = var.tmpublicip_name
  resource_group_name = azurerm_resource_group.vm_grp.name
  location            = azurerm_resource_group.vm_grp.location
  allocation_method   = "Static"
  
  depends_on = [
    azurerm_resource_group.vm_grp
  ]
}

resource "azurerm_network_interface" "vm_interface_tm" {
  name                = var.tmvm_nic
  location            = azurerm_resource_group.vm_grp.location
  resource_group_name = azurerm_resource_group.vm_grp.name

  ip_configuration {
    name                          = var.tmprivateip_name
    subnet_id                     = azurerm_subnet.cluster_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm_publicip_tm.id
  }

  depends_on = [
    azurerm_virtual_network.vm_network,
    azurerm_public_ip.vm_publicip_tm,
    azurerm_subnet.cluster_subnet
  ]
}

resource "azurerm_linux_virtual_machine" "linux_vm_tm" {
  name                  = var.tmvm_name
  resource_group_name   = azurerm_resource_group.vm_grp.name
  location              = azurerm_resource_group.vm_grp.location
  size                  = var.tmvm_size
  admin_username        = var.tmvm_username
  admin_password        = var.tmvm_password
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.vm_interface_tm.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
