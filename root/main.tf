provider "azurerm" {
  features {}

  subscription_id = "ee6aebb8-67bb-4b42-a428-a2081ac9711a"
}

module "windows_vm" {
  source              = "../modules/windows vm + nic"
  vm_name             = "my-windows-vm"
  location            = "West Europe"
  resource_group_name = "rg-terraform"
  subnet_id           = "/subscriptions/ee6aebb8-67bb-4b42-a428-a2081ac9711a/resourceGroups/rg-terraform/providers/Microsoft.Network/virtualNetworks/vnet-terraform/subnets/subnet-terraform"
  admin_username      = "azureadmin"
  admin_password      = "YourSecurePassword!"
  vm_size             = "Standard_DS2_v2"
  enable_public_ip    = false
  data_disks = [
    {
      name                 = "data-disk-1"
      lun                  = 0
      disk_size_gb         = 50
      storage_account_type = "Standard_LRS"
    }
  ]
  tags = {
  }
}
